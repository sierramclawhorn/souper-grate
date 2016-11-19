# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.destroy_all
Recipe.destroy_all
User.destroy_all
Quantity.destroy_all
Ingredient.destroy_all


categories = Category.create([
  { name: 'Appetizers'},
  { name: 'Desserts'},
  { name: 'Main Courses'},
  { name: 'Soups & Salads'}
  ])

users = User.create([
  { username: 'Tomithy',
    first_name: 'Tomithy',
    last_name: 'Tao',
    email: 'tt@tt.com',
    password: 'tomithy' },
  { username: 'KenjaminFranklin',
    first_name: 'Ken',
    last_name: 'Rhettberg',
    email: 'kenjamin@hotmail.com',
    password: 'ken' },
  { username: 'coyote',
    first_name: 'Coyote',
    last_name: 'LivingOnBernalHill',
    email: 'coyote@bestcohortever.com',
    password: 'coyotedude' }
  ])

recipes = Recipe.create([
  { name: 'Parsnip Soup',
    description: 'A recipe from the ancestors of Maxwell Mathews',
    instructions: 'Preheat an oven to 425 degrees F (220 degrees C).
                   Place the parsnips and carrots into a mixing bowl, and sprinkle with 1 tablespoon olive oil. 
                   Toss to coat the vegetables with oil, then season to taste with salt and pepper. 
                   Spread the vegetables evenly over a baking sheet.
                   Roast in the preheated oven until the parsnips are tender and golden brown, about 30 minutes.
                   Heat the remaining 1 tablespoon of olive oil in a large saucepan over medium heat. 
                   Stir in the onion and celery. 
                   Cook and stir until the vegetables have softened and the onion is beginning to turn golden brown, about 7 minutes. 
                   Reduce the heat to low, and stir in the butter, garlic, brown sugar, and the roasted parsnips and carrots. 
                   Continue to cook and stir until all of the vegetables are very tender and beginning to brown, about 10 minutes.
                   Season with the ginger, cardamom, allspice, nutmeg, and cayenne pepper; Stir for 1 minute. 
                   Pour in the chicken stock, and bring to a boil over medium-high heat. 
                   Reduce heat to medium-low, partially cover, and simmer gently until all of the vegetables are very tender, about 15 minutes.
                   Pour the soup into a blender, filling the pitcher no more than halfway full. 
                   Hold down the lid of the blender with a folded kitchen towel, and carefully start the blender, using a few quick pulses to get the soup moving before leaving it on to puree. 
                   Puree in batches until smooth and pour into a clean pot; Alternately, you can use a stick blender and puree the soup right in the cooking pot.
                   Stir in the milk and cream. 
                   Return to a simmer over medium-low heat. 
                   Season to taste with salt and pepper before serving.',
    user_id: 1,
    category_id: 4,
    prep_time: 90,
    difficulty_level: 4 },
  { name: 'Garlic Potato Sticks',
    description: 'Fries with garlic',
    instructions: 'cut the potato. do the garlic things. bake it. eat it.',
    user_id: 2,
    category_id: 1,
    prep_time: 34,
    difficulty_level: 3 },
  { name: 'Toast',
    description: 'double cooked bread',
    instructions: 'slap on some butter. use a toaster or super hot thing to make your bread crispy and probably burnt',
    user_id: 3,
    category_id: 1,
    prep_time: 5,
    difficulty_level: 1 },
  { name: 'Green Bean Casserole',
    description: 'some long green sticks cooked with crumbly delicious things on top',
    instructions: 'I do not know. It looks complicated.',
    user_id: 1,
    category_id: 3,
    prep_time: 25,
    difficulty_level: 3 },
  { name: 'Stick-o-Butter',
    description: 'just butter',
    instructions: 'unwrap the butter',
    user_id: 2,
    category_id: 1,
    prep_time: 1,
    difficulty_level: 1 },
  { name: 'Kale Chips',
    description: 'crispy kale chips of deliciousness',
    instructions: 'De-vain the kale. Cover in olive oil. Bake.',
    user_id: 3,
    category_id: 1,
    prep_time: 15,
    difficulty_level: 1 },
  { name: 'Gyoza',
    description: 'pockets of paradise and meat',
    instructions: "buy the frozen ones; they're faster",
    user_id: 2,
    category_id: 1,
    prep_time: 8,
    difficulty_level: 1 },
  { name: 'Potato Toddlers',
    description: 'tater tots',
    instructions: "buy the frozen ones; they're faster",
    user_id: 2,
    category_id: 1,
    prep_time: 15,
    difficulty_level: 1 },
  { name: 'Seaweed Salad',
    description: "it's not really a salad, it's just green",
    instructions: 'Go to the ocean. Find some seaweed. Eat it.',
    user_id: 1,
    category_id: 1,
    prep_time: 50,
    difficulty_level: 3 }
  ])

quantities = Quantity.create([
  { quantity: '2 lbs',
    ingredient_id: 1,
    recipe_id: 1 },
  { quantity: '3',
    ingredient_id: 2,
    recipe_id: 1 },
  { quantity: '1 tablespoon',
    ingredient_id: 3,
    recipe_id: 1 },
  { quantity: 'To taste',
    ingredient_id: 4,
    recipe_id: 1 },
  { quantity: '1 tablespoon',
    ingredient_id: 5,
    recipe_id: 1 },
  { quantity: '1',
    ingredient_id: 6,
    recipe_id: 1 },
  { quantity: '3 stalks',
    ingredient_id: 7,
    recipe_id: 1 },
  { quantity: '1 tablespoon',
    ingredient_id: 8,
    recipe_id: 1 },
  { quantity: '3 cloves',
    ingredient_id: 9,
    recipe_id: 1 },
  { quantity: '1 tablespoon',
    ingredient_id: 10,
    recipe_id: 1 },
  { quantity: '1 teaspoon',
    ingredient_id: 11,
    recipe_id: 1 },
  { quantity: '1/2 teaspoon',
    ingredient_id: 12,
    recipe_id: 1 },
  { quantity: '1/2 teaspoon',
    ingredient_id: 13,
    recipe_id: 1 },
  { quantity: '1/2 teaspoon',
    ingredient_id: 14,
    recipe_id: 1 },
  { quantity: '1/4 teaspoon',
    ingredient_id: 15,
    recipe_id: 1 },
  { quantity: '4 cups',
    ingredient_id: 16,
    recipe_id: 1 },
  { quantity: '1 cup',
    ingredient_id: 17,
    recipe_id: 1 },
  { quantity: '1/2 cup',
    ingredient_id: 18,
    recipe_id: 1 },
  { quantity: '3 cloves',
    ingredient_id: 18,
    recipe_id: 2 },
  { quantity: '2 tablespoons',
    ingredient_id: 18,
    recipe_id: 2 },
  { quantity: '3',
    ingredient_id: 18,
    recipe_id: 2 },
  { quantity: '1/2 teaspoon',
    ingredient_id: 18,
    recipe_id: 2 },
  { quantity: '1 tablespoon',
    ingredient_id: 18,
    recipe_id: 2 }
  ])

ingredients = Ingredient.create([
  { item: 'parsnips, cut into 1/2 pieces' },
  { item: 'carrots, cut into 1/2 pieces' },
  { item: 'olive oil' },
  { item: 'sea salt & ground black pepper' },
  { item: 'olive oil' },
  { item: 'onion, diced' },
  { item: 'celery, diced' },
  { item: 'butter' },
  { item: 'garlic, minced' },
  { item: 'brown sugar' },
  { item: 'ground ginger' },
  { item: 'ground cardamom' },
  { item: 'ground allspice' },
  { item: 'ground nutmeg' },
  { item: 'cayenne pepper' },
  { item: 'chicken stock' },
  { item: 'whole milk' },
  { item: 'heavy cream' },
  { item: 'canola oil' },
  { item: 'large baking potatoes' },
  { item: 'salt' },
  { item: 'garlic, minced' },
  { item: 'finely chopped fresh parsley leaves' }
  ])
  
  
