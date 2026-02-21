-- Batch 2 (recipes 11 to 20)

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
  '{"en-US":{"name":"Bolachinhas com goiabada","ingredients":["100g of farinha sem gluten","55g of sugar demerara","50g of margarina sem sal","30g of creme of leite","5g of fermento químico em pó","40g of amido of milho","5g of emulsificante","3g of liga neutra","1g of essência of vanilla","42g of goiabada em quadradinhos"],"preparation":["1 - Em um recipiente coloque todos os ingredientes e mix com uma espátula e depois amasse com as mãos até a massa desgrudar das mãos;","2 - Coloque a massa entre 2 plásticos e abra-a com o auxílio of um rolo;","3 - Para fazer beliscões, cut a massa com um cortador redondo, coloque um pedaço of goiabada no meio e junte as laterais;","4 - Outra opção é moldar a massa em bolinhas e achatar levemente colocando o pedaço of goiabada no centro;","5 - Disponha os biscoitos em uma assadeira e asse em forno a 180°C por aproximadamente 15 minutos."],"servings":"21 unidades"}}'::jsonb
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
  12,
  'Cavaquinho sabor orégano',
  'Biscoitos e bolachas',
  'https://plus.unsplash.com/premium_photo-1668622419261-9ca0a4b25f51?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["110ml de leite de coco","50ml de água","20g de óleo vegetal","15g de açúcar","5g de sal","0,5g de orégano seco","3g de vinagre de maçã","5g de emulsificante","5g de fermento químico em pó","250g de farinha hipoproteica","Óleo para fritar os biscoitos"]'::jsonb,
  '["1 - Em um recipiente, adicione os ingredientes e coloque a farinha aos poucos até dar o ponto de sovar;","2 - Molde os biscoitos e leve para fritar em óleo bem quente, virando para dourar de ambos os lados;","3 - Retire da panela e envolva em papel absorvente para retirar o excesso de óleo;","4 - Sirva quente."]'::jsonb,
  '30 unidades',
  '[{"totalEnergy":1636,"servingEnergy":55},{"totalCarbs":230,"servingCarbs":8},{"totalProteins":3.5,"servingProteins":0.1},{"totalLipids":81,"servingLipids":3},{"totalSodium":1952,"servingSodium":65},{"totalPotassium":246,"servingPotassium":8}]'::jsonb,
  '[{"leucine":52,"totalLeucine":260,"servingLeucine":9},{"tirosine":2,"totalTirosine":11,"servingTirosine":2},{"fenil":32,"totalFenil":160,"servingFenil":5},{"metiotine":14,"totalMetiotine":70,"servingMetiotine":0}]'::jsonb,
  '{"en-US":{"name":"Cavaquinho sabor orégano","ingredients":["110ml of leite of coco","50ml of água","20g of óleo vegetal","15g of sugar","5g of sal","0,5g of orégano seco","3g of vinagre of maçã","5g of emulsificante","5g of fermento químico em pó","250g of farinha hipoproteica","Óleo para fritar os biscoitos"],"preparation":["1 - Em um recipiente, adicione os ingredientes e coloque a farinha aos poucos até dar o ponto of sovar;","2 - Molde os biscoitos e leve para fritar em óleo bem quente, virando para dourar of ambos os lados;","3 - Retire da pan e envolva em papel absorvente para retirar o excesso of óleo;","4 - Sirva quente."],"servings":"30 unidades"}}'::jsonb
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
  13,
  'Cookie de banana',
  'Biscoitos e bolachas',
  'https://images.unsplash.com/photo-1588070141852-b6bed371e15f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["80g de banana nanica","65g de açúcar demerara","125g de amido de milho","65g de margarina sem sal","40g de farinha sem glúten","1g de essência de baunilha","10g de fermento químico em pó","0,5g de canela em pó","30g de uva passa"]'::jsonb,
  '["1 - Amasse a banana e acrescente os demais ingredientes, deixe as uvas passas por último;","2 - Misture com uma colher e depois amasse com as mãos até que a massa fique homogênea;","3 - Separe a massa em 20 bolinhas;","4 - Coloque as bolinhas em uma assadeira e achate levemente com um garfo;","5 - Asse a 200°C por aproximadamente 20 minutos ou até dourar embaixo. "]'::jsonb,
  '20 unidades',
  '[{"totalEnergy":1527,"servingEnergy":76},{"totalCarbs":256,"servingCarbs":13},{"totalProteins":2.3,"servingProteins":0.1},{"totalLipids":25,"servingLipids":1},{"totalSodium":411,"servingSodium":21},{"totalPotassium":573,"servingPotassium":29}]'::jsonb,
  '[{"leucine":50,"totalLeucine":160,"servingLeucine":8},{"tirosine":16,"totalTirosine":50,"servingTirosine":3},{"fenil":25,"totalFenil":80,"servingFenil":4},{"metiotine":9,"totalMetiotine":30,"servingMetiotine":2}]'::jsonb,
  '{"en-US":{"name":"Cookie de banana","ingredients":["80g of banana nanica","65g of sugar demerara","125g of amido of milho","65g of margarina sem sal","40g of farinha sem glúten","1g of essência of vanilla","10g of fermento químico em pó","0,5g of canela em pó","30g of uva passa"],"preparation":["1 - Amasse a banana e acrescente os demais ingredientes, deixe as uvas passas por último;","2 - mix com uma colher e depois amasse com as mãos até que a massa fique homogênea;","3 - Separe a massa em 20 bolinhas;","4 - Coloque as bolinhas em uma assadeira e achate levemente com um garfo;","5 - Asse a 200°C por aproximadamente 20 minutos ou até dourar embaixo. "],"servings":"20 unidades"}}'::jsonb
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
  14,
  'Cookie de café com gotas de chocolate',
  'Biscoitos e bolachas',
  'https://images.unsplash.com/photo-1589988802149-7f9cb13a468e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["200g de farinha sem gúten","100g de margarina sem sal","50g de açúcar mascavo","30g de açúcar refinado","5g de café solúvel em pó","1g de essência de baunilha","1g de fermento químico em pó","1g de bicarbonato de sódio","50g de gotas de chocolate"]'::jsonb,
  '["1 - Em um recipiente, coloque o açúcar mascavo peneirado, o açúcar refinado, o café solúvel peneirado, a essência de baunilha e a margarina, mexa com uma colher até ficar homogêneo. É importante peneirar os ingredientes para evitar que se formem grumos na massa;","2 - Adicione a farinha, misture com uma colher e depois amasse com as mãos;","3 - Adicione o fermento, o bicarbonato e por último as gotas de chocolate, evitando manipular demais para não derreter as gotas com o calor das mãos;","4 - Formate os cookies pegando cerca de 40 gramas da massa, fazendo bolinhas e achatando na palma da mão.","5 - Coloque em uma forma retangular (não é necessário untar);","6 - Decore com gotas de chocolate por cima;","7 - Se o dia estiver muito quente, coloque a forma dentro da geladeira por uns 15 minutos antes de assar;","8 - Leve para assar em forno pré-aquecido a 200°C, por aproximadamente 20 minutos;","9 - Retire e espere esfriar para que os cookies fiquem mais firmes."]'::jsonb,
  '10 unidades',
  '[{"totalEnergy":1623,"servingEnergy":162},{"totalCarbs":286,"servingCarbs":29},{"totalProteins":3,"servingProteins":0.3},{"totalLipids":53,"servingLipids":5},{"totalSodium":622,"servingSodium":62},{"totalPotassium":352,"servingPotassium":35}]'::jsonb,
  '[{"leucine":44,"totalLeucine":250,"servingLeucine":25},{"tirosine":18,"totalTirosine":100,"servingTirosine":10},{"fenil":27,"totalFenil":150,"servingFenil":15},{"metiotine":11,"totalMetiotine":60,"servingMetiotine":6}]'::jsonb,
  '{"en-US":{"name":"Cookie de café com gotas de chocolate","ingredients":["200g of farinha sem gúten","100g of margarina sem sal","50g of sugar mascavo","30g of sugar refinado","5g of café solúvel em pó","1g of essência of vanilla","1g of fermento químico em pó","1g of bicarbonato of sódio","50g of gotas of chocolate"],"preparation":["1 - Em um recipiente, coloque o sugar mascavo peneirado, o sugar refinado, o café solúvel peneirado, a essência of vanilla e a margarina, mexa com uma colher até ficar homogêneo. É importante peneirar os ingredientes para evitar que se formem grumos na massa;","2 - Adicione a farinha, mix com uma colher e depois amasse com as mãos;","3 - Adicione o fermento, o bicarbonato e por último as gotas of chocolate, evitando manipular demais para não derreter as gotas com o calor das mãos;","4 - Formate os cookies pegando cerca of 40 gramas da massa, fazendo bolinhas e achatando na palma da mão.","5 - Coloque em uma forma retangular (não é necessário untar);","6 - Decore com gotas of chocolate por cima;","7 - Se o dia estiver muito quente, coloque a forma dentro da refrigerator por uns 15 minutos antes of assar;","8 - Leve para assar em forno pré-aquecido a 200°C, por aproximadamente 20 minutos;","9 - Retire e espere esfriar para que os cookies fiquem mais firmes."],"servings":"10 unidades"}}'::jsonb
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
  15,
  'Cookie de chocolate',
  'Biscoitos e bolachas',
  'https://images.unsplash.com/photo-1558961363-fa8fdf82db35?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["50g de chocolate em pó","60g de farinha sem glúten","180g de amido de milho","1g de café solúvel em pó","30g de açúcar refinado","30g de açúcar mascavo","3g de fermento químico em pó","150g de margarina sem sal","20g de gotas e chocolate"]'::jsonb,
  '["1 - Em um recipiente, misture todos os ingredientes secos;","2 - Acrescente a margarina, misture bem e amasse com as mãos até atingir o ponto que seja possível modelar;","3 - Faça bolinhas, achate e decore com gotas de chocolate;","4 - Disponha em uma assadeira e asse em forno pré-aquecido a 200°C por aproximadamente 15 a 20 minutos;","5 - Atenção para não assar demais e os cookies ficarem duros."]'::jsonb,
  '22 unidades',
  '[{"totalEnergy":1921,"servingEnergy":87},{"totalCarbs":331,"servingCarbs":15},{"totalProteins":7.8,"servingProteins":0.4},{"totalLipids":65,"servingLipids":3},{"totalSodium":960,"servingSodium":44},{"totalPotassium":423,"servingPotassium":19}]'::jsonb,
  '[{"leucine":42,"totalLeucine":570,"servingLeucine":26},{"tirosine":22,"totalTirosine":290,"servingTirosine":13},{"fenil":28,"totalFenil":380,"servingFenil":17},{"metiotine":8,"totalMetiotine":110,"servingMetiotine":5}]'::jsonb,
  '{"en-US":{"name":"Cookie de chocolate","ingredients":["50g of chocolate em pó","60g of farinha sem glúten","180g of amido of milho","1g of café solúvel em pó","30g of sugar refinado","30g of sugar mascavo","3g of fermento químico em pó","150g of margarina sem sal","20g of gotas e chocolate"],"preparation":["1 - Em um recipiente, mix todos os ingredientes secos;","2 - Acrescente a margarina, mix bem e amasse com as mãos até atingir o ponto que seja possível modelar;","3 - Faça bolinhas, achate e decore com gotas of chocolate;","4 - Disponha em uma assadeira e asse em forno pré-aquecido a 200°C por aproximadamente 15 a 20 minutos;","5 - Atenção para não assar demais e os cookies ficarem duros."],"servings":"22 unidades"}}'::jsonb
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
  16,
  'Sequilho de limão',
  'Biscoitos e bolachas',
  'https://images.unsplash.com/photo-1424591185129-8a73a1111adf?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["60g de açúcar","160g de amido de milho","100g de margarina sem sal","2g de essência de baunilha","8g de suco de limão","5g de raspas de limão"]'::jsonb,
  '["1 - Pré-aqueça o forno à 200°C.","2 - Misture a margarina com o açúcar até que fique homogêneo e adicione o suco de limão, as raspas de limão, a essência de baunilha e o amido de milho;","3 - Com as mãos, amasse bem até formar uma massa;","4 - Faça bolinhas e passe o garfo levemente por cima para formar um desenho;","5 - Disponha em uma forma (não é necessário untar) e leve ao freezer por 5 minutos ou até ficarem mais firmes;","6 - Asse por cerca de 20 a 25 minutos ou até dourar levemente embaixo;","7 - Retire do forno e espere esfriar."]'::jsonb,
  '5 unidades',
  '[{"totalEnergy":1172,"servingEnergy":234},{"totalCarbs":207,"servingCarbs":41},{"totalProteins":0.5,"servingProteins":0.1},{"totalLipids":36,"servingLipids":7},{"totalSodium":615,"servingSodium":123},{"totalPotassium":18,"servingPotassium":4}]'::jsonb,
  '[{"leucine":55,"totalLeucine":60,"servingLeucine":12},{"tirosine":18,"totalTirosine":20,"servingTirosine":4},{"fenil":18,"totalFenil":20,"servingFenil":4},{"metiotine":9,"totalMetiotine":10,"servingMetiotine":2}]'::jsonb,
  '{"en-US":{"name":"Sequilho de limão","ingredients":["60g of sugar","160g of amido of milho","100g of margarina sem sal","2g of essência of vanilla","8g of juice of lemon","5g of raspas of lemon"],"preparation":["1 - Pré-aqueça o forno à 200°C.","2 - mix a margarina com o sugar até que fique homogêneo e adicione o juice of lemon, as raspas of lemon, a essência of vanilla e o amido of milho;","3 - Com as mãos, amasse bem até formar uma massa;","4 - Faça bolinhas e passe o garfo levemente por cima para formar um desenho;","5 - Disponha em uma forma (não é necessário untar) e leve ao freezer por 5 minutos ou até ficarem mais firmes;","6 - Asse por cerca of 20 a 25 minutos ou até dourar levemente embaixo;","7 - Retire do forno e espere esfriar."],"servings":"5 unidades"}}'::jsonb
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
  17,
  'Sequilho de maracujá',
  'Biscoitos e bolachas',
  'https://images.unsplash.com/photo-1612388307727-afe00578ca21?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["175g de amido de milho","100g de margarina sem sal","60g de açúcar refinado","20g de suco concentrado de maracujá","1g de essência de baunilha","Corante alimentício amarelo damasco (opcional)"]'::jsonb,
  '["1 - Misture bem a margarina com o açúcar;","2 - Adicione a essência, o suco de maracujá e o corante;","3 - Adicione o amido e amasse com as mãos até que a massa fique homogênea;","4 - Faça bolinhas de 15 gramas cada e disponha em uma assadeira (não é necessário untar);","5 - Passe levemente o garfo por cima de cada uma das bolinhas, formando um desenho;","6 - Leve para assar em forno pré-aquecido a 200°C por 20 a 25 minutos até dourar levemente embaixo;","7 - Retire do forno e espere esfriar."]'::jsonb,
  '25 unidades',
  '[{"totalEnergy":1239,"servingEnergy":50},{"totalCarbs":222,"servingCarbs":9},{"totalProteins":0.9,"servingProteins":0.04},{"totalLipids":36,"servingLipids":1},{"totalSodium":617,"servingSodium":25},{"totalPotassium":9,"servingPotassium":0}]'::jsonb,
  '[{"leucine":47,"totalLeucine":80,"servingLeucine":3},{"tirosine":18,"totalTirosine":30,"servingTirosine":1},{"fenil":23,"totalFenil":40,"servingFenil":2},{"metiotine":12,"totalMetiotine":20,"servingMetiotine":1}]'::jsonb,
  '{"en-US":{"name":"Sequilho de maracujá","ingredients":["175g of amido of milho","100g of margarina sem sal","60g of sugar refinado","20g of juice concentrado of maracujá","1g of essência of vanilla","Corante alimentício amarelo damasco (opcional)"],"preparation":["1 - mix bem a margarina com o sugar;","2 - Adicione a essência, o juice of maracujá e o corante;","3 - Adicione o amido e amasse com as mãos até que a massa fique homogênea;","4 - Faça bolinhas of 15 gramas cada e disponha em uma assadeira (não é necessário untar);","5 - Passe levemente o garfo por cima of cada uma das bolinhas, formando um desenho;","6 - Leve para assar em forno pré-aquecido a 200°C por 20 a 25 minutos até dourar levemente embaixo;","7 - Retire do forno e espere esfriar."],"servings":"25 unidades"}}'::jsonb
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
  18,
  'Bolinho de chuva',
  'Bolos e bolinhos',
  'https://images.unsplash.com/photo-1552417656-f5c5bbb00244?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["160g de farinha sem glúten","120g de creme de leite","50ml de água","100g de açúcar refinado","4g de liga neutra","10g de fermento químico em pó","Óleo vegetal para fritar","Canela em pó e açúcar para cobrir (opcional)"]'::jsonb,
  '["1 - Em um recipiente misture o creme de leite com a água;","2 - Acrescente os demais ingredientes até ficar homogêneo. A massa não deve ficar muito mole;","3 - Em uma panela ou frigideira, aquecer o óleo;","4 - Pegar a massa com uma colher de chá bem cheia e frite em óleo quente até dourar;","5 - Passe os bolinhos ainda quentes no açúcar e canela, se desejar."]'::jsonb,
  '20 unidades',
  '[{"totalEnergy":1289,"servingEnergy":64},{"totalCarbs":247,"servingCarbs":12},{"totalProteins":4.6,"servingProteins":0.2},{"totalLipids":33,"servingLipids":2},{"totalSodium":45,"servingSodium":2},{"totalPotassium":139,"servingPotassium":7}]'::jsonb,
  '[{"leucine":51,"totalLeucine":450,"servingLeucine":23},{"tirosine":22,"totalTirosine":200,"servingTirosine":10},{"fenil":26,"totalFenil":230,"servingFenil":12},{"metiotine":1,"totalMetiotine":12,"servingMetiotine":1}]'::jsonb,
  '{"en-US":{"name":"Bolinho de chuva","ingredients":["160g of farinha sem glúten","120g of creme of leite","50ml of água","100g of sugar refinado","4g of liga neutra","10g of fermento químico em pó","Óleo vegetal para fritar","Canela em pó e sugar para cobrir (opcional)"],"preparation":["1 - Em um recipiente mix o creme of leite com a água;","2 - Acrescente os demais ingredientes até ficar homogêneo. A massa não deve ficar muito mole;","3 - Em uma pan ou frigideira, aquecer o óleo;","4 - Pegar a massa com uma colher of chá bem cheia e frite em óleo quente até dourar;","5 - Passe os bolinhos ainda quentes no sugar e canela, se desejar."],"servings":"20 unidades"}}'::jsonb
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
  19,
  'Bolo de abacaxi',
  'Bolos e bolinhos',
  'https://images.unsplash.com/photo-1504802686536-b6a2ca64d77c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["150g de farinha sem glúten","80g de açúcar refinado","120ml de suco de abacaxi","10g de emulsificante","3g de goma xantana ou liga neutra","15g de óleo vegetal","10g de fermento químico em pó"]'::jsonb,
  '["1 - Pré-aqueça o forno a 150°C","2-Noliquidificadorbata todosos ingredientes, excetoa farinha e o fermento;","3 - Em um recipiente a parte, despeje a mistura do liquidificador e adicione a farinha aos poucos com o auxílio de um fuê para não empelotar e até que fique homogêneo;","4 - Acrescente o fermento e mexa levemente;","5 - Despeje a massa em uma assadeira untada e leve ao forno ajustado a 180°C até assar por completo. "]'::jsonb,
  '10 fatias',
  '[{"totalEnergy":1060,"servingEnergy":106},{"totalCarbs":226,"servingCarbs":23},{"totalProteins":1.9,"servingProteins":0.2},{"totalLipids":18,"servingLipids":2},{"totalSodium":2,"servingSodium":0},{"totalPotassium":115,"servingPotassium":11}]'::jsonb,
  '[{"leucine":42,"totalLeucine":160,"servingLeucine":16},{"tirosine":19,"totalTirosine":70,"servingTirosine":7},{"fenil":26,"totalFenil":100,"servingFenil":10},{"metiotine":13,"totalMetiotine":50,"servingMetiotine":5}]'::jsonb,
  '{"en-US":{"name":"Bolo de abacaxi","ingredients":["150g of farinha sem glúten","80g of sugar refinado","120ml of juice of abacaxi","10g of emulsificante","3g of goma xantana ou liga neutra","15g of óleo vegetal","10g of fermento químico em pó"],"preparation":["1 - Pré-aqueça o forno a 150°C","2 - Noliquidificadorbata todosos ingredientes, excetoa farinha e o fermento;","3 - Em um recipiente a parte, despeje a mistura do blender e adicione a farinha aos poucos com o auxílio of um fuê para não empelotar e até que fique homogêneo;","4 - Acrescente o fermento e mexa levemente;","5 - Despeje a massa em uma assadeira untada e leve ao forno ajustado a 180°C até assar por completo. "],"servings":"10 fatias"}}'::jsonb
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
  20,
  'Bolo de banana I',
  'Bolos e bolinhos',
  'https://plus.unsplash.com/premium_photo-1675171527461-b785cb1a7016?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["185g de açúcar refinado","38g de óleo vegetal","185g de farinha sem glúten","300g de banana nanica","18g de fermento químico em pó"]'::jsonb,
  '["1 - Em uma vasilha, amasse as bananas e misture aos demais ingredientes com o auxílio de um fuê deixando o fermento por último;","2 - Unte uma forma de bolo inglês com margarina e farinha hipoproteica;","3 - Despeje a massa na forma;","4 - Asse em forno pré-aquecido a 180°C até dourar e o palito sair seco ao espetar."]'::jsonb,
  '11 fatias',
  '[{"totalEnergy":2070,"servingEnergy":184},{"totalCarbs":419,"servingCarbs":38},{"totalProteins":4.9,"servingProteins":0.45},{"totalLipids":43,"servingLipids":3.9},{"totalSodium":4.9,"servingSodium":0.4},{"totalPotassium":1192,"servingPotassium":108}]'::jsonb,
  '[{"leucine":47,"totalLeucine":390,"servingLeucine":35.5},{"tirosine":17,"totalTirosine":140,"servingTirosine":12.7},{"fenil":26,"totalFenil":220,"servingFenil":20},{"metiotine":10,"totalMetiotine":80,"servingMetiotine":7.3}]'::jsonb,
  '{"en-US":{"name":"Bolo de banana I","ingredients":["185g of sugar refinado","38g of óleo vegetal","185g of farinha sem glúten","300g of banana nanica","18g of fermento químico em pó"],"preparation":["1 - Em uma vasilha, amasse as bananas e mix aos demais ingredientes com o auxílio of um fuê deixando o fermento por último;","2 - Unte uma forma of bolo inglês com margarina e farinha hipoproteica;","3 - Despeje a massa na forma;","4 - Asse em forno pré-aquecido a 180°C até dourar e o palito sair seco ao espetar."],"servings":"11 fatias"}}'::jsonb
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