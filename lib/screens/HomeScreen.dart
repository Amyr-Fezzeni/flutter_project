import 'package:flutter/material.dart';
import 'package:hello_world/Dmc.dart';
import 'package:hello_world/formcond.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/pass.jpg"), fit: BoxFit.cover)),
          height: size.height,
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Dmc()),
                  );
                },
                child: SizedBox(
                  // color: Colors.amber,
                  height: size.height * 0.5,
                  width: size.width,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Formcond()),
                  );
                },
                child: SizedBox(
                  height: size.height * 0.5,
                  width: size.width,
                ),
              )
            ],
          )),
    );
  }
}
