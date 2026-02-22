-- Batch 3 (recipes 21 to 30)

INSERT INTO recipes (id, name, category, image, ingredients, preparation, servings, nutritional_information, graph_information, translations)
VALUES (
  21,
  'Bolo de banana II',
  'Bolos e bolinhos',
  'https://plus.unsplash.com/premium_photo-1675171527461-b785cb1a7016?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["Ingredientes parte 1","70g de açúcar refinado","80g de água","100g de banana em rodelas","3g de canela em pó","Ingredientes parte 2","21g de óleo vegetal","20g de margarina","24g de creme de leite","140g de água","50g de amido de milho","140g de farinha sem glúten","5g de vinagre de maçã","4g de fermento químico em pó","5g de bicarbonato de sódio"]'::jsonb,
  '["1 - Em uma panela, faça uma calda de caramelo com o açúcar, adicione a água aos poucos, a canela, mexendo até desmanchar os grumos do açúcar. Em seguida, acrescente as rodelas de banana e continue mexendo, deixe cozinhar por 5 minutos em fogo médio; ","2 - Espere a calda amornar e bata a mistura no liquidificador junto com o óleo, margarina, açúcar e creme de leite, bata até desmanchar as bananas; ","3 - Despeje a mistura em uma vasilha, adicione o amido de milho e a farinha peneirados para não formar grumos e acrescente a água (deve ser passada nos resíduos da panela que cozinhou as bananas e no liquidificador, assim pegando todo o sabor residual que ficou); ","4 - Misture bem  como auxílio de um fuê atéque amassa fiquehomogênea; ","5 - Adicione o vinagre, o bicarbonato e o fermento e misture delicadamente; ","6 - Despeje a massa em uma forma untada com margarina e farinha hipoprotéica (forma de 14,5 cm de diâmetro x 6 cm de altura ou forma de pão de forma); ","7 - Leve ao forno pré-aquecido a 200°C por cerca de 30 minutos ou até dourar;","8 - Espere esfriar para cortar e decorar a gosto."]'::jsonb,
  '9 fatias',
  '[{"totalEnergy":1605,"servingEnergy":178},{"totalCarbs":320,"servingCarbs":36},{"totalProteins":3.3,"servingProteins":0.4},{"totalLipids":37,"servingLipids":4},{"totalSodium":136,"servingSodium":15},{"totalPotassium":447,"servingPotassium":50}]'::jsonb,
  '[{"leucine":47,"totalLeucine":280,"servingLeucine":31},{"tirosine":18,"totalTirosine":110,"servingTirosine":12},{"fenil":25,"totalFenil":150,"servingFenil":17},{"metiotine":10,"totalMetiotine":60,"servingMetiotine":7}]'::jsonb,
  '{"en-US":{"name":"Banana cake II","ingredients":["Ingredients part 1","70g of refined sugar","80g of water","100g of banana slices","3g of cinnamon powder","Ingredients part 2","21g of vegetable oil","20g of margarine","24g of sour cream","140g of water","50g of cornstarch","140g of gluten-free flour","5g of apple cider vinegar","4g of baking powder","5g of baking soda"],"preparation":["1 - In a pan, make a caramel syrup with the sugar, add the water little by little, the cinnamon, stirring until the sugar lumps dissolve. Then, add the banana slices and continue stirring, let cook for 5 minutes over medium heat; ","2 - Wait for the syrup to cool slightly and beat the mixture in the blender along with the oil, margarine, sugar and sour cream, beat until the bananas are broken down; ","3 - Pour the mixture into a bowl, add the cornstarch and flour sifted to avoid lumps and add the water (it should be passed through the residues of the pan that cooked the bananas and in the blender, thus capturing all the residual flavor that remained); ","4 - Mix well with the help of a whisk until the dough is homogeneous; ","5 - Add the vinegar, baking soda and baking powder and mix gently; ","6 - Pour the batter into a pan greased with margarine and low-protein flour (pan of 14.5 cm in diameter x 6 cm in height or loaf pan); ","7 - Take it to a preheated oven at 200°C for about 30 minutes or until golden;","8 - Wait for it to cool to cut and decorate to taste."],"servings":"9 slices"}}'::jsonb
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
  translations = EXCLUDED.translations,
  updated_at = NOW();

INSERT INTO recipes (id, name, category, image, ingredients, preparation, servings, nutritional_information, graph_information, translations)
VALUES (
  22,
  'Bolo de cenoura',
  'Bolos e bolinhos',
  'https://images.unsplash.com/photo-1516054575922-f0b8eeadec1a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["60g de cenoura ralada","70g de farinha sem glúten","60g de amido de milho","70g de óleo de canola","50ml de água","5g de fermento químico em pó"]'::jsonb,
  '["1 - Bata todos os ingredientes no liquidificador, exceto o fermento;","2 - Adicione o fermento e misture delicadamente com o auxílio de uma colher;","3 - Disponha a massa em forminhas de cupcake ou em uma forma pequena de aproximadamente 20 centímetros de diâmetro untada com margarina e farinha hipoprotéica ou spray antiaderente;","4 - Asse em forno médio até o palito sair seco. "]'::jsonb,
  '8 fatias',
  '[{"totalEnergy":1134,"servingEnergy":142},{"totalCarbs":122,"servingCarbs":15},{"totalProteins":1.5,"servingProteins":0.2},{"totalLipids":71,"servingLipids":9},{"totalSodium":26,"servingSodium":3},{"totalPotassium":196,"servingPotassium":24}]'::jsonb,
  '[{"leucine":47,"totalLeucine":120,"servingLeucine":15},{"tirosine":15,"totalTirosine":40,"servingTirosine":5},{"fenil":27,"totalFenil":70,"servingFenil":9},{"metiotine":12,"totalMetiotine":30,"servingMetiotine":4}]'::jsonb,
  '{"en-US":{"name":"Carrot cake","ingredients":["60g of grated carrot","70g of gluten-free flour","60g of cornstarch","70g of canola oil","50ml of water","5g of baking powder"],"preparation":["1 - beat all the ingredients in the blender, except the baking powder;","2 - Add the baking powder and mix gently with the help of a spoon;","3 - Pour the batter into cupcake liners or a small pan of approximately 20 centimeters in diameter greased with margarine and low-protein flour or non-stick spray;","4 - Bake in a preheated oven at 200°C for about 30 minutes or until golden;"],"servings":"8 slices"}}'::jsonb
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
  translations = EXCLUDED.translations,
  updated_at = NOW();

INSERT INTO recipes (id, name, category, image, ingredients, preparation, servings, nutritional_information, graph_information, translations)
VALUES (
  23,
  'Bolo de cenoura com chocolate',
  'Bolos e bolinhos',
  'https://images.unsplash.com/photo-1583592655160-47e0406b49c6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["100ml de leite de coco","180g de açúcar refinado","100g de farinha hipoproteica","10g de fermento químico em pó","235g de cenoura crua ralada","80g de óleo vegetal","1g de sal","1g de ágar-ágar","0,5g de goma xantana ou liga neutra","15g de achocolatado em pó","15g de gotas de chocolate"]'::jsonb,
  '["1 - Bata no liquidificador todos os ingredientes, com exceção da farinha e do fermento;","2 - Em um recipiente, coloque a mistura do liquidificador e misture com a farinha, depois acrescente o fermento e mexa levemente;","3 - Separe a massa em duas porções iguais e em uma das partes adicione o achocolatado e as gotas de chocolate;","4 - Unte uma forma pequena com margarina e farinha hipoprotéica e despeje a massa branca e em seguida a massa de chocolate;","5 - Com o auxílio de um garfo misture levemente as massas, formando um desenho;","6 - Asse em forno pré-aquecido a 180- 200° por aproximadamente 45 minutos ou até dourar."]'::jsonb,
  '12 fatias',
  '[{"totalEnergy":2185,"servingEnergy":184},{"totalCarbs":314,"servingCarbs":26},{"totalProteins":5.3,"servingProteins":0.4},{"totalLipids":107,"servingLipids":9},{"totalSodium":485,"servingSodium":41},{"totalPotassium":983,"servingPotassium":83}]'::jsonb,
  '[{"leucine":43,"totalLeucine":320,"servingLeucine":27},{"tirosine":19,"totalTirosine":140,"servingTirosine":12},{"fenil":29,"totalFenil":220,"servingFenil":19},{"metiotine":9,"totalMetiotine":70,"servingMetiotine":6}]'::jsonb,
  '{"en-US":{"name":"Carrot cake with chocolate","ingredients":["100ml of coconut milk","180g of refined sugar","100g of low-protein flour","10g of baking powder","235g of grated raw carrot","80g of vegetable oil","1g of salt","1g of agar-agar","0,5g of xanthan gum or neutral binder","15g of chocolate powder","15g of chocolate chips"],"preparation":["1 - beat on the blender all the ingredients, except the flour and baking powder;","2 - In a container, place the blender mixture and mix with the flour, then add the baking powder and mix gently;","3 - Separate the batter into two equal portions and in one of the parts add the chocolate powder and chocolate chips;","4 - Grease a small pan with margarine and low-protein flour and pour the white batter and then the chocolate batter;","5 - With the help of a fork, mix the batters lightly, forming a design;","6 - Bake in a preheated oven at 180-200°C for approximately 45 minutes or until golden."],"servings":"12 slices"}}'::jsonb
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
  translations = EXCLUDED.translations,
  updated_at = NOW();

INSERT INTO recipes (id, name, category, image, ingredients, preparation, servings, nutritional_information, graph_information, translations)
VALUES (
  24,
  'Bolo de chocolate I',
  'Bolos e bolinhos',
  'https://images.unsplash.com/photo-1609105772057-3fa55ed2ceb7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["100g de farinha hipoproteica","25g de amido de milho","50g de açúcar refinado","25g de açúcar mascavo","25g de achocolatado","4g de fermento químico em pó","2g de bicarbonato de sódio","125ml de água","40g de óleo vegetal","4g de vinagre de maçã","10g de confeitos para decorar"]'::jsonb,
  '["1 - Em um recipiente, peneire os ingredientes secos exceto o fermento e o bicarbonato de sódio;","2 - Adicione a água, óleo e o vinagre;","3 - Misturar bem com um fuê até que fique homogêneo;","4 - Colocar em uma forma tipo pudim, untada com margarina e farinha hipoprotéica;","5 - Asse em forno pré-aquecido por aproximadamente 40 min ou até que o palito saia seco."]'::jsonb,
  '8 fatias',
  '[{"totalEnergy":1186,"servingEnergy":148},{"totalCarbs":206,"servingCarbs":26},{"totalProteins":1,"servingProteins":0.1},{"totalLipids":41,"servingLipids":5},{"totalSodium":13,"servingSodium":2},{"totalPotassium":92,"servingPotassium":12}]'::jsonb,
  '[{"leucine":47,"totalLeucine":80,"servingLeucine":10},{"tirosine":18,"totalTirosine":30,"servingTirosine":4},{"fenil":23,"totalFenil":40,"servingFenil":5},{"metiotine":12,"totalMetiotine":20,"servingMetiotine":3}]'::jsonb,
  '{"en-US":{"name":"Chocolate cake I","ingredients":["100g of low-protein flour","25g of cornstarch","50g of refined sugar","25g of brown sugar","25g of chocolate powder","4g of baking powder","2g of baking soda","125ml of water","40g of vegetable oil","4g of apple cider vinegar","10g of sprinkles for decorating"],"preparation":["1 - In a container, sift the dry ingredients except the baking powder and baking soda;","2 - Add the water, oil and vinegar;","3 - Mix well with a whisk until homogeneous;","4 - Place in a bundt pan, greased with margarine and low-protein flour;","5 - Bake in a preheated oven for approximately 40 min or until the toothpick comes out clean."],"servings":"8 slices"}}'::jsonb
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
  translations = EXCLUDED.translations,
  updated_at = NOW();

INSERT INTO recipes (id, name, category, image, ingredients, preparation, servings, nutritional_information, graph_information, translations)
VALUES (
  25,
  'Bolo de chocolate II',
  'Bolos e bolinhos',
  'https://images.unsplash.com/photo-1520186097747-fd67de8ef2db?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["300g de farinha sem glúten","70g de açúcar orgânico","100g de açúcar mascavo","40g de achocolatado em pó","250ml de água","80g de óleo vegetal","15g de fermento químico em pó","6g de vinagre de maçã"]'::jsonb,
  '["1 - Em um recipiente misture todos os ingredientes secos;","2 - Acrescente a água, o óleo, o vinagre e por fim o fermento;","3 - Misture bem com o auxílio de um fuê até a massa ficar homogênea;","4 - Unte uma forma de pudim com margarina e farinha hipoprotéica;","5 - Leve para assar em forno pré-aquecido a 200°C;","6 - Retire do forno quando o palito sair seco após testado na massa."]'::jsonb,
  '20 fatias',
  '[{"totalEnergy":2641,"servingEnergy":132},{"totalCarbs":474,"servingCarbs":24},{"totalProteins":7.4,"servingProteins":0.4},{"totalLipids":81,"servingLipids":4},{"totalSodium":68,"servingSodium":3},{"totalPotassium":9,"servingPotassium":0}]'::jsonb,
  '[{"leucine":45,"totalLeucine":690,"servingLeucine":35},{"tirosine":18,"totalTirosine":280,"servingTirosine":14},{"fenil":26,"totalFenil":410,"servingFenil":21},{"metiotine":11,"totalMetiotine":170,"servingMetiotine":9}]'::jsonb,
  '{"en-US":{"name":"Chocolate cake II","ingredients":["300g of gluten-free flour","70g of organic sugar","100g of brown sugar","40g of chocolate powder","250ml of water","80g of vegetable oil","15g of baking powder","6g of apple cider vinegar"],"preparation":["1 - In a container, mix all the dry ingredients;","2 - Add the water, oil, vinegar and finally the baking powder;","3 - mix well with the help of a whisk until homogeneous;","4 - Place in a bundt pan, greased with margarine and low-protein flour;","5 - Bake in a preheated oven at 200°C;","6 - Remove from the oven when the toothpick comes out clean after testing the batter."],"servings":"20 slices"}}'::jsonb
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
  translations = EXCLUDED.translations,
  updated_at = NOW();

INSERT INTO recipes (id, name, category, image, ingredients, preparation, servings, nutritional_information, graph_information, translations)
VALUES (
  26,
  'Bolo de laranja e mandioca',
  'Bolos e bolinhos',
  'https://images.unsplash.com/photo-1515754164677-ec9796621bcb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["140g de açúcar refinado","30g de amido de milho","100g de mandioca crua","5g fermento químico para bolo","5g de emulsificante","140g de gomos de laranja pêra descascada","1g de raspas de laranja"]'::jsonb,
  '["1 - Em um liquidificador, bata a laranja descascada junto com a mandioca e o açúcar;","2 - Adicione o emulsificante, o amido e por último o fermento com as raspas da laranja;","3 - Disponha a massa em uma forma untada;","4 - Asse em forno pré-aquecido a 200°C por 25 minutos;","5 - Desenforme quando estiver frio e se gostar aplique a cobertura abaixo","Cobertura de açúcar e suco de limão","1 - Misture os dois ingredientes e espalhe a cobertura por cima do bolo;","2 - Decore com raspas da casca do limão."]'::jsonb,
  '12 fatias',
  '[{"totalEnergy":853,"servingEnergy":71},{"totalCarbs":212,"servingCarbs":18},{"totalProteins":4.5,"servingProteins":0.4},{"totalLipids":1,"servingLipids":0},{"totalSodium":12,"servingSodium":1},{"totalPotassium":1021,"servingPotassium":85}]'::jsonb,
  '[{"leucine":44,"totalLeucine":150,"servingLeucine":13},{"tirosine":18,"totalTirosine":60,"servingTirosine":5},{"fenil":26,"totalFenil":90,"servingFenil":8},{"metiotine":12,"totalMetiotine":40,"servingMetiotine":3}]'::jsonb,
  '{"en-US":{"name":"Orange and cassava cake","ingredients":["140g of refined sugar","30g of cornstarch","100g of raw cassava","5g of baking powder","5g of emulsifier","140g of peeled orange segments","1g of orange zest"],"preparation":["1 - In a blender, beat the peeled orange along with the cassava and sugar;","2 - Add the emulsifier, the cornstarch and finally the baking powder with the orange zest;","3 - Place the batter in a greased pan;","4 - Bake in a preheated oven at 200°C for 25 minutes;","5 - Unmold when cool and if you like, apply the frosting below","Frosting of sugar and lemon juice","1 - mix the two ingredients and spread the frosting over the cake;","2 - Decorate with lemon zest."],"servings":"12 slices"}}'::jsonb
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
  translations = EXCLUDED.translations,
  updated_at = NOW();

INSERT INTO recipes (id, name, category, image, ingredients, preparation, servings, nutritional_information, graph_information, translations)
VALUES (
  27,
  'Bolo fofinho de laranja',
  'Bolos e bolinhos',
  'https://images.unsplash.com/photo-1475855841503-917d97ca77b4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["100g de açúcar refinado","140g de farinha sem glúten","100ml de suco de laranja","40g de creme de leite","5g de liga neutra","10g de fermento químico em pó"]'::jsonb,
  '["1 - Em um recipiente, misture o suco de laranja, o creme de leite, o óleo e liga neutra;","2 - Adicione a farinha, o açúcar e misture bem até ficar homogêneo. Adicione o fermento e misture delicadamente;","3 - Transfira a massa para forminhas de cupcake untadas;","4 - Leve ao forno a 180°C por aproximadamente 35 minutos ou até que esteja assado por completo."]'::jsonb,
  '10 unidades',
  '[{"totalEnergy":1424,"servingEnergy":142},{"totalCarbs":239,"servingCarbs":24},{"totalProteins":3.1,"servingProteins":0.3},{"totalLipids":53,"servingLipids":5},{"totalSodium":16,"servingSodium":2},{"totalPotassium":248,"servingPotassium":25}]'::jsonb,
  '[{"leucine":46,"totalLeucine":250,"servingLeucine":25},{"tirosine":18,"totalTirosine":100,"servingTirosine":10},{"fenil":25,"totalFenil":140,"servingFenil":14},{"metiotine":11,"totalMetiotine":60,"servingMetiotine":6}]'::jsonb,
  '{"en-US":{"name":"Fluffy orange cake","ingredients":["100g of refined sugar","140g of gluten-free flour","100ml of orange juice","40g of cream of milk","5g of neutral stabilizer","10g of baking powder"],"preparation":["1 - In a container, mix the orange juice, the cream of milk, the oil and the neutral stabilizer;","2 - Add the flour, the sugar and mix well until homogeneous. Add the baking powder and mix gently;","3 - Transfer the batter to greased cupcake liners;","4 - Bake in an oven at 180°C for approximately 35 minutes or until completely baked."],"servings":"10 units"}}'::jsonb
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
  translations = EXCLUDED.translations,
  updated_at = NOW();

INSERT INTO recipes (id, name, category, image, ingredients, preparation, servings, nutritional_information, graph_information, translations)
VALUES (
  28,
  'Bolo mesclado',
  'Bolos e bolinhos',
  'https://images.unsplash.com/photo-1608266400306-3e699423dc53?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["160g de açúcar cristal","170ml de água","60g de creme de leite","240g de farinha sem glúten","10g de fermento químico em pó","15g de achocolatado em pó","10g de óleo de coco"]'::jsonb,
  '["1 - Coloque todos os ingredientes na batedeira, exceto o fermento, e bata até obter uma massa homogênea;","2 - Retire da batedeira e acrescente o fermento, misturando delicadamente;","3 - Divida a massa em duas partes e em uma delas, coloque o achocolatado;","4 - Em uma assadeira untada, coloque a massa branca e por cima o restante da massa de chocolate;","5 - Leve para assar em forno pré- aquecido a 180°C por aproximadamente 40 minutos ou até que esteja assado por completo. "]'::jsonb,
  '15 fatias',
  '[{"totalEnergy":1791,"servingEnergy":119},{"totalCarbs":382,"servingCarbs":25},{"totalProteins":4.4,"servingProteins":0.3},{"totalLipids":24,"servingLipids":2},{"totalSodium":46,"servingSodium":3},{"totalPotassium":72,"servingPotassium":5}]'::jsonb,
  '[{"leucine":44,"totalLeucine":420,"servingLeucine":28},{"tirosine":19,"totalTirosine":180,"servingTirosine":12},{"fenil":25,"totalFenil":240,"servingFenil":16},{"metiotine":12,"totalMetiotine":110,"servingMetiotine":7}]'::jsonb,
  '{"en-US":{"name":"Marble cake","ingredients":["160g of crystal sugar","170ml of water","60g of cream of milk","240g of gluten-free flour","10g of baking powder","15g of chocolate powder","10g of coconut oil"],"preparation":["1 - Put all the ingredients in the mixer, except the baking powder, and beat until you get a homogeneous batter;","2 - Remove from the mixer and add the baking powder, mixing gently;","3 - Divide the batter into two parts and in one of them, add the chocolate powder;","4 - In a greased pan, place the white batter and on top the rest of the chocolate batter;","5 - Bake in a preheated oven at 180°C for approximately 40 minutes or until completely baked. "],"servings":"15 slices"}}'::jsonb
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
  translations = EXCLUDED.translations,
  updated_at = NOW();

INSERT INTO recipes (id, name, category, image, ingredients, preparation, servings, nutritional_information, graph_information, translations)
VALUES (
  29,
  'Muffin de coco com chocolate',
  'Bolos e bolinhos',
  'https://plus.unsplash.com/premium_photo-1671405925124-8a3192adec81?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["100g de farinha sem glúten","180g de bebida vegetal a base de arroz","100g de amido de milho","35g de margarina sem sal","2g de essência de baunilha","10g de fermento químico em pó","25g de gotas de chocolate","145g de açúcar demerara","45g de leite de coco","7g de emulsificante","5g de liga neutra"]'::jsonb,
  '["1 - Em um recipiente, misture todos os ingredientes secos, exceto o fermento;","2 - Acrescente os demais ingredientes, deixando o fermento e o chocolate para o final;","3 - Disponha a massa em forminhas de cupcake","4 - Asse em forno pré-aquecido a 200°C por aproximadamente 20 a 25 minutos. "]'::jsonb,
  '10 unidades',
  '[{"totalEnergy":2043,"servingEnergy":204},{"totalCarbs":415,"servingCarbs":41},{"totalProteins":4.3,"servingProteins":0.4},{"totalLipids":39,"servingLipids":4},{"totalSodium":267,"servingSodium":27},{"totalPotassium":108,"servingPotassium":11}]'::jsonb,
  '[{"leucine":45,"totalLeucine":400,"servingLeucine":40},{"tirosine":18,"totalTirosine":160,"servingTirosine":16},{"fenil":26,"totalFenil":230,"servingFenil":23},{"metiotine":11,"totalMetiotine":100,"servingMetiotine":10}]'::jsonb,
  '{"en-US":{"name":"Coconut and chocolate muffin","ingredients":["100g of gluten-free flour","180g of rice-based vegetable drink","100g of cornstarch","35g of unsalted margarine","2g of vanilla essence","10g of baking powder","25g of chocolate chips","145g of demerara sugar","45g of coconut milk","7g of emulsifier","5g of neutral stabilizer"],"preparation":["1 - In a container, mix all the dry ingredients, except the baking powder;","2 - Add the other ingredients, leaving the baking powder and chocolate for last;","3 - Place the batter in cupcake liners","4 - Bake in a preheated oven at 200°C for approximately 20 to 25 minutes. "],"servings":"10 units"}}'::jsonb
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
  translations = EXCLUDED.translations,
  updated_at = NOW();

INSERT INTO recipes (id, name, category, image, ingredients, preparation, servings, nutritional_information, graph_information, translations)
VALUES (
  30,
  'Muffin de chocolate e banana',
  'Bolos e bolinhos',
  'https://images.unsplash.com/photo-1663904458739-5e2ed09582b5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=80',
  '["90g de farinha sem glúten","10g de achocolatado","30g de açúcar orgânico","6g óleo vegetal","60g de creme de leite","3g de fermento químico em pó","150g de banana prata"]'::jsonb,
  '["1 - Em um recipiente, misture todos os ingredientes, exceto o achocolatado e o fermento;","2 - Adicione o fermento e mexa delicadamente;","3 - Divida a massa em duas partes iguais e em uma delas adicione o achocolatado;","4 - Disponha a massa em uma forma de pão de forma ou forminhas de cupcake, colocando a massa branca embaixo e a massa de chocolate por cima;","5 - Asse em forno pré-aquecido a 180°C por aproximadamente 40 minutos ou até o palito sair limpo. "]'::jsonb,
  '6 unidades',
  '[{"totalEnergy":825,"servingEnergy":138},{"totalCarbs":156,"servingCarbs":26},{"totalProteins":5.2,"servingProteins":0.9},{"totalLipids":22,"servingLipids":4},{"totalSodium":41,"servingSodium":7},{"totalPotassium":663,"servingPotassium":111}]'::jsonb,
  '[{"leucine":46,"totalLeucine":450,"servingLeucine":75},{"tirosine":19,"totalTirosine":190,"servingTirosine":32},{"fenil":25,"totalFenil":250,"servingFenil":42},{"metiotine":10,"totalMetiotine":100,"servingMetiotine":17}]'::jsonb,
  '{"en-US":{"name":"Chocolate and banana muffin","ingredients":["90g of gluten-free flour","10g of chocolate powder","30g of organic sugar","6g of vegetable oil","60g of cream of milk","3g of baking powder","150g of banana prata"],"preparation":["1 - In a container, mix all the ingredients, except the chocolate powder and the baking powder;","2 - Add the baking powder and mix gently;","3 - Divide the batter into two equal parts and in one of them, add the chocolate powder;","4 - Place the batter in a loaf pan or cupcake liners, placing the white batter on the bottom and the chocolate batter on top;","5 - Bake in a preheated oven at 180°C for approximately 40 minutes or until the toothpick comes out clean. "],"servings":"6 units"}}'::jsonb
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
  translations = EXCLUDED.translations,
  updated_at = NOW();