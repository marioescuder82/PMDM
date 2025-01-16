import 'package:flutter/material.dart';

class Calculadora extends StatefulWidget {
  const Calculadora({super.key});

  @override
  State<Calculadora> createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  int? operando_1;
  String? operacion;
  int? operando_2;
  String text = '0';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('Calculadora'))),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              textAlign: TextAlign.right,
              style: const TextStyle(fontSize: 75, fontWeight: FontWeight.w100),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Boton(
                  texto: "1",
                  onPressed: () {
                    setState(() {
                      if (operando_1 == null) {
                        operando_1 = 1;
                        text = '1';
                      } else {
                        operando_2 = 1;
                        text = '$operando_1 $operacion $operando_2';
                      }
                    });
                  },
                ),

                Boton(
                  texto: "2",
                  onPressed: () {
                    setState(() {
                      if (operando_1 == null) {
                        operando_1 = 2;
                        text = '2';
                      } else {
                        operando_2 = 2;
                        text = '$operando_1 $operacion $operando_2';
                      }
                    });
                  },
                ),

                Boton(
                  texto: "3",
                  onPressed: () {
                    setState(() {
                      if (operando_1 == null) {
                        operando_1 = 3;
                        text = '3';
                      } else {
                        operando_2 = 3;
                        text = '$operando_1 $operacion $operando_2';
                      }
                    });
                  },
                ),
              ],
            ),

            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Boton(
                  texto: "4",
                  onPressed: () {
                    setState(() {
                      if (operando_1 == null) {
                        operando_1 = 4;
                        text = '4';
                      } else {
                        operando_2 = 4;
                        text = '$operando_1 $operacion $operando_2';
                      }
                    });
                  },
                ),

                Boton(
                  texto: "5",
                  onPressed: () {
                    setState(() {
                      if (operando_1 == null) {
                        operando_1 = 5;
                        text = '5';
                      } else {
                        operando_2 = 5;
                        text = '$operando_1 $operacion $operando_2';
                      }
                    });
                  },
                ),

                Boton(
                  texto: "6",
                  onPressed: () {
                    setState(() {
                      if (operando_1 == null) {
                        operando_1 = 6;
                        text = '6';
                      } else {
                        operando_2 = 6;
                        text = '$operando_1 $operacion $operando_2';
                      }
                    });
                  },
                ),
              ],
            ),

            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Boton(
                  texto: "7",
                  onPressed: () {
                    setState(() {
                      if (operando_1 == null) {
                        operando_1 = 7;
                        text = '7';
                      } else {
                        operando_2 = 7;
                        text = '$operando_1 $operacion $operando_2';
                      }
                    });
                  },
                ),

                Boton(
                  texto: "8",
                  onPressed: () {
                    setState(() {
                      if (operando_1 == null) {
                        operando_1 = 8;
                        text = '8';
                      } else {
                        operando_2 = 8;
                        text = '$operando_1 $operacion $operando_2';
                      }
                    });
                  },
                ),

                Boton(
                  texto: "9",
                  onPressed: () {
                    setState(() {
                      if (operando_1 == null) {
                        operando_1 = 9;
                        text = '9';
                      } else {
                        operando_2 = 9;
                        text = '$operando_1 $operacion $operando_2';
                      }
                    });
                  },
                ),
              ],
            ),

            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Boton(
                  texto: "-",
                  onPressed: () {
                    setState(() {
                      operacion = '-';
                    });
                  },
                ),

                Boton(
                  texto: "0",
                  onPressed: () {
                    setState(() {
                      if (operando_1 == null) {
                        operando_1 = 0;
                        text = '0';
                      } else {
                        operando_2 = 0;
                        text = '$operando_1 $operacion $operando_2';
                      }
                    });
                  },
                ),

                Boton(
                  texto: "+",
                  onPressed: () {
                    setState(() {
                      operacion = '+';
                    });
                  },
                ),
              ],
            ),

            SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Boton(
                  texto: "=",
                  onPressed: () {
                    setState(() {
                      if (operacion == "+")
                        text = (operando_1! + operando_2!).toString();
                      if (operacion == "-")
                        text = (operando_1! - operando_2!).toString();
                      operando_1 = null;
                      operando_2 = null;
                      operacion = null;
                    });
                  },
                  color: Colors.lightGreen
                ),
                Boton(
                  texto: "c",
                  onPressed: () {
                    setState(() {
                      operando_1 = null;
                      operando_2 = null;
                      operacion = null;
                      text = '0';
                    });
                  },
                  color: Colors.lightGreen
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Boton extends StatelessWidget {
  final String texto;

  final VoidCallback? onPressed;

  final Color? color;

  const Boton({
    required this.texto,
    required this.onPressed,
    this.color = Colors.amber,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 85,
      height: 85,
      child: FloatingActionButton(
        backgroundColor: color,
        onPressed: onPressed,
        child: Text(style: TextStyle(fontSize: 30), texto),
      ),
    );
  }
}
