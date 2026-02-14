# Configuração de Autenticação OAuth

Este guia explica como obter as credenciais necessárias para configurar login com Google e Facebook no seu app.

## 📋 Pré-requisitos

- Conta Google (para Google OAuth)
- Conta Facebook Developer (para Facebook OAuth)
- Supabase local rodando (`supabase start`)

## 🔵 Google OAuth

### 1. Acessar Google Cloud Console

Acesse: https://console.cloud.google.com/

### 2. Criar ou Selecionar Projeto

- Se não tiver projeto, clique em "Novo Projeto"
- Nome sugerido: "MRPKU App"
- Clique em "Criar"

### 3. Habilitar Google+ API (ou Google Identity)

- No menu lateral, vá em: **APIs e Serviços** → **Biblioteca**
- Busque por: **"Google+ API"** ou **"Google Identity Services"**
- Clique em **"Ativar"**

### 4. Criar Credenciais OAuth 2.0

- No menu lateral, vá em: **APIs e Serviços** → **Credenciais**
- Clique em **"+ Criar Credenciais"** → **"ID do cliente OAuth 2.0"**
- Se pedir, configure a **Tela de Consentimento OAuth**:
  - Tipo de usuário: **Externo**
  - Nome do app: **MRPKU**
  - Email de suporte: seu email
  - Domínio autorizado: deixe vazio por enquanto
  - Escopo: deixe os padrões (email, profile, openid)
  - Salve e continue

### 5. Configurar Cliente OAuth

- Tipo de aplicativo: **Aplicativo da Web**
- Nome: **MRPKU Web Client**
- **URIs de redirecionamento autorizados**:
  ```
  http://127.0.0.1:54321/auth/v1/callback
  http://localhost:54321/auth/v1/callback
  ```
- Clique em **Criar**

### 6. Copiar Credenciais

Você verá uma janela com:

- ✅ **ID do cliente**: algo como `123456789-abc.apps.googleusercontent.com`
- ✅ **Chave secreta do cliente**: algo como `GOCSPX-xxxxxxxxxxxxxxxx`

**Guarde essas credenciais!** Você vai precisar delas no passo final.

---

## 🔵 Facebook OAuth

### 1. Acessar Facebook Developers

Acesse: https://developers.facebook.com/

### 2. Criar App

- Clique em **"Meus Apps"** → **"Criar App"**
- Tipo: **Consumidor** (ou "Permitir que as pessoas façam login com o Facebook")
- Nome do app: **MRPKU**
- Email de contato: seu email
- Clique em **Criar App**

### 3. Adicionar Produto "Facebook Login"

- Na página do seu app, procure por **"Facebook Login"**
- Clique em **"Configurar"**

### 4. Configurar Facebook Login

- No menu lateral: **Facebook Login** → **Configurações**
- Em **"URIs de redirecionamento do OAuth válidos"**, adicione:
  ```
  http://127.0.0.1:54321/auth/v1/callback
  http://localhost:54321/auth/v1/callback
  ```
- Salve as alterações

### 5. Configurar Domínios do App

- No menu lateral: **Configurações** → **Básico**
- Em **"Domínios do App"**, adicione:
  ```
  localhost
  127.0.0.1
  ```

### 6. Copiar Credenciais

Na página **Configurações** → **Básico**, você encontrará:

- ✅ **ID do App**: número como `1234567890123456`
- ✅ **Chave Secreta do App**: clique em "Mostrar" e copie

**Guarde essas credenciais!** Você vai precisar delas no passo final.

### 7. Ativar o App (Importante!)

- No topo da página, mude o status do app de **"Em desenvolvimento"** para **"Ativo"**
- Isso pode exigir verificação adicional

---

## 🔐 Configurar Variáveis de Ambiente

### 1. Criar arquivo `.env` na raiz do projeto

```bash
# Crie o arquivo .env (se não existir)
touch .env
```

### 2. Adicionar as credenciais

Edite o arquivo `.env` e adicione:

```env
# Supabase Local
SUPA_URL=http://127.0.0.1:54321
SUPA_ANON_KEY=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZS1kZW1vIiwicm9sZSI6ImFub24iLCJleHAiOjE5ODM4MTI5OTZ9.CRXP1A7WOeoJeXxjNni43kdQwgnWNReilDMblYTn_I0

# Google OAuth
SUPABASE_AUTH_GOOGLE_CLIENT_ID=seu-client-id-aqui.apps.googleusercontent.com
SUPABASE_AUTH_GOOGLE_SECRET=GOCSPX-sua-secret-aqui

# Facebook OAuth
SUPABASE_AUTH_FACEBOOK_CLIENT_ID=1234567890123456
SUPABASE_AUTH_FACEBOOK_SECRET=sua-facebook-secret-aqui
```

**⚠️ IMPORTANTE**: O arquivo `.env` já está no `.gitignore`. **NUNCA** faça commit desse arquivo!

### 3. Reiniciar Supabase

Após adicionar as variáveis, reinicie o Supabase:

```bash
supabase stop
supabase start
```

---

## ✅ Testar a Configuração

### 1. Verificar se OAuth está habilitado

Acesse o Supabase Studio: http://127.0.0.1:54323

- Vá em **Authentication** → **Providers**
- Verifique se **Google** e **Facebook** estão marcados como **Enabled**

### 2. Testar no app

- Inicie o app: `npm start`
- Na tela de onboarding, clique em **"Continuar com Google"** ou **"Continuar com Facebook"**
- Deve abrir o popup de autenticação do provedor

---

## 🔧 Troubleshooting

### Erro: "redirect_uri_mismatch"

**Causa**: A URL de redirecionamento não está configurada corretamente.

**Solução**:

1. Verifique se adicionou exatamente:
   - `http://127.0.0.1:54321/auth/v1/callback`
   - `http://localhost:54321/auth/v1/callback`
2. Certifique-se de que o Supabase está rodando na porta `54321`
3. Reinicie o Supabase após adicionar as URLs

### Erro: "invalid_client"

**Causa**: Client ID ou Secret incorretos.

**Solução**:

1. Verifique se copiou as credenciais corretamente
2. Certifique-se de que não há espaços extras no `.env`
3. Reinicie o Supabase após corrigir

### Google: "Error 400: redirect_uri_mismatch"

**Solução**:

- Certifique-se de adicionar `http://127.0.0.1:54321/auth/v1/callback` (não apenas `localhost`)
- Google trata `127.0.0.1` e `localhost` como domínios diferentes

### Facebook: App não funciona

**Solução**:

- Certifique-se de que o app está **Ativo** (não "Em desenvolvimento")
- Verifique se adicionou os domínios `localhost` e `127.0.0.1` nas configurações

---

## 📱 Produção (Quando migrar para Supabase Cloud)

Quando você subir o app para produção com Supabase Cloud:

### 1. Atualizar URLs de Redirecionamento

**Google Cloud Console**:

```
https://seu-projeto.supabase.co/auth/v1/callback
```

**Facebook Developers**:

```
https://seu-projeto.supabase.co/auth/v1/callback
```

### 2. Atualizar Variáveis no Supabase Dashboard

- Acesse o Dashboard do Supabase Cloud
- Vá em **Authentication** → **Providers**
- Configure Google e Facebook com as credenciais

### 3. Atualizar `.env`

```env
SUPA_URL=https://seu-projeto.supabase.co
SUPA_ANON_KEY=sua-chave-anon-de-producao
```

---

## 📚 Recursos Úteis

- [Supabase Auth Docs](https://supabase.com/docs/guides/auth)
- [Google OAuth 2.0](https://developers.google.com/identity/protocols/oauth2)
- [Facebook Login](https://developers.facebook.com/docs/facebook-login)

---

**Dúvidas?** Entre em contato ou consulte a documentação oficial dos provedores.
