import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../traducciones/eam.dart';
import '../validators/validaciones.dart';
import 'mor_a_esp.dart';

class EspaMorse extends StatefulWidget {
  const EspaMorse({super.key});

  @override
  State<EspaMorse> createState() => _espAMorseState();
}

class _espAMorseState extends State<EspaMorse> {
  String info = "";
  String completo = "";
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: Column(
            children: [
              DrawerHeader(
                child: Container(
                  color: Theme.of(context).primaryColor,
                  padding: EdgeInsets.zero,
                ),
              ),
              ListTile(
                  leading: const Icon(Icons.book),
                  title: const Text("Español a Morse"),
                  onTap: () {
                    Navigator.pop(context);
                  }),
              ListTile(
                  leading: const Icon(Icons.book_online),
                  title: const Text("Morse a Español"),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const morseAEsp()));
                  }),
            ],
          ),
        ),
        appBar: AppBar(
          title: const Text("ESPAÑOL A MORSE"),
          centerTitle: true,
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Escribe tu texto en español",
                  labelStyle: TextStyle(color: Theme.of(context).primaryColor),
                  border: const OutlineInputBorder(),
                ),
                onChanged: (value) => info = (value),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {});
                    completo = Traduccion(info);
                  },
                  child: const Text("Traducir")),
              const SizedBox(
                height: 20,
              ),
              Text(completo)
            ],
          ),
        ));
  }
}
