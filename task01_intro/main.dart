import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Task1"),
          backgroundColor: Colors.yellow,
        ),

        body: Column(//عملناه صف علشان احن هنقسمهم جزئين واحد فوق و واحد تحت
          children: [


            Expanded(// نعمل اكسباند علشان نحدد هنقسم العمود دا ازاي هنا هنقسمه 3ل1
              flex:3,
              child: Row(// عملنا جوا اول جزء صفوف علشان هنكتب جمب بعض
                children: [// عملنا جوا الصف 3 تيكست بس كل تيكست جوا كونتينر علشان نخليه ياخد لون خلفية وجزء كبير مش بس على قد الحرف
                  Expanded(child: Container(color: Colors.red, alignment: Alignment.center, child: Text("1",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24 ),),),),

                  Expanded(child: Container(color: Colors.green, alignment: Alignment.center, child: Text("2",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24 )),),),

                  Expanded(child: Container(color: Colors.blue, alignment: Alignment.center, child: Text("3",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24 )),),),
                ],
              ),
            ),


                    // الجزء اللي قاعد هو اريدي عمود فهنكتب تحت بعض

            Expanded(flex: 1, child: Container(color: Colors.red, alignment: Alignment.center, child: Text("1",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24 )),),),// هنعمل اكسباند علشان نقسم الجزء اللي قاعد ل3 وجوا كل جزء كونتينر علشان التيكست ياخد مكان كبير ولون

            Expanded(flex: 1, child: Container(color: Colors.green, alignment: Alignment.center, child: Text("2",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24 )),),),

            Expanded(flex: 1, child: Container(color: Colors.blue, alignment: Alignment.center, child: Text("3",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24 )),),),

          ],
        ),
      ),
    );
  }
}