import 'package:flutter/material.dart';

void main() {

  runApp(MyApp());
}


class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int teamAScore=0;

  int teamBScore=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text("Basketball Score",style: TextStyle(fontSize: 30,color: Colors.black),),
        ),

        body: Column(// علشان نكتب اخر زرار فهو بقى غبارة عن عمود صف تحته زرار
          children: [
            Row(// صف وعملنا عمودين جمب بعض
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,// يسيب مسافات من الجمبين
              children: [
                Column(
                  children: [
                    Text("Team 1",style: TextStyle(fontSize: 40,color: Color(0xff6D6D6D)),),

                    Text("$teamAScore",style: TextStyle(fontSize:100,color: Colors.black),),

                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      child: ElevatedButton(onPressed: (){
                        addpoints('1', 1);

                      },


                        style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ), child: Text("+1 point",style: TextStyle(fontSize: 25,color: Colors.black),)
                        ,),
                    ),

                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      child: ElevatedButton(onPressed: (){addpoints('1', 2);},style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ), child: Text("+2 point",style: TextStyle(fontSize: 25,color: Colors.black),)
                        ,),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      child: ElevatedButton(onPressed: (){addpoints('1',3);},style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ), child: Text("+3 point",style: TextStyle(fontSize: 25,color: Colors.black),)
                        ,),
                    ),

                  ],
                ),

                SizedBox(// علشان الخد دا ميبقاش على طول الصفحة كلها
                  height:400,
                  child: VerticalDivider(// يقسم نصين بالطول
                    thickness: 2,
                      width: 50,
                  ),
                ),


                Column(
                  children: [
                    Text("Team 2",style: TextStyle(fontSize: 40,color: Color(0xff6D6D6D)),),

                    Text("$teamBScore",style: TextStyle(fontSize:100,color: Colors.black),),

                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      child: ElevatedButton(onPressed: (){addpoints('2', 1);},style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ), child: Text("+1 point",style: TextStyle(fontSize: 25,color: Colors.black),)
                        ,),
                    ),

                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      child: ElevatedButton(onPressed: (){addpoints('2', 2);},style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ), child: Text("+2 point",style: TextStyle(fontSize: 25,color: Colors.black),)
                        ,),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      child: ElevatedButton(onPressed: (){addpoints('2', 3);},style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ), child: Text("+3 point",style: TextStyle(fontSize: 25,color: Colors.black),)
                        ,),
                    ),

                  ],
                ),
              ],
            ),

            Container(//زرار الريست
              margin: EdgeInsets.only(top: 50) ,
              child: ElevatedButton(onPressed: (){
                addpoints('3', 0);
              },style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
              ), child: Text("Reset",style: TextStyle(fontSize: 25,color: Colors.black),)
                ,),
            ),


          ],
        )
      )
    );
  }

  void addpoints(String team,int points)
  {
    setState(() {

      if(team=='1'){
        teamAScore+=points;
      }
      else if(team=='2'){
        teamBScore+=points;
      }
      else {
        teamAScore=0;
        teamBScore=0;
      }
    });

  }
}


