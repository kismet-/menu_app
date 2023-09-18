import 'dart:math';

class MenuItem {
  final String name;
  final String description;
  final double price;
  final String image;
  final String rating;
  final String? longDescription;

  MenuItem({
    required this.name,
    required this.description,
    required this.price,
    required this.image,
    required this.rating,
    this.longDescription,
  });
}

final appetizers = [
  MenuItem(
      name: 'Iceberg Wedge Salad with House Cured Bacon',
      description: 'tomato salsa gorgonzola',
      price: 7.50,
      image:
          'https://houseofyumm.com/wp-content/uploads/2021/07/Wedge-Salad-7.webp',
      rating: (3 + Random().nextDouble() * (5 - 3)).toStringAsFixed(2),
      longDescription: '''
Delight in a refreshing wedge of crisp iceberg lettuce, paired with our special house-cured bacon that adds a touch of smokiness and depth. Topped with a zesty tomato salsa to provide a burst of tangy flavor, and finished with crumbled gorgonzola cheese, which melts in the mouth with its creamy texture and sharp taste. The salad is elegantly presented and served chilled for optimal freshness.

Preparation: Our bacon is carefully cured in-house using a traditional recipe that enhances its flavor. The iceberg lettuce is hand-selected for its quality and crispness. The tomato salsa is freshly prepared, ensuring a vibrant and aromatic experience.

Allergen Information: Contains dairy (gorgonzola) and pork (bacon). Prepared in a kitchen that also handles nuts, soy, and wheat. Please let us know of any allergies or dietary restrictions, and we'll do our best to accommodate.
      '''),
  MenuItem(
      name: 'Sautéed Shredded Brussels Sprouts',
      description: 'bacon hazelnuts gorgonzola',
      price: 6.95,
      image:
          'https://www.forkinthekitchen.com/wp-content/uploads/2021/11/211110.skillet.brussels-7362-600x600.jpg',
      rating: (3 + Random().nextDouble() * (5 - 3)).toStringAsFixed(2),
      longDescription: '''
Delight in our finely shredded Brussels sprouts, sautéed to perfection to achieve a tender yet slightly crispy texture. The dish is generously garnished with crunchy bacon bits and roasted hazelnuts, adding layers of richness and nuttiness. To elevate the flavors, we sprinkle it with creamy gorgonzola cheese, melding into the warmth of the sprouts. Perfectly golden and irresistible, this dish captures the essence of simple ingredients coming together in a symphony of tastes.

Allergen Information: Contains nuts (hazelnuts) and dairy (gorgonzola cheese). Prepared in a facility that also processes seafood, soy, and gluten.

Preparation Note: For our vegetarian patrons, request this dish without bacon for an equally delightful experience.
  '''),
  MenuItem(
      name: 'Kale Salad',
      description: 'parmesan crisp corn radish garlic-lemon vinaigrette',
      price: 7.50,
      image:
          'https://cdn.loveandlemons.com/wp-content/uploads/2019/01/IMG_15972-crop2.jpg',
      rating: (3 + Random().nextDouble() * (5 - 3)).toStringAsFixed(2),
      longDescription: '''
Kale Salad – A nourishing blend of fresh, hand-torn kale leaves, generously topped with crispy parmesan shards that add a delightful crunch to every bite. The salad is adorned with sweet corn kernels, thinly sliced radishes, and our signature garlic-lemon vinaigrette that adds a zesty kick, ensuring every mouthful is flavorful. This dish is lovingly prepared in-house, using only the finest, locally-sourced ingredients to guarantee freshness. Priced at just 7.50, it's a delightful appetizer or a light entrée.

Allergen Information: Contains dairy (parmesan). Please inform our staff of any allergies or dietary restrictions, and we will be happy to accommodate.

Serving Suggestion: Best enjoyed chilled. If preferred, you can request for the dressing to be served on the side.
  '''),
  MenuItem(
      name: 'Pecan Crusted Utah Goat Cheese with Basil-Mint Pesto',
      description: 'grilled tomato salsa crostini',
      price: 6.95,
      image:
          'https://s3-media0.fl.yelpcdn.com/bphoto/nuaodmIIazs9OVOtcaE7oA/o.jpg',
      rating: (3 + Random().nextDouble() * (5 - 3)).toStringAsFixed(2),
      longDescription: '''
Indulge in the rich flavors of the Midwest with our creamy Utah Goat Cheese, delicately encrusted with hand-selected roasted pecans. Served atop a grilled tomato salsa crostini that brings out the sweetness of the tomatoes, it's complemented by a fragrant basil-mint pesto that adds a refreshing zing.

Preparation: Our goat cheese is carefully crusted and pan-seared to a golden hue, ensuring a crisp exterior with a soft and creamy center. Paired with the robust, grilled tomato salsa and fresh herbs, this dish offers a delightful play of textures and flavors.

Allergen Information: Contains dairy, nuts (pecans), and gluten. Prepared in a facility that also processes shellfish, soy, and peanuts. Vegan and gluten-free modifications are available upon request.

Pair with a white wine or light cocktail to elevate your dining experience.
  '''),
  MenuItem(
      name: 'Chicken and Cabbage Eggrolls',
      description: 'hot & sour dipping sauce',
      price: 6.95,
      image:
          'https://badbatchbaking.com/wp-content/uploads/2020/01/IMG_8146-2.jpg',
      rating: (3 + Random().nextDouble() * (5 - 3)).toStringAsFixed(2),
      longDescription: '''
Savor the delightful combination of tender chicken and crisp cabbage, delicately wrapped in a thin, crispy pastry. These hand-rolled eggrolls are golden fried to perfection, ensuring each bite provides an enticing contrast of textures. Paired with our tangy hot & sour dipping sauce, each eggroll becomes an explosion of flavors that will have you craving for more. Allergen Information: Contains gluten and soy.
  '''),
];

final entrees = [
  MenuItem(
      name: 'Farfalle Pasta with Braised Pork in Tomato Cream',
      description: 'capers butternut squash kale',
      price: 12.95,
      image:
          'https://www.spoonforkbacon.com/wp-content/uploads/2018/10/braised_pork_ragu_recipe.jpg',
      rating: (3 + Random().nextDouble() * (5 - 3)).toStringAsFixed(2),
      longDescription: '''
Delight in our succulent braised pork, slow-cooked to perfection to ensure a tender and flavorful experience. This savory pork is paired with perfectly al dente farfalle pasta and drenched in a velvety tomato cream sauce. Added textures of capers offer a hint of brine that elevates the dish, while the sweet notes from butternut squash and the earthy freshness of kale bring depth and balance. Served piping hot, this hearty entrée promises a satisfying, gastronomic journey with every bite.

Allergen Information: Contains dairy (from the tomato cream) and gluten (from the pasta). Please let us know if you have any dietary restrictions or allergies, and we'll do our best to accommodate.

Preparation Note: Our pork is ethically sourced and braised for several hours to ensure both tenderness and flavor infusion. The pasta is freshly cooked to order.
  '''),
  MenuItem(
      name: 'Stout Braised Bratwurst',
      description:
          'horseradish mashed potatoes roasted root veggies grilled onion',
      price: 13.95,
      image:
          'https://www.craftbeering.com/wp-content/uploads/2019/07/Beer-Brats-Skillet-1.jpg',
      rating: (3 + Random().nextDouble() * (5 - 3)).toStringAsFixed(2),
      longDescription: '''
Indulge in our traditional Bratwurst, slowly braised in a rich stout to enhance its flavors and tenderize the meat, ensuring every bite is succulent. Accompanied by a hearty serving of horseradish mashed potatoes that add a hint of piquancy, perfectly complementing the deep flavors of the Bratwurst. On the side, enjoy a medley of roasted root vegetables, seasoned and roasted to perfection, bringing forth their natural sweetness. The dish is completed with grilled onions that add a touch of smokiness and a caramelized sweetness.

Allergen Information: This dish contains gluten (from stout) and dairy (from mashed potatoes).
  '''),
  MenuItem(
      name: 'Salmon & Crispy Tofu in Yellow Curry Sauce',
      description: 'vegetable sauté golden raisin chutney',
      price: 15.95,
      image:
          'https://eatwithclarity.com/wp-content/uploads/2022/11/Coconut-Curry-Salmon-Bowls.jpg',
      rating: (3 + Random().nextDouble() * (5 - 3)).toStringAsFixed(2),
      longDescription: '''
Salmon & Crispy Tofu in Yellow Curry Sauce – 15.95  

Indulge in a harmonious blend of the ocean and the earth with our perfectly seared salmon paired with crispy tofu. Both are bathed in a rich and aromatic yellow curry sauce that captures the essence of traditional Southeast Asian flavors. Accompanying the main components is a medley of sautéed seasonal vegetables, providing both color and crunch. The dish is completed with a sweet and tangy golden raisin chutney, a delightful contrast to the warm spice of the curry.  
Allergen Information: Contains fish (salmon), soy (tofu), and may contain traces of nuts or shellfish from preparation. Please inform your server of any allergies or dietary restrictions.  

Preparation Note: Our salmon is sourced sustainably and is pan-seared to preserve its tender, flaky texture. The tofu is fried until golden and crisp, offering a delightful textural contrast. The yellow curry sauce is house-made, using traditional herbs and spices for an authentic flavor experience.
  '''),
  MenuItem(
      name: 'Sesame Shrimp',
      description:
          'udon noodles ramen broth shiitake mushrooms bean sprouts scallions',
      price: 13.95,
      image:
          'https://healthyrecipesblogs.com/wp-content/uploads/2021/04/sesame-shrimp-1-2021.jpg',
      rating: (3 + Random().nextDouble() * (5 - 3)).toStringAsFixed(2),
      longDescription: '''
Indulge in our succulent shrimp, lightly tossed in a fragrant sesame glaze, and paired perfectly with soft udon noodles submerged in a rich ramen broth. The dish is complemented with earthy shiitake mushrooms, crunchy bean sprouts, and fresh scallions, ensuring a delightful play of textures and flavors in every bite. Expertly prepared to bring out the essence of each ingredient, our Sesame Shrimp dish offers a modern twist on classic Asian flavors.

Allergen Information: Contains shellfish, gluten, and sesame. Prepared in a facility that also processes nuts and dairy.
  '''),
];

final greenSalads = [
  MenuItem(
      name: 'Grilled Red Trout',
      description:
          'Lentils, Tomatoes, Cukes, Green Beans, Red Bells, Almonds, Sundried Tomato Vinaigrette',
      price: 10.95,
      image:
          'https://www.keyingredient.com/media/e8/18/23e1118ed1c6d446577e7c643f30f2c2b6b0.jpg/rh/campfire-trout-dinner-cooked-in-foil.jpg',
      rating: (3 + Random().nextDouble() * (5 - 3)).toStringAsFixed(2)),
  MenuItem(
      name: 'Smoked Turkey Cheese Tortellini',
      description:
          'Bacon, Tomato, Cucumber, Egg, Black Bean-Corn Salsa, Avocado',
      price: 9.95,
      image:
          'https://s3-us-west-2.amazonaws.com/images.soupaddict.com/smoked-turkey-sausage-tortellini-vegetable-saute-8368-1016.jpg',
      rating: (3 + Random().nextDouble() * (5 - 3)).toStringAsFixed(2)),
  MenuItem(
      name: 'Asian Grilled Chicken',
      description:
          'Snow Peas, Carrot Slaw, Red Bells, Water Chestnut, Peanuts, Baby Corn, Cilantro, Cukes, Spicy Peanut Dressing',
      price: 10.50,
      image:
          'https://littlespicejar.com/wp-content/uploads/2016/07/Simple-Asian-Grilled-Chicken.jpg',
      rating: (3 + Random().nextDouble() * (5 - 3)).toStringAsFixed(2)),
  MenuItem(
      name: 'Southwest Grilled Chicken',
      description:
          'Tomato, Guacamole, pepitas, Jicama, Corn & Black Bean Salsa, Orange Wedges, Spicy Citrus Vinaigrette',
      price: 10.50,
      image:
          'https://i0.wp.com/shewearsmanyhats.com/wp-content/uploads/2014/05/southwestern-grilled-chicken-recipe-2new.jpg',
      rating: (3 + Random().nextDouble() * (5 - 3)).toStringAsFixed(2)),
  MenuItem(
      name: 'Mediterranean Italian Sausage',
      description:
          'Artichoke Hearts, Green Beans, Roma Tomato, Kalamatas, Red Onion, Cucumber, Croutons, Parmesan, Fresh Mozzarella, Gorgonzola Vinaigrette',
      price: 9.95,
      image:
          'https://www.themediterraneandish.com/wp-content/uploads/2022/10/sheet-pan-chicken-sausage-and-peppers-recipe-6.jpg',
      rating: (3 + Random().nextDouble() * (5 - 3)).toStringAsFixed(2)),
  MenuItem(
      name: 'Grilled Salmon',
      description:
          'Artichoke tapenade, shredded kale, corn, radish, parmesan crisps',
      price: 11.50,
      image:
          'https://www.foodiecrush.com/wp-content/uploads/2019/05/Grilled-Salmon-foodiecrush.com-023.jpg',
      rating: (3 + Random().nextDouble() * (5 - 3)).toStringAsFixed(2)),
];

final sandwiches = [
  MenuItem(
      name: 'Turkey & Avocado',
      description: 'with tomato',
      price: 9.25,
      image:
          'https://californiaavocado.com/wp-content/uploads/2020/07/Fresh-California-Avocado-and-Turkey-Sandwich-1.jpeg',
      rating: (3 + Random().nextDouble() * (5 - 3)).toStringAsFixed(2),
      longDescription: '''
Tender slices of oven-roasted turkey are paired with creamy avocado to create a flavorful symphony that dances on your palate. Accompanied by freshly sliced tomatoes, this sandwich is a delightful balance of savory and subtle buttery tastes. For those with dietary concerns, please be aware that our turkey is gluten-free, but cross-contamination may occur in our kitchen.

Bread Options:
Your sandwich will be lovingly assembled on your choice of freshly baked bread: sourdough, whole wheat, or rye.

Side Options:
Your meal comes with a choice of house pasta salad, a refreshing green salad, or a selection of fresh fruit. For an additional 1.50, elevate your meal experience by opting for our pasta salad of the day, comforting French onion soup, or our chef's soup of the day.

Pricing:

Half Sandwich: 7.95
Full Sandwich: 9.25
  '''),
  MenuItem(
      name: 'Pub Club',
      description: 'turkey, bacon, lettuce, tomato',
      price: 9.25,
      image:
          'https://upload.wikimedia.org/wikipedia/commons/4/4f/Club_sandwich.png',
      rating: (3 + Random().nextDouble() * (5 - 3)).toStringAsFixed(2),
      longDescription: '''
Savor the layered delight of our Pub Club sandwich. It's generously stacked with freshly sliced turkey, crispy bacon, refreshing lettuce, and ripe tomato slices to ensure every bite is a perfect blend of flavors. Whether you're stopping in for a quick bite or settling down for a meal, our Pub Club is sure to satisfy.

Allergen Information: This item may contain traces of nuts, dairy, and gluten. If you have any allergies, please inform our staff before ordering.

Bread Options: Choose from our freshly baked sourdough, whole wheat, or rye bread to make your sandwich just the way you like it.

Sides: Served with a choice of house pasta salad, green salad, or fresh fruit. For an additional 1.50, upgrade your side by substituting to a ½ pasta salad of the day, French onion soup, or our chef's soup of the day.

Pricing:

Half Sandwich: 7.95
Full Sandwich: 9.25
  '''),
  MenuItem(
      name: 'Rare Roast Beef & Swiss ',
      description: 'sweet-hot mustard, lettuce, red onion',
      price: 9.25,
      image:
          'https://images.food52.com/SN6KYEDjDHci9XeCY3-sOVg482A=/2016x1344/filters:format(webp)/2570fd3d-d52b-484d-8ffc-8e9ab2239f80--rare_roast_beef.JPG',
      rating: (3 + Random().nextDouble() * (5 - 3)).toStringAsFixed(2),
      longDescription: '''
Rare Roast Beef & Swiss Sandwich

Savor the tender slices of rare roast beef, paired impeccably with melted Swiss cheese. The zest of sweet-hot mustard adds a delightful kick, complemented by the freshness of crisp lettuce and the sharpness of thinly-sliced red onion. This sandwich is a harmony of flavors, textures, and temperatures.

Allergen Information: This sandwich contains gluten, dairy, and mustard. Please inform our staff if you have any allergies or dietary restrictions.

Bread Choices: Choose your base from our freshly baked sourdough, hearty whole wheat, or classic rye bread.

Sides: Your sandwich is served with a choice of house pasta salad, green salad, or fresh fruit. For an additional 1.50, elevate your meal by substituting to our ½ pasta salad of the day, rich French onion soup, or the soup of the day.

Pricing:

Half Sandwich: 7.95
Full Sandwich: 9.25
  '''),
  MenuItem(
      name: 'Veggie',
      description: 'pepper jack, avocado, sprout, tomato',
      price: 9.25,
      image:
          'https://n9r5z6y5.rocketcdn.me/wp-content/uploads/2014/09/ultimate-veggie-sandwich-updated-20.jpg',
      rating: (3 + Random().nextDouble() * (5 - 3)).toStringAsFixed(2),
      longDescription: '''
Loaded with pepper jack, creamy avocado, fresh sprouts, and ripe tomatoes. 
Prepared in an allergen-aware environment. (Please let us know if you have any specific allergies!)
Served with your choice of:
  - House pasta salad
  - Green salad
  - Fresh fruit

  For an additional \$1.50, upgrade by substituting to:
  - ½ pasta salad of the day
  - French onion soup 
  - Soup of the day

• Choose your bread:
  - Sourdough
  - Whole wheat
  - Rye

Pricing:
• Half sandwich: \$7.95
• Full sandwich: \$9.25
  '''),
  MenuItem(
      name: 'Southwest Chicken Breast',
      description:
          'Grilled Onion, Poblano Pepper, Tomato, Lettuce, Jack Cheese',
      price: 9.50,
      image:
          'https://thecozyapron.com/wp-content/uploads/2015/04/tequila-lime-chicken-burgers_04-03-2015_1_ca.jpg',
      rating: (3 + Random().nextDouble() * (5 - 3)).toStringAsFixed(2),
      longDescription: '''
Southwest Chicken Breast: Perfectly grilled chicken breast seasoned with Southwest spices, topped with grilled onions, roasted poblano peppers, fresh tomatoes, crisp lettuce, and melted jack cheese. Served on your choice of a whole wheat bun or a cheese & onion bun.
• Allergens: Contains wheat, dairy, and onion. Please inform us of any allergies or dietary restrictions.
• Served with your choice of:
  - House pasta salad
  - Green salad
  - Fresh fruit
  
  For an additional \$1.50, you can upgrade by substituting to:
  - ½ pasta salad of the day
  - French onion soup
  - Soup of the day.
• Price: \$9.50
  '''),
  MenuItem(
      name: 'Portobello',
      description:
          'Fresh Mozzarella Caramelized Onion, Roasted Pepper, Tomato, Field Greens, Basil Aioli',
      price: 9.50,
      image:
          'https://whitneybond.com/wp-content/uploads/2013/07/IMG_14081-e1374130235191-600x548.jpg',
      rating: (3 + Random().nextDouble() * (5 - 3)).toStringAsFixed(2),
      longDescription: '''
  Portobello Fresh Mozzarella Caramelized Onion Sandwich
  
- Roasted Pepper, Tomato, and Field Greens.
- Served with a luscious Basil Aioli.
- Allergen Information: Contains dairy (Mozzarella) and gluten. Please notify our staff of any food allergies.
- Preparation: Our sandwich ingredients are sourced fresh and the sandwich is prepared to order, ensuring a hot and delicious experience every time.

- Served with choice of:
  • House pasta salad
  • Green salad
  • Fresh fruit
  
- For an additional \$1.50, you can “upgrade” by substituting to:
  • ½ pasta salad of the day
  • French onion soup
  • Soup of the day
  
- Choice of bun:
  • Whole wheat 
  • Cheese & onion
  '''),
  MenuItem(
      name: 'Chipotle BBQ Pork Sandwich',
      description: 'with Pickled Jalapeño Slaw',
      price: 9.50,
      image:
          'https://butteryourbiscuit.com/wp-content/uploads/2016/03/slow-cooker-pulled-pork-sandwich-4-1595x2048.jpeg',
      rating: (3 + Random().nextDouble() * (5 - 3)).toStringAsFixed(2),
      longDescription: '''
- Tender pork, slow-cooked and smothered in a smoky chipotle BBQ sauce.
- Topped with a tangy pickled jalapeño slaw that adds the perfect kick of spice and crunch.
- Allergen Information: Contains gluten and dairy. Please notify our staff of any allergies or dietary restrictions.
- Preparation: Our sandwich is freshly prepared upon order, ensuring you receive the juiciest and most flavorful experience.

Served with choice of:
  • House pasta salad
  • Green salad
  • Fresh fruit
  
 For an additional \$1.50, you can "upgrade" (by substituting) to:
    • ½ pasta salad of the day
    • French onion soup
    • Soup of the day
Choice of bun:
  • Whole wheat
  • Cheese & onion bun
  '''),
  MenuItem(
      name: 'Bacon Burger',
      description: 'Swiss, Lettuce, Tomato',
      price: 9.25,
      image:
          'https://makeyourmeals.com/wp-content/uploads/2020/05/bacon-cheeseburger-featured.jpg.webp',
      rating: (3 + Random().nextDouble() * (5 - 3)).toStringAsFixed(2),
      longDescription: '''
Bacon Burger Sandwich:
• Swiss cheese, fresh lettuce, and ripe tomato.
• Carefully prepared to perfection ensuring a delightful bite each time.
⚠️ Allergen Information: Contains dairy (Swiss cheese) and gluten (bun).
• Served with your choice of:
  - House pasta salad
  - Green salad
  - Fresh fruit
  
• For an additional \$1.50, upgrade your side by substituting to:
  - ½ pasta salad of the day
  - French onion soup
  - Soup of the day
  
• Choice of bun:
  - Whole wheat
  - Cheese & onion
  '''),
  MenuItem(
      name: 'Mexi Burger',
      description: 'Pepper Relish, Pepper Jack, Tomato, Lettuce, Guacamole',
      price: 9.25,
      image:
          'https://simply-delicious-food.com/wp-content/uploads/2018/05/mexican-cheese-burgers-3.jpg',
      rating: (3 + Random().nextDouble() * (5 - 3)).toStringAsFixed(2),
      longDescription: '''
  - Mexi Burger: 
  - Topped with zesty Pepper Relish, spicy Pepper Jack cheese, fresh Tomato, crisp Lettuce, and creamy Guacamole.
  - Allergen Information: Contains dairy (from the Pepper Jack cheese) and might contain traces of nuts and gluten.
  - Prepared fresh upon order, ensuring a juicy and flavorful experience.
  
  - Served with:
    - Your choice of house pasta salad, green salad, or fresh fruit.
    - For an additional \$1.50, you can “upgrade” (by substituting) to ½ pasta salad of the day, French onion soup, or soup of the day.
  
  - Bun Options: 
    - Choice of whole wheat or cheese & onion bun. Kindly mention your preference while ordering.
  '''),
  MenuItem(
      name: 'Herb Marinated Top Sirloin',
      description:
          'Crimini Mushrooms, Caramelized Onion, Gorgonzola, Basil Aioli, Served Open Faced on Fococcia',
      price: 10.95,
      image:
          'https://live.staticflickr.com/9/8372/28991099440_e5330cf9d8_b.jpg',
      rating: (3 + Random().nextDouble() * (5 - 3)).toStringAsFixed(2),
      longDescription: '''
Herb Marinated Top Sirloin Sandwich:
• Prepared with our signature herb marinated top sirloin.
• Topped with crimini mushrooms, caramelized onion, and rich gorgonzola cheese.
• Enhanced with our homemade basil aioli.
• Served open-faced on freshly baked focaccia bread.
• Allergen Information: Contains wheat and dairy. Note: Our top sirloin is marinated with herbs that might not be suitable for all diets. Please inquire if you have specific dietary restrictions.
• Price: \$10.95

Serving Options:
• Served with a choice of house pasta salad, green salad, or fresh fruit.
• For an additional \$1.50, you can "upgrade" by substituting to ½ pasta salad of the day, French onion soup, or soup of the day.

Bun Choices:
• Available on whole wheat or cheese & onion bun.
  '''),
  MenuItem(
      name: 'Roast Beef',
      description:
          'with Ancho Au Jus Jack Cheese, Grilled Onions, Served on Crumb Bros. Baguette ',
      price: 9.75,
      image:
          'https://www.billyparisi.com/wp-content/uploads/2018/05/roast-beef-sammy-2.jpg',
      rating: (3 + Random().nextDouble() * (5 - 3)).toStringAsFixed(2),
      longDescription: '''
- Roast Beef with Ancho Au Jus: Tender slices of roast beef drizzled with a flavorful Ancho Au Jus. Topped with melted Jack cheese and sautéed grilled onions. Served on a freshly baked Crumb Bros. Baguette.
- Allergen Information: Contains gluten, dairy, and onions. Please inform your server if you have any allergies or dietary restrictions.
- Bread Choice: Opt for either a whole wheat or cheese & onion bun.
- Sides: Served with your choice of house pasta salad, green salad, or fresh fruit. 
- For an additional \$1.50, upgrade by substituting to ½ pasta salad of the day, French onion soup, or soup of the day.
  '''),
  MenuItem(
      name: 'Blackened Catfish ',
      description:
          'Creole Peppers & Onions, Fresh Herb Aioli, Served on house made Sourdough',
      price: 9.75,
      image:
          'https://whitneybond.com/wp-content/uploads/2013/07/IMG_14081-e1374130235191-600x548.jpg',
      rating: (3 + Random().nextDouble() * (5 - 3)).toStringAsFixed(2),
      longDescription: '''
Blackened Catfish Sandwich - \$9.75
   - Delicately blackened catfish adorned with Creole-inspired peppers and onions.
   - Smothered with a fresh herb aioli for a burst of herbal freshness.
   - Nestled between slices of our house-made sourdough bread, offering the perfect crunchy exterior with a soft middle.
   - Allergen information: Contains fish and gluten. Please inform our staff of any allergies or dietary restrictions.
   
   - Served with a choice of:
      - House pasta salad
      - Green salad
      - Fresh fruit
   
   - For an additional \$1.50, upgrade your side to:
      - ½ pasta salad of the day
      - French onion soup
      - Soup of the day
   - Choice of whole wheat or our signature cheese & onion bun.
  '''),
];

final soupCombo = [
  MenuItem(
      name: 'French Onion or Soup of the Day',
      description: '',
      price: 4.95,
      image:
          'https://www.simplyrecipes.com/thmb/XnP0u36O1-GWY46HP5gGjNZg1Oc=/750x0/filters:no_upscale():max_bytes(150000):strip_icc()/Simply-Recipes-French-Onion-Soup-LEAD-06-00d3b5bcdf4a4261b89e1be4aedf90f3.jpg',
      rating: (3 + Random().nextDouble() * (5 - 3)).toStringAsFixed(2),
      longDescription: '''
French Onion or Soup of the Day - \$4.95\n
Savor a classic French Onion soup, slow-cooked to perfection with caramelized onions in a hearty beef broth, topped with a melted cheese crust. Or, let our chef surprise you with the Soup of the Day, always made from fresh, seasonal ingredients.\n
• Contains dairy and gluten. Vegan or gluten-free options available upon request.\n
\n
French Onion or Soup of the Day Combos:\n
Pair your soup with our hand-curated side options to elevate your meal experience.\n
• With a crisp, small green salad, bursting with fresh veggies and our signature dressing, or indulge in a side of seasonal fresh fruit or our house-made pasta salad - \$7.25\n
• Upgrade to a larger portion with our half pasta of the day, cooked al dente and tossed in our chef's special sauce of the day - \$8.75\n
• Allergy Alert: Please inform our staff of any dietary restrictions or allergies. Vegan, vegetarian, and gluten-free modifications available.
  '''),
];

final fajitas = [
  MenuItem(
      name: 'Chicken Fajitas',
      description: 'Served with red rice, black beans, grilled tomato salad',
      price: 10.95,
      image:
          'https://cafedelites.com/wp-content/uploads/2018/01/Chicken-Fajitas-IMAGE-30.jpg',
      rating: (3 + Random().nextDouble() * (5 - 3)).toStringAsFixed(2),
      longDescription: '''
Chicken Fajitas: Succulent Chicken paired with a sizzling blend of Onions, Poblano, and Bell Peppers.
• Marinaded to perfection and grilled for that authentic charred flavor.
• Accompanied with creamy Guacamole and a duo of signature Salsas for a mix of spice and tang.
• Allergen information: Contains poultry. Please advise for any other allergen concerns.
• Note: Served with savory red rice, wholesome black beans, a refreshing grilled tomato salad, and your choice of corn or flour tortillas.

  '''),
  MenuItem(
      name: 'Sirloin Steak',
      description: 'Served with red rice, black beans, grilled tomato salad',
      price: 10.95,
      image:
          'https://reciperunner.com/wp-content/uploads/2020/01/Sheet-Pan-Steak-Fajitas-Photo-scaled.jpg',
      rating: (3 + Random().nextDouble() * (5 - 3)).toStringAsFixed(2),
      longDescription: '''
Marinated Sirloin Steak: Seared to perfection and paired with a medley of onions, poblano, bell peppers, and finely julienned carrots. The steak's succulent juices mingle with the vegetables, ensuring every bite is flavorful and juicy.
• Freshly Made Guacamole: Creamy, ripe avocados mashed to a smooth consistency, seasoned just right to complement the steak and veggies.
• Duo of Salsas: Choose between a tangy tomatillo green salsa and a robust, fiery red salsa – or better yet, have them both!
• Allergen Information: Please be aware that this dish may contain gluten, dairy, and nuts. Inform your server if you have any specific dietary requirements.
• Note: Each order of fajitas is served with red rice, black beans, and a vibrant grilled tomato salad. For the fajitas, choose between soft corn or flour tortillas to wrap up the perfect bite.

  '''),
];

final tacos = [
  MenuItem(
      name: 'Beer Battered Fish',
      description: 'with Jalapeño Remoulade, Roasted Salsa, Cabbage',
      price: 9.95,
      image:
          'https://images.themodernproper.com/billowy-turkey/production/posts/2015/Beer-Battered-Fish-Tacos-10.jpeg?w=1200&q=82&fm=jpg&fit=crop&dm=1627355249&s=59e369d877a74dec0564195f435950fc',
      rating: (3 + Random().nextDouble() * (5 - 3)).toStringAsFixed(2),
      longDescription: '''
Beer Battered Fish Tacos
Indulge in our crispy beer-battered fish tacos, paired perfectly with a spicy jalapeño remoulade. Each taco is topped with freshly chopped cabbage and our house-made roasted salsa, offering a burst of flavors in every bite. The fish is lightly fried to golden perfection, ensuring a crunch that complements the soft texture of the tortilla.

• Allergen Information: Contains fish, gluten (from beer batter), and dairy.
• Preparation: Fried in a kitchen that also processes nuts and shellfish.

Served with:
• Flavorful red rice
• Creamy black beans
• Fresh corn & romaine salad
• Crispy tortilla chips

Price: \$9.95
  '''),
  MenuItem(
      name: 'Carne Asada (marinated sirloin)',
      description: 'with Guacamole, Tomatillo Salsa',
      price: 9.95,
      image:
          'https://thefoodcharlatan.com/wp-content/uploads/2021/05/Carne-Asada-Made-with-Juicy-Skirt-Steak-13.jpg',
      rating: (3 + Random().nextDouble() * (5 - 3)).toStringAsFixed(2),
      longDescription: '''
Carne Asada Tacos:
Enjoy our tender sirloin marinated to perfection in a blend of authentic spices, grilled to deliver a flavorful experience in every bite. Accompanied by a rich guacamole and zesty tomatillo salsa. Every ingredient, meticulously chosen to evoke the vibrant spirit of traditional cuisine.

• Allergen Information: Contains meat. Please inquire about gluten or other allergens if concerned.
• Preparation: Sirloin is marinated for several hours to infuse flavors and then grilled to your liking.

Note: Served with a hearty portion of red rice, seasoned black beans, a fresh corn & romaine salad, and crisp tortilla chips. All for just \$9.95.
  '''),
  MenuItem(
      name: 'Citrus Marinated Chicken',
      description: 'with Guacamole, Tomatillo Salsa',
      price: 9.95,
      image:
          'https://msmarket.coop/wp-content/uploads/Coop-Basics-Taco-Photo-e1526934491104-850x478.jpeg',
      rating: (3 + Random().nextDouble() * (5 - 3)).toStringAsFixed(2),
      longDescription: '''
Indulge in the vibrant flavors of our Citrus Marinated Chicken Tacos. Each taco is filled with chicken that has been delicately marinated in a zesty citrus blend, then grilled to perfection ensuring a juicy, mouthwatering bite. Topped with our freshly prepared guacamole and a tangy tomatillo salsa, this dish tantalizes the taste buds with an array of textures and flavors.

• Allergen Information: Please be advised that this dish may contain traces of nuts, gluten, and dairy. Kindly let our staff know if you have any allergies or dietary restrictions.
• Preparation: Our chicken is responsibly sourced and marinated for a minimum of 12 hours to ensure full flavor infusion.
• Note: Served with red rice, black beans, corn & romaine salad, and tortilla chips. Priced at \$9.95.

Bon appétit!
  '''),
  MenuItem(
      name: 'Grilled Veggie',
      description:
          'with Zucchini, Yellow Squash, Bell Peppers, Onion, Guacamole, Tomatillo Salsa',
      price: 9.95,
      image:
          'https://plantbasedonabudget.com/wp-content/uploads/2014/01/cropped-Vegan-Roasted-Veggie-Tacos-Plant-Based-on-a-Budget-15.jpg',
      rating: (3 + Random().nextDouble() * (5 - 3)).toStringAsFixed(2),
      longDescription: '''
Grilled Veggie Tacos
Savor the medley of freshly grilled veggies: zucchini, yellow squash, bell peppers, and onions, tucked inside a soft taco shell. Accompanied by a rich guacamole and tangy tomatillo salsa to elevate each bite.
• Allergens: Contains gluten (from taco shells) and potential allergens from cross-contamination. Please inform our staff if you have specific allergies or dietary restrictions.
• Preparation: Our veggies are seasoned and grilled to perfection, ensuring a delightful charred flavor that complements the creaminess of our house-made guacamole. The tomatillo salsa adds a refreshing zing, completing this vegetarian delight.
• Served with: A hearty side of red rice, wholesome black beans, corn & romaine salad, and crispy tortilla chips.
• Price: \$9.95
  '''),
];

final enchiladas = [
  MenuItem(
      name: 'Enchiladas',
      description: 'Southwestern Succotash, Black Beans with Chipotle Crema',
      price: 9.95,
      image:
          'https://www.sargento.com/assets/Uploads/Recipe/Image/enchilada__FillWzExNzAsNTgzXQ.jpg',
      rating: (3 + Random().nextDouble() * (5 - 3)).toStringAsFixed(2),
      longDescription: '''
  ENCHILADAS
A delightful fusion of traditional flavors and culinary craftsmanship. Our enchiladas are meticulously prepared with fresh ingredients and layered with our secret sauce, ensuring every bite is an experience. Served with a side of Southwestern Succotash and flavorful Black Beans, topped off with a smooth Chipotle Crema. Customers can tailor their enchilada experience with a choice of savory Beef, succulent Chicken, classic Cheese, or a hearty Veggie filling.

Allergen Information: Please be advised that this dish may contain dairy, gluten, and traces of nuts. Always inform our staff of any allergies before ordering.

• Choice of fillings: Beef, Chicken, Cheese, or Veggie

• Served with:

Southwestern Succotash
Black Beans with Chipotle Crema
Pricing Options:

Uno: \$8.50
Dos: \$9.95
Tres: \$11.50
  '''),
  MenuItem(
      name: 'Chili Relleno Stuffed',
      description:
          'with Jack Cheese & Corn Glazed Yam, Chayote Squash Succotash, Red Chili ',
      price: 9.95,
      image:
          'https://keviniscooking.com/wp-content/uploads/2022/01/Chili-Relleno-19.jpg',
      rating: (3 + Random().nextDouble() * (5 - 3)).toStringAsFixed(2),
      longDescription: '''
Chili Relleno
Dive into a rich culinary experience with our Chili Relleno. It's packed with Jack Cheese & Corn and paired with Glazed Yam. The Chayote Squash Succotash on the side complements the dish, while the Red Chili Sauce drizzled on top is the cherry on the cake. Price: \$9.95.
'''),
  MenuItem(
      name: 'Pepita Crusted Salmon',
      description:
          'with Chipotle Glaze – chevre whipped yams, jicama slaw, tomatillo sauce',
      price: 10.95,
      image:
          'https://thefitfork.com/wp-content/uploads/2016/05/Pepita-Crusted-Salmon-Calabacitas-plated.jpg',
      rating: (3 + Random().nextDouble() * (5 - 3)).toStringAsFixed(2),
      longDescription: '''
Pepita Crusted Salmon with Chipotle Glaze – A sumptuously seasoned salmon crusted with toasted pepita seeds and lavished with a smoky chipotle glaze. This dish showcases a side of velvety chevre whipped yams, giving a hint of creaminess, paired with a refreshing jicama slaw, adding a crisp and light texture to the palette. Drizzled atop is a vibrant tomatillo sauce, presenting a tangy zest to tie the dish together.

• Allergen Information: Contains dairy (from chevre) and seeds (from pepitas). Please advise our staff of any allergies before ordering.

• Preparation: Our salmon is pan-seared to perfection, ensuring a golden crust, yet maintaining a tender and flaky interior.

• Served alongside Southwestern Succotash, hearty Black Beans accented with a smoky Chipotle Crema. Diners can opt for their desired protein to accompany: Choice of Beef, Chicken, Cheese, or a Veggie alternative.
  '''),
];

final quiche = [
  MenuItem(
      name: 'Quiche',
      description:
          'Bacon, Swiss, Mushroom, Zucchini and Mushroom Quiche Choice of Fresh Fruit or Green Salad ',
      price: 8.95,
      image:
          'https://www.feastingathome.com/wp-content/uploads/2022/04/quiche-recipe-26-1024x1536.jpg',
      rating: (3 + Random().nextDouble() * (5 - 3)).toStringAsFixed(2),
      longDescription: '''
Bacon, Swiss, Mushroom, Zucchini, and Mushroom Quiche - 8.95
• Lovingly baked to perfection, our quiche boasts a flaky crust filled with a delectable blend of bacon, Swiss cheese, earthy mushrooms, and tender zucchini.
• Prepared in-house using only the freshest ingredients for a taste that truly delights.
• Accompanied by your choice of vibrant fresh fruit or a refreshing green salad to complete the meal.
• Please note: Contains dairy, eggs, and gluten. Inform your server of any allergies or dietary requirements.
'''),
];
