-- Batch 7 (recipes 61 to 70)

INSERT INTO recipes (id, name, category, image, ingredients, preparation, servings, nutritional_information, graph_information, translations)
VALUES (
  62,
  'Pãozinho de beijo',
  'Pães',
  '[URL_DA_IMAGEM]',
  '["200g de polvilho doce","50g de polvilho azedo","360g de mandioca cozida","100ml de água","40g de óleo vegetal","5g de fermento químico em pó","4g de sal","0,5g de orégano seco"]'::jsonb,
  '["1 - Amasse a mandioca cozida ainda quente até obter um purê e reserve;","2 - Em uma panela ferva a água, o óleo e o sal;","3 - Em outro recipiente misturar os polvilhos e adicione a água temperada;","4 - Misture bem e adicione o purê de mandioca aos poucos, até obter uma massa lisa que não grude nas mãos;","5 - Faça bolinhas e disponha em uma assadeira untada com margarina;","6 - Asse em forno pré-aquecido a 180°C até dourar."]'::jsonb,
  '20 unidades',
  '[{"totalEnergy":1832,"servingEnergy":92},{"totalCarbs":360,"servingCarbs":18},{"totalProteins":5.7,"servingProteins":0.3},{"totalLipids":41,"servingLipids":2},{"totalSodium":1606,"servingSodium":80},{"totalPotassium":1003,"servingPotassium":50}]'::jsonb,
  '[{"leucine":41,"totalLeucine":140,"servingLeucine":7},{"fenil":29,"totalFenil":100,"servingFenil":5},{"tirosine":18,"totalTirosine":60,"servingTirosine":3},{"metiotine":12,"totalMetiotine":40,"servingMetiotine":2}]'::jsonb,
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
  63,
  'Pão sem glúten',
  'Pães',
  '[URL_DA_IMAGEM]',
  '["300g de farinha sem glúten","65g de açúcar orgânico","7g de fermento biológico seco","5g de emulsificante","2g de liga neutra","75g de margarina sem sal","60g de creme de leite","190ml de água","3g de sal"]'::jsonb,
  '["1 - Em um recipiente, misture bem a farinha, o açúcar o emulsificante, a liga neutra e o fermento, reserve;","2 - Aqueça a margarina junto com o creme de leite no micro-ondas por 25 segundos;","3 - Adicione essa mistura à massa anterior e mexa com o auxílio de um fuê;","4 - Adicione a água morna aos poucos até a massa ficar em ponto de sovar, não muito é mole;","5 - Coloque a massa na batedeira e bata em velocidade mínima por 5 minutos;","6 - Disponha a massa em forma de bolo inglês e deixe crescer por 20 minutos;","7 - Asse em forno pré-aquecido a 230°C por aproximadamente 35 minutos ou até que fique assado por completo."]'::jsonb,
  '14 fatias',
  '[{"totalEnergy":1707,"servingEnergy":122},{"totalCarbs":309,"servingCarbs":22},{"totalProteins":13.1,"servingProteins":0.9},{"totalLipids":42,"servingLipids":3},{"totalSodium":2632,"servingSodium":188},{"totalPotassium":70,"servingPotassium":5}]'::jsonb,
  '[{"leucine":44,"totalLeucine":1170,"servingLeucine":84},{"fenil":26,"totalFenil":680,"servingFenil":49},{"tirosine":19,"totalTirosine":490,"servingTirosine":35},{"metiotine":11,"totalMetiotine":300,"servingMetiotine":21}]'::jsonb,
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
  64,
  'Abobrinha crocante',
  'Prato principal e vegetais',
  'https://images.unsplash.com/photo-1593978756010-bbb0f3314cf6?q=80&w=400&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["200g de abobrinha","40g de amido de milho","1g de orégano seco","3g de sal","Óleo para fritar"]'::jsonb,
  '["1 - Lave e corte as abobrinhas em rodelas, reserve;","2 - Em um recipiente, misture o amido de milho com o sal e o orégano;","3 - Passe as rodelas de abobrinha nessa mistura;","4 - Frite em óleo quente e coloque em papel absorvente."]'::jsonb,
  '2 porções',
  '[{"totalEnergy":886,"servingEnergy":443},{"totalCarbs":45,"servingCarbs":22},{"totalProteins":1.5,"servingProteins":0.7},{"totalLipids":79,"servingLipids":40},{"totalSodium":1172,"servingSodium":586},{"totalPotassium":507,"servingPotassium":254}]'::jsonb,
  '[{"leucine":45,"totalLeucine":90,"servingLeucine":45},{"fenil":25,"totalFenil":50,"servingFenil":25},{"tirosine":20,"totalTirosine":40,"servingTirosine":20},{"metiotine":10,"totalMetiotine":20,"servingMetiotine":10}]'::jsonb,
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
  65,
  'Almôndegas de berinjela',
  'Prato principal e vegetais',
  '[URL_DA_IMAGEM]',
  '["200g de berinjela sem casca","30g de cebola","10g de alho","50g de farinha de mandioca","5g de salsinha","10g de azeite de oliva","4g de sal","0,5g de orégano seco"]'::jsonb,
  '["1 - Corte a berinjela em pedaços bem pequenos e deixe de molho na água;","2 - Em uma panela, refogue o alho e a cebola no azeite;","3 - Escorra a berinjela e junte à panela, acerte o sal;","4 - Tampe a panela e abaixe o fogo, a berinjela vai soltar água que será necessário para o cozimento, mexa de vez em quando até secar a água e a berinjela estiver molinha;","5 - Se necessário coloque mais um pouco de água;","6 - Adicione a salsinha e desligue o fogo;","7 - Deixe esfriar e amasse bem o garfo até ficar bem triturado;","8 - Coloque a farinha de mandioca até ficar no ponto de conseguir moldar em bolinhas;","9 - Disponha em uma assadeira e asse em forno pré-aquecido até dourar."]'::jsonb,
  '10 unidades',
  '[{"totalEnergy":309,"servingEnergy":31},{"totalCarbs":62,"servingCarbs":6},{"totalProteins":4.1,"servingProteins":0.4},{"totalLipids":5,"servingLipids":0},{"totalSodium":1562,"servingSodium":156},{"totalPotassium":549,"servingPotassium":55}]'::jsonb,
  '[{"leucine":42,"totalLeucine":240,"servingLeucine":24},{"fenil":28,"totalFenil":160,"servingFenil":16},{"tirosine":23,"totalTirosine":130,"servingTirosine":13},{"metiotine":7,"totalMetiotine":40,"servingMetiotine":4}]'::jsonb,
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
  66,
  'Batata recheada',
  'Prato principal e vegetais',
  '[URL_DA_IMAGEM]',
  '["490g de batatas grandes","5g de alho amassado","3g de sal","50g de queijo vegano","60g de creme de leite","40g de maionese","1g de orégano"]'::jsonb,
  '["1 - Lave as batatas, corte as duas extremidades para que as batatas fiquem em pé e corte-as ao meio ou longitudinalmente, se preferir;","2 - Em uma panela de pressão, cozinhe por cerca de 10 minutos após começar a chiar;","3 - Com as batatas ainda quentes, retire o centro preservando o fundo e laterais;","4 - Amasse a porção retirada das batatas e tempere com a margarina, alho, creme de leite, sal e ervas a gosto;","5 - Disponha as batatas em um refratário, salpique sal e coloque o purê temperado dentro das batatas;","6 - À parte, misture os ingredientes do gratinado de queijo e coloque por cima das batatas;","7 - Leve ao forno a 200°C até gratinar."]'::jsonb,
  '8 unidades',
  '[{"totalEnergy":980,"servingEnergy":122},{"totalCarbs":104,"servingCarbs":13},{"totalProteins":13.1,"servingProteins":1.6},{"totalLipids":59,"servingLipids":7},{"totalSodium":1574,"servingSodium":197},{"totalPotassium":2763,"servingPotassium":345}]'::jsonb,
  '[{"leucine":40,"totalLeucine":860,"servingLeucine":108},{"fenil":27,"totalFenil":590,"servingFenil":74},{"tirosine":23,"totalTirosine":510,"servingTirosine":64},{"metiotine":10,"totalMetiotine":220,"servingMetiotine":28}]'::jsonb,
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
  67,
  'Batatas ao forno',
  'Prato principal e vegetais',
  '[URL_DA_IMAGEM]',
  '["200g de batata","90g de tomate cereja","15g de azeite de oliva","8g de alho","1g de alecrim ou orégano seco","0,5g de páprica picante","2g de sal"]'::jsonb,
  '["1 - Em uma panela com água e sal, pré cozinhe as batatas já cortadas;","2 - Disponha as batatas em um refratário e adicione os tomates, alho, alecrim e a páprica;","3 - Asse em forno pré-aquecido a 200°C até que fiquem douradas."]'::jsonb,
  '2 porções',
  '[{"totalEnergy":325,"servingEnergy":162},{"totalCarbs":43,"servingCarbs":22},{"totalProteins":5.5,"servingProteins":2.8},{"totalLipids":16,"servingLipids":8},{"totalSodium":1184,"servingSodium":592},{"totalPotassium":1330,"servingPotassium":665}]'::jsonb,
  '[{"leucine":39,"totalLeucine":300,"servingLeucine":150},{"fenil":28,"totalFenil":220,"servingFenil":110},{"tirosine":23,"totalTirosine":180,"servingTirosine":90},{"metiotine":10,"totalMetiotine":80,"servingMetiotine":40}]'::jsonb,
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
  68,
  'Berinjela à milanesa',
  'Prato principal e vegetais',
  '[URL_DA_IMAGEM]',
  '["300g de berinjela","70g de amido de milho","5g de sal","2g de orégano seco ou chimichurri","Óleo para fritar"]'::jsonb,
  '["1 - Pique a berinjela e deixe de molho na água com o vinagre;","2 - Retire da água e tempere a berinjela com sal e chimichurri ou orégano;","3 - Empane com o amido de milho;","4 - Frite no óleo bem quente e coloque em papel absorvente."]'::jsonb,
  '2 porções',
  '[{"totalEnergy":687,"servingEnergy":344},{"totalCarbs":83,"servingCarbs":41},{"totalProteins":3.4,"servingProteins":1.7},{"totalLipids":39,"servingLipids":19},{"totalSodium":1178,"servingSodium":589},{"totalPotassium":653,"servingPotassium":327}]'::jsonb,
  '[{"leucine":46,"totalLeucine":230,"servingLeucine":115},{"fenil":28,"totalFenil":140,"servingFenil":70},{"tirosine":18,"totalTirosine":90,"servingTirosine":45},{"metiotine":8,"totalMetiotine":40,"servingMetiotine":20}]'::jsonb,
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
  69,
  'Berinjela à parmegiana',
  'Prato principal e vegetais',
  '[URL_DA_IMAGEM]',
  '["240g de tomate pelado","5g de azeite de oliva","5g de alho","3g de sal","140g de berinjela","35g de farinha de mandioca torrada","40g de queijo tipo mussarela vegano","2g de sal","200g de óleo vegetal para fritar"]'::jsonb,
  '["1 - Lave a berinjela, corte-a em rodelas de aproximadamente 1 cm e deixe de molho na água;","2 - Misture o sal na farinha de mandioca e retire as fatias de berinjela da água;","3 - Uma a uma, passe as fatias de berinjela dos dois lados na farinha de mandioca;","4 - Frite-as em óleo bem quente e reserve (utilizar 200g de óleo para fritura em imersão);","5 - Bata os tomates com o alho, sal e azeite e coloque em uma panela em fogo baixo até ferver;","6 - Em uma travessa de vidro, coloque um pouco de molho, e coloque as rodelas de berinjela em cima, cubra com o restante do molho;","7 - Rale o queijo na parte mais grossa do ralador e distribua por cima da preparação;","8 - Leve ao forno até derreter o queijo, sirva quente."]'::jsonb,
  '4 porções',
  '[{"totalEnergy":1161,"servingEnergy":290},{"totalCarbs":61,"servingCarbs":15},{"totalProteins":4.9,"servingProteins":1.2},{"totalLipids":103,"servingLipids":26},{"totalSodium":2070,"servingSodium":518},{"totalPotassium":860,"servingPotassium":215}]'::jsonb,
  '[{"leucine":41,"totalLeucine":250,"servingLeucine":63},{"fenil":29,"totalFenil":180,"servingFenil":45},{"tirosine":23,"totalTirosine":140,"servingTirosine":35},{"metiotine":7,"totalMetiotine":40,"servingMetiotine":10}]'::jsonb,
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
  70,
  'Bife de abobrinha',
  'Prato principal e vegetais',
  '[URL_DA_IMAGEM]',
  '["150g de abobrinha","30g de cebola","1g de alho","6g de óleo vegetal","2g de orégano","30g de farinha de mandioca","3g de sal","15g de farinha de mandioca para empanar","Óleo para fritar"]'::jsonb,
  '["1 - Refogue a abobrinha no óleo com os demais temperos até que fique transparente;","2 - Adicione a farinha de mandioca ainda com a panela no fogo;","3 - Mexa vigorosamente por 3 minutos para que a farinha incorpore bem;","4 - Espere esfriar e molde os hambúrgueres com as mãos untadas de óleo;","5 - Passe na farinha de mandioca para empanar;","6 - Frite em fogo médio e coloque em papel absorvente."]'::jsonb,
  '5 unidades',
  '[{"totalEnergy":445,"servingEnergy":89},{"totalCarbs":46,"servingCarbs":9},{"totalProteins":2.9,"servingProteins":0.6},{"totalLipids":27,"servingLipids":5},{"totalSodium":1168,"servingSodium":234},{"totalPotassium":423,"servingPotassium":85}]'::jsonb,
  '[{"leucine":40,"totalLeucine":170,"servingLeucine":34},{"fenil":26,"totalFenil":110,"servingFenil":22},{"tirosine":24,"totalTirosine":100,"servingTirosine":20},{"metiotine":10,"totalMetiotine":40,"servingMetiotine":8}]'::jsonb,
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
  71,
  'Bolinho de abobrinha com cenoura',
  'Prato principal e vegetais',
  '[URL_DA_IMAGEM]',
  '["130g de abobrinha ralada","45g de cenoura ralada","30g de amido de milho","20g de farinha de arroz","50g de cebola picada","3g de alho","10g de salsinha picada","10g de cebolinha picada","2g de orégano"]'::jsonb,
  '["1 - Em um refratário, coloque a abobrinha ralada e misture os demais ingredientes, exceto o amido de milho e farinha de arroz;","2 - Adicione o amido e a farinha aos poucos até a massa ficar consistente e firme na colher;","3 - Separe a massa em 10 porções de 32 g, aproximadamente;","4 - Com uma colher pegue as porções e coloque-as em óleo quente para fritar um pouco de cada vez;","5 - Retire com uma escumadeira quando estiverem douradas;","6 - Coloque em papel absorvente."]'::jsonb,
  '10 unidades',
  '[{"totalEnergy":488,"servingEnergy":49},{"totalCarbs":59,"servingCarbs":6},{"totalProteins":4.6,"servingProteins":0.5},{"totalLipids":27,"servingLipids":3},{"totalSodium":1194,"servingSodium":119},{"totalPotassium":674,"servingPotassium":67}]'::jsonb,
  '[{"leucine":41,"totalLeucine":280,"servingLeucine":28},{"fenil":27,"totalFenil":179,"servingFenil":18},{"tirosine":22,"totalTirosine":150,"servingTirosine":15},{"metiotine":10,"totalMetiotine":70,"servingMetiotine":7}]'::jsonb,
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