import 'package:flutter/material.dart';

class TelaServiso extends StatefulWidget {
  const TelaServiso({Key? key}) : super(key: key);

  @override
  State<TelaServiso> createState() => _TelaServisoState();
}

class _TelaServisoState extends State<TelaServiso> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Serviço"),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Image.asset("assets/detalhe_servico.png"),
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Nossos serviços",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.lightBlueAccent
                      ),
                    ),
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  "Consultoria"
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                    "Calculo de preços"
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                    "Acompanhamento de peojetos"
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
