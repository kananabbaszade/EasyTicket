import 'package:easy_ticket_01/model/user.dart';
import 'package:easy_ticket_01/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import'../api.dart';

API api = API();
String id = "";
String result = "false";

TextEditingController emailController = new TextEditingController();
TextEditingController passwordController = new TextEditingController();


class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor:Colors.white,
 
      body: SingleChildScrollView(
        child: Column(children: [
          Stack(children: [
         Container(decoration: BoxDecoration(    
           gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.deepPurple,
                  Colors.deepOrange,
                ],
              ),),height: 400,width: double.infinity,child: Center(child: Text("EasyTicket",style: GoogleFonts.staatliches(color: Colors.white,fontSize: 50,),),),),
         Padding(
           padding: const EdgeInsets.only(left: 10,right: 10,top: 300),
           child: Center(
             child: Container(
               height: 400,
               width: 350,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(20),
                 color: Colors.white,
                 boxShadow: [
            new BoxShadow(
              color: Colors.black45,
              blurRadius: 5
            ),
          ], 
          ),
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            children: [
              Text("Giriş",style: GoogleFonts.alatsi(fontSize: 30,color:Colors.deepPurple,),
                               
      
                ),
                Padding(
          padding: EdgeInsets.only(top: 35,right: 20,left: 20),
          child: TextField(
             decoration: InputDecoration(
            
           
         border: OutlineInputBorder(borderRadius: BorderRadius.circular(50),),
         labelText: 'Email',
         hintText: 'Email hesabınızı giriniz'
           ),
       
       controller: emailController, 
       
       
         ),
         
       ),
       Padding(
         padding: const EdgeInsets.only(top: 25,right: 20,left: 20),
         child: TextField(           
           decoration: InputDecoration(

              border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
             
           
          
           labelText: 'Şifre',
           hintText: 'Şifrenizi giriniz'
         ),
           

           controller: passwordController,
           
           ),
       ),
       Padding(
         padding: const EdgeInsets.only(top: 40),
         child: Container(
                  height: 60,
                  width: 160,
                  decoration: BoxDecoration(
                   gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.deepOrange,
                  Colors.deepPurple
                ],
              ),
                      color: Colors.blue, borderRadius: BorderRadius.circular(50)),
                  child: FlatButton(
                    onPressed: () {
                    

                    setState(() {
                      api.login(emailController.text, passwordController.text).then((value) {
    result = value.result;
    id = value.id;
 print(value.result);

    
  });


  if(result == "true") {
    Navigator.of(context).push(MaterialPageRoute(builder:(context)=> HomePage(id: id) ));
  }
  else {
AlertDialog alert = AlertDialog(
    title: Text("My title"),
    content: Text("This is my message."),
    actions: [
      Icon(Icons.error),
    ],
  );

    //register sayfasina gidebilir
    //alert verilebilir
  }



  
                    });


                    },
                    child: Text(
                      'Giriş Yap',
                      style: GoogleFonts.alata(fontSize: 16,color: Colors.white),
                    ),
                  ),
                ),
       ),
            ],
          ),
        ),
          
          
          ),
         ),
      
         )
          ],),
         
      
        ],),
      ),
    );
  }
}