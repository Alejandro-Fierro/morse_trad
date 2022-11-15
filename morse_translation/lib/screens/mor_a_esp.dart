import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'esp_a_morse.dart';

class morseAEsp extends StatefulWidget {
  const morseAEsp({super.key});

  @override
  State<morseAEsp> createState() => _morseAEspState();
}

class _morseAEspState extends State<morseAEsp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(child: Container(
              color: Theme.of(context).primaryColor,
              padding: EdgeInsets.zero,
            ),
           
            ),
             ListTile(
              leading: Icon(Icons.book),
              title: Text("Español a Morse"),
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => const espAMorse()));
                
              }
            ),
            ListTile(
              leading: Icon(Icons.book_online),
              title: Text("Morse a Español"),
              onTap: (){
                Navigator.pop(context);
                
              }
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text("MORSE A ESPAÑOL"),
        centerTitle: true,  
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: "Escribe tu texto en morse",
                labelStyle: TextStyle(color: Theme.of(context).primaryColor),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){}, 
              child: Text("Traducir")
            ),
            SizedBox(height: 20,),
            Text("Tu texto en Morse es:"),
            
          ],
        ),
      )
      );
  }
}