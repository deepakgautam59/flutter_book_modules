import 'package:flutter/material.dart';
import 'package:recipes/screens/data_model/recipe.dart';
import 'package:recipes/screens/recipe_detail.dart';


class MyRecipe extends StatefulWidget {
  const MyRecipe({super.key});

  @override
  State<MyRecipe> createState() => _MyRecipeState();
}

class _MyRecipeState extends State<MyRecipe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Recipe Calculator"),
      ),
      body: SafeArea(
        child: Container(
child: ListView.builder(
  itemCount: Recipe.samples.length,
  itemBuilder: (context, int index) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context,
        MaterialPageRoute(
          builder: (context){
            return RecipeDetail(recipe:Recipe.samples[index]);
        
          }
        ) 
        );

      },
      child: buildRecipeCard(Recipe.samples[index]),

    );
  },
),
        ),
      ),
    );
  }
  Widget buildRecipeCard(Recipe recipe){
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0)
      ),
      child: Padding(

        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Image(image: AssetImage(recipe.imageUrl)),
            const SizedBox(height: 14,),
            Text(recipe.label,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              fontFamily: 'platino',

            ),
            ),
          ],
        ),
      ),
    );
  }
}