import 'package:flutter/material.dart';

class ItemActividad extends StatelessWidget {
  ItemActividad(this.diaNumber, this.nombreLugar, this.imagen, {super.key});

  final int diaNumber;
  final String nombreLugar;
  final String imagen;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                    image: AssetImage(imagen), fit: BoxFit.fill),
                borderRadius: BorderRadius.all(Radius.circular(10))),
          ),
          Text("Day " '$diaNumber', style: TextStyle(fontSize: 11)),
          Text(nombreLugar),
        ],
      ),
    );
  }
}
