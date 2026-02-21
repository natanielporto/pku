-- Batch 6 (recipes 51 to 60)

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
  '{"en-US":{"name":"Risoles","ingredients":["Ingredientes do recheio","25g of palmito","30g of cogumelos champignon 60g of tomate","15g of cebola","10g of milho","3g of salsinha","0,5g of orégano seco","5g of azeite of oliva","Ingredientes da massa","200ml of água","7,5g of caldo of legumes em sachê 30g of margarina sem sal","2g of goma xantana ou liga neutra 100g of farinha hipoproteica","20g of farinha sem glúten","Para empanar: 20g of farinha of mandioca"],"preparation":["Modo of preparo da massa","1 - Em uma pan, coloque a água com o sal, o orégano e a margarina para boil;","2 - Quando levantar fervura, adicione as farinhas aos poucos, mexa e cozinhe por alguns minutos. A massa deve ficar em consistência of polenta;","3 - Retire a massa ainda quente da pan e amasse com auxílio of uma colher, depois com as mãos, até obter uma massa lisa para moldar;","4 - Abra a massa e cut em 10 círculos para fazer os risoles, reserve.","Modo of preparo do recheio","1 - Em uma pan, refogue a cebola no azeite;","2 - Adicione os demais ingredientes e cozinhe;","3 - Divida o recheio em 10 porções iguais e reserve.","Montagem","1 - Recheie a massa e feche os risoles apertando bem as bordas;","2 - Passe os risoles prontos na água e em seguida na farinha of mandioca peneirada para empanar;","3 - Frite rapidamente em óleo quente e coloque no papel absorvente."],"servings":"10 unidades"}}'::jsonb
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
  52,
  'Waffles',
  'Massas',
  'https://plus.unsplash.com/premium_photo-1673011775209-97272be970a2?q=80&w=400&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["180ml de água morna","50g de açúcar refinado","50g de banana amassada","100g de farinha sem glúten","5g de óleo de girassol","20g de creme de leite","5g de emulsificante","8g de vinagre de maçã","0,5g de essência de baunilha","2g de fermento químico em pó","1g de sal","1g de goma xantana","1g de ágar-ágar"]'::jsonb,
  '["1 - Misture a banana amassada com o açúcar e o emulsificante, reserve;","2 - Misture o vinagre e os demais ingredientes;","3 - Adicione a farinha e o fermento químico, bata tudo com o auxílio de um fuê;","4 - Ligue o grill para waffle na temperatura máxima e espere esquentar;","5 - Coloque uma porção de massa no centro do grill e asse por 15 minutos ou até que esteja dourado e assado. Não abra antes de 10 minutos;","6 - Sirva com margarina, mel ou geleia."]'::jsonb,
  '2 unidades',
  '[{"totalEnergy":703,"servingEnergy":351},{"totalCarbs":149,"servingCarbs":75},{"totalProteins":2,"servingProteins":1},{"totalLipids":12,"servingLipids":6},{"totalSodium":396,"servingSodium":198},{"totalPotassium":231,"servingPotassium":115}]'::jsonb,
  '[{"leucine":46,"totalLeucine":180,"servingLeucine":90},{"tirosine":18,"totalTirosine":70,"servingTirosine":35},{"fenil":26,"totalFenil":100,"servingFenil":50},{"metiotine":10,"totalMetiotine":40,"servingMetiotine":20}]'::jsonb,
  '{"en-US":{"name":"Waffles","ingredients":["180ml of água morna","50g of sugar refinado","50g of banana amassada","100g of farinha sem glúten","5g of óleo of girassol","20g of creme of leite","5g of emulsificante","8g of vinagre of maçã","0,5g of essência of vanilla","2g of fermento químico em pó","1g of sal","1g of goma xantana","1g of ágar-ágar"],"preparation":["1 - mix a banana amassada com o sugar e o emulsificante, reserve;","2 - mix o vinagre e os demais ingredientes;","3 - Adicione a farinha e o fermento químico, beat tudo com o auxílio of um fuê;","4 - Ligue o grill para waffle na temperatura máxima e espere esquentar;","5 - Coloque uma porção of massa no centro do grill e asse por 15 minutos ou até que esteja dourado e assado. Não abra antes of 10 minutos;","6 - Sirva com margarina, mel ou geleia."],"servings":"2 unidades"}}'::jsonb
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
  53,
  'Pãezinhos de ervas finas',
  'Pães',
  'https://images.unsplash.com/photo-1536919011766-09449b44af40?q=80&w=400&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["130g de tapioca hidratada","250g de batata cozida","5g de óleo vegetal","6g de sal","3g de fermento químico em pó","15ml de água","0,5g de ervas secas (orégano, alecrim)"]'::jsonb,
  '["1 - Amasse a batata até obter um purê;","2 - Em um recipiente, misture o purê com os demais ingredientes;","3 - Amasse até obter uma massa moldável;","4 - Enrole em bolinhas com as mãos ou no formato que desejar;","5 - Disponha em uma assadeira untada;","6 - Asse em forno pré-aquecido a 200° C por aproximadamente 40 minutos."]'::jsonb,
  '20 unidades',
  '[{"totalEnergy":733,"servingEnergy":37},{"totalCarbs":167,"servingCarbs":8},{"totalProteins":4.7,"servingProteins":0.2},{"totalLipids":5,"servingLipids":0},{"totalSodium":2341,"servingSodium":117},{"totalPotassium":843,"servingPotassium":42}]'::jsonb,
  '[{"leucine":38,"totalLeucine":260,"servingLeucine":13},{"tirosine":24,"totalTirosine":160,"servingTirosine":8},{"fenil":28,"totalFenil":190,"servingFenil":10},{"metiotine":10,"totalMetiotine":70,"servingMetiotine":4}]'::jsonb,
  '{"en-US":{"name":"Pãezinhos de ervas finas","ingredients":["130g of tapioca hidratada","250g of batata cozida","5g of óleo vegetal","6g of sal","3g of fermento químico em pó","15ml of água","0,5g of ervas secas (orégano, alecrim)"],"preparation":["1 - Amasse a batata até obter um purê;","2 - Em um recipiente, mix o purê com os demais ingredientes;","3 - Amasse até obter uma massa moldável;","4 - Enrole em bolinhas com as mãos ou no formato que desejar;","5 - Disponha em uma assadeira untada;","6 - Asse em forno pré-aquecido a 200° C por aproximadamente 40 minutos."],"servings":"20 unidades"}}'::jsonb
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
  54,
  'Pão com mistura de farinhas',
  'Pães',
  'https://images.unsplash.com/photo-1534620808146-d33bb39128b2?q=80&w=400&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["200g de amido de milho","200g de polvilho doce","100g de fécula de batata","100g de farinha de arroz","50g de liga neutra","200ml de água","60g de açúcar refinado","10g de fermento biológico seco em pó 10g de sal","20g de emulsificante","90g de margarina sem sal","75g de creme de leite","15g de óleo vegetal"]'::jsonb,
  '["1 - Em um recipiente coloque 100ml de água quente, o açúcar, a margarina, o óleo e o emulsificante. Mexa bem até que a margarina derreta;","2 - Acrescente o restante da água fria e o fermento, deixe descansar por 5 minutos;","3 - Acrescente a mistura as farinhas, o sal, o creme de leite e bata na batedeira por alguns minutos;","4 - Coloque a massa em um recipiente, deixe crescer e bata novamente;","5 - Divida a massa em duas formas de pão untadas e deixe crescer novamente;","6 - Asse em forno pré-aquecido 220°C até ficar dourado."]'::jsonb,
  '21 fatias',
  '[{"totalEnergy":3218,"servingEnergy":153},{"totalCarbs":630,"servingCarbs":30},{"totalProteins":14.1,"servingProteins":0.7},{"totalLipids":69,"servingLipids":3},{"totalSodium":4466,"servingSodium":213},{"totalPotassium":230,"servingPotassium":11}]'::jsonb,
  '[{"leucine":41,"totalLeucine":1080,"servingLeucine":51},{"tirosine":23,"totalTirosine":590,"servingTirosine":28},{"fenil":25,"totalFenil":640,"servingFenil":30},{"metiotine":11,"totalMetiotine":280,"servingMetiotine":13}]'::jsonb,
  '{"en-US":{"name":"Pão com mistura de farinhas","ingredients":["200g of amido of milho","200g of polvilho doce","100g of fécula of batata","100g of farinha of arroz","50g of liga neutra","200ml of água","60g of sugar refinado","10g of fermento biológico seco em pó 10g of sal","20g of emulsificante","90g of margarina sem sal","75g of creme of leite","15g of óleo vegetal"],"preparation":["1 - Em um recipiente coloque 100ml of água quente, o sugar, a margarina, o óleo e o emulsificante. Mexa bem até que a margarina derreta;","2 - Acrescente o restante da água fria e o fermento, deixe descansar por 5 minutos;","3 - Acrescente a mistura as farinhas, o sal, o creme of leite e beat na batedeira por alguns minutos;","4 - Coloque a massa em um recipiente, deixe crescer e beat novamente;","5 - Divida a massa em duas formas of pão untadas e deixe crescer novamente;","6 - Asse em forno pré-aquecido 220°C até ficar dourado."],"servings":"21 fatias"}}'::jsonb
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
  55,
  'Pão de beijo gourmet',
  'Pães',
  'https://images.unsplash.com/photo-1559141680-d0bd7bc5af84?q=80&w=400&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["150g de abóbora cozida","240g de batata cozida","90g de polvilho doce","200g de polvilho azedo","10g de fermento químico em pó 70ml de água","30g de óleo vegetal 5g de sal","2g de alho amassado 5g de salsinha"]'::jsonb,
  '["1 - Misture a batata com abóbora e amasse até obter um purê;","2 - Acrescente a água e depois os demais ingredientes, deixando o fermento por último;","3 - Misture tudo até obter uma massa lisa e conseguir amassar com as mãos;","4 - Faça bolinhas e disponha em uma assadeira;","5 - Asse em forno pré-aquecido a 180°C por aproximadamente 1 hora."]'::jsonb,
  '40 unidades',
  '[{"totalEnergy":1558,"servingEnergy":39},{"totalCarbs":316,"servingCarbs":8},{"totalProteins":6.3,"servingProteins":0.2},{"totalLipids":31,"servingLipids":1},{"totalSodium":1960,"servingSodium":49},{"totalPotassium":1200,"servingPotassium":30}]'::jsonb,
  '[{"leucine":38,"totalLeucine":310,"servingLeucine":8},{"tirosine":24,"totalTirosine":200,"servingTirosine":5},{"fenil":28,"totalFenil":230,"servingFenil":6},{"metiotine":10,"totalMetiotine":80,"servingMetiotine":2}]'::jsonb,
  '{"en-US":{"name":"Pão de beijo gourmet","ingredients":["150g of abóbora cozida","240g of batata cozida","90g of polvilho doce","200g of polvilho azedo","10g of fermento químico em pó 70ml of água","30g of óleo vegetal 5g of sal","2g of alho amassado 5g of salsinha"],"preparation":["1 - mix a batata com abóbora e amasse até obter um purê;","2 - Acrescente a água e depois os demais ingredientes, deixando o fermento por último;","3 - mix tudo até obter uma massa lisa e conseguir amassar com as mãos;","4 - Faça bolinhas e disponha em uma assadeira;","5 - Asse em forno pré-aquecido a 180°C por aproximadamente 1 hora."],"servings":"40 unidades"}}'::jsonb
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
  56,
  'Pão francês',
  'Pães',
  'https://images.unsplash.com/photo-1582509385126-c9ab0cb0449f?q=80&w=400&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["320g de farinha sem glúten","50g de polvilho doce","9g de sal","30g de açúcar refinado ou mascavo 10g de fermento biológico seco","5g e liga neutra ou goma xantana 6g de azeite de oliva","6g de vinagre de maçã","240ml de água","0,1g de açafrão em pó"]'::jsonb,
  '["1 - Em um recipiente, misture o vinagre, o azeite e a água;","2 - Adicione os demais ingredientes, misture com uma colher e depois com as mãos;","3 - Sove bem, a massa fica um pouco pegajosa;","4 - Separe a massa em 8 partes iguais e modele os pães com as mãos untadas com óleo, não é necessário deixar a massa crescer;","5 - Disponha em uma assadeira untada com margarina e faça um corte de uma extremidade a outra em cima de cada um dos pães;","6 - Asse em forno pré-aquecido a 220°C por 25 a 30 minutos. Não exceder o tempo de cozimento para não ficar duro, os pães ficam brancos;","7 - É possível congelar depois de prontos e aquecer em micro-ondas por 30 segundos."]'::jsonb,
  '8 unidades',
  '[{"totalEnergy":1544,"servingEnergy":193},{"totalCarbs":351,"servingCarbs":44},{"totalProteins":8,"servingProteins":1},{"totalLipids":12,"servingLipids":2},{"totalSodium":3490,"servingSodium":436},{"totalPotassium":14,"servingPotassium":2}]'::jsonb,
  '[{"leucine":44,"totalLeucine":610,"servingLeucine":76},{"tirosine":19,"totalTirosine":260,"servingTirosine":33},{"fenil":26,"totalFenil":360,"servingFenil":45},{"metiotine":11,"totalMetiotine":150,"servingMetiotine":19}]'::jsonb,
  '{"en-US":{"name":"Pão francês","ingredients":["320g of farinha sem glúten","50g of polvilho doce","9g of sal","30g of sugar refinado ou mascavo 10g of fermento biológico seco","5g e liga neutra ou goma xantana 6g of azeite of oliva","6g of vinagre of maçã","240ml of água","0,1g of açafrão em pó"],"preparation":["1 - Em um recipiente, mix o vinagre, o azeite e a água;","2 - Adicione os demais ingredientes, mix com uma colher e depois com as mãos;","3 - Sove bem, a massa fica um pouco pegajosa;","4 - Separe a massa em 8 partes iguais e modele os pães com as mãos untadas com óleo, não é necessário deixar a massa crescer;","5 - Disponha em uma assadeira untada com margarina e faça um cut of uma extremidade a outra em cima of cada um dos pães;","6 - Asse em forno pré-aquecido a 220°C por 25 a 30 minutos. Não exceder o tempo of cozimento para não ficar duro, os pães ficam brancos;","7 - É possível congelar depois of prontos e aquecer em micro-ondas por 30 segundos."],"servings":"8 unidades"}}'::jsonb
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
  57,
  'Pão sabor queijo',
  'Pães',
  'https://media.istockphoto.com/id/1249893961/pt/foto/brazilian-snack-traditional-cheese-bread.jpg?s=2048x2048&w=is&k=20&c=nobDyi5btyyO3bc3Zyb62X0_ScOncJJL2NSbbLTVq3M=',
  '["130g de polvilho azedo","60g de polvilho doce","90g de queijo vegano ralado 220g de creme de leite","5g de sal"]'::jsonb,
  '["1 - Em uma vasilha, misture todos os ingredientes exceto o polvilho doce;","2 - Acrescente o polvilho doce e misture novamente, a consistência da massa é pegajosa;","3 - É possível utilizar somente o polvilho azedo, se preferir;","4 - Modele os pães com o auxílio de duas colheres;","5 - Disponha as porções em uma assadeira untada com margarina;","6 - Leve ao forno pré-aquecido a 200°C até assar por completo."]'::jsonb,
  '16 unidades',
  '[{"totalEnergy":1481,"servingEnergy":93},{"totalCarbs":194,"servingCarbs":12},{"totalProteins":7.2,"servingProteins":0.4},{"totalLipids":76,"servingLipids":5},{"totalSodium":2260,"servingSodium":141},{"totalPotassium":273,"servingPotassium":17}]'::jsonb,
  '[{"leucine":43,"totalLeucine":610,"servingLeucine":38},{"tirosine":23,"totalTirosine":330,"servingTirosine":21},{"fenil":23,"totalFenil":320,"servingFenil":20},{"metiotine":11,"totalMetiotine":150,"servingMetiotine":9}]'::jsonb,
  '{"en-US":{"name":"Pão sabor queijo","ingredients":["130g of polvilho azedo","60g of polvilho doce","90g of queijo vegano ralado 220g of creme of leite","5g of sal"],"preparation":["1 - Em uma vasilha, mix todos os ingredientes exceto o polvilho doce;","2 - Acrescente o polvilho doce e mix novamente, a consistência da massa é pegajosa;","3 - É possível utilizar somente o polvilho azedo, se preferir;","4 - Modele os pães com o auxílio of duas colheres;","5 - Disponha as porções em uma assadeira untada com margarina;","6 - Leve ao forno pré-aquecido a 200°C até assar por completo."],"servings":"16 unidades"}}'::jsonb
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
  58,
  'Pão de frigideira',
  'Pães',
  'https://images.unsplash.com/photo-1599232288126-7dbd2127db14?q=80&w=400&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["60g de farinha sem glúten","15g de açúcar refinado","6g de óleo vegetal","30g de banana amassada","0,5g de goma xantana ou liga neutra 35ml de água morna","25g de creme de leite","8g de vinagre de maçã","1g de fermento químico em pó 1g de sal"]'::jsonb,
  '["1 - Em um recipiente, misture todos os ingredientes exceto a água.","2 - Adicione a água aos poucos até obter uma mistura homogênea;","3 - Em uma frigideira antiaderente untada, disponha metade da massa, tampe e doure de ambos os lados;","4 - Repita o processo com a outra metade da massa."]'::jsonb,
  '2 unidades',
  '[{"totalEnergy":424,"servingEnergy":212},{"totalCarbs":77,"servingCarbs":38},{"totalProteins":2.1,"servingProteins":1.1},{"totalLipids":13,"servingLipids":6},{"totalSodium":399,"servingSodium":199},{"totalPotassium":156,"servingPotassium":78}]'::jsonb,
  '[{"leucine":46,"totalLeucine":200,"servingLeucine":100},{"tirosine":18,"totalTirosine":80,"servingTirosine":40},{"fenil":25,"totalFenil":110,"servingFenil":55},{"metiotine":11,"totalMetiotine":50,"servingMetiotine":25}]'::jsonb,
  '{"en-US":{"name":"Pão de frigideira","ingredients":["60g of farinha sem glúten","15g of sugar refinado","6g of óleo vegetal","30g of banana amassada","0,5g of goma xantana ou liga neutra 35ml of água morna","25g of creme of leite","8g of vinagre of maçã","1g of fermento químico em pó 1g of sal"],"preparation":["1 - Em um recipiente, mix todos os ingredientes exceto a água.","2 - Adicione a água aos poucos até obter uma mistura homogênea;","3 - Em uma frigideira antiaderente untada, disponha metade da massa, tampe e doure of ambos os lados;","4 - Repita o processo com a outra metade da massa."],"servings":"2 unidades"}}'::jsonb
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
  59,
  'Pãozinho de inhame',
  'Pães',
  'https://images.unsplash.com/photo-1561043433-b0bb121aacef?q=80&w=400&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["270g de inhame cozido","100g de polvilho doce","100g de polvilho azedo","30g de óleo de girassol","7g de sal","1g de orégano seco"]'::jsonb,
  '["1 - Cozinhe o inhame e amasse até virar um purê;","2 - Em um recipiente, coloque o purê de inhame e acrescente os demais ingredientes;","3 - Misture tudo e amasse com a mão até virar uma massa lisa e homogênea;","4 - Caso a massa fique seca, adicione um pouco de água quente para dar o ponto;","5 - Faça bolinhas e disponha em uma assadeira;","6 - Asse em forno pré-aquecido a 200°C até que o fundo fique dourado."]'::jsonb,
  '30 unidades',
  '[{"totalEnergy":1327,"servingEnergy":44},{"totalCarbs":259,"servingCarbs":9},{"totalProteins":5.1,"servingProteins":0.2},{"totalLipids":31,"servingLipids":1},{"totalSodium":2741,"servingSodium":91},{"totalPotassium":2033,"servingPotassium":68}]'::jsonb,
  '[{"leucine":42,"totalLeucine":280,"servingLeucine":9},{"tirosine":18,"totalTirosine":120,"servingTirosine":4},{"fenil":31,"totalFenil":210,"servingFenil":7},{"metiotine":9,"totalMetiotine":60,"servingMetiotine":2}]'::jsonb,
  '{"en-US":{"name":"Pãozinho de inhame","ingredients":["270g of inhame cozido","100g of polvilho doce","100g of polvilho azedo","30g of óleo of girassol","7g of sal","1g of orégano seco"],"preparation":["1 - Cozinhe o inhame e amasse até virar um purê;","2 - Em um recipiente, coloque o purê of inhame e acrescente os demais ingredientes;","3 - mix tudo e amasse com a mão até virar uma massa lisa e homogênea;","4 - Caso a massa fique seca, adicione um pouco of água quente para dar o ponto;","5 - Faça bolinhas e disponha em uma assadeira;","6 - Asse em forno pré-aquecido a 200°C até que o fundo fique dourado."],"servings":"30 unidades"}}'::jsonb
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
  60,
  'Pão de mandioquinha',
  'Pães',
  'https://images.unsplash.com/photo-1684893265739-a88b30c33e92?q=80&w=627&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  '["600g de mandioquinha cozida","300g de polvilho azedo","200g de polvilho doce","150ml de azeite ou óleo","5g de sal","175ml de água morna"]'::jsonb,
  '["1 - Em um recipiente, amasse a mandioquinha ainda quente até obter um purê;","2 - Acrescente os demais ingredientes e por último a água;","3 - Amasse bem até que fique homogêneo;","4 - Faça bolinhas e asse em forno pré-aquecido a 180°C até dourar."]'::jsonb,
  '23 unidades',
  '[{"totalEnergy":3543,"servingEnergy":154},{"totalCarbs":556,"servingCarbs":24},{"totalProteins":5.1,"servingProteins":0.2},{"totalLipids":151,"servingLipids":7},{"totalSodium":1948,"servingSodium":85},{"totalPotassium":403,"servingPotassium":18}]'::jsonb,
  '[{"leucine":35,"totalLeucine":240,"servingLeucine":10},{"tirosine":35,"totalTirosine":240,"servingTirosine":10},{"fenil":26,"totalFenil":180,"servingFenil":8},{"metiotine":4,"totalMetiotine":30,"servingMetiotine":1}]'::jsonb,
  '{"en-US":{"name":"Pão de mandioquinha","ingredients":["600g of mandioquinha cozida","300g of polvilho azedo","200g of polvilho doce","150ml of azeite ou óleo","5g of sal","175ml of água morna"],"preparation":["1 - Em um recipiente, amasse a mandioquinha ainda quente até obter um purê;","2 - Acrescente os demais ingredientes e por último a água;","3 - Amasse bem até que fique homogêneo;","4 - Faça bolinhas e asse em forno pré-aquecido a 180°C até dourar."],"servings":"23 unidades"}}'::jsonb
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