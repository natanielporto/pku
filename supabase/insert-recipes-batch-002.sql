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
  '{"en-US":{"name":"Goababa Biscuit","ingredients":["100g of flour without gluten","55g of demerara sugar","50g of margarine without salt","30g of cream of milk","5g of chemical yeast","40g of cornstarch","5g of emulsifier","3g of neutral glue","1g of vanilla essence","42g of goiabada in squares"],"preparation":["1 - in a container, mix all the ingredients and mix with a spoon and then knead with the hands until the dough detaches from the hands;","2 - place the dough between 2 plastic and open it with the help of a roll;","3 - to make cuts, cut the dough with a round cutter, place a piece of goiabada in the middle and join the sides;","4 - another option is to mold the dough into balls and flatten lightly placing the piece of goiabada in the center;","5 - place the cookies in a baking sheet and bake in the oven at 180°C for approximately 15 minutes."],"servings":"21 units"}}'::jsonb
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
  '{"en-US":{"name":"Oregano Cavaquinho","ingredients":["110ml of coconut milk","50ml of water","20g of vegetable oil","15g of sugar","5g of salt","0,5g of oregano powder","3g of apple vinegar","5g of emulsifier","5g of chemical yeast","250g of gluten-free flour","vegetable oil to fry the cookies"],"preparation":["1 - in a container, mix all the ingredients and add the flour a little at a time until it is kneaded;","2 - mold the cookies and fry in hot oil, turning to brown on both sides;","3 - remove from the pan and wrap in paper to remove the excess oil;","4 - serve hot."],"servings":"30 units"}}'::jsonb
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
  '{"en-US":{"name":"Banana Cookie","ingredients":["80g of smallbanana","65g of demerara sugar","125g of cornstarch","65g of margarine without salt","40g of gluten-free flour","1g of vanilla essence","10g of chemical yeast","0,5g of cinnamon powder","30g of raisins"],"preparation":["1 - knead the banana and add the other ingredients, leave the raisins last;","2 - mix with a spoon and then knead with the hands until the dough is homogeneous;","3 - separate the dough into 20 balls;","4 - place the balls in a baking sheet and flatten lightly with a fork;","5 - bake at 200°C for approximately 20 minutes or until it is golden. "],"servings":"20 units"}}'::jsonb
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
  '{"en-US":{"name":"Coffee Chocolate Cookie","ingredients":["200g of gluten-free flour","100g of margarine without salt","50g of brown sugar","30g of refined sugar","5g of soluble coffee powder","1g of vanilla essence","1g of chemical yeast","1g of sodium bicarbonate","50g of chocolate drops"],"preparation":["1 - in a container, mix the brown sugar, the refined sugar, the soluble coffee powder, the vanilla essence and the margarine until it is homogeneous. It is important to sieve the ingredients to avoid forming lumps in the dough;","2 - add the flour, mix with a spoon and then knead with the hands;","3 - add the chemical yeast, the sodium bicarbonate and the chocolate drops last, avoiding to handle too much so that the drops do not melt with the heat of the hands;","4 - format the cookies taking approximately 40 grams of dough, making balls and flattening on the palm of the hand.","5 - place in a rectangular shape (not necessary to grease);","6 - decorate with chocolate drops on top;","7 - if the day is very hot, place the shape in the refrigerator for 15 minutes before baking;","8 - bake in pre-heated oven at 200°C for approximately 20 minutes;","9 - remove and let it cool to make the cookies firmer."],"servings":"10 units"}}'::jsonb
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
  '{"en-US":{"name":"Chocolate Cookie","ingredients":["50g of chocolate powder","60g of gluten-free flour","180g of cornstarch","1g of soluble coffee powder","30g of refined sugar","30g of brown sugar","3g of chemical yeast","150g of margarine without salt","20g of chocolate drops"],"preparation":["1 - in a container, mix all the dry ingredients;","2 - add the margarine, mix well and knead with the hands until it is possible to mold;","3 - make balls, flatten and decorate with chocolate drops;","4 - place in a baking sheet and bake in pre-heated oven at 200°C for approximately 15 to 20 minutes;","5 - attention to not overcook and the cookies become hard."],"servings":"22 units"}}'::jsonb
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
  '{"en-US":{"name":"Lemon Sequilho","ingredients":["60g of refined sugar","160g of cornstarch","100g of margarine without salt","2g of vanilla essence","8g of lemon juice","5g of lemon rinds"],"preparation":["1 - pre-heat the oven to 200°C.","2 - mix the margarine with the sugar until it is homogeneous and add the lemon juice, the lemon rinds, the vanilla essence and the cornstarch;","3 - knead with the hands until it forms a mass;","4 - make balls and pass the fork lightly on top to form a design;","5 - place in a shape (not necessary to grease) and put in the refrigerator for 5 minutes or until it is firm;","6 - bake for approximately 20 to 25 minutes or until it is slightly golden;","7 - remove from the oven and let it cool."],"servings":"5 units"}}'::jsonb
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
  '{"en-US":{"name":"Passion Fruit Sequilho","ingredients":["175g of cornstarch","100g of margarine without salt","60g of refined sugar","20g of concentrated passion fruit juice","1g of vanilla essence","Yellow damask food coloring (optional)"],"preparation":["1 - mix the margarine with the sugar;","2 - add the essence, the passion fruit juice and the coloring;","3 - add the cornstarch and knead with the hands until it is homogeneous;","4 - make balls of 15 grams each and place in a baking sheet (not necessary to grease);","5 - pass the fork lightly on top of each ball, forming a design;","6 - bake in pre-heated oven at 200°C for 20 to 25 minutes or until it is slightly golden;","7 - remove from the oven and let it cool."],"servings":"25 units"}}'::jsonb
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
  '{"en-US":{"name":"Rain Little Cake","ingredients":["160g of gluten-free flour","120g of milk cream","50ml of water","100g of refined sugar","4g of neutral glue (optional)","10g of chemical yeast","Vegetable oil to fry","Cinnamon powder and sugar to cover (optional)"],"preparation":["1 - in a container, mix the milk cream with the water;","2 - add the other ingredients until it is homogeneous. The dough should not be too soft;","3 - in a pan or frying pan, heat the oil;","4 - take the mass with a tea spoon well filled and fry in hot oil until it is golden;","5 - pass the balls still hot in the sugar and cinnamon, if desired."],"servings":"20 units"}}'::jsonb
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
  '{"en-US":{"name":"Pineapple Cake","ingredients":["150g of gluten-fre flour","80g of refined sugar","120ml of pineapple juice","10g of emulsifier","3g of neutral glue (optional)","15g of vegetable oil","10g of chemical yeast"],"preparation":["1 - pre-heat the oven to 150°C","2 - in a blender, mix all the ingredients except the flour and the yeast;","3 - in a container, pour the blender mixture and add the flour a little at a time with the help of a spoon to avoid sticking and until it is homogeneous;","4 - add the yeast and mix lightly;","5 - pour the dough into a greased baking sheet and bake in pre-heated oven at 180°C until it is golden. "],"servings":"10 slices"}}'::jsonb
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
  '{"en-US":{"name":"Banana Cake I","ingredients":["185g of refined sugar","38g of vegetable oil","185g of gluten-free flour","300g of banana nanica","18g of chemical yeast"],"preparation":["1 - in a container, mash the bananas and mix the other ingredients with the help of a spoon leaving the yeast last;","2 - grease a British cake pan with butter and gluten-free flour;","3 - pour the dough into the pan;","4 - bake in pre-heated oven at 180°C until it is golden and the toothpick comes out dry. "],"servings":"11 slices"}}'::jsonb
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