-- Create profiles table
-- Esta tabela armazena informações adicionais dos usuários
-- Sincronizada automaticamente com auth.users via trigger

-- Criar a tabela de perfis
CREATE TABLE IF NOT EXISTS profiles (
  id UUID PRIMARY KEY REFERENCES auth.users(id) ON DELETE CASCADE,
  full_name TEXT,
  avatar_url TEXT,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Criar índice para buscas por nome
CREATE INDEX IF NOT EXISTS idx_profiles_full_name ON profiles(full_name);

-- Habilitar Row Level Security
ALTER TABLE profiles ENABLE ROW LEVEL SECURITY;

-- Política: Usuários podem visualizar apenas seu próprio perfil
CREATE POLICY "Usuários podem visualizar seu próprio perfil"
  ON profiles
  FOR SELECT
  USING (auth.uid() = id);

-- Política: Usuários podem atualizar apenas seu próprio perfil
CREATE POLICY "Usuários podem atualizar seu próprio perfil"
  ON profiles
  FOR UPDATE
  USING (auth.uid() = id)
  WITH CHECK (auth.uid() = id);

-- Política: Usuários podem inserir apenas seu próprio perfil
CREATE POLICY "Usuários podem inserir seu próprio perfil"
  ON profiles
  FOR INSERT
  WITH CHECK (auth.uid() = id);

-- Política: Usuários podem deletar apenas seu próprio perfil
CREATE POLICY "Usuários podem deletar seu próprio perfil"
  ON profiles
  FOR DELETE
  USING (auth.uid() = id);

-- Função para criar perfil automaticamente quando um usuário se cadastra
CREATE OR REPLACE FUNCTION public.handle_new_user()
RETURNS TRIGGER AS $$
BEGIN
  INSERT INTO public.profiles (id, full_name, avatar_url)
  VALUES (
    NEW.id,
    COALESCE(NEW.raw_user_meta_data->>'full_name', NEW.raw_user_meta_data->>'name', ''),
    COALESCE(NEW.raw_user_meta_data->>'avatar_url', NEW.raw_user_meta_data->>'picture', '')
  );
  RETURN NEW;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- Trigger: Criar perfil automaticamente quando novo usuário é criado
DROP TRIGGER IF EXISTS on_auth_user_created ON auth.users;
CREATE TRIGGER on_auth_user_created
  AFTER INSERT ON auth.users
  FOR EACH ROW
  EXECUTE FUNCTION public.handle_new_user();

-- Trigger: Atualizar updated_at automaticamente
CREATE TRIGGER update_profiles_updated_at
  BEFORE UPDATE ON profiles
  FOR EACH ROW
  EXECUTE FUNCTION update_updated_at_column();

-- Comentários para documentação
COMMENT ON TABLE profiles IS 'Perfis de usuários com informações adicionais além do auth.users';
COMMENT ON COLUMN profiles.id IS 'UUID do usuário (referência para auth.users)';
COMMENT ON COLUMN profiles.full_name IS 'Nome completo do usuário';
COMMENT ON COLUMN profiles.avatar_url IS 'URL da foto de perfil do usuário';
COMMENT ON COLUMN profiles.created_at IS 'Data de criação do perfil';
COMMENT ON COLUMN profiles.updated_at IS 'Data da última atualização do perfil';
