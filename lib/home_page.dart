import 'package:flutter/material.dart';
import 'calculadora.dart';
import 'resultado_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora de Soma'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration:
                  InputDecoration(labelText: 'Digite um número inteiro'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultadoPage(
                      resultado: Calculadora.calculo(_controller.text),
                    ),
                  ),
                );
              },
              child: Text('Calcular'),
            ),
          ],
        ),
      ),
    );
  }
}
