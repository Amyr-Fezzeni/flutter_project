import 'package:flutter/material.dart';

class Formcond extends StatefulWidget {
  const Formcond({Key? key}) : super(key: key);

  @override
  State<Formcond> createState() => _FormcondState();
}

class _FormcondState extends State<Formcond> {
  bool trajetR = false;
  bool trajetS = false;
  bool allezR = false;
  int cotisation = 1;
  RangeValues slider = const RangeValues(1, 30);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Proposer un trajet'),
        centerTitle: true,
      ),
      body: Form(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.edit_location_alt_rounded),
                    hintText: 'Selectionnez un point de depart',
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.location_on),
                    hintText: 'Destination',
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                        value: trajetR,
                        onChanged: (value) {
                          setState(() {
                            trajetR = value ?? false;
                            if (trajetR) trajetS = false;
                          });
                        }),
                    const Text("Trajet régulier"),
                    const SizedBox(
                      width: 20,
                    ),
                    Checkbox(
                        value: trajetS,
                        onChanged: (value) {
                          setState(() {
                            trajetS = value ?? false;
                            if (trajetS) trajetR = false;
                          });
                        }),
                    const Text("Trajet simple"),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.15),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.calendar_month),
                      hintText: 'Sélectionnez la date',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.15),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.access_time_outlined),
                      hintText: "Sélectionnez l'heure",
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                        value: allezR,
                        onChanged: (value) {
                          setState(() {
                            allezR = value ?? false;
                          });
                        }),
                    const Text("Aller retour"),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "Cotisation : $cotisation DT",
                  style: const TextStyle(color: Colors.blue, fontSize: 20),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("1DT"),
                    SizedBox(
                      width: size.width * 0.6,
                      child: Slider(
                        value: cotisation.toDouble(),
                        // divisions: 29,
                        min: 1,
                        max: 30,
                        onChanged: (value) {
                          setState(() {
                            cotisation = value.toInt();
                          });
                        },
                      ),
                    ),
                    const Text("30DT"),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                SizedBox(
                    width: size.width * 0.9,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Voiture de trajet :",
                            style: TextStyle(color: Colors.blue, fontSize: 20)),
                        SizedBox(
                          width: size.width * 0.5,
                          child: const TextField(
                            decoration: InputDecoration(
                              hintText: "Votre voiture",
                            ),
                          ),
                        ),
                      ],
                    )),
                const SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
