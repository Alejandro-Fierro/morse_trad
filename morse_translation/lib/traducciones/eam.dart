// ignore: non_constant_identifier_names
import 'dart:ffi';

String Traduccion(String? x) {
  String morse = "";
  List<Char> bases = [];
  Map<String, String> esp = <String, String>{
    "a": ".-",
    "b": "-...",
    "c": "-.-.",
    "d": "-..",
    "e": ".",
    "f": "..-.",
    "g": "--.",
    "h": "....",
    "i": "..",
    "j": ".---",
    "k": "-.-",
    "l": ".-..",
    "m": "--",
    "n": "-.",
    "o": "---",
    "p": ".--.",
    "q": "--.-",
    "r": ".-.",
    "s": "...",
    "t": "-",
    "u": "..-",
    "v": "...-",
    "w": ".--",
    "x": "-..-",
    "y": "-.--",
    "z": "--..",
    "0": "-----",
    "1": ".----",
    "2": "..---",
    "3": "...--",
    "4": "....-",
    "5": ".....",
    "6": "----.",
    "7": "---..",
    "8": "--...",
    "9": "-....",
    " ": "/"
  };
  if (x != null) {
    List<String> splitted = x.split('');
    for (int i = 0; i < splitted.length; i++) {
      morse = morse.toString() + esp[splitted[i]]!.toString() + (" ").toString();
    }
    
    return morse;
  } else {
    return " ";
  }
}
