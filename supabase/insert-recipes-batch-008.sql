-- Batch 8 (recipes 71 to 80)

INSERT INTO recipes (id, name, category, image, ingredients, preparation, servings, nutritional_information, graph_information, translations)
VALUES (
  71,
  'Bolinho de abobrinha com cenoura',
  'Prato principal e vegetais',
  'https://images.unsplash.com/photo-1741791415742-61aa540b4d86?q=80&w=735&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["130g de abobrinha ralada","45g de cenoura ralada","30g de amido de milho","20g de farinha de arroz","50g de cebola picada","3g de alho","10g de salsinha picada","10g de cebolinha picada","2g de orégano"]'::jsonb,
  '["1 - Em um refratário, coloque a abobrinha ralada e misture os demais ingredientes, exceto o amido de milho e farinha de arroz;","2 - Adicione o amido e a farinha aos poucos até a massa ficar consistente e firme na colher;","3 - Separe a massa em 10 porções de 32 g, aproximadamente;","4 - Com uma colher pegue as porções e coloque-as em óleo quente para fritar um pouco de cada vez;","5 - Retire com uma escumadeira quando estiverem douradas;","6 - Coloque em papel absorvente."]'::jsonb,
  '10 unidades',
  '[{"totalEnergy":488,"servingEnergy":49},{"totalCarbs":59,"servingCarbs":6},{"totalProteins":4.6,"servingProteins":0.5},{"totalLipids":27,"servingLipids":3},{"totalSodium":1194,"servingSodium":119},{"totalPotassium":674,"servingPotassium":67}]'::jsonb,
  '[{"leucine":41,"totalLeucine":280,"servingLeucine":28},{"tirosine":22,"totalTirosine":150,"servingTirosine":15},{"fenil":27,"totalFenil":179,"servingFenil":18},{"metiotine":10,"totalMetiotine":70,"servingMetiotine":7}]'::jsonb,
  '{"en-US":{"name":"Zucchini and carrot fritters","ingredients":["130g of grated zucchini","45g of grated carrot","30g of cornstarch","20g of rice flour","50g of chopped onion","3g of garlic","10g of chopped parsley","10g of chopped chives","2g of oregano"],"preparation":["1 - In a baking dish, place the grated zucchini and mix the other ingredients, except the cornstarch and rice flour;","2 - Add the starch and flour little by little until the dough becomes consistent and firm in the spoon;","3 - Separate the dough into 10 portions of approximately 32 g;","4 - With a spoon, take the portions and place them in hot oil to fry a little at a time;","5 - Remove with a slotted spoon when they are golden;","6 - Place on absorbent paper."],"servings":"10 units"}}'::jsonb
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
  translations = EXCLUDED.translations,
  updated_at = NOW();

INSERT INTO recipes (id, name, category, image, ingredients, preparation, servings, nutritional_information, graph_information, translations)
VALUES (
  72,
  'Bolinho de aipim',
  'Prato principal e vegetais',
  'https://plus.unsplash.com/premium_photo-1725467479101-556af13a7220?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["220g de aipim descascado e cozido","50g de farinha de mandioca","5g de azeite de oliva","5g de margarina sem sal","20g de creme de leite","3g de sal","Farinha de mandioca para empanar","Óleo para fritar"]'::jsonb,
  '["1 - Amasse o aipim ainda quente com um pouco da água do cozimento para facilitar;","2 - Acrescente o creme de leite, a margarina e coloque a farinha de mandioca aos poucos;","3 - Misture até formar uma massa moldável com as mãos;","4 - Faça os bolinhos no formato que preferir e passe na farinha de mandioca torrada;","5 - Frite em óleo quente rapidamente para não abrir e estourar."]'::jsonb,
  '10 unidades',
  '[{"totalEnergy":874,"servingEnergy":87},{"totalCarbs":128,"servingCarbs":13},{"totalProteins":4.3,"servingProteins":0.4},{"totalLipids":38,"servingLipids":4},{"totalSodium":1231,"servingSodium":123},{"totalPotassium":619,"servingPotassium":62}]'::jsonb,
  '[{"leucine":41,"totalLeucine":190,"servingLeucine":19},{"tirosine":24,"totalTirosine":110,"servingTirosine":11},{"fenil":26,"totalFenil":120,"servingFenil":12},{"metiotine":9,"totalMetiotine":40,"servingMetiotine":4}]'::jsonb,
  '{"en-US":{"name":"Cassava fritters","ingredients":["220g of peeled and cooked cassava","50g of cassava flour","5g of olive oil","5g of unsalted margarine","20g of cream","3g of salt","Cassava flour for breading","Oil for frying"],"preparation":["1 - Mash the cassava while still hot with a little cooking water to make it easier;","2 - Add the cream, margarine and add the cassava flour little by little;","3 - mix until it forms a moldable dough with your hands;","4 - Make the fritters in the shape you prefer and pass them through the toasted cassava flour;","5 - Fry in hot oil quickly so they don''t open and burst."],"servings":"10 units"}}'::jsonb
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
  translations = EXCLUDED.translations,
  updated_at = NOW();

INSERT INTO recipes (id, name, category, image, ingredients, preparation, servings, nutritional_information, graph_information, translations)
VALUES (
  73,
  'Bolinho de arroz com cenoura',
  'Prato principal e vegetais',
  'https://plus.unsplash.com/premium_photo-1699519510499-41b626d8522e?q=80&w=1472&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["80g de arroz cozido","100g de cenoura ralada","20g de creme de leite","10g de salsinha","10g de goma xantana ou liga neutra","3g de sal","150g de farinha sem glúten","125ml de água morna","15g de cebola","Óleo para fritar"]'::jsonb,
  '["1 - Em um recipiente, coloque a farinha e adicione a água morna. Misture até formar uma massa firme;","2 - Junte o arroz cozido e os demais ingredientes, misture bem;","3 - Com auxílio de uma colher porcione a massa;","4 - Frite em óleo quente e retire quando estiverem dourados, coloque em papel absorvente."]'::jsonb,
  '20 unidades',
  '[{"totalEnergy":1064,"servingEnergy":53},{"totalCarbs":172,"servingCarbs":9},{"totalProteins":5.4,"servingProteins":0.3},{"totalLipids":40,"servingLipids":2},{"totalSodium":1211,"servingSodium":61},{"totalPotassium":448,"servingPotassium":22}]'::jsonb,
  '[{"leucine":43,"totalLeucine":420,"servingLeucine":21},{"tirosine":19,"totalTirosine":180,"servingTirosine":9},{"fenil":27,"totalFenil":260,"servingFenil":13},{"metiotine":11,"totalMetiotine":110,"servingMetiotine":6}]'::jsonb,
  '{"en-US":{"name":"Rice and carrot fritters","ingredients":["80g of cooked rice","100g of grated carrot","20g of cream","10g of parsley","10g of xanthan gum or neutral binder","3g of salt","150g of gluten-free flour","125ml of warm water","15g of onion","Oil for frying"],"preparation":["1 - In a container, place the flour and add the warm water. mix until it forms a firm dough;","2 - Add the cooked rice and the other ingredients, mix well;","3 - With the help of a spoon, portion the dough;","4 - Fry in hot oil and remove when they are golden, place on absorbent paper."],"servings":"20 units"}}'::jsonb
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
  translations = EXCLUDED.translations,
  updated_at = NOW();

INSERT INTO recipes (id, name, category, image, ingredients, preparation, servings, nutritional_information, graph_information, translations)
VALUES (
  74,
  'Bolinho de arroz com milho',
  'Prato principal e vegetais',
  'https://images.unsplash.com/photo-1706467563677-d7980d75b58a?q=80&w=735&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["250g de arroz cozido","30g de amido de milho","50g de cenoura","30g de cebola","20g de milho","4g de liga neutra","50g de creme de leite","30g de farinha sem glúten","3g de sal","1g de orégano seco","Óleo para fritar"]'::jsonb,
  '["1 - Em um recipiente, misture o arroz cozido e os demais ingredientes;","2 - Se preferir, coloque a mistura no processador para obter uma massa mais homogênea;","3 - Com auxílio de uma colher ou com as mãos, molde os bolinhos;","4 - Frite em óleo quente até dourar e coloque em papel absorvente."]'::jsonb,
  '20 unidades',
  '[{"totalEnergy":931,"servingEnergy":47},{"totalCarbs":141,"servingCarbs":7},{"totalProteins":9.4,"servingProteins":0.5},{"totalLipids":36,"servingLipids":2},{"totalSodium":1245,"servingSodium":62},{"totalPotassium":378,"servingPotassium":19}]'::jsonb,
  '[{"leucine":44,"totalLeucine":750,"servingLeucine":38},{"tirosine":18,"totalTirosine":310,"servingTirosine":16},{"fenil":26,"totalFenil":450,"servingFenil":23},{"metiotine":12,"totalMetiotine":200,"servingMetiotine":10}]'::jsonb,
  '{"en-US":{"name":"Rice and corn fritters","ingredients":["250g of cooked rice","30g of cornstarch","50g of carrot","30g of onion","20g of corn","4g of neutral binder","50g of cream","30g of gluten-free flour","3g of salt","1g of dried oregano","Oil for frying"],"preparation":["1 - In a container, mix the cooked rice and the other ingredients;","2 - If you prefer, put the mixture in the processor to obtain a more homogeneous dough;","3 - With the help of a spoon or with your hands, shape the fritters;","4 - Fry in hot oil until golden and place on absorbent paper."],"servings":"20 units"}}'::jsonb
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
  translations = EXCLUDED.translations,
  updated_at = NOW();

INSERT INTO recipes (id, name, category, image, ingredients, preparation, servings, nutritional_information, graph_information, translations)
VALUES (
  75,
  'Bolinho de batata salsa e berinjela',
  'Prato principal e vegetais',
  'https://images.unsplash.com/photo-1675227977042-a572dac762be?q=80&w=1160&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["150g de mandioquinha cozida","20g de tomate picado","40g de berinjela","20g de cebola picada","2g de alho","35g de farinha de mandioca","5g de salsinha","3g de sal","Óleo para fritar"]'::jsonb,
  '["1 - Amasse a mandioquinha até obter um purê e reserve;","2 - Refogue a berinjela com a cebola, o alho o tomate e acrescente o cheiro verde;","3 - Misture o refogado ao purê de mandioquinha e acrescente a farinha de mandioca para dar ponto;","4 - Frite em óleo quente e coloque em papel absorvente."]'::jsonb,
  '10 unidades',
  '[{"totalEnergy":523,"servingEnergy":52},{"totalCarbs":74,"servingCarbs":7},{"totalProteins":3,"servingProteins":0.3},{"totalLipids":24,"servingLipids":2},{"totalSodium":1169,"servingSodium":117},{"totalPotassium":300,"servingPotassium":30}]'::jsonb,
  '[{"leucine":41,"totalLeucine":160,"servingLeucine":16},{"tirosine":23,"totalTirosine":90,"servingTirosine":9},{"fenil":28,"totalFenil":110,"servingFenil":11},{"metiotine":8,"totalMetiotine":30,"servingMetiotine":3}]'::jsonb,
  '{"en-US":{"name":"Potato and eggplant fritters","ingredients":["150g of cooked mandioquinha","20g of chopped tomato","40g of eggplant","20g of chopped onion","2g of garlic","35g of cassava flour","5g of parsley","3g of salt","Oil for frying"],"preparation":["1 - Mash the mandioquinha until it forms a puree and set aside;","2 - Sauté the eggplant with the onion, garlic and tomato and add the parsley;","3 - mix the sautéed mixture with the mandioquinha puree and add the cassava flour to give it consistency;","4 - Fry in hot oil and place on absorbent paper."],"servings":"10 units"}}'::jsonb
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
  translations = EXCLUDED.translations,
  updated_at = NOW();

INSERT INTO recipes (id, name, category, image, ingredients, preparation, servings, nutritional_information, graph_information, translations)
VALUES (
  76,
  'Bolinho de batata doce',
  'Prato principal e vegetais',
  'https://images.unsplash.com/photo-1580324613870-e860033906eb?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["300g de batata doce (massa)","60g de polvilho doce (massa)","20g de tomate picado (massa)","20g de pimentão picado (massa)","20g de cebola picada (massa)","10g de óleo vegetal (massa)","90g de cebola (recheio)","80g de tomate (recheio)","20g de creme de leite (recheio)","0,5g de orégano (recheio)","40g de milho (recheio)","10g de azeite de oliva (recheio)"]'::jsonb,
  '["1 - Cozinhe a batata doce e separe 300g (massa);","2 - Em um recipiente, amasse a batata doce até que vire um purê (massa);","3 - Em uma frigideira, refogue com óleo a cebola, pimentão e o tomate (massa);","4 - Espere esfriar um pouco e misture na batata doce (massa);","5 - Acrescente o polvilho aos poucos, mexendo com uma colher e depois com as mãos até que fique uma massa homogênea que possa ser modelada (massa);","6 - Divida a massa em 13 porções iguais de aproximadamente 30g (massa);","7 - Faça bolinhas e reserve (massa);","8 - Em uma frigideira, refogue com óleo a cebola, tomate e milho (recheio);","9 - Acrescente o orégano e o creme de leite, deixe ferver um pouco (recheio);","10 - Retire do fogo e divida o recheio em 13 porções iguais (recheio);","11 - Em cada bolinha de massa, abra um buraco no centro para colocar o recheio e feche novamente (recheio);","12 - Coloque na fritadeira elétrica sem óleo, até que fiquem dourados (recheio)."]'::jsonb,
  '13 unidades',
  '[{"totalEnergy":857,"servingEnergy":66},{"totalCarbs":149,"servingCarbs":11},{"totalProteins":9,"servingProteins":0.7},{"totalLipids":27,"servingLipids":2},{"totalSodium":2084,"servingSodium":160},{"totalPotassium":1090,"servingPotassium":84}]'::jsonb,
  '[{"leucine":39,"totalLeucine":610,"servingLeucine":47},{"tirosine":21,"totalTirosine":320,"servingTirosine":25},{"fenil":28,"totalFenil":430,"servingFenil":33},{"metiotine":12,"totalMetiotine":180,"servingMetiotine":14}]'::jsonb,
  '{"en-US":{"name":"Sweet potato fritters","ingredients":["300g of sweet potato (dough)","60g of sweet cassava flour (dough)","20g of chopped tomato (dough)","20g of chopped bell pepper (dough)","20g of chopped onion (dough)","10g of vegetable oil (dough)","90g of onion (filling)","80g of tomato (filling)","20g of cream (filling)","0,5g of oregano (filling)","40g of corn (filling)","10g of olive oil (filling)"],"preparation":["1 - Cook the sweet potato and set aside 300g (dough);","2 - In a container, mash the sweet potato until it forms a puree (dough);","3 - In a frying pan, sauté the onion, bell pepper and tomato with oil (dough);","4 - Let it cool a bit and mix with the sweet potato (dough);","5 - Add the cassava flour little by little, stirring with a spoon and then with your hands until it forms a homogeneous dough that can be shaped (dough);","6 - Divide the dough into 13 equal portions of approximately 30g (dough);","7 - Make balls and set aside (dough);","8 - In a frying pan, sauté the onion, tomato and corn with oil (filling);","9 - Add the oregano and cream, let it boil a bit (filling);","10 - Remove from heat and divide the filling into 13 equal portions (filling);","11 - In each ball of dough, make a hole in the center to place the filling and close again (filling);","12 - Place in the air fryer without oil, until they are golden (filling)."],"servings":"13 units"}}'::jsonb
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
  translations = EXCLUDED.translations,
  updated_at = NOW();

INSERT INTO recipes (id, name, category, image, ingredients, preparation, servings, nutritional_information, graph_information, translations)
VALUES (
  77,
  'Ceviche de banana da terra',
  'Prato principal e vegetais',
  'https://images.unsplash.com/photo-1543218024-57a70143c369?q=80&w=2535&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["150g de banana da terra","80g de tomate","40g de cebola","5g de salsinha","20g de suco de limão","10g de azeite de oliva","1g de sal","0,1g de pimenta do reino (opcional)"]'::jsonb,
  '["1 - Pique as bananas em rodelas finas e espalhe em um prato;","2 - Adicione os demais ingredientes picados por cima;","3 - Tempere com o azeite, o sal, o suco de limão e a pimenta do reino, se preferir."]'::jsonb,
  '2 porções',
  '[{"totalEnergy":313,"servingEnergy":157},{"totalCarbs":57,"servingCarbs":28},{"totalProteins":3.4,"servingProteins":1.7},{"totalLipids":11,"servingLipids":6},{"totalSodium":405,"servingSodium":202},{"totalPotassium":1017,"servingPotassium":508}]'::jsonb,
  '[{"leucine":38,"totalLeucine":140,"servingLeucine":70},{"tirosine":21,"totalTirosine":80,"servingTirosine":40},{"fenil":30,"totalFenil":110,"servingFenil":55},{"metiotine":11,"totalMetiotine":40,"servingMetiotine":20}]'::jsonb,
  '{"en-US":{"name":"Plantain ceviche","ingredients":["150g of plantain","80g of tomato","40g of onion","5g of parsley","20g of lemon juice","10g of olive oil","1g of salt","0,1g of pepper (optional)"],"preparation":["1 - Chop the plantain into thin slices and spread on a plate;","2 - Add the other chopped ingredients on top;","3 - Season with olive oil, salt, lemon juice and pepper, if you prefer."],"servings":"2 servings"}}'::jsonb
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
  translations = EXCLUDED.translations,
  updated_at = NOW();

INSERT INTO recipes (id, name, category, image, ingredients, preparation, servings, nutritional_information, graph_information, translations)
VALUES (
  78,
  'Chuchu empanado',
  'Prato principal e vegetais',
  'https://images.unsplash.com/photo-1757332914630-12ea5bb701c0?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["170g de chuchu","30g de amido de milho","1g de sal","1g de orégano seco","Óleo para fritar"]'::jsonb,
  '["1 - Descasque o chuchu e corte em fatias finas no sentido do comprimento, reserve;","2 - Em um recipiente, misture o amido de milho com o sal e o orégano;","3 - Passe as fatias de chuchu na água e em seguida no amido;","4 - Frite em óleo quente e coloque em papel absorvente."]'::jsonb,
  '2 porções',
  '[{"totalEnergy":305,"servingEnergy":153},{"totalCarbs":37,"servingCarbs":18},{"totalProteins":1.6,"servingProteins":0.8},{"totalLipids":18,"servingLipids":9},{"totalSodium":397,"servingSodium":199},{"totalPotassium":256,"servingPotassium":128}]'::jsonb,
  '[{"leucine":47,"totalLeucine":150,"servingLeucine":75},{"tirosine":19,"totalTirosine":60,"servingTirosine":30},{"fenil":29,"totalFenil":90,"servingFenil":45},{"metiotine":5,"totalMetiotine":17,"servingMetiotine":9}]'::jsonb,
  '{"en-US":{"name":"Breaded chuchu","ingredients":["170g of chuchu","30g of cornstarch","1g of salt","1g of dried oregano","Oil for frying"],"preparation":["1 - Peel the chuchu and cut into thin slices lengthwise, set aside;","2 - In a container, mix the cornstarch with salt and oregano;","3 - Pass the chuchu slices through water and then through the starch;","4 - Fry in hot oil and place on absorbent paper."],"servings":"2 servings"}}'::jsonb
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
  translations = EXCLUDED.translations,
  updated_at = NOW();

INSERT INTO recipes (id, name, category, image, ingredients, preparation, servings, nutritional_information, graph_information, translations)
VALUES (
  79,
  'Estrogonofe de couve-flor',
  'Prato principal e vegetais',
  'https://images.unsplash.com/photo-1719505503702-59b61de20907?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["300g de couve-flor","45g de azeitona picada","60g de tomate picado sem semente","40g de cebola","10g de alho","0,5g de orégano seco","10g de salsinha","45g de catchup","3g de mostarda","60g de creme de leite","20g de óleo vegetal","4g de sal"]'::jsonb,
  '["1 - Lave a couve-flor, pique em pedaços menores e refogue em óleo e alho;","2 - Adicione o tomate, a azeitona, a cebola e tempere com sal;","3 - Acrescente o catchup, a mostarda, as ervas e a água;","4 - Cozinhe até que a couve-flor fique \"al dente\";","5 - Desligue o fogo, acrescente o creme de leite e o cheiro verde."]'::jsonb,
  '5 porções',
  '[{"totalEnergy":713,"servingEnergy":143},{"totalCarbs":43,"servingCarbs":9},{"totalProteins":10.6,"servingProteins":2.1},{"totalLipids":41,"servingLipids":8},{"totalSodium":2578,"servingSodium":516},{"totalPotassium":1487,"servingPotassium":297}]'::jsonb,
  '[{"leucine":44,"totalLeucine":630,"servingLeucine":126},{"tirosine":18,"totalTirosine":260,"servingTirosine":52},{"fenil":27,"totalFenil":380,"servingFenil":76},{"metiotine":11,"totalMetiotine":150,"servingMetiotine":30}]'::jsonb,
  '{"en-US":{"name":"Cauliflower Stroganoff","ingredients":["300g of cauliflower","45g of chopped olives","60g of chopped tomato without seeds","40g of onion","10g of garlic","0,5g of dried oregano","10g of parsley","45g of ketchup","3g of mustard","60g of cream","20g of vegetable oil","4g of salt"],"preparation":["1 - Wash the cauliflower, chop into smaller pieces and sauté in oil and garlic;","2 - Add the tomato, olives, onion and season with salt;","3 - Add the ketchup, mustard, herbs and water;","4 - Cook until the cauliflower is \"al dente\";","5 - Turn off the heat, add the cream and fresh herbs."],"servings":"5 servings"}}'::jsonb
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
  translations = EXCLUDED.translations,
  updated_at = NOW();

INSERT INTO recipes (id, name, category, image, ingredients, preparation, servings, nutritional_information, graph_information, translations)
VALUES (
  80,
  'Estrogonofe de legumes',
  'Prato principal e vegetais',
  'https://plus.unsplash.com/premium_photo-1726805103493-58d7eaafbf3e?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["40g de cebola","2g de alho","30g de batata inglesa","30g de batata doce","40g de abobrinha","40g de cenoura","40g de chuchu","50g de tomate sem semente","0,2g de orégano seco","2g de mostarda","20g de catchup","60g de creme de leite","4g de sal","15g de azeite de oliva","250ml de água"]'::jsonb,
  '["1 - Refogue a cebola e alho no azeite, coloque os legumes picados e o orégano;","2 - Mexa bem e acrescente o sal;","3 - Adicione a água, tampe a panela e abaixe o fogo;","4 - Cozinhe os legumes até ficarem macios;","5 - Acrescente a mostarda e catchup;","6 - Desligue o fogo, adicione o creme de leite e mexa delicadamente."]'::jsonb,
  '4 porções',
  '[{"totalEnergy":423,"servingEnergy":106},{"totalCarbs":35,"servingCarbs":9},{"totalProteins":5.5,"servingProteins":1.4},{"totalLipids":31,"servingLipids":8},{"totalSodium":1901,"servingSodium":475},{"totalPotassium":868,"servingPotassium":217}]'::jsonb,
  '[{"leucine":43,"totalLeucine":370,"servingLeucine":93},{"tirosine":22,"totalTirosine":190,"servingTirosine":48},{"fenil":26,"totalFenil":230,"servingFenil":58},{"metiotine":9,"totalMetiotine":80,"servingMetiotine":20}]'::jsonb,
  '{"en-US":{"name":"Vegetable Stroganoff","ingredients":["40g of onion","2g of garlic","30g of potato","30g of sweet potato","40g of zucchini","40g of carrot","40g of chuchu","50g of tomato without seeds","0,2g of dried oregano","2g of mustard","20g of ketchup","60g of cream","4g of salt","15g of olive oil","250ml of water"],"preparation":["1 - Sauté the onion and garlic in olive oil, add the chopped vegetables and oregano;","2 - Stir well and add the salt;","3 - Add the water, cover the pan and lower the heat;","4 - Cook the vegetables until they are tender;","5 - Add the mustard and ketchup;","6 - Turn off the heat, add the cream and stir gently."],"servings":"4 servings"}}'::jsonb
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
  translations = EXCLUDED.translations,
  updated_at = NOW();