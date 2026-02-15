-- Batch 10 (recipes 91 to 97)

INSERT INTO recipes (id, name, category, image, ingredients, preparation, servings, nutritional_information, graph_information, translations)
VALUES (
  91,
  'Nuggets sem segredo',
  'Prato principal e vegetais',
  'https://images.unsplash.com/photo-1582981760753-b52aae38f237?q=80&w=1160&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["150g de abobrinha ralada","135g de batata","100g de cenoura","120g de farinha sem glúten","5g de sal","18g de azeite de oliva","55g de cebola","0.5g de orégano seco","25g de farinha de mandioca"]'::jsonb,
  '["1 - Cozinhe a cenoura e a batata, amasse até obter um purê e reserve;","2 - Refogue a abobrinha no azeite junto com a cebola e tempere com o sal e o orégano;","3 - Acrescente o purê de batata e cenoura na panela;","4 - Desligue o fogo e adicione a farinha aos poucos, mexendo sempre;","5 - Retire da panela e coloque em outro recipiente para amornar;","6 - Molde a massa em formato de nuggets, passe na farinha de mandioca para empanar e disponha em uma assadeira;","7 - Asse em forno pré-aquecido a 200°C por alguns minutos até dourar."]'::jsonb,
  '16 unidades',
  '[{"totalEnergy":899,"servingEnergy":56},{"totalCarbs":174,"servingCarbs":11},{"totalProteins":8.7,"servingProteins":0.5},{"totalLipids":19,"servingLipids":1},{"totalSodium":2020,"servingSodium":126},{"totalPotassium":1129,"servingPotassium":71}]'::jsonb,
  '[{"leucine":42,"totalLeucine":570,"servingLeucine":36},{"fenil":27,"totalFenil":370,"servingFenil":23},{"tirosine":21,"totalTirosine":290,"servingTirosine":18},{"metiotine":10,"totalMetiotine":140,"servingMetiotine":9}]'::jsonb,
  NULL
)
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  category = EXCLUDED.category,
  image = EXCLUDED.image,
  ingredients = EXCLUDED.ingredients,
  preparation = EXCLUDED.preparation,
  servings = EXCLUDED.servings,
  nutritional_information = EXCLUDED.nutritional_information,
  graph_information = EXCLUDED.graph_information,
  updated_at = NOW();

INSERT INTO recipes (id, name, category, image, ingredients, preparation, servings, nutritional_information, graph_information, translations)
VALUES (
  92,
  'Omelete fake',
  'Prato principal e vegetais',
  'https://images.unsplash.com/photo-1646579933415-92109f9805df?q=80&w=1514&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["200ml de água","15g de creme de leite","20g de cenoura","5g de óleo vegetal","3g de sal","2g de fermento químico em pó","70g de farinha sem glúten","75g de tomate picado","5g de salsinha","1g de orégano seco","30g de cebola picada","30g de azeitona picada"]'::jsonb,
  '["1 - Bata todos os ingredientes da massa no liquidificador e reserve;","2 - Em um recipiente, misture todos os ingredientes do recheio na massa;","3 - Unte uma frigideira com óleo e despeje a mistura;","4 - Cozinhe em fogo baixo e doure de ambos os lados."]'::jsonb,
  '4 unidades',
  '[{"totalEnergy":523,"servingEnergy":131},{"totalCarbs":71,"servingCarbs":18},{"totalProteins":2.8,"servingProteins":0.7},{"totalLipids":14,"servingLipids":3},{"totalSodium":1406,"servingSodium":352},{"totalPotassium":324,"servingPotassium":81}]'::jsonb,
  '[{"leucine":44,"totalLeucine":180,"servingLeucine":45},{"fenil":27,"totalFenil":110,"servingFenil":18},{"tirosine":19,"totalTirosine":80,"servingTirosine":20},{"metiotine":10,"totalMetiotine":40,"servingMetiotine":10}]'::jsonb,
  NULL
)
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  category = EXCLUDED.category,
  image = EXCLUDED.image,
  ingredients = EXCLUDED.ingredients,
  preparation = EXCLUDED.preparation,
  servings = EXCLUDED.servings,
  nutritional_information = EXCLUDED.nutritional_information,
  graph_information = EXCLUDED.graph_information,
  updated_at = NOW();

INSERT INTO recipes (id, name, category, image, ingredients, preparation, servings, nutritional_information, graph_information, translations)
VALUES (
  93,
  'Patê de cenoura',
  'Prato principal e vegetais',
  'https://images.unsplash.com/photo-1582515073490-39981397c445?q=80&w=1738&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["90g de cenoura ralada","10g de cebola picada","1g de orégano seco","2g de salsinha","2g de sal","40g de maionese","20g de creme de leite","5g de mostarda"]'::jsonb,
  '["1 - Em um recipiente, misture todos os ingredientes com auxílio de uma colher;","2 - Caso prefira um patê mais homogêneo, bata no processador ou liquidificador;","3 - Sirva gelado."]'::jsonb,
  '10 porções',
  '[{"totalEnergy":382,"servingEnergy":38},{"totalCarbs":11,"servingCarbs":1},{"totalProteins":2.5,"servingProteins":0.3},{"totalLipids":37,"servingLipids":4},{"totalSodium":1106,"servingSodium":111},{"totalPotassium":355,"servingPotassium":35}]'::jsonb,
  '[{"leucine":41,"totalLeucine":140,"servingLeucine":14},{"fenil":26,"totalFenil":90,"servingFenil":9},{"tirosine":21,"totalTirosine":70,"servingTirosine":7},{"metiotine":12,"totalMetiotine":40,"servingMetiotine":4}]'::jsonb,
  NULL
)
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  category = EXCLUDED.category,
  image = EXCLUDED.image,
  ingredients = EXCLUDED.ingredients,
  preparation = EXCLUDED.preparation,
  servings = EXCLUDED.servings,
  nutritional_information = EXCLUDED.nutritional_information,
  graph_information = EXCLUDED.graph_information,
  updated_at = NOW();

INSERT INTO recipes (id, name, category, image, ingredients, preparation, servings, nutritional_information, graph_information, translations)
VALUES (
  94,
  'Pizza de mandioca',
  'Prato principal e vegetais',
  'https://images.unsplash.com/photo-1585238342024-78d387f4a707?q=80&w=1160&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["150g de mandioca","20g de margarina sem sal","2g de sal"]'::jsonb,
  '["1 - Cozinhe a mandioca e amasse com auxílio de um garfo;","2 - Adicione o sal e a margarina, misture bem;","3 - Espalhe a mistura sob uma frigideira antiaderente, não deixe a massa muito fina;","4 - Cozinhe de ambos os lados e sirva com o recheio de sua preferência."]'::jsonb,
  '2 unidades',
  '[{"totalEnergy":304,"servingEnergy":152},{"totalCarbs":57,"servingCarbs":29},{"totalProteins":2,"servingProteins":1},{"totalLipids":8,"servingLipids":4},{"totalSodium":916,"servingSodium":458},{"totalPotassium":407,"servingPotassium":203}]'::jsonb,
  '[{"leucine":40,"totalLeucine":60,"servingLeucine":30},{"fenil":27,"totalFenil":40,"servingFenil":20},{"tirosine":20,"totalTirosine":30,"servingTirosine":15},{"metiotine":13,"totalMetiotine":20,"servingMetiotine":10}]'::jsonb,
  NULL
)
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  category = EXCLUDED.category,
  image = EXCLUDED.image,
  ingredients = EXCLUDED.ingredients,
  preparation = EXCLUDED.preparation,
  servings = EXCLUDED.servings,
  nutritional_information = EXCLUDED.nutritional_information,
  graph_information = EXCLUDED.graph_information,
  updated_at = NOW();

INSERT INTO recipes (id, name, category, image, ingredients, preparation, servings, nutritional_information, graph_information, translations)
VALUES (
  95,
  'Tomate recheado',
  'Prato principal e vegetais',
  'https://images.unsplash.com/photo-1607305387299-a3d9611cd469?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["180g de tomate (3 unidades de 60g cada)","185g de palmito picado","10g de azeitona picada","25g de cogumelos picados","10g de cebola","5g de alho","10g de óleo vegetal","10g de salsinha","2g de sal","30g de maionese","30g de creme de leite","30g de queijo vegano ralado","0.5g de orégano seco"]'::jsonb,
  '["1 - Lave os tomate e corte uma tampinha da parte superior de cada um deles e tire as sementes, reserve;","2 - Refogue em óleo os demais ingredientes, exceto a salsinha;","3 - Desligue o fogo e adicione a salsinha;","4 - Para o queijo cremoso, misture a maionese, orégano, creme de leite e o queijo vegano ralado;","5 - Unte uma forma com óleo ou margarina e coloque os tomates;","6 - Regue os tomates por dentro com azeite e sal;","7 - Coloque o recheio dentro e a cobertura de queijo por cima;","8 - Asse em forno pré-aquecido a 220°C por aproximadamente 25 minutos ou até gratinar."]'::jsonb,
  '3 unidades',
  '[{"totalEnergy":626,"servingEnergy":209},{"totalCarbs":30,"servingCarbs":10},{"totalProteins":8.9,"servingProteins":3},{"totalLipids":51,"servingLipids":17},{"totalSodium":2026,"servingSodium":675},{"totalPotassium":895,"servingPotassium":298}]'::jsonb,
  '[{"leucine":45,"totalLeucine":570,"servingLeucine":190},{"fenil":27,"totalFenil":340,"servingFenil":113},{"tirosine":17,"totalTirosine":220,"servingTirosine":73},{"metiotine":11,"totalMetiotine":140,"servingMetiotine":47}]'::jsonb,
  NULL
)
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  category = EXCLUDED.category,
  image = EXCLUDED.image,
  ingredients = EXCLUDED.ingredients,
  preparation = EXCLUDED.preparation,
  servings = EXCLUDED.servings,
  nutritional_information = EXCLUDED.nutritional_information,
  graph_information = EXCLUDED.graph_information,
  updated_at = NOW();

INSERT INTO recipes (id, name, category, image, ingredients, preparation, servings, nutritional_information, graph_information, translations)
VALUES (
  96,
  'Torta de frigideira',
  'Prato principal e vegetais',
  'https://images.unsplash.com/photo-1572383672419-ab35444a6934?q=80&w=1160&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["100g de tomate picado sem semente","20g de azeitona picada","55g de cogumelos picados","30g de cenoura ralada","4g de sal","1g de orégano seco","5g de salsinha","50g de óleo vegetal","50g de creme de leite","210ml de água","155g de farinha sem glúten","3g de sal","2g de vinagre de maçã","1g de goma xantana ou emulsificante","4g de fermento químico em pó","35g de queijo vegano ralado"]'::jsonb,
  '["1 - Misture todos os ingredientes do recheio e reserve;","2 - Misture todos os ingredientes da massa até obter uma mistura homogênea;","3 - Unte uma frigideira antiaderente com margarina e, sem ligar o fogo, coloque metade da massa;","4 - Espalhe o recheio por cima e despeje o restante da massa para cobrir;","5 - Salpique queijo vegano e orégano por cima;","6 - Tampe a frigideira e ligue o fogo bem baixinho;","7 - Cozinhe por cerca de 8 a 10 minutos de um lado;","8 - Vire com ajuda de prato e deixe cozinhar pelo mesmo tempo do outro lado."]'::jsonb,
  '10 fatias',
  '[{"totalEnergy":1412,"servingEnergy":141},{"totalCarbs":159,"servingCarbs":16},{"totalProteins":6.4,"servingProteins":0.6},{"totalLipids":76,"servingLipids":8},{"totalSodium":3237,"servingSodium":324},{"totalPotassium":531,"servingPotassium":53}]'::jsonb,
  '[{"leucine":43,"totalLeucine":460,"servingLeucine":46},{"fenil":26,"totalFenil":270,"servingFenil":27},{"tirosine":20,"totalTirosine":210,"servingTirosine":21},{"metiotine":11,"totalMetiotine":120,"servingMetiotine":12}]'::jsonb,
  NULL
)
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  category = EXCLUDED.category,
  image = EXCLUDED.image,
  ingredients = EXCLUDED.ingredients,
  preparation = EXCLUDED.preparation,
  servings = EXCLUDED.servings,
  nutritional_information = EXCLUDED.nutritional_information,
  graph_information = EXCLUDED.graph_information,
  updated_at = NOW();

INSERT INTO recipes (id, name, category, image, ingredients, preparation, servings, nutritional_information, graph_information, translations)
VALUES (
  97,
  'Torta de legumes',
  'Prato principal e vegetais',
  'https://plus.unsplash.com/premium_photo-1723734015222-ff4ab9901533?q=80&w=1446&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["180ml de água","40g de creme de leite","2g de fermento químico em pó","4g de sal","150g de farinha sem glúten","50g de óleo vegetal","50g de abobrinha","50g de cenoura","60g de palmito","65g de tomate","30g de azeitona","5g de salsinha","30g de cebola","20g de óleo vegetal","4g de sal"]'::jsonb,
  '["1 - Bata todos os ingredientes da massa no liquidificador ou mixer e reserve;","2 - Pique todos os ingredientes do recheio e refogue com o óleo e a cebola;","3 - Em uma assadeira ou refratário, despeje a massa e o recheio por cima;","4 - Leve para o forno em temperatura média até assar por completo."]'::jsonb,
  '10 fatias',
  '[{"totalEnergy":1486,"servingEnergy":149},{"totalCarbs":151,"servingCarbs":15},{"totalProteins":7.9,"servingProteins":0.8},{"totalLipids":85,"servingLipids":8},{"totalSodium":2063,"servingSodium":206},{"totalPotassium":651,"servingPotassium":65}]'::jsonb,
  '[{"leucine":44,"totalLeucine":600,"servingLeucine":60},{"fenil":26,"totalFenil":350,"servingFenil":35},{"tirosine":19,"totalTirosine":250,"servingTirosine":25},{"metiotine":11,"totalMetiotine":150,"servingMetiotine":15}]'::jsonb,
  NULL
)
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  category = EXCLUDED.category,
  image = EXCLUDED.image,
  ingredients = EXCLUDED.ingredients,
  preparation = EXCLUDED.preparation,
  servings = EXCLUDED.servings,
  nutritional_information = EXCLUDED.nutritional_information,
  graph_information = EXCLUDED.graph_information,
  updated_at = NOW();