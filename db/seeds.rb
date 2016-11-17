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
    instructions: 'take a parsnip & put it in some soup',
    user_id: 1,
    category_id: 4,
    prep_time: 20,
    difficulty_level: 2 },
  { name: 'Garlic Potato Sticks',
    description: 'Fries with garlic',
    instructions: 'cut the potato, do the garlic things',
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