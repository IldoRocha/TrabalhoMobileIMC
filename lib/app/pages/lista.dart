import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class lista extends StatefulWidget {
  const lista({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<lista> createState() => _ListaState();
}

class _ListaState extends State<lista> {
  final _InputPeso = TextEditingController();
  final _InputAltura = TextEditingController();
  List<String> _ListaIMC = [];
  double imc = 0;
  String info = '';

  void ListarIMC(){
    _ListaIMC.add(info);
  }

  void Calcular(String Peso, String Altura) {
    setState(() {
      double peso = double.parse(Peso);
      double altura = double.parse(Altura);
      imc = peso / (altura * altura);

      if(imc < 18.6){
        info = 'Abaixo do Peso (${imc.toStringAsPrecision(3)})';
      } else if(imc >= 18.6 && imc < 24.9){
        info = 'Peso Ideal (${imc.toStringAsPrecision(3)})';
      } else if(imc >= 24.9 && imc < 29.9){
        info = 'Levemente Acima do Peso (${imc.toStringAsPrecision(3)})';
      } else if(imc >= 29.9 && imc < 34.9){
        info = 'Obesidade Grau I (${imc.toStringAsPrecision(3)})';
      } else if(imc >= 34.9 && imc < 39.9){
        info = 'Obesidade Grau II (${imc.toStringAsPrecision(3)})';
      } else if(imc >= 40){
        info = 'Obesidade Grau III (${imc.toStringAsPrecision(3)})';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset('a.png'),
                  const Text(
                    'Peso (kg):',
                     style: TextStyle(color: Colors.blue),
                     textAlign: TextAlign.left,
                  ),
                  TextField(
                    textAlign: TextAlign.center,
                    controller: _InputPeso,
                  ),
                  const Text(
                    'Altura (cm):',
                     style: TextStyle(color: Colors.blue)
                  ),
                  TextField(
                    textAlign: TextAlign.center,
                    controller: _InputAltura,
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.blue,
                    ),
                    onPressed: () {
                      Calcular(_InputPeso.text, _InputAltura.text);
                      _InputPeso.text = '';
                      ListarIMC();
                    },
                    child: Text('Calcular'),
                  ),
                  const Text(
                    'Informe seus dados!',
                     style: TextStyle(color: Colors.blue)
                  ),
                  Text(
                    '$info'
                  ),
                  ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: _ListaIMC.length ,
                    itemBuilder: (context, index) {
                      return  ListTile(
                        title: Text(_ListaIMC[index].toString()),
                      );
                    },
                  )

                ]
            )
        )
    );
  }
}