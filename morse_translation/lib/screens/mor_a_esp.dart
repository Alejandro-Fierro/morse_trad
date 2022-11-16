import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../traducciones/mae.dart';
import '../validators/validaciones.dart';
import 'esp_a_morse.dart';

class morseAEsp extends StatefulWidget {
  const morseAEsp({super.key});

  @override
  State<morseAEsp> createState() => _morseAEspState();
}

class _morseAEspState extends State<morseAEsp> {
  String morse = "";
  String completado = "";
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const EspaMorse()));
                  }),
              ListTile(
                  leading: const Icon(Icons.book_online),
                  title: const Text("Morse a Español"),
                  onTap: () {
                    Navigator.pop(context);
                  }),
            ],
          ),
        ),
        appBar: AppBar(
          title: const Text("MORSE A ESPAÑOL"),
          centerTitle: true,
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: "Escribe tu texto en morse",
                  labelStyle: TextStyle(color: Theme.of(context).primaryColor),
                  border: const OutlineInputBorder(),
                ),
                onChanged: (value) => morse = (value),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      completado = regreso(morse);
                    });
                  },
                  child: const Text("Traducir")),
              const SizedBox(
                height: 20,
              ),
              const Text("Tu texto en Morse es:"),
              Text(completado),
            ],
          ),
        ));
  }
}
