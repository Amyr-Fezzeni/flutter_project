
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dmc extends StatefulWidget {
  @override
  _DmcState createState() => _DmcState();
}

class _DmcState extends State<Dmc> {
  TimeOfDay time = TimeOfDay(hour: 10, minute: 30);
  DateTime date = DateTime(2022, 01, 01);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Text('Rechercher un trajet'),
        ), 
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/rechpass.jpg"),
                      fit: BoxFit.cover)),
              height: size.height,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            hintText: 'Depart',
                            labelText: 'Depart',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0))),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            hintText: 'Destination',
                            labelText: 'Destination',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0))),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        '${date.year}/${date.month}/${date.day}',
                        style: TextStyle(fontSize: 32),
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        child: Text('Select Date'),
                        onPressed: () async {
                          DateTime? newDate = await showDatePicker(
                            context: context,
                            initialDate: date,
                            firstDate: DateTime(1900),
                            lastDate: DateTime(2100),
                          );

                          if (newDate == null) return;
                          setState(() => date = newDate);
                        },
                      ),
                      Text(
                        '${time.hour}:${time.minute}',
                        style: TextStyle(fontSize: 32),
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        child: Text('Select Time'),
                        onPressed: () async {
                          TimeOfDay? newTime = await showTimePicker(
                            context: context,
                            initialTime: time,
                          );

                          if (newTime == null) return;
                          setState(() => time = newTime);
                        },
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            // primary: d_red,
                            shape: StadiumBorder(),
                            padding: EdgeInsets.all(13)),
                        child: Text('RECHERCHER'),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}



// class Dmc extends StatefulWidget{
//   @override
//   _DmcState createState() => _DmcState();
// }
// class _DmcState extends State<Dmc>{
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       appBar: AppBar(
//        title: Text('Rechercher un trajet'),
//       ), // AppBar
//       body: Form(
//         child: SingleChildScrollView(
//           child: Column(
//              children:[
//                TextFormField(
//                  keyboardType: TextInputType.number,
//                   decoration: InputDecoration(
//                    hintText: 'destination',
//                    labelText: 'destination',
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(8.0)
//                         )  
//                     ), 
//                     ), 
//                          SizedBox(height: 16,),
//              ],
//          ), 
//         ), 
//      ), 
//   ); 
//   }
// }

