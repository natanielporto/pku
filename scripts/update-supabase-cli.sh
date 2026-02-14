#!/bin/bash

# Script para atualizar o Supabase CLI para a versão mais recente
# Uso: ./scripts/update-supabase-cli.sh

set -e

echo "🚀 Atualizando Supabase CLI..."

# Cores para output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Verifica se está no diretório correto
if [ ! -f "package.json" ]; then
    echo -e "${RED}❌ Erro: Execute este script a partir da raiz do projeto${NC}"
    exit 1
fi

# Verifica versão atual
CURRENT_VERSION=$(supabase --version 2>/dev/null | grep -oE '[0-9]+\.[0-9]+\.[0-9]+' | head -1 || echo "desconhecida")
echo -e "${YELLOW}📋 Versão atual: ${CURRENT_VERSION}${NC}"

# Obtém a versão mais recente do GitHub
echo "🔍 Verificando versão mais recente..."
LATEST_VERSION=$(curl -s https://api.github.com/repos/supabase/cli/releases/latest | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/' | sed 's/v//')

if [ -z "$LATEST_VERSION" ]; then
    echo -e "${RED}❌ Erro: Não foi possível obter a versão mais recente${NC}"
    exit 1
fi

echo -e "${GREEN}✅ Versão mais recente disponível: ${LATEST_VERSION}${NC}"

# Compara versões
if [ "$CURRENT_VERSION" = "$LATEST_VERSION" ]; then
    echo -e "${GREEN}✅ Você já está na versão mais recente!${NC}"
    exit 0
fi

# Pergunta se quer continuar
read -p "Deseja atualizar de ${CURRENT_VERSION} para ${LATEST_VERSION}? (s/N): " -n 1 -r
echo
if [[ ! $REPLY =~ ^[SsYy]$ ]]; then
    echo "Atualização cancelada."
    exit 0
fi

# Para o Supabase se estiver rodando
echo "🛑 Parando Supabase (se estiver rodando)..."
cd "$(dirname "$0")/.." || exit
if supabase status >/dev/null 2>&1; then
    supabase stop >/dev/null 2>&1 || true
    echo -e "${GREEN}✅ Supabase parado${NC}"
fi

# Detecta arquitetura
ARCH=$(uname -m)
if [ "$ARCH" = "x86_64" ]; then
    ARCH="amd64"
elif [ "$ARCH" = "aarch64" ] || [ "$ARCH" = "arm64" ]; then
    ARCH="arm64"
else
    echo -e "${RED}❌ Arquitetura não suportada: ${ARCH}${NC}"
    exit 1
fi

# Cria diretório temporário
TMP_DIR=$(mktemp -d)
trap "rm -rf $TMP_DIR" EXIT

echo "📥 Baixando Supabase CLI ${LATEST_VERSION}..."
DOWNLOAD_URL="https://github.com/supabase/cli/releases/download/v${LATEST_VERSION}/supabase_linux_${ARCH}.tar.gz"
cd "$TMP_DIR"

if ! curl -L -o supabase.tar.gz "$DOWNLOAD_URL"; then
    echo -e "${RED}❌ Erro ao baixar o Supabase CLI${NC}"
    exit 1
fi

echo "📦 Extraindo..."
tar -xzf supabase.tar.gz

# Verifica se o binário foi extraído
if [ ! -f "supabase" ]; then
    echo -e "${RED}❌ Erro: Binário não encontrado no arquivo baixado${NC}"
    exit 1
fi

# Faz backup do binário antigo
SUPABASE_BIN="/usr/local/bin/supabase"
if [ -f "$SUPABASE_BIN" ]; then
    echo "💾 Fazendo backup do binário antigo..."
    sudo cp "$SUPABASE_BIN" "${SUPABASE_BIN}.backup.${CURRENT_VERSION}" || {
        echo -e "${YELLOW}⚠️  Não foi possível fazer backup (pode precisar de sudo)${NC}"
    }
fi

# Instala o novo binário
echo "🔧 Instalando nova versão..."
sudo mv supabase "$SUPABASE_BIN"
sudo chmod +x "$SUPABASE_BIN"

# Verifica instalação
NEW_VERSION=$(supabase --version 2>/dev/null | grep -oE '[0-9]+\.[0-9]+\.[0-9]+' | head -1 || echo "desconhecida")

if [ "$NEW_VERSION" = "$LATEST_VERSION" ]; then
    echo -e "${GREEN}✅ Supabase CLI atualizado com sucesso!${NC}"
    echo -e "${GREEN}   Versão anterior: ${CURRENT_VERSION}${NC}"
    echo -e "${GREEN}   Versão atual: ${NEW_VERSION}${NC}"

    # Pergunta se quer reiniciar o Supabase
    read -p "Deseja reiniciar o Supabase local? (s/N): " -n 1 -r
    echo
    if [[ $REPLY =~ ^[SsYy]$ ]]; then
        echo "🚀 Reiniciando Supabase..."
        supabase start
    fi
else
    echo -e "${RED}❌ Erro: A versão instalada (${NEW_VERSION}) não corresponde à esperada (${LATEST_VERSION})${NC}"
    exit 1
fi
