import 'package:flutter/material.dart';
import 'package:screen_login/screens/second_screen.dart';

class FirstScreen extends StatelessWidget {
  final emailController = TextEditingController();
  final senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        // Para ficar melhor a visualização
        // mainAxisAlignment: MainAxisAlignment.center,

        padding: EdgeInsets.symmetric(horizontal: 20),
        children: [
          SizedBox(height: 100),

          // Vermelho atras da imagem
          Container(
            color: Colors.red,
            padding: const EdgeInsets.all(8),
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Image.asset(
                "assets/imagem assc.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),

          SizedBox(height: 40),

          // Campo de Texto Email
          // Qual a diferença entre TextField e TextFormField?
          // Metodo ?
          createTextField(hintText: "Email", controlador: emailController),

          SizedBox(height: 15),

          // Campo de Texto Email
          // Qual a diferença entre TextField e TextFormField?
          // Metodo ?
          createTextField(hintText: "Senha", controlador: senhaController),

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
              margin: EdgeInsets.symmetric(horizontal: 30),
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
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),

          SizedBox(height: 20),

          // Tres Bolinhas
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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

  /// criacao de campo de texto
  Widget createTextField({String hintText, TextEditingController controlador}) {
    return TextFormField(
      controller: controlador,
      style: TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.white,
        ),
        focusedBorder: borderDecoration(),
        enabledBorder: borderDecoration(),
      ),
    );
  }

  /// Cria um circulo
  Widget createBalls({Color cor = Colors.pink}) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: cor,
        // borderRadius: BorderRadius.circular(25),
        shape: BoxShape.circle,
      ),
    );
  }
}
