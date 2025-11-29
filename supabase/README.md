# Supabase Migrations

Esta pasta contém as migrations do banco de dados Supabase.

## Estrutura

```
supabase/
├── migrations/          # Arquivos de migration SQL
│   └── 20240101000000_create_recipes_table.sql
├── config.toml          # Configuração do Supabase local
└── README.md            # Este arquivo
```

## Comandos Úteis

### Inicializar o projeto (se ainda não fez)
```bash
supabase init
```

### Vincular ao projeto remoto
```bash
supabase link --project-ref seu-project-ref
```

### Criar uma nova migration
```bash
supabase migration new nome_da_migration
```

### Aplicar migrations no projeto remoto
```bash
supabase db push
```

### Verificar status das migrations
```bash
supabase migration list
```

### Reverter uma migration (cuidado!)
```bash
supabase migration repair --status reverted
```

## Ordem das Migrations

As migrations são aplicadas em ordem cronológica baseada no timestamp no nome do arquivo:
- Formato: `YYYYMMDDHHMMSS_nome_da_migration.sql`
- Exemplo: `20240101000000_create_recipes_table.sql`

## Boas Práticas

1. ✅ Sempre teste migrations localmente antes de aplicar em produção
2. ✅ Use `IF NOT EXISTS` para evitar erros em re-execução
3. ✅ Documente mudanças importantes nos comentários SQL
4. ✅ Nunca edite migrations já aplicadas - crie uma nova
5. ✅ Faça backup antes de migrations destrutivas (DROP, ALTER)

