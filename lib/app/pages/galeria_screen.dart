import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Galeria extends StatefulWidget {
  const Galeria({Key? key}) : super(key: key);

  @override
  State<Galeria> createState() => _GaleriaState();
}

class _GaleriaState extends State<Galeria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vagner Kugelmeier Tondello"),
      ),
      body: Center(
          child: Column(
          children: [
          Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUPXXGWfZUowL1JGcOFe1hC3S5k0eE1tkytq0oTOLEsBUoKnl-UQAaEV_O32WmQ1HOdkw&usqp=CAU'),
          Image.network("https://pbs.twimg.com/profile_images/1666835410/antedeguemon_400x400.png")
          ]
          ),
      ),
    );
  }
}