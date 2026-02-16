const fs = require('fs');
const path = require('path');

const jsonFile = path.join(__dirname, '..', 'recipes.json');

try {
  const content = fs.readFileSync(jsonFile, 'utf8');
  const data = JSON.parse(content);
  let fixedCount = 0;

  data.forEach(category => {
    category.recipes.forEach(recipe => {
      if (recipe.graphInformation && recipe.graphInformation.length === 4) {
        const gi = recipe.graphInformation;
        // Search for fenil at index 1 and tirosine at index 2
        const hasFenilAt1 = gi[1].hasOwnProperty('fenil');
        const hasTirosineAt2 = gi[2].hasOwnProperty('tirosine');

        if (hasFenilAt1 && hasTirosineAt2) {
          // Swap them
          const temp = gi[1];
          gi[1] = gi[2];
          gi[2] = temp;
          fixedCount++;
        }
      }
    });
  });

  if (fixedCount > 0) {
    fs.writeFileSync(jsonFile, JSON.stringify(data, null, 2), 'utf8');
    console.log(`✅ Fixed ${fixedCount} recipes in recipes.json`);
  } else {
    console.log('⏭️  recipes.json - no changes needed');
  }
} catch (error) {
  console.error('❌ Error processing recipes.json:', error.message);
}

console.log('\n✨ Done!');
