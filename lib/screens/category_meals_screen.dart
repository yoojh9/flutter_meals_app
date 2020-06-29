import 'package:flutter/material.dart';
import '../widgets/meal_item.dart';
import '../dummy_data.dart';
import '../models/meal.dart';

class CategoryMealsScreen extends StatefulWidget {
  static const routeName = '/category-meals';

  @override
  _CategoryMealsScreenState createState() => _CategoryMealsScreenState();
}


class _CategoryMealsScreenState extends State<CategoryMealsScreen> {

  String categoryTitle;
  List<Meal> displayedMeals;
  var _loadedInitData = false;


  // initState는 Widget이 create 되기 전에 호출되며, 때문에 widget의 context를 가지기 전에 호출됨
  // context를 사용할 경우 didChangeDependencies()를 사용하라
  @override
  void initState() {


    super.initState();
  }

  // This method is also called immediately after [initState].
  @override
  void didChangeDependencies() {
    if(!_loadedInitData) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;

    categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];

    displayedMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();

    _loadedInitData = true;
  }

    super.didChangeDependencies();
  }

  void _removeMeal(String mealId){
    setState(() {
      displayedMeals.removeWhere((meal) => meal.id == mealId);
    });
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(title: Text(categoryTitle)),
      body: ListView.builder(
          itemBuilder: (ctx, index) {
            return MealItem( 
                displayedMeals[index].id,
                displayedMeals[index].title,
                displayedMeals[index].imageUrl,
                displayedMeals[index].duration,
                displayedMeals[index].complexity,
                displayedMeals[index].affordability,
                _removeMeal);
          },
          itemCount: displayedMeals.length),
    );
  }
}
