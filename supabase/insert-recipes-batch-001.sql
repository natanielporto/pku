-- Batch 1 (recipes 1 to 10)

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
  '{"en-US":{"name":"Bebida de morango tipo iogurte","ingredients":["480g of bebida vegetal a base of arroz","60g of sugar demerara","50g of strawberry frozen","15g of juice of lemon","5g of ágar-ágar"],"preparation":["1 - Em uma pan, mix 380g da bebida vegetal junto com o sugar e o ágar-ágar, deixe boil por uns 2 minutos mexendo sempre;","2 - Leve à refrigerator por aproximadamente uma hora para gel;","3 - cut os morangos em pedaços e beat junto com creme gelado, o juice of lemon e o restante da bebida vegetal com o auxílio of um mixer ou blender;","4 - Coloque em cups para serve."],"servings":"2 cups"}}'::jsonb
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
  'Flan de baunilha',
  'Bebidas e Cremes',
  'https://images.unsplash.com/photo-1586601399668-cd0c1484cd44?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["250ml de água","50g de açúcar","40g de creme de leite","30g de flan de baunilha em pó"]'::jsonb,
  '["1 - Coloque todos os ingredientes em uma panela pequena e leve ao fogo baixo, mexa até engrossar;","2 - Distribua a mistura em tacinhas e leve para gelar;","3 - Faça uma calda de caramelo à parte, se desejar."]'::jsonb,
  '3 taças',
  '[{"totalEnergy":406,"servingEnergy":135},{"totalCarbs":80,"servingCarbs":27},{"totalProteins":1,"servingProteins":0.3},{"totalLipids":10,"servingLipids":3},{"totalSodium":56,"servingSodium":19},{"totalPotassium":47,"servingPotassium":16}]'::jsonb,
  '[{"leucine":45,"totalLeucine":100,"servingLeucine":33},{"tirosine":23,"totalTirosine":50,"servingTirosine":17},{"fenil":23,"totalFenil":50,"servingFenil":17},{"metiotine":9,"totalMetiotine":20,"servingMetiotine":7}]'::jsonb,
  '{"en-US":{"name":"Flan de baunilha","ingredients":["250ml of água","50g of sugar","40g of creme of leite","30g of flan of vanilla em pó"],"preparation":["1 - Coloque todos os ingredientes em uma pan pequena e leve ao low heat, mexa até thicken;","2 - Distribua a mistura em cups e leve para chill;","3 - Faça uma syrup of caramel à parte, se desejar."],"servings":"3 cups"}}'::jsonb
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
  'Flan de morango',
  'Bebidas e Cremes',
  'https://images.unsplash.com/photo-1543264228-460e284028a7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["15g de creme de leite","50ml de água","20g de açúcar","75g de morango","4g de ágar-ágar"]'::jsonb,
  '["1 - Em uma panela pequena, coloque a água e o ágar-ágar para ferver mexendo sempre;","2 - Bata os morangos picados, o creme de leite, o açúcar e a água gelatinizada em um copo com o auxílio de um mixer;","3 - Disponha em potinhos individuais para servir"]'::jsonb,
  '2 potinhos',
  '[{"totalEnergy":176,"servingEnergy":88},{"totalCarbs":36,"servingCarbs":18},{"totalProteins":0.8,"servingProteins":0.4},{"totalLipids":4,"servingLipids":2},{"totalSodium":7,"servingSodium":3},{"totalPotassium":142,"servingPotassium":71}]'::jsonb,
  '[{"leucine":46,"totalLeucine":60,"servingLeucine":30},{"tirosine":23,"totalTirosine":30,"servingTirosine":15},{"fenil":23,"totalFenil":30,"servingFenil":15},{"metiotine":8,"totalMetiotine":10,"servingMetiotine":5}]'::jsonb,
  '{"en-US":{"name":"Flan de morango","ingredients":["15g of creme of leite","50ml of água","20g of sugar","75g of strawberry","4g of ágar-ágar"],"preparation":["1 - Em uma pan pequena, coloque a água e o ágar-ágar para boil mexendo sempre;","2 - beat os morangos picados, o creme of leite, o sugar e a água gelatinizada em um copo com o auxílio of um mixer;","3 - Disponha em potinhos individuais para serve"],"servings":"2 potinhos"}}'::jsonb
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
  'Chandele fake',
  'Bebidas e Cremes',
  'https://images.unsplash.com/photo-1589617492681-91b73d2e358c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["400ml de água","40g de açúcar demerara","30g de achocolatado em pó","15g de amido de milho","3g de ágar-ágar"]'::jsonb,
  '["1 - Em uma panela, misture todos os ingredientes e cozinhe até levantar fervura. Deixe esfriar;","2 - Bata a mistura no liquidificador até obter um creme homogêneo;","3 - Disponha em taças individuais e leve à geladeira."]'::jsonb,
  '4 taças',
  '[{"totalEnergy":324,"servingEnergy":81},{"totalCarbs":79,"servingCarbs":20},{"totalProteins":1.1,"servingProteins":0.3},{"totalLipids":0,"servingLipids":0},{"totalSodium":45,"servingSodium":11},{"totalPotassium":1,"servingPotassium":0}]'::jsonb,
  '[{"leucine":45,"totalLeucine":90,"servingLeucine":23},{"tirosine":20,"totalTirosine":40,"servingTirosine":10},{"fenil":30,"totalFenil":60,"servingFenil":15},{"metiotine":5,"totalMetiotine":10,"servingMetiotine":3}]'::jsonb,
  '{"en-US":{"name":"Chandele fake","ingredients":["400ml of água","40g of sugar demerara","30g of achocolatado em pó","15g of amido of milho","3g of ágar-ágar"],"preparation":["1 - Em uma pan, mix todos os ingredientes e cozinhe até levantar fervura. Deixe esfriar;","2 - beat a mistura no blender até obter um creme homogêneo;","3 - Disponha em cups individuais e leve à refrigerator."],"servings":"4 cups"}}'::jsonb
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
  'Inhaminho com geléia',
  'Bebidas e Cremes',
  'https://images.unsplash.com/photo-1586727579295-62136fbb6082?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["100g de inhame descascado e cozido","50g de morango congelado","45g de geleia de morango","30g de açúcar refinado"]'::jsonb,
  '["1 - Cozinhe o inhame e bata no liquidificador com os morangos e o açúcar;","2 - Em potinhos faça uma camada com o creme e coloque a geleia por cima;","3 - Leve para gelar e sirva."]'::jsonb,
  '3 taças',
  '[{"totalEnergy":357,"servingEnergy":119},{"totalCarbs":90,"servingCarbs":30},{"totalProteins":2.11,"servingProteins":0.7},{"totalLipids":0,"servingLipids":0},{"totalSodium":27,"servingSodium":9},{"totalPotassium":788,"servingPotassium":263}]'::jsonb,
  '[{"leucine":43,"totalLeucine":130,"servingLeucine":43},{"tirosine":20,"totalTirosine":60,"servingTirosine":20},{"fenil":30,"totalFenil":90,"servingFenil":30},{"metiotine":7,"totalMetiotine":20,"servingMetiotine":7}]'::jsonb,
  '{"en-US":{"name":"Inhaminho com geléia","ingredients":["100g of inhame descascado e cozido","50g of strawberry frozen","45g of geleia of strawberry","30g of sugar refinado"],"preparation":["1 - Cozinhe o inhame e beat no blender com os morangos e o sugar;","2 - Em potinhos faça uma camada com o creme e coloque a geleia por cima;","3 - Leve para chill e sirva."],"servings":"3 cups"}}'::jsonb
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
  'Iogurte fake',
  'Bebidas e Cremes',
  'https://images.unsplash.com/photo-1597249511949-67fd2ca3d3da?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["200g de leite de coco","50ml de água","40g de açúcar","20g de pó para preparo de bebida sabor morango","10g de amido de milho","2g de essência de baunilha","0,5g de ágar-ágar"]'::jsonb,
  '["Modo de preparo do creme","1 - Em uma panela, misture todos os ingredientes. Leve ao fogo e cozinhe até engrossar;","2 - Leve à geladeira até gelar.","Modo de preparo da calda","3 - Em uma panela, coloque os morangos picados, o açúcar, a água e o ágar-ágar;","4 - Leve ao fogo até adquirir consistência;","5 - Leve à geladeira até gelar.","Montagem","Após gelados, distribua o creme e calda em 5 taças individuais. A calda pode ficar por cima do creme ou por baixo do creme."]'::jsonb,
  '5 taças',
  '[{"totalEnergy":925,"servingEnergy":185},{"totalCarbs":139,"servingCarbs":28},{"totalProteins":5.3,"servingProteins":1.1},{"totalLipids":43,"servingLipids":9},{"totalSodium":30,"servingSodium":6},{"totalPotassium":777,"servingPotassium":155}]'::jsonb,
  '[{"leucine":43,"totalLeucine":370,"servingLeucine":74},{"tirosine":20,"totalTirosine":170,"servingTirosine":34},{"fenil":28,"totalFenil":240,"servingFenil":48},{"metiotine":9,"totalMetiotine":80,"servingMetiotine":16}]'::jsonb,
  '{"en-US":{"name":"Iogurte fake","ingredients":["200g of leite of coco","50ml of água","40g of sugar","20g of pó para preparo of bebida sabor strawberry","10g of amido of milho","2g of essência of vanilla","0,5g of ágar-ágar"],"preparation":["Modo of preparo do creme","1 - Em uma pan, mix todos os ingredientes. Leve ao fogo e cozinhe até thicken;","2 - Leve à refrigerator até chill.","Modo of preparo da syrup","3 - Em uma pan, coloque os morangos picados, o sugar, a água e o ágar-ágar;","4 - Leve ao fogo até adquirir consistência;","5 - Leve à refrigerator até chill.","Montagem","Após gelados, distribua o creme e syrup em 5 cups individuais. A syrup pode ficar por cima do creme ou por baixo do creme."],"servings":"5 cups"}}'::jsonb
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
  'Vitamina de morango e banana',
  'Bebidas e Cremes',
  'https://images.unsplash.com/photo-1685967836529-b0e8d6938227?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["250g de bebida vegetal a base de arroz","70g de morango","60g de banana prata"]'::jsonb,
  '["1 - No liquidificador, coloque a bebida de arroz, os morangos e banana picados;","2 - Bata até obter uma mistura homogênea","3 - Sirva gelado, se preferir"]'::jsonb,
  '2 copos',
  '[{"totalEnergy":262,"servingEnergy":131},{"totalCarbs":56,"servingCarbs":28},{"totalProteins":2,"servingProteins":1},{"totalLipids":5,"servingLipids":2},{"totalSodium":81,"servingSodium":41},{"totalPotassium":354,"servingPotassium":177}]'::jsonb,
  '[{"leucine":46,"totalLeucine":160,"servingLeucine":80},{"tirosine":20,"totalTirosine":70,"servingTirosine":35},{"fenil":26,"totalFenil":90,"servingFenil":45},{"metiotine":8,"totalMetiotine":30,"servingMetiotine":15}]'::jsonb,
  '{"en-US":{"name":"Vitamina de morango e banana","ingredients":["250g of bebida vegetal a base of arroz","70g of strawberry","60g of banana prata"],"preparation":["1 - No blender, coloque a bebida of arroz, os morangos e banana picados;","2 - beat até obter uma mistura homogênea","3 - Sirva gelado, se preferir"],"servings":"2 copos"}}'::jsonb
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
  'Biscoitinho crocante de tapioca',
  'Biscoitos e bolachas',
  'https://images.unsplash.com/photo-1608070735103-35aa01048704?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["80g de tapioca granulada","20g de açúcar","20g de achocolatado","10g de margarina sem sal","10g de creme de leite","55ml de água quente","120g de gotas de chocolate "]'::jsonb,
  '["1 - Misture todos os ingredientes, exceto as gotas de chocolate, e deixe hidratando por cerca de 10 minutos para que a tapioca fique mais macia;","2 - Abra a massa entre papel manteiga e use um copo para formatar os biscoitos;","3 - Unte uma forma com margarina e disponha os biscoitos;","4 - Leve para assar no forno a 200°C por aproximadamente 20 minutos;","5 - Derreta as gotas de chocolate em banho-maria;","6 - Mergulhe os biscoitos já frios no chocolate e coloque sobre um pedaço de papel manteiga para não grudar"]'::jsonb,
  '10 unidades',
  '[{"totalEnergy":1122,"servingEnergy":112},{"totalCarbs":191,"servingCarbs":19},{"totalProteins":1.7,"servingProteins":0.2},{"totalLipids":39,"servingLipids":4},{"totalSodium":65,"servingSodium":6},{"totalPotassium":21,"servingPotassium":2}]'::jsonb,
  '[{"leucine":45,"totalLeucine":130,"servingLeucine":13},{"tirosine":21,"totalTirosine":60,"servingTirosine":6},{"fenil":27,"totalFenil":80,"servingFenil":8},{"metiotine":7,"totalMetiotine":20,"servingMetiotine":2}]'::jsonb,
  '{"en-US":{"name":"Biscoitinho crocante de tapioca","ingredients":["80g of tapioca granulada","20g of sugar","20g of achocolatado","10g of margarina sem sal","10g of creme of leite","55ml of água quente","120g of gotas of chocolate "],"preparation":["1 - mix todos os ingredientes, exceto as gotas of chocolate, e deixe hidratando por cerca of 10 minutos para que a tapioca fique mais macia;","2 - Abra a massa entre papel manteiga e use um copo para formatar os biscoitos;","3 - Unte uma forma com margarina e disponha os biscoitos;","4 - Leve para assar no forno a 200°C por aproximadamente 20 minutos;","5 - Derreta as gotas of chocolate em banho-maria;","6 - Mergulhe os biscoitos já frios no chocolate e coloque sobre um pedaço of papel manteiga para não grudar"],"servings":"10 unidades"}}'::jsonb
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
  'Sequilho de coco',
  'Biscoitos e bolachas',
  'https://images.unsplash.com/photo-1590671886400-8f8088b97cb0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["40g de açúcar refinado","180g de amido de milho","40g de farinha sem glúten","150g de margarina sem sal","12g de coco seco ralado"]'::jsonb,
  '["1 - Em um recipiente, junte todos os ingredientes e amasse com as mãos até obter uma massa homogênea;","2 - Abra a massa por cima de um plástico e com o auxílio de um rolo;","3 - Corte no formato que desejar e disponha em uma assadeira;","4 - Asse a 180°C por aproximadamente 30 minutos ou até os biscoitos ficarem dourados."]'::jsonb,
  '40 unidades',
  '[{"totalEnergy":1547,"servingEnergy":39},{"totalCarbs":242,"servingCarbs":6},{"totalProteins":2.1,"servingProteins":0.1},{"totalLipids":62,"servingLipids":2},{"totalSodium":922,"servingSodium":23},{"totalPotassium":71,"servingPotassium":2}]'::jsonb,
  '[{"leucine":46,"totalLeucine":200,"servingLeucine":5},{"tirosine":16,"totalTirosine":70,"servingTirosine":2},{"fenil":26,"totalFenil":110,"servingFenil":3},{"metiotine":12,"totalMetiotine":50,"servingMetiotine":1}]'::jsonb,
  '{"en-US":{"name":"Sequilho de coco","ingredients":["40g of sugar refinado","180g of amido of milho","40g of farinha sem glúten","150g of margarina sem sal","12g of coco seco ralado"],"preparation":["1 - Em um recipiente, junte todos os ingredientes e amasse com as mãos até obter uma massa homogênea;","2 - Abra a massa por cima of um plástico e com o auxílio of um rolo;","3 - cut no formato que desejar e disponha em uma assadeira;","4 - Asse a 180°C por aproximadamente 30 minutos ou até os biscoitos ficarem dourados."],"servings":"40 unidades"}}'::jsonb
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
  'Bolachas de mel',
  'Biscoitos e bolachas',
  'https://plus.unsplash.com/premium_photo-1661768562001-14933dda60d9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["60g de açúcar refinado","15g de achocolatado em pó","180g de farinha hipoproteica","80g de amido de milho","5g de canela em pó","36g de mel","60g de margarina sem sal","14g de óleo vegetal","10g de uva passa picada","5g fermento químico em pó","8g de vinagre de maçã"]'::jsonb,
  '["1 - Misture a margarina com o óleo e acrescente os ingredientes secos;","2 - Misture o vinagre com o fermento e adicione aos demais ingredientes;","3 - Sove a massa até ficar homogênea;","4 - Abra a massa entre dois plásticos com o auxílio de um rolo e corte do formato que desejar;","5 - Asse em forno pré-aquecido, não muito quente, até dourar embaixo;","6 - Deixe esfriar cerca de 15 minutos antes de servir."]'::jsonb,
  '14 unidades',
  '[{"totalEnergy":1770,"servingEnergy":126},{"totalCarbs":339,"servingCarbs":24},{"totalProteins":1.9,"servingProteins":0.1},{"totalLipids":37,"servingLipids":3},{"totalSodium":373,"servingSodium":27},{"totalPotassium":137,"servingPotassium":10}]'::jsonb,
  '[{"leucine":45,"totalLeucine":140,"servingLeucine":10},{"tirosine":19,"totalTirosine":60,"servingTirosine":4},{"fenil":26,"totalFenil":80,"servingFenil":6},{"metiotine":10,"totalMetiotine":30,"servingMetiotine":2}]'::jsonb,
  '{"en-US":{"name":"Bolachas de mel","ingredients":["60g of sugar refinado","15g of achocolatado em pó","180g of farinha hipoproteica","80g of amido of milho","5g of canela em pó","36g of mel","60g of margarina sem sal","14g of óleo vegetal","10g of uva passa picada","5g fermento químico em pó","8g of vinagre of maçã"],"preparation":["1 - mix a margarina com o óleo e acrescente os ingredientes secos;","2 - mix o vinagre com o fermento e adicione aos demais ingredientes;","3 - Sove a massa até ficar homogênea;","4 - Abra a massa entre dois plásticos com o auxílio of um rolo e cut do formato que desejar;","5 - Asse em forno pré-aquecido, não muito quente, até dourar embaixo;","6 - Deixe esfriar cerca of 15 minutos antes of serve."],"servings":"14 unidades"}}'::jsonb
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