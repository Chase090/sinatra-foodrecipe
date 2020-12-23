

## Pre-coding work
1. Ideate! What do you want to build?
 - choose a domain you're familiar with
 - choose a domain you care about
2. Wireframing & User Stories
 - Write down your models, their attributes, and their associations
 - As a user, I can ...
 - A user should be able to ... 
 - What does your app _do_?
3. Design your MVP 'Minimum Viable Product' vs. what are my 'stretch goals'
 - stretch goals - bonus features you want but don't need
 
 ### NOW, WE CODE * but no Controllers or views yet

4. Build your models
 - Migrations
 - Model Classes
 - Associations(& validations)
5. Test your models and associations in the console.
 - create some seed data 
 - adjust migrations as needed

#### NOW CONSIDER THE FOLLOWING

6. Start with your ApplicationController helpers - '#logged_in?' and '#current_user'
 - add your login/signup/signout/ routes
7. Build out controller routes for other models (add a controller for eac model)

8. Build views and controller actions based on the folw of your app, one step at a time, testing as you go
 - use 'shotgun' and 'pry' (or raise'/'inspect) all the time!

#### USING THE CORNEAL GEM
- REMOVE ALL THE FILES OR FOLDER YOU WOULD NOT BE USING












build out users model
has a lot of recipe
table 
-email
-username
-password
recipe
belongs to user
has many ingredients
ingredients
belongs to ingredients 
