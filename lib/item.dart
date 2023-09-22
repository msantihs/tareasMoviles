import 'package:flutter/material.dart';
import 'dummy_data.dart';
import 'details.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.iteminfo, required this.arrNumber});

  final Meal iteminfo;
  final int arrNumber;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.all(10),
        child: Stack(children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(
                image: AssetImage(iteminfo.imageUrl),
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width,
              )),
          Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              height: 60,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(.7),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        iteminfo.title,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.timer,
                            color: Colors.white,
                          ),
                          Text(iteminfo.duration.toString(),
                              style: TextStyle(color: Colors.white)),
                          Text(
                            ' mins',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.work, color: Colors.white),
                          Text(iteminfo.complexity,
                              style: TextStyle(color: Colors.white))
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.attach_money_outlined,
                              color: Colors.white),
                          Text(iteminfo.affordability,
                              style: TextStyle(color: Colors.white))
                        ],
                      )
                    ],
                  )
                ]),
              )),
          //Text(arrNumber.toString())
        ]),
      ),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => FoodDetail(
                      iteminfo: iteminfo,
                      arrNum: arrNumber,
                    )));
      },
    );
  }
}
