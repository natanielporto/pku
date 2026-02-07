-- Batch 9 (recipes 81 to 90)

INSERT INTO recipes (id, name, category, image, ingredients, preparation, servings, nutritional_information, graph_information, translations)
VALUES (
  82,
  'Hambúrguer de legumes',
  'Prato principal e vegetais',
  '[URL_DA_IMAGEM]',
  '["300g de cenoura ralada","280g de abobrinha ralada","100g de beterraba ralada","80g de cebola picada","12g de óleo vegetal","150g de farinha de mandioca","200ml de água","5g de sal"]'::jsonb,
  '["1 - Em uma panela, refogue os legumes com a cebola e o óleo até ficarem bem macios;","2 - Acrescente a água e a farinha de mandioca e mexa para engrossar em fogo baixo;","3 - Deixe cozinhar bastante. Espere esfriar e modele os hambúrgueres;","4 - Divida a massa em quinze porções iguais."]'::jsonb,
  '15 unidades',
  '[{"totalEnergy":924,"servingEnergy":62},{"totalCarbs":185,"servingCarbs":12},{"totalProteins":11.4,"servingProteins":0.8},{"totalLipids":14,"servingLipids":1},{"totalSodium":2131,"servingSodium":142},{"totalPotassium":2114,"servingPotassium":141}]'::jsonb,
  '[{"leucine":40,"totalLeucine":591,"servingLeucine":39},{"fenil":28,"totalFenil":412,"servingFenil":27},{"tirosine":24,"totalTirosine":358,"servingTirosine":24},{"metiotine":8,"totalMetiotine":117,"servingMetiotine":8}]'::jsonb,
  NULL
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
  83,
  'Hambúrguer de berinjela',
  'Prato principal e vegetais',
  '[URL_DA_IMAGEM]',
  '["280g de berinjela","60g de cebola","5g de alho","5g de salsinha","100g de farinha sem glúten","15g de farinha hipoproteica","5g de goma xantana ou liga neutra","3g de sal","0,5g de orégano seco ou chimichurri","10g de óleo vegetal"]'::jsonb,
  '["1 - Corte a berinjela em cubos pequenos, deixe de molho em água com sal por duas horas, escorra;","2 - Refogue a cebola até ficar macia, adicione o alho, a berinjela e a liga neutra ou goma xantana, e cozinhe;","3 - No processador, bata a mistura;","4 - Adicione as farinhas e a salsinha;","5 - Leve à geladeira até ficar completamente frio;","6 - Abra a massa entre dois plásticos;","7 - Com um copo, modele os hambúrgueres no tamanho desejado;","8 - Grelhe em uma frigideira com um fio de óleo;","9 - É possível congelar, e ao usar, deixe na geladeira um pouco antes de grelhar."]'::jsonb,
  '6 unidades',
  '[{"totalEnergy":645,"servingEnergy":108},{"totalCarbs":131,"servingCarbs":22},{"totalProteins":6.8,"servingProteins":1.1},{"totalLipids":11,"servingLipids":2},{"totalSodium":1178,"servingSodium":196},{"totalPotassium":770,"servingPotassium":128}]'::jsonb,
  '[{"leucine":43,"totalLeucine":300,"servingLeucine":50},{"fenil":29,"totalFenil":200,"servingFenil":33},{"tirosine":19,"totalTirosine":130,"servingTirosine":22},{"metiotine":9,"totalMetiotine":62,"servingMetiotine":10}]'::jsonb,
  NULL
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
  84,
  'Hambúrguer de couve-flor',
  'Prato principal e vegetais',
  '[URL_DA_IMAGEM]',
  '["300g de couve-flor","5g de alho","15g de cebola","3g de cebolinha","3g de salsinha","50g de farinha sem glúten","3g de liga neutra","2g de sal"]'::jsonb,
  '["1 - Lave e cozinhe a couve-flor até ficar bem macia;","2 - Amasse a couve-flor e refogue em uma panela com os demais temperos;","3 - Acrescente a liga neutra, o sal e a farinha aos poucos;","4 - Mexa em fogo baixo até formar uma massa mais seca;","5 - Espere esfriar e molde os hambúrgueres;","6 - Grelhe rapidamente na frigideira com um fio de óleo."]'::jsonb,
  '10 unidades',
  '[{"totalEnergy":281,"servingEnergy":28},{"totalCarbs":64,"servingCarbs":6},{"totalProteins":7.1,"servingProteins":0.7},{"totalLipids":2,"servingLipids":0},{"totalSodium":869,"servingSodium":87},{"totalPotassium":978,"servingPotassium":98}]'::jsonb,
  '[{"leucine":45,"totalLeucine":430,"servingLeucine":43},{"fenil":27,"totalFenil":260,"servingFenil":26},{"tirosine":17,"totalTirosine":160,"servingTirosine":16},{"metiotine":11,"totalMetiotine":100,"servingMetiotine":10}]'::jsonb,
  NULL
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
  85,
  'Kibe de berinjela',
  'Prato principal e vegetais',
  '[URL_DA_IMAGEM]',
  '["300g de polpa de berinjela","30g de cebola","2g de hortelã","5g de sal","50g de farinha de mandioca crua","0,2g de pimenta do reino","8g de suco de limão","15g de azeite de oliva"]'::jsonb,
  '["1 - Corte as berinjelas no sentido do comprimento, dividindo em duas partes;","2 - Disponha em uma assadeira e faça um quadriculado com a faca em cada uma delas;","3 - Tempere com pimenta do reino, sal e azeite;","4 - Leve ao forno até que amoleça, aproximadamente 40 minutos;","5 - Raspe a polpa com uma colher e pese 300g, reserve;","6 - Amasse ou bata a polpa de berinjela no mixer com os demais ingredientes, exceto a farinha;","7 - Acrescente a farinha até obter uma massa moldável;","8 - Modele em formato de kibe;","9 - Asse em forno pré-aquecido a 200°C até que fique mais sequinho."]'::jsonb,
  '10 unidades',
  '[{"totalEnergy":419,"servingEnergy":42},{"totalCarbs":65,"servingCarbs":6},{"totalProteins":4.4,"servingProteins":0.4},{"totalLipids":16,"servingLipids":2},{"totalSodium":1948,"servingSodium":195},{"totalPotassium":710,"servingPotassium":71}]'::jsonb,
  '[{"leucine":43,"totalLeucine":270,"servingLeucine":27},{"fenil":29,"totalFenil":180,"servingFenil":18},{"tirosine":22,"totalTirosine":140,"servingTirosine":14},{"metiotine":6,"totalMetiotine":40,"servingMetiotine":4}]'::jsonb,
  NULL
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
  86,
  'Mandioca frita cremosa',
  'Prato principal e vegetais',
  '[URL_DA_IMAGEM]',
  '["130g de mandioca","3g de sal","5g de cebolinha","Óleo para fritar"]'::jsonb,
  '["1 - Cozinhe a mandioca e coloque em um refratário, amassando um pouco;","2 - Deixe na geladeira por 20 minutos;","3 - Corte a mandioca em cubos;","4 - Frite em óleo bem quente e tempere."]'::jsonb,
  '2 porções',
  '[{"totalEnergy":386,"servingEnergy":193},{"totalCarbs":50,"servingCarbs":25},{"totalProteins":1.9,"servingProteins":0.9},{"totalLipids":20,"servingLipids":10},{"totalSodium":794,"servingSodium":397},{"totalPotassium":366,"servingPotassium":183}]'::jsonb,
  '[{"leucine":43,"totalLeucine":60,"servingLeucine":30},{"fenil":29,"totalFenil":40,"servingFenil":20},{"tirosine":14,"totalTirosine":20,"servingTirosine":10},{"metiotine":14,"totalMetiotine":20,"servingMetiotine":10}]'::jsonb,
  NULL
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
  87,
  'Molho de legumes',
  'Prato principal e vegetais',
  '[URL_DA_IMAGEM]',
  '["60g de abobrinha crua","20g de brócolis cru","50g de tomate cru","60g de cenoura crua","10g de azeite de oliva","2g de alho","15g de cebola","3g de sal","40ml de água para cozinhar"]'::jsonb,
  '["1 - Pique os legumes e reserve;","2 - Refogue a cebola e o alho no azeite e adicione os legumes e o sal;","3 - Adicione a água e deixe cozinhar até ficarem macios;","4 - À parte, cozinhe macarrão ou utilize arroz já pronto;","5 - Utilize uma porção do molho de legumes e misture em uma porção de macarrão ou arroz."]'::jsonb,
  '3 porções',
  '[{"totalEnergy":147,"servingEnergy":49},{"totalCarbs":13,"servingCarbs":4},{"totalProteins":2.6,"servingProteins":0.9},{"totalLipids":10,"servingLipids":3},{"totalSodium":1196,"servingSodium":399},{"totalPotassium":550,"servingPotassium":183}]'::jsonb,
  '[{"leucine":41,"totalLeucine":120,"servingLeucine":40},{"fenil":28,"totalFenil":80,"servingFenil":27},{"tirosine":21,"totalTirosine":60,"servingTirosine":20},{"metiotine":10,"totalMetiotine":30,"servingMetiotine":10}]'::jsonb,
  NULL
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
  88,
  'Molho de tomate caseiro',
  'Prato principal e vegetais',
  '[URL_DA_IMAGEM]',
  '["480g de tomate sem casca","15g de azeite de oliva","10g de alho","2g de manjericão fresco","3g de açúcar","3g de sal","0,1g de pimenta do reino"]'::jsonb,
  '["1 - Corte os tomates em cruz na parte de baixo e coloque em água fervente para retirar a pele;","2 - Coloque a mais do que a quantidade indicada, pois ao tirar a pele vai reduzir;","3 - Retire da água quente e coloque no gelo para soltar a pele;","4 - Corte ao meio para retirar as sementes, se desejar;","5 - Pique os tomates já pelados;","6 - Refogue no azeite com alho, açúcar, o sal e a pimenta;","7 - Bata com um mixer e deixe apurar;","8 - Adicione o manjericão fresco para finalizar."]'::jsonb,
  '3 porções',
  '[{"totalEnergy":261,"servingEnergy":87},{"totalCarbs":29,"servingCarbs":10},{"totalProteins":4.8,"servingProteins":1.6},{"totalLipids":17,"servingLipids":6},{"totalSodium":1208,"servingSodium":403},{"totalPotassium":113,"servingPotassium":38}]'::jsonb,
  '[{"leucine":42,"totalLeucine":180,"servingLeucine":60},{"fenil":30,"totalFenil":130,"servingFenil":43},{"tirosine":19,"totalTirosine":80,"servingTirosine":27},{"metiotine":9,"totalMetiotine":40,"servingMetiotine":13}]'::jsonb,
  NULL
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
  89,
  'Nhoque de batata salsa',
  'Prato principal e vegetais',
  '[URL_DA_IMAGEM]',
  '["250g de mandioquinha cozida","50g de farinha sem glúten","20g de maionese","4g de fermento químico em pó","5g de salsinha","3g de sal"]'::jsonb,
  '["1 - Amasse a mandioquinha cozida com um garfo ou espremedor de batata até obter um purê;","2 - Acrescente os demais ingredientes, deixe a farinha por último;","3 - Amasse bem até ficar uma massa lisa;","4 - Faça bolinhas e depois rolinhos para cortar em formato de nhoque;","5 - Cozinhe o nhoque na água fervente;","6 - Retire com uma escumadeira quando subirem à superfície;","7 - Sirva com margarina ou molho de tomate e polvilhe salsinha por cima."]'::jsonb,
  '2 porções',
  '[{"totalEnergy":595,"servingEnergy":297},{"totalCarbs":109,"servingCarbs":54},{"totalProteins":3.3,"servingProteins":1.7},{"totalLipids":17,"servingLipids":8},{"totalSodium":1280,"servingSodium":640},{"totalPotassium":173,"servingPotassium":86}]'::jsonb,
  '[{"leucine":43,"totalLeucine":230,"servingLeucine":115},{"fenil":27,"totalFenil":140,"servingFenil":70},{"tirosine":19,"totalTirosine":100,"servingTirosine":50},{"metiotine":11,"totalMetiotine":60,"servingMetiotine":30}]'::jsonb,
  NULL
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
  90,
  'Nhoque três tubérculos',
  'Prato principal e vegetais',
  '[URL_DA_IMAGEM]',
  '["80g de batata inglesa","70g de batata doce","100g de mandioca","15g de margarina sem sal","3g de sal","50g de farinha hipoproteica","80g de tomate","50g de cebola","3g de sal (molho)"]'::jsonb,
  '["1 - Descasque e cozinhe os tubérculos até ficarem macios;","2 - Escorra bem e com o auxílio de um garfo amasse até obter um purê e adicione a margarina;","3 - Deixe esfriar, adicione o sal e a farinha até dar ponto na massa;","4 - Faça bolinhas com a massa;","5 - Cozinhe em uma panela com água fervente e um fio de óleo até que venham a superfície;","6 - Escorra com o auxílio de uma escumadeira;","7 - Pique o tomate em pedaços pequenos;","8 - Em uma panela, refogue com a cebola, tempere e deixe apurar;","9 - Sirva com molho de tomate."]'::jsonb,
  '2 porções',
  '[{"totalEnergy":488,"servingEnergy":244},{"totalCarbs":102,"servingCarbs":51},{"totalProteins":6.9,"servingProteins":3.4},{"totalLipids":6,"servingLipids":3},{"totalSodium":1276,"servingSodium":638},{"totalPotassium":1341,"servingPotassium":670}]'::jsonb,
  '[{"leucine":40,"totalLeucine":370,"servingLeucine":185},{"fenil":28,"totalFenil":260,"servingFenil":130},{"tirosine":20,"totalTirosine":190,"servingTirosine":95},{"metiotine":12,"totalMetiotine":110,"servingMetiotine":55}]'::jsonb,
  NULL
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
  91,
  'Nuggets sem segredo',
  'Prato principal e vegetais',
  '[URL_DA_IMAGEM]',
  '["150g de abobrinha ralada","135g de batata","100g de cenoura","120g de farinha sem glúten","5g de sal","18g de azeite de oliva","55g de cebola","0.5g de orégano seco","25g de farinha de mandioca"]'::jsonb,
  '["1 - Cozinhe a cenoura e a batata, amasse até obter um purê e reserve;","2 - Refogue a abobrinha no azeite junto com a cebola e tempere com o sal e o orégano;","3 - Acrescente o purê de batata e cenoura na panela;","4 - Desligue o fogo e adicione a farinha aos poucos, mexendo sempre;","5 - Retire da panela e coloque em outro recipiente para amornar;","6 - Molde a massa em formato de nuggets, passe na farinha de mandioca para empanar e disponha em uma assadeira;","7 - Asse em forno pré-aquecido a 200°C por alguns minutos até dourar."]'::jsonb,
  '16 unidades',
  '[{"totalEnergy":899,"servingEnergy":56},{"totalCarbs":174,"servingCarbs":11},{"totalProteins":8.7,"servingProteins":0.5},{"totalLipids":19,"servingLipids":1},{"totalSodium":2020,"servingSodium":126},{"totalPotassium":1129,"servingPotassium":71}]'::jsonb,
  '[{"leucine":42,"totalLeucine":570,"servingLeucine":36},{"fenil":27,"totalFenil":370,"servingFenil":23},{"tirosine":21,"totalTirosine":290,"servingTirosine":18},{"metiotine":10,"totalMetiotine":140,"servingMetiotine":9}]'::jsonb,
  NULL
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