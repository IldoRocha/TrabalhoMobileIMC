import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;
  String _name = '';
  final _inputController = TextEditingController();

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _cleanCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('$_name'),
            SizedBox(
              height: 16,
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.blue)
                    ),
                    onPressed: _decrementCounter,
                    child: const Icon(Icons.remove)
                ),
                SizedBox(
                  width: 22,
                ),
                TextButton(
                    style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.white)
                    ),
                    onPressed: _cleanCounter,
                    child: const Text('Clean')
                ),
                SizedBox(
                  width: 22,
                ),
                TextButton(
                    style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.blue)
                    ),
                    onPressed: _incrementCounter,
                    child: const Icon(Icons.add)
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}