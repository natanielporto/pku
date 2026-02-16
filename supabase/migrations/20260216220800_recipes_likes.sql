-- Drop old columns related to likes
ALTER TABLE recipes DROP COLUMN IF EXISTS likes;
ALTER TABLE profiles DROP COLUMN IF EXISTS liked_recipes;

-- Create recipe_likes table
CREATE TABLE IF NOT EXISTS recipe_likes (
  user_id UUID REFERENCES auth.users(id) ON DELETE CASCADE,
  recipe_id INTEGER REFERENCES recipes(id) ON DELETE CASCADE,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  PRIMARY KEY (user_id, recipe_id)
);

-- Enable RLS
ALTER TABLE recipe_likes ENABLE ROW LEVEL SECURITY;

-- Policies for recipe_likes

-- Anyone can read likes (needed for public counts)
CREATE POLICY "Public likes read access"
  ON recipe_likes FOR SELECT
  USING (true);

-- Authenticated users can insert their own like
CREATE POLICY "Users can like recipes"
  ON recipe_likes FOR INSERT
  WITH CHECK (auth.uid() = user_id);

-- Authenticated users can delete their own like
CREATE POLICY "Users can unlike recipes"
  ON recipe_likes FOR DELETE
  USING (auth.uid() = user_id);

-- Add comments for documentation
COMMENT ON TABLE recipe_likes IS 'Tabela de relacionamento para likes em receitas';
