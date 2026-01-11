-- Batch 6 (recipes 51 to 58)

INSERT INTO recipes (id, name, category, image, ingredients, preparation, servings, nutritional_information, graph_information, translations)
VALUES (
  52,
  'Waffles',
  'Pastries',
  'https://plus.unsplash.com/premium_photo-1673011775209-97272be970a2?q=80&w=400&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["180ml de água morna","50g de açúcar refinado","50g de banana amassada","100g de farinha sem glúten","5g de óleo de girassol","20g de creme de leite","5g de emulsificante","8g de vinagre de maçã","0,5g de essência de baunilha","2g de fermento químico em pó","1g de sal","1g de goma xantana","1g de ágar-ágar"]'::jsonb,
  '["1 - Misture a banana amassada com o açúcar e o emulsificante, reserve;","2 - Misture o vinagre e os demais ingredientes;","3 - Adicione a farinha e o fermento químico, bata tudo com o auxílio de um fuê;","4 - Ligue o grill para waffle na temperatura máxima e espere esquentar;","5 - Coloque uma porção de massa no centro do grill e asse por 15 minutos ou até que esteja dourado e assado. Não abra antes de 10 minutos;","6 - Sirva com margarina, mel ou geleia."]'::jsonb,
  '2 unidades',
  '[{"totalEnergy":703,"servingEnergy":351},{"totalCarbs":149,"servingCarbs":75},{"totalProteins":2,"servingProteins":1},{"totalLipids":12,"servingLipids":6},{"totalSodium":396,"servingSodium":198},{"totalPotassium":231,"servingPotassium":115}]'::jsonb,
  '[{"leucine":46,"totalLeucine":180,"servingLeucine":90},{"tirosine":18,"totalTirosine":70,"servingTirosine":35},{"fenil":26,"totalFenil":100,"servingFenil":50},{"metiotine":10,"totalMetiotine":40,"servingMetiotine":20}]'::jsonb,
  '{"en-US":{"name":"Waffles","ingredients":["180ml of warm water","50g of refined sugar","50g of mashed banana","100g of gluten-free flour","5g of sunflower oil","20g of milk cream","5g of emulsifier","8g of apple vinegar","0,5g of vanilla essence","2g of chemical yeast powder","1g of salt","1g of xanthan gum","1g of agar-agar"],"preparation":["1 - mix the mashed banana with the sugar and the emulsifier, reserve;","2 - mix the apple vinegar and the other ingredients;","3 - Add the flour and the chemical yeast, beat everything with the help of a fuê;","4 - Turn on the grill for waffle at the maximum temperature and wait for it to heat up;","5 - Place a portion of dough in the center of the grill and bake for 15 minutes or until it is golden and cooked. Do not open before 10 minutes;","6 - Serve with margarine, honey or jelly."],"servings":"2 servings"}}'::jsonb
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
  53,
  'Fine herbs bread',
  'Breads',
  'https://images.unsplash.com/photo-1536919011766-09449b44af40?q=80&w=400&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["130g de tapioca hidratada","250g de batata cozida","5g de óleo vegetal","6g de sal","3g de fermento químico em pó","15ml de água","0,5g de ervas secas (orégano, alecrim)"]'::jsonb,
  '["1 - Amasse a batata até obter um purê;","2 - Em um recipiente, misture o purê com os demais ingredientes;","3 - Amasse até obter uma massa moldável;","4 - Enrole em bolinhas com as mãos ou no formato que desejar;","5 - Disponha em uma assadeira untada;","6 - Asse em forno pré-aquecido a 200° C por aproximadamente 40 minutos."]'::jsonb,
  '20 unidades',
  '[{"totalEnergy":733,"servingEnergy":37},{"totalCarbs":167,"servingCarbs":8},{"totalProteins":4.7,"servingProteins":0.2},{"totalLipids":5,"servingLipids":0},{"totalSodium":2341,"servingSodium":117},{"totalPotassium":843,"servingPotassium":42}]'::jsonb,
  '[{"leucine":38,"totalLeucine":260,"servingLeucine":13},{"tirosine":24,"totalTirosine":160,"servingTirosine":8},{"fenil":28,"totalFenil":190,"servingFenil":10},{"metiotine":10,"totalMetiotine":70,"servingMetiotine":4}]'::jsonb,
  '{"en-US":{"name":"Fine Herbs Bread","ingredients":["130g of hydrated tapioca","250g of batata cozida","5g of vegetable oil","6g of salt","3g of chemical yeast powder","15ml of water","0,5g of dried herbs (oregano, thyme)"],"preparation":["1 - Mash the potato until you get a puré;","2 - In a container, mix the puré with the other ingredients;","3 - Mash until you get a moldable dough;","4 - Roll into balls with your hands or in the desired shape;","5 - Place on a greased baking sheet;","6 - Bake in pre-heated oven at 200°C for approximately 40 minutes."],"servings":"20 servings"}}'::jsonb
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
  54,
  'Mixed flour bread',
  'Breads',
  'https://images.unsplash.com/photo-1534620808146-d33bb39128b2?q=80&w=400&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["200g de amido de milho","200g de polvilho doce","100g de fécula de batata","100g de farinha de arroz","50g de liga neutra","200ml de água","60g de açúcar refinado","10g de fermento biológico seco em pó 10g de sal","20g de emulsificante","90g de margarina sem sal","75g de creme de leite","15g de óleo vegetal"]'::jsonb,
  '["1 - Em um recipiente coloque 100ml de água quente, o açúcar, a margarina, o óleo e o emulsificante. Mexa bem até que a margarina derreta;","2 - Acrescente o restante da água fria e o fermento, deixe descansar por 5 minutos;","3 - Acrescente a mistura as farinhas, o sal, o creme de leite e bata na batedeira por alguns minutos;","4 - Coloque a massa em um recipiente, deixe crescer e bata novamente;","5 - Divida a massa em duas formas de pão untadas e deixe crescer novamente;","6 - Asse em forno pré-aquecido 220°C até ficar dourado."]'::jsonb,
  '21 fatias',
  '[{"totalEnergy":3218,"servingEnergy":153},{"totalCarbs":630,"servingCarbs":30},{"totalProteins":14.1,"servingProteins":0.7},{"totalLipids":69,"servingLipids":3},{"totalSodium":4466,"servingSodium":213},{"totalPotassium":230,"servingPotassium":11}]'::jsonb,
  '[{"leucine":41,"totalLeucine":1080,"servingLeucine":51},{"tirosine":23,"totalTirosine":590,"servingTirosine":28},{"fenil":25,"totalFenil":640,"servingFenil":30},{"metiotine":11,"totalMetiotine":280,"servingMetiotine":13}]'::jsonb,
  '{"en-US":{"name":"Mixed Flour Bread","ingredients":["200g of corn starch","200g of sweet potato starch","100g of potato starch","100g of rice flour","50g of neutral glue","200ml of water","60g of refined sugar","10g of biological yeast powder","10g of salt","20g of emulsifier","90g of margarine without salt","75g of milk cream","15g of vegetable oil"],"preparation":["1 - In a container, place 100ml of warm water, the sugar, the margarine, the oil and the emulsifier. Beat well until the margarine melts;","2 - Add the rest of the cold water and the yeast, let rest for 5 minutes;","3 - Add the flour mixture, the salt, the milk cream and beat in the mixer for a few minutes;","4 - Place the dough in a container, let it rise and beat again;","5 - Divide the dough into two bread shapes and let it rise again;","6 - Bake in pre-heated oven at 220°C until it is golden."],"servings":"21 servings"}}'::jsonb
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
  55,
  'Gourmet kiss bread',
  'Breads',
  'https://images.unsplash.com/photo-1559141680-d0bd7bc5af84?q=80&w=400&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["150g de abóbora cozida","240g de batata cozida","90g de polvilho doce","200g de polvilho azedo","10g de fermento químico em pó 70ml de água","30g de óleo vegetal 5g de sal","2g de alho amassado 5g de salsinha"]'::jsonb,
  '["1 - Misture a batata com abóbora e amasse até obter um purê;","2 - Acrescente a água e depois os demais ingredientes, deixando o fermento por último;","3 - Misture tudo até obter uma massa lisa e conseguir amassar com as mãos;","4 - Faça bolinhas e disponha em uma assadeira;","5 - Asse em forno pré-aquecido a 180°C por aproximadamente 1 hora."]'::jsonb,
  '40 unidades',
  '[{"totalEnergy":1558,"servingEnergy":39},{"totalCarbs":316,"servingCarbs":8},{"totalProteins":6.3,"servingProteins":0.2},{"totalLipids":31,"servingLipids":1},{"totalSodium":1960,"servingSodium":49},{"totalPotassium":1200,"servingPotassium":30}]'::jsonb,
  '[{"leucine":38,"totalLeucine":310,"servingLeucine":8},{"tirosine":24,"totalTirosine":200,"servingTirosine":5},{"fenil":28,"totalFenil":230,"servingFenil":6},{"metiotine":10,"totalMetiotine":80,"servingMetiotine":2}]'::jsonb,
  '{"en-US":{"name":"Gourmet Kiss Bread","ingredients":["150g of cooked pumpkin","240g of cooked potato","90g of sweet potato starch","200g of sour potato starch","10g of biological yeast powder 70ml of water","30g of vegetable oil 5g of salt","2g of mashed garlic 5g of parsley"],"preparation":["1 - mix the potato with the pumpkin and mash until you get a puré;","2 - Add the water and then the other ingredients, leaving the yeast last;","3 - mix everything until you get a smooth dough and can mash with the hands;","4 - Make balls and place on a baking sheet;","5 - Bake in pre-heated oven at 180°C for approximately 1 hour."],"servings":"40 servings"}}'::jsonb
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
  56,
  'French bread',
  'Breads',
  'https://images.unsplash.com/photo-1582509385126-c9ab0cb0449f?q=80&w=400&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["320g de farinha sem glúten","50g de polvilho doce","9g de sal","30g de açúcar refinado ou mascavo 10g de fermento biológico seco","5g e liga neutra ou goma xantana 6g de azeite de oliva","6g de vinagre de maçã","240ml de água","0,1g de açafrão em pó"]'::jsonb,
  '["1 - Em um recipiente, misture o vinagre, o azeite e a água;","2 - Adicione os demais ingredientes, misture com uma colher e depois com as mãos;","3 - Sove bem, a massa fica um pouco pegajosa;","4 - Separe a massa em 8 partes iguais e modele os pães com as mãos untadas com óleo, não é necessário deixar a massa crescer;","5 - Disponha em uma assadeira untada com margarina e faça um corte de uma extremidade a outra em cima de cada um dos pães;","6 - Asse em forno pré-aquecido a 220°C por 25 a 30 minutos. Não exceder o tempo de cozimento para não ficar duro, os pães ficam brancos;","7 - É possível congelar depois de prontos e aquecer em micro-ondas por 30 segundos."]'::jsonb,
  '8 unidades',
  '[{"totalEnergy":1544,"servingEnergy":193},{"totalCarbs":351,"servingCarbs":44},{"totalProteins":8,"servingProteins":1},{"totalLipids":12,"servingLipids":2},{"totalSodium":3490,"servingSodium":436},{"totalPotassium":14,"servingPotassium":2}]'::jsonb,
  '[{"leucine":44,"totalLeucine":610,"servingLeucine":76},{"tirosine":19,"totalTirosine":260,"servingTirosine":33},{"fenil":26,"totalFenil":360,"servingFenil":45},{"metiotine":11,"totalMetiotine":150,"servingMetiotine":19}]'::jsonb,
  '{"en-US":{"name":"French Bread","ingredients":["320g of gluten-free flour","50g of sweet potato starch","9g of salt","30g of refined sugar or mashed potato 10g of biological yeast powder","5g of neutral glue or xanthan gum 6g of olive oil","6g of apple vinegar","240ml of water","0,1g of saffron powder"],"preparation":["1 - In a container, mix the apple vinegar, the olive oil and the water;","2 - Add the other ingredients, mix with a spoon and then with the hands;","3 - Beat it well, untill the dough is a little sticky;","4 - Separate the dough into 8 equal parts and mold the bread with the hands oiled, it is not necessary to let the dough rise;","5 - Place on a greased baking sheet and make a cut from one end to the other on each of the breads;","6 - Bake in pre-heated oven at 220°C for 25 to 30 minutes. Do not exceed the cooking time to avoid becoming hard, the breads become white;","7 - It is possible to freeze after cooking and heat in the microwave for 30 seconds."],"servings":"8 unidades"}}'::jsonb
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
  57,
  'Cheese bread',
  'Breads',
  'https://media.istockphoto.com/id/1249893961/pt/foto/brazilian-snack-traditional-cheese-bread.jpg?s=2048x2048&w=is&k=20&c=nobDyi5btyyO3bc3Zyb62X0_ScOncJJL2NSbbLTVq3M=',
  '["130g de polvilho azedo","60g de polvilho doce","90g de queijo vegano ralado 220g de creme de leite","5g de sal"]'::jsonb,
  '["1 - Em uma vasilha, misture todos os ingredientes exceto o polvilho doce;","2 - Acrescente o polvilho doce e misture novamente, a consistência da massa é pegajosa;","3 - É possível utilizar somente o polvilho azedo, se preferir;","4 - Modele os pães com o auxílio de duas colheres;","5 - Disponha as porções em uma assadeira untada com margarina;","6 - Leve ao forno pré-aquecido a 200°C até assar por completo."]'::jsonb,
  '16 unidades',
  '[{"totalEnergy":1481,"servingEnergy":93},{"totalCarbs":194,"servingCarbs":12},{"totalProteins":7.2,"servingProteins":0.4},{"totalLipids":76,"servingLipids":5},{"totalSodium":2260,"servingSodium":141},{"totalPotassium":273,"servingPotassium":17}]'::jsonb,
  '[{"leucine":43,"totalLeucine":610,"servingLeucine":38},{"tirosine":23,"totalTirosine":330,"servingTirosine":21},{"fenil":23,"totalFenil":320,"servingFenil":20},{"metiotine":11,"totalMetiotine":150,"servingMetiotine":9}]'::jsonb,
  '{"en-US":{"name":"Cheese Bread","ingredients":["130g of sour potato starch","60g of sweet potato starch","90g of vegan cheese 220g of milk cream","5g of salt"],"preparation":["1 - In a container, mix all the ingredients except the sweet potato starch;","2 - Add the sweet potato starch and mix again, the consistency of the dough is sticky;","3 - It is possible to use only the sour potato starch, if you prefer;","4 - Mold the breads with the help of two spoons;","5 - Place the portions on a greased baking sheet;","6 - Bake in pre-heated oven at 200°C until it is cooked."],"servings":"16 servings"}}'::jsonb
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
  58,
  'Frying pan bread',
  'Breads',
  'https://images.unsplash.com/photo-1599232288126-7dbd2127db14?q=80&w=400&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["60g de farinha sem glúten","15g de açúcar refinado","6g de óleo vegetal","30g de banana amassada","0,5g de goma xantana ou liga neutra 35ml de água morna","25g de creme de leite","8g de vinagre de maçã","1g de fermento químico em pó 1g de sal"]'::jsonb,
  '["1 - Em um recipiente, misture todos os ingredientes exceto a água.","2 - Adicione a água aos poucos até obter uma mistura homogênea;","3 - Em uma frigideira antiaderente untada, disponha metade da massa, tampe e doure de ambos os lados;","4 - Repita o processo com a outra metade da massa."]'::jsonb,
  '2 unidades',
  '[{"totalEnergy":424,"servingEnergy":212},{"totalCarbs":77,"servingCarbs":38},{"totalProteins":2.1,"servingProteins":1.1},{"totalLipids":13,"servingLipids":6},{"totalSodium":399,"servingSodium":199},{"totalPotassium":156,"servingPotassium":78}]'::jsonb,
  '[{"leucine":46,"totalLeucine":200,"servingLeucine":100},{"tirosine":18,"totalTirosine":80,"servingTirosine":40},{"fenil":25,"totalFenil":110,"servingFenil":55},{"metiotine":11,"totalMetiotine":50,"servingMetiotine":25}]'::jsonb,
  '{"en-US":{"name":"Frying Pan Bread","ingredients":["60g of gluten-free flour","15g of refined sugar","6g of vegetable oil","30g of mashed banana","0,5g of xanthan gum or neutral glue 35ml of warm water","25g of milk cream","8g of apple vinegar","1g of chemical yeast powder 1g of salt"],"preparation":["1 - In a container, mix all the ingredients except the water.","2 - Add the water a little at a time until you get a homogeneous mixture;","3 - Place half of the dough on a non-stick pan, cover and cook on both sides;","4 - Repeat the process with the other half of the dough."],"servings":"2 servings"}}'::jsonb
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
  59,
  'Inhaminho bread',
  'Breads',
  'https://images.unsplash.com/photo-1561043433-b0bb121aacef?q=80&w=400&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["270g de inhame cozido","100g de polvilho doce","100g de polvilho azedo","30g de óleo de girassol","7g de sal","1g de orégano seco"]'::jsonb,
  '["1 - Cozinhe o inhame e amasse até virar um purê;","2 - Em um recipiente, coloque o purê de inhame e acrescente os demais ingredientes;","3 - Misture tudo e amasse com a mão até virar uma massa lisa e homogênea;","4 - Caso a massa fique seca, adicione um pouco de água quente para dar o ponto;","5 - Faça bolinhas e disponha em uma assadeira;","6 - Asse em forno pré-aquecido a 200°C até que o fundo fique dourado."]'::jsonb,
  '30 unidades',
  '[{"totalEnergy":1327,"servingEnergy":44},{"totalCarbs":259,"servingCarbs":9},{"totalProteins":5.1,"servingProteins":0.2},{"totalLipids":31,"servingLipids":1},{"totalSodium":2741,"servingSodium":91},{"totalPotassium":2033,"servingPotassium":68}]'::jsonb,
  '[{"leucine":42,"totalLeucine":280,"servingLeucine":9},{"tirosine":18,"totalTirosine":120,"servingTirosine":4},{"fenil":31,"totalFenil":210,"servingFenil":7},{"metiotine":9,"totalMetiotine":60,"servingMetiotine":2}]'::jsonb,
  '{"en-US":{"name":"Inhaminho Bread","ingredients":["270g of cooked inhame","100g of sweet potato starch","100g of sour potato starch","30g of sunflower oil","7g of salt","1g of dried oregano"],"preparation":["1 - Cook the inhame and mash until it becomes a puré;","2 - In a container, place the puré of inhame and add the other ingredients;","3 - Mix everything and mash with the hands until you get a smooth and homogeneous dough;","4 - If the dough is dry, add a little warm water to give the point;","5 - Make balls and place on a baking sheet;","6 - Bake in pre-heated oven at 200°C until the bottom is golden."],"servings":"30 servings"}}'::jsonb
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