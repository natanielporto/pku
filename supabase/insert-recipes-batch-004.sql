-- Batch 4 (recipes 31 to 40)

INSERT INTO recipes (id, name, category, image, ingredients, preparation, servings, nutritional_information, graph_information, translations)
VALUES (
  31,
  'tapioca-lime-honey-cookie',
  'sweets',
  'https://images.unsplash.com/photo-1630953899439-e1b44977d777?q=80&w=400&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["60g de açúcar refinado","26g de tapioca desidratada","30g de coco seco ralado","45g de leite de coco","6g de margarina sem sal","3g de suco de limão"]'::jsonb,
  '["1 - Em uma panela, misture todos os ingredientes;","2 - Leve ao fogo, mexendo sempre, e cozinhe até desgrudar do fundo da panela;","3 - Deixe esfriar e formate os docinhos."]'::jsonb,
  '10 unidades',
  '[{"totalEnergy":633,"servingEnergy":63},{"totalCarbs":92,"servingCarbs":9},{"totalProteins":3,"servingProteins":0.3},{"totalLipids":31,"servingLipids":3},{"totalSodium":54,"servingSodium":5},{"totalPotassium":269,"servingPotassium":27}]'::jsonb,
  '[{"leucine":42,"totalLeucine":220,"servingLeucine":22},{"tirosine":17,"totalTirosine":90,"servingTirosine":9},{"fenil":29,"totalFenil":150,"servingFenil":15},{"metiotine":12,"totalMetiotine":60,"servingMetiotine":6}]'::jsonb,
  '{"en-US":{"name":"Tapioca Lime Honey Cookie","ingredients":["60g of refined sugar","26g of dehydrated tapioca","30g of coconut powder","45g of coconut milk","6g of margarine without salt","3g of juice of lemon"],"preparation":["1 - in a pan, mix all the ingredients;","2 - bring to the fire, stirring constantly, and cook until it detaches from the bottom of the pan;","3 - let it cool and format the cookies."],"servings":"10 units"}}'::jsonb
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
  32,
  'caratina-chocolate-truffle',
  'sweets',
  'https://images.unsplash.com/photo-1565814598158-c9e60d235405?q=80&w=400&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["10g de açúcar refinado","50g de achocolatado em pó","30g de gotas de chocolate","15g de creme de leite","5g de margarina sem sal","80g de tapioca hidratada","30g de confeito granulado"]'::jsonb,
  '["1 - Coloque todos os ingredientes em uma panela;","2 - Mexa em fogo baixo até conseguir um ponto elástico, desgrudando do fundo da panela;","3 - Deixe esfriar em geladeira por alguns minutos; 4- Enrole passando em confeitos de granulado."]'::jsonb,
  '10 fatias',
  '[{"totalEnergy":745,"servingEnergy":75},{"totalCarbs":147,"servingCarbs":15},{"totalProteins":1.7,"servingProteins":0.2},{"totalLipids":17,"servingLipids":2},{"totalSodium":7,"servingSodium":1},{"totalPotassium":27,"servingPotassium":3}]'::jsonb,
  '[{"leucine":44,"totalLeucine":70,"servingLeucine":7},{"tirosine":25,"totalTirosine":40,"servingTirosine":4},{"fenil":25,"totalFenil":40,"servingFenil":4},{"metiotine":6,"totalMetiotine":10,"servingMetiotine":1}]'::jsonb,
  '{"en-US":{"name":"Caratina Chocolate Truffle","ingredients":["10g of refined sugar","50g of chocolate powder","30g of chocolate drops","15g of milk cream","5g of margarine without salt","80g of hydrated tapioca","30g of granulated confetti"],"preparation":["1 - in a pan, mix all the ingredients;","2 - stir over low heat until it becomes elastic, detaching from the bottom of the pan;","3 - let it cool in the refrigerator for a few minutes; 4- roll passing in granulated confetti."],"servings":"10 slices"}}'::jsonb
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
  33,
  'banana-tapioca-crepioca',
  'sweets',
  'https://media.istockphoto.com/id/486011238/pt/foto/casabe-de-mandioca-tapioca.jpg?s=2048x2048&w=is&k=20&c=LirYDmSn682sbu36mynQz8yGdS8blCsgFLjWVb43kLU=',
  '["80g de banana","75g de massa de tapioca hidratada"]'::jsonb,
  '["1 - Amasse a banana com o auxílio de um garfo e junte com a massa de tapioca já hidratada;","2 - Em uma frigideira antiaderente, disponha a mistura e cozinhe de ambos os lados;","3 - Sirva quente"]'::jsonb,
  '2 unidades',
  '[{"totalEnergy":341,"servingEnergy":171},{"totalCarbs":85,"servingCarbs":42},{"totalProteins":1.1,"servingProteins":0.5},{"totalLipids":0,"servingLipids":0},{"totalSodium":2,"servingSodium":1},{"totalPotassium":325,"servingPotassium":163}]'::jsonb,
  '[{"leucine":50,"totalLeucine":60,"servingLeucine":30},{"tirosine":17,"totalTirosine":20,"servingTirosine":10},{"fenil":25,"totalFenil":30,"servingFenil":15},{"metiotine":8,"totalMetiotine":10,"servingMetiotine":5}]'::jsonb,
  '{"en-US":{"name":"Banana Tapioca Crepioca","ingredients":["80g of banana","75g of hydrated tapioca"],"preparation":["1 - mash the banana with the help of a fork and join with the hydrated tapioca;","2 - in a non-stick pan, place the mixture and cook on both sides;","3 - serve hot"],"servings":"2 units"}}'::jsonb
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
  34,
  'apple-crumble',
  'sweets',
  'https://images.unsplash.com/photo-1589462239133-1e04f802685d?q=80&w=400&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["Ingredientes da farofa","220g de farinha sem glúten","75g de margarina sem sal","80g de açúcar refinado ou mascavo","Ingredientes do recheio","500g de maçã com casca","100g de açúcar refinado ou mascavo","120g de creme de leite","0,5g de canela em pó"]'::jsonb,
  '["Modo de preparo da farofa","1 - Misture a farinha e o açúcar;","2 - Adicione a margarina aos poucos e com as pontas dos dedos misture até formar uma farofa, reserve.","Modo de preparo do recheio","1 - Lave bem as maçãs e corte em fatias dentro de uma bacia com água e limão para não escurecer;","2 - Escorra bem as fatias e disponha num refratário baixo;","3 - Polvilhe o açúcar, espalhe o creme de leite e salpique a canela por cima das maçãs;","4 - Disponha a farofa por cima do recheio;","5 - Asse em forno pré-aquecido a 200°C por aproximadamente 40 minutos ou até dourar."]'::jsonb,
  '20 fatias',
  '[{"totalEnergy":2308,"servingEnergy":115},{"totalCarbs":445,"servingCarbs":22},{"totalProteins":6.1,"servingProteins":0.3},{"totalLipids":63,"servingLipids":3},{"totalSodium":534,"servingSodium":27},{"totalPotassium":1063,"servingPotassium":53}]'::jsonb,
  '[{"leucine":46,"totalLeucine":570,"servingLeucine":29},{"tirosine":20,"totalTirosine":250,"servingTirosine":13},{"fenil":23,"totalFenil":290,"servingFenil":15},{"metiotine":11,"totalMetiotine":140,"servingMetiotine":7}]'::jsonb,
  '{"en-US":{"name":"Apple Crumble","ingredients":["Ingredients of the farofa","220g of gluten-free flour","75g of margarine without salt","80g of refined sugar or mascavo","Ingredients of the filling","500g of apple with skin","100g of refined sugar or mascavo","120g of milk cream","0,5g of canela powder"],"preparation":["Mode of preparation of the farofa","1 - mix the flour and the sugar;","2 - add the margarine aos poucos e with the tips of the fingers mix until it forms a farofa, reserve.","Mode of preparation of the filling","1 - wash the apples and cut into slices inside of a basin with water and lemon to not darken;","2 - drain well the slices and place in a low dish;","3 - sprinkle the sugar, spread the milk cream and sprinkle the canela on top of the apples;","4 - place the farofa on top of the filling;","5 - bake in pre-heated oven at 200°C for approximately 40 minutes or until it is browned."],"servings":"20 slices"}}'::jsonb
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
  35,
  'apple-jam',
  'sweets',
  'https://images.unsplash.com/photo-1603777953657-e57b62f12c77?q=80&w=400&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["300ml de água","100g de açúcar refinado","550g de maçã","60g de suco de polpa de maracujá batido e coado 2g de cravo","5g de canela em pau"]'::jsonb,
  '["1 - Higienize as maçãs, retire as semente e corte em cubos grandes com ou sem casca;","2 - Em uma panela de pressão, adicione as maçãs e os demais ingredientes;","3 - Leve ao fogo e conte 3 minutos a partir do momento que começar a chiar;","4 - Desligue e a pressão da panela;","5 - Despeje o doce em um refratário e leve para gelar."]'::jsonb,
  '10 porções',
  '[{"totalEnergy":754,"servingEnergy":75},{"totalCarbs":191,"servingCarbs":19},{"totalProteins":2.5,"servingProteins":0.2},{"totalLipids":2,"servingLipids":0},{"totalSodium":1,"servingSodium":0},{"totalPotassium":635,"servingPotassium":63}]'::jsonb,
  '[{"leucine":43,"totalLeucine":120,"servingLeucine":12},{"tirosine":21,"totalTirosine":60,"servingTirosine":6},{"fenil":25,"totalFenil":70,"servingFenil":7},{"metiotine":11,"totalMetiotine":30,"servingMetiotine":3}]'::jsonb,
  '{"en-US":{"name":"Apple Jam","ingredients":["300ml of water","100g of refined sugar","550g of apple","60g of juice of polpa of passion fruit beaten and strained 2g of cravo","5g of canela powder"],"preparation":["1 - sanitize the apples, remove the seed and cut into large cubes with or without skin;","2 - in a pressure pan, add the apples and the other ingredients;","3 - bring to the fire and count 3 minutes from the moment it starts to brown;","4 - turn off the pressure pan;","5 - pour the jam into a dish and chill."],"servings":"10 servings"}}'::jsonb
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
  36,
  'coconut-jam',
  'sweets',
  'https://images.unsplash.com/photo-1548084769-1b94d5c3168e?q=80&w=400&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["Ingredientes da 1a parte","60g de açúcar refinado","210g de leite de coco","15g de coco seco ralado","Ingredientes da 2a parte","100g de creme de leite","100ml de água","15g de amido de milho","Ingredientes da calda","160g de geleia de frutas","3g de amido de milho","50ml de água"]'::jsonb,
  '["1 - Em uma panela, despeje o leite de coco, o açúcar e o coco ralado. Misture bem e leve ao fogo;","2 - Em um outro recipiente, misture o creme de leite com a água e o amido de milho;","3 - Assim que o leite de coco começar a ferver, abaixe o fogo e adicione a mistura de creme de leite, água e amido de milho;","4 - Mexa sem parar até engrossar, cerca de 5 minutos;","5 - Esfrie a panela com o manjar em uma bacia com água fria;","6 - Enquanto isso, faça a geleia. Em uma panela, misture a geleia, a água e o amido de milho, leve ao fogo até engrossar;","6 - Porcione o manjar em taças e despeje a calda por cima;","7 - Sirva gelado."]'::jsonb,
  '10 taças',
  '[{"totalEnergy":1446,"servingEnergy":145},{"totalCarbs":192,"servingCarbs":19},{"totalProteins":8.9,"servingProteins":0.9},{"totalLipids":80,"servingLipids":8},{"totalSodium":136,"servingSodium":14},{"totalPotassium":783,"servingPotassium":78}]'::jsonb,
  '[{"leucine":44,"totalLeucine":700,"servingLeucine":70},{"tirosine":20,"totalTirosine":320,"servingTirosine":32},{"fenil":26,"totalFenil":420,"servingFenil":42},{"metiotine":10,"totalMetiotine":160,"servingMetiotine":16}]'::jsonb,
  '{"en-US":{"name":"Coconut Jam","ingredients":["Ingredients of the first part","60g of refined sugar","210g of coconut milk","15g of coconut powder","Ingredients of the second part","100g of milk cream","100ml of water","15g of cornstarch","Ingredients of the syrup","160g of fruit jam","3g of cornstarch","50ml of water"],"preparation":["1 - in a pan, pour the coconut milk, the sugar and the coconut powder. mix well and bring to the fire;","2 - in another container, mix the milk cream with the water and the cornstarch;","3 - when the coconut milk starts to boil, turn down the fire and add the mixture of milk cream, water and cornstarch;","4 - stir constantly until it thickens, about 5 minutes;","5 - cool the pan with the manjar in a basin with cold water;","6 - while that, make the jam. In a pan, mix the jam, the water and the cornstarch, bring to the fire until it thickens;","6 - portion the manjar in cups and pour the syrup on top;","7 - serve cold."],"servings":"10 servings"}}'::jsonb
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
  37,
  'lemon-mousse-i',
  'sweets',
  'https://images.unsplash.com/photo-1582834936490-9747caf8ca4a?q=80&w=400&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["205g de chantilly vegetal","50g de creme de leite","40g de suco de limão","5g de raspas de limão","75 gotas de chocolate branco"]'::jsonb,
  '["1 - Em uma batedeira, bata o chantilly vegetal em ponto firme;","2 - Misture com o suco de limão e reserve;","3 - Derreta o chocolate e misture o creme de leite;","4 - Adicione o chocolate à mistura de chantilly com limão;","5 - Leve à geladeira para gelar e sirva com raspas de limão por cima."]'::jsonb,
  '8 fatias',
  '[{"totalEnergy":1555,"servingEnergy":156},{"totalCarbs":117,"servingCarbs":12},{"totalProteins":6.6,"servingProteins":0.7},{"totalLipids":118,"servingLipids":12},{"totalSodium":204,"servingSodium":20},{"totalPotassium":89,"servingPotassium":9}]'::jsonb,
  '[{"leucine":44,"totalLeucine":620,"servingLeucine":62},{"tirosine":23,"totalTirosine":320,"servingTirosine":32},{"fenil":23,"totalFenil":320,"servingFenil":32},{"metiotine":10,"totalMetiotine":150,"servingMetiotine":15}]'::jsonb,
  '{"en-US":{"name":"Lemon Mousse I","ingredients":["205g of chantilly vegetal","50g of milk cream","40g of juice of lemon","5g of lemon rind","75g of white chocolate"],"preparation":["1 - In a mixer, beat the vegetal cream to firm point;","2 - mix with the juice of lemon and reserve;","3 - melt the chocolate and mix the milk cream;","4 - add the chocolate to the mixture of chantilly with lemon;","5 - chill in the refrigerator and serve with lemon rind on top."],"servings":"8 slices"}}'::jsonb
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
  38,
  'lemon-mousse-ii',
  'sweets',
  'https://plus.unsplash.com/premium_photo-1669880504277-1c79daa58c12?q=80&w=400&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["200ml de água","30g de amido de milho","100g de açúcar refinado","50g de suco de limão","65g de chantilly vegetal"]'::jsonb,
  '["1 - Em uma panela pequena, misture a água, o amido de milho e o suco de limão;","2 - Cozinhe em fogo baixo até engrossar;","3 - Retire do fogo, adicione o açúcar e reserve;","4 - Após esfriar, bata na batedeira junto com o chantilly vegetal para dar cremosidade;","5 - Distribua em tacinhas e leve à geladeira até ficar firme."]'::jsonb,
  '3 taças',
  '[{"totalEnergy":709,"servingEnergy":236},{"totalCarbs":138,"servingCarbs":46},{"totalProteins":0.5,"servingProteins":0.2},{"totalLipids":18,"servingLipids":3},{"totalSodium":43,"servingSodium":14},{"totalPotassium":57,"servingPotassium":19}]'::jsonb,
  '[{"leucine":55,"totalLeucine":30,"servingLeucine":10},{"tirosine":18,"totalTirosine":10,"servingTirosine":3},{"fenil":18,"totalFenil":10,"servingFenil":3},{"metiotine":9,"totalMetiotine":5,"servingMetiotine":2}]'::jsonb,
  '{"en-US":{"name":"Lemon Mousse Ii","ingredients":["200ml of water","30g of cornstarch","100g of refined sugar","50g of juice of lemon","65g of vegetal cream"],"preparation":["1 - In a small pan, mix the water, the cornstarch and the juice of lemon;","2 - cook over low heat until it thickens;","3 - remove from the fire, add the sugar and reserve;","4 - after cooling, beat the mixer with the vegetal cream to give creaminess;","5 - distribute in cups and chill in the refrigerator until it is firm."],"servings":"3 servings"}}'::jsonb
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
  39,
  'passion-fruit-mousse',
  'sweets',
  'https://media.istockphoto.com/id/1495638879/pt/foto/passion-fruit-cheesecake.jpg?s=2048x2048&w=is&k=20&c=h0qp3jwMW1SxwxMmZ5m-foJvyPTcQ4jBYR558LQrL4c=',
  '["200ml de água","30g de amido de milho","100g de açúcar refinado","70g de suco de maracujá","100g de chantilly vegetal"]'::jsonb,
  '["1 - Em uma panela pequena, misture a água, o amido de milho e o suco de maracujá;","2 - Cozinhe em fogo baixo até engrossar;","3 - Retire do fogo, adicione o açúcar e reserve;","4 - Após esfriar, bata na batedeira junto com o chantilly vegetal para dar cremosidade;","5 - Distribua em tacinhas e leve à geladeira até ficar firme."]'::jsonb,
  '4 taças',
  '[{"totalEnergy":845,"servingEnergy":211},{"totalCarbs":147,"servingCarbs":37},{"totalProteins":2,"servingProteins":0.5},{"totalLipids":26,"servingLipids":7},{"totalSodium":83,"servingSodium":21},{"totalPotassium":247,"servingPotassium":62}]'::jsonb,
  '[{"leucine":44,"totalLeucine":100,"servingLeucine":25},{"tirosine":24,"totalTirosine":60,"servingTirosine":15},{"fenil":24,"totalFenil":60,"servingFenil":15},{"metiotine":12,"totalMetiotine":30,"servingMetiotine":8}]'::jsonb,
  '{"en-US":{"name":"Passion Fruit Mousse","ingredients":["200ml of water","30g of cornstarch","100g of refined sugar","70g of juice of passion fruit","100g of vegetal cream"],"preparation":["1 - In a small pan, mix the water, the cornstarch and the juice of passion fruit;","2 - cook over low heat until it thickens;","3 - remove from the fire, add the sugar and reserve;","4 - after cooling, beat the mixer with the vegetal cream to give creaminess;","5 - distribute in cups and chill in the refrigerator until it is firm."],"servings":"4 cups"}}'::jsonb
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
  40,
  'banana-tapioca-pudding',
  'sweets',
  'https://images.unsplash.com/photo-1550461716-dbf266b2a8a7?q=80&w=400&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["Ingredientes da calda","300g de açúcar refinado","180ml de água","Ingredientes do pudim","200ml de água","60g de creme de leite ou leite de coco","70g de tapioca granulada","Demais ingredientes","120g de banana nanica","60g de farinha hipoproteica","150ml de água","60g de creme de leite ou leite de coco","1g de essência de baunilha","0,5g de canela em pó"]'::jsonb,
  '["Modo de preparo da calda","1 - Em uma panela, derreta o açúcar em fogo baixo até caramelizar;","2 - Com cuidado, adicione a água aos poucos e misture até desmanchar os grumos de caramelo;","3 - É possível fazer a calda antecipadamente e deixar na geladeira para que fique mais consistente.","Modo de preparo do pudim","1 - Aqueça a água com creme de leite ou leite de coco e jogue por cima da tapioca;","2 - Misture bem e deixe hidratar em geladeira por aproximadamente 2 horas até que fique inchada e macia;","3 - No liquidificador, bata a tapioca já hidratada com o restante dos ingredientes por cerca de 2 minutos;","4 - Espalhe a calda no fundo e laterais de uma forma e despeje a massa;","5 - Asse em forno pré-aquecido a 200°C por aproximadamente 45 minutos;","6 - Retire do forno e deixe esfriar antes de desenformar;","7 - Aqueça o fundo da forma na chama do fogão e desenforme com ajuda de uma faca soltando as laterais;","8 - Espalhe a calda por cima e sirva bem gelado."]'::jsonb,
  '20 unidades',
  '[{"totalEnergy":2041,"servingEnergy":102},{"totalCarbs":444,"servingCarbs":22},{"totalProteins":5,"servingProteins":0.2},{"totalLipids":32,"servingLipids":2},{"totalSodium":50,"servingSodium":2},{"totalPotassium":630,"servingPotassium":31}]'::jsonb,
  '[{"leucine":45,"totalLeucine":440,"servingLeucine":22},{"tirosine":21,"totalTirosine":200,"servingTirosine":10},{"fenil":24,"totalFenil":230,"servingFenil":12},{"metiotine":10,"totalMetiotine":100,"servingMetiotine":5}]'::jsonb,
  '{"en-US":{"name":"Banana Tapioca Pudding","ingredients":["Ingredients of the syrup","300g of refined sugar","180ml of water","Ingredients of the pudding","200ml of water","60g of milk cream or coconut milk","70g of granulated tapioca","Other ingredients","120g of banana nanica","60g of gluten-free flour","150ml of water","60g of milk cream or coconut milk","1g of vanilla essence","0,5g of cinnamon powder"],"preparation":["Mode of preparation of the syrup","1 - In a pan, melt the sugar over low heat until it caramelizes;","2 - Carefully add the water a few at a time and mix until the caramel lumps are broken;","3 - It is possible to make the syrup in advance and leave in the refrigerator to be more consistent.","Mode of preparation of the pudding","1 - Heat the water with the milk cream or coconut milk and pour over the tapioca;","2 - mix well and let it hydrate in the refrigerator for approximately 2 hours until it is swollen and soft;","3 - In the blender, beat the hydrated tapioca with the remaining ingredients for approximately 2 minutes;","4 - Spread the syrup on the bottom and sides of a form and pour the mass;","5 - Bake in pre-heated oven at 200°C for approximately 45 minutes;","6 - Remove from the oven and let it cool before unmolding;","7 - Heat the bottom of the form on the stove and unmold with the help of a knife releasing the sides;","8 - Spread the syrup on top and serve well cold."],"servings":"20 servings"}}'::jsonb
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