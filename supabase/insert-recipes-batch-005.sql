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
  '{"en-US":{"name":"Pudim de tapioca","ingredients":["100ml of água","160g of sugar refinado","200g of leite of coco diluído em 100ml of água","100g of tapioca desidratada","25g of margarina sem sal","30g of amido of milho","125g of creme of leite","10g of coco ralado","10g of pó para preparo of flan sabor vanilla"],"preparation":["Modo of preparo da syrup","1 - Em uma pan, derreta o quanto baste of sugar e faça um caramel;","2 - Envolva uma forma com a syrup of caramel ainda quente e reserve.","Modo of preparo do pudim","1 - Em uma vasilha, coloque a tapioca of molho no leite of coco diluído em água por alguns minutos;","2 - beat no blender a tapioca já hidratada com os demais ingredientes, exceto o coco ralado;","3 - Adicione o coco na mistura e coloque na forma caramelizada;","4 - Asse em banho maria no forno ou pan por aproximadamente 40 minutos."],"servings":"10 fatias"}}'::jsonb
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
  '{"en-US":{"name":"Coxinha de mandioca","ingredients":["500ml of água","400g of mandioca","100g of farinha hipoproteica","70g of farinha of mandioca","25g of margarina sem sal","6g of sal","1g of páprica doce","1g of orégano seco"],"preparation":["1 - Cozinhe a mandioca, amasse até obter um purê e reserve;","2 - Em uma pan, ferva a água com a margarina, o sal, a páprica e o orégano;","3 - Acrescente o purê of mandioca e dissolva bem até ficar uma massa homogênea;","4 - Acrescente a farinha hipoproteica e cozinhe por 5 minutos, mexendo sempre;","5 - Retire a massa da pan e coloque em uma bancada, amasse com auxílio of uma colher e depois com as mãos até ficar bem lisinha e firme. Deixar esfriar para moldar;","6 - Recheie com legumes cozidos e temperados a gosto;","7 - Para empanar passe na água e em seguida na farinha of mandioca peneirada;","8 - Frite em óleo quente e coloque em papel absorvente."],"servings":"18 unidades"}}'::jsonb
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
  '{"en-US":{"name":"Massa para torta ou empada","ingredients":["100g of farinha hipoproteica","70g of margarina sem sal","5g of emulsificante","3g of sal","1g of fermento químico em pó","0,5g of açafrão em pó"],"preparation":["1 - mix todos os ingredientes, exceto a farinha;","2 - Adicione a farinha aos poucos até dar o ponto da massa, que deve ficar parecida com massa of pastel;","3 - Coloque em forminhas e recheie com legumes a gosto;","4 - Leve ao forno pré-aquecido a 200°C até dourarem."],"servings":"6 unidades"}}'::jsonb
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
  '{"en-US":{"name":"Massa para empadinha","ingredients":["140g of farinha sem glúten","1g of goma xantana","2g of sal","2g of sugar refinado","60g of margarina sem sal","40ml of água"],"preparation":["1 - Em um recipiente, mix todos os ingredientes até obter uma massa lisa que não grude nas mãos;","2 - Abra a massa com o auxílio of um rolo e disponha em forminhas individuais;","3 - Recheie com o recheio of sua preferência;","4 - Leve ao forno pré-aquecido a 180°C por aproximadamente 20 minutos."],"servings":"5 unidades"}}'::jsonb
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
  45,
  'Panqueca docinha',
  'Massas',
  'https://images.unsplash.com/photo-1705138591117-2aaf6a7e08ae?q=80&w=400&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["40ml de água morna","20g de creme de leite","50g de farinha sem glúten","4g de óleo vegetal","5g de fermento químico em pó","30g de açúcar refinado"]'::jsonb,
  '["1 - Em um recipiente, misture todos os ingredientes e bata com o auxílio de um fuê ou mixer até que fique uma massa homogênea;","2 - Pegue porções da massa com uma concha e coloque em uma frigideira pré-aquecida e untada com óleo;","3 - Doure a massa de ambos os lados","4 - Recheie a gosto."]'::jsonb,
  '2 unidades',
  '[{"totalEnergy":196,"servingEnergy":39},{"totalCarbs":77,"servingCarbs":38},{"totalProteins":1.5,"servingProteins":0.7},{"totalLipids":9,"servingLipids":5},{"totalSodium":9,"servingSodium":5},{"totalPotassium":24,"servingPotassium":12}]'::jsonb,
  '[{"leucine":46,"totalLeucine":150,"servingLeucine":75},{"tirosine":18,"totalTirosine":60,"servingTirosine":30},{"fenil":24,"totalFenil":80,"servingFenil":40},{"metiotine":12,"totalMetiotine":40,"servingMetiotine":20}]'::jsonb,
  '{"en-US":{"name":"Panqueca docinha","ingredients":["40ml of água morna","20g of creme of leite","50g of farinha sem glúten","4g of óleo vegetal","5g of fermento químico em pó","30g of sugar refinado"],"preparation":["1 - Em um recipiente, mix todos os ingredientes e beat com o auxílio of um fuê ou mixer até que fique uma massa homogênea;","2 - Pegue porções da massa com uma concha e coloque em uma frigideira pré-aquecida e untada com óleo;","3 - Doure a massa of ambos os lados","4 - Recheie a gosto."],"servings":"2 unidades"}}'::jsonb
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
  '{"en-US":{"name":"Panqueca de cenoura","ingredients":["200ml of água","15g of creme of leite","6g of óleo vegetal","2g of sal","3g of fermento químico em pó 20g of cenoura","70g of farinha sem glúten"],"preparation":["1 - beat todos os ingredientes no blender e reserve;","2 - Unte uma frigideira com um fio of óleo e leve ao fogo até aquecer;","3 - Divida a massa em 3 porções iguais e com auxílio of uma concha pegue uma porção of massa e coloque na frigideira, gire a frigideira para espalhar bem a massa;","4 - Abaixe o fogo e deixe dourar por baixo, em seguida vire do outro lado e deixe dourar;","5 - Repita o processo com toda massa;","6 - Recheie a gosto."],"servings":"3 unidades"}}'::jsonb
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
  '{"en-US":{"name":"Massa para pastel","ingredients":["220g of mandioca","120g of farinha sem glúten","20g of creme of leite","3g of sal"],"preparation":["1 - Cozinhe a mandioca e passe no espremedor ou amasse bem com o garfo ainda quente;","2 - Em um recipiente, coloque o purê of mandioca, acrescente o creme of leite, o sal e os poucos a farinha até obter uma massa homogênea;","3 - Abra a massa com o auxílio of um rolo e molde os pastéis;","4 - Coloque o recheio of sua preferência;","5 - Asse em forno pré-aquecido por aproxi- madamente 20 minutos."],"servings":"10 unidades"}}'::jsonb
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
  '{"en-US":{"name":"Pastel Catarina","ingredients":["30ml of água morna","40g of creme of leite","30g of maionese","3g of mostarda","6g of vinagre of maçã","2g of sal","150g of farinha sem glúten"],"preparation":["1 - Em um recipiente mix todos os ingredientes, exceto a farinha;","2 - mix bem e acrescente a farinha aos poucos até a massa desgrudar das mãos;","3 - Abra a massa com o auxílio of um rolo e cut em círculos;","4 - Recheie a gosto e dobre os meio, fechando bem as laterais;","5 - Leve para assar ou fritar até ficar mais crocante."],"servings":"5 unidades"}}'::jsonb
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
  '{"en-US":{"name":"Massa para pizza","ingredients":["90g of farinha hipoproteica","90g of amido of milho","50ml of água morna","30g of creme of leite","30g of maionese","4g of fermento químico para bolo","3g of sal"],"preparation":["1 - Em um recipiente, coloque a farinha, o amido of milho e o fermento e reserve;","2 - mix o creme of leite com a água e despeje na mistura seca;","3 - mix com uma colher até dar o ponto of amassar com as mãos;","4 - Abra a massa e divida em duas porções em formato of pizza;","5 - Adicione o recheio desejado e asse em forno pré-aquecido a 200°C por aproximadamente 25 minutos."],"servings":"2 unidades"}}'::jsonb
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
  '{"en-US":{"name":"Ravioli de espinafre","ingredients":["Ingredientes do recheio","40g of mandioquinha","10g of margarina sem sal","2g of sal","1g of salsinha ou cebolinha","Ingredientes da massa","150g of farinha sem glúten 100ml of água","7g of banha","10g of espinafre cru","5g of CMC ou goma xantana","2g of sal"],"preparation":["Modo of preparo do recheio","1 - Descasque e cozinhe a mandioquinha até ficarem macias;","2 - Amasse até virar um purê e adicione os demais ingredientes, reserve.","Modo of preparo da massa","1 - Lave as folhas of espinafre;","2 - Triture no blender com o mínimo of água possível;","3 - Em uma tigela, coloque a farinha, o CMC ou goma xantana, o sal e a banha;","4 - Faça uma farofinha e aos poucos adicione o conteúdo do blender até obter uma massa lisa e homogênea.","Montagem","1 - Abra a massa com o auxílio of rolo;","2 - Disponha o recheio, dobre a massa e cut do formato of sua preferência;","3 - Cozinhe em água fervente com um fio of óleo;","4 - Retire da água quando começarem a boiar;","5 - Sirva com o molho of sua preferência."],"servings":"8 unidades"}}'::jsonb
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