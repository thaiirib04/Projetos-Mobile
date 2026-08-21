import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  //controllers
  final TextEditingController _n1Controller = TextEditingController();
  final TextEditingController _n2Controller = TextEditingController();
  final TextEditingController _resultController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appbar
        appBar: AppBar(
          title: Text("Mini Calculadora"),
          backgroundColor: Colors.green,
        ),

        // body
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: [
              // campo: valor A
              TextField(
                controller: _n1Controller,
                decoration: InputDecoration(
                  labelText: 'Informe valor A',
                  prefixIcon: Icon(Icons.numbers),
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),

              // espaçamento entre os campos
              SizedBox(height: 16),

              //campo: valor B
              TextField(
                controller: _n2Controller,
                decoration: InputDecoration(
                  labelText: 'Informe valor B',
                  prefixIcon: Icon(Icons.numbers),
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),

              // espaçamento entre campos
              SizedBox(height: 16),

              Row(
                children: [
                  // botão de soma
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        print(
                          "Valores informados: \n n1: ${_n1Controller.text} n2: ${_n2Controller.text}",
                        );

                        //devemos tratar os numeros antes de realizar operação

                        String n1Tratado = _n1Controller.text.replaceAll(
                          ',',
                          '.',
                        );
                        String n2Tratado = _n2Controller.text.replaceAll(
                          ',',
                          '.',
                        );
                        try {
                          double resultado =
                              double.parse(n1Tratado) + double.parse(n2Tratado);

                          print("Resultado: ${resultado}");

                          _resultController.text = resultado.toString();
                        } catch (e) {
                          _resultController.text = "Error!";
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 15),
                      ),
                      child: Text('Soma'),
                    ),
                  ),
                  SizedBox(width: 10),
                  //botão de subtração
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        String n1Tratado = _n1Controller.text.replaceAll(
                          ',',
                          '.',
                        );
                        String n2Tratado = _n2Controller.text.replaceAll(
                          ',',
                          '.',
                        );

                        try {
                          double resultado =
                              double.parse(n1Tratado) - double.parse(n2Tratado);

                          _resultController.text = resultado.toString();
                        } catch (e) {
                          _resultController.text = "Error!";
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 15),
                      ),
                      child: Text('Subtração'),
                    ),
                  ),
                  SizedBox(width: 10),
                  //botão de multiplicação
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        String n1Tratado = _n1Controller.text.replaceAll(
                          ',',
                          '.',
                        );
                        String n2Tratado = _n2Controller.text.replaceAll(
                          ',',
                          '.',
                        );

                        try {
                          double resultado =
                              double.parse(n1Tratado) * double.parse(n2Tratado);

                          _resultController.text = resultado.toString();
                        } catch (e) {
                          _resultController.text = "Erro!";
                        }
                      },
                      child: Text("Multiplicação"),
                    ),
                  ),
                  SizedBox(width: 10),
                  //botão de divisão
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        String n1Tratado = _n1Controller.text.replaceAll(
                          ',',
                          '.',
                        );
                        String n2Tratado = _n2Controller.text.replaceAll(
                          ',',
                          '.',
                        );

                        try {
                          double n1 = double.parse(n1Tratado);
                          double n2 = double.parse(n2Tratado);

                          if (n2 == 0) {
                            _resultController.text =
                                "Não é possível dividir por zero";
                            return;
                          }

                          double resultado = n1 / n2;

                          _resultController.text = resultado.toString();
                        } catch (e) {
                          _resultController.text = "Erro!";
                        }
                      },
                      child: Text("Divisão"),
                    ),
                  ),
                  SizedBox(width: 10),
                  //exponenciação
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        String n1Tratado = _n1Controller.text.replaceAll(
                          ',',
                          '.',
                        );
                        String n2Tratado = _n2Controller.text.replaceAll(
                          ',',
                          '.',
                        );

                        try {
                          double n1 = double.parse(n1Tratado);
                          double n2 = double.parse(n2Tratado);

                          double resultado = pow(n1, n2).toDouble();

                          _resultController.text = resultado.toString();
                        } catch (e) {
                          _resultController.text = "Erro!";
                        }
                      },
                      child: Text("Potência"),
                    ),
                  ),
                  SizedBox(width: 10),
                  //botão raiz quadrada
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        String n1Tratado = _n1Controller.text.replaceAll(
                          ',',
                          '.',
                        );

                        try {
                          double n1 = double.parse(n1Tratado);

                          if (n1 < 0) {
                            _resultController.text = "Número inválido";
                            return;
                          }

                          double resultado = sqrt(n1);

                          _resultController.text = resultado.toString();
                        } catch (e) {
                          _resultController.text = "Erro!";
                        }
                      },
                      child: Text("Raiz"),
                    ),
                  ),
                ],
              ),
              // espaçamento entre campos
              SizedBox(height: 16),

              //campo: resultado
              TextField(
                controller: _resultController,
                decoration: InputDecoration(
                  labelText: 'Resultado',
                  prefixIcon: Icon(Icons.equalizer),
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                enabled: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
