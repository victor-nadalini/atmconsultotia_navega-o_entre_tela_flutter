// ignore_for_file: prefer_const_constructors

import 'package:atmconsultoria/TelaCliente.dart';
import 'package:atmconsultoria/TelaContato.dart';
import 'package:atmconsultoria/TelaEmpresa.dart';
import 'package:atmconsultoria/TelaServiso.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TelaPincipalATMconsultoria(),
  ));
}

class TelaPincipalATMconsultoria extends StatefulWidget {
  const TelaPincipalATMconsultoria({Key? key}) : super(key: key);

  @override
  State<TelaPincipalATMconsultoria> createState() =>
      _TelaPincipalATMconsultoriaState();
}

class _TelaPincipalATMconsultoriaState extends State<TelaPincipalATMconsultoria>
{

  void _abrirEmpresa(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => TelaEmpresa())
    );
  }
  void _abrirServico(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => TelaServiso())
    );
  }
  void _abrirCliente(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => TelaCliente())
    );
  }
  void _abrirContato(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => TelaContato())
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("ATM Consultoria"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("assets/logo.png"),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: _abrirEmpresa,
                    child: Image.asset("assets/menu_empresa.png"),
                  ),
                  GestureDetector(
                    onTap: _abrirServico,
                    child: Image.asset("assets/menu_servico.png"),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: _abrirCliente,
                    child: Image.asset("assets/menu_cliente.png"),
                  ),
                  GestureDetector(
                    onTap: _abrirContato,
                    child: Image.asset("assets/menu_contato.png"),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
