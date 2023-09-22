import 'package:flutter/material.dart';
import 'dummy_data.dart';

class FoodDetail extends StatefulWidget {
  const FoodDetail({super.key, required this.iteminfo, required this.arrNum});

  final Meal iteminfo;
  final int arrNum;

  @override
  State<FoodDetail> createState() => _FoodDetailState();
}

class _FoodDetailState extends State<FoodDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 46, 46, 46),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 37, 37, 37),
        foregroundColor: Colors.white,
        title: Text(widget.iteminfo.title),
        actions: [
          IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
                final snackBar = SnackBar(
                  content: (dummyMeals[widget.arrNum].isFavorite ?? false)
                      ? Text('Meal no longer in favs')
                      : Text('Added to favs'),
                  action: SnackBarAction(
                    label: 'Cerrar',
                    onPressed: () {},
                  ),
                );

                ScaffoldMessenger.of(context).showSnackBar(snackBar);

                setState(() {
                  dummyMeals[widget.arrNum].isFavorite =
                      !dummyMeals[widget.arrNum].isFavorite;
                });
              },
              //icon: Icon(Icons.abc))
              icon: (dummyMeals[widget.arrNum].isFavorite ?? false)
                  ? Icon(Icons.star)
                  : Icon(Icons.star_border))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(widget.iteminfo.imageUrl),
                      fit: BoxFit.fill)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Ingredients',
                style: TextStyle(color: Colors.orange, fontSize: 23),
              ),
            ),
            Column(
              children: widget.iteminfo.ingredients
                  .map((e) => Text(
                        e,
                        style: TextStyle(color: Colors.white),
                      ))
                  .toList(),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Steps',
                style: TextStyle(color: Colors.orange, fontSize: 23),
              ),
            ),
            Column(
              children: widget.iteminfo.steps
                  .map((e) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Text(
                          e,
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                      ))
                  .toList(),
            )
          ],
        ),
      ),
    );
  }
}
