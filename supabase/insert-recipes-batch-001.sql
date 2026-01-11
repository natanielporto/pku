-- Batch 1 (recipes 1 to 10)

INSERT INTO recipes (id, name, category, image, ingredients, preparation, servings, nutritional_information, graph_information, translations)
VALUES (
  1,
  'Yogurt like strawberry drink',
  'Drinks and creams',
  'https://images.unsplash.com/photo-1488477181946-6428a0291777?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["480g de bebida vegetal a base de arroz","60g de açúcar demerara","50g de morango congelado","15g de suco de limão","5g de ágar-ágar"]'::jsonb,
  '["1 - Em uma panela, misture 380g da bebida vegetal junto com o açúcar e o ágar-ágar, deixe ferver por uns 2 minutos mexendo sempre;","2 - Leve à geladeira por aproximadamente uma hora para gelatinizar;","3 - Corte os morangos em pedaços e bata junto com creme gelado, o suco de limão e o restante da bebida vegetal com o auxílio de um mixer ou liquidificador;","4 - Coloque em tacinhas para servir."]'::jsonb,
  '2 taças',
  '[{"totalEnergy":614,"servingEnergy":307},{"totalCarbs":137,"servingCarbs":69},{"totalProteins":2.2,"servingProteins":1.1},{"totalLipids":8,"servingLipids":6},{"totalSodium":153,"servingSodium":77},{"totalPotassium":75,"servingPotassium":38}]'::jsonb,
  '[{"leucine":44,"totalLeucine":200,"servingLeucine":100},{"tirosine":18,"totalTirosine":80,"servingTirosine":40},{"fenil":27,"totalFenil":120,"servingFenil":60},{"metiotine":11,"totalMetiotine":50,"servingMetiotine":25}]'::jsonb,
  '{"en-US":{"name":"Yogurt Like Strawberry Drink","ingredients":["480g of rice beverage (rice beverage)","60g of demerara sugar","50g of frozen strawberries","15g of lemon juice","5g of agar-agar"],"preparation":["1 - in a pan, mix 380g of rice beverage together with the sugar and agar-agar, let it boil for 2 minutes stirring constantly;","2 - let it cool in the refrigerator for approximately 1 hour to gel;","3 - cut the strawberries into pieces and beat together with the cold cream, the lemon juice and the rest of the rice beverage with the help of a mixer or blender;","4 - place in cups for serving."],"servings":"2 glasses"}}'::jsonb
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
  2,
  'Vanilla flan',
  'Drinks and creams',
  'https://images.unsplash.com/photo-1586601399668-cd0c1484cd44?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["250ml de água","50g de açúcar","40g de creme de leite","30g de flan de baunilha em pó"]'::jsonb,
  '["1 - Coloque todos os ingredientes em uma panela pequena e leve ao fogo baixo, mexa até engrossar;","2 - Distribua a mistura em tacinhas e leve para gelar;","3 - Faça uma calda de caramelo à parte, se desejar."]'::jsonb,
  '3 taças',
  '[{"totalEnergy":406,"servingEnergy":135},{"totalCarbs":80,"servingCarbs":27},{"totalProteins":1,"servingProteins":0.3},{"totalLipids":10,"servingLipids":3},{"totalSodium":56,"servingSodium":19},{"totalPotassium":47,"servingPotassium":16}]'::jsonb,
  '[{"leucine":45,"totalLeucine":100,"servingLeucine":33},{"tirosine":23,"totalTirosine":50,"servingTirosine":17},{"fenil":23,"totalFenil":50,"servingFenil":17},{"metiotine":9,"totalMetiotine":20,"servingMetiotine":7}]'::jsonb,
  '{"en-US":{"name":"Vanilla Flan","ingredients":["250ml of water","50g of sugar","40g of cream of milk","30g of vanilla flan powder"],"preparation":["1 - Put all the ingredients in a small pan and bring to low heat, stir until thicken;","2 - Distribute the mixture in cups and chill;","3 - Make a caramel syrup separately, if desired."],"servings":"3 glasses"}}'::jsonb
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
  3,
  'Strawberry flan',
  'Drinks and creams',
  'https://images.unsplash.com/photo-1543264228-460e284028a7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["15g de creme de leite","50ml de água","20g de açúcar","75g de morango","4g de ágar-ágar"]'::jsonb,
  '["1 - Em uma panela pequena, coloque a água e o ágar-ágar para ferver mexendo sempre;","2 - Bata os morangos picados, o creme de leite, o açúcar e a água gelatinizada em um copo com o auxílio de um mixer;","3 - Disponha em potinhos individuais para servir"]'::jsonb,
  '2 potinhos',
  '[{"totalEnergy":176,"servingEnergy":88},{"totalCarbs":36,"servingCarbs":18},{"totalProteins":0.8,"servingProteins":0.4},{"totalLipids":4,"servingLipids":2},{"totalSodium":7,"servingSodium":3},{"totalPotassium":142,"servingPotassium":71}]'::jsonb,
  '[{"leucine":46,"totalLeucine":60,"servingLeucine":30},{"tirosine":23,"totalTirosine":30,"servingTirosine":15},{"fenil":23,"totalFenil":30,"servingFenil":15},{"metiotine":8,"totalMetiotine":10,"servingMetiotine":5}]'::jsonb,
  '{"en-US":{"name":"Strawberry Flan","ingredients":["15g of cream of milk","50ml of water","20g of sugar","75g of strawberry","4g of agar-agar"],"preparation":["1 - In a small pan, place the water and agar-agar to boil stirring constantly;","2 - beat the strawberries, the cream of milk, the sugar and the gelatinized water in a cup with the help of a mixer;","3 - Place in individual pots for serving"],"servings":"2 pots"}}'::jsonb
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
  4,
  'Chandele desert like fake',
  'Drinks and creams',
  'https://images.unsplash.com/photo-1589617492681-91b73d2e358c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["400ml de água","40g de açúcar demerara","30g de achocolatado em pó","15g de amido de milho","3g de ágar-ágar"]'::jsonb,
  '["1 - Em uma panela, misture todos os ingredientes e cozinhe até levantar fervura. Deixe esfriar;","2 - Bata a mistura no liquidificador até obter um creme homogêneo;","3 - Disponha em taças individuais e leve à geladeira."]'::jsonb,
  '4 taças',
  '[{"totalEnergy":324,"servingEnergy":81},{"totalCarbs":79,"servingCarbs":20},{"totalProteins":1.1,"servingProteins":0.3},{"totalLipids":0,"servingLipids":0},{"totalSodium":45,"servingSodium":11},{"totalPotassium":1,"servingPotassium":0}]'::jsonb,
  '[{"leucine":45,"totalLeucine":90,"servingLeucine":23},{"tirosine":20,"totalTirosine":40,"servingTirosine":10},{"fenil":30,"totalFenil":60,"servingFenil":15},{"metiotine":5,"totalMetiotine":10,"servingMetiotine":3}]'::jsonb,
  '{"en-US":{"name":"Chandele Desert Like Fake","ingredients":["400ml of water","40g of demerara sugar","30g of achocolatado em pó","15g of cornstarch","3g of agar-agar"],"preparation":["1 - In a pan, mix all the ingredients and cook until the mixture boils. Let it cool;","2 - beat the mixture in the blender until you get a homogeneous cream;","3 - Place in individual cups and chill."],"servings":"4 glasses"}}'::jsonb
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
  5,
  'Inhaminho with jam',
  'Drinks and creams',
  'https://images.unsplash.com/photo-1586727579295-62136fbb6082?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["100g de inhame descascado e cozido","50g de morango congelado","45g de geleia de morango","30g de açúcar refinado"]'::jsonb,
  '["1 - Cozinhe o inhame e bata no liquidificador com os morangos e o açúcar;","2 - Em potinhos faça uma camada com o creme e coloque a geleia por cima;","3 - Leve para gelar e sirva."]'::jsonb,
  '3 taças',
  '[{"totalEnergy":357,"servingEnergy":119},{"totalCarbs":90,"servingCarbs":30},{"totalProteins":2.11,"servingProteins":0.7},{"totalLipids":0,"servingLipids":0},{"totalSodium":27,"servingSodium":9},{"totalPotassium":788,"servingPotassium":263}]'::jsonb,
  '[{"leucine":43,"totalLeucine":130,"servingLeucine":43},{"tirosine":20,"totalTirosine":60,"servingTirosine":20},{"fenil":30,"totalFenil":90,"servingFenil":30},{"metiotine":7,"totalMetiotine":20,"servingMetiotine":7}]'::jsonb,
  '{"en-US":{"name":"Inhaminho With Jam","ingredients":["100g of peeled and cooked inhame","50g of strawberry frozen","45g of strawberry jam","30g of refined sugar"],"preparation":["1 - Cook the inhame and beat in the blender with the frozen strawberries and the sugar;","2 - In pots make a layer with the cream and place the jam on top;","3 - Chill and serve."],"servings":"3 pots"}}'::jsonb
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
  6,
  'Fake yogurt',
  'Drinks and creams',
  'https://images.unsplash.com/photo-1597249511949-67fd2ca3d3da?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["200g de leite de coco","50ml de água","40g de açúcar","20g de pó para preparo de bebida sabor morango","10g de amido de milho","2g de essência de baunilha","0,5g de ágar-ágar"]'::jsonb,
  '["Modo de preparo do creme","1 - Em uma panela, misture todos os ingredientes. Leve ao fogo e cozinhe até engrossar;","2 - Leve à geladeira até gelar.","Modo de preparo da calda","3 - Em uma panela, coloque os morangos picados, o açúcar, a água e o ágar-ágar;","4 - Leve ao fogo até adquirir consistência;","5 - Leve à geladeira até gelar.","Montagem","Após gelados, distribua o creme e calda em 5 taças individuais. A calda pode ficar por cima do creme ou por baixo do creme."]'::jsonb,
  '5 taças',
  '[{"totalEnergy":925,"servingEnergy":185},{"totalCarbs":139,"servingCarbs":28},{"totalProteins":5.3,"servingProteins":1.1},{"totalLipids":43,"servingLipids":9},{"totalSodium":30,"servingSodium":6},{"totalPotassium":777,"servingPotassium":155}]'::jsonb,
  '[{"leucine":43,"totalLeucine":370,"servingLeucine":74},{"tirosine":20,"totalTirosine":170,"servingTirosine":34},{"fenil":28,"totalFenil":240,"servingFenil":48},{"metiotine":9,"totalMetiotine":80,"servingMetiotine":16}]'::jsonb,
  '{"en-US":{"name":"Fake Yogurt","ingredients":["200g of coconut milk","50ml of water","40g of sugar","20g of strawberry flavor powder","10g of cornstarch","2g of vanilla essence","0,5g of agar-agar"],"preparation":["Mode of preparation of the cream","1 - Em uma pan, mix todos os ingredientes. Leve ao fogo e cozinhe até thicken;","2 - let it cool in the refrigerator until it is chilled.","Mode of preparation of the syrup","3 - in a pan, place the strawberries, the sugar, the water and the agar-agar;","4 - bring to the boil until it thickens;","5 - let it cool in the refrigerator until it is chilled.","Assembly","After the gel, distribute the cream and syrup in 5 individual cups. The syrup can be on top of the cream or below the cream."],"servings":"5 cups"}}'::jsonb
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
  7,
  'Strawberry and banana vitamin',
  'Drinks and creams',
  'https://images.unsplash.com/photo-1685967836529-b0e8d6938227?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["250g de bebida vegetal a base de arroz","70g de morango","60g de banana prata"]'::jsonb,
  '["1 - No liquidificador, coloque a bebida de arroz, os morangos e banana picados;","2 - Bata até obter uma mistura homogênea","3 - Sirva gelado, se preferir"]'::jsonb,
  '2 copos',
  '[{"totalEnergy":262,"servingEnergy":131},{"totalCarbs":56,"servingCarbs":28},{"totalProteins":2,"servingProteins":1},{"totalLipids":5,"servingLipids":2},{"totalSodium":81,"servingSodium":41},{"totalPotassium":354,"servingPotassium":177}]'::jsonb,
  '[{"leucine":46,"totalLeucine":160,"servingLeucine":80},{"tirosine":20,"totalTirosine":70,"servingTirosine":35},{"fenil":26,"totalFenil":90,"servingFenil":45},{"metiotine":8,"totalMetiotine":30,"servingMetiotine":15}]'::jsonb,
  '{"en-US":{"name":"Strawberry And Banana Vitamin","ingredients":["250g of rice beverage (rice beverage)","70g of strawberry","60g of silver banana"],"preparation":["1 - in a blender, place the rice beverage, the strawberries and the sliced banana;","2 - beat until you get a homogeneous mixture","3 - serve cold, if desired"],"servings":"2 glasses"}}'::jsonb
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
  8,
  'Crispy tapioca biscuit',
  'Biscuits and crackers',
  'https://images.unsplash.com/photo-1608070735103-35aa01048704?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["80g de tapioca granulada","20g de açúcar","20g de achocolatado","10g de margarina sem sal","10g de creme de leite","55ml de água quente","120g de gotas de chocolate "]'::jsonb,
  '["1 - Misture todos os ingredientes, exceto as gotas de chocolate, e deixe hidratando por cerca de 10 minutos para que a tapioca fique mais macia;","2 - Abra a massa entre papel manteiga e use um copo para formatar os biscoitos;","3 - Unte uma forma com margarina e disponha os biscoitos;","4 - Leve para assar no forno a 200°C por aproximadamente 20 minutos;","5 - Derreta as gotas de chocolate em banho-maria;","6 - Mergulhe os biscoitos já frios no chocolate e coloque sobre um pedaço de papel manteiga para não grudar"]'::jsonb,
  '10 unidades',
  '[{"totalEnergy":1122,"servingEnergy":112},{"totalCarbs":191,"servingCarbs":19},{"totalProteins":1.7,"servingProteins":0.2},{"totalLipids":39,"servingLipids":4},{"totalSodium":65,"servingSodium":6},{"totalPotassium":21,"servingPotassium":2}]'::jsonb,
  '[{"leucine":45,"totalLeucine":130,"servingLeucine":13},{"tirosine":21,"totalTirosine":60,"servingTirosine":6},{"fenil":27,"totalFenil":80,"servingFenil":8},{"metiotine":7,"totalMetiotine":20,"servingMetiotine":2}]'::jsonb,
  '{"en-US":{"name":"Crispy Tapioca Biscuit","ingredients":["80g of tapioca granulated","20g of sugar","20g of chocolate powder","10g of margarine without salt","10g of cream of milk","55ml of hot water","120g of chocolate drops"],"preparation":["1 - mix all the ingredients, except the chocolate drops, and let it hydrate for approximately 10 minutes so that the tapioca becomes softer;","2 - open the dough between butter paper and use a cup to format the cookies;","3 - grease a form with butter and place the cookies;","4 - bake in the oven at 200°C for approximately 20 minutes;","5 - melt the chocolate drops in a water bath;","6 - place the cold cookies in the chocolate and place a piece of butter paper to prevent sticking"],"servings":"10 units"}}'::jsonb
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
  9,
  'Coconut sequilho',
  'Biscuits and crackers',
  'https://images.unsplash.com/photo-1590671886400-8f8088b97cb0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["40g de açúcar refinado","180g de amido de milho","40g de farinha sem glúten","150g de margarina sem sal","12g de coco seco ralado"]'::jsonb,
  '["1 - Em um recipiente, junte todos os ingredientes e amasse com as mãos até obter uma massa homogênea;","2 - Abra a massa por cima de um plástico e com o auxílio de um rolo;","3 - Corte no formato que desejar e disponha em uma assadeira;","4 - Asse a 180°C por aproximadamente 30 minutos ou até os biscoitos ficarem dourados."]'::jsonb,
  '40 unidades',
  '[{"totalEnergy":1547,"servingEnergy":39},{"totalCarbs":242,"servingCarbs":6},{"totalProteins":2.1,"servingProteins":0.1},{"totalLipids":62,"servingLipids":2},{"totalSodium":922,"servingSodium":23},{"totalPotassium":71,"servingPotassium":2}]'::jsonb,
  '[{"leucine":46,"totalLeucine":200,"servingLeucine":5},{"tirosine":16,"totalTirosine":70,"servingTirosine":2},{"fenil":26,"totalFenil":110,"servingFenil":3},{"metiotine":12,"totalMetiotine":50,"servingMetiotine":1}]'::jsonb,
  '{"en-US":{"name":"Coconut Sequilho Biscuit","ingredients":["40g of refined sugar","180g of cornstarch","40g of gluten-free flour","150g of margarine without salt","12g of coconut powder"],"preparation":["1 - in a container, mix all the ingredients and knead with the hands until you get a homogeneous mass;","2 - open the dough between plastic and use a roll to cut in the desired format;","3 - place in a baking sheet;","4 - bake at 180°C for approximately 30 minutes or until the cookies are golden."],"servings":"40 units"}}'::jsonb
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
  10,
  'Honey biscuits',
  'Biscuits and crackers',
  'https://plus.unsplash.com/premium_photo-1661768562001-14933dda60d9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["60g de açúcar refinado","15g de achocolatado em pó","180g de farinha hipoproteica","80g de amido de milho","5g de canela em pó","36g de mel","60g de margarina sem sal","14g de óleo vegetal","10g de uva passa picada","5g fermento químico em pó","8g de vinagre de maçã"]'::jsonb,
  '["1 - Misture a margarina com o óleo e acrescente os ingredientes secos;","2 - Misture o vinagre com o fermento e adicione aos demais ingredientes;","3 - Sove a massa até ficar homogênea;","4 - Abra a massa entre dois plásticos com o auxílio de um rolo e corte do formato que desejar;","5 - Asse em forno pré-aquecido, não muito quente, até dourar embaixo;","6 - Deixe esfriar cerca de 15 minutos antes de servir."]'::jsonb,
  '14 unidades',
  '[{"totalEnergy":1770,"servingEnergy":126},{"totalCarbs":339,"servingCarbs":24},{"totalProteins":1.9,"servingProteins":0.1},{"totalLipids":37,"servingLipids":3},{"totalSodium":373,"servingSodium":27},{"totalPotassium":137,"servingPotassium":10}]'::jsonb,
  '[{"leucine":45,"totalLeucine":140,"servingLeucine":10},{"tirosine":19,"totalTirosine":60,"servingTirosine":4},{"fenil":26,"totalFenil":80,"servingFenil":6},{"metiotine":10,"totalMetiotine":30,"servingMetiotine":2}]'::jsonb,
  '{"en-US":{"name":"Honey Biscuits","ingredients":["60g of refined sugar","15g of chocolate powder","180g of gluten-free flour","80g of cornstarch","5g of cinnamon powder","36g of honey","60g of margarine without salt","14g of vegetable oil","10g of raisins","5g of chemical yeast","8g of apple vinegar"],"preparation":["1 - mix the margerine with the oil and add the dry ingredients;","2 - mix the vinegar with the yeast and add the other ingredients;","3 - knead the dough until it is homogeneous;","4 - open the dough between two plastic and use a roll to cut in the desired format;","5 - bake in the oven pre-heated, not too hot, until it is golden;","6 - let it cool for approximately 15 minutes before serving."],"servings":"14 units"}}'::jsonb
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