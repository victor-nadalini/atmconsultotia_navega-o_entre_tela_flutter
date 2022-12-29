import 'package:flutter/material.dart';

class TelaCliente extends StatefulWidget {
  const TelaCliente({Key? key}) : super(key: key);

  @override
  State<TelaCliente> createState() => _TelaClienteState();
}

class _TelaClienteState extends State<TelaCliente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Clientes"),
        backgroundColor: Colors.lightGreen,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Image.asset("assets/detalhe_cliente.png"),
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Cliente",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.lightGreen
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Image.asset(
                    "assets/cliente1.png"
                ),
              ),
              const Text("Empresa de softuwere"),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Image.asset(
                    "assets/cliente2.png"
                ),
              ),
              const Text("Empresa de auditoria"),
            ],
          ),
        ),
      ),
    );
  }
}
