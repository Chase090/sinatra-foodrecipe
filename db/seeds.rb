# ^ Create users


spongebob = User.create(name: "Spongebob", email: "Spongebob@bikinibottom.com", password: "gary")
souma = User.create(name: "Souma Ykihira", email: "Souma@foodwars.com", password: "food")
teuchi = User.create(name: "Teuchi", email: "ichiraku@hiddenleaf.com", password: "ramen")
gordon = User.create(name: "Gordon Ramsey", email: "Gordon@ramsey.com", password: "iwannapeewhenispeak")
# User.create(name: "Guy Fieri", email: "cooldude@comfortfood.com", password: "mustang")
spongebob = User.create(name: "Spongebob", email: "spongebob@recipe.com", password: "password")
souma = User.create(name: "Souma Ykihira", email: "souma@recipe.com", password: "password")
teuchi = User.create(name: "Teuchi", email: "ichiraku@recipe.com", password: "password")
gordon = User.create(name: "Gordon Ramsey", email: "gordon@recipe.com", password: "password")
# ^ Create recipe(btw dont forget the foreign key)

Recipe.create(title: "Krabby Patty" ,
    ingredients: "BURGER PATTIES
        1 1/3 lb. ground beef (80 percent lean)
        2 tsp. Old Bay seasoning
        1 tsp. Black pepper
        1 tsp. Sea salt
        4 slices cheddar cheese
        KING NEPTUNE’S POSEIDON POWDER AIOLI
        1/2 c. mayonnaise
        1 tsp. Old Bay seasoning
        SANDWICH
        4 sesame seed buns, sliced in half
        ketchup
        mustard
        1 jar dill pickle slices
        1 red onion, sliced
        1 tomato, sliced
        4 leaves of butter lettuce", 
    directions: 
        "Make the Burger Patties: Heat a grill pan or sauté pan over medium heat. As it heats, combine ground beef, Old Bay, pepper and salt. Form into four equally sized patties, about 1/3 lb apiece. Set on a platter next to the stovetop. Coat the warmed grill pan with cooking spray and place patties on the pan, cooking each side about 4-5 minutes, or until cooked through to your desired doneness.
        Use a large star-shaped cookie cutter to cut each cheese slice into a star shape. Place the star-shaped cheese on each burger patty, in the last 30 seconds or so of cooking, so it melts a little. Set burger patties aside.
        Make King Neptune’s Poseidon Powder Aioli: Stir mayo and Old Bay until thoroughly combined.
        Assemble the Sandwich: Spread Poseidon Powder Aioli on the bottom of each bun. Top with a burger patty, ketchup, mustard, pickles, onion slices, tomato and lettuce. Place the top bun on each burger. Serve.", 
    user_id: spongebob.id )
# ^ or 
teuchi.recipe.create(title: "Teuchi Ramen", 
    ingredients: "BROTH:
        2 small carrots, cut into 1-inch (2.5-cm) lengths
        2 small negi (Japanese leeks) or spring onions, cut into 1-inch (2.5-cm) lengths
        1 (¾-inch/2-cm) knob fresh ginger, peeled and finely sliced
        4 free-range chicken thighs, bone-in (or 8 wings)
        1 teaspoon sea salt
        2 tablespoons best-quality rapeseed or sesame oil
        NOODLES:
        2 tablespoons sesame oil
        2 cups (300 g) good-tasting all-purpose flour (page 10)
        2 large eggs, at room temperature
        2 egg yolks, at room temperature
        TOPPINGS:
        4 Half-Boiled Eggs (page 45)
        1 small bunch boiled, squeezed, and chopped bitter greens (bok choy or komatsuna, page 365)
        3 tablespoons finely chopped negi (Japanese leeks) or scallions
        1 sheet nori, cut into eighths
        Rayu (Chile-Infused Sesame Oil), for serving (page 315, optional)
        Yuzu Kosho, for serving (page 316, optional)
        FLAVORINGS:
        Miso
        Soy sauce
        Sea salt
        ", 
    directions: "Start the ramen soup early in the day or at least several hours before dinner.
        Heat the oven to 450°F (235°C). Put the carrots, negi, ginger, and chicken thighs in a cast-iron pan and sprinkle with the salt and oil. Smoosh the oil around to coat all the chicken and vegetables and roast for 30 to 45 minutes in the middle of the oven.    
        Scrape the roasted chicken and vegetables and all of the pan drippings into a large heavy pot with 4 quarts (4 liters) of cold water and bring to a boil over high heat. Lower the heat and simmer, covered, for 1 hour.
        Uncover, pull out 2 thighs, place in a medium-sized bowl, and ladle a bit of broth over to allow the meat to cool gently. Simmer the stock, uncovered, for 1 hour more. If you are in a hurry, use half the amount of water and cook in a pressure cooker. (In Japan, meat is usually not sold on the bone, so Tadaaki uses chicken wings. N.B.: Most ramen shops use pork bones as the base to their broth, though chicken bones and dried fish usually play some role as well.) After the chicken meat has cooled for a half hour, shred, moisten with a ladle of broth, and reserve. When the stock is done, strain into a clean saucepan and keep warm over low heat.    
        Prepare the ramen noodle dough by mixing 2 tablespoons of the sesame oil into the flour with your fingers until crumbly. Add the eggs and egg yolks and stir with your hand until just incorporated. Knead on a clean, flat surface for 5 minutes until pliable but stiff. Let the dough rest while you prepare the ramen toppings.
        Fill the largest stockpot you own with hot water and bring to a boil over high heat.
        Roll out the ramen noodles following the udon noodle method (page 134), but roll them a little thinner than the ⅛ inch (3 mm). Cut them on the linguine setting of a pasta machine (or by hand). Slice into 9-inch (22- cm) lengths with a pizza cutter, flour well, and toss to distribute the flour. Leave on the workspace, but do not clump into a mass.
        Take out one large soup bowl per person and add seasoning to each bowl according to each person’s desire: 1 tablespoon miso, 2 teaspoons soy sauce, or ½ teaspoon salt. Mix a little broth in to melt the salt or emulsify the miso. Distribute the reserved shredded chicken pieces among the bowls along with the small amount of broth in which it was cooled.
        Boil the noodles for 2 minutes and right before the noodles are done, add 2 or 3 ladlefuls of broth to the bowls. Set a large strainer in a bowl and after 2 minutes has elapsed, scoop the noodles out of the boiling water with a small fine-mesh strainer and drop into the large strainer. Divide the noodles among the bowls filled with soup and quickly add 2 egg halves, a dollop of greens, and a piece of nori before sprinkling liberally with the negi .
        Serve immediately. If you are doubling (or tripling) the recipe, do not be tempted to cook more than 4 portions at a time. Continue cooking more noodles, but the first four people served should dive in, otherwise the noodles will inflate beyond control!
        If added spice is desired, drizzle soy sauce or miso ramen with rayu and dab salt ramen with yuzu kosho.
        
        VARIATIONS:  You can also substitute semi-fresh ramen noodles (sometimes found at Japanese or Chinese grocery stores) or dried. Follow the directions on the package for cooking. They will not be as good.")
# ^ or
gordon_recipe = gordon.recipe.build(title:"ROAST BEEF WITH CARAMELISED ONION GRAVY RECIPE
    ", 
    ingredients: "1 head of garlic (about 12 cloves), cut in half
        5 thyme sprigs, leaves picked, plus 1 extra
        1.8kg beef sirloin
        3–4 tbsp olive oil
        4 large onions, sliced
        150g plain flour
        500ml red wine
        1.5 litres hot beef stock", 
    directions:"Rub the garlic halves and thyme leaves all over the beef. Place the joint in a large dish, drizzle over the olive oil, then rub it into the meat all over. Cover and leave to marinate in the fridge for 1–2 days before you cook it (you don’t have to marinate the beef in advance, but it does make it super tasty! – see Tip). Take the beef out of the fridge about an hour before cooking, to let it come up to room temperature.
        Preheat the oven to 190°C/170°C fan/Gas 5.
        Preheat a dry frying pan until very hot, then sear the beef over a high heat until it’s coloured on all sides. Place the beef in a large, hob-proof roasting tray with the garlic halves and the thyme sprig and roast for about 45 minutes for medium rare (or until it reaches 45–47°C in the centre, if you have a meat thermometer). Add 10–12 minutes for medium (or until it reaches 55–60°C in the centre), or add about 20 minutes if you like it well done (or until it reaches 65–70°C in the centre).
        Transfer the beef to a warm platter, cover loosely with foil and leave to rest for at least 20 minutes, and anything up to 40 minutes, before serving.
        Meanwhile, to make the gravy, place the roasting tray over a low heat on the hob, add the onions to the juices in the tray and cook gently for about 20 minutes, stirring occasionally, until really soft and caramelised. Stir in the flour until combined, then whisk in the red wine, making sure there are no lumps. Bring to the boil, whisking, then bubble rapidly until the red wine has reduced by half. Stir in the hot stock, then cook over a medium heat for about 8 minutes, stirring occasionally, until reduced to a thick gravy.
        Carve the beef thinly and pour the gravy into a warm jug. Serve with Yorkshire Puddings and steamed chard.
        TIP

        If you prefer not to marinate the beef before cooking, simply place the garlic/thyme and oil rubbed joint of beef in a large roasting tray. Continue to sear and roast as in step 3 onwards.

        Join us in London as Gordon celebrates")
# * "#build" is simillar to new, so you have to maually "#save"
gordon_recipe.save

