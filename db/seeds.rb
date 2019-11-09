# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).




# ==================================================== #
# ====================[CATEGORIES]==================== #
# ==================================================== #

categories = ["hero", "pasta_dish", "entree", "children", "desert", "appetizer", "soup_salad", "light", "pizza_regular", "pizza_gourmet", "calzones_rolls", "more"]

categories.each do |category|
  MenuCategory.create(name: category)
end

# MenuCategory.create(name: "hero")

# ==================================================== #
# ====================[ITEMS]========================= #
# ==================================================== #

MenuItem.create(
  name: "meatball_parmigiana_hero",
  price: 895,
  menu_category: MenuCategory.find_by(name: "hero")
)
MenuItem.create(
  name: "sausage_parmigiana_hero",
  price: 895,
  menu_category: MenuCategory.find_by(name: "hero")
)
MenuItem.create(
  name: "chicken_cutlet_parmigiana_hero",
  price: 895,
  menu_category: MenuCategory.find_by(name: "hero")
)
MenuItem.create(
  name: "veal_cutlet_parmigiana_hero",
  price: 995,
  menu_category: MenuCategory.find_by(name: "hero")
)
MenuItem.create(
  name: "shrimp_parmigiana_hero",
  price: 995,
  menu_category: MenuCategory.find_by(name: "hero")
)
MenuItem.create(
  name: "sausage_peppers_onions_hero",
  price: 795,
  menu_category: MenuCategory.find_by(name: "hero")
)
MenuItem.create(
  name: "eggplant_parmigiana_hero",
  price: 850,
  menu_category: MenuCategory.find_by(name: "hero")
)
MenuItem.create(
  name: "sausage_broccoli_rabe_mozzarella_hero",
  price: 895,
  menu_category: MenuCategory.find_by(name: "hero")
)
MenuItem.create(
  name: "grilled_chicken_roasted_red_pepper_mozzarella_hero",
  price: 895,
  menu_category: MenuCategory.find_by(name: "hero")
)
MenuItem.create(
  name: "chicken_cutlet_lettuce_tomatoes_onions_hero",
  price: 795,
  menu_category: MenuCategory.find_by(name: "hero")
)
MenuItem.create(
  name: "eggplant_roasted_peppers_mozzarella_hero",
  price: 895,
  menu_category: MenuCategory.find_by(name: "hero")
)
MenuItem.create(
  name: "italian_cheese_steak_hero",
  price: 895,
  menu_category: MenuCategory.find_by(name: "hero")
)
MenuItem.create(
  name: "italian_combo_hero",
  price: 795,
  menu_category: MenuCategory.find_by(name: "hero")
)
MenuItem.create(
  name: "pepper_egg_hero",
  price: 795,
  menu_category: MenuCategory.find_by(name: "hero")
)
MenuItem.create(
  name: "the_calabria_hero",
  price: 995,
  menu_category: MenuCategory.find_by(name: "hero")
)

# ==================================================== #
# ====================[USERS]========================= #
# ==================================================== #

User.create(username: 'chris', email: 'chris@calabria.com', password: 'abc')
