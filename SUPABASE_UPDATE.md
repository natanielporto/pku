# 🔄 Atualizar Supabase CLI

## Como atualizar o Supabase CLI

### Método 1: Script automático (Recomendado)

```bash
yarn db:update-cli
```

Ou diretamente:

```bash
./scripts/update-supabase-cli.sh
```

O script irá:
1. ✅ Verificar a versão atual
2. ✅ Buscar a versão mais recente no GitHub
3. ✅ Parar o Supabase se estiver rodando
4. ✅ Baixar e instalar a nova versão
5. ✅ Verificar a instalação
6. ✅ Oferecer opção de reiniciar o Supabase

### Método 2: Atualização manual

#### Via pacman (Manjaro/Arch)
```bash
sudo pacman -Syu supabase
```
**Nota:** A versão no repositório pode não ser a mais recente.

#### Via download direto do GitHub

```bash
# 1. Parar o Supabase
yarn db:stop

# 2. Baixar a versão mais recente
cd /tmp
wget https://github.com/supabase/cli/releases/download/v2.67.1/supabase_linux_amd64.tar.gz

# 3. Extrair
tar -xzf supabase_linux_amd64.tar.gz

# 4. Instalar (substitui a versão antiga)
sudo mv supabase /usr/local/bin/supabase
sudo chmod +x /usr/local/bin/supabase

# 5. Verificar
supabase --version
```

## Por que atualizar?

- ✅ **Correções de bugs** - Versões mais recentes corrigem problemas conhecidos
- ✅ **Novas funcionalidades** - Acesso a recursos mais recentes
- ✅ **Compatibilidade** - Melhor compatibilidade com containers Docker
- ✅ **Segurança** - Patches de segurança

## Verificar versão atual

```bash
supabase --version
```

## Problemas comuns

### "Permission denied"
Se você receber erro de permissão, o script precisa de `sudo` para instalar em `/usr/local/bin/`. Isso é normal.

### "Storage container unhealthy"
Se você tiver problemas com o storage após atualizar, tente:
```bash
yarn db:stop
yarn db:start
```

Se persistir, desabilite temporariamente o storage no `supabase/config.toml`:
```toml
[storage]
enabled = false
```

## Versões

- **Versão atual instalada:** Verifique com `supabase --version`
- **Versão mais recente:** Disponível no [GitHub Releases](https://github.com/supabase/cli/releases)
