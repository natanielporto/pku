-- Create recipes table
-- Estrutura baseada no recipes.json:
-- - ingredients: array de strings
-- - preparation: array de strings
-- - nutritionalInformation: array de objetos (armazenado como nutritional_information)
-- - graphInformation: array de objetos (armazenado como graph_information)
CREATE TABLE IF NOT EXISTS recipes (
  id INTEGER PRIMARY KEY, -- Usa INTEGER para corresponder ao JSON (não BIGSERIAL auto-increment)
  name TEXT NOT NULL,
  category TEXT NOT NULL,
  image TEXT,
  ingredients JSONB NOT NULL, -- Array de strings
  preparation JSONB NOT NULL, -- Array de strings
  servings TEXT,
  nutritional_information JSONB, -- Array de objetos NutritionalInfo (camelCase no JSON, snake_case no DB)
  graph_information JSONB, -- Array de objetos GraphInfo (camelCase no JSON, snake_case no DB)
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Create index for category lookups
CREATE INDEX IF NOT EXISTS idx_recipes_category ON recipes(category);

-- Create index for name searches
CREATE INDEX IF NOT EXISTS idx_recipes_name ON recipes(name);

-- Enable Row Level Security
ALTER TABLE recipes ENABLE ROW LEVEL SECURITY;

-- Create policy for public read access
CREATE POLICY "Permitir leitura pública de receitas"
  ON recipes
  FOR SELECT
  USING (true);

-- Create function to update updated_at timestamp
CREATE OR REPLACE FUNCTION update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = NOW();
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Create trigger to automatically update updated_at
CREATE TRIGGER update_recipes_updated_at
  BEFORE UPDATE ON recipes
  FOR EACH ROW
  EXECUTE FUNCTION update_updated_at_column();

