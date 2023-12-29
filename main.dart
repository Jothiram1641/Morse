// ignore_for_file: empty_statements

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/link.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Morse code',
    home: MyApp(),
  ));
}
String f = '';
String n = '';
//String value = '';
String morse(String s){
  String m = '';
  if (s == ''){
    return '';
  }
  if (s[0] == '.' || s[0] == '-'){
      var r = s.split(' ');
      for(var i=0; i < r.length; i++){
         m = m + morsetotext(r[i]);
      }
      return m;
  }
  else{  
    for(var i = 0; i < s.length; i++){
       m = '$m${texttomorse(s[i])} ';
    }
    return m;
  }
  }
     
String texttomorse(String char)
{
  var list  = ['.-', '-...','-.-.', '-..', '.', '..-.', '--.', '....',
    '..', '.---', '-.-', '.-..', '--', '-.', '---', '.--.',
    '--.-', '.-.', '...', '-', '..-', '...-', '.--', '-..-',
    '-.--', '--..','.----','..---','...--','....-','.....','-....','--...','---..','----.','-----'];
  switch(char){
    case 'A' || 'a':
      return list[0];
    case 'B' || 'b':
      return list[1];
    case 'C' || 'c':
      return list[2]; 
    case 'D' || 'd':
      return list[3];
    case 'E' || 'e':
      return list[4];
    case 'F' || 'f':
      return list[5];
    case 'G' || 'g':
      return list[6];
    case 'H' || 'h':
      return list[7]; 
    case 'I' || 'i':
      return list[8];
    case 'J' || 'j':
      return list[9];
    case 'K' || 'k':
      return list[10];
    case 'L' || 'l':
      return list[11];
    case 'M' || 'm':
      return list[12];  
    case 'N' || 'n':
      return list[13];
    case 'O' || 'o':
      return list[14];
    case 'P' || 'p':
      return list[15];
    case 'q' || 'Q':
      return list[16];
    case 'R' || 'r':
      return list[17];
    case 'S' || 's':
      return list[18];
    case 'T' || 't':
      return list[19];
    case 'U' || 'u':
      return list[20];
    case 'V' || 'v':
      return list[21];
    case 'W' || 'w':
      return list[22];
    case 'X' || 'x':
      return list[23];
    case 'Y' || 'y':
      return list[24];
    case 'Z' || 'z':
      return list[25];
    case '1':
      return list[26];  
    case '2':
      return list[27];
    case '3':
      return list[28]; 
    case '4':
      return list[29];
    case '5':
      return list[30];
    case '6':
      return list[31]; 
    case '7':
      return list[32]; 
    case '8':
      return list[33];
    case '9':
      return list[34];
    case '0':
      return list[35];                                        
    default:
      return '';
  }
}
String morsetotext(String W){
  var list1 =['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','1','2','3','4','5','6','7','8','9','0'];
  switch(W){
    case '.-':
      return list1[0];
    case '-...':
      return list1[1];
    case '-.-.':
      return list1[2]; 
    case '-..':
      return list1[3];
    case '.':
      return list1[4];
    case '..-.':
      return list1[5];
    case '--.':
      return list1[6];
    case '....':
      return list1[7]; 
    case '..':
      return list1[8];
    case '.---':
      return list1[9];
    case '-.-':
      return list1[10];
    case '.-..':
      return list1[11];
    case '--':
      return list1[12];  
    case '-.':
      return list1[13];
    case '---':
      return list1[14];
    case '.--.':
      return list1[15];
    case '--.-':
      return list1[16];
    case '.-.':
      return list1[17];
    case '...':
      return list1[18];
    case '-':
      return list1[19];
    case '..-':
      return list1[20];
    case '...-':
      return list1[21];
    case '.--':
      return list1[22];
    case '-..-':
      return list1[23];
    case '-.--':
      return list1[24];
    case '--..':
      return list1[25];
    case '.----':
      return list1[26];
    case '..---':
      return list1[27];  
    case '...--':
      return list1[28]; 
    case '....-':
      return list1[29];  
    case '.....':
      return list1[30];
    case '-....':
      return list1[31];
    case '--...':
      return list1[32]; 
    case '---..':
      return list1[33];  
    case '----.':
      return list1[34];    
    case '-----':
      return list1[35];                                    
    default:
      return '';
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MainPageState();
}

class _MainPageState extends State<MyApp>{
  String value = '';
  String c = '';
  final myController = TextEditingController();
  
  @override
  void dispose(){
    myController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      //theme: CupertinoThemeData(brightness: Brightness.dark,primaryColor: Colors.blue,textTheme: CupertinoTextThemeData(primaryColor: Colors.cyan)),
      home: CupertinoPageScaffold(
        //backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        navigationBar:  CupertinoNavigationBar(
          //backgroundColor: const Color.fromRGBO(55, 55, 55, 0.5),
          middle: const Text('Morse Code'),
          trailing: CupertinoButton(child: const Icon(
            CupertinoIcons.settings,size: 25,color: Color.fromARGB(255, 67, 173, 255),),
             onPressed: (){ Navigator.push(context, 
             CupertinoPageRoute(builder: (context) => const SecondRoute()) );} )
        ),  
         child: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(16),
            alignment: const Alignment(1, -0.60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CupertinoTextField(
                controller: myController,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  //color: const Color.fromARGB(255, 122, 118, 118)
                ),
                autofocus: true,
                //placeholderStyle: const TextStyle(color: Colors.white54),
                padding: const EdgeInsets.all(16),
                placeholder: 'Enter your english text or morse code',
                onChanged: (value) => setState(() => this.value = value),
              ),
              
            const SizedBox(height: 80),
            ElevatedButton(
              style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.teal),),
              onPressed: () {
                c = morse(value);
                Clipboard.setData(ClipboardData(text: c));
                
              },
              child: const Text('Copy to Clipboard',style: TextStyle(color: Colors.white),),
            ),
            const SizedBox(height: 60),
            Text(morse(value),
            style: const TextStyle(fontSize: 32),
            ) 
            ]
            )
         ),
         ) 
           ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return  CupertinoApp(
      home: CupertinoPageScaffold(
        //backgroundColor: Color.fromARGB(255, 0, 0, 0),
        navigationBar: CupertinoNavigationBar(
          leading: CupertinoNavigationBarBackButton(
            color: Colors.blue,
            onPressed: () => Navigator.of(context).pop(),
          ),
          //backgroundColor: Color.fromRGBO(55, 55, 55, 0.5),
          middle: const Text('Settings'),
        ),
        
        child: Align(
            alignment: const Alignment(0.0, -0.6),
            child: Link(
              target: LinkTarget.blank,
              uri: Uri.parse('https://www.youtube.com/'), 
              builder: (context, followLink) => ElevatedButton(
                style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.teal),),
              onPressed: followLink,
             child: const Text('Source Code',style: TextStyle(color: Colors.white),),
            ),
            ),    
          ),
      )
    );
  }
}
