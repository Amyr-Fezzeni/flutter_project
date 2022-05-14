import 'package:flutter/material.dart';

class Dmc extends StatefulWidget{
  @override
  _DmcState createState() => _DmcState();
}
class _DmcState extends State<Dmc>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
       title: Text('Rechercher un trajet'),
      ), // AppBar
      body: Form(
        child: SingleChildScrollView(
          child: Column(
             children:[
               TextFormField(
                 keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                   hintText: 'destination',
                   labelText: 'destination',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0)
                        )  
                    ), 
                    ), 
                         SizedBox(height: 16,),
             ],
         ), 
        ), 
     ), 
  ); 
  }
}