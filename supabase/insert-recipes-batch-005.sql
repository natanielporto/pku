-- Batch 5 (recipes 41 to 50)

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
  '{"en-US":{"name":"Tapioca Pudding","ingredients":["100ml of water","160g of refined sugar","200g of coconut milk diluted in 100ml of water","100g of dehydrated tapioca","25g of margarine without salt","30g of cornstarch","125g of milk cream","10g of coconut powder","10g of vanilla powder"],"preparation":["Mode of preparation of the syrup","1 - In a pan, me lt the sugar over low heat until it caramelizes;","2 - Wrap a form with the caramel syrup still hot and reserve.","Mode of preparation of the pudding","1 - In a bowl, place the tapioca soaked in coconut milk diluted in water for a few minutes;","2 - beat in the blender the hydrated tapioca with the remaining ingredients, except the coconut powder;","3 - add the coconut to the mixture and place in the caramelized form;","4 - bake in a water bath in the oven or pan for approximately 40 minutes."],"servings":"10 servings"}}'::jsonb
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
  42,
  'Coxinha de mandioca',
  'Massas',
  'https://media.istockphoto.com/id/1358848345/pt/foto/traditional-fried-coxinha-on-a-black-plate-on-a-slate-background-brazilian-snack.jpg?s=2048x2048&w=is&k=20&c=i7PQjoXNiDKa8HNLqN3HVCWKjcyQp3ZBRvnp7XMdhsM=',
  '["500ml de água","400g de mandioca","100g de farinha hipoproteica","70g de farinha de mandioca","25g de margarina sem sal","6g de sal","1g de páprica doce","1g de orégano seco"]'::jsonb,
  '["1 - Cozinhe a mandioca, amasse até obter um purê e reserve;","2 - Em uma panela, ferva a água com a margarina, o sal, a páprica e o orégano;","3 - Acrescente o purê de mandioca e dissolva bem até ficar uma massa homogênea;","4 - Acrescente a farinha hipoproteica e cozinhe por 5 minutos, mexendo sempre;","5 - Retire a massa da panela e coloque em uma bancada, amasse com auxílio de uma colher e depois com as mãos até ficar bem lisinha e firme. Deixar esfriar para moldar;","6 - Recheie com legumes cozidos e temperados a gosto;","7 - Para empanar passe na água e em seguida na farinha de mandioca peneirada;","8 - Frite em óleo quente e coloque em papel absorvente."]'::jsonb,
  '18 unidades',
  '[{"totalEnergy":1956,"servingEnergy":109},{"totalCarbs":298,"servingCarbs":17},{"totalProteins":7.4,"servingProteins":0.4},{"totalLipids":81,"servingLipids":4},{"totalSodium":2583,"servingSodium":144},{"totalPotassium":1100,"servingPotassium":61}]'::jsonb,
  '[{"leucine":40,"totalLeucine":280,"servingLeucine":16},{"tirosine":23,"totalTirosine":160,"servingTirosine":9},{"fenil":27,"totalFenil":190,"servingFenil":11},{"metiotine":10,"totalMetiotine":70,"servingMetiotine":4}]'::jsonb,
  '{"en-US":{"name":"Mandioca Croquettes","ingredients":["500ml of water","400g of mandioca mashed","100g of gluten-free flour","70g of mandioca flour","25g of margarine without salt","6g of salt","1g of sweet paprika","1g of dried oregano"],"preparation":["1 - Cook the mandioca, mash until you get a puré and reserve;","2 - In a pan, bring the water to a boil with the margarine, salt, sweet paprika and oregano;","3 - Add the mandioca puré and dissolve well until you get a homogeneous mass;","4 - Add the gluten-free flour and cook for 5 minutes, stirring constantly;","5 - Remove the mass from the pan and place on a bench, mash with the help of a spoon and then with your hands until it is well smooth and firm. Let it cool to mold;","6 - Fill with cooked and seasoned vegetables to taste;","7 - To coat, pass in water and then in the mandioca flour sieved;","8 - Fry in hot oil and place on absorbent paper."],"servings":"18 servings"}}'::jsonb
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
  43,
  'Massa para torta ou empada',
  'Massas',
  'https://plus.unsplash.com/premium_photo-1666174326073-327a1fcfb431?q=80&w=400&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["100g de farinha hipoproteica","70g de margarina sem sal","5g de emulsificante","3g de sal","1g de fermento químico em pó","0,5g de açafrão em pó"]'::jsonb,
  '["1 - Misture todos os ingredientes, exceto a farinha;","2 - Adicione a farinha aos poucos até dar o ponto da massa, que deve ficar parecida com massa de pastel;","3 - Coloque em forminhas e recheie com legumes a gosto;","4 - Leve ao forno pré-aquecido a 200°C até dourarem."]'::jsonb,
  '6 unidades',
  '[{"totalEnergy":569,"servingEnergy":95},{"totalCarbs":85,"servingCarbs":14},{"totalProteins":0.6,"servingProteins":0.1},{"totalLipids":26,"servingLipids":4},{"totalSodium":1583,"servingSodium":264},{"totalPotassium":9,"servingPotassium":1}]'::jsonb,
  '[{"leucine":45,"totalLeucine":40,"servingLeucine":7},{"tirosine":22,"totalTirosine":20,"servingTirosine":3},{"fenil":22,"totalFenil":20,"servingFenil":3},{"metiotine":11,"totalMetiotine":10,"servingMetiotine":2}]'::jsonb,
  '{"en-US":{"name":"Torta Or Empanada Pastry","ingredients":["100g of gluten-free flour","70g of margarine without salt","5g of emulsifier","3g of salt","1g of chemical yeast powder","0,5g of paprika powder"],"preparation":["1 - mix all the ingredients, except the flour;","2 - Add the flour a little at a time until it is kneaded, it should be similar to the pastry dough;","3 - Place in forms and fill with vegetables to taste;","4 - Bake in pre-heated oven at 200°C until they brown."],"servings":"6 servings"}}'::jsonb
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
  44,
  'Massa para empadinha',
  'Massas',
  'https://plus.unsplash.com/premium_photo-1666174326073-327a1fcfb431?q=80&w=400&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["140g de farinha sem glúten","1g de goma xantana","2g de sal","2g de açúcar refinado","60g de margarina sem sal","40ml de água"]'::jsonb,
  '["1 - Em um recipiente, misture todos os ingredientes até obter uma massa lisa que não grude nas mãos;","2 - Abra a massa com o auxílio de um rolo e disponha em forminhas individuais;","3 - Recheie com o recheio de sua preferência;","4 - Leve ao forno pré-aquecido a 180°C por aproximadamente 20 minutos."]'::jsonb,
  '5 unidades',
  '[{"totalEnergy":716,"servingEnergy":236},{"totalCarbs":126,"servingCarbs":42},{"totalProteins":2.8,"servingProteins":0.9},{"totalLipids":22,"servingLipids":7},{"totalSodium":1139,"servingSodium":380},{"totalPotassium":0,"servingPotassium":0}]'::jsonb,
  '[{"leucine":44,"totalLeucine":270,"servingLeucine":90},{"tirosine":18,"totalTirosine":110,"servingTirosine":37},{"fenil":26,"totalFenil":160,"servingFenil":53},{"metiotine":12,"totalMetiotine":70,"servingMetiotine":23}]'::jsonb,
  '{"en-US":{"name":"Empanada Pastry","ingredients":["140g of gluten-free flour","1g of xanthan gum","2g of salt","2g of refined sugar","60g of margarine without salt","40ml of water"],"preparation":["1 - In a container, mix all the ingredients until you get a smooth dough that does not stick to the hands;","2 - Open the dough with the help of a roll and place in individual forms;","3 - Fill with the desired filling;","4 - Bake in pre-heated oven at 180°C for approximately 20 minutes."],"servings":"5 servings"}}'::jsonb
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
  46,
  'Panqueca de cenoura',
  'Massas',
  'https://images.unsplash.com/photo-1587131791788-ec0cb04e0a52?q=80&w=400&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["200ml de água","15g de creme de leite","6g de óleo vegetal","2g de sal","3g de fermento químico em pó 20g de cenoura","70g de farinha sem glúten"]'::jsonb,
  '["1 - Bata todos os ingredientes no liquidificador e reserve;","2 - Unte uma frigideira com um fio de óleo e leve ao fogo até aquecer;","3 - Divida a massa em 3 porções iguais e com auxílio de uma concha pegue uma porção de massa e coloque na frigideira, gire a frigideira para espalhar bem a massa;","4 - Abaixe o fogo e deixe dourar por baixo, em seguida vire do outro lado e deixe dourar;","5 - Repita o processo com toda massa;","6 - Recheie a gosto."]'::jsonb,
  '3 unidades',
  '[{"totalEnergy":355,"servingEnergy":118},{"totalCarbs":63,"servingCarbs":21},{"totalProteins":1.3,"servingProteins":0.4},{"totalLipids":11,"servingLipids":4},{"totalSodium":788,"servingSodium":263},{"totalPotassium":82,"servingPotassium":27}]'::jsonb,
  '[{"leucine":44,"totalLeucine":110,"servingLeucine":37},{"tirosine":20,"totalTirosine":50,"servingTirosine":17},{"fenil":24,"totalFenil":60,"servingFenil":20},{"metiotine":12,"totalMetiotine":30,"servingMetiotine":10}]'::jsonb,
  '{"en-US":{"name":"Carrot Sweet Cake","ingredients":["200ml of water","15g of milk cream","6g of vegetable oil","2g of salt","3g of chemical yeast powder 20g of carrot","70g of gluten-free flour"],"preparation":["1 - beat all the ingredients in the blender and reserve;","2 - Grease a frying pan with a little oil and bring to heat;","3 - Divide the dough into 3 equal portions and with the help of a spoon take a portion of dough and place in the frying pan, turn the frying pan to spread the dough well;","4 - Lower the heat and let it brown on the bottom, then turn over and let it brown;","5 - Repeat the process with all the dough;","6 - Fill with the desired filling."],"servings":"3 servings"}}'::jsonb
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
  47,
  'Massa para pastel',
  'Massas',
  'https://plus.unsplash.com/premium_photo-1663853495255-f43171eaf9b4?q=80&w=400&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["220g de mandioca","120g de farinha sem glúten","20g de creme de leite","3g de sal"]'::jsonb,
  '["1 - Cozinhe a mandioca e passe no espremedor ou amasse bem com o garfo ainda quente;","2 - Em um recipiente, coloque o purê de mandioca, acrescente o creme de leite, o sal e os poucos a farinha até obter uma massa homogênea;","3 - Abra a massa com o auxílio de um rolo e molde os pastéis;","4 - Coloque o recheio de sua preferência;","5 - Asse em forno pré-aquecido por aproxi- madamente 20 minutos."]'::jsonb,
  '10 unidades',
  '[{"totalEnergy":833,"servingEnergy":83},{"totalCarbs":186,"servingCarbs":19},{"totalProteins":4.7,"servingProteins":0.5},{"totalLipids":8,"servingLipids":1},{"totalSodium":1201,"servingSodium":120},{"totalPotassium":619,"servingPotassium":62}]'::jsonb,
  '[{"leucine":43,"totalLeucine":250,"servingLeucine":25},{"tirosine":19,"totalTirosine":110,"servingTirosine":11},{"fenil":26,"totalFenil":150,"servingFenil":15},{"metiotine":12,"totalMetiotine":70,"servingMetiotine":7}]'::jsonb,
  '{"en-US":{"name":"Pastel Pastry","ingredients":["220g of cassava","120g of gluten-free flour","20g of milk cream","3g of salt"],"preparation":["1 - Cook the cassava and pass through the blender or mash well with the fork still hot;","2 - In a container, place the puré of cassava, add the milk cream, salt and a little of the flour until you get a homogeneous mass;","3 - Open the dough with the help of a roll and mold the pastries;","4 - Fill with the desired filling;","5 - Bake in pre-heated oven for approximately 20 minutes."],"servings":"10 servings"}}'::jsonb
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
  48,
  'Pastel Catarina',
  'Massas',
  'https://images.unsplash.com/photo-1608039783021-6116a558f0c5?q=80&w=400&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["30ml de água morna","40g de creme de leite","30g de maionese","3g de mostarda","6g de vinagre de maçã","2g de sal","150g de farinha sem glúten"]'::jsonb,
  '["1 - Em um recipiente misture todos os ingredientes, exceto a farinha;","2 - Misture bem e acrescente a farinha aos poucos até a massa desgrudar das mãos;","3 - Abra a massa com o auxílio de um rolo e corte em círculos;","4 - Recheie a gosto e dobre os meio, fechando bem as laterais;","5 - Leve para assar ou fritar até ficar mais crocante."]'::jsonb,
  '5 unidades',
  '[{"totalEnergy":856,"servingEnergy":171},{"totalCarbs":130,"servingCarbs":26},{"totalProteins":3,"servingProteins":0.6},{"totalLipids":37,"servingLipids":7},{"totalSodium":610,"servingSodium":122},{"totalPotassium":62,"servingPotassium":12}]'::jsonb,
  '[{"leucine":44,"totalLeucine":280,"servingLeucine":56},{"tirosine":19,"totalTirosine":120,"servingTirosine":24},{"fenil":25,"totalFenil":160,"servingFenil":32},{"metiotine":12,"totalMetiotine":80,"servingMetiotine":16}]'::jsonb,
  '{"en-US":{"name":"Catarina Pastel","ingredients":["30ml of warm water","40g of milk cream","30g of mayonnaise","3g of mustard","6g of apple vinegar","2g of salt","150g of gluten-free flour"],"preparation":["1 - In a container, mix all the ingredients, except the flour;","2 - mix well and add the flour a little at a time until the dough comes off the hands;","3 - Open the dough with the help of a roll and cut into circles;","4 - Fill with the desired filling and double the middle, closing well the sides;","5 - Bake or fry until it is more crispy."],"servings":"5 servings"}}'::jsonb
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
  49,
  'Massa para pizza',
  'Massas',
  'https://images.unsplash.com/photo-1703317605426-815bb8b2c40a?q=80&w=400&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["90g de farinha hipoproteica","90g de amido de milho","50ml de água morna","30g de creme de leite","30g de maionese","4g de fermento químico para bolo","3g de sal"]'::jsonb,
  '["1 - Em um recipiente, coloque a farinha, o amido de milho e o fermento e reserve;","2 - Misture o creme de leite com a água e despeje na mistura seca;","3 - Misture com uma colher até dar o ponto de amassar com as mãos;","4 - Abra a massa e divida em duas porções em formato de pizza;","5 - Adicione o recheio desejado e asse em forno pré-aquecido a 200°C por aproximadamente 25 minutos."]'::jsonb,
  '2 unidades',
  '[{"totalEnergy":957,"servingEnergy":479},{"totalCarbs":163,"servingCarbs":82},{"totalProteins":1.7,"servingProteins":0.9},{"totalLipids":31,"servingLipids":16},{"totalSodium":1465,"servingSodium":733},{"totalPotassium":74,"servingPotassium":37}]'::jsonb,
  '[{"leucine":47,"totalLeucine":158,"servingLeucine":79},{"tirosine":21,"totalTirosine":70,"servingTirosine":35},{"fenil":23,"totalFenil":79,"servingFenil":40},{"metiotine":9,"totalMetiotine":31,"servingMetiotine":15}]'::jsonb,
  '{"en-US":{"name":"Pizza Dough","ingredients":["90g of gluten-free flour","90g of cornstarch","50ml of warm water","30g of milk cream","30g of mayonnaise","4g of chemical yeast powder","3g of salt"],"preparation":["1 - In a bowl, place the flour, the cornstarch and the yeast and reserve;","2 - mix the milk cream with the water and pour into the dry mixture;","3 - mix with a spoon until you get the dough off the hands;","4 - Open the dough and divide into two portions in pizza shape;","5 - Add the desired filling and bake in pre-heated oven at 200°C for approximately 25 minutes."],"servings":"2 servings"}}'::jsonb
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
  50,
  'Ravioli de espinafre',
  'Massas',
  'https://images.unsplash.com/photo-1616169775818-9f7115b8821e?q=80&w=400&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["Ingredientes do recheio","40g de mandioquinha","10g de margarina sem sal","2g de sal","1g de salsinha ou cebolinha","Ingredientes da massa","150g de farinha sem glúten 100ml de água","7g de banha","10g de espinafre cru","5g de CMC ou goma xantana","2g de sal"]'::jsonb,
  '["Modo de preparo do recheio","1 - Descasque e cozinhe a mandioquinha até ficarem macias;","2 - Amasse até virar um purê e adicione os demais ingredientes, reserve.","Modo de preparo da massa","1 - Lave as folhas de espinafre;","2 - Triture no liquidificador com o mínimo de água possível;","3 - Em uma tigela, coloque a farinha, o CMC ou goma xantana, o sal e a banha;","4 - Faça uma farofinha e aos poucos adicione o conteúdo do liquidificador até obter uma massa lisa e homogênea.","Montagem","1 - Abra a massa com o auxílio de rolo;","2 - Disponha o recheio, dobre a massa e corte do formato de sua preferência;","3 - Cozinhe em água fervente com um fio de óleo;","4 - Retire da água quando começarem a boiar;","5 - Sirva com o molho de sua preferência."]'::jsonb,
  '8 unidades',
  '[{"totalEnergy":694,"servingEnergy":87},{"totalCarbs":145,"servingCarbs":18},{"totalProteins":3.6,"servingProteins":0.4},{"totalLipids":11,"servingLipids":1},{"totalSodium":1623,"servingSodium":203},{"totalPotassium":85,"servingPotassium":11}]'::jsonb,
  '[{"leucine":44,"totalLeucine":330,"servingLeucine":41},{"tirosine":19,"totalTirosine":140,"servingTirosine":18},{"fenil":27,"totalFenil":200,"servingFenil":25},{"metiotine":10,"totalMetiotine":80,"servingMetiotine":10}]'::jsonb,
  '{"en-US":{"name":"Spinach Ravioli","ingredients":["Ingredients of the filling","40g of mandioquinha","10g of margarine without salt","2g of salt","1g of parsley or onion","Ingredients of the dough","150g of gluten-free flour 100ml of water","7g of fat","10g of spinach","5g of CMC or xanthan gum","2g of salt"],"preparation":["Mode of preparation of the filling:","1 - Peel and cook the mandioca until they are soft;","2 - Mash until it becomes a puré and add the other ingredients, reserve.","Mode of preparation of the dough:","1 - Wash the spinach leaves;","2 - Blend with the minimum of water possible;","3 - In a bowl, place the flour, the CMC or xanthan gum, the salt and the fat;","4 - Make a farofinha and add the content of the blender a little at a time until you get a smooth and homogeneous dough.","Assembly:","1 - Open the dough with the help of a roll;","2 - Displace the filling, double the dough and cut in the shape of your preference;","3 - Cook in boiling water with a little oil;","4 - Remove from the water when they start to boil;","5 - Serve with the sauce of your preference."],"servings":"8 servings"}}'::jsonb
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
  51,
  'Risoles',
  'Massas',
  'https://media.istockphoto.com/id/471026259/pt/foto/bacalhau-portugu%C3%AAs-bolos.jpg?s=2048x2048&w=is&k=20&c=V5me6LNz0a5u85ZjqlLtBF2iV0pXApgyiUPlcgmiXxs=',
  '["Ingredientes do recheio","25g de palmito","30g de cogumelos champignon 60g de tomate","15g de cebola","10g de milho","3g de salsinha","0,5g de orégano seco","5g de azeite de oliva","Ingredientes da massa","200ml de água","7,5g de caldo de legumes em sachê 30g de margarina sem sal","2g de goma xantana ou liga neutra 100g de farinha hipoproteica","20g de farinha sem glúten","Para empanar: 20g de farinha de mandioca"]'::jsonb,
  '["Modo de preparo da massa","1 - Em uma panela, coloque a água com o sal, o orégano e a margarina para ferver;","2 - Quando levantar fervura, adicione as farinhas aos poucos, mexa e cozinhe por alguns minutos. A massa deve ficar em consistência de polenta;","3 - Retire a massa ainda quente da panela e amasse com auxílio de uma colher, depois com as mãos, até obter uma massa lisa para moldar;","4 - Abra a massa e corte em 10 círculos para fazer os risoles, reserve.","Modo de preparo do recheio","1 - Em uma panela, refogue a cebola no azeite;","2 - Adicione os demais ingredientes e cozinhe;","3 - Divida o recheio em 10 porções iguais e reserve.","Montagem","1 - Recheie a massa e feche os risoles apertando bem as bordas;","2 - Passe os risoles prontos na água e em seguida na farinha de mandioca peneirada para empanar;","3 - Frite rapidamente em óleo quente e coloque no papel absorvente."]'::jsonb,
  '10 unidades',
  '[{"totalEnergy":1036,"servingEnergy":104},{"totalCarbs":130,"servingCarbs":13},{"totalProteins":3.5,"servingProteins":0.4},{"totalLipids":57,"servingLipids":6},{"totalSodium":4571,"servingSodium":457},{"totalPotassium":276,"servingPotassium":28}]'::jsonb,
  '[{"leucine":44,"totalLeucine":240,"servingLeucine":24},{"tirosine":19,"totalTirosine":100,"servingTirosine":10},{"fenil":26,"totalFenil":140,"servingFenil":14},{"metiotine":11,"totalMetiotine":60,"servingMetiotine":6}]'::jsonb,
  '{"en-US":{"name":"Risoles","ingredients":["Ingredients of the filling","25g of palmito","30g of champignon mushrooms 60g of tomato","15g of onion","10g of corn","3g of parsley","0,5g of dried oregano","5g of olive oil","Ingredients of the dough","200ml of water","7,5g of vegetable broth in sachet 30g of margarine without salt","2g of xanthan gum or neutral glue 100g of gluten-free flour","20g of gluten-free flour","To empanar: 20g of cassava flour"],"preparation":["Mode of preparation of the dough:","1 - In a pan, place the water with the salt, the oregano and the margarine to boil;","2 - When it starts to boil, add the flour a little at a time, mix and cook for a few minutes. The dough should be in consistency of polenta;","3 - Remove the dough still hot from the pan and mash with the help of a spoon, then with the hands, until you get a smooth dough to mold;","4 - Open the dough and cut into 10 circles to make the risoles, reserve.","Mode of preparation of the filling:","1 - In a pan, sauté the onion in the olive oil;","2 - Add the other ingredients and cook;","3 - Divide the filling into 10 equal portions and reserve.","Assembly:","1 - Fill the dough and close the risoles pressing well the edges;","2 - Pass the ready risoles in water and then in the cassava flour sieved to empanar;","3 - Fry quickly in hot oil and place on a paper towel."],"servings":"10 servings"}}'::jsonb
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