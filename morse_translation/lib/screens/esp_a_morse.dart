import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'mor_a_esp.dart';



class espAMorse extends StatefulWidget {
  const espAMorse({super.key});

  @override
  State<espAMorse> createState() => _espAMorseState();
}

class _espAMorseState extends State<espAMorse> {

  

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
            DrawerHeader(child: Container(
              color: Theme.of(context).primaryColor,
              padding: EdgeInsets.zero,
            ),
           
            ),
             ListTile(
              leading: Icon(Icons.book),
              title: Text("Español a Morse"),
              onTap: (){
                Navigator.pop(context);
                
              }
            ),
            ListTile(
              leading: Icon(Icons.book_online),
              title: Text("Morse a Español"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const morseAEsp()));
                
              }
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text("ESPAÑOL A MORSE"),
        centerTitle: true,  
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: "Escribe tu texto en español",
                labelStyle: TextStyle(color: Theme.of(context).primaryColor),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){
                
              }, 
              child: Text("Traducir")
            ),
            SizedBox(height: 20,),
            Text("Tu texto en español es:"),
            
          ],
        ),
      )
    );
  }
}