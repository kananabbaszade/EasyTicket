import 'package:easy_ticket_01/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../api.dart';

String name = "";
API api = API();

class HomePage extends StatefulWidget {
  const HomePage({ Key ? key,required this.id }) : super(key: key);

final String id;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

void initState() {
    super.initState();
    api.kullaniciGetir(widget.id).then((value) {
      name = value.name;
      print(value.name);
  });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
  appBar: AppBar(backgroundColor: Colors.deepPurple,
  elevation: 12,
  toolbarHeight: 45,
  centerTitle: true,
  title: Text("EasyTicket",style:   GoogleFonts.alata(fontSize: 20),)

  
  
  ),
  
  
  body: Center(
    child: Text(
      /*setState(() {

      });*/
      name,style: GoogleFonts.alata(color: Colors.black,fontSize: 50),),
  ),
    );
  }
}