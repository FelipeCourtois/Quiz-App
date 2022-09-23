// ignore_for_file: unnecessary_import, prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, unused_local_variable, sort_child_properties_last

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './questao.dart';
import './respostas.dart';

main() {
  runApp(PerguntaApp());
}

class PerguntaApp extends StatefulWidget {
  @override
  State<PerguntaApp> createState() => _PerguntaAppState();
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    //metodo responder
    setState(() {
      _perguntaSelecionada++; // a cada vez que responder vai
    });
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      //variável com uma lista de perguntas
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?',
    ];

    return MaterialApp(
      home: Scaffold(
        //Scaffold vai dar a estrutura da aplicação
        appBar: AppBar(
          title: Text(
              'Perguntas'), //tittle é um parâmetro nomeado que recebe um widget
          centerTitle: true, //centraliza na appbar
        ),
        body: Column(
          children: [
            Questao(perguntas[_perguntaSelecionada]),
            Resposta('Resposta 1', _responder),
            Resposta('Resposta 2', _responder),
            Resposta('Resposta 3', _responder),
          ],
        ),
      ),
    );
  }
}
