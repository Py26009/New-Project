import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _Homepage();

}
  class _Homepage extends State<Homepage>{

  TextEditingController numb1 = TextEditingController();
  TextEditingController numb2 = TextEditingController();
  String result = "";
  int flag=0;


  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // First text field
            TextField(
              controller: numb1,
              onChanged: (Value){
                print(Value);
              },
                keyboardType: TextInputType.number,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(
                  width: 2,
                  color: Colors.blue,
                ),
                ),
                label: Text('number 1'),
                hintText: 'Enter a number',
              )
            ),
            SizedBox(
              width: 60,
              height:  30,
            ),

            // Second Text field
            TextField(
              controller: numb2,
              onChanged: (Value){
                print(Value);
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide(
                    width: 2,
                    color: Colors.blue
                  ),
                ),
                label: Text('number 2'),
                hintText:'Enter a number'
              ),
            ),
            SizedBox(
              width: 80,
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // first opertor (+)
                InkWell(
                  onTap: (){
                    flag=1;
                  },
                  child: Container(
                    width:  40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xFF00BFA5),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow:[
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 4,
                        )
                      ],
                    ),
                    child: Center(child: Text('+', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),)),
                  ),
                ),
                   InkWell(
                     onTap: (){
                       flag=2;
                     },
                     child: Container(
                      // second operator (-)
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow:[
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 4,
                              )
                            ]
                        ),
                        child: Center(child: Text('-', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                      )
                      ),
                   ),

                InkWell(
                  onTap: (){
                    flag=3;
                  },
                  child: Container(
                            // Third operator (*)
                                           width: 50,
                                           height: 50,
                                              decoration: BoxDecoration(
                                               color: Color(0xFF00BFA5),
                                             borderRadius: BorderRadius.circular(10),
                                             boxShadow:[
                             BoxShadow(
                                          color: Colors.grey,
                                               blurRadius: 4,
                                              )
                                           ]
                                         ),
                                       child: Center(child: Text('*', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                                       ),
                                       ),
                          ),
                ),
                  InkWell(
                    onTap: (){
                      flag=4;
                    },
                    child: Container(
                      // fourth operator /
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow:[
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 4,
                            )
                          ] ),
                      child: Center(child: Text('/', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      ),
                    ),
                  ),
              ],
               ),
            SizedBox(
                  width: 20,
                  height: 20,
                ),
                // Calculate button

        ElevatedButton(onPressed: (){
                    int no1 = int.parse(numb1.text);
                    int no2 = int.parse(numb2.text);
                     if(flag ==1){
                       result = "${no1 + no2 }";
                     } else if ( flag == 2){
                       if(no1 > no2){
                       result = "${no1 - no2}";
                     }else{
                       result = "${no2 - no1}";
                    } }
                       else if( flag ==3){
                         result = "${no1 * no2}";
                     } else if (flag ==4){
                         result = "${no1/no2}";
                       } else {
                         result = "Please choose an operator to proceed";
                     }

                       setState(() {

                       });
                       }, child: Text('Calculate',style: TextStyle(fontSize: 28),)),

            SizedBox(
              height: 50,
            ),
              Container(
                // Result container
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFFFF80AB),
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Center(child: Text('$result ', style: TextStyle(fontSize: 28),)),
              ),






        ],
      ),
        ),
      );

  }
  }
