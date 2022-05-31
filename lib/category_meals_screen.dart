// ignore_for_file: avoid_print, sized_box_for_whitespace, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_application_6/components/custom_text_field.dart';
import '../dummy_data.dart';
import '../models/meal.dart';
//import '../services/theme.dart';
import '../widgets/meal_item.dart';

class CategoryMealsScreen extends StatefulWidget {
  static const routeName = 'category_meals';

  const CategoryMealsScreen({Key? key}) : super(key: key);

  @override
  _CategoryMealsScreenState createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {
//  String categoryTitle;
  late List<Meal> categoryMeals;

  // void removeMeal(String mealId) {
  //   setState(() {
  //     categoryMeals.removeWhere((meal) => meal.name == mealId);
  //   });
  // }

//   @override
//   void didChangeDependencies() {
//     final routArg = ModalRoute.of(context)!.settings.arguments as String;
// //    final categoryId = routArg['name'];
// //    categoryTitle = routArg['title'];
//     categoryMeals = DUMMY_MEALS.where((meal) {
//       return meal.categories.contains(routArg);
//     }).toList();
//     super.didChangeDependencies();
//   }

  @override
  Widget build(BuildContext context) {
    categoryMeals = DUMMY_MEALS.toList();
    return Scaffold(
//      backgroundColor: purpleColor,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('QUESTIONS'),
        leading: const BackButtonIcon(),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            width: 70,
            height: 70,
            child: RaisedButton(
              color: Colors.cyanAccent,
              child: const Text('+',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  )),
              onPressed: () {},
            ),
          ),
          const Text(
            'ADD YOUR QUESTION',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 30,
            ),
          ),
          CustomTextField(
            hint: 'SEARCH',
            icon: Icons.search,
            errVal: 'errVal',
            onClick: () {},
          ),
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              itemBuilder: (ctx, index) {
                return InkWell(
                  onTap: () {
          //              print('assets/audio/${index + 1}.ogg');
          //              playMusic(pathAudio: 'assets/audio/${index + 1}.ogg');
          //              VideoScreen.url = categoryMeals[index].name;
          //              Navigator.of(context).pushNamed(VideoScreen.routeName);
                  },
                  child: MealItem(
                    name: categoryMeals[index].name,
                    imageURL: 'assets/images/belady_job_${index + 1}.jpg',
                    title: categoryMeals[index].title,
                    nLike: categoryMeals[index].nLike,
                    nComment: categoryMeals[index].nComment,
                  ),
                );
              },
              itemCount: categoryMeals.length,
            ),
          ),
        ],
      ),
    );
  }
}
//
