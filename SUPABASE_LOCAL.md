# 🚀 Usando Supabase Local (Gratuito para Desenvolvimento)

## Por que usar Supabase Local?

- ✅ **100% Gratuito** - Sem limites, sem custos
- ✅ **Funciona Offline** - Não precisa de internet
- ✅ **Mesma API** - Código funciona igual em produção
- ✅ **Autenticação Incluída** - Sistema de auth completo
- ✅ **Sem Risco de Cancelamento** - Não depende de políticas da nuvem

## Setup Rápido

### 1. Iniciar o Supabase Local

```bash
# Com yarn (recomendado para este projeto)
yarn db:start

# Ou com npm
npm run db:start
```

Isso vai:
- Baixar e iniciar o PostgreSQL local
- Iniciar a API do Supabase
- Iniciar o Supabase Studio (interface web)
- Aplicar todas as migrations

**Primeira vez pode demorar alguns minutos** (baixa as imagens Docker).

### 2. Configurar o .env

```bash
# Com yarn
yarn db:setup-local

# Ou com npm
npm run db:setup-local
```

Este script automaticamente:
- Detecta se o Supabase está rodando
- Obtém as credenciais locais
- Cria/atualiza o arquivo `.env`

### 3. Verificar se está funcionando

```bash
# Com yarn
yarn db:status

# Ou com npm
npm run db:status
```

Você verá algo como:
```
API URL: http://127.0.0.1:54321
Studio URL: http://127.0.0.1:54323
DB URL: postgresql://postgres:postgres@127.0.0.1:54322/postgres
```

### 4. Acessar o Supabase Studio

Abra no navegador: **http://localhost:54323**

Aqui você pode:
- Ver todas as tabelas
- Editar dados manualmente
- Testar queries SQL
- Gerenciar autenticação

## Credenciais Padrão do Supabase Local

Quando você roda `npm run db:setup-local`, o script configura automaticamente:

```env
SUPA_URL=http://127.0.0.1:54321
SUPA_ANON_KEY=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZS1kZW1vIiwicm9sZSI6ImFub24iLCJleHAiOjE5ODM4MTI5OTZ9.CRXP1A7WOeoJeXxjNni43kdQwgnWNReilDMblvNn0
SUPA_KEY=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZS1kZW1vIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImV4cCI6MTk4MzgxMjk5Nn0.EGIM96RAZx35lJzdJsyH-qQwv8Hdp7fsn3W0YpN81IU
SUPA_DATABASE=postgresql://postgres:postgres@127.0.0.1:54322/postgres
SUPA_PASSWORD=postgres
```

**Nota:** As chaves acima são padrão do Supabase local e são seguras para desenvolvimento.

## Comandos Úteis

```bash
# Iniciar Supabase
yarn db:start

# Parar Supabase
yarn db:stop

# Ver status
yarn db:status

# Configurar .env automaticamente
yarn db:setup-local

# Resetar banco (apaga tudo e recria)
yarn db:reset

# Aplicar migrations
yarn db:push

# Criar nova migration
yarn db:migration:new nome_da_migration
```

## Desenvolvimento vs Produção

### Durante Desenvolvimento
- Use Supabase local (gratuito, sem limites)
- Configure com `npm run db:setup-local`
- Acesse Studio em `http://localhost:54323`

### Quando for para Produção
1. Crie uma conta no Supabase (ou use Neon/Railway)
2. Atualize o `.env` com as credenciais da nuvem
3. Execute `yarn db:push` para aplicar migrations
4. Seu código não precisa mudar nada! 🎉

## Troubleshooting

### "Supabase não está rodando"
```bash
yarn db:start
```

### "Erro ao conectar"
1. Verifique se está rodando: `yarn db:status`
2. Reconfigure: `yarn db:setup-local`
3. Reinicie: `yarn db:stop && yarn db:start`

### "Porta já em uso"
```bash
# Pare outros containers Docker
docker ps
docker stop <container-id>

# Ou pare o Supabase
yarn db:stop
```

## Vantagens vs Nuvem

| Recurso | Local | Nuvem (Free Tier) |
|---------|-------|-------------------|
| Custo | Gratuito | Gratuito (limitado) |
| Limite de dados | Ilimitado | 500 MB |
| Cancelamento | Nunca | Pode cancelar por inatividade |
| Internet | Não precisa | Precisa |
| Performance | Muito rápido | Depende da conexão |
| Produção | ❌ Não | ✅ Sim |

## Próximos Passos

1. ✅ Configure o Supabase local
2. ✅ Desenvolva seu app localmente
3. ✅ Quando precisar de produção, migre para nuvem
4. ✅ O código funciona igual nos dois! 🚀

---

**Dica:** Mantenha o `.env` no `.gitignore` e use `.env.example` para documentar as variáveis necessárias.
