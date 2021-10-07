import 'package:flutter/material.dart';
import 'pages/loginpage.dart';

void main() {
  runApp(EasyTicket());
}



class EasyTicket extends StatelessWidget {
  const EasyTicket({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      
       
    );
  }
}