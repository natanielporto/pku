-- Batch 8 (recipes 71 to 80)

INSERT INTO recipes (id, name, category, image, ingredients, preparation, servings, nutritional_information, graph_information, translations)
VALUES (
  72,
  'Bolinho de aipim',
  'Prato principal e vegetais',
  '[URL_DA_IMAGEM]',
  '["220g de aipim descascado e cozido","50g de farinha de mandioca","5g de azeite de oliva","5g de margarina sem sal","20g de creme de leite","3g de sal","Farinha de mandioca para empanar","Óleo para fritar"]'::jsonb,
  '["1 - Amasse o aipim ainda quente com um pouco da água do cozimento para facilitar;","2 - Acrescente o creme de leite, a margarina e coloque a farinha de mandioca aos poucos;","3 - Misture até formar uma massa moldável com as mãos;","4 - Faça os bolinhos no formato que preferir e passe na farinha de mandioca torrada;","5 - Frite em óleo quente rapidamente para não abrir e estourar."]'::jsonb,
  '10 unidades',
  '[{"totalEnergy":874,"servingEnergy":87},{"totalCarbs":128,"servingCarbs":13},{"totalProteins":4.3,"servingProteins":0.4},{"totalLipids":38,"servingLipids":4},{"totalSodium":1231,"servingSodium":123},{"totalPotassium":619,"servingPotassium":62}]'::jsonb,
  '[{"leucine":41,"totalLeucine":190,"servingLeucine":19},{"fenil":26,"totalFenil":120,"servingFenil":12},{"tirosine":24,"totalTirosine":110,"servingTirosine":11},{"metiotine":9,"totalMetiotine":40,"servingMetiotine":4}]'::jsonb,
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
  73,
  'Bolinho de arroz com cenoura',
  'Prato principal e vegetais',
  '[URL_DA_IMAGEM]',
  '["80g de arroz cozido","100g de cenoura ralada","20g de creme de leite","10g de salsinha","10g de goma xantana ou liga neutra","3g de sal","150g de farinha sem glúten","125ml de água morna","15g de cebola","Óleo para fritar"]'::jsonb,
  '["1 - Em um recipiente, coloque a farinha e adicione a água morna. Misture até formar uma massa firme;","2 - Junte o arroz cozido e os demais ingredientes, misture bem;","3 - Com auxílio de uma colher porcione a massa;","4 - Frite em óleo quente e retire quando estiverem dourados, coloque em papel absorvente."]'::jsonb,
  '20 unidades',
  '[{"totalEnergy":1064,"servingEnergy":53},{"totalCarbs":172,"servingCarbs":9},{"totalProteins":5.4,"servingProteins":0.3},{"totalLipids":40,"servingLipids":2},{"totalSodium":1211,"servingSodium":61},{"totalPotassium":448,"servingPotassium":22}]'::jsonb,
  '[{"leucine":43,"totalLeucine":420,"servingLeucine":21},{"fenil":27,"totalFenil":260,"servingFenil":13},{"tirosine":19,"totalTirosine":180,"servingTirosine":9},{"metiotine":11,"totalMetiotine":110,"servingMetiotine":6}]'::jsonb,
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
  74,
  'Bolinho de arroz com milho',
  'Prato principal e vegetais',
  '[URL_DA_IMAGEM]',
  '["250g de arroz cozido","30g de amido de milho","50g de cenoura","30g de cebola","20g de milho","4g de liga neutra","50g de creme de leite","30g de farinha sem glúten","3g de sal","1g de orégano seco","Óleo para fritar"]'::jsonb,
  '["1 - Em um recipiente, misture o arroz cozido e os demais ingredientes;","2 - Se preferir, coloque a mistura no processador para obter uma massa mais homogênea;","3 - Com auxílio de uma colher ou com as mãos, molde os bolinhos;","4 - Frite em óleo quente até dourar e coloque em papel absorvente."]'::jsonb,
  '20 unidades',
  '[{"totalEnergy":931,"servingEnergy":47},{"totalCarbs":141,"servingCarbs":7},{"totalProteins":9.4,"servingProteins":0.5},{"totalLipids":36,"servingLipids":2},{"totalSodium":1245,"servingSodium":62},{"totalPotassium":378,"servingPotassium":19}]'::jsonb,
  '[{"leucine":44,"totalLeucine":750,"servingLeucine":38},{"fenil":26,"totalFenil":450,"servingFenil":23},{"tirosine":18,"totalTirosine":310,"servingTirosine":16},{"metiotine":12,"totalMetiotine":200,"servingMetiotine":10}]'::jsonb,
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
  75,
  'Bolinho de batata salsa e berinjela',
  'Prato principal e vegetais',
  '[URL_DA_IMAGEM]',
  '["150g de mandioquinha cozida","20g de tomate picado","40g de berinjela","20g de cebola picada","2g de alho","35g de farinha de mandioca","5g de salsinha","3g de sal","Óleo para fritar"]'::jsonb,
  '["1 - Amasse a mandioquinha até obter um purê e reserve;","2 - Refogue a berinjela com a cebola, o alho o tomate e acrescente o cheiro verde;","3 - Misture o refogado ao purê de mandioquinha e acrescente a farinha de mandioca para dar ponto;","4 - Frite em óleo quente e coloque em papel absorvente."]'::jsonb,
  '10 unidades',
  '[{"totalEnergy":523,"servingEnergy":52},{"totalCarbs":74,"servingCarbs":7},{"totalProteins":3,"servingProteins":0.3},{"totalLipids":24,"servingLipids":2},{"totalSodium":1169,"servingSodium":117},{"totalPotassium":300,"servingPotassium":30}]'::jsonb,
  '[{"leucine":41,"totalLeucine":160,"servingLeucine":16},{"fenil":28,"totalFenil":110,"servingFenil":11},{"tirosine":23,"totalTirosine":90,"servingTirosine":9},{"metiotine":8,"totalMetiotine":30,"servingMetiotine":3}]'::jsonb,
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
  76,
  'Bolinho de batata doce',
  'Prato principal e vegetais',
  '[URL_DA_IMAGEM]',
  '["300g de batata doce (massa)","60g de polvilho doce (massa)","20g de tomate picado (massa)","20g de pimentão picado (massa)","20g de cebola picada (massa)","10g de óleo vegetal (massa)","90g de cebola (recheio)","80g de tomate (recheio)","20g de creme de leite (recheio)","0,5g de orégano (recheio)","40g de milho (recheio)","10g de azeite de oliva (recheio)"]'::jsonb,
  '["1 - Cozinhe a batata doce e separe 300g (massa);","2 - Em um recipiente, amasse a batata doce até que vire um purê (massa);","3 - Em uma frigideira, refogue com óleo a cebola, pimentão e o tomate (massa);","4 - Espere esfriar um pouco e misture na batata doce (massa);","5 - Acrescente o polvilho aos poucos, mexendo com uma colher e depois com as mãos até que fique uma massa homogênea que possa ser modelada (massa);","6 - Divida a massa em 13 porções iguais de aproximadamente 30g (massa);","7 - Faça bolinhas e reserve (massa);","8 - Em uma frigideira, refogue com óleo a cebola, tomate e milho (recheio);","9 - Acrescente o orégano e o creme de leite, deixe ferver um pouco (recheio);","10 - Retire do fogo e divida o recheio em 13 porções iguais (recheio);","11 - Em cada bolinha de massa, abra um buraco no centro para colocar o recheio e feche novamente (recheio);","12 - Coloque na fritadeira elétrica sem óleo, até que fiquem dourados (recheio)."]'::jsonb,
  '13 unidades',
  '[{"totalEnergy":857,"servingEnergy":66},{"totalCarbs":149,"servingCarbs":11},{"totalProteins":9,"servingProteins":0.7},{"totalLipids":27,"servingLipids":2},{"totalSodium":2084,"servingSodium":160},{"totalPotassium":1090,"servingPotassium":84}]'::jsonb,
  '[{"leucine":39,"totalLeucine":610,"servingLeucine":47},{"fenil":28,"totalFenil":430,"servingFenil":33},{"tirosine":21,"totalTirosine":320,"servingTirosine":25},{"metiotine":12,"totalMetiotine":180,"servingMetiotine":14}]'::jsonb,
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
  77,
  'Ceviche de banana da terra',
  'Prato principal e vegetais',
  '[URL_DA_IMAGEM]',
  '["150g de banana da terra","80g de tomate","40g de cebola","5g de salsinha","20g de suco de limão","10g de azeite de oliva","1g de sal","0,1g de pimenta do reino (opcional)"]'::jsonb,
  '["1 - Pique as bananas em rodelas finas e espalhe em um prato;","2 - Adicione os demais ingredientes picados por cima;","3 - Tempere com o azeite, o sal, o suco de limão e a pimenta do reino, se preferir."]'::jsonb,
  '2 porções',
  '[{"totalEnergy":313,"servingEnergy":157},{"totalCarbs":57,"servingCarbs":28},{"totalProteins":3.4,"servingProteins":1.7},{"totalLipids":11,"servingLipids":6},{"totalSodium":405,"servingSodium":202},{"totalPotassium":1017,"servingPotassium":508}]'::jsonb,
  '[{"leucine":38,"totalLeucine":140,"servingLeucine":70},{"fenil":30,"totalFenil":110,"servingFenil":55},{"tirosine":21,"totalTirosine":80,"servingTirosine":40},{"metiotine":11,"totalMetiotine":40,"servingMetiotine":20}]'::jsonb,
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
  78,
  'Chuchu empanado',
  'Prato principal e vegetais',
  '[URL_DA_IMAGEM]',
  '["170g de chuchu","30g de amido de milho","1g de sal","1g de orégano seco","Óleo para fritar"]'::jsonb,
  '["1 - Descasque o chuchu e corte em fatias finas no sentido do comprimento, reserve;","2 - Em um recipiente, misture o amido de milho com o sal e o orégano;","3 - Passe as fatias de chuchu na água e em seguida no amido;","4 - Frite em óleo quente e coloque em papel absorvente."]'::jsonb,
  '2 porções',
  '[{"totalEnergy":305,"servingEnergy":153},{"totalCarbs":37,"servingCarbs":18},{"totalProteins":1.6,"servingProteins":0.8},{"totalLipids":18,"servingLipids":9},{"totalSodium":397,"servingSodium":199},{"totalPotassium":256,"servingPotassium":128}]'::jsonb,
  '[{"leucine":47,"totalLeucine":150,"servingLeucine":75},{"fenil":29,"totalFenil":90,"servingFenil":45},{"tirosine":19,"totalTirosine":60,"servingTirosine":30},{"metiotine":5,"totalMetiotine":17,"servingMetiotine":9}]'::jsonb,
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
  79,
  'Estrogonofe de couve-flor',
  'Prato principal e vegetais',
  '[URL_DA_IMAGEM]',
  '["300g de couve-flor","45g de azeitona picada","60g de tomate picado sem semente","40g de cebola","10g de alho","0,5g de orégano seco","10g de salsinha","45g de catchup","3g de mostarda","60g de creme de leite","20g de óleo vegetal","4g de sal"]'::jsonb,
  '["1 - Lave a couve-flor, pique em pedaços menores e refogue em óleo e alho;","2 - Adicione o tomate, a azeitona, a cebola e tempere com sal;","3 - Acrescente o catchup, a mostarda, as ervas e a água;","4 - Cozinhe até que a couve-flor fique \"al dente\";","5 - Desligue o fogo, acrescente o creme de leite e o cheiro verde."]'::jsonb,
  '5 porções',
  '[{"totalEnergy":713,"servingEnergy":143},{"totalCarbs":43,"servingCarbs":9},{"totalProteins":10.6,"servingProteins":2.1},{"totalLipids":41,"servingLipids":8},{"totalSodium":2578,"servingSodium":516},{"totalPotassium":1487,"servingPotassium":297}]'::jsonb,
  '[{"leucine":44,"totalLeucine":630,"servingLeucine":126},{"fenil":27,"totalFenil":380,"servingFenil":76},{"tirosine":18,"totalTirosine":260,"servingTirosine":52},{"metiotine":11,"totalMetiotine":150,"servingMetiotine":30}]'::jsonb,
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
  80,
  'Estrogonofe de legumes',
  'Prato principal e vegetais',
  '[URL_DA_IMAGEM]',
  '["40g de cebola","2g de alho","30g de batata inglesa","30g de batata doce","40g de abobrinha","40g de cenoura","40g de chuchu","50g de tomate sem semente","0,2g de orégano seco","2g de mostarda","20g de catchup","60g de creme de leite","4g de sal","15g de azeite de oliva","250ml de água"]'::jsonb,
  '["1 - Refogue a cebola e alho no azeite, coloque os legumes picados e o orégano;","2 - Mexa bem e acrescente o sal;","3 - Adicione a água, tampe a panela e abaixe o fogo;","4 - Cozinhe os legumes até ficarem macios;","5 - Acrescente a mostarda e catchup;","6 - Desligue o fogo, adicione o creme de leite e mexa delicadamente."]'::jsonb,
  '4 porções',
  '[{"totalEnergy":423,"servingEnergy":106},{"totalCarbs":35,"servingCarbs":9},{"totalProteins":5.5,"servingProteins":1.4},{"totalLipids":31,"servingLipids":8},{"totalSodium":1901,"servingSodium":475},{"totalPotassium":868,"servingPotassium":217}]'::jsonb,
  '[{"leucine":43,"totalLeucine":370,"servingLeucine":93},{"fenil":26,"totalFenil":230,"servingFenil":58},{"tirosine":22,"totalTirosine":190,"servingTirosine":48},{"metiotine":9,"totalMetiotine":80,"servingMetiotine":20}]'::jsonb,
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
  81,
  'Farofa',
  'Prato principal e vegetais',
  '[URL_DA_IMAGEM]',
  '["50g de cenoura ralada","80g de tomate sem semente","40g de cebola ralada","5g de salsinha","25g de azeitona picada","4g de sal","15g de óleo vegetal","25g de uva passa preta","25g de farinha de mandioca torrada"]'::jsonb,
  '["1 - Em uma panela, refogue a cebola no óleo e acrescente a cenoura e o tomate;","2 - Deixe murchar e acrescente os demais ingredientes, exceto a farinha;","3 - Adicione a farinha e cozinhe por alguns minutos."]'::jsonb,
  '6 porções',
  '[{"totalEnergy":1178,"servingEnergy":196},{"totalCarbs":160,"servingCarbs":27},{"totalProteins":5.2,"servingProteins":0.9},{"totalLipids":19,"servingLipids":3},{"totalSodium":1770,"servingSodium":295},{"totalPotassium":637,"servingPotassium":106}]'::jsonb,
  '[{"leucine":38,"totalLeucine":270,"servingLeucine":45},{"fenil":28,"totalFenil":200,"servingFenil":33},{"tirosine":28,"totalTirosine":200,"servingTirosine":33},{"metiotine":6,"totalMetiotine":40,"servingMetiotine":7}]'::jsonb,
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