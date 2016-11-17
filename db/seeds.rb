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
    difficulty_level: 3 }
  ])