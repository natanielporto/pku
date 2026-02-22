-- INSERT statements for recipes table
-- Generated from recipes.json
-- Total recipes: 97
-- Generated at: 2026-02-22T13:59:41.601Z

INSERT INTO recipes (id, name, category, image, ingredients, preparation, servings, nutritional_information, graph_information, translations)
VALUES (
  1,
  'Bebida de morango tipo iogurte',
  'Bebidas e Cremes',
  'https://images.unsplash.com/photo-1488477181946-6428a0291777?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["480g de bebida vegetal a base de arroz","60g de açúcar demerara","50g de morango congelado","15g de suco de limão","5g de ágar-ágar"]'::jsonb,
  '["1 - Em uma panela, misture 380g da bebida vegetal junto com o açúcar e o ágar-ágar, deixe ferver por uns 2 minutos mexendo sempre;","2 - Leve à geladeira por aproximadamente uma hora para gelatinizar;","3 - Corte os morangos em pedaços e bata junto com creme gelado, o suco de limão e o restante da bebida vegetal com o auxílio de um mixer ou liquidificador;","4 - Coloque em tacinhas para servir."]'::jsonb,
  '2 taças',
  '[{"totalEnergy":614,"servingEnergy":307},{"totalCarbs":137,"servingCarbs":69},{"totalProteins":2.2,"servingProteins":1.1},{"totalLipids":8,"servingLipids":6},{"totalSodium":153,"servingSodium":77},{"totalPotassium":75,"servingPotassium":38}]'::jsonb,
  '[{"leucine":44,"totalLeucine":200,"servingLeucine":100},{"tirosine":18,"totalTirosine":80,"servingTirosine":40},{"fenil":27,"totalFenil":120,"servingFenil":60},{"metiotine":11,"totalMetiotine":50,"servingMetiotine":25}]'::jsonb,
  '{"en-US":{"name":"Yogurt type strawberry drink","ingredients":["480g of vegetable drink base of rice","60g of demerara sugar","50g of frozen strawberries","15g of lemon juice","5g of agar-agar"],"preparation":["1 - In a pan, mix 380g of vegetable drink base of rice with the sugar and agar-agar, let it boil for about 2 minutes stirring always;","2 - Let it cool in the refrigerator for about an hour;","3 - cut the strawberries into pieces and beat together with frozen strawberries, the lemon juice and the rest of the vegetable drink with the help of a mixer or blender;","4 - Place in cups to serve."],"servings":"2 cups"}}'::jsonb
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
  2,
  'Flan de baunilha',
  'Bebidas e Cremes',
  'https://images.unsplash.com/photo-1586601399668-cd0c1484cd44?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["250ml de água","50g de açúcar","40g de creme de leite","30g de flan de baunilha em pó"]'::jsonb,
  '["1 - Coloque todos os ingredientes em uma panela pequena e leve ao fogo baixo, mexa até engrossar;","2 - Distribua a mistura em tacinhas e leve para gelar;","3 - Faça uma calda de caramelo à parte, se desejar."]'::jsonb,
  '3 taças',
  '[{"totalEnergy":406,"servingEnergy":135},{"totalCarbs":80,"servingCarbs":27},{"totalProteins":1,"servingProteins":0.3},{"totalLipids":10,"servingLipids":3},{"totalSodium":56,"servingSodium":19},{"totalPotassium":47,"servingPotassium":16}]'::jsonb,
  '[{"leucine":45,"totalLeucine":100,"servingLeucine":33},{"tirosine":23,"totalTirosine":50,"servingTirosine":17},{"fenil":23,"totalFenil":50,"servingFenil":17},{"metiotine":9,"totalMetiotine":20,"servingMetiotine":7}]'::jsonb,
  '{"en-US":{"name":"Vanilla flan","ingredients":["250ml of water","50g of sugar","40g of milk cream","30g of vanilla powder"],"preparation":["1 - In a pan, mix all the ingredients and heat on low heat, stir until thicken;","2 - Distribute the mixture in cups and let it chill;","3 - Make a caramel syrup, if desired."],"servings":"3 cups"}}'::jsonb
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
  3,
  'Flan de morango',
  'Bebidas e Cremes',
  'https://images.unsplash.com/photo-1543264228-460e284028a7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["15g de creme de leite","50ml de água","20g de açúcar","75g de morango","4g de ágar-ágar"]'::jsonb,
  '["1 - Em uma panela pequena, coloque a água e o ágar-ágar para ferver mexendo sempre;","2 - Bata os morangos picados, o creme de leite, o açúcar e a água gelatinizada em um copo com o auxílio de um mixer;","3 - Disponha em potinhos individuais para servir"]'::jsonb,
  '2 potinhos',
  '[{"totalEnergy":176,"servingEnergy":88},{"totalCarbs":36,"servingCarbs":18},{"totalProteins":0.8,"servingProteins":0.4},{"totalLipids":4,"servingLipids":2},{"totalSodium":7,"servingSodium":3},{"totalPotassium":142,"servingPotassium":71}]'::jsonb,
  '[{"leucine":46,"totalLeucine":60,"servingLeucine":30},{"tirosine":23,"totalTirosine":30,"servingTirosine":15},{"fenil":23,"totalFenil":30,"servingFenil":15},{"metiotine":8,"totalMetiotine":10,"servingMetiotine":5}]'::jsonb,
  '{"en-US":{"name":"Strawberry flan","ingredients":["15g of milk cream","50ml of water","20g of sugar","75g of frozen strawberries","4g of agar-agar"],"preparation":["1 - In a pan, mix the water and agar-agar and heat on low heat, stir until thicken;","2 - beat the frozen strawberries, the milk cream, the sugar and the gelatinized water in a cup with the help of a mixer;","3 - Distribute in cups and let it chill"],"servings":"2 potinhos"}}'::jsonb
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
  4,
  'Chandele fake',
  'Bebidas e Cremes',
  'https://images.unsplash.com/photo-1589617492681-91b73d2e358c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["400ml de água","40g de açúcar demerara","30g de achocolatado em pó","15g de amido de milho","3g de ágar-ágar"]'::jsonb,
  '["1 - Em uma panela, misture todos os ingredientes e cozinhe até levantar fervura. Deixe esfriar;","2 - Bata a mistura no liquidificador até obter um creme homogêneo;","3 - Disponha em taças individuais e leve à geladeira."]'::jsonb,
  '4 taças',
  '[{"totalEnergy":324,"servingEnergy":81},{"totalCarbs":79,"servingCarbs":20},{"totalProteins":1.1,"servingProteins":0.3},{"totalLipids":0,"servingLipids":0},{"totalSodium":45,"servingSodium":11},{"totalPotassium":1,"servingPotassium":0}]'::jsonb,
  '[{"leucine":45,"totalLeucine":90,"servingLeucine":23},{"tirosine":20,"totalTirosine":40,"servingTirosine":10},{"fenil":30,"totalFenil":60,"servingFenil":15},{"metiotine":5,"totalMetiotine":10,"servingMetiotine":3}]'::jsonb,
  '{"en-US":{"name":"Fake chocolate pudding","ingredients":["400ml of water","40g of demerara sugar","30g of cocoa powder","15g of cornstarch","3g of agar-agar"],"preparation":["1 - In a pan, mix all the ingredients and heat on low heat untill boiling temperature, stir until thicken;","2 - beat the mixture in a blender until homogenous;","3 - Distribute in cups and let it chill in the refrigerator."],"servings":"4 cups"}}'::jsonb
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
  5,
  'Inhaminho com geléia',
  'Bebidas e Cremes',
  'https://images.unsplash.com/photo-1586727579295-62136fbb6082?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["100g de inhame descascado e cozido","50g de morango congelado","45g de geleia de morango","30g de açúcar refinado"]'::jsonb,
  '["1 - Cozinhe o inhame e bata no liquidificador com os morangos e o açúcar;","2 - Em potinhos faça uma camada com o creme e coloque a geleia por cima;","3 - Leve para gelar e sirva."]'::jsonb,
  '3 taças',
  '[{"totalEnergy":357,"servingEnergy":119},{"totalCarbs":90,"servingCarbs":30},{"totalProteins":2.11,"servingProteins":0.7},{"totalLipids":0,"servingLipids":0},{"totalSodium":27,"servingSodium":9},{"totalPotassium":788,"servingPotassium":263}]'::jsonb,
  '[{"leucine":43,"totalLeucine":130,"servingLeucine":43},{"tirosine":20,"totalTirosine":60,"servingTirosine":20},{"fenil":30,"totalFenil":90,"servingFenil":30},{"metiotine":7,"totalMetiotine":20,"servingMetiotine":7}]'::jsonb,
  '{"en-US":{"name":"Yam jam","ingredients":["100g of yam without peeling and cooked","50g of frozen strawberries","45g of strawberry jam","30g of refined sugar"],"preparation":["1 - Cook the yam and beat in a blender with the strawberries and the sugar;","2 - In cups make a layer with the yam and put the jam on top;","3 - Chill and serve."],"servings":"3 cups"}}'::jsonb
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
  6,
  'Iogurte fake',
  'Bebidas e Cremes',
  'https://images.unsplash.com/photo-1597249511949-67fd2ca3d3da?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["200g de leite de coco","50ml de água","40g de açúcar","20g de pó para preparo de bebida sabor morango","10g de amido de milho","2g de essência de baunilha","0,5g de ágar-ágar"]'::jsonb,
  '["Modo de preparo do creme","1 - Em uma panela, misture todos os ingredientes. Leve ao fogo e cozinhe até engrossar;","2 - Leve à geladeira até gelar.","Modo de preparo da calda","3 - Em uma panela, coloque os morangos picados, o açúcar, a água e o ágar-ágar;","4 - Leve ao fogo até adquirir consistência;","5 - Leve à geladeira até gelar.","Montagem","Após gelados, distribua o creme e calda em 5 taças individuais. A calda pode ficar por cima do creme ou por baixo do creme."]'::jsonb,
  '5 taças',
  '[{"totalEnergy":925,"servingEnergy":185},{"totalCarbs":139,"servingCarbs":28},{"totalProteins":5.3,"servingProteins":1.1},{"totalLipids":43,"servingLipids":9},{"totalSodium":30,"servingSodium":6},{"totalPotassium":777,"servingPotassium":155}]'::jsonb,
  '[{"leucine":43,"totalLeucine":370,"servingLeucine":74},{"tirosine":20,"totalTirosine":170,"servingTirosine":34},{"fenil":28,"totalFenil":240,"servingFenil":48},{"metiotine":9,"totalMetiotine":80,"servingMetiotine":16}]'::jsonb,
  '{"en-US":{"name":"Fake Yogurt","ingredients":["200g of coconut milk","50ml of water","40g of sugar","20g of strawberry drink powder","10g of cornstarch","2g of vanilla essence","0,5g of agar-agar"],"preparation":["Preparation of the cream","1 - In a pan, mix all the ingredients. Heat on low heat until thicken;","2 - Let it cool in the refrigerator for about an hour;","Preparation of the syrup","3 - In a pan, place the strawberries, the sugar, the water and the agar-agar;","4 - Heat until consistency;","5 - Let it cool in the refrigerator for about an hour;","Assembly","After everything is chilled, distribute the cream and syrup in 5 cups individually. The syrup can be on top of the cream or below the cream."],"servings":"5 cups"}}'::jsonb
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
  7,
  'Vitamina de morango e banana',
  'Bebidas e Cremes',
  'https://images.unsplash.com/photo-1685967836529-b0e8d6938227?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["250g de bebida vegetal a base de arroz","70g de morango","60g de banana prata"]'::jsonb,
  '["1 - No liquidificador, coloque a bebida de arroz, os morangos e banana picados;","2 - Bata até obter uma mistura homogênea","3 - Sirva gelado, se preferir"]'::jsonb,
  '2 copos',
  '[{"totalEnergy":262,"servingEnergy":131},{"totalCarbs":56,"servingCarbs":28},{"totalProteins":2,"servingProteins":1},{"totalLipids":5,"servingLipids":2},{"totalSodium":81,"servingSodium":41},{"totalPotassium":354,"servingPotassium":177}]'::jsonb,
  '[{"leucine":46,"totalLeucine":160,"servingLeucine":80},{"tirosine":20,"totalTirosine":70,"servingTirosine":35},{"fenil":26,"totalFenil":90,"servingFenil":45},{"metiotine":8,"totalMetiotine":30,"servingMetiotine":15}]'::jsonb,
  '{"en-US":{"name":"Strawberry and banana smoothie","ingredients":["250g of rice based vegetable drink","70g of strawberry","60g of banana prata"],"preparation":["1 - In a blender, place the rice drink, the strawberries and the banana;","2 - beat until homogenous","3 - Serve chilled, if you prefer"],"servings":"2 cups"}}'::jsonb
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
  8,
  'Biscoitinho crocante de tapioca',
  'Biscoitos e bolachas',
  'https://images.unsplash.com/photo-1608070735103-35aa01048704?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["80g de tapioca granulada","20g de açúcar","20g de achocolatado","10g de margarina sem sal","10g de creme de leite","55ml de água quente","120g de gotas de chocolate "]'::jsonb,
  '["1 - Misture todos os ingredientes, exceto as gotas de chocolate, e deixe hidratando por cerca de 10 minutos para que a tapioca fique mais macia;","2 - Abra a massa entre papel manteiga e use um copo para formatar os biscoitos;","3 - Unte uma forma com margarina e disponha os biscoitos;","4 - Leve para assar no forno a 200°C por aproximadamente 20 minutos;","5 - Derreta as gotas de chocolate em banho-maria;","6 - Mergulhe os biscoitos já frios no chocolate e coloque sobre um pedaço de papel manteiga para não grudar"]'::jsonb,
  '10 unidades',
  '[{"totalEnergy":1122,"servingEnergy":112},{"totalCarbs":191,"servingCarbs":19},{"totalProteins":1.7,"servingProteins":0.2},{"totalLipids":39,"servingLipids":4},{"totalSodium":65,"servingSodium":6},{"totalPotassium":21,"servingPotassium":2}]'::jsonb,
  '[{"leucine":45,"totalLeucine":130,"servingLeucine":13},{"tirosine":21,"totalTirosine":60,"servingTirosine":6},{"fenil":27,"totalFenil":80,"servingFenil":8},{"metiotine":7,"totalMetiotine":20,"servingMetiotine":2}]'::jsonb,
  '{"en-US":{"name":"Tapioca crunchy cookies","ingredients":["80g of granulated tapioca","20g of sugar","20g of chocolate powder","10g of unsalted margarine","10g of cream of milk","55ml of hot water","120g of chocolate chips"],"preparation":["1 - Mix all the ingredients, except the chocolate chips, and let it hydrate for about 10 minutes so that the tapioca becomes softer;","2 - Open the dough between parchment paper and use a cup to shape the cookies;","3 - Grease a baking sheet with margarine and arrange the cookies;","4 - Bake in the oven at 200°C for approximately 20 minutes;","5 - Melt the chocolate chips in a double boiler;","6 - Dip the already cooled cookies in the chocolate and place them on a piece of parchment paper to prevent sticking"],"servings":"10 units"}}'::jsonb
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
  9,
  'Sequilho de coco',
  'Biscoitos e bolachas',
  'https://images.unsplash.com/photo-1590671886400-8f8088b97cb0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["40g de açúcar refinado","180g de amido de milho","40g de farinha sem glúten","150g de margarina sem sal","12g de coco seco ralado"]'::jsonb,
  '["1 - Em um recipiente, junte todos os ingredientes e amasse com as mãos até obter uma massa homogênea;","2 - Abra a massa por cima de um plástico e com o auxílio de um rolo;","3 - Corte no formato que desejar e disponha em uma assadeira;","4 - Asse a 180°C por aproximadamente 30 minutos ou até os biscoitos ficarem dourados."]'::jsonb,
  '40 unidades',
  '[{"totalEnergy":1547,"servingEnergy":39},{"totalCarbs":242,"servingCarbs":6},{"totalProteins":2.1,"servingProteins":0.1},{"totalLipids":62,"servingLipids":2},{"totalSodium":922,"servingSodium":23},{"totalPotassium":71,"servingPotassium":2}]'::jsonb,
  '[{"leucine":46,"totalLeucine":200,"servingLeucine":5},{"tirosine":16,"totalTirosine":70,"servingTirosine":2},{"fenil":26,"totalFenil":110,"servingFenil":3},{"metiotine":12,"totalMetiotine":50,"servingMetiotine":1}]'::jsonb,
  '{"en-US":{"name":"Coconut sequilho","ingredients":["40g of refined sugar","180g of cornstarch","40g of gluten-free flour","150g of unsalted margarine","12g of dry shredded coconut"],"preparation":["1 - In a recipient, join all the ingredients and knead with your hands until obtaining a homogeneous dough;","2 - Open the dough on top of a plastic and with the help of a rolling pin;","3 - cut in the desired shape and arrange on a baking sheet;","4 - Bake at 180°C for approximately 30 minutes or until the cookies are golden."],"servings":"40 units"}}'::jsonb
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
  10,
  'Bolachas de mel',
  'Biscoitos e bolachas',
  'https://plus.unsplash.com/premium_photo-1661768562001-14933dda60d9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["60g de açúcar refinado","15g de achocolatado em pó","180g de farinha hipoproteica","80g de amido de milho","5g de canela em pó","36g de mel","60g de margarina sem sal","14g de óleo vegetal","10g de uva passa picada","5g fermento químico em pó","8g de vinagre de maçã"]'::jsonb,
  '["1 - Misture a margarina com o óleo e acrescente os ingredientes secos;","2 - Misture o vinagre com o fermento e adicione aos demais ingredientes;","3 - Sove a massa até ficar homogênea;","4 - Abra a massa entre dois plásticos com o auxílio de um rolo e corte do formato que desejar;","5 - Asse em forno pré-aquecido, não muito quente, até dourar embaixo;","6 - Deixe esfriar cerca de 15 minutos antes de servir."]'::jsonb,
  '14 unidades',
  '[{"totalEnergy":1770,"servingEnergy":126},{"totalCarbs":339,"servingCarbs":24},{"totalProteins":1.9,"servingProteins":0.1},{"totalLipids":37,"servingLipids":3},{"totalSodium":373,"servingSodium":27},{"totalPotassium":137,"servingPotassium":10}]'::jsonb,
  '[{"leucine":45,"totalLeucine":140,"servingLeucine":10},{"tirosine":19,"totalTirosine":60,"servingTirosine":4},{"fenil":26,"totalFenil":80,"servingFenil":6},{"metiotine":10,"totalMetiotine":30,"servingMetiotine":2}]'::jsonb,
  '{"en-US":{"name":"Honey cookies","ingredients":["60g of refined sugar","15g of chocolate powder","180g of low-protein flour","80g of cornstarch","5g of cinnamon powder","36g of honey","60g of unsalted margarine","14g of vegetable oil","10g of chopped raisins","5g of baking powder","8g of apple cider vinegar"],"preparation":["1 - Mix the margarine with the oil and add the dry ingredients;","2 - Mix the vinegar with the baking powder and add to the other ingredients;","3 - Knead the dough until it is homogeneous;","4 - Open the dough between two plastics with the help of a rolling pin and cut into the desired shape;","5 - Bake in a preheated oven, not too hot, until golden underneath;","6 - Let it cool for about 15 minutes before serving."],"servings":"14 units"}}'::jsonb
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
  11,
  'Bolachinhas com goiabada',
  'Biscoitos e bolachas',
  'https://images.unsplash.com/photo-1498408224175-dc9dc5771027?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["100g de farinha sem gluten","55g de açúcar demerara","50g de margarina sem sal","30g de creme de leite","5g de fermento químico em pó","40g de amido de milho","5g de emulsificante","3g de liga neutra","1g de essência de baunilha","42g de goiabada em quadradinhos"]'::jsonb,
  '["1 - Em um recipiente coloque todos os ingredientes e misture com uma espátula e depois amasse com as mãos até a massa desgrudar das mãos;","2 - Coloque a massa entre 2 plásticos e abra-a com o auxílio de um rolo;","3 - Para fazer beliscões, corte a massa com um cortador redondo, coloque um pedaço de goiabada no meio e junte as laterais;","4 - Outra opção é moldar a massa em bolinhas e achatar levemente colocando o pedaço de goiabada no centro;","5 - Disponha os biscoitos em uma assadeira e asse em forno a 180°C por aproximadamente 15 minutos."]'::jsonb,
  '21 unidades',
  '[{"totalEnergy":1113,"servingEnergy":53},{"totalCarbs":214,"servingCarbs":10},{"totalProteins":2.1,"servingProteins":0.1},{"totalLipids":27,"servingLipids":1},{"totalSodium":315,"servingSodium":15},{"totalPotassium":107,"servingPotassium":5}]'::jsonb,
  '[{"leucine":45,"totalLeucine":140,"servingLeucine":10},{"tirosine":19,"totalTirosine":60,"servingTirosine":4},{"fenil":26,"totalFenil":80,"servingFenil":6},{"metiotine":10,"totalMetiotine":30,"servingMetiotine":2}]'::jsonb,
  '{"en-US":{"name":"Cookies with guava paste","ingredients":["100g of gluten-free flour","55g of demerara sugar","50g of unsalted margarine","30g of heavy cream","5g of baking powder","40g of cornstarch","5g of emulsifier","3g of neutral binder","1g of vanilla essence","42g of guava paste cubes"],"preparation":["1 - In a recipient, place all the ingredients and mix with a spatula and then knead with your hands until the dough comes off your hands;","2 - Place the dough between 2 plastics and open it with the help of a rolling pin;","3 - To make pinch cookies, cut the dough with a round cutter, place a piece of guava paste in the middle and join the sides;","4 - Another option is to shape the dough into balls and flatten them slightly, placing the piece of guava paste in the center;","5 - Arrange the cookies on a baking sheet and bake in an oven at 180°C for approximately 15 minutes."],"servings":"21 units"}}'::jsonb
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
  12,
  'Cavaquinho sabor orégano',
  'Biscoitos e bolachas',
  'https://plus.unsplash.com/premium_photo-1668622419261-9ca0a4b25f51?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["110ml de leite de coco","50ml de água","20g de óleo vegetal","15g de açúcar","5g de sal","0,5g de orégano seco","3g de vinagre de maçã","5g de emulsificante","5g de fermento químico em pó","250g de farinha hipoproteica","Óleo para fritar os biscoitos"]'::jsonb,
  '["1 - Em um recipiente, adicione os ingredientes e coloque a farinha aos poucos até dar o ponto de sovar;","2 - Molde os biscoitos e leve para fritar em óleo bem quente, virando para dourar de ambos os lados;","3 - Retire da panela e envolva em papel absorvente para retirar o excesso de óleo;","4 - Sirva quente."]'::jsonb,
  '30 unidades',
  '[{"totalEnergy":1636,"servingEnergy":55},{"totalCarbs":230,"servingCarbs":8},{"totalProteins":3.5,"servingProteins":0.1},{"totalLipids":81,"servingLipids":3},{"totalSodium":1952,"servingSodium":65},{"totalPotassium":246,"servingPotassium":8}]'::jsonb,
  '[{"leucine":52,"totalLeucine":260,"servingLeucine":9},{"tirosine":2,"totalTirosine":11,"servingTirosine":2},{"fenil":32,"totalFenil":160,"servingFenil":5},{"metiotine":14,"totalMetiotine":70,"servingMetiotine":0}]'::jsonb,
  '{"en-US":{"name":"Oregano flavored cavaquinho","ingredients":["110ml of coconut milk","50ml of water","20g of vegetable oil","15g of sugar","5g of salt","0,5g of dried oregano","3g of apple cider vinegar","5g of emulsifier","5g of baking powder","250g of low-protein flour","Oil for frying the cookies"],"preparation":["1 - In a recipient, add the ingredients and add the flour little by little until it reaches the point of kneading;","2 - Shape the cookies and fry them in very hot oil, turning them to brown on both sides;","3 - Remove from the pan and wrap in absorbent paper to remove excess oil;","4 - Serve hot."],"servings":"30 units"}}'::jsonb
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
  13,
  'Cookie de banana',
  'Biscoitos e bolachas',
  'https://images.unsplash.com/photo-1588070141852-b6bed371e15f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["80g de banana nanica","65g de açúcar demerara","125g de amido de milho","65g de margarina sem sal","40g de farinha sem glúten","1g de essência de baunilha","10g de fermento químico em pó","0,5g de canela em pó","30g de uva passa"]'::jsonb,
  '["1 - Amasse a banana e acrescente os demais ingredientes, deixe as uvas passas por último;","2 - Misture com uma colher e depois amasse com as mãos até que a massa fique homogênea;","3 - Separe a massa em 20 bolinhas;","4 - Coloque as bolinhas em uma assadeira e achate levemente com um garfo;","5 - Asse a 200°C por aproximadamente 20 minutos ou até dourar embaixo. "]'::jsonb,
  '20 unidades',
  '[{"totalEnergy":1527,"servingEnergy":76},{"totalCarbs":256,"servingCarbs":13},{"totalProteins":2.3,"servingProteins":0.1},{"totalLipids":25,"servingLipids":1},{"totalSodium":411,"servingSodium":21},{"totalPotassium":573,"servingPotassium":29}]'::jsonb,
  '[{"leucine":50,"totalLeucine":160,"servingLeucine":8},{"tirosine":16,"totalTirosine":50,"servingTirosine":3},{"fenil":25,"totalFenil":80,"servingFenil":4},{"metiotine":9,"totalMetiotine":30,"servingMetiotine":2}]'::jsonb,
  '{"en-US":{"name":"Banana cookie","ingredients":["80g of nanica banana","65g of demerara sugar","125g of cornstarch","65g of unsalted margarine","40g of gluten-free flour","1g of vanilla essence","10g of baking powder","0,5g of cinnamon powder","30g of raisins"],"preparation":["1 - Mash the banana and add the other ingredients, leaving the raisins for last;","2 - Mix with a spoon and then knead with your hands until the dough is homogeneous;","3 - Separate the dough into 20 balls;","4 - Place the balls on a baking sheet and flatten them slightly with a fork;","5 - Bake at 200°C for approximately 20 minutes or until golden underneath. "],"servings":"20 units"}}'::jsonb
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
  14,
  'Cookie de café com gotas de chocolate',
  'Biscoitos e bolachas',
  'https://images.unsplash.com/photo-1589988802149-7f9cb13a468e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["200g de farinha sem gúten","100g de margarina sem sal","50g de açúcar mascavo","30g de açúcar refinado","5g de café solúvel em pó","1g de essência de baunilha","1g de fermento químico em pó","1g de bicarbonato de sódio","50g de gotas de chocolate"]'::jsonb,
  '["1 - Em um recipiente, coloque o açúcar mascavo peneirado, o açúcar refinado, o café solúvel peneirado, a essência de baunilha e a margarina, mexa com uma colher até ficar homogêneo. É importante peneirar os ingredientes para evitar que se formem grumos na massa;","2 - Adicione a farinha, misture com uma colher e depois amasse com as mãos;","3 - Adicione o fermento, o bicarbonato e por último as gotas de chocolate, evitando manipular demais para não derreter as gotas com o calor das mãos;","4 - Formate os cookies pegando cerca de 40 gramas da massa, fazendo bolinhas e achatando na palma da mão.","5 - Coloque em uma forma retangular (não é necessário untar);","6 - Decore com gotas de chocolate por cima;","7 - Se o dia estiver muito quente, coloque a forma dentro da geladeira por uns 15 minutos antes de assar;","8 - Leve para assar em forno pré-aquecido a 200°C, por aproximadamente 20 minutos;","9 - Retire e espere esfriar para que os cookies fiquem mais firmes."]'::jsonb,
  '10 unidades',
  '[{"totalEnergy":1623,"servingEnergy":162},{"totalCarbs":286,"servingCarbs":29},{"totalProteins":3,"servingProteins":0.3},{"totalLipids":53,"servingLipids":5},{"totalSodium":622,"servingSodium":62},{"totalPotassium":352,"servingPotassium":35}]'::jsonb,
  '[{"leucine":44,"totalLeucine":250,"servingLeucine":25},{"tirosine":18,"totalTirosine":100,"servingTirosine":10},{"fenil":27,"totalFenil":150,"servingFenil":15},{"metiotine":11,"totalMetiotine":60,"servingMetiotine":6}]'::jsonb,
  '{"en-US":{"name":"Coffee cookie with chocolate chips","ingredients":["200g of gluten-free flour","100g of unsalted margarine","50g of brown sugar","30g of refined sugar","5g of instant coffee powder","1g of vanilla essence","1g of baking powder","1g of baking soda","50g of chocolate chips"],"preparation":["1 - In a recipient, place the sifted brown sugar, the sifted refined sugar, the sifted instant coffee powder, the vanilla essence and the margarine, mix with a spoon until homogeneous. It is important to sift the ingredients to prevent lumps from forming in the dough;","2 - Add the flour, mix with a spoon and then knead with your hands;","3 - Add the baking powder, the baking soda and finally the chocolate chips, avoiding manipulating too much so as not to melt the chips with the heat of your hands;","4 - Shape the cookies by taking about 40 grams of the dough, making balls and flattening them in the palm of your hand.","5 - Place in a rectangular baking sheet (no need to grease);","6 - Decorate with chocolate chips on top;","7 - If the day is very hot, place the baking sheet in the refrigerator for about 15 minutes before baking;","8 - Bake in a preheated oven at 200°C for approximately 20 minutes;","9 - Remove and let cool so that the cookies become firmer."],"servings":"10 units"}}'::jsonb
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
  15,
  'Cookie de chocolate',
  'Biscoitos e bolachas',
  'https://images.unsplash.com/photo-1558961363-fa8fdf82db35?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["50g de chocolate em pó","60g de farinha sem glúten","180g de amido de milho","1g de café solúvel em pó","30g de açúcar refinado","30g de açúcar mascavo","3g de fermento químico em pó","150g de margarina sem sal","20g de gotas e chocolate"]'::jsonb,
  '["1 - Em um recipiente, misture todos os ingredientes secos;","2 - Acrescente a margarina, misture bem e amasse com as mãos até atingir o ponto que seja possível modelar;","3 - Faça bolinhas, achate e decore com gotas de chocolate;","4 - Disponha em uma assadeira e asse em forno pré-aquecido a 200°C por aproximadamente 15 a 20 minutos;","5 - Atenção para não assar demais e os cookies ficarem duros."]'::jsonb,
  '22 unidades',
  '[{"totalEnergy":1921,"servingEnergy":87},{"totalCarbs":331,"servingCarbs":15},{"totalProteins":7.8,"servingProteins":0.4},{"totalLipids":65,"servingLipids":3},{"totalSodium":960,"servingSodium":44},{"totalPotassium":423,"servingPotassium":19}]'::jsonb,
  '[{"leucine":42,"totalLeucine":570,"servingLeucine":26},{"tirosine":22,"totalTirosine":290,"servingTirosine":13},{"fenil":28,"totalFenil":380,"servingFenil":17},{"metiotine":8,"totalMetiotine":110,"servingMetiotine":5}]'::jsonb,
  '{"en-US":{"name":"Chocolate cookie","ingredients":["50g of chocolate powder","60g of gluten-free flour","180g of cornstarch","1g of instant coffee powder","30g of refined sugar","30g of brown sugar","3g of baking powder","150g of unsalted margarine","20g of chocolate chips"],"preparation":["1 - In a recipient, mix all the dry ingredients;","2 - Add the margarine, mix well and knead with your hands until it reaches the point where it is possible to shape;","3 - Make balls, flatten and decorate with chocolate chips;","4 - Arrange in a baking sheet and bake in a preheated oven at 200°C for approximately 15 to 20 minutes;","5 - Be careful not to overbake and make the cookies hard."],"servings":"22 units"}}'::jsonb
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
  16,
  'Sequilho de limão',
  'Biscoitos e bolachas',
  'https://images.unsplash.com/photo-1424591185129-8a73a1111adf?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["60g de açúcar","160g de amido de milho","100g de margarina sem sal","2g de essência de baunilha","8g de suco de limão","5g de raspas de limão"]'::jsonb,
  '["1 - Pré-aqueça o forno à 200°C.","2 - Misture a margarina com o açúcar até que fique homogêneo e adicione o suco de limão, as raspas de limão, a essência de baunilha e o amido de milho;","3 - Com as mãos, amasse bem até formar uma massa;","4 - Faça bolinhas e passe o garfo levemente por cima para formar um desenho;","5 - Disponha em uma forma (não é necessário untar) e leve ao freezer por 5 minutos ou até ficarem mais firmes;","6 - Asse por cerca de 20 a 25 minutos ou até dourar levemente embaixo;","7 - Retire do forno e espere esfriar."]'::jsonb,
  '5 unidades',
  '[{"totalEnergy":1172,"servingEnergy":234},{"totalCarbs":207,"servingCarbs":41},{"totalProteins":0.5,"servingProteins":0.1},{"totalLipids":36,"servingLipids":7},{"totalSodium":615,"servingSodium":123},{"totalPotassium":18,"servingPotassium":4}]'::jsonb,
  '[{"leucine":55,"totalLeucine":60,"servingLeucine":12},{"tirosine":18,"totalTirosine":20,"servingTirosine":4},{"fenil":18,"totalFenil":20,"servingFenil":4},{"metiotine":9,"totalMetiotine":10,"servingMetiotine":2}]'::jsonb,
  '{"en-US":{"name":"Lemon sequilho","ingredients":["60g of sugar","160g of cornstarch","100g of unsalted margarine","2g of vanilla essence","8g of lemon juice","5g of lemon zest"],"preparation":["1 - Preheat the oven to 200°C.","2 - Mix the margarine with the sugar until it is homogeneous and add the lemon juice, lemon zest, vanilla essence and cornstarch;","3 - With your hands, knead well until a dough is formed;","4 - Make balls and pass the fork lightly over them to form a design;","5 - Place in a baking sheet (no need to grease) and place in the freezer for 5 minutes or until they are firmer;","6 - Bake for about 20 to 25 minutes or until lightly browned underneath;","7 - Remove from the oven and let cool."],"servings":"5 units"}}'::jsonb
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
  17,
  'Sequilho de maracujá',
  'Biscoitos e bolachas',
  'https://images.unsplash.com/photo-1612388307727-afe00578ca21?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["175g de amido de milho","100g de margarina sem sal","60g de açúcar refinado","20g de suco concentrado de maracujá","1g de essência de baunilha","Corante alimentício amarelo damasco (opcional)"]'::jsonb,
  '["1 - Misture bem a margarina com o açúcar;","2 - Adicione a essência, o suco de maracujá e o corante;","3 - Adicione o amido e amasse com as mãos até que a massa fique homogênea;","4 - Faça bolinhas de 15 gramas cada e disponha em uma assadeira (não é necessário untar);","5 - Passe levemente o garfo por cima de cada uma das bolinhas, formando um desenho;","6 - Leve para assar em forno pré-aquecido a 200°C por 20 a 25 minutos até dourar levemente embaixo;","7 - Retire do forno e espere esfriar."]'::jsonb,
  '25 unidades',
  '[{"totalEnergy":1239,"servingEnergy":50},{"totalCarbs":222,"servingCarbs":9},{"totalProteins":0.9,"servingProteins":0.04},{"totalLipids":36,"servingLipids":1},{"totalSodium":617,"servingSodium":25},{"totalPotassium":9,"servingPotassium":0}]'::jsonb,
  '[{"leucine":47,"totalLeucine":80,"servingLeucine":3},{"tirosine":18,"totalTirosine":30,"servingTirosine":1},{"fenil":23,"totalFenil":40,"servingFenil":2},{"metiotine":12,"totalMetiotine":20,"servingMetiotine":1}]'::jsonb,
  '{"en-US":{"name":"Passion fruit sequilho","ingredients":["175g of cornstarch","100g of unsalted margarine","60g of refined sugar","20g of concentrated passion fruit juice","1g of vanilla essence","Apricot yellow food coloring (optional)"],"preparation":["1 - Mix the margarine with the sugar well;","2 - Add the essence, the passion fruit juice and the coloring;","3 - Add the cornstarch and knead with your hands until the dough is homogeneous;","4 - Make balls of 15 grams each and place them on a baking sheet (no need to grease);","5 - Lightly pass the fork over each of the balls, forming a design;","6 - Bake in a preheated oven at 200°C for 20 to 25 minutes until lightly browned underneath;","7 - Remove from the oven and let cool."],"servings":"25 units"}}'::jsonb
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
  18,
  'Bolinho de chuva',
  'Bolos e bolinhos',
  'https://images.unsplash.com/photo-1552417656-f5c5bbb00244?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["160g de farinha sem glúten","120g de creme de leite","50ml de água","100g de açúcar refinado","4g de liga neutra","10g de fermento químico em pó","Óleo vegetal para fritar","Canela em pó e açúcar para cobrir (opcional)"]'::jsonb,
  '["1 - Em um recipiente misture o creme de leite com a água;","2 - Acrescente os demais ingredientes até ficar homogêneo. A massa não deve ficar muito mole;","3 - Em uma panela ou frigideira, aquecer o óleo;","4 - Pegar a massa com uma colher de chá bem cheia e frite em óleo quente até dourar;","5 - Passe os bolinhos ainda quentes no açúcar e canela, se desejar."]'::jsonb,
  '20 unidades',
  '[{"totalEnergy":1289,"servingEnergy":64},{"totalCarbs":247,"servingCarbs":12},{"totalProteins":4.6,"servingProteins":0.2},{"totalLipids":33,"servingLipids":2},{"totalSodium":45,"servingSodium":2},{"totalPotassium":139,"servingPotassium":7}]'::jsonb,
  '[{"leucine":51,"totalLeucine":450,"servingLeucine":23},{"tirosine":22,"totalTirosine":200,"servingTirosine":10},{"fenil":26,"totalFenil":230,"servingFenil":12},{"metiotine":1,"totalMetiotine":12,"servingMetiotine":1}]'::jsonb,
  '{"en-US":{"name":"Raindrop cake","ingredients":["160g of gluten-free flour","120g of sour cream","50ml of water","100g of refined sugar","4g of neutral binder","10g of baking powder","Vegetable oil for frying","Powdered cinnamon and sugar to cover (optional)"],"preparation":["1 - In a recipient mix the sour cream with the water;","2 - Add the other ingredients until homogeneous. The dough should not be too soft;","3 - In a pan or frying pan, heat the oil;","4 - Take the dough with a full teaspoon and fry in hot oil until golden;","5 - Pass the still hot dumplings in sugar and cinnamon, if desired."],"servings":"20 units"}}'::jsonb
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
  19,
  'Bolo de abacaxi',
  'Bolos e bolinhos',
  'https://images.unsplash.com/photo-1504802686536-b6a2ca64d77c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["150g de farinha sem glúten","80g de açúcar refinado","120ml de suco de abacaxi","10g de emulsificante","3g de goma xantana ou liga neutra","15g de óleo vegetal","10g de fermento químico em pó"]'::jsonb,
  '["1 - Pré-aqueça o forno a 150°C","2-Noliquidificadorbata todosos ingredientes, excetoa farinha e o fermento;","3 - Em um recipiente a parte, despeje a mistura do liquidificador e adicione a farinha aos poucos com o auxílio de um fuê para não empelotar e até que fique homogêneo;","4 - Acrescente o fermento e mexa levemente;","5 - Despeje a massa em uma assadeira untada e leve ao forno ajustado a 180°C até assar por completo. "]'::jsonb,
  '10 fatias',
  '[{"totalEnergy":1060,"servingEnergy":106},{"totalCarbs":226,"servingCarbs":23},{"totalProteins":1.9,"servingProteins":0.2},{"totalLipids":18,"servingLipids":2},{"totalSodium":2,"servingSodium":0},{"totalPotassium":115,"servingPotassium":11}]'::jsonb,
  '[{"leucine":42,"totalLeucine":160,"servingLeucine":16},{"tirosine":19,"totalTirosine":70,"servingTirosine":7},{"fenil":26,"totalFenil":100,"servingFenil":10},{"metiotine":13,"totalMetiotine":50,"servingMetiotine":5}]'::jsonb,
  '{"en-US":{"name":"Pineapple cake","ingredients":["150g of gluten-free flour","80g of refined sugar","120ml of pineapple juice","10g of emulsifier","3g of xanthan gum or neutral binder","15g of vegetable oil","10g of baking powder"],"preparation":["1 - Preheat the oven to 150°C","2 - In a blender, beat all the ingredients except the flour and baking powder;","3 - In a separate container, pour the blender mixture and add the flour little by little with the help of a whisk to avoid lumps and until it is homogeneous;","4 - Add the baking powder and stir lightly;","5 - Pour the batter into a greased baking sheet and place in the oven adjusted to 180°C until fully baked. "],"servings":"10 slices"}}'::jsonb
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
  20,
  'Bolo de banana I',
  'Bolos e bolinhos',
  'https://plus.unsplash.com/premium_photo-1675171527461-b785cb1a7016?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["185g de açúcar refinado","38g de óleo vegetal","185g de farinha sem glúten","300g de banana nanica","18g de fermento químico em pó"]'::jsonb,
  '["1 - Em uma vasilha, amasse as bananas e misture aos demais ingredientes com o auxílio de um fuê deixando o fermento por último;","2 - Unte uma forma de bolo inglês com margarina e farinha hipoproteica;","3 - Despeje a massa na forma;","4 - Asse em forno pré-aquecido a 180°C até dourar e o palito sair seco ao espetar."]'::jsonb,
  '11 fatias',
  '[{"totalEnergy":2070,"servingEnergy":184},{"totalCarbs":419,"servingCarbs":38},{"totalProteins":4.9,"servingProteins":0.45},{"totalLipids":43,"servingLipids":3.9},{"totalSodium":4.9,"servingSodium":0.4},{"totalPotassium":1192,"servingPotassium":108}]'::jsonb,
  '[{"leucine":47,"totalLeucine":390,"servingLeucine":35.5},{"tirosine":17,"totalTirosine":140,"servingTirosine":12.7},{"fenil":26,"totalFenil":220,"servingFenil":20},{"metiotine":10,"totalMetiotine":80,"servingMetiotine":7.3}]'::jsonb,
  '{"en-US":{"name":"Banana cake I","ingredients":["185g of refined sugar","38g of vegetable oil","185g of gluten-free flour","300g of nanica banana","18g of baking powder"],"preparation":["1 - In a bowl, mash the bananas and mix with the other ingredients with the help of a whisk, leaving the baking powder for last;","2 - Grease a loaf pan with margarine and low-protein flour;","3 - Pour the batter into the pan;","4 - Bake in a preheated oven at 180°C until golden and the toothpick comes out clean when inserted."],"servings":"11 slices"}}'::jsonb
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
  21,
  'Bolo de banana II',
  'Bolos e bolinhos',
  'https://plus.unsplash.com/premium_photo-1675171527461-b785cb1a7016?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["Ingredientes parte 1","70g de açúcar refinado","80g de água","100g de banana em rodelas","3g de canela em pó","Ingredientes parte 2","21g de óleo vegetal","20g de margarina","24g de creme de leite","140g de água","50g de amido de milho","140g de farinha sem glúten","5g de vinagre de maçã","4g de fermento químico em pó","5g de bicarbonato de sódio"]'::jsonb,
  '["1 - Em uma panela, faça uma calda de caramelo com o açúcar, adicione a água aos poucos, a canela, mexendo até desmanchar os grumos do açúcar. Em seguida, acrescente as rodelas de banana e continue mexendo, deixe cozinhar por 5 minutos em fogo médio; ","2 - Espere a calda amornar e bata a mistura no liquidificador junto com o óleo, margarina, açúcar e creme de leite, bata até desmanchar as bananas; ","3 - Despeje a mistura em uma vasilha, adicione o amido de milho e a farinha peneirados para não formar grumos e acrescente a água (deve ser passada nos resíduos da panela que cozinhou as bananas e no liquidificador, assim pegando todo o sabor residual que ficou); ","4 - Misture bem  como auxílio de um fuê atéque amassa fiquehomogênea; ","5 - Adicione o vinagre, o bicarbonato e o fermento e misture delicadamente; ","6 - Despeje a massa em uma forma untada com margarina e farinha hipoprotéica (forma de 14,5 cm de diâmetro x 6 cm de altura ou forma de pão de forma); ","7 - Leve ao forno pré-aquecido a 200°C por cerca de 30 minutos ou até dourar;","8 - Espere esfriar para cortar e decorar a gosto."]'::jsonb,
  '9 fatias',
  '[{"totalEnergy":1605,"servingEnergy":178},{"totalCarbs":320,"servingCarbs":36},{"totalProteins":3.3,"servingProteins":0.4},{"totalLipids":37,"servingLipids":4},{"totalSodium":136,"servingSodium":15},{"totalPotassium":447,"servingPotassium":50}]'::jsonb,
  '[{"leucine":47,"totalLeucine":280,"servingLeucine":31},{"tirosine":18,"totalTirosine":110,"servingTirosine":12},{"fenil":25,"totalFenil":150,"servingFenil":17},{"metiotine":10,"totalMetiotine":60,"servingMetiotine":7}]'::jsonb,
  '{"en-US":{"name":"Banana cake II","ingredients":["Ingredients part 1","70g of refined sugar","80g of water","100g of banana slices","3g of cinnamon powder","Ingredients part 2","21g of vegetable oil","20g of margarine","24g of sour cream","140g of water","50g of cornstarch","140g of gluten-free flour","5g of apple cider vinegar","4g of baking powder","5g of baking soda"],"preparation":["1 - In a pan, make a caramel syrup with the sugar, add the water little by little, the cinnamon, stirring until the sugar lumps dissolve. Then, add the banana slices and continue stirring, let cook for 5 minutes over medium heat; ","2 - Wait for the syrup to cool slightly and beat the mixture in the blender along with the oil, margarine, sugar and sour cream, beat until the bananas are broken down; ","3 - Pour the mixture into a bowl, add the cornstarch and flour sifted to avoid lumps and add the water (it should be passed through the residues of the pan that cooked the bananas and in the blender, thus capturing all the residual flavor that remained); ","4 - Mix well with the help of a whisk until the dough is homogeneous; ","5 - Add the vinegar, baking soda and baking powder and mix gently; ","6 - Pour the batter into a pan greased with margarine and low-protein flour (pan of 14.5 cm in diameter x 6 cm in height or loaf pan); ","7 - Take it to a preheated oven at 200°C for about 30 minutes or until golden;","8 - Wait for it to cool to cut and decorate to taste."],"servings":"9 slices"}}'::jsonb
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
  22,
  'Bolo de cenoura',
  'Bolos e bolinhos',
  'https://images.unsplash.com/photo-1516054575922-f0b8eeadec1a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["60g de cenoura ralada","70g de farinha sem glúten","60g de amido de milho","70g de óleo de canola","50ml de água","5g de fermento químico em pó"]'::jsonb,
  '["1 - Bata todos os ingredientes no liquidificador, exceto o fermento;","2 - Adicione o fermento e misture delicadamente com o auxílio de uma colher;","3 - Disponha a massa em forminhas de cupcake ou em uma forma pequena de aproximadamente 20 centímetros de diâmetro untada com margarina e farinha hipoprotéica ou spray antiaderente;","4 - Asse em forno médio até o palito sair seco. "]'::jsonb,
  '8 fatias',
  '[{"totalEnergy":1134,"servingEnergy":142},{"totalCarbs":122,"servingCarbs":15},{"totalProteins":1.5,"servingProteins":0.2},{"totalLipids":71,"servingLipids":9},{"totalSodium":26,"servingSodium":3},{"totalPotassium":196,"servingPotassium":24}]'::jsonb,
  '[{"leucine":47,"totalLeucine":120,"servingLeucine":15},{"tirosine":15,"totalTirosine":40,"servingTirosine":5},{"fenil":27,"totalFenil":70,"servingFenil":9},{"metiotine":12,"totalMetiotine":30,"servingMetiotine":4}]'::jsonb,
  '{"en-US":{"name":"Carrot cake","ingredients":["60g of grated carrot","70g of gluten-free flour","60g of cornstarch","70g of canola oil","50ml of water","5g of baking powder"],"preparation":["1 - beat all the ingredients in the blender, except the baking powder;","2 - Add the baking powder and mix gently with the help of a spoon;","3 - Pour the batter into cupcake liners or a small pan of approximately 20 centimeters in diameter greased with margarine and low-protein flour or non-stick spray;","4 - Bake in a preheated oven at 200°C for about 30 minutes or until golden;"],"servings":"8 slices"}}'::jsonb
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
  23,
  'Bolo de cenoura com chocolate',
  'Bolos e bolinhos',
  'https://images.unsplash.com/photo-1583592655160-47e0406b49c6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["100ml de leite de coco","180g de açúcar refinado","100g de farinha hipoproteica","10g de fermento químico em pó","235g de cenoura crua ralada","80g de óleo vegetal","1g de sal","1g de ágar-ágar","0,5g de goma xantana ou liga neutra","15g de achocolatado em pó","15g de gotas de chocolate"]'::jsonb,
  '["1 - Bata no liquidificador todos os ingredientes, com exceção da farinha e do fermento;","2 - Em um recipiente, coloque a mistura do liquidificador e misture com a farinha, depois acrescente o fermento e mexa levemente;","3 - Separe a massa em duas porções iguais e em uma das partes adicione o achocolatado e as gotas de chocolate;","4 - Unte uma forma pequena com margarina e farinha hipoprotéica e despeje a massa branca e em seguida a massa de chocolate;","5 - Com o auxílio de um garfo misture levemente as massas, formando um desenho;","6 - Asse em forno pré-aquecido a 180- 200° por aproximadamente 45 minutos ou até dourar."]'::jsonb,
  '12 fatias',
  '[{"totalEnergy":2185,"servingEnergy":184},{"totalCarbs":314,"servingCarbs":26},{"totalProteins":5.3,"servingProteins":0.4},{"totalLipids":107,"servingLipids":9},{"totalSodium":485,"servingSodium":41},{"totalPotassium":983,"servingPotassium":83}]'::jsonb,
  '[{"leucine":43,"totalLeucine":320,"servingLeucine":27},{"tirosine":19,"totalTirosine":140,"servingTirosine":12},{"fenil":29,"totalFenil":220,"servingFenil":19},{"metiotine":9,"totalMetiotine":70,"servingMetiotine":6}]'::jsonb,
  '{"en-US":{"name":"Carrot cake with chocolate","ingredients":["100ml of coconut milk","180g of refined sugar","100g of low-protein flour","10g of baking powder","235g of grated raw carrot","80g of vegetable oil","1g of salt","1g of agar-agar","0,5g of xanthan gum or neutral binder","15g of chocolate powder","15g of chocolate chips"],"preparation":["1 - beat on the blender all the ingredients, except the flour and baking powder;","2 - In a container, place the blender mixture and mix with the flour, then add the baking powder and mix gently;","3 - Separate the batter into two equal portions and in one of the parts add the chocolate powder and chocolate chips;","4 - Grease a small pan with margarine and low-protein flour and pour the white batter and then the chocolate batter;","5 - With the help of a fork, mix the batters lightly, forming a design;","6 - Bake in a preheated oven at 180-200°C for approximately 45 minutes or until golden."],"servings":"12 slices"}}'::jsonb
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
  24,
  'Bolo de chocolate I',
  'Bolos e bolinhos',
  'https://images.unsplash.com/photo-1609105772057-3fa55ed2ceb7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["100g de farinha hipoproteica","25g de amido de milho","50g de açúcar refinado","25g de açúcar mascavo","25g de achocolatado","4g de fermento químico em pó","2g de bicarbonato de sódio","125ml de água","40g de óleo vegetal","4g de vinagre de maçã","10g de confeitos para decorar"]'::jsonb,
  '["1 - Em um recipiente, peneire os ingredientes secos exceto o fermento e o bicarbonato de sódio;","2 - Adicione a água, óleo e o vinagre;","3 - Misturar bem com um fuê até que fique homogêneo;","4 - Colocar em uma forma tipo pudim, untada com margarina e farinha hipoprotéica;","5 - Asse em forno pré-aquecido por aproximadamente 40 min ou até que o palito saia seco."]'::jsonb,
  '8 fatias',
  '[{"totalEnergy":1186,"servingEnergy":148},{"totalCarbs":206,"servingCarbs":26},{"totalProteins":1,"servingProteins":0.1},{"totalLipids":41,"servingLipids":5},{"totalSodium":13,"servingSodium":2},{"totalPotassium":92,"servingPotassium":12}]'::jsonb,
  '[{"leucine":47,"totalLeucine":80,"servingLeucine":10},{"tirosine":18,"totalTirosine":30,"servingTirosine":4},{"fenil":23,"totalFenil":40,"servingFenil":5},{"metiotine":12,"totalMetiotine":20,"servingMetiotine":3}]'::jsonb,
  '{"en-US":{"name":"Chocolate cake I","ingredients":["100g of low-protein flour","25g of cornstarch","50g of refined sugar","25g of brown sugar","25g of chocolate powder","4g of baking powder","2g of baking soda","125ml of water","40g of vegetable oil","4g of apple cider vinegar","10g of sprinkles for decorating"],"preparation":["1 - In a container, sift the dry ingredients except the baking powder and baking soda;","2 - Add the water, oil and vinegar;","3 - Mix well with a whisk until homogeneous;","4 - Place in a bundt pan, greased with margarine and low-protein flour;","5 - Bake in a preheated oven for approximately 40 min or until the toothpick comes out clean."],"servings":"8 slices"}}'::jsonb
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
  25,
  'Bolo de chocolate II',
  'Bolos e bolinhos',
  'https://images.unsplash.com/photo-1520186097747-fd67de8ef2db?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["300g de farinha sem glúten","70g de açúcar orgânico","100g de açúcar mascavo","40g de achocolatado em pó","250ml de água","80g de óleo vegetal","15g de fermento químico em pó","6g de vinagre de maçã"]'::jsonb,
  '["1 - Em um recipiente misture todos os ingredientes secos;","2 - Acrescente a água, o óleo, o vinagre e por fim o fermento;","3 - Misture bem com o auxílio de um fuê até a massa ficar homogênea;","4 - Unte uma forma de pudim com margarina e farinha hipoprotéica;","5 - Leve para assar em forno pré-aquecido a 200°C;","6 - Retire do forno quando o palito sair seco após testado na massa."]'::jsonb,
  '20 fatias',
  '[{"totalEnergy":2641,"servingEnergy":132},{"totalCarbs":474,"servingCarbs":24},{"totalProteins":7.4,"servingProteins":0.4},{"totalLipids":81,"servingLipids":4},{"totalSodium":68,"servingSodium":3},{"totalPotassium":9,"servingPotassium":0}]'::jsonb,
  '[{"leucine":45,"totalLeucine":690,"servingLeucine":35},{"tirosine":18,"totalTirosine":280,"servingTirosine":14},{"fenil":26,"totalFenil":410,"servingFenil":21},{"metiotine":11,"totalMetiotine":170,"servingMetiotine":9}]'::jsonb,
  '{"en-US":{"name":"Chocolate cake II","ingredients":["300g of gluten-free flour","70g of organic sugar","100g of brown sugar","40g of chocolate powder","250ml of water","80g of vegetable oil","15g of baking powder","6g of apple cider vinegar"],"preparation":["1 - In a container, mix all the dry ingredients;","2 - Add the water, oil, vinegar and finally the baking powder;","3 - mix well with the help of a whisk until homogeneous;","4 - Place in a bundt pan, greased with margarine and low-protein flour;","5 - Bake in a preheated oven at 200°C;","6 - Remove from the oven when the toothpick comes out clean after testing the batter."],"servings":"20 slices"}}'::jsonb
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
  26,
  'Bolo de laranja e mandioca',
  'Bolos e bolinhos',
  'https://images.unsplash.com/photo-1515754164677-ec9796621bcb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["140g de açúcar refinado","30g de amido de milho","100g de mandioca crua","5g fermento químico para bolo","5g de emulsificante","140g de gomos de laranja pêra descascada","1g de raspas de laranja"]'::jsonb,
  '["1 - Em um liquidificador, bata a laranja descascada junto com a mandioca e o açúcar;","2 - Adicione o emulsificante, o amido e por último o fermento com as raspas da laranja;","3 - Disponha a massa em uma forma untada;","4 - Asse em forno pré-aquecido a 200°C por 25 minutos;","5 - Desenforme quando estiver frio e se gostar aplique a cobertura abaixo","Cobertura de açúcar e suco de limão","1 - Misture os dois ingredientes e espalhe a cobertura por cima do bolo;","2 - Decore com raspas da casca do limão."]'::jsonb,
  '12 fatias',
  '[{"totalEnergy":853,"servingEnergy":71},{"totalCarbs":212,"servingCarbs":18},{"totalProteins":4.5,"servingProteins":0.4},{"totalLipids":1,"servingLipids":0},{"totalSodium":12,"servingSodium":1},{"totalPotassium":1021,"servingPotassium":85}]'::jsonb,
  '[{"leucine":44,"totalLeucine":150,"servingLeucine":13},{"tirosine":18,"totalTirosine":60,"servingTirosine":5},{"fenil":26,"totalFenil":90,"servingFenil":8},{"metiotine":12,"totalMetiotine":40,"servingMetiotine":3}]'::jsonb,
  '{"en-US":{"name":"Orange and cassava cake","ingredients":["140g of refined sugar","30g of cornstarch","100g of raw cassava","5g of baking powder","5g of emulsifier","140g of peeled orange segments","1g of orange zest"],"preparation":["1 - In a blender, beat the peeled orange along with the cassava and sugar;","2 - Add the emulsifier, the cornstarch and finally the baking powder with the orange zest;","3 - Place the batter in a greased pan;","4 - Bake in a preheated oven at 200°C for 25 minutes;","5 - Unmold when cool and if you like, apply the frosting below","Frosting of sugar and lemon juice","1 - mix the two ingredients and spread the frosting over the cake;","2 - Decorate with lemon zest."],"servings":"12 slices"}}'::jsonb
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
  27,
  'Bolo fofinho de laranja',
  'Bolos e bolinhos',
  'https://images.unsplash.com/photo-1475855841503-917d97ca77b4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["100g de açúcar refinado","140g de farinha sem glúten","100ml de suco de laranja","40g de creme de leite","5g de liga neutra","10g de fermento químico em pó"]'::jsonb,
  '["1 - Em um recipiente, misture o suco de laranja, o creme de leite, o óleo e liga neutra;","2 - Adicione a farinha, o açúcar e misture bem até ficar homogêneo. Adicione o fermento e misture delicadamente;","3 - Transfira a massa para forminhas de cupcake untadas;","4 - Leve ao forno a 180°C por aproximadamente 35 minutos ou até que esteja assado por completo."]'::jsonb,
  '10 unidades',
  '[{"totalEnergy":1424,"servingEnergy":142},{"totalCarbs":239,"servingCarbs":24},{"totalProteins":3.1,"servingProteins":0.3},{"totalLipids":53,"servingLipids":5},{"totalSodium":16,"servingSodium":2},{"totalPotassium":248,"servingPotassium":25}]'::jsonb,
  '[{"leucine":46,"totalLeucine":250,"servingLeucine":25},{"tirosine":18,"totalTirosine":100,"servingTirosine":10},{"fenil":25,"totalFenil":140,"servingFenil":14},{"metiotine":11,"totalMetiotine":60,"servingMetiotine":6}]'::jsonb,
  '{"en-US":{"name":"Fluffy orange cake","ingredients":["100g of refined sugar","140g of gluten-free flour","100ml of orange juice","40g of cream of milk","5g of neutral stabilizer","10g of baking powder"],"preparation":["1 - In a container, mix the orange juice, the cream of milk, the oil and the neutral stabilizer;","2 - Add the flour, the sugar and mix well until homogeneous. Add the baking powder and mix gently;","3 - Transfer the batter to greased cupcake liners;","4 - Bake in an oven at 180°C for approximately 35 minutes or until completely baked."],"servings":"10 units"}}'::jsonb
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
  28,
  'Bolo mesclado',
  'Bolos e bolinhos',
  'https://images.unsplash.com/photo-1608266400306-3e699423dc53?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["160g de açúcar cristal","170ml de água","60g de creme de leite","240g de farinha sem glúten","10g de fermento químico em pó","15g de achocolatado em pó","10g de óleo de coco"]'::jsonb,
  '["1 - Coloque todos os ingredientes na batedeira, exceto o fermento, e bata até obter uma massa homogênea;","2 - Retire da batedeira e acrescente o fermento, misturando delicadamente;","3 - Divida a massa em duas partes e em uma delas, coloque o achocolatado;","4 - Em uma assadeira untada, coloque a massa branca e por cima o restante da massa de chocolate;","5 - Leve para assar em forno pré- aquecido a 180°C por aproximadamente 40 minutos ou até que esteja assado por completo. "]'::jsonb,
  '15 fatias',
  '[{"totalEnergy":1791,"servingEnergy":119},{"totalCarbs":382,"servingCarbs":25},{"totalProteins":4.4,"servingProteins":0.3},{"totalLipids":24,"servingLipids":2},{"totalSodium":46,"servingSodium":3},{"totalPotassium":72,"servingPotassium":5}]'::jsonb,
  '[{"leucine":44,"totalLeucine":420,"servingLeucine":28},{"tirosine":19,"totalTirosine":180,"servingTirosine":12},{"fenil":25,"totalFenil":240,"servingFenil":16},{"metiotine":12,"totalMetiotine":110,"servingMetiotine":7}]'::jsonb,
  '{"en-US":{"name":"Marble cake","ingredients":["160g of crystal sugar","170ml of water","60g of cream of milk","240g of gluten-free flour","10g of baking powder","15g of chocolate powder","10g of coconut oil"],"preparation":["1 - Put all the ingredients in the mixer, except the baking powder, and beat until you get a homogeneous batter;","2 - Remove from the mixer and add the baking powder, mixing gently;","3 - Divide the batter into two parts and in one of them, add the chocolate powder;","4 - In a greased pan, place the white batter and on top the rest of the chocolate batter;","5 - Bake in a preheated oven at 180°C for approximately 40 minutes or until completely baked. "],"servings":"15 slices"}}'::jsonb
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
  29,
  'Muffin de coco com chocolate',
  'Bolos e bolinhos',
  'https://plus.unsplash.com/premium_photo-1671405925124-8a3192adec81?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["100g de farinha sem glúten","180g de bebida vegetal a base de arroz","100g de amido de milho","35g de margarina sem sal","2g de essência de baunilha","10g de fermento químico em pó","25g de gotas de chocolate","145g de açúcar demerara","45g de leite de coco","7g de emulsificante","5g de liga neutra"]'::jsonb,
  '["1 - Em um recipiente, misture todos os ingredientes secos, exceto o fermento;","2 - Acrescente os demais ingredientes, deixando o fermento e o chocolate para o final;","3 - Disponha a massa em forminhas de cupcake","4 - Asse em forno pré-aquecido a 200°C por aproximadamente 20 a 25 minutos. "]'::jsonb,
  '10 unidades',
  '[{"totalEnergy":2043,"servingEnergy":204},{"totalCarbs":415,"servingCarbs":41},{"totalProteins":4.3,"servingProteins":0.4},{"totalLipids":39,"servingLipids":4},{"totalSodium":267,"servingSodium":27},{"totalPotassium":108,"servingPotassium":11}]'::jsonb,
  '[{"leucine":45,"totalLeucine":400,"servingLeucine":40},{"tirosine":18,"totalTirosine":160,"servingTirosine":16},{"fenil":26,"totalFenil":230,"servingFenil":23},{"metiotine":11,"totalMetiotine":100,"servingMetiotine":10}]'::jsonb,
  '{"en-US":{"name":"Coconut and chocolate muffin","ingredients":["100g of gluten-free flour","180g of rice-based vegetable drink","100g of cornstarch","35g of unsalted margarine","2g of vanilla essence","10g of baking powder","25g of chocolate chips","145g of demerara sugar","45g of coconut milk","7g of emulsifier","5g of neutral stabilizer"],"preparation":["1 - In a container, mix all the dry ingredients, except the baking powder;","2 - Add the other ingredients, leaving the baking powder and chocolate for last;","3 - Place the batter in cupcake liners","4 - Bake in a preheated oven at 200°C for approximately 20 to 25 minutes. "],"servings":"10 units"}}'::jsonb
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
  30,
  'Muffin de chocolate e banana',
  'Bolos e bolinhos',
  'https://images.unsplash.com/photo-1663904458739-5e2ed09582b5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["90g de farinha sem glúten","10g de achocolatado","30g de açúcar orgânico","6g óleo vegetal","60g de creme de leite","3g de fermento químico em pó","150g de banana prata"]'::jsonb,
  '["1 - Em um recipiente, misture todos os ingredientes, exceto o achocolatado e o fermento;","2 - Adicione o fermento e mexa delicadamente;","3 - Divida a massa em duas partes iguais e em uma delas adicione o achocolatado;","4 - Disponha a massa em uma forma de pão de forma ou forminhas de cupcake, colocando a massa branca embaixo e a massa de chocolate por cima;","5 - Asse em forno pré-aquecido a 180°C por aproximadamente 40 minutos ou até o palito sair limpo. "]'::jsonb,
  '6 unidades',
  '[{"totalEnergy":825,"servingEnergy":138},{"totalCarbs":156,"servingCarbs":26},{"totalProteins":5.2,"servingProteins":0.9},{"totalLipids":22,"servingLipids":4},{"totalSodium":41,"servingSodium":7},{"totalPotassium":663,"servingPotassium":111}]'::jsonb,
  '[{"leucine":46,"totalLeucine":450,"servingLeucine":75},{"tirosine":19,"totalTirosine":190,"servingTirosine":32},{"fenil":25,"totalFenil":250,"servingFenil":42},{"metiotine":10,"totalMetiotine":100,"servingMetiotine":17}]'::jsonb,
  '{"en-US":{"name":"Chocolate and banana muffin","ingredients":["90g of gluten-free flour","10g of chocolate powder","30g of organic sugar","6g of vegetable oil","60g of cream of milk","3g of baking powder","150g of banana prata"],"preparation":["1 - In a container, mix all the ingredients, except the chocolate powder and the baking powder;","2 - Add the baking powder and mix gently;","3 - Divide the batter into two equal parts and in one of them, add the chocolate powder;","4 - Place the batter in a loaf pan or cupcake liners, placing the white batter on the bottom and the chocolate batter on top;","5 - Bake in a preheated oven at 180°C for approximately 40 minutes or until the toothpick comes out clean. "],"servings":"6 units"}}'::jsonb
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
  31,
  'Beijinho de tapioca sabor limão',
  'Doces',
  'https://images.unsplash.com/photo-1630953899439-e1b44977d777?q=80&w=400&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["60g de açúcar refinado","26g de tapioca desidratada","30g de coco seco ralado","45g de leite de coco","6g de margarina sem sal","3g de suco de limão"]'::jsonb,
  '["1 - Em uma panela, misture todos os ingredientes;","2 - Leve ao fogo, mexendo sempre, e cozinhe até desgrudar do fundo da panela;","3 - Deixe esfriar e formate os docinhos."]'::jsonb,
  '10 unidades',
  '[{"totalEnergy":633,"servingEnergy":63},{"totalCarbs":92,"servingCarbs":9},{"totalProteins":3,"servingProteins":0.3},{"totalLipids":31,"servingLipids":3},{"totalSodium":54,"servingSodium":5},{"totalPotassium":269,"servingPotassium":27}]'::jsonb,
  '[{"leucine":42,"totalLeucine":220,"servingLeucine":22},{"tirosine":17,"totalTirosine":90,"servingTirosine":9},{"fenil":29,"totalFenil":150,"servingFenil":15},{"metiotine":12,"totalMetiotine":60,"servingMetiotine":6}]'::jsonb,
  '{"en-US":{"name":"Lemon flavored tapioca kisses","ingredients":["60g of refined sugar","26g of dehydrated tapioca","30g of grated dry coconut","45g of coconut milk","6g of unsalted margarine","3g of lemon juice"],"preparation":["1 - In a pan, mix all the ingredients;","2 - Cook over heat, stirring constantly, until it comes away from the bottom of the pan;","3 - Let cool and shape the sweets."],"servings":"10 units"}}'::jsonb
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
  32,
  'Brigadeiro Catarina',
  'Doces',
  'https://images.unsplash.com/photo-1565814598158-c9e60d235405?q=80&w=400&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["10g de açúcar refinado","50g de achocolatado em pó","30g de gotas de chocolate","15g de creme de leite","5g de margarina sem sal","80g de tapioca hidratada","30g de confeito granulado"]'::jsonb,
  '["1 - Coloque todos os ingredientes em uma panela;","2 - Mexa em fogo baixo até conseguir um ponto elástico, desgrudando do fundo da panela;","3 - Deixe esfriar em geladeira por alguns minutos; 4- Enrole passando em confeitos de granulado."]'::jsonb,
  '10 fatias',
  '[{"totalEnergy":745,"servingEnergy":75},{"totalCarbs":147,"servingCarbs":15},{"totalProteins":1.7,"servingProteins":0.2},{"totalLipids":17,"servingLipids":2},{"totalSodium":7,"servingSodium":1},{"totalPotassium":27,"servingPotassium":3}]'::jsonb,
  '[{"leucine":44,"totalLeucine":70,"servingLeucine":7},{"tirosine":25,"totalTirosine":40,"servingTirosine":4},{"fenil":25,"totalFenil":40,"servingFenil":4},{"metiotine":6,"totalMetiotine":10,"servingMetiotine":1}]'::jsonb,
  '{"en-US":{"name":"Catarina Brigadeiro","ingredients":["10g of refined sugar","50g of chocolate powder","30g of chocolate chips","15g of creme of leite","5g of unsalted margarine","80g of hydrated tapioca","30g of chocolate sprinkles"],"preparation":["1 - Put all the ingredients in a pan;","2 - Stir over low heat until you get an elastic consistency, coming away from the bottom of the pan;","3 - Let cool in the refrigerator for a few minutes; 4- Roll in chocolate sprinkles."],"servings":"10 slices"}}'::jsonb
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
  33,
  'Crepioca de banana',
  'Doces',
  'https://media.istockphoto.com/id/486011238/pt/foto/casabe-de-mandioca-tapioca.jpg?s=2048x2048&w=is&k=20&c=LirYDmSn682sbu36mynQz8yGdS8blCsgFLjWVb43kLU=',
  '["80g de banana","75g de massa de tapioca hidratada"]'::jsonb,
  '["1 - Amasse a banana com o auxílio de um garfo e junte com a massa de tapioca já hidratada;","2 - Em uma frigideira antiaderente, disponha a mistura e cozinhe de ambos os lados;","3 - Sirva quente"]'::jsonb,
  '2 unidades',
  '[{"totalEnergy":341,"servingEnergy":171},{"totalCarbs":85,"servingCarbs":42},{"totalProteins":1.1,"servingProteins":0.5},{"totalLipids":0,"servingLipids":0},{"totalSodium":2,"servingSodium":1},{"totalPotassium":325,"servingPotassium":163}]'::jsonb,
  '[{"leucine":50,"totalLeucine":60,"servingLeucine":30},{"tirosine":17,"totalTirosine":20,"servingTirosine":10},{"fenil":25,"totalFenil":30,"servingFenil":15},{"metiotine":8,"totalMetiotine":10,"servingMetiotine":5}]'::jsonb,
  '{"en-US":{"name":"Banana Crepioca","ingredients":["80g of banana","75g of hydrated tapioca dough"],"preparation":["1 - Mash the banana with the help of a fork and mix with the already hydrated tapioca dough;","2 - In a non-stick skillet, place the mixture and cook on both sides;","3 - Serve hot"],"servings":"2 units"}}'::jsonb
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
  34,
  'Crumble de maçã',
  'Doces',
  'https://images.unsplash.com/photo-1589462239133-1e04f802685d?q=80&w=400&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["Ingredientes da farofa","220g de farinha sem glúten","75g de margarina sem sal","80g de açúcar refinado ou mascavo","Ingredientes do recheio","500g de maçã com casca","100g de açúcar refinado ou mascavo","120g de creme de leite","0,5g de canela em pó"]'::jsonb,
  '["Modo de preparo da farofa","1 - Misture a farinha e o açúcar;","2 - Adicione a margarina aos poucos e com as pontas dos dedos misture até formar uma farofa, reserve.","Modo de preparo do recheio","1 - Lave bem as maçãs e corte em fatias dentro de uma bacia com água e limão para não escurecer;","2 - Escorra bem as fatias e disponha num refratário baixo;","3 - Polvilhe o açúcar, espalhe o creme de leite e salpique a canela por cima das maçãs;","4 - Disponha a farofa por cima do recheio;","5 - Asse em forno pré-aquecido a 200°C por aproximadamente 40 minutos ou até dourar."]'::jsonb,
  '20 fatias',
  '[{"totalEnergy":2308,"servingEnergy":115},{"totalCarbs":445,"servingCarbs":22},{"totalProteins":6.1,"servingProteins":0.3},{"totalLipids":63,"servingLipids":3},{"totalSodium":534,"servingSodium":27},{"totalPotassium":1063,"servingPotassium":53}]'::jsonb,
  '[{"leucine":46,"totalLeucine":570,"servingLeucine":29},{"tirosine":20,"totalTirosine":250,"servingTirosine":13},{"fenil":23,"totalFenil":290,"servingFenil":15},{"metiotine":11,"totalMetiotine":140,"servingMetiotine":7}]'::jsonb,
  '{"en-US":{"name":"Apple Crumble","ingredients":["Ingredients of the crumble","220g of gluten-free flour","75g of unsalted margarine","80g of refined or brown sugar","Ingredients of the filling","500g of apple with peel","100g of refined or brown sugar","120g of cream of milk","0,5g of cinnamon powder"],"preparation":["Method of preparation of the crumble","1 - mix the flour and the sugar;","2 - Add the margarine little by little and with the tips of the fingers mix until form a crumble, reserve.","Method of preparation of the filling","1 - Wash the apples well and cut into slices inside a bowl with water and lemon to not darken;","2 - Drain the slices well and place in a low baking dish;","3 - Sprinkle the sugar, spread the cream of milk and sprinkle the cinnamon over the apples;","4 - Place the crumble over the filling;","5 - Bake in a preheated oven at 200°C for approximately 40 minutes or until golden."],"servings":"20 slices"}}'::jsonb
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
  35,
  'Doce de maçã',
  'Doces',
  'https://images.unsplash.com/photo-1603777953657-e57b62f12c77?q=80&w=400&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["300ml de água","100g de açúcar refinado","550g de maçã","60g de suco de polpa de maracujá batido e coado 2g de cravo","5g de canela em pau"]'::jsonb,
  '["1 - Higienize as maçãs, retire as semente e corte em cubos grandes com ou sem casca;","2 - Em uma panela de pressão, adicione as maçãs e os demais ingredientes;","3 - Leve ao fogo e conte 3 minutos a partir do momento que começar a chiar;","4 - Desligue e a pressão da panela;","5 - Despeje o doce em um refratário e leve para gelar."]'::jsonb,
  '10 porções',
  '[{"totalEnergy":754,"servingEnergy":75},{"totalCarbs":191,"servingCarbs":19},{"totalProteins":2.5,"servingProteins":0.2},{"totalLipids":2,"servingLipids":0},{"totalSodium":1,"servingSodium":0},{"totalPotassium":635,"servingPotassium":63}]'::jsonb,
  '[{"leucine":43,"totalLeucine":120,"servingLeucine":12},{"tirosine":21,"totalTirosine":60,"servingTirosine":6},{"fenil":25,"totalFenil":70,"servingFenil":7},{"metiotine":11,"totalMetiotine":30,"servingMetiotine":3}]'::jsonb,
  '{"en-US":{"name":"Apple Sweet","ingredients":["300ml of water","100g of refined sugar","550g of apple","60g of passion fruit pulp juice beaten and strained 2g of clove","5g of cinnamon stick"],"preparation":["1 - Wash the apples well, remove the seeds and cut into large cubes with or without peel;","2 - In a pressure cooker, add the apples and the other ingredients;","3 - Bring to a boil and count 3 minutes from the moment it starts to whistle;","4 - Turn off the pressure cooker;","5 - Pour the sweet into a baking dish and let cool."],"servings":"10 portions"}}'::jsonb
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
  36,
  'Manjar de coco',
  'Doces',
  'https://images.unsplash.com/photo-1548084769-1b94d5c3168e?q=80&w=400&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["Ingredientes da 1a parte","60g de açúcar refinado","210g de leite de coco","15g de coco seco ralado","Ingredientes da 2a parte","100g de creme de leite","100ml de água","15g de amido de milho","Ingredientes da calda","160g de geleia de frutas","3g de amido de milho","50ml de água"]'::jsonb,
  '["1 - Em uma panela, despeje o leite de coco, o açúcar e o coco ralado. Misture bem e leve ao fogo;","2 - Em um outro recipiente, misture o creme de leite com a água e o amido de milho;","3 - Assim que o leite de coco começar a ferver, abaixe o fogo e adicione a mistura de creme de leite, água e amido de milho;","4 - Mexa sem parar até engrossar, cerca de 5 minutos;","5 - Esfrie a panela com o manjar em uma bacia com água fria;","6 - Enquanto isso, faça a geleia. Em uma panela, misture a geleia, a água e o amido de milho, leve ao fogo até engrossar;","6 - Porcione o manjar em taças e despeje a calda por cima;","7 - Sirva gelado."]'::jsonb,
  '10 taças',
  '[{"totalEnergy":1446,"servingEnergy":145},{"totalCarbs":192,"servingCarbs":19},{"totalProteins":8.9,"servingProteins":0.9},{"totalLipids":80,"servingLipids":8},{"totalSodium":136,"servingSodium":14},{"totalPotassium":783,"servingPotassium":78}]'::jsonb,
  '[{"leucine":44,"totalLeucine":700,"servingLeucine":70},{"tirosine":20,"totalTirosine":320,"servingTirosine":32},{"fenil":26,"totalFenil":420,"servingFenil":42},{"metiotine":10,"totalMetiotine":160,"servingMetiotine":16}]'::jsonb,
  '{"en-US":{"name":"Coconut Pudding","ingredients":["Ingredients of the 1st part","60g of refined sugar","210g of coconut milk","15g of grated dry coconut","Ingredients of the 2nd part","100g of cream of milk","100ml of water","15g of cornstarch","Ingredients of the syrup","160g of fruit jam","3g of cornstarch","50ml of water"],"preparation":["1 - In a pan, pour the coconut milk, the sugar and the grated coconut. mix well and bring to a boil;","2 - In another container, mix the cream of milk with the water and the cornstarch;","3 - As soon as the coconut milk starts to boil, lower the heat and add the cream of milk, water and cornstarch mixture;","4 - Stir constantly until thickened, about 5 minutes;","5 - Cool the pan with the pudding in a basin with cold water;","6 - Meanwhile, make the jam. In a pan, mix the jam, water and cornstarch, bring to a boil until thickened;","6 - Portion the pudding in cups and pour the syrup over it;","7 - Serve chilled."],"servings":"10 cups"}}'::jsonb
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
  37,
  'Mousse de limão I',
  'Doces',
  'https://images.unsplash.com/photo-1582834936490-9747caf8ca4a?q=80&w=400&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["205g de chantilly vegetal","50g de creme de leite","40g de suco de limão","5g de raspas de limão","75 gotas de chocolate branco"]'::jsonb,
  '["1 - Em uma batedeira, bata o chantilly vegetal em ponto firme;","2 - Misture com o suco de limão e reserve;","3 - Derreta o chocolate e misture o creme de leite;","4 - Adicione o chocolate à mistura de chantilly com limão;","5 - Leve à geladeira para gelar e sirva com raspas de limão por cima."]'::jsonb,
  '8 fatias',
  '[{"totalEnergy":1555,"servingEnergy":156},{"totalCarbs":117,"servingCarbs":12},{"totalProteins":6.6,"servingProteins":0.7},{"totalLipids":118,"servingLipids":12},{"totalSodium":204,"servingSodium":20},{"totalPotassium":89,"servingPotassium":9}]'::jsonb,
  '[{"leucine":44,"totalLeucine":620,"servingLeucine":62},{"tirosine":23,"totalTirosine":320,"servingTirosine":32},{"fenil":23,"totalFenil":320,"servingFenil":32},{"metiotine":10,"totalMetiotine":150,"servingMetiotine":15}]'::jsonb,
  '{"en-US":{"name":"Lemon Mousse I","ingredients":["205g of vegetal chantilly","50g of cream of milk","40g of lemon juice","5g of lemon zest","75 white chocolate drops"],"preparation":["1 - In a mixer, beat the vegetal chantilly until firm;","2 - mix with the lemon juice and set aside;","3 - Melt the chocolate and mix the cream of milk;","4 - Add the chocolate to the chantilly with lemon mixture;","5 - Refrigerate to chill and serve with lemon zest on top."],"servings":"8 slices"}}'::jsonb
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
  38,
  'Mousse de limão II',
  'Doces',
  'https://plus.unsplash.com/premium_photo-1669880504277-1c79daa58c12?q=80&w=400&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["200ml de água","30g de amido de milho","100g de açúcar refinado","50g de suco de limão","65g de chantilly vegetal"]'::jsonb,
  '["1 - Em uma panela pequena, misture a água, o amido de milho e o suco de limão;","2 - Cozinhe em fogo baixo até engrossar;","3 - Retire do fogo, adicione o açúcar e reserve;","4 - Após esfriar, bata na batedeira junto com o chantilly vegetal para dar cremosidade;","5 - Distribua em tacinhas e leve à geladeira até ficar firme."]'::jsonb,
  '3 taças',
  '[{"totalEnergy":709,"servingEnergy":236},{"totalCarbs":138,"servingCarbs":46},{"totalProteins":0.5,"servingProteins":0.2},{"totalLipids":18,"servingLipids":3},{"totalSodium":43,"servingSodium":14},{"totalPotassium":57,"servingPotassium":19}]'::jsonb,
  '[{"leucine":55,"totalLeucine":30,"servingLeucine":10},{"tirosine":18,"totalTirosine":10,"servingTirosine":3},{"fenil":18,"totalFenil":10,"servingFenil":3},{"metiotine":9,"totalMetiotine":5,"servingMetiotine":2}]'::jsonb,
  '{"en-US":{"name":"Lemon Mousse II","ingredients":["200ml of water","30g of cornstarch","100g of refined sugar","50g of juice of lemon","65g of chantilly vegetal"],"preparation":["1 - In a small pan, mix the water, the cornstarch and the lemon juice;","2 - Cook over low heat until thickened;","3 - Remove from heat, add the sugar and set aside;","4 - After cooling, beat in the mixer together with the vegetal chantilly to give creaminess;","5 - Distribute in cups and refrigerate until firm."],"servings":"3 cups"}}'::jsonb
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
  39,
  'Mousse de maracujá',
  'Doces',
  'https://media.istockphoto.com/id/1495638879/pt/foto/passion-fruit-cheesecake.jpg?s=2048x2048&w=is&k=20&c=h0qp3jwMW1SxwxMmZ5m-foJvyPTcQ4jBYR558LQrL4c=',
  '["200ml de água","30g de amido de milho","100g de açúcar refinado","70g de suco de maracujá","100g de chantilly vegetal"]'::jsonb,
  '["1 - Em uma panela pequena, misture a água, o amido de milho e o suco de maracujá;","2 - Cozinhe em fogo baixo até engrossar;","3 - Retire do fogo, adicione o açúcar e reserve;","4 - Após esfriar, bata na batedeira junto com o chantilly vegetal para dar cremosidade;","5 - Distribua em tacinhas e leve à geladeira até ficar firme."]'::jsonb,
  '4 taças',
  '[{"totalEnergy":845,"servingEnergy":211},{"totalCarbs":147,"servingCarbs":37},{"totalProteins":2,"servingProteins":0.5},{"totalLipids":26,"servingLipids":7},{"totalSodium":83,"servingSodium":21},{"totalPotassium":247,"servingPotassium":62}]'::jsonb,
  '[{"leucine":44,"totalLeucine":100,"servingLeucine":25},{"tirosine":24,"totalTirosine":60,"servingTirosine":15},{"fenil":24,"totalFenil":60,"servingFenil":15},{"metiotine":12,"totalMetiotine":30,"servingMetiotine":8}]'::jsonb,
  '{"en-US":{"name":"Passion Fruit Mousse","ingredients":["200ml of water","30g of cornstarch","100g of refined sugar","70g of passion fruit juice","100g of vegetal chantilly"],"preparation":["1 - In a small pan, mix the water, the cornstarch and the passion fruit juice;","2 - Cook over low heat until thickened;","3 - Remove from heat, add the sugar and set aside;","4 - After cooling, beat in the mixer together with the vegetal chantilly to give creaminess;","5 - Distribute in cups and refrigerate until firm."],"servings":"4 cups"}}'::jsonb
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
  40,
  'Pudim de banana com tapioca',
  'Doces',
  'https://images.unsplash.com/photo-1550461716-dbf266b2a8a7?q=80&w=400&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["Ingredientes da calda","300g de açúcar refinado","180ml de água","Ingredientes do pudim","200ml de água","60g de creme de leite ou leite de coco","70g de tapioca granulada","Demais ingredientes","120g de banana nanica","60g de farinha hipoproteica","150ml de água","60g de creme de leite ou leite de coco","1g de essência de baunilha","0,5g de canela em pó"]'::jsonb,
  '["Modo de preparo da calda","1 - Em uma panela, derreta o açúcar em fogo baixo até caramelizar;","2 - Com cuidado, adicione a água aos poucos e misture até desmanchar os grumos de caramelo;","3 - É possível fazer a calda antecipadamente e deixar na geladeira para que fique mais consistente.","Modo de preparo do pudim","1 - Aqueça a água com creme de leite ou leite de coco e jogue por cima da tapioca;","2 - Misture bem e deixe hidratar em geladeira por aproximadamente 2 horas até que fique inchada e macia;","3 - No liquidificador, bata a tapioca já hidratada com o restante dos ingredientes por cerca de 2 minutos;","4 - Espalhe a calda no fundo e laterais de uma forma e despeje a massa;","5 - Asse em forno pré-aquecido a 200°C por aproximadamente 45 minutos;","6 - Retire do forno e deixe esfriar antes de desenformar;","7 - Aqueça o fundo da forma na chama do fogão e desenforme com ajuda de uma faca soltando as laterais;","8 - Espalhe a calda por cima e sirva bem gelado."]'::jsonb,
  '20 unidades',
  '[{"totalEnergy":2041,"servingEnergy":102},{"totalCarbs":444,"servingCarbs":22},{"totalProteins":5,"servingProteins":0.2},{"totalLipids":32,"servingLipids":2},{"totalSodium":50,"servingSodium":2},{"totalPotassium":630,"servingPotassium":31}]'::jsonb,
  '[{"leucine":45,"totalLeucine":440,"servingLeucine":22},{"tirosine":21,"totalTirosine":200,"servingTirosine":10},{"fenil":24,"totalFenil":230,"servingFenil":12},{"metiotine":10,"totalMetiotine":100,"servingMetiotine":5}]'::jsonb,
  '{"en-US":{"name":"Banana and Tapioca Pudding","ingredients":["Ingredients of the syrup","300g of refined sugar","180ml of water","Ingredients of the pudding","200ml of water","60g of cream of milk or coconut milk","70g of tapioca granulada","Other ingredients","120g of banana nanica","60g of low protein flour","150ml of water","60g of cream of milk or coconut milk","1g of vanilla essence","0,5g of cinnamon powder"],"preparation":["Method of preparing the syrup","1 - In a pan, melt the sugar over low heat until caramelized;","2 - Carefully add the water little by little and mix until the caramel lumps dissolve;","3 - It is possible to make the syrup in advance and leave it in the refrigerator to make it more consistent.","Method of preparing the pudding","1 - Heat the water with cream of milk or coconut milk and pour over the tapioca;","2 - mix well and let hydrate in the refrigerator for approximately 2 hours until it is swollen and soft;","3 - In a blender, beat the already hydrated tapioca with the remaining ingredients for about 2 minutes;","4 - Spread the syrup on the bottom and sides of a mold and pour the mixture;","5 - Bake in a preheated oven at 200°C for approximately 45 minutes;","6 - Remove from the oven and let cool before unmolding;","7 - Heat the bottom of the mold on the stove burner and unmold with the help of a knife, releasing the sides;","8 - Spread the syrup on top and serve well chilled."],"servings":"20 units"}}'::jsonb
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
  41,
  'Pudim de tapioca',
  'Doces',
  'https://media.istockphoto.com/id/676301900/pt/foto/brazilian-tapioca.jpg?s=2048x2048&w=is&k=20&c=gewKeeIpCeK670y7FtZBjX3FiozHdRV8RxGIKrmbri0=',
  '["100ml de água","160g de açúcar refinado","200g de leite de coco diluído em 100ml de água","100g de tapioca desidratada","25g de margarina sem sal","30g de amido de milho","125g de creme de leite","10g de coco ralado","10g de pó para preparo de flan sabor baunilha"]'::jsonb,
  '["Modo de preparo da calda","1 - Em uma panela, derreta o quanto baste de açúcar e faça um caramelo;","2 - Envolva uma forma com a calda de caramelo ainda quente e reserve.","Modo de preparo do pudim","1 - Em uma vasilha, coloque a tapioca de molho no leite de coco diluído em água por alguns minutos;","2 - Bata no liquidificador a tapioca já hidratada com os demais ingredientes, exceto o coco ralado;","3 - Adicione o coco na mistura e coloque na forma caramelizada;","4 - Asse em banho maria no forno ou panela por aproximadamente 40 minutos."]'::jsonb,
  '10 fatias',
  '[{"totalEnergy":1425,"servingEnergy":143},{"totalCarbs":181,"servingCarbs":18},{"totalProteins":7.8,"servingProteins":0.8},{"totalLipids":81,"servingLipids":8},{"totalSodium":78,"servingSodium":8},{"totalPotassium":641,"servingPotassium":64}]'::jsonb,
  '[{"leucine":43,"totalLeucine":660,"servingLeucine":66},{"tirosine":20,"totalTirosine":300,"servingTirosine":30},{"fenil":26,"totalFenil":390,"servingFenil":39},{"metiotine":11,"totalMetiotine":170,"servingMetiotine":17}]'::jsonb,
  '{"en-US":{"name":"Tapioca Pudding","ingredients":["100ml of water","160g of refined sugar","200g of coconut milk diluted in 100ml of water","100g of dehydrated tapioca","25g of unsalted margarine","30g of cornstarch","125g of cream of milk","10g of grated coconut","10g of vanilla flan mix"],"preparation":["Method of preparing the syrup","1 - In a pan, melt the sugar and make a caramel;","2 - Coat a mold with the still hot caramel syrup and set aside.","Method of preparing the pudding","1 - In a bowl, soak the tapioca in the coconut milk diluted in water for a few minutes;","2 - beat the already hydrated tapioca with the other ingredients in a blender, except the grated coconut;","3 - Add the coconut to the mixture and place it in the caramelized mold;","4 - Bake in a water bath in the oven or pan for approximately 40 minutes."],"servings":"10 slices"}}'::jsonb
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
  42,
  'Coxinha de mandioca',
  'Massas',
  'https://media.istockphoto.com/id/1358848345/pt/foto/traditional-fried-coxinha-on-a-black-plate-on-a-slate-background-brazilian-snack.jpg?s=2048x2048&w=is&k=20&c=i7PQjoXNiDKa8HNLqN3HVCWKjcyQp3ZBRvnp7XMdhsM=',
  '["500ml de água","400g de mandioca","100g de farinha hipoproteica","70g de farinha de mandioca","25g de margarina sem sal","6g de sal","1g de páprica doce","1g de orégano seco"]'::jsonb,
  '["1 - Cozinhe a mandioca, amasse até obter um purê e reserve;","2 - Em uma panela, ferva a água com a margarina, o sal, a páprica e o orégano;","3 - Acrescente o purê de mandioca e dissolva bem até ficar uma massa homogênea;","4 - Acrescente a farinha hipoproteica e cozinhe por 5 minutos, mexendo sempre;","5 - Retire a massa da panela e coloque em uma bancada, amasse com auxílio de uma colher e depois com as mãos até ficar bem lisinha e firme. Deixar esfriar para moldar;","6 - Recheie com legumes cozidos e temperados a gosto;","7 - Para empanar passe na água e em seguida na farinha de mandioca peneirada;","8 - Frite em óleo quente e coloque em papel absorvente."]'::jsonb,
  '18 unidades',
  '[{"totalEnergy":1956,"servingEnergy":109},{"totalCarbs":298,"servingCarbs":17},{"totalProteins":7.4,"servingProteins":0.4},{"totalLipids":81,"servingLipids":4},{"totalSodium":2583,"servingSodium":144},{"totalPotassium":1100,"servingPotassium":61}]'::jsonb,
  '[{"leucine":40,"totalLeucine":280,"servingLeucine":16},{"tirosine":23,"totalTirosine":160,"servingTirosine":9},{"fenil":27,"totalFenil":190,"servingFenil":11},{"metiotine":10,"totalMetiotine":70,"servingMetiotine":4}]'::jsonb,
  '{"en-US":{"name":"Cassava Coxinha","ingredients":["500ml of water","400g of cassava","100g of low protein flour","70g of cassava flour","25g of unsalted margarine","6g of salt","1g of sweet paprika","1g of dried oregano"],"preparation":["1 - Cook the cassava, mash until you get a puree and set aside;","2 - In a pan, boil the water with the margarine, salt, paprika and oregano;","3 - Add the cassava puree and dissolve well until it becomes a homogeneous mass;","4 - Add the low protein flour and cook for 5 minutes, stirring constantly;","5 - Remove the dough from the pan and place it on a counter, knead with the help of a spoon and then with your hands until it is smooth and firm. Let it cool to mold;","6 - Fill with cooked and seasoned vegetables to taste;","7 - To bread, pass in water and then in sifted cassava flour;","8 - Fry in hot oil and place on absorbent paper."],"servings":"18 units"}}'::jsonb
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
  43,
  'Massa para torta ou empada',
  'Massas',
  'https://plus.unsplash.com/premium_photo-1666174326073-327a1fcfb431?q=80&w=400&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["100g de farinha hipoproteica","70g de margarina sem sal","5g de emulsificante","3g de sal","1g de fermento químico em pó","0,5g de açafrão em pó"]'::jsonb,
  '["1 - Misture todos os ingredientes, exceto a farinha;","2 - Adicione a farinha aos poucos até dar o ponto da massa, que deve ficar parecida com massa de pastel;","3 - Coloque em forminhas e recheie com legumes a gosto;","4 - Leve ao forno pré-aquecido a 200°C até dourarem."]'::jsonb,
  '6 unidades',
  '[{"totalEnergy":569,"servingEnergy":95},{"totalCarbs":85,"servingCarbs":14},{"totalProteins":0.6,"servingProteins":0.1},{"totalLipids":26,"servingLipids":4},{"totalSodium":1583,"servingSodium":264},{"totalPotassium":9,"servingPotassium":1}]'::jsonb,
  '[{"leucine":45,"totalLeucine":40,"servingLeucine":7},{"tirosine":22,"totalTirosine":20,"servingTirosine":3},{"fenil":22,"totalFenil":20,"servingFenil":3},{"metiotine":11,"totalMetiotine":10,"servingMetiotine":2}]'::jsonb,
  '{"en-US":{"name":"Pie or Empada Dough","ingredients":["100g of low protein flour","70g of unsalted margarine","5g of emulsifier","3g of salt","1g of chemical baking powder","0,5g of turmeric powder"],"preparation":["1 - Mix all ingredients, except the flour;","2 - Add the flour little by little until the dough is ready, which should be similar to pastry dough;","3 - Place in small molds and fill with vegetables to taste;","4 - Bake in a preheated oven at 200°C until golden."],"servings":"6 units"}}'::jsonb
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
  44,
  'Massa para empadinha',
  'Massas',
  'https://plus.unsplash.com/premium_photo-1666174326073-327a1fcfb431?q=80&w=400&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["140g de farinha sem glúten","1g de goma xantana","2g de sal","2g de açúcar refinado","60g de margarina sem sal","40ml de água"]'::jsonb,
  '["1 - Em um recipiente, misture todos os ingredientes até obter uma massa lisa que não grude nas mãos;","2 - Abra a massa com o auxílio de um rolo e disponha em forminhas individuais;","3 - Recheie com o recheio de sua preferência;","4 - Leve ao forno pré-aquecido a 180°C por aproximadamente 20 minutos."]'::jsonb,
  '5 unidades',
  '[{"totalEnergy":716,"servingEnergy":236},{"totalCarbs":126,"servingCarbs":42},{"totalProteins":2.8,"servingProteins":0.9},{"totalLipids":22,"servingLipids":7},{"totalSodium":1139,"servingSodium":380},{"totalPotassium":0,"servingPotassium":0}]'::jsonb,
  '[{"leucine":44,"totalLeucine":270,"servingLeucine":90},{"tirosine":18,"totalTirosine":110,"servingTirosine":37},{"fenil":26,"totalFenil":160,"servingFenil":53},{"metiotine":12,"totalMetiotine":70,"servingMetiotine":23}]'::jsonb,
  '{"en-US":{"name":"Empadinha Dough","ingredients":["140g of gluten-free flour","1g of xanthan gum","2g of salt","2g of refined sugar","60g of unsalted margarine","40ml of water"],"preparation":["1 - In a container, mix all ingredients until you get a smooth dough that doesn''t stick to your hands;","2 - Roll out the dough with the help of a rolling pin and place it in individual molds;","3 - Fill with the filling of your choice;","4 - Bake in a preheated oven at 180°C for approximately 20 minutes."],"servings":"5 units"}}'::jsonb
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
  45,
  'Panqueca docinha',
  'Massas',
  'https://images.unsplash.com/photo-1705138591117-2aaf6a7e08ae?q=80&w=400&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["40ml de água morna","20g de creme de leite","50g de farinha sem glúten","4g de óleo vegetal","5g de fermento químico em pó","30g de açúcar refinado"]'::jsonb,
  '["1 - Em um recipiente, misture todos os ingredientes e bata com o auxílio de um fuê ou mixer até que fique uma massa homogênea;","2 - Pegue porções da massa com uma concha e coloque em uma frigideira pré-aquecida e untada com óleo;","3 - Doure a massa de ambos os lados","4 - Recheie a gosto."]'::jsonb,
  '2 unidades',
  '[{"totalEnergy":196,"servingEnergy":39},{"totalCarbs":77,"servingCarbs":38},{"totalProteins":1.5,"servingProteins":0.7},{"totalLipids":9,"servingLipids":5},{"totalSodium":9,"servingSodium":5},{"totalPotassium":24,"servingPotassium":12}]'::jsonb,
  '[{"leucine":46,"totalLeucine":150,"servingLeucine":75},{"tirosine":18,"totalTirosine":60,"servingTirosine":30},{"fenil":24,"totalFenil":80,"servingFenil":40},{"metiotine":12,"totalMetiotine":40,"servingMetiotine":20}]'::jsonb,
  '{"en-US":{"name":"Sweet Pancake","ingredients":["40ml of warm water","20g of cream of milk","50g of gluten-free flour","4g of vegetable oil","5g of chemical baking powder","30g of refined sugar"],"preparation":["1 - In a container, mix all ingredients and beat with the help of a whisk or mixer until you get a homogeneous dough;","2 - Take portions of the dough with a ladle and place them in a preheated and oiled pan;","3 - Brown the dough on both sides","4 - Fill to taste."],"servings":"2 units"}}'::jsonb
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
  46,
  'Panqueca de cenoura',
  'Massas',
  'https://images.unsplash.com/photo-1587131791788-ec0cb04e0a52?q=80&w=400&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["200ml de água","15g de creme de leite","6g de óleo vegetal","2g de sal","3g de fermento químico em pó 20g de cenoura","70g de farinha sem glúten"]'::jsonb,
  '["1 - Bata todos os ingredientes no liquidificador e reserve;","2 - Unte uma frigideira com um fio de óleo e leve ao fogo até aquecer;","3 - Divida a massa em 3 porções iguais e com auxílio de uma concha pegue uma porção de massa e coloque na frigideira, gire a frigideira para espalhar bem a massa;","4 - Abaixe o fogo e deixe dourar por baixo, em seguida vire do outro lado e deixe dourar;","5 - Repita o processo com toda massa;","6 - Recheie a gosto."]'::jsonb,
  '3 unidades',
  '[{"totalEnergy":355,"servingEnergy":118},{"totalCarbs":63,"servingCarbs":21},{"totalProteins":1.3,"servingProteins":0.4},{"totalLipids":11,"servingLipids":4},{"totalSodium":788,"servingSodium":263},{"totalPotassium":82,"servingPotassium":27}]'::jsonb,
  '[{"leucine":44,"totalLeucine":110,"servingLeucine":37},{"tirosine":20,"totalTirosine":50,"servingTirosine":17},{"fenil":24,"totalFenil":60,"servingFenil":20},{"metiotine":12,"totalMetiotine":30,"servingMetiotine":10}]'::jsonb,
  '{"en-US":{"name":"Carrot Pancake","ingredients":["200ml of water","15g of cream of milk","6g of vegetable oil","2g of salt","3g of chemical baking powder","20g of carrot","70g of gluten-free flour"],"preparation":["1 - Beat all ingredients in a blender and set aside;","2 - Grease a pan with a drizzle of oil and heat until warm;","3 - Divide the dough into 3 equal portions and with the help of a ladle take a portion of dough and place it in the pan, turn the pan to spread the dough well;","4 - Lower the heat and let it brown underneath, then turn it over and let it brown;","5 - Repeat the process with all the dough;","6 - Fill to taste."],"servings":"3 units"}}'::jsonb
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
  47,
  'Massa para pastel',
  'Massas',
  'https://plus.unsplash.com/premium_photo-1663853495255-f43171eaf9b4?q=80&w=400&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["220g de mandioca","120g de farinha sem glúten","20g de creme de leite","3g de sal"]'::jsonb,
  '["1 - Cozinhe a mandioca e passe no espremedor ou amasse bem com o garfo ainda quente;","2 - Em um recipiente, coloque o purê de mandioca, acrescente o creme de leite, o sal e os poucos a farinha até obter uma massa homogênea;","3 - Abra a massa com o auxílio de um rolo e molde os pastéis;","4 - Coloque o recheio de sua preferência;","5 - Asse em forno pré-aquecido por aproxi- madamente 20 minutos."]'::jsonb,
  '10 unidades',
  '[{"totalEnergy":833,"servingEnergy":83},{"totalCarbs":186,"servingCarbs":19},{"totalProteins":4.7,"servingProteins":0.5},{"totalLipids":8,"servingLipids":1},{"totalSodium":1201,"servingSodium":120},{"totalPotassium":619,"servingPotassium":62}]'::jsonb,
  '[{"leucine":43,"totalLeucine":250,"servingLeucine":25},{"tirosine":19,"totalTirosine":110,"servingTirosine":11},{"fenil":26,"totalFenil":150,"servingFenil":15},{"metiotine":12,"totalMetiotine":70,"servingMetiotine":7}]'::jsonb,
  '{"en-US":{"name":"Pastel Dough","ingredients":["220g of cassava","120g of gluten-free flour","20g of cream of milk","3g of salt"],"preparation":["1 - Cook the cassava and pass it through a sieve or mash it well with a fork while still hot;","2 - In a container, place the cassava puree, add the cream of milk, salt and gradually add the flour until you get a homogeneous dough;","3 - Roll out the dough with the help of a rolling pin and shape the pastels;","4 - Place the filling of your choice;","5 - Bake in a preheated oven for approximately 20 minutes."],"servings":"10 units"}}'::jsonb
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
  48,
  'Pastel Catarina',
  'Massas',
  'https://images.unsplash.com/photo-1608039783021-6116a558f0c5?q=80&w=400&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["30ml de água morna","40g de creme de leite","30g de maionese","3g de mostarda","6g de vinagre de maçã","2g de sal","150g de farinha sem glúten"]'::jsonb,
  '["1 - Em um recipiente misture todos os ingredientes, exceto a farinha;","2 - Misture bem e acrescente a farinha aos poucos até a massa desgrudar das mãos;","3 - Abra a massa com o auxílio de um rolo e corte em círculos;","4 - Recheie a gosto e dobre os meio, fechando bem as laterais;","5 - Leve para assar ou fritar até ficar mais crocante."]'::jsonb,
  '5 unidades',
  '[{"totalEnergy":856,"servingEnergy":171},{"totalCarbs":130,"servingCarbs":26},{"totalProteins":3,"servingProteins":0.6},{"totalLipids":37,"servingLipids":7},{"totalSodium":610,"servingSodium":122},{"totalPotassium":62,"servingPotassium":12}]'::jsonb,
  '[{"leucine":44,"totalLeucine":280,"servingLeucine":56},{"tirosine":19,"totalTirosine":120,"servingTirosine":24},{"fenil":25,"totalFenil":160,"servingFenil":32},{"metiotine":12,"totalMetiotine":80,"servingMetiotine":16}]'::jsonb,
  '{"en-US":{"name":"Catarina Pastel","ingredients":["30ml of warm water","40g of cream of milk","30g of mayonnaise","3g of mustard","6g of apple cider vinegar","2g of salt","150g of gluten-free flour"],"preparation":["1 - In a container, mix all ingredients, except the flour;","2 - Mix well and gradually add the flour until the dough comes off your hands;","3 - Roll out the dough with the help of a rolling pin and cut into circles;","4 - Fill to taste and fold in half, closing the sides well;","5 - Bake or fry until crispy."],"servings":"5 units"}}'::jsonb
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
  49,
  'Massa para pizza',
  'Massas',
  'https://images.unsplash.com/photo-1703317605426-815bb8b2c40a?q=80&w=400&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["90g de farinha hipoproteica","90g de amido de milho","50ml de água morna","30g de creme de leite","30g de maionese","4g de fermento químico para bolo","3g de sal"]'::jsonb,
  '["1 - Em um recipiente, coloque a farinha, o amido de milho e o fermento e reserve;","2 - Misture o creme de leite com a água e despeje na mistura seca;","3 - Misture com uma colher até dar o ponto de amassar com as mãos;","4 - Abra a massa e divida em duas porções em formato de pizza;","5 - Adicione o recheio desejado e asse em forno pré-aquecido a 200°C por aproximadamente 25 minutos."]'::jsonb,
  '2 unidades',
  '[{"totalEnergy":957,"servingEnergy":479},{"totalCarbs":163,"servingCarbs":82},{"totalProteins":1.7,"servingProteins":0.9},{"totalLipids":31,"servingLipids":16},{"totalSodium":1465,"servingSodium":733},{"totalPotassium":74,"servingPotassium":37}]'::jsonb,
  '[{"leucine":47,"totalLeucine":158,"servingLeucine":79},{"tirosine":21,"totalTirosine":70,"servingTirosine":35},{"fenil":23,"totalFenil":79,"servingFenil":40},{"metiotine":9,"totalMetiotine":31,"servingMetiotine":15}]'::jsonb,
  '{"en-US":{"name":"Pizza Dough","ingredients":["90g of low-protein flour","90g of corn starch","50ml of warm water","30g of cream of milk","30g of mayonnaise","4g of chemical baking powder","3g of salt"],"preparation":["1 - In a container, place the flour, corn starch and baking powder and set aside;","2 - Mix the cream of milk with the water and pour into the dry mixture;","3 - Mix with a spoon until it reaches the point of kneading with your hands;","4 - Roll out the dough and divide it into two portions in the shape of a pizza;","5 - Add the desired filling and bake in a preheated oven at 200°C for approximately 25 minutes."],"servings":"2 units"}}'::jsonb
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
  50,
  'Ravioli de espinafre',
  'Massas',
  'https://images.unsplash.com/photo-1616169775818-9f7115b8821e?q=80&w=400&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["Ingredientes do recheio","40g de mandioquinha","10g de margarina sem sal","2g de sal","1g de salsinha ou cebolinha","Ingredientes da massa","150g de farinha sem glúten 100ml de água","7g de banha","10g de espinafre cru","5g de CMC ou goma xantana","2g de sal"]'::jsonb,
  '["Modo de preparo do recheio","1 - Descasque e cozinhe a mandioquinha até ficarem macias;","2 - Amasse até virar um purê e adicione os demais ingredientes, reserve.","Modo de preparo da massa","1 - Lave as folhas de espinafre;","2 - Triture no liquidificador com o mínimo de água possível;","3 - Em uma tigela, coloque a farinha, o CMC ou goma xantana, o sal e a banha;","4 - Faça uma farofinha e aos poucos adicione o conteúdo do liquidificador até obter uma massa lisa e homogênea.","Montagem","1 - Abra a massa com o auxílio de rolo;","2 - Disponha o recheio, dobre a massa e corte do formato de sua preferência;","3 - Cozinhe em água fervente com um fio de óleo;","4 - Retire da água quando começarem a boiar;","5 - Sirva com o molho de sua preferência."]'::jsonb,
  '8 unidades',
  '[{"totalEnergy":694,"servingEnergy":87},{"totalCarbs":145,"servingCarbs":18},{"totalProteins":3.6,"servingProteins":0.4},{"totalLipids":11,"servingLipids":1},{"totalSodium":1623,"servingSodium":203},{"totalPotassium":85,"servingPotassium":11}]'::jsonb,
  '[{"leucine":44,"totalLeucine":330,"servingLeucine":41},{"tirosine":19,"totalTirosine":140,"servingTirosine":18},{"fenil":27,"totalFenil":200,"servingFenil":25},{"metiotine":10,"totalMetiotine":80,"servingMetiotine":10}]'::jsonb,
  '{"en-US":{"name":"Spinach Ravioli","ingredients":["Filling ingredients","40g of mandioquinha","10g of unsalted margarine","2g of salt","1g of parsley or chives","Dough ingredients","150g of gluten-free flour 100ml of water","7g of lard","10g of raw spinach","5g of CMC or xanthan gum","2g of salt"],"preparation":["Filling preparation method","1 - Peel and cook the mandioquinha until soft;","2 - Mash until it becomes a puree and add the other ingredients, set aside.","Dough preparation method","1 - Wash the spinach leaves;","2 - Blend with the minimum amount of water possible;","3 - In a bowl, place the flour, CMC or xanthan gum, salt and lard;","4 - Make a crumble and gradually add the contents of the blender until you get a smooth and homogeneous dough.","Assembly","1 - Roll out the dough with the help of a rolling pin;","2 - Place the filling, fold the dough and cut into the shape of your choice;","3 - Cook in boiling water with a drizzle of oil;","4 - Remove from water when they start to float;","5 - Serve with the sauce of your choice."],"servings":"8 units"}}'::jsonb
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
  51,
  'Risoles',
  'Massas',
  'https://media.istockphoto.com/id/471026259/pt/foto/bacalhau-portugu%C3%AAs-bolos.jpg?s=2048x2048&w=is&k=20&c=V5me6LNz0a5u85ZjqlLtBF2iV0pXApgyiUPlcgmiXxs=',
  '["Ingredientes do recheio","25g de palmito","30g de cogumelos champignon 60g de tomate","15g de cebola","10g de milho","3g de salsinha","0,5g de orégano seco","5g de azeite de oliva","Ingredientes da massa","200ml de água","7,5g de caldo de legumes em sachê 30g de margarina sem sal","2g de goma xantana ou liga neutra 100g de farinha hipoproteica","20g de farinha sem glúten","Para empanar: 20g de farinha de mandioca"]'::jsonb,
  '["Modo de preparo da massa","1 - Em uma panela, coloque a água com o sal, o orégano e a margarina para ferver;","2 - Quando levantar fervura, adicione as farinhas aos poucos, mexa e cozinhe por alguns minutos. A massa deve ficar em consistência de polenta;","3 - Retire a massa ainda quente da panela e amasse com auxílio de uma colher, depois com as mãos, até obter uma massa lisa para moldar;","4 - Abra a massa e corte em 10 círculos para fazer os risoles, reserve.","Modo de preparo do recheio","1 - Em uma panela, refogue a cebola no azeite;","2 - Adicione os demais ingredientes e cozinhe;","3 - Divida o recheio em 10 porções iguais e reserve.","Montagem","1 - Recheie a massa e feche os risoles apertando bem as bordas;","2 - Passe os risoles prontos na água e em seguida na farinha de mandioca peneirada para empanar;","3 - Frite rapidamente em óleo quente e coloque no papel absorvente."]'::jsonb,
  '10 unidades',
  '[{"totalEnergy":1036,"servingEnergy":104},{"totalCarbs":130,"servingCarbs":13},{"totalProteins":3.5,"servingProteins":0.4},{"totalLipids":57,"servingLipids":6},{"totalSodium":4571,"servingSodium":457},{"totalPotassium":276,"servingPotassium":28}]'::jsonb,
  '[{"leucine":44,"totalLeucine":240,"servingLeucine":24},{"tirosine":19,"totalTirosine":100,"servingTirosine":10},{"fenil":26,"totalFenil":140,"servingFenil":14},{"metiotine":11,"totalMetiotine":60,"servingMetiotine":6}]'::jsonb,
  '{"en-US":{"name":"Risoles","ingredients":["Filling ingredients","25g of palm hearts","30g of champignon mushrooms 60g of tomato","15g of onion","10g of corn","3g of parsley","0,5g of dried oregano","5g of olive oil","Dough ingredients","200ml of water","7,5g of vegetable broth in sachet 30g of unsalted margarine","2g of xanthan gum or neutral binder 100g of low-protein flour","20g of gluten-free flour","For breading: 20g of cassava flour"],"preparation":["Dough preparation method","1 - In a pan, place the water with salt, oregano and margarine to boil;","2 - When it boils, gradually add the flours, stir and cook for a few minutes. The dough should have the consistency of polenta;","3 - Remove the dough still hot from the pan and knead with the help of a spoon, then with your hands, until you get a smooth dough to mold;","4 - Roll out the dough and cut into 10 circles to make the risoles, set aside.","Filling preparation method","1 - In a pan, sauté the onion in olive oil;","2 - Add the other ingredients and cook;","3 - Divide the filling into 10 equal portions and set aside.","Assembly","1 - Fill the dough and close the risoles by pressing the edges well;","2 - Pass the finished risoles in water and then in sifted cassava flour to bread;","3 - Fry quickly in hot oil and place on absorbent paper."],"servings":"10 units"}}'::jsonb
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
  52,
  'Waffles',
  'Massas',
  'https://plus.unsplash.com/premium_photo-1673011775209-97272be970a2?q=80&w=400&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["180ml de água morna","50g de açúcar refinado","50g de banana amassada","100g de farinha sem glúten","5g de óleo de girassol","20g de creme de leite","5g de emulsificante","8g de vinagre de maçã","0,5g de essência de baunilha","2g de fermento químico em pó","1g de sal","1g de goma xantana","1g de ágar-ágar"]'::jsonb,
  '["1 - Misture a banana amassada com o açúcar e o emulsificante, reserve;","2 - Misture o vinagre e os demais ingredientes;","3 - Adicione a farinha e o fermento químico, bata tudo com o auxílio de um fuê;","4 - Ligue o grill para waffle na temperatura máxima e espere esquentar;","5 - Coloque uma porção de massa no centro do grill e asse por 15 minutos ou até que esteja dourado e assado. Não abra antes de 10 minutos;","6 - Sirva com margarina, mel ou geleia."]'::jsonb,
  '2 unidades',
  '[{"totalEnergy":703,"servingEnergy":351},{"totalCarbs":149,"servingCarbs":75},{"totalProteins":2,"servingProteins":1},{"totalLipids":12,"servingLipids":6},{"totalSodium":396,"servingSodium":198},{"totalPotassium":231,"servingPotassium":115}]'::jsonb,
  '[{"leucine":46,"totalLeucine":180,"servingLeucine":90},{"tirosine":18,"totalTirosine":70,"servingTirosine":35},{"fenil":26,"totalFenil":100,"servingFenil":50},{"metiotine":10,"totalMetiotine":40,"servingMetiotine":20}]'::jsonb,
  '{"en-US":{"name":"Waffles","ingredients":["180ml of warm water","50g of refined sugar","50g of mashed banana","100g of gluten-free flour","5g of sunflower oil","20g of cream of milk","5g of emulsifier","8g of apple cider vinegar","0,5g of vanilla essence","2g of chemical baking powder","1g of salt","1g of xanthan gum","1g of agar-agar"],"preparation":["1 - mix the mashed banana with the sugar and the emulsifier, reserve;","2 - mix the vinegar and the other ingredients;","3 - Add the flour and the chemical baking powder, beat everything with the help of a whisk;","4 - Turn on the waffle grill to the maximum temperature and wait for it to heat up;","5 - Place a portion of dough in the center of the grill and bake for 15 minutes or until golden and cooked. Do not open before 10 minutes;","6 - Serve with margarine, honey or jam."],"servings":"2 units"}}'::jsonb
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
  53,
  'Pãezinhos de ervas finas',
  'Pães',
  'https://images.unsplash.com/photo-1536919011766-09449b44af40?q=80&w=400&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["130g de tapioca hidratada","250g de batata cozida","5g de óleo vegetal","6g de sal","3g de fermento químico em pó","15ml de água","0,5g de ervas secas (orégano, alecrim)"]'::jsonb,
  '["1 - Amasse a batata até obter um purê;","2 - Em um recipiente, misture o purê com os demais ingredientes;","3 - Amasse até obter uma massa moldável;","4 - Enrole em bolinhas com as mãos ou no formato que desejar;","5 - Disponha em uma assadeira untada;","6 - Asse em forno pré-aquecido a 200° C por aproximadamente 40 minutos."]'::jsonb,
  '20 unidades',
  '[{"totalEnergy":733,"servingEnergy":37},{"totalCarbs":167,"servingCarbs":8},{"totalProteins":4.7,"servingProteins":0.2},{"totalLipids":5,"servingLipids":0},{"totalSodium":2341,"servingSodium":117},{"totalPotassium":843,"servingPotassium":42}]'::jsonb,
  '[{"leucine":38,"totalLeucine":260,"servingLeucine":13},{"tirosine":24,"totalTirosine":160,"servingTirosine":8},{"fenil":28,"totalFenil":190,"servingFenil":10},{"metiotine":10,"totalMetiotine":70,"servingMetiotine":4}]'::jsonb,
  '{"en-US":{"name":"Fine herbs bread rolls","ingredients":["130g of hydrated tapioca","250g of cooked potato","5g of vegetable oil","6g of salt","3g of chemical baking powder","15ml of water","0,5g of dried herbs (oregano, rosemary)"],"preparation":["1 - Mash the potato until it becomes a puree;","2 - In a bowl, mix the puree with the other ingredients;","3 - Knead until you get a moldable dough;","4 - Roll into balls with your hands or in the shape you desire;","5 - Place on a greased baking sheet;","6 - Bake in a preheated oven at 200° C for approximately 40 minutes."],"servings":"20 units"}}'::jsonb
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
  54,
  'Pão com mistura de farinhas',
  'Pães',
  'https://images.unsplash.com/photo-1534620808146-d33bb39128b2?q=80&w=400&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["200g de amido de milho","200g de polvilho doce","100g de fécula de batata","100g de farinha de arroz","50g de liga neutra","200ml de água","60g de açúcar refinado","10g de fermento biológico seco em pó 10g de sal","20g de emulsificante","90g de margarina sem sal","75g de creme de leite","15g de óleo vegetal"]'::jsonb,
  '["1 - Em um recipiente coloque 100ml de água quente, o açúcar, a margarina, o óleo e o emulsificante. Mexa bem até que a margarina derreta;","2 - Acrescente o restante da água fria e o fermento, deixe descansar por 5 minutos;","3 - Acrescente a mistura as farinhas, o sal, o creme de leite e bata na batedeira por alguns minutos;","4 - Coloque a massa em um recipiente, deixe crescer e bata novamente;","5 - Divida a massa em duas formas de pão untadas e deixe crescer novamente;","6 - Asse em forno pré-aquecido 220°C até ficar dourado."]'::jsonb,
  '21 fatias',
  '[{"totalEnergy":3218,"servingEnergy":153},{"totalCarbs":630,"servingCarbs":30},{"totalProteins":14.1,"servingProteins":0.7},{"totalLipids":69,"servingLipids":3},{"totalSodium":4466,"servingSodium":213},{"totalPotassium":230,"servingPotassium":11}]'::jsonb,
  '[{"leucine":41,"totalLeucine":1080,"servingLeucine":51},{"tirosine":23,"totalTirosine":590,"servingTirosine":28},{"fenil":25,"totalFenil":640,"servingFenil":30},{"metiotine":11,"totalMetiotine":280,"servingMetiotine":13}]'::jsonb,
  '{"en-US":{"name":" Bread with flour mix","ingredients":["200g of corn starch","200g of sweet tapioca starch","100g of potato starch","100g of rice flour","50g of neutral binder","200ml of water","60g of refined sugar","10g of dry biological yeast powder 10g of salt","20g of emulsifier","90g of unsalted margarine","75g of cream of milk","15g of vegetable oil"],"preparation":["1 - In a container, place 100ml of hot water, the sugar, the margarine, the oil and the emulsifier. Mix well until the margarine melts;","2 - Add the remaining cold water and the yeast, let it rest for 5 minutes;","3 - Add the mixture to the flours, the salt, the cream of milk and beat in the mixer for a few minutes;","4 - Place the dough in a container, let it rise and beat again;","5 - Divide the dough into two greased bread pans and let it rise again;","6 - Bake in a preheated oven at 220°C until golden."],"servings":"21 slices"}}'::jsonb
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
  55,
  'Pão de beijo gourmet',
  'Pães',
  'https://images.unsplash.com/photo-1559141680-d0bd7bc5af84?q=80&w=400&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["150g de abóbora cozida","240g de batata cozida","90g de polvilho doce","200g de polvilho azedo","10g de fermento químico em pó 70ml de água","30g de óleo vegetal 5g de sal","2g de alho amassado 5g de salsinha"]'::jsonb,
  '["1 - Misture a batata com abóbora e amasse até obter um purê;","2 - Acrescente a água e depois os demais ingredientes, deixando o fermento por último;","3 - Misture tudo até obter uma massa lisa e conseguir amassar com as mãos;","4 - Faça bolinhas e disponha em uma assadeira;","5 - Asse em forno pré-aquecido a 180°C por aproximadamente 1 hora."]'::jsonb,
  '40 unidades',
  '[{"totalEnergy":1558,"servingEnergy":39},{"totalCarbs":316,"servingCarbs":8},{"totalProteins":6.3,"servingProteins":0.2},{"totalLipids":31,"servingLipids":1},{"totalSodium":1960,"servingSodium":49},{"totalPotassium":1200,"servingPotassium":30}]'::jsonb,
  '[{"leucine":38,"totalLeucine":310,"servingLeucine":8},{"tirosine":24,"totalTirosine":200,"servingTirosine":5},{"fenil":28,"totalFenil":230,"servingFenil":6},{"metiotine":10,"totalMetiotine":80,"servingMetiotine":2}]'::jsonb,
  '{"en-US":{"name":"Gourmet kiss bread","ingredients":["150g of cooked pumpkin","240g of cooked potato","90g of sweet tapioca starch","200g of sour tapioca starch","10g of chemical baking powder 70ml of water","30g of vegetable oil 5g of salt","2g of mashed garlic 5g of parsley"],"preparation":["1 - Mix the potato with the pumpkin and mash until you get a puree;","2 - Add the water and then the other ingredients, leaving the yeast for last;","3 - Mix everything until you get a smooth dough and can knead it with your hands;","4 - Make balls and place them on a baking sheet;","5 - Bake in a preheated oven at 180°C for approximately 1 hour."],"servings":"40 units"}}'::jsonb
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
  56,
  'Pão francês',
  'Pães',
  'https://images.unsplash.com/photo-1582509385126-c9ab0cb0449f?q=80&w=400&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["320g de farinha sem glúten","50g de polvilho doce","9g de sal","30g de açúcar refinado ou mascavo 10g de fermento biológico seco","5g e liga neutra ou goma xantana 6g de azeite de oliva","6g de vinagre de maçã","240ml de água","0,1g de açafrão em pó"]'::jsonb,
  '["1 - Em um recipiente, misture o vinagre, o azeite e a água;","2 - Adicione os demais ingredientes, misture com uma colher e depois com as mãos;","3 - Sove bem, a massa fica um pouco pegajosa;","4 - Separe a massa em 8 partes iguais e modele os pães com as mãos untadas com óleo, não é necessário deixar a massa crescer;","5 - Disponha em uma assadeira untada com margarina e faça um corte de uma extremidade a outra em cima de cada um dos pães;","6 - Asse em forno pré-aquecido a 220°C por 25 a 30 minutos. Não exceder o tempo de cozimento para não ficar duro, os pães ficam brancos;","7 - É possível congelar depois de prontos e aquecer em micro-ondas por 30 segundos."]'::jsonb,
  '8 unidades',
  '[{"totalEnergy":1544,"servingEnergy":193},{"totalCarbs":351,"servingCarbs":44},{"totalProteins":8,"servingProteins":1},{"totalLipids":12,"servingLipids":2},{"totalSodium":3490,"servingSodium":436},{"totalPotassium":14,"servingPotassium":2}]'::jsonb,
  '[{"leucine":44,"totalLeucine":610,"servingLeucine":76},{"tirosine":19,"totalTirosine":260,"servingTirosine":33},{"fenil":26,"totalFenil":360,"servingFenil":45},{"metiotine":11,"totalMetiotine":150,"servingMetiotine":19}]'::jsonb,
  '{"en-US":{"name":"French bread","ingredients":["320g of gluten-free flour","50g of sweet tapioca starch","9g of salt","30g of refined or brown sugar 10g of dry biological yeast powder","5g of neutral binder or xanthan gum 6g of olive oil","6g of apple cider vinegar","240ml of water","0,1g of turmeric powder"],"preparation":["1 - In a container, mix the vinegar, the oil and the water;","2 - Add the other ingredients, mix with a spoon and then with your hands;","3 - Knead well, the dough will be a bit sticky;","4 - Divide the dough into 8 equal parts and shape the breads with your hands greased with oil, it is not necessary to let the dough rise;","5 - Place on a baking sheet greased with margarine and make a cut from one end to the other on top of each of the breads;","6 - Bake in a preheated oven at 220°C for 25 to 30 minutes. Do not exceed the cooking time so that it does not become hard, the breads will be white;","7 - It is possible to freeze after they are ready and heat them in the microwave for 30 seconds."],"servings":"8 units"}}'::jsonb
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
  57,
  'Pão sabor queijo',
  'Pães',
  'https://media.istockphoto.com/id/1249893961/pt/foto/brazilian-snack-traditional-cheese-bread.jpg?s=2048x2048&w=is&k=20&c=nobDyi5btyyO3bc3Zyb62X0_ScOncJJL2NSbbLTVq3M=',
  '["130g de polvilho azedo","60g de polvilho doce","90g de queijo vegano ralado 220g de creme de leite","5g de sal"]'::jsonb,
  '["1 - Em uma vasilha, misture todos os ingredientes exceto o polvilho doce;","2 - Acrescente o polvilho doce e misture novamente, a consistência da massa é pegajosa;","3 - É possível utilizar somente o polvilho azedo, se preferir;","4 - Modele os pães com o auxílio de duas colheres;","5 - Disponha as porções em uma assadeira untada com margarina;","6 - Leve ao forno pré-aquecido a 200°C até assar por completo."]'::jsonb,
  '16 unidades',
  '[{"totalEnergy":1481,"servingEnergy":93},{"totalCarbs":194,"servingCarbs":12},{"totalProteins":7.2,"servingProteins":0.4},{"totalLipids":76,"servingLipids":5},{"totalSodium":2260,"servingSodium":141},{"totalPotassium":273,"servingPotassium":17}]'::jsonb,
  '[{"leucine":43,"totalLeucine":610,"servingLeucine":38},{"tirosine":23,"totalTirosine":330,"servingTirosine":21},{"fenil":23,"totalFenil":320,"servingFenil":20},{"metiotine":11,"totalMetiotine":150,"servingMetiotine":9}]'::jsonb,
  '{"en-US":{"name":"Cheese flavor bread","ingredients":["130g of sour tapioca starch","60g of sweet tapioca starch","90g of grated vegan cheese 220g of cream of milk","5g of salt"],"preparation":["1 - In a bowl, mix all the ingredients except the sweet tapioca starch;","2 - Add the sweet tapioca starch and mix again, the dough consistency is sticky;","3 - It is possible to use only the sour tapioca starch, if you prefer;","4 - Shape the breads with the help of two spoons;","5 - Place the portions on a baking sheet greased with margarine;","6 - Bake in a preheated oven at 200°C until fully baked."],"servings":"16 units"}}'::jsonb
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
  58,
  'Pão de frigideira',
  'Pães',
  'https://images.unsplash.com/photo-1599232288126-7dbd2127db14?q=80&w=400&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["60g de farinha sem glúten","15g de açúcar refinado","6g de óleo vegetal","30g de banana amassada","0,5g de goma xantana ou liga neutra 35ml de água morna","25g de creme de leite","8g de vinagre de maçã","1g de fermento químico em pó 1g de sal"]'::jsonb,
  '["1 - Em um recipiente, misture todos os ingredientes exceto a água.","2 - Adicione a água aos poucos até obter uma mistura homogênea;","3 - Em uma frigideira antiaderente untada, disponha metade da massa, tampe e doure de ambos os lados;","4 - Repita o processo com a outra metade da massa."]'::jsonb,
  '2 unidades',
  '[{"totalEnergy":424,"servingEnergy":212},{"totalCarbs":77,"servingCarbs":38},{"totalProteins":2.1,"servingProteins":1.1},{"totalLipids":13,"servingLipids":6},{"totalSodium":399,"servingSodium":199},{"totalPotassium":156,"servingPotassium":78}]'::jsonb,
  '[{"leucine":46,"totalLeucine":200,"servingLeucine":100},{"tirosine":18,"totalTirosine":80,"servingTirosine":40},{"fenil":25,"totalFenil":110,"servingFenil":55},{"metiotine":11,"totalMetiotine":50,"servingMetiotine":25}]'::jsonb,
  '{"en-US":{"name":"Skillet bread","ingredients":["60g of gluten-free flour","15g of refined sugar","6g of vegetable oil","30g of mashed banana","0,5g of xanthan gum or neutral binder 35ml of warm water","25g of cream of milk","8g of apple cider vinegar","1g of chemical baking powder 1g of salt"],"preparation":["1 - In a container, mix all the ingredients except the water.","2 - Add the water little by little until you get a homogeneous mixture;","3 - In a greased non-stick skillet, place half of the dough, cover and brown on both sides;","4 - Repeat the process with the other half of the dough."],"servings":"2 units"}}'::jsonb
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
  59,
  'Pãozinho de inhame',
  'Pães',
  'https://images.unsplash.com/photo-1561043433-b0bb121aacef?q=80&w=400&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["270g de inhame cozido","100g de polvilho doce","100g de polvilho azedo","30g de óleo de girassol","7g de sal","1g de orégano seco"]'::jsonb,
  '["1 - Cozinhe o inhame e amasse até virar um purê;","2 - Em um recipiente, coloque o purê de inhame e acrescente os demais ingredientes;","3 - Misture tudo e amasse com a mão até virar uma massa lisa e homogênea;","4 - Caso a massa fique seca, adicione um pouco de água quente para dar o ponto;","5 - Faça bolinhas e disponha em uma assadeira;","6 - Asse em forno pré-aquecido a 200°C até que o fundo fique dourado."]'::jsonb,
  '30 unidades',
  '[{"totalEnergy":1327,"servingEnergy":44},{"totalCarbs":259,"servingCarbs":9},{"totalProteins":5.1,"servingProteins":0.2},{"totalLipids":31,"servingLipids":1},{"totalSodium":2741,"servingSodium":91},{"totalPotassium":2033,"servingPotassium":68}]'::jsonb,
  '[{"leucine":42,"totalLeucine":280,"servingLeucine":9},{"tirosine":18,"totalTirosine":120,"servingTirosine":4},{"fenil":31,"totalFenil":210,"servingFenil":7},{"metiotine":9,"totalMetiotine":60,"servingMetiotine":2}]'::jsonb,
  '{"en-US":{"name":"Yam bread rolls","ingredients":["270g of cooked yam","100g of sweet tapioca starch","100g of sour tapioca starch","30g of sunflower oil","7g of salt","1g of dried oregano"],"preparation":["1 - Cook the yam and mash until it becomes a puree;","2 - In a container, place the yam puree and add the other ingredients;","3 - Mix everything and knead with your hands until it becomes a smooth and homogeneous dough;","4 - If the dough becomes dry, add a little hot water to reach the right consistency;","5 - Make balls and place them on a baking sheet;","6 - Bake in a preheated oven at 200°C until the bottom is golden."],"servings":"30 units"}}'::jsonb
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
  60,
  'Pão de mandioquinha',
  'Pães',
  'https://images.unsplash.com/photo-1684893265739-a88b30c33e92?q=80&w=627&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["600g de mandioquinha cozida","300g de polvilho azedo","200g de polvilho doce","150ml de azeite ou óleo","5g de sal","175ml de água morna"]'::jsonb,
  '["1 - Em um recipiente, amasse a mandioquinha ainda quente até obter um purê;","2 - Acrescente os demais ingredientes e por último a água;","3 - Amasse bem até que fique homogêneo;","4 - Faça bolinhas e asse em forno pré-aquecido a 180°C até dourar."]'::jsonb,
  '23 unidades',
  '[{"totalEnergy":3543,"servingEnergy":154},{"totalCarbs":556,"servingCarbs":24},{"totalProteins":5.1,"servingProteins":0.2},{"totalLipids":151,"servingLipids":7},{"totalSodium":1948,"servingSodium":85},{"totalPotassium":403,"servingPotassium":18}]'::jsonb,
  '[{"leucine":35,"totalLeucine":240,"servingLeucine":10},{"tirosine":35,"totalTirosine":240,"servingTirosine":10},{"fenil":26,"totalFenil":180,"servingFenil":8},{"metiotine":4,"totalMetiotine":30,"servingMetiotine":1}]'::jsonb,
  '{"en-US":{"name":"Cassava bread","ingredients":["600g of cooked cassava","300g of sour tapioca starch","200g of sweet tapioca starch","150ml of olive oil or vegetable oil","5g of salt","175ml of warm water"],"preparation":["1 - In a container, mash the potato while still hot until it becomes a puree;","2 - Add the other ingredients and finally the water;","3 - Knead well until it becomes homogeneous;","4 - Make balls and bake in a preheated oven at 180°C until golden."],"servings":"23 units"}}'::jsonb
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
  61,
  'Pãozinho de mandioquinha',
  'Pães',
  'https://plus.unsplash.com/premium_photo-1725467480335-bae427eb198a?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["400g de mandioquinha","400g de polvilho doce","100g de polvilho azedo","250ml de água quente"]'::jsonb,
  '["1 - Cozinhe a mandioquinha e amasse até obter um purê;","2 - Adicione os polvilhos e adicione a água aos poucos;","3 - Misture bem e depois amasse com as mãos até formar uma massa firme e homogênea;","4 - Faça bolinhas e disponha em uma assadeira;","5 - Asse em forno pré-aquecido a 200°C até crescer igual pãozinho de queijo convencional e dourar levemente."]'::jsonb,
  '30 unidades',
  '[{"totalEnergy":2021,"servingEnergy":67},{"totalCarbs":561,"servingCarbs":19},{"totalProteins":4.7,"servingProteins":0.2},{"totalLipids":2,"servingLipids":0},{"totalSodium":3110,"servingSodium":104},{"totalPotassium":288,"servingPotassium":10}]'::jsonb,
  '[{"leucine":42,"totalLeucine":170,"servingLeucine":6},{"tirosine":20,"totalTirosine":80,"servingTirosine":3},{"fenil":28,"totalFenil":110,"servingFenil":4},{"metiotine":10,"totalMetiotine":40,"servingMetiotine":1}]'::jsonb,
  '{"en-US":{"name":"Cassava bread rolls","ingredients":["400g of cassava","400g of sweet tapioca starch","100g of sour tapioca starch","250ml of warm water"],"preparation":["1 - Cook the cassava and mash until it becomes a puree;","2 - Add the tapioca starches and add the water little by little;","3 - Mix well and then knead with your hands until it forms a firm and homogeneous dough;","4 - Make balls and place them on a baking sheet;","5 - Bake in a preheated oven at 200°C until it rises like conventional cheese bread and browns lightly."],"servings":"30 units"}}'::jsonb
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
  62,
  'Pãozinho de beijo',
  'Pães',
  'https://images.unsplash.com/photo-1605189361149-8db06ad7baf6?q=80&w=1467&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["200g de polvilho doce","50g de polvilho azedo","360g de mandioca cozida","100ml de água","40g de óleo vegetal","5g de fermento químico em pó","4g de sal","0,5g de orégano seco"]'::jsonb,
  '["1 - Amasse a mandioca cozida ainda quente até obter um purê e reserve;","2 - Em uma panela ferva a água, o óleo e o sal;","3 - Em outro recipiente misturar os polvilhos e adicione a água temperada;","4 - Misture bem e adicione o purê de mandioca aos poucos, até obter uma massa lisa que não grude nas mãos;","5 - Faça bolinhas e disponha em uma assadeira untada com margarina;","6 - Asse em forno pré-aquecido a 180°C até dourar."]'::jsonb,
  '20 unidades',
  '[{"totalEnergy":1832,"servingEnergy":92},{"totalCarbs":360,"servingCarbs":18},{"totalProteins":5.7,"servingProteins":0.3},{"totalLipids":41,"servingLipids":2},{"totalSodium":1606,"servingSodium":80},{"totalPotassium":1003,"servingPotassium":50}]'::jsonb,
  '[{"leucine":41,"totalLeucine":140,"servingLeucine":7},{"tirosine":18,"totalTirosine":60,"servingTirosine":3},{"fenil":29,"totalFenil":100,"servingFenil":5},{"metiotine":12,"totalMetiotine":40,"servingMetiotine":2}]'::jsonb,
  '{"en-US":{"name":"Kiss bread rolls","ingredients":["200g of sweet tapioca starch","50g of sour tapioca starch","360g of cooked cassava","100ml of water","40g of vegetable oil","5g of chemical baking powder","4g of salt","0,5g of dried oregano"],"preparation":["1 - Mash the cooked cassava while still hot until it becomes a puree and set aside;","2 - In a pan, boil the water, oil, and salt;","3 - In another container, mix the tapioca starches and add the seasoned water;","4 - Mix well and add the cassava puree little by little, until you get a smooth dough that doesn''t stick to your hands;","5 - Make balls and place them on a greased baking sheet;","6 - Bake in a preheated oven at 180°C until golden."],"servings":"20 units"}}'::jsonb
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
  63,
  'Pão sem glúten',
  'Pães',
  'https://images.unsplash.com/photo-1653550027228-e3202a24ccc1?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["300g de farinha sem glúten","65g de açúcar orgânico","7g de fermento biológico seco","5g de emulsificante","2g de liga neutra","75g de margarina sem sal","60g de creme de leite","190ml de água","3g de sal"]'::jsonb,
  '["1 - Em um recipiente, misture bem a farinha, o açúcar o emulsificante, a liga neutra e o fermento, reserve;","2 - Aqueça a margarina junto com o creme de leite no micro-ondas por 25 segundos;","3 - Adicione essa mistura à massa anterior e mexa com o auxílio de um fuê;","4 - Adicione a água morna aos poucos até a massa ficar em ponto de sovar, não muito é mole;","5 - Coloque a massa na batedeira e bata em velocidade mínima por 5 minutos;","6 - Disponha a massa em forma de bolo inglês e deixe crescer por 20 minutos;","7 - Asse em forno pré-aquecido a 230°C por aproximadamente 35 minutos ou até que fique assado por completo."]'::jsonb,
  '14 fatias',
  '[{"totalEnergy":1707,"servingEnergy":122},{"totalCarbs":309,"servingCarbs":22},{"totalProteins":13.1,"servingProteins":0.9},{"totalLipids":42,"servingLipids":3},{"totalSodium":2632,"servingSodium":188},{"totalPotassium":70,"servingPotassium":5}]'::jsonb,
  '[{"leucine":44,"totalLeucine":1170,"servingLeucine":84},{"tirosine":19,"totalTirosine":490,"servingTirosine":35},{"fenil":26,"totalFenil":680,"servingFenil":49},{"metiotine":11,"totalMetiotine":300,"servingMetiotine":21}]'::jsonb,
  '{"en-US":{"name":"Gluten-free bread","ingredients":["300g of gluten-free flour","65g of organic sugar","7g of dry biological yeast","5g of emulsifier","2g of neutral binder","75g of unsalted margarine","60g of creme of leite","190ml of water","3g of salt"],"preparation":["1 - In a container, mix well the flour, sugar, emulsifier, neutral binder and yeast, set aside;","2 - Heat the margarine together with the creme of leite in the microwave for 25 seconds;","3 - Add this mixture to the previous dough and mix with the help of a whisk;","4 - Add the warm water little by little until the dough is ready to knead, not too soft;","5 - Place the dough in the mixer and beat at minimum speed for 5 minutes;","6 - Arrange the dough in a loaf pan and let it rise for 20 minutes;","7 - Bake in a preheated oven at 230°C for approximately 35 minutes or until fully baked."],"servings":"14 slices"}}'::jsonb
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
  64,
  'Abobrinha crocante',
  'Prato principal e vegetais',
  'https://images.unsplash.com/photo-1593978756010-bbb0f3314cf6?q=80&w=400&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["200g de abobrinha","40g de amido de milho","1g de orégano seco","3g de sal","Óleo para fritar"]'::jsonb,
  '["1 - Lave e corte as abobrinhas em rodelas, reserve;","2 - Em um recipiente, misture o amido de milho com o sal e o orégano;","3 - Passe as rodelas de abobrinha nessa mistura;","4 - Frite em óleo quente e coloque em papel absorvente."]'::jsonb,
  '2 porções',
  '[{"totalEnergy":886,"servingEnergy":443},{"totalCarbs":45,"servingCarbs":22},{"totalProteins":1.5,"servingProteins":0.7},{"totalLipids":79,"servingLipids":40},{"totalSodium":1172,"servingSodium":586},{"totalPotassium":507,"servingPotassium":254}]'::jsonb,
  '[{"leucine":45,"totalLeucine":90,"servingLeucine":45},{"tirosine":20,"totalTirosine":40,"servingTirosine":20},{"fenil":25,"totalFenil":50,"servingFenil":25},{"metiotine":10,"totalMetiotine":20,"servingMetiotine":10}]'::jsonb,
  '{"en-US":{"name":"Crispy zucchini","ingredients":["200g of zucchini","40g of cornstarch","1g of dried oregano","3g of salt","Oil for frying"],"preparation":["1 - Wash and cut the zucchini into slices, set aside;","2 - In a container, mix the cornstarch with the salt and oregano;","3 - Pass the zucchini slices through this mixture;","4 - Fry in hot oil and place on absorbent paper."],"servings":"2 servings"}}'::jsonb
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
  65,
  'Almôndegas de berinjela',
  'Prato principal e vegetais',
  'https://images.unsplash.com/photo-1601477572224-cb15a76f30f4?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["200g de berinjela sem casca","30g de cebola","10g de alho","50g de farinha de mandioca","5g de salsinha","10g de azeite de oliva","4g de sal","0,5g de orégano seco"]'::jsonb,
  '["1 - Corte a berinjela em pedaços bem pequenos e deixe de molho na água;","2 - Em uma panela, refogue o alho e a cebola no azeite;","3 - Escorra a berinjela e junte à panela, acerte o sal;","4 - Tampe a panela e abaixe o fogo, a berinjela vai soltar água que será necessário para o cozimento, mexa de vez em quando até secar a água e a berinjela estiver molinha;","5 - Se necessário coloque mais um pouco de água;","6 - Adicione a salsinha e desligue o fogo;","7 - Deixe esfriar e amasse bem o garfo até ficar bem triturado;","8 - Coloque a farinha de mandioca até ficar no ponto de conseguir moldar em bolinhas;","9 - Disponha em uma assadeira e asse em forno pré-aquecido até dourar."]'::jsonb,
  '10 unidades',
  '[{"totalEnergy":309,"servingEnergy":31},{"totalCarbs":62,"servingCarbs":6},{"totalProteins":4.1,"servingProteins":0.4},{"totalLipids":5,"servingLipids":0},{"totalSodium":1562,"servingSodium":156},{"totalPotassium":549,"servingPotassium":55}]'::jsonb,
  '[{"leucine":42,"totalLeucine":240,"servingLeucine":24},{"tirosine":23,"totalTirosine":130,"servingTirosine":13},{"fenil":28,"totalFenil":160,"servingFenil":16},{"metiotine":7,"totalMetiotine":40,"servingMetiotine":4}]'::jsonb,
  '{"en-US":{"name":"Eggplant meatballs","ingredients":["200g of eggplant without skin","30g of onion","10g of garlic","50g of cassava flour","5g of parsley","10g of olive oil","4g of salt","0,5g of dried oregano"],"preparation":["1 - cut the eggplant into very small pieces and let it soak in water;","2 - In a pan, sauté the garlic and onion in olive oil;","3 - Drain the eggplant and add it to the pan, season with salt;","4 - Cover the pan and lower the heat, the eggplant will release water that will be necessary for cooking, stir occasionally until the water dries up and the eggplant is tender;","5 - If necessary, add a little more water;","6 - Add the parsley and turn off the heat;","7 - Let it cool and mash well with a fork until it is well ground;","8 - Add the cassava flour until it is in the right consistency to be shaped into balls;","9 - Arrange in a baking sheet and bake in a preheated oven until golden."],"servings":"10 units"}}'::jsonb
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
  66,
  'Batata recheada',
  'Prato principal e vegetais',
  'https://images.unsplash.com/photo-1628236879201-783fa93fe7bd?q=80&w=1400&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["490g de batatas grandes","5g de alho amassado","3g de sal","50g de queijo vegano","60g de creme de leite","40g de maionese","1g de orégano"]'::jsonb,
  '["1 - Lave as batatas, corte as duas extremidades para que as batatas fiquem em pé e corte-as ao meio ou longitudinalmente, se preferir;","2 - Em uma panela de pressão, cozinhe por cerca de 10 minutos após começar a chiar;","3 - Com as batatas ainda quentes, retire o centro preservando o fundo e laterais;","4 - Amasse a porção retirada das batatas e tempere com a margarina, alho, creme de leite, sal e ervas a gosto;","5 - Disponha as batatas em um refratário, salpique sal e coloque o purê temperado dentro das batatas;","6 - À parte, misture os ingredientes do gratinado de queijo e coloque por cima das batatas;","7 - Leve ao forno a 200°C até gratinar."]'::jsonb,
  '8 unidades',
  '[{"totalEnergy":980,"servingEnergy":122},{"totalCarbs":104,"servingCarbs":13},{"totalProteins":13.1,"servingProteins":1.6},{"totalLipids":59,"servingLipids":7},{"totalSodium":1574,"servingSodium":197},{"totalPotassium":2763,"servingPotassium":345}]'::jsonb,
  '[{"leucine":40,"totalLeucine":860,"servingLeucine":108},{"tirosine":23,"totalTirosine":510,"servingTirosine":64},{"fenil":27,"totalFenil":590,"servingFenil":74},{"metiotine":10,"totalMetiotine":220,"servingMetiotine":28}]'::jsonb,
  '{"en-US":{"name":"Stuffed potato","ingredients":["490g of large potatoes","5g of mashed garlic","3g of salt","50g of vegan cheese","60g of cream of leite","40g of mayonnaise","1g of oregano"],"preparation":["1 - Wash the potatoes, cut the two ends so that the potatoes stand upright and cut them in half or lengthwise, if you prefer;","2 - In a pressure cooker, cook for about 10 minutes after it starts to hiss;","3 - With the potatoes still hot, remove the center preserving the bottom and sides;","4 - Mash the portion removed from the potatoes and season with margarine, garlic, cream of leite, salt and herbs to taste;","5 - Arrange the potatoes in a baking dish, sprinkle with salt and place the seasoned puree inside the potatoes;","6 - Separately, mix the cheese gratin ingredients and place them on top of the potatoes;","7 - Bake in a preheated oven at 200°C until golden."],"servings":"8 units"}}'::jsonb
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
  67,
  'Batatas ao forno',
  'Prato principal e vegetais',
  'https://plus.unsplash.com/premium_photo-1695224545124-3ef48642ec92?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["200g de batata","90g de tomate cereja","15g de azeite de oliva","8g de alho","1g de alecrim ou orégano seco","0,5g de páprica picante","2g de sal"]'::jsonb,
  '["1 - Em uma panela com água e sal, pré cozinhe as batatas já cortadas;","2 - Disponha as batatas em um refratário e adicione os tomates, alho, alecrim e a páprica;","3 - Asse em forno pré-aquecido a 200°C até que fiquem douradas."]'::jsonb,
  '2 porções',
  '[{"totalEnergy":325,"servingEnergy":162},{"totalCarbs":43,"servingCarbs":22},{"totalProteins":5.5,"servingProteins":2.8},{"totalLipids":16,"servingLipids":8},{"totalSodium":1184,"servingSodium":592},{"totalPotassium":1330,"servingPotassium":665}]'::jsonb,
  '[{"leucine":39,"totalLeucine":300,"servingLeucine":150},{"tirosine":23,"totalTirosine":180,"servingTirosine":90},{"fenil":28,"totalFenil":220,"servingFenil":110},{"metiotine":10,"totalMetiotine":80,"servingMetiotine":40}]'::jsonb,
  '{"en-US":{"name":"Baked potatoes","ingredients":["200g of potato","90g of cherry tomato","15g of olive oil","8g of garlic","1g of rosemary or dried oregano","0,5g of hot paprika","2g of salt"],"preparation":["1 - In a pan with water and salt, pre-cook the potatoes already cut;","2 - Arrange the potatoes in a baking dish and add the tomatoes, garlic, rosemary and paprika;","3 - Bake in a preheated oven at 200°C until golden."],"servings":"2 servings"}}'::jsonb
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
  68,
  'Berinjela à milanesa',
  'Prato principal e vegetais',
  'https://plus.unsplash.com/premium_photo-1664647841204-ecbdd9f93bc4?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["300g de berinjela","70g de amido de milho","5g de sal","2g de orégano seco ou chimichurri","Óleo para fritar"]'::jsonb,
  '["1 - Pique a berinjela e deixe de molho na água com o vinagre;","2 - Retire da água e tempere a berinjela com sal e chimichurri ou orégano;","3 - Empane com o amido de milho;","4 - Frite no óleo bem quente e coloque em papel absorvente."]'::jsonb,
  '2 porções',
  '[{"totalEnergy":687,"servingEnergy":344},{"totalCarbs":83,"servingCarbs":41},{"totalProteins":3.4,"servingProteins":1.7},{"totalLipids":39,"servingLipids":19},{"totalSodium":1178,"servingSodium":589},{"totalPotassium":653,"servingPotassium":327}]'::jsonb,
  '[{"leucine":46,"totalLeucine":230,"servingLeucine":115},{"tirosine":18,"totalTirosine":90,"servingTirosine":45},{"fenil":28,"totalFenil":140,"servingFenil":70},{"metiotine":8,"totalMetiotine":40,"servingMetiotine":20}]'::jsonb,
  '{"en-US":{"name":"Breaded eggplant","ingredients":["300g of eggplant","70g of cornstarch","5g of salt","2g of dried oregano or chimichurri","Oil for frying"],"preparation":["1 - Chop the eggplant and let it soak in water with vinegar;","2 - Remove from water and season the eggplant with salt and chimichurri or oregano;","3 - Coat with cornstarch;","4 - Fry in hot oil and place on absorbent paper."],"servings":"2 servings"}}'::jsonb
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
  69,
  'Berinjela à parmegiana',
  'Prato principal e vegetais',
  'https://images.unsplash.com/photo-1621852003739-b54d49ff3431?q=80&w=1398&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["240g de tomate pelado","5g de azeite de oliva","5g de alho","3g de sal","140g de berinjela","35g de farinha de mandioca torrada","40g de queijo tipo mussarela vegano","2g de sal","200g de óleo vegetal para fritar"]'::jsonb,
  '["1 - Lave a berinjela, corte-a em rodelas de aproximadamente 1 cm e deixe de molho na água;","2 - Misture o sal na farinha de mandioca e retire as fatias de berinjela da água;","3 - Uma a uma, passe as fatias de berinjela dos dois lados na farinha de mandioca;","4 - Frite-as em óleo bem quente e reserve (utilizar 200g de óleo para fritura em imersão);","5 - Bata os tomates com o alho, sal e azeite e coloque em uma panela em fogo baixo até ferver;","6 - Em uma travessa de vidro, coloque um pouco de molho, e coloque as rodelas de berinjela em cima, cubra com o restante do molho;","7 - Rale o queijo na parte mais grossa do ralador e distribua por cima da preparação;","8 - Leve ao forno até derreter o queijo, sirva quente."]'::jsonb,
  '4 porções',
  '[{"totalEnergy":1161,"servingEnergy":290},{"totalCarbs":61,"servingCarbs":15},{"totalProteins":4.9,"servingProteins":1.2},{"totalLipids":103,"servingLipids":26},{"totalSodium":2070,"servingSodium":518},{"totalPotassium":860,"servingPotassium":215}]'::jsonb,
  '[{"leucine":41,"totalLeucine":250,"servingLeucine":63},{"tirosine":23,"totalTirosine":140,"servingTirosine":35},{"fenil":29,"totalFenil":180,"servingFenil":45},{"metiotine":7,"totalMetiotine":40,"servingMetiotine":10}]'::jsonb,
  '{"en-US":{"name":"Eggplant parmigiana","ingredients":["240g of peeled tomato","5g of olive oil","5g of garlic","3g of salt","140g of eggplant","35g of toasted cassava flour","40g of vegan mozzarella cheese","2g of salt","200g of vegetable oil for frying"],"preparation":["1 - Wash the eggplant, cut it into slices of approximately 1 cm and let it soak in water;","2 - Mix the salt in the cassava flour and remove the eggplant slices from the water;","3 - One by one, pass the eggplant slices on both sides through the cassava flour;","4 - Fry them in very hot oil and set aside (use 200g of oil for deep frying);","5 - Beat the tomatoes with the garlic, salt and olive oil and place in a pan over low heat until it boils;","6 - In a glass dish, place a little sauce, and place the eggplant slices on top, cover with the rest of the sauce;","7 - Grate the cheese on the thickest part of the grater and distribute it over the preparation;","8 - Bake in the oven until the cheese melts, serve hot."],"servings":"4 servings"}}'::jsonb
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
  70,
  'Bife de abobrinha',
  'Prato principal e vegetais',
  'https://images.unsplash.com/photo-1693422663845-5922b9dd1489?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["150g de abobrinha","30g de cebola","1g de alho","6g de óleo vegetal","2g de orégano","30g de farinha de mandioca","3g de sal","15g de farinha de mandioca para empanar","Óleo para fritar"]'::jsonb,
  '["1 - Refogue a abobrinha no óleo com os demais temperos até que fique transparente;","2 - Adicione a farinha de mandioca ainda com a panela no fogo;","3 - Mexa vigorosamente por 3 minutos para que a farinha incorpore bem;","4 - Espere esfriar e molde os hambúrgueres com as mãos untadas de óleo;","5 - Passe na farinha de mandioca para empanar;","6 - Frite em fogo médio e coloque em papel absorvente."]'::jsonb,
  '5 unidades',
  '[{"totalEnergy":445,"servingEnergy":89},{"totalCarbs":46,"servingCarbs":9},{"totalProteins":2.9,"servingProteins":0.6},{"totalLipids":27,"servingLipids":5},{"totalSodium":1168,"servingSodium":234},{"totalPotassium":423,"servingPotassium":85}]'::jsonb,
  '[{"leucine":40,"totalLeucine":170,"servingLeucine":34},{"tirosine":24,"totalTirosine":100,"servingTirosine":20},{"fenil":26,"totalFenil":110,"servingFenil":22},{"metiotine":10,"totalMetiotine":40,"servingMetiotine":8}]'::jsonb,
  '{"en-US":{"name":"Zucchini steak","ingredients":["150g of zucchini","30g of onion","1g of garlic","6g of vegetable oil","2g of oregano","30g of cassava flour","3g of salt","15g of cassava flour for breading","Oil for frying"],"preparation":["1 - Sauté the zucchini in oil with the other seasonings until it becomes transparent;","2 - Add the cassava flour while the pan is still on the heat;","3 - Stir vigorously for 3 minutes so that the flour incorporates well;","4 - Let it cool and shape the burgers with oiled hands;","5 - Pass through the cassava flour to bread;","6 - Fry over medium heat and place on absorbent paper."],"servings":"5 units"}}'::jsonb
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

INSERT INTO recipes (id, name, category, image, ingredients, preparation, servings, nutritional_information, graph_information, translations)
VALUES (
  81,
  'Farofa',
  'Prato principal e vegetais',
  'https://images.unsplash.com/photo-1633940125385-4e1aeccd2d6c?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["50g de cenoura ralada","80g de tomate sem semente","40g de cebola ralada","5g de salsinha","25g de azeitona picada","4g de sal","15g de óleo vegetal","25g de uva passa preta","25g de farinha de mandioca torrada"]'::jsonb,
  '["1 - Em uma panela, refogue a cebola no óleo e acrescente a cenoura e o tomate;","2 - Deixe murchar e acrescente os demais ingredientes, exceto a farinha;","3 - Adicione a farinha e cozinhe por alguns minutos."]'::jsonb,
  '6 porções',
  '[{"totalEnergy":1178,"servingEnergy":196},{"totalCarbs":160,"servingCarbs":27},{"totalProteins":5.2,"servingProteins":0.9},{"totalLipids":19,"servingLipids":3},{"totalSodium":1770,"servingSodium":295},{"totalPotassium":637,"servingPotassium":106}]'::jsonb,
  '[{"leucine":38,"totalLeucine":270,"servingLeucine":45},{"tirosine":28,"totalTirosine":200,"servingTirosine":33},{"fenil":28,"totalFenil":200,"servingFenil":33},{"metiotine":6,"totalMetiotine":40,"servingMetiotine":7}]'::jsonb,
  '{"en-US":{"name":"Farofa","ingredients":["50g of grated carrot","80g of tomato without seeds","40g of grated onion","5g of parsley","25g of chopped olives","4g of salt","15g of vegetable oil","25g of black raisins","25g of toasted cassava flour"],"preparation":["1 - In a pan, sauté the onion in oil and add the carrot and tomato;","2 - Let it wilt and add the other ingredients, except the flour;","3 - Add the flour and cook for a few minutes."],"servings":"6 servings"}}'::jsonb
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
  82,
  'Hambúrguer de legumes',
  'Prato principal e vegetais',
  'https://plus.unsplash.com/premium_photo-1664648063522-6b4f1ee7b7be?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["300g de cenoura ralada","280g de abobrinha ralada","100g de beterraba ralada","80g de cebola picada","12g de óleo vegetal","150g de farinha de mandioca","200ml de água","5g de sal"]'::jsonb,
  '["1 - Em uma panela, refogue os legumes com a cebola e o óleo até ficarem bem macios;","2 - Acrescente a água e a farinha de mandioca e mexa para engrossar em fogo baixo;","3 - Deixe cozinhar bastante. Espere esfriar e modele os hambúrgueres;","4 - Divida a massa em quinze porções iguais."]'::jsonb,
  '15 unidades',
  '[{"totalEnergy":924,"servingEnergy":62},{"totalCarbs":185,"servingCarbs":12},{"totalProteins":11.4,"servingProteins":0.8},{"totalLipids":14,"servingLipids":1},{"totalSodium":2131,"servingSodium":142},{"totalPotassium":2114,"servingPotassium":141}]'::jsonb,
  '[{"leucine":40,"totalLeucine":591,"servingLeucine":39},{"tirosine":24,"totalTirosine":358,"servingTirosine":24},{"fenil":28,"totalFenil":412,"servingFenil":27},{"metiotine":8,"totalMetiotine":117,"servingMetiotine":8}]'::jsonb,
  '{"en-US":{"name":"Vegetable burger","ingredients":["300g of grated carrot","280g of grated zucchini","100g of grated beetroot","80g of chopped onion","12g of vegetable oil","150g of cassava flour","200ml of water","5g of salt"],"preparation":["1 - In a pan, sauté the vegetables with the onion and oil until they are tender;","2 - Add the water and cassava flour and stir to thicken over low heat;","3 - Let it cook well. Wait for it to cool and shape the burgers;","4 - Divide the dough into fifteen equal portions."],"servings":"15 units"}}'::jsonb
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
  83,
  'Hambúrguer de berinjela',
  'Prato principal e vegetais',
  'https://plus.unsplash.com/premium_photo-1664648063519-b11d91a2345d?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["280g de berinjela","60g de cebola","5g de alho","5g de salsinha","100g de farinha sem glúten","15g de farinha hipoproteica","5g de goma xantana ou liga neutra","3g de sal","0,5g de orégano seco ou chimichurri","10g de óleo vegetal"]'::jsonb,
  '["1 - Corte a berinjela em cubos pequenos, deixe de molho em água com sal por duas horas, escorra;","2 - Refogue a cebola até ficar macia, adicione o alho, a berinjela e a liga neutra ou goma xantana, e cozinhe;","3 - No processador, bata a mistura;","4 - Adicione as farinhas e a salsinha;","5 - Leve à geladeira até ficar completamente frio;","6 - Abra a massa entre dois plásticos;","7 - Com um copo, modele os hambúrgueres no tamanho desejado;","8 - Grelhe em uma frigideira com um fio de óleo;","9 - É possível congelar, e ao usar, deixe na geladeira um pouco antes de grelhar."]'::jsonb,
  '6 unidades',
  '[{"totalEnergy":645,"servingEnergy":108},{"totalCarbs":131,"servingCarbs":22},{"totalProteins":6.8,"servingProteins":1.1},{"totalLipids":11,"servingLipids":2},{"totalSodium":1178,"servingSodium":196},{"totalPotassium":770,"servingPotassium":128}]'::jsonb,
  '[{"leucine":43,"totalLeucine":300,"servingLeucine":50},{"tirosine":19,"totalTirosine":130,"servingTirosine":22},{"fenil":29,"totalFenil":200,"servingFenil":33},{"metiotine":9,"totalMetiotine":62,"servingMetiotine":10}]'::jsonb,
  '{"en-US":{"name":"Eggplant burger","ingredients":["280g of eggplant","60g of onion","5g of garlic","5g of parsley","100g of gluten-free flour","15g of low-protein flour","5g of xanthan gum or neutral binder","3g of salt","0,5g of dried oregano or chimichurri","10g of vegetable oil"],"preparation":["1 - Cut the eggplant into small cubes, let it soak in salt water for two hours, drain;","2 - Sauté the onion until tender, add the garlic, eggplant and neutral binder or xanthan gum, and cook;","3 - In a food processor, blend the mixture;","4 - Add the flours and parsley;","5 - Refrigerate until completely cold;","6 - Roll out the dough between two plastics;","7 - With a glass, shape the burgers to the desired size;","8 - Grill in a pan with a drizzle of oil;","9 - It is possible to freeze, and when using, let it rest in the refrigerator for a while before grilling."],"servings":"6 units"}}'::jsonb
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
  84,
  'Hambúrguer de couve-flor',
  'Prato principal e vegetais',
  'https://images.unsplash.com/photo-1550152472-3a60c1705d06?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["300g de couve-flor","5g de alho","15g de cebola","3g de cebolinha","3g de salsinha","50g de farinha sem glúten","3g de liga neutra","2g de sal"]'::jsonb,
  '["1 - Lave e cozinhe a couve-flor até ficar bem macia;","2 - Amasse a couve-flor e refogue em uma panela com os demais temperos;","3 - Acrescente a liga neutra, o sal e a farinha aos poucos;","4 - Mexa em fogo baixo até formar uma massa mais seca;","5 - Espere esfriar e molde os hambúrgueres;","6 - Grelhe rapidamente na frigideira com um fio de óleo."]'::jsonb,
  '10 unidades',
  '[{"totalEnergy":281,"servingEnergy":28},{"totalCarbs":64,"servingCarbs":6},{"totalProteins":7.1,"servingProteins":0.7},{"totalLipids":2,"servingLipids":0},{"totalSodium":869,"servingSodium":87},{"totalPotassium":978,"servingPotassium":98}]'::jsonb,
  '[{"leucine":45,"totalLeucine":430,"servingLeucine":43},{"tirosine":17,"totalTirosine":160,"servingTirosine":16},{"fenil":27,"totalFenil":260,"servingFenil":26},{"metiotine":11,"totalMetiotine":100,"servingMetiotine":10}]'::jsonb,
  '{"en-US":{"name":"Cauliflower burger","ingredients":["300g of cauliflower","5g of garlic","15g of onion","3g of chives","3g of parsley","50g of gluten-free flour","3g of neutral binder","2g of salt"],"preparation":["1 - Wash and cook the cauliflower until it is very tender;","2 - Mash the cauliflower and sauté in a pan with the other seasonings;","3 - Add the neutral binder, salt and flour little by little;","4 - Stir over low heat until a drier dough forms;","5 - Let it cool and shape the burgers;","6 - Grill quickly in a pan with a drizzle of oil."],"servings":"10 units"}}'::jsonb
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
  85,
  'Kibe de berinjela',
  'Prato principal e vegetais',
  'https://plus.unsplash.com/premium_photo-1667546202642-e3c506786caa?q=80&w=1473&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["300g de polpa de berinjela","30g de cebola","2g de hortelã","5g de sal","50g de farinha de mandioca crua","0,2g de pimenta do reino","8g de suco de limão","15g de azeite de oliva"]'::jsonb,
  '["1 - Corte as berinjelas no sentido do comprimento, dividindo em duas partes;","2 - Disponha em uma assadeira e faça um quadriculado com a faca em cada uma delas;","3 - Tempere com pimenta do reino, sal e azeite;","4 - Leve ao forno até que amoleça, aproximadamente 40 minutos;","5 - Raspe a polpa com uma colher e pese 300g, reserve;","6 - Amasse ou bata a polpa de berinjela no mixer com os demais ingredientes, exceto a farinha;","7 - Acrescente a farinha até obter uma massa moldável;","8 - Modele em formato de kibe;","9 - Asse em forno pré-aquecido a 200°C até que fique mais sequinho."]'::jsonb,
  '10 unidades',
  '[{"totalEnergy":419,"servingEnergy":42},{"totalCarbs":65,"servingCarbs":6},{"totalProteins":4.4,"servingProteins":0.4},{"totalLipids":16,"servingLipids":2},{"totalSodium":1948,"servingSodium":195},{"totalPotassium":710,"servingPotassium":71}]'::jsonb,
  '[{"leucine":43,"totalLeucine":270,"servingLeucine":27},{"tirosine":22,"totalTirosine":140,"servingTirosine":14},{"fenil":29,"totalFenil":180,"servingFenil":18},{"metiotine":6,"totalMetiotine":40,"servingMetiotine":4}]'::jsonb,
  '{"en-US":{"name":"Eggplant kibe","ingredients":["300g of eggplant pulp","30g of onion","2g of mint","5g of salt","50g of raw cassava flour","0,2g of black pepper","8g of juice of lemon","15g of olive oil"],"preparation":["1 - Cut the eggplants lengthwise, dividing them into two parts;","2 - Arrange them in a baking dish and make a crosshatch pattern with a knife on each one;","3 - Season with black pepper, salt and olive oil;","4 - Bake until soft, approximately 40 minutes;","5 - Scrape the pulp with a spoon and weigh 300g, reserve;","6 - Mash or blend the eggplant pulp in a mixer with the other ingredients, except the flour;","7 - Add the flour until a moldable dough is obtained;","8 - Shape into kibe form;","9 - Bake in a preheated oven at 200°C until it becomes drier."],"servings":"10 units"}}'::jsonb
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
  86,
  'Mandioca frita cremosa',
  'Prato principal e vegetais',
  'https://images.unsplash.com/photo-1721942893909-d3b59335bfdc?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["130g de mandioca","3g de sal","5g de cebolinha","Óleo para fritar"]'::jsonb,
  '["1 - Cozinhe a mandioca e coloque em um refratário, amassando um pouco;","2 - Deixe na geladeira por 20 minutos;","3 - Corte a mandioca em cubos;","4 - Frite em óleo bem quente e tempere."]'::jsonb,
  '2 porções',
  '[{"totalEnergy":386,"servingEnergy":193},{"totalCarbs":50,"servingCarbs":25},{"totalProteins":1.9,"servingProteins":0.9},{"totalLipids":20,"servingLipids":10},{"totalSodium":794,"servingSodium":397},{"totalPotassium":366,"servingPotassium":183}]'::jsonb,
  '[{"leucine":43,"totalLeucine":60,"servingLeucine":30},{"tirosine":14,"totalTirosine":20,"servingTirosine":10},{"fenil":29,"totalFenil":40,"servingFenil":20},{"metiotine":14,"totalMetiotine":20,"servingMetiotine":10}]'::jsonb,
  '{"en-US":{"name":"Creamy fried cassava","ingredients":["130g of cassava","3g of salt","5g of chives","Oil for frying"],"preparation":["1 - Cook the cassava and place it in a baking dish, mashing it a little;","2 - Let it rest in the refrigerator for 20 minutes;","3 - Cut the cassava into cubes;","4 - Fry in very hot oil and season."],"servings":"2 servings"}}'::jsonb
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
  87,
  'Molho de legumes',
  'Prato principal e vegetais',
  'https://plus.unsplash.com/premium_photo-1675798983878-604c09f6d154?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["60g de abobrinha crua","20g de brócolis cru","50g de tomate cru","60g de cenoura crua","10g de azeite de oliva","2g de alho","15g de cebola","3g de sal","40ml de água para cozinhar"]'::jsonb,
  '["1 - Pique os legumes e reserve;","2 - Refogue a cebola e o alho no azeite e adicione os legumes e o sal;","3 - Adicione a água e deixe cozinhar até ficarem macios;","4 - À parte, cozinhe macarrão ou utilize arroz já pronto;","5 - Utilize uma porção do molho de legumes e misture em uma porção de macarrão ou arroz."]'::jsonb,
  '3 porções',
  '[{"totalEnergy":147,"servingEnergy":49},{"totalCarbs":13,"servingCarbs":4},{"totalProteins":2.6,"servingProteins":0.9},{"totalLipids":10,"servingLipids":3},{"totalSodium":1196,"servingSodium":399},{"totalPotassium":550,"servingPotassium":183}]'::jsonb,
  '[{"leucine":41,"totalLeucine":120,"servingLeucine":40},{"tirosine":21,"totalTirosine":60,"servingTirosine":20},{"fenil":28,"totalFenil":80,"servingFenil":27},{"metiotine":10,"totalMetiotine":30,"servingMetiotine":10}]'::jsonb,
  '{"en-US":{"name":"Vegetable sauce","ingredients":["60g of raw zucchini","20g of raw broccoli","50g of raw tomato","60g of raw carrot","10g of olive oil","2g of garlic","15g of onion","3g of salt","40ml of water for cooking"],"preparation":["1 - Chop the vegetables and set aside;","2 - Sauté the onion and garlic in the olive oil and add the vegetables and salt;","3 - Add the water and let it cook until tender;","4 - Separately, cook pasta or use already cooked rice;","5 - Use a portion of the vegetable sauce and mix with a portion of pasta or rice."],"servings":"3 servings"}}'::jsonb
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
  88,
  'Molho de tomate caseiro',
  'Prato principal e vegetais',
  'https://plus.unsplash.com/premium_photo-1671395501275-630ae5ea02c4?q=80&w=677&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["480g de tomate sem casca","15g de azeite de oliva","10g de alho","2g de manjericão fresco","3g de açúcar","3g de sal","0,1g de pimenta do reino"]'::jsonb,
  '["1 - Corte os tomates em cruz na parte de baixo e coloque em água fervente para retirar a pele;","2 - Coloque a mais do que a quantidade indicada, pois ao tirar a pele vai reduzir;","3 - Retire da água quente e coloque no gelo para soltar a pele;","4 - Corte ao meio para retirar as sementes, se desejar;","5 - Pique os tomates já pelados;","6 - Refogue no azeite com alho, açúcar, o sal e a pimenta;","7 - Bata com um mixer e deixe apurar;","8 - Adicione o manjericão fresco para finalizar."]'::jsonb,
  '3 porções',
  '[{"totalEnergy":261,"servingEnergy":87},{"totalCarbs":29,"servingCarbs":10},{"totalProteins":4.8,"servingProteins":1.6},{"totalLipids":17,"servingLipids":6},{"totalSodium":1208,"servingSodium":403},{"totalPotassium":113,"servingPotassium":38}]'::jsonb,
  '[{"leucine":42,"totalLeucine":180,"servingLeucine":60},{"tirosine":19,"totalTirosine":80,"servingTirosine":27},{"fenil":30,"totalFenil":130,"servingFenil":43},{"metiotine":9,"totalMetiotine":40,"servingMetiotine":13}]'::jsonb,
  '{"en-US":{"name":"Homemade tomato sauce","ingredients":["480g of tomato without skin","15g of olive oil","10g of garlic","2g of fresh basil","3g of sugar","3g of salt","0,1g of black pepper"],"preparation":["1 - cut the tomatoes in a cross on the bottom part and place them in boiling water to remove the skin;","2 - Put more than the indicated quantity, because when removing the skin it will reduce;","3 - Remove from hot water and place in ice to loosen the skin;","4 - cut in half to remove the seeds, if desired;","5 - Chop the already peeled tomatoes;","6 - Sauté in olive oil with garlic, sugar, salt and pepper;","7 - beat with a mixer and let it cook;","8 - Add the fresh basil to finish."],"servings":"3 servings"}}'::jsonb
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
  89,
  'Nhoque de batata salsa',
  'Prato principal e vegetais',
  'https://images.unsplash.com/photo-1586779245509-5f429311242f?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["250g de mandioquinha cozida","50g de farinha sem glúten","20g de maionese","4g de fermento químico em pó","5g de salsinha","3g de sal"]'::jsonb,
  '["1 - Amasse a mandioquinha cozida com um garfo ou espremedor de batata até obter um purê;","2 - Acrescente os demais ingredientes, deixe a farinha por último;","3 - Amasse bem até ficar uma massa lisa;","4 - Faça bolinhas e depois rolinhos para cortar em formato de nhoque;","5 - Cozinhe o nhoque na água fervente;","6 - Retire com uma escumadeira quando subirem à superfície;","7 - Sirva com margarina ou molho de tomate e polvilhe salsinha por cima."]'::jsonb,
  '2 porções',
  '[{"totalEnergy":595,"servingEnergy":297},{"totalCarbs":109,"servingCarbs":54},{"totalProteins":3.3,"servingProteins":1.7},{"totalLipids":17,"servingLipids":8},{"totalSodium":1280,"servingSodium":640},{"totalPotassium":173,"servingPotassium":86}]'::jsonb,
  '[{"leucine":43,"totalLeucine":230,"servingLeucine":115},{"tirosine":19,"totalTirosine":100,"servingTirosine":50},{"fenil":27,"totalFenil":140,"servingFenil":70},{"metiotine":11,"totalMetiotine":60,"servingMetiotine":30}]'::jsonb,
  '{"en-US":{"name":"Potato gnocchi","ingredients":["250g of cooked potato","50g of gluten-free flour","20g of mayonnaise","4g of chemical baking powder","5g of parsley","3g of salt"],"preparation":["1 - Mash the cooked potato with a fork or potato masher until you get a puree;","2 - Add the other ingredients, leaving the flour for last;","3 - Mash well until you get a smooth dough;","4 - Make balls and then rolls to cut into gnocchi shape;","5 - Cook the gnocchi in boiling water;","6 - Remove with a slotted spoon when they rise to the surface;","7 - Serve with margarine or tomato sauce and sprinkle with parsley."],"servings":"2 servings"}}'::jsonb
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
  90,
  'Nhoque três tubérculos',
  'Prato principal e vegetais',
  'https://images.unsplash.com/photo-1591972547480-6f878d5c1a45?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["80g de batata inglesa","70g de batata doce","100g de mandioca","15g de margarina sem sal","3g de sal","50g de farinha hipoproteica","80g de tomate","50g de cebola","3g de sal (molho)"]'::jsonb,
  '["1 - Descasque e cozinhe os tubérculos até ficarem macios;","2 - Escorra bem e com o auxílio de um garfo amasse até obter um purê e adicione a margarina;","3 - Deixe esfriar, adicione o sal e a farinha até dar ponto na massa;","4 - Faça bolinhas com a massa;","5 - Cozinhe em uma panela com água fervente e um fio de óleo até que venham a superfície;","6 - Escorra com o auxílio de uma escumadeira;","7 - Pique o tomate em pedaços pequenos;","8 - Em uma panela, refogue com a cebola, tempere e deixe apurar;","9 - Sirva com molho de tomate."]'::jsonb,
  '2 porções',
  '[{"totalEnergy":488,"servingEnergy":244},{"totalCarbs":102,"servingCarbs":51},{"totalProteins":6.9,"servingProteins":3.4},{"totalLipids":6,"servingLipids":3},{"totalSodium":1276,"servingSodium":638},{"totalPotassium":1341,"servingPotassium":670}]'::jsonb,
  '[{"leucine":40,"totalLeucine":370,"servingLeucine":185},{"tirosine":20,"totalTirosine":190,"servingTirosine":95},{"fenil":28,"totalFenil":260,"servingFenil":130},{"metiotine":12,"totalMetiotine":110,"servingMetiotine":55}]'::jsonb,
  '{"en-US":{"name":"Three tuber gnocchi","ingredients":["80g of english potato","70g of sweet potato","100g of cassava","15g of unsalted margarine","3g of salt","50g of low-protein flour","80g of tomato","50g of onion","3g of salt (sauce)"],"preparation":["1 - Peel and cook the tubers until tender;","2 - Drain well and with the help of a fork mash until you get a puree and add the margarine;","3 - Let it cool, add the salt and flour until the dough is firm;","4 - Make small balls with the dough;","5 - Cook in a pan with boiling water and a drizzle of oil until they rise to the surface;","6 - Drain with the help of a slotted spoon;","7 - Chop the tomato into small pieces;","8 - In a pan, sauté with the onion, season and let it cook;","9 - Serve with tomato sauce."],"servings":"2 servings"}}'::jsonb
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
  91,
  'Nuggets sem segredo',
  'Prato principal e vegetais',
  'https://images.unsplash.com/photo-1582981760753-b52aae38f237?q=80&w=1160&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["150g de abobrinha ralada","135g de batata","100g de cenoura","120g de farinha sem glúten","5g de sal","18g de azeite de oliva","55g de cebola","0.5g de orégano seco","25g de farinha de mandioca"]'::jsonb,
  '["1 - Cozinhe a cenoura e a batata, amasse até obter um purê e reserve;","2 - Refogue a abobrinha no azeite junto com a cebola e tempere com o sal e o orégano;","3 - Acrescente o purê de batata e cenoura na panela;","4 - Desligue o fogo e adicione a farinha aos poucos, mexendo sempre;","5 - Retire da panela e coloque em outro recipiente para amornar;","6 - Molde a massa em formato de nuggets, passe na farinha de mandioca para empanar e disponha em uma assadeira;","7 - Asse em forno pré-aquecido a 200°C por alguns minutos até dourar."]'::jsonb,
  '16 unidades',
  '[{"totalEnergy":899,"servingEnergy":56},{"totalCarbs":174,"servingCarbs":11},{"totalProteins":8.7,"servingProteins":0.5},{"totalLipids":19,"servingLipids":1},{"totalSodium":2020,"servingSodium":126},{"totalPotassium":1129,"servingPotassium":71}]'::jsonb,
  '[{"leucine":42,"totalLeucine":570,"servingLeucine":36},{"tirosine":21,"totalTirosine":290,"servingTirosine":18},{"fenil":27,"totalFenil":370,"servingFenil":23},{"metiotine":10,"totalMetiotine":140,"servingMetiotine":9}]'::jsonb,
  '{"en-US":{"name":"No-secret nuggets","ingredients":["150g of grated zucchini","135g of potato","100g of carrot","120g of gluten-free flour","5g of salt","18g of olive oil","55g of onion","0.5g of dried oregano","25g of cassava flour"],"preparation":["1 - Cook the carrot and potato, mash until you get a puree and set aside;","2 - Sauté the zucchini in the olive oil with the onion and season with salt and oregano;","3 - Add the potato and carrot puree to the pan;","4 - Turn off the heat and add the flour little by little, stirring constantly;","5 - Remove from the pan and place in another container to cool slightly;","6 - Shape the dough into nuggets, coat in cassava flour to bread and arrange on a baking sheet;","7 - Bake in a preheated oven at 200°C for a few minutes until golden."],"servings":"16 units"}}'::jsonb
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
  92,
  'Omelete fake',
  'Prato principal e vegetais',
  'https://images.unsplash.com/photo-1646579933415-92109f9805df?q=80&w=1514&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["200ml de água","15g de creme de leite","20g de cenoura","5g de óleo vegetal","3g de sal","2g de fermento químico em pó","70g de farinha sem glúten","75g de tomate picado","5g de salsinha","1g de orégano seco","30g de cebola picada","30g de azeitona picada"]'::jsonb,
  '["1 - Bata todos os ingredientes da massa no liquidificador e reserve;","2 - Em um recipiente, misture todos os ingredientes do recheio na massa;","3 - Unte uma frigideira com óleo e despeje a mistura;","4 - Cozinhe em fogo baixo e doure de ambos os lados."]'::jsonb,
  '4 unidades',
  '[{"totalEnergy":523,"servingEnergy":131},{"totalCarbs":71,"servingCarbs":18},{"totalProteins":2.8,"servingProteins":0.7},{"totalLipids":14,"servingLipids":3},{"totalSodium":1406,"servingSodium":352},{"totalPotassium":324,"servingPotassium":81}]'::jsonb,
  '[{"leucine":44,"totalLeucine":180,"servingLeucine":45},{"tirosine":19,"totalTirosine":80,"servingTirosine":20},{"fenil":27,"totalFenil":110,"servingFenil":18},{"metiotine":10,"totalMetiotine":40,"servingMetiotine":10}]'::jsonb,
  '{"en-US":{"name":"Fake omelet","ingredients":["200ml of water","15g of cream of milk","20g of carrot","5g of vegetable oil","3g of salt","2g of chemical baking powder","70g of gluten-free flour","75g of chopped tomato","5g of parsley","1g of dried oregano","30g of chopped onion","30g of chopped olive"],"preparation":["1 - Beat all the ingredients for the dough in a blender and set aside;","2 - In a container, mix all the filling ingredients into the dough;","3 - Grease a frying pan with oil and pour in the mixture;","4 - Cook over low heat and brown on both sides."],"servings":"4 units"}}'::jsonb
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
  93,
  'Patê de cenoura',
  'Prato principal e vegetais',
  'https://images.unsplash.com/photo-1582515073490-39981397c445?q=80&w=1738&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["90g de cenoura ralada","10g de cebola picada","1g de orégano seco","2g de salsinha","2g de sal","40g de maionese","20g de creme de leite","5g de mostarda"]'::jsonb,
  '["1 - Em um recipiente, misture todos os ingredientes com auxílio de uma colher;","2 - Caso prefira um patê mais homogêneo, bata no processador ou liquidificador;","3 - Sirva gelado."]'::jsonb,
  '10 porções',
  '[{"totalEnergy":382,"servingEnergy":38},{"totalCarbs":11,"servingCarbs":1},{"totalProteins":2.5,"servingProteins":0.3},{"totalLipids":37,"servingLipids":4},{"totalSodium":1106,"servingSodium":111},{"totalPotassium":355,"servingPotassium":35}]'::jsonb,
  '[{"leucine":41,"totalLeucine":140,"servingLeucine":14},{"tirosine":21,"totalTirosine":70,"servingTirosine":7},{"fenil":26,"totalFenil":90,"servingFenil":9},{"metiotine":12,"totalMetiotine":40,"servingMetiotine":4}]'::jsonb,
  '{"en-US":{"name":"Carrot pâté","ingredients":["90g of grated carrot","10g of chopped onion","1g of dried oregano","2g of parsley","2g of salt","40g of mayonnaise","20g of cream of milk","5g of mustard"],"preparation":["1 - In a container, mix all the ingredients with the help of a spoon;","2 - If you prefer a more homogeneous pâté, beat in a food processor or blender;","3 - Serve chilled."],"servings":"10 servings"}}'::jsonb
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
  94,
  'Pizza de mandioca',
  'Prato principal e vegetais',
  'https://images.unsplash.com/photo-1585238342024-78d387f4a707?q=80&w=1160&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["150g de mandioca","20g de margarina sem sal","2g de sal"]'::jsonb,
  '["1 - Cozinhe a mandioca e amasse com auxílio de um garfo;","2 - Adicione o sal e a margarina, misture bem;","3 - Espalhe a mistura sob uma frigideira antiaderente, não deixe a massa muito fina;","4 - Cozinhe de ambos os lados e sirva com o recheio de sua preferência."]'::jsonb,
  '2 unidades',
  '[{"totalEnergy":304,"servingEnergy":152},{"totalCarbs":57,"servingCarbs":29},{"totalProteins":2,"servingProteins":1},{"totalLipids":8,"servingLipids":4},{"totalSodium":916,"servingSodium":458},{"totalPotassium":407,"servingPotassium":203}]'::jsonb,
  '[{"leucine":40,"totalLeucine":60,"servingLeucine":30},{"tirosine":20,"totalTirosine":30,"servingTirosine":15},{"fenil":27,"totalFenil":40,"servingFenil":20},{"metiotine":13,"totalMetiotine":20,"servingMetiotine":10}]'::jsonb,
  '{"en-US":{"name":"Cassava pizza","ingredients":["150g of cassava","20g of unsalted margarine","2g of salt"],"preparation":["1 - Cook the cassava and mash with the help of a fork;","2 - Add the salt and margarine, mix well;","3 - Spread the mixture over a non-stick frying pan, do not make the dough too thin;","4 - Cook on both sides and serve with the filling of your choice."],"servings":"2 units"}}'::jsonb
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
  95,
  'Tomate recheado',
  'Prato principal e vegetais',
  'https://images.unsplash.com/photo-1607305387299-a3d9611cd469?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["180g de tomate (3 unidades de 60g cada)","185g de palmito picado","10g de azeitona picada","25g de cogumelos picados","10g de cebola","5g de alho","10g de óleo vegetal","10g de salsinha","2g de sal","30g de maionese","30g de creme de leite","30g de queijo vegano ralado","0.5g de orégano seco"]'::jsonb,
  '["1 - Lave os tomate e corte uma tampinha da parte superior de cada um deles e tire as sementes, reserve;","2 - Refogue em óleo os demais ingredientes, exceto a salsinha;","3 - Desligue o fogo e adicione a salsinha;","4 - Para o queijo cremoso, misture a maionese, orégano, creme de leite e o queijo vegano ralado;","5 - Unte uma forma com óleo ou margarina e coloque os tomates;","6 - Regue os tomates por dentro com azeite e sal;","7 - Coloque o recheio dentro e a cobertura de queijo por cima;","8 - Asse em forno pré-aquecido a 220°C por aproximadamente 25 minutos ou até gratinar."]'::jsonb,
  '3 unidades',
  '[{"totalEnergy":626,"servingEnergy":209},{"totalCarbs":30,"servingCarbs":10},{"totalProteins":8.9,"servingProteins":3},{"totalLipids":51,"servingLipids":17},{"totalSodium":2026,"servingSodium":675},{"totalPotassium":895,"servingPotassium":298}]'::jsonb,
  '[{"leucine":45,"totalLeucine":570,"servingLeucine":190},{"tirosine":17,"totalTirosine":220,"servingTirosine":73},{"fenil":27,"totalFenil":340,"servingFenil":113},{"metiotine":11,"totalMetiotine":140,"servingMetiotine":47}]'::jsonb,
  '{"en-US":{"name":"Stuffed tomato","ingredients":["180g of tomato (3 units of 60g each)","185g of chopped palm heart","10g of chopped olive","25g of chopped mushrooms","10g of onion","5g of garlic","10g of vegetable oil","10g of parsley","2g of salt","30g of maionese","30g of cream of milk","30g of grated vegan cheese","0.5g of dried oregano"],"preparation":["1 - Wash the tomatoes and cut a lid from the top of each one and remove the seeds, set aside;","2 - Sauté the other ingredients in oil, except the parsley;","3 - Turn off the heat and add the parsley;","4 - For the creamy cheese, mix the mayonnaise, oregano, cream of milk and grated vegan cheese;","5 - Grease a baking sheet with oil or margarine and place the tomatoes;","6 - Drizzle the tomatoes inside with olive oil and salt;","7 - Place the filling inside and the cheese topping on top;","8 - Bake in a preheated oven at 220°C for approximately 25 minutes or until golden."],"servings":"3 units"}}'::jsonb
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
  96,
  'Torta de frigideira',
  'Prato principal e vegetais',
  'https://images.unsplash.com/photo-1572383672419-ab35444a6934?q=80&w=1160&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["100g de tomate picado sem semente","20g de azeitona picada","55g de cogumelos picados","30g de cenoura ralada","4g de sal","1g de orégano seco","5g de salsinha","50g de óleo vegetal","50g de creme de leite","210ml de água","155g de farinha sem glúten","3g de sal","2g de vinagre de maçã","1g de goma xantana ou emulsificante","4g de fermento químico em pó","35g de queijo vegano ralado"]'::jsonb,
  '["1 - Misture todos os ingredientes do recheio e reserve;","2 - Misture todos os ingredientes da massa até obter uma mistura homogênea;","3 - Unte uma frigideira antiaderente com margarina e, sem ligar o fogo, coloque metade da massa;","4 - Espalhe o recheio por cima e despeje o restante da massa para cobrir;","5 - Salpique queijo vegano e orégano por cima;","6 - Tampe a frigideira e ligue o fogo bem baixinho;","7 - Cozinhe por cerca de 8 a 10 minutos de um lado;","8 - Vire com ajuda de prato e deixe cozinhar pelo mesmo tempo do outro lado."]'::jsonb,
  '10 fatias',
  '[{"totalEnergy":1412,"servingEnergy":141},{"totalCarbs":159,"servingCarbs":16},{"totalProteins":6.4,"servingProteins":0.6},{"totalLipids":76,"servingLipids":8},{"totalSodium":3237,"servingSodium":324},{"totalPotassium":531,"servingPotassium":53}]'::jsonb,
  '[{"leucine":43,"totalLeucine":460,"servingLeucine":46},{"tirosine":20,"totalTirosine":210,"servingTirosine":21},{"fenil":26,"totalFenil":270,"servingFenil":27},{"metiotine":11,"totalMetiotine":120,"servingMetiotine":12}]'::jsonb,
  '{"en-US":{"name":"Skillet pie","ingredients":["100g of chopped tomato without seeds","20g of chopped olive","55g of chopped mushrooms","30g of grated carrot","4g of salt","1g of dried oregano","5g of  parsley","50g of vegetable oil","50g of cream of milk","210ml of water","155g of gluten-free flour","3g of salt","2g of apple cider vinegar","1g of xanthan gum or emulsifier","4g of chemical baking powder","35g of grated vegan cheese"],"preparation":["1 - mix all the ingredients of the filling and set aside;","2 - mix all the ingredients of the dough until obtaining a homogeneous mixture;","3 - Grease a non-stick frying pan with margarine and, without turning on the heat, place half of the dough;","4 - Spread the filling on top and pour the remaining dough to cover;","5 - Sprinkle vegan cheese and oregano on top;","6 - Cover the frying pan and turn on the heat very low;","7 - Cook for about 8 to 10 minutes on one side;","8 - Flip with the help of a plate and let it cook for the same time on the other side."],"servings":"10 slices"}}'::jsonb
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
  97,
  'Torta de legumes',
  'Prato principal e vegetais',
  'https://plus.unsplash.com/premium_photo-1723734015222-ff4ab9901533?q=80&w=1446&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["180ml de água","40g de creme de leite","2g de fermento químico em pó","4g de sal","150g de farinha sem glúten","50g de óleo vegetal","50g de abobrinha","50g de cenoura","60g de palmito","65g de tomate","30g de azeitona","5g de salsinha","30g de cebola","20g de óleo vegetal","4g de sal"]'::jsonb,
  '["1 - Bata todos os ingredientes da massa no liquidificador ou mixer e reserve;","2 - Pique todos os ingredientes do recheio e refogue com o óleo e a cebola;","3 - Em uma assadeira ou refratário, despeje a massa e o recheio por cima;","4 - Leve para o forno em temperatura média até assar por completo."]'::jsonb,
  '10 fatias',
  '[{"totalEnergy":1486,"servingEnergy":149},{"totalCarbs":151,"servingCarbs":15},{"totalProteins":7.9,"servingProteins":0.8},{"totalLipids":85,"servingLipids":8},{"totalSodium":2063,"servingSodium":206},{"totalPotassium":651,"servingPotassium":65}]'::jsonb,
  '[{"leucine":44,"totalLeucine":600,"servingLeucine":60},{"tirosine":19,"totalTirosine":250,"servingTirosine":25},{"fenil":26,"totalFenil":350,"servingFenil":35},{"metiotine":11,"totalMetiotine":150,"servingMetiotine":15}]'::jsonb,
  '{"en-US":{"name":"Vegetable pie","ingredients":["180ml of water","40g of cream of milk","2g of chemical baking powder","4g of salt","150g of gluten-free flour","50g of vegetable oil","50g of zucchini","50g of carrot","60g of palm heart","65g of tomato","30g of olive","5g of parsley","30g of onion","20g of vegetable oil","4g of salt"],"preparation":["1 - beat all the ingredients of the dough in a blender or mixer and set aside;","2 - chop all the ingredients of the filling and sauté with the oil and onion;","3 - In a baking dish or refractory, pour the dough and the filling on top;","4 - Take to the oven at medium temperature until completely baked."],"servings":"10 slices"}}'::jsonb
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