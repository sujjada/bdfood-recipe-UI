import 'package:bdfoods/screens/bread/bread.dart';
import 'package:bdfoods/screens/desert/desert.dart';
import 'package:bdfoods/screens/fast_food/fast_food.dart';
import 'package:bdfoods/screens/non_veg/non_veg.dart';
import 'package:bdfoods/screens/rice/rice.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text("BD FOOD RECIPE"),
          centerTitle: true,
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.favorite))],
        ),
        drawer: Drawer(),
        body: Column(
          children: [
            TabBar(
                unselectedLabelColor: Colors.redAccent,
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.redAccent, Colors.orangeAccent]),
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.redAccent),
                tabs: [
                  Tab(
                    child: Text("Rice"),
                  ),
                  Tab(
                    child: Text("Bread"),
                  ),
                  Tab(
                    child: Text("Desert"),
                  ),
                  Tab(
                    child: Text("Fast-food"),
                  ),
                  Tab(
                    child: Text("Non-veg"),
                  ),
                ]),
            Expanded(
              child: TabBarView(children: [
                RiceScreen(),
                BreadScreen(),
                DesertScreen(),
                FastFoodScreen(),
                NonVegScreen(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
