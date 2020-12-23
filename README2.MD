## RECIPE 

I AM GOING TO BUILD A RECEPIE APP WHERE USER CAN POST THEIR OWN RECIPE
# Users will be able to...
- signup
- login and out
- add, edit, delete recipe posts


# Wireframing(models)

# Models will be User and recipe entry


1. User
# Attributes
- name
- email
- password (if I use bycrypt, this will be 'password_digest' in the db)

2. Recipeentry
# Attributes
- content
- user_id (this will be the foreign key)
- date  
# Associations
'User' has_many 'RecipeEntry'
'RecipeEntry' belongs_to 'User' 

# MVP 

Users can signup, login, logout, create recipe, edit their OWN, and view their posts

# Stretch goals
- api usage 
- bootstrap make it really nice 
- Tests
- Include a join model
- save draft 
- users can choose private of public 