-- Add translations field to recipes table
-- Este campo armazena traduções para outros idiomas
-- Estrutura: { "en-US": { "name": "...", "ingredients": [...], "preparation": [...], "servings": "..." } }
ALTER TABLE recipes
ADD COLUMN IF NOT EXISTS translations JSONB;

-- Comentário explicativo
COMMENT ON COLUMN recipes.translations IS 'Traduções para outros idiomas. Estrutura: { "locale": { "name": "...", "ingredients": [...], "preparation": [...], "servings": "..." } }';

