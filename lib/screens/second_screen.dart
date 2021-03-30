import 'dart:ui';

import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        alignment: Alignment.center,
        color: Colors.red,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Login Efetuado Com Sucesso!!!",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            SizedBox(height: 20),
            Container(
              child: Image.asset("assets/parabens.gif"),
              decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20)
              ),
            ),

            FlatButton(
              color: Colors.black,
              onPressed: () {
                // Fechar essa e voltar a anterior
                Navigator.pop(context, "Você aqui de novo ??");
              },
              child: Text("Voltar para a primeira tela", style: TextStyle(color: Colors.white),),
            ),
          ],
        ),
      ),
    );
  }
}

// Terminar a logica de entrar so se os campos de textos não estiverem nulos