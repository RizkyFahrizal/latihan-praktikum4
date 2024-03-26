import 'package:flutter/material.dart';
import 'package:flutter_application_4/recipe.dart'; // Assuming recipe.dart defines Recipe class
import 'recipe_detail.dart';

void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({Key? key}) : super(key: key);

  static const MaterialColor white = MaterialColor(
    0xFFFFFFFF,
    <int, Color>{
      50: Color(0xFFFFFFFF),
      100: Color(0xFFFFFFFF),
      200: Color(0xFFFFFFFF),
      300: Color(0xFFFFFFFF),
      400: Color(0xFFFFFFFF),
      500: Color(0xFFFFFFFF),
      600: Color(0xFFFFFFFF),
      700: Color(0xFFFFFFFF),
      800: Color(0xFFFFFFFF),
      900: Color(0xFFFFFFFF),
    },
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe Calculator',
      theme: ThemeData(
        primarySwatch: white,
      ),
      home: const MyHomePage(title: 'Recipe Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required String title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.orange,
          title: Text('Resep Makanan Tradisional Indonesia'),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0), // Adjust padding as needed
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, // 3 cards per row
                crossAxisSpacing: 10, // Adjust spacing as needed
                mainAxisSpacing: 10, // Adjust spacing as needed
              ),
              itemCount: Recipe.samples.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return RecipeDetail(recipe: Recipe.samples[index]);
                        },
                      ),
                    );
                  },
                  child: buildRecipeCard(Recipe.samples[index]),
                );
              },
            ),
          ),
        ));
  }
}

Widget buildRecipeCard(Recipe recipe) {
  return Card(
    elevation: 2.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    color: Colors.orange,
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Image.asset(recipe.imgUrl), // Assuming imgUrl is a local asset path
          const SizedBox(height: 14.0),
          Text(
            recipe.label,
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
              color: Colors.white,
              fontFamily:
                  'Palatino', // Assuming you want a specific font family
            ),
          ),
        ],
      ),
    ),
  );
}
