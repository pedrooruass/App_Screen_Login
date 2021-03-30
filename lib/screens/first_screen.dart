import 'package:flutter/material.dart';
import 'package:screen_login/screens/second_screen.dart';

class FirstScreen extends StatelessWidget {
  final tarefaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        // Para ficar melhor a visualização
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Vermelho atras da imagem
          Container(
            margin: EdgeInsets.all(20),
            color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.all(8),
              // Imagem
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.asset(
                  "assets/imagem assc.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          SizedBox(height: 20),

          // Campo de Texto Email
          // Qual a diferença entre TextField e TextFormField?
          // Metodo ?
          createTextField(text: "Email"),

          SizedBox(height: 15),

          // Campo de Texto Email
          // Qual a diferença entre TextField e TextFormField?
          // Metodo ?
          createTextField(text: "Senha"),

          SizedBox(height: 20),

          // Botao entrar
          GestureDetector(
            onTap: () async {
              String result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondScreen(),
                  ));
            },
            child: Container(
              alignment: Alignment.center,
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.red,
              ),
              child: Text(
                "Entrar",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
          ),

          SizedBox(height: 20),
          // Texto e entrar com outras contas
          Text(
            "Ou entre com",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),

          SizedBox(height: 20),

          // Tres Bolinhas
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              
              createBalls(cor: Colors.blue),
              createBalls(cor: Colors.purple),
              createBalls(cor: Colors.red),
              
            ],
          ),
        ],
      ),
    );
  }

// Decoracao campo de texto
  OutlineInputBorder borderDecoration() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(40),
      borderSide: BorderSide(width: 2, color: Colors.red),
    );
  }

  // criacao de campo de texto
  Padding createTextField({String text}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        controller: tarefaController,
        decoration: InputDecoration(
          hintText: text,
          hintStyle: TextStyle(
            color: Colors.white,
          ),
          focusedBorder: borderDecoration(),
          enabledBorder: borderDecoration(),
        ),
      ),
    );
  }

// Nececidade desse metodo ?
  Padding createBalls({Color cor}) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: cor,
          borderRadius: BorderRadius.circular(25),
        ),
      ),
    );
  }
}
