-- Drop old columns related to dislikes
ALTER TABLE recipes DROP COLUMN IF EXISTS dislikes;
ALTER TABLE profiles DROP COLUMN IF EXISTS disliked_recipes;

-- Create recipe_dislikes table
CREATE TABLE IF NOT EXISTS recipe_dislikes (
  user_id UUID REFERENCES auth.users(id) ON DELETE CASCADE,
  recipe_id INTEGER REFERENCES recipes(id) ON DELETE CASCADE,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  PRIMARY KEY (user_id, recipe_id)
);

-- Enable RLS
ALTER TABLE recipe_dislikes ENABLE ROW LEVEL SECURITY;

-- Policies for recipe_dislikes

-- Anyone can read dislikes (needed for public counts)
CREATE POLICY "Public dislikes read access"
  ON recipe_dislikes FOR SELECT
  USING (true);

-- Authenticated users can insert their own dislike
CREATE POLICY "Users can dislike recipes"
  ON recipe_dislikes FOR INSERT
  WITH CHECK (auth.uid() = user_id);

-- Authenticated users can delete their own dislike
CREATE POLICY "Users can undislike recipes"
  ON recipe_dislikes FOR DELETE
  USING (auth.uid() = user_id);

-- Add comments for documentation
COMMENT ON TABLE recipe_dislikes IS 'Tabela de relacionamento para dislikes em receitas';
