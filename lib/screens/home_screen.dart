import 'package:flutter/material.dart';
import 'package:recipe_app/model/recipe.dart';
import 'package:recipe_app/screens/details_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final stars = List.generate(
    5,
    (index) => const Icon(
      Icons.star,
      color: Colors.orange,
      size: 16,
    ),
  );

  List<Recipe> recipes = [
    Recipe(
        name: 'Asian Glazed Chicken Thighs',
        price: '190',
        image: 'assets/images/food1.jpg',
        tags: true,
        index: 1,
        ingredients: [
          '- ½ cup rice vinegar',
          '- ⅓ cup soy sauce (such as Silver Swan)',
          '- 5 tablespoons honey',
          '- ¼ cup Asian (toasted) sesame oil',
          '- 3 tablespoons Asian chili garlic sauce',
          '- 3 tablespoons minced garlic',
          '- salt to taste',
          '- 8 skinless, boneless chicken thighs',
          '- 1 tablespoon chopped green onion (Optional)',
        ],
        calories: '120 Calories',
        cookingTime: '30 mins',
        servings: '10 Servings',
        description:
            'These Asian chicken thighs are slightly spicy but the sweetness tames the heat. Delicious served with rice.'),
    Recipe(
        name: 'Blueberry Muffins',
        image: 'assets/images/food2.jpg',
        tags: true,
        index: 2,
        ingredients: [
          '- 1 cup white sugar',
          '- ½ cup butter, softened',
          '- 2 large eggs',
          '- 2 tablespoons vegetable oil',
          '- 1 cup sour cream',
          '- ½ cup milk',
          '- 1 tablespoon grated lemon zest',
          '- 3 cups all-purpose flour',
          '- 1 tablespoon baking powder',
          '- ½ teaspoon baking soda',
          '- ¾ teaspoon salt',
          '- 2 cups fresh blueberries',
        ],
        calories: '254 Calories',
        cookingTime: '25 mins',
        servings: '16 Servings',
        price: '140.25',
        description:
            'This is our favorite blueberry muffins recipe! They are extra buttery, soft, and moist. For that bakery style goodness, top with cinnamon brown sugar streusel. Prepared with basic ingredients and a couple mixing bowls, you will appreciate this easy breakfast recipe.'),
    Recipe(
      name: 'Cocktail Meatballs',
      image: 'assets/images/food3.jpg',
      index: 3,
      tags: false,
      servings: '10 Servings',
      price: '240.50',
      calories: '193 Calories',
      cookingTime: '1 hr 20 mins',
      description:
          'These tasty cocktail meatballs will disappear quickly at your holiday party. My mom makes them every year for New Years Eve, and now so do I. These do very well in a slow cooker, as you can simmer them before serving and keep them hot for the duration of your party.',
      ingredients: [
        '- 1 pound lean ground beef',
        '- ½ cup bread crumbs',
        '- 3 tablespoons minced onion',
        '- 2 tablespoons water',
        '- 1 large egg',
        '- 1 (8 ounce) can jellied cranberry sauce',
        '- ¾ cup chili sauce',
        '- 1 tablespoon brown sugar',
        '- 1 ½ teaspoons lemon juice',
      ],
    ),
    Recipe(
      name: 'Fluffy Pancakes',
      image: 'assets/images/food4.jpg',
      index: 4,
      price: '210.35',
      tags: true,
      servings: '4 Servings',
      cookingTime: '10 mins',
      calories: '193 Calories',
      description:
          'Need a fluffy pancake recipe? This one is just right, especially when there is plenty of butter and syrup. Make it extra special with berries and cream',
      ingredients: [
        '- ¾ cup milk',
        '- 2 tablespoons white vinegar',
        '- 1 cup all-purpose flour',
        '- 2 tablespoons white sugar',
        '- 1 teaspoon baking powder',
        '- ½ teaspoon baking soda',
        '- ½ teaspoon salt',
        '- 1 egg',
        '- 2 tablespoons butter, melted',
        '- cooking spray',
      ],
    ),
  ];

  bool tag = false;

  List freshList = [
    {'image': 'assets/images/food1.jpg', 'name': 'Asian Glazed Chicken Thighs'},
    {'image': 'assets/images/food2.jpg', 'name': 'Blueberry Muffins'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(
            top: 64,
            left: 16,
            right: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: const Icon(
                      Icons.menu,
                    ),
                  ),
                  GestureDetector(
                    child: const Icon(
                      Icons.notifications_none,
                    ),
                  ),
                ], //appbar widgets
              ),
              const SizedBox(
                height: 14,
              ),

              //starting body UI
              const Text(
                'Welcome Aabush',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  fontWeight: FontWeight.normal,
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              const Text(
                'What would you wanna eat today?',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 14,
              ),

              // search box parameters
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 6,
                        horizontal: 8,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(
                          14,
                        ),
                      ),
                      child: const TextField(
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.search,
                              size: 28,
                              color: Colors.grey,
                            ),
                            hintText: 'Search for any recipes',
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                            )),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 14,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 6,
                        horizontal: 8,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(
                          14,
                        ),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.settings,
                        ),
                      ),
                    ),
                  ),
                ],
                // done search bar and settings icon
              ),
              const SizedBox(
                height: 14,
              ),

              //Fresh Recipes
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Hot Recipes for today',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print('See All');
                    },
                    child: const Text(
                      'See All',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 14,
              ),

              //fresh recipe shower
              Container(
                height: 240,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: freshList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => DetailsScreen(
                              recipe: recipes[index],
                            ),
                          ),
                        );
                      },
                      child: Container(
                        height: 240,
                        width: 200,
                        margin: const EdgeInsets.only(
                          right: 30,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(
                            18,
                          ),
                        ),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            const Positioned(
                              top: 16,
                              left: 16,
                              child: Icon(
                                Icons.favorite_border,
                                color: Colors.grey,
                              ),
                            ),
                            Positioned(
                              top: 10,
                              right: 10,
                              child: Hero(
                                tag: 'fresh$index',
                                child: Image.asset(
                                  freshList[index]['image'],
                                  scale: 13,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 110,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Breakfast',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.lightBlue,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Container(
                                      width: 180,
                                      child: Text(
                                        recipes[index].name,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Row(
                                      children: [
                                        ...stars,
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 6,
                                    ),
                                    Text(
                                      recipes[index].calories,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.orange,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Row(
                                      children: [
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.access_time,
                                              color: Colors.grey,
                                              size: 14,
                                            ),
                                            const SizedBox(
                                              width: 8,
                                            ),
                                            Text(
                                              recipes[index].cookingTime,
                                              style: const TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          width: 30,
                                        ),
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.ring_volume,
                                              color: Colors.grey,
                                              size: 14,
                                            ),
                                            const SizedBox(
                                              width: 8,
                                            ),
                                            Text(
                                              recipes[index].servings,
                                              style: const TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              // done fresh recipe

              const SizedBox(
                height: 16,
              ),

              //recommended list show
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Recommended',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print('See All Recommended');
                    },
                    child: const Text(
                      'See All',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              ListView.builder(
                itemCount: recipes.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                            recipe: recipes[index],
                          ),
                        ),
                      );
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 120,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 12,
                      ),
                      margin: const EdgeInsets.only(
                        bottom: 16,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Hero(
                            tag: recipes[index].index,
                            child: Image.asset(
                              recipes[index].image,
                              height: 150,
                              width: 100,
                              fit: BoxFit.contain,
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Breakfast',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.lightBlue,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    recipes[index].name,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 6,
                                  ),
                                  Row(
                                    children: [
                                      Row(
                                        children: [
                                          ...stars,
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        recipes[index].calories,
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.orange,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 6,
                                  ),
                                  Row(
                                    children: [
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.access_time,
                                            color: Colors.grey,
                                            size: 14,
                                          ),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          Text(
                                            recipes[index].cookingTime,
                                            style: const TextStyle(
                                              fontSize: 12,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 30,
                                      ),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.ring_volume,
                                            color: Colors.grey,
                                            size: 14,
                                          ),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          Text(
                                            recipes[index].servings,
                                            style: const TextStyle(
                                              fontSize: 12,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              height: 28,
                              width: 36,
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.favorite_border,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
