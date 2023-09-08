import 'package:flutter/material.dart';
import 'info_lugar.dart';
import 'item_actividad.dart';

class HomePage extends StatelessWidget {
  HomePage({
    Key? key,
  }) : super(key: key);

  final List<String> titulos = [
    'Hawaii',
    'MachuPichu',
    'Piramides',
    'Louvre',
    'Cancun'
  ];
  final List<String> imagenes = [
    'assets/img1.jpg',
    'assets/img2.jpg',
    'assets/img3.jpg',
    'assets/img4.jpg',
    'assets/img5.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reserva tu hotel'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            fit: StackFit.expand,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  //EL CONTAINER QUE SE TIENE QUE CAMBIAR POR LA imagen
                  //height: 150,
                  height: MediaQuery.of(context).size.height / 4,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(
                          image: AssetImage('assets/mainImg.jpg'),
                          fit: BoxFit.fill),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
              ),
              // para poder poner column o listview en stack hay que encerrarlas en positioned y anclarla a todos lados
              Positioned(
                top: 64,
                bottom: 0,
                left: 0,
                right: 0,
                child: ListView(
                  children: [
                    InfoLugar(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("Details"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            foregroundColor: Colors.grey[200],
                          ),
                        ),
                        Text("Walkthrough Flight Detail"),
                      ],
                    ),
                    Container(
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) {
                          return ItemActividad(
                              (index + 1), titulos[index], imagenes[index]);
                        },
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                        final snackBar = SnackBar(
                          content: const Text('Reservación en progreso'),
                          action: SnackBarAction(
                            label: 'Cancelar',
                            onPressed: () {
                              // Some code to undo the change.
                            },
                          ),
                        );

                        // Find the ScaffoldMessenger in the widget tree
                        // and use it to show a SnackBar.
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      },
                      child: Text(
                        "Start booking",
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
