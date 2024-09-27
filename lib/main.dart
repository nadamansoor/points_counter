import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatefulWidget {


  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int PlayerAPoints =0;

  int PlayerBPoints= 0;

  void addOnePoints(){
    print('add one point');
  }

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 126, 28, 21),
            title: const Text(
               'Points Counter',
               style: TextStyle(
                color: Colors.white
               ),
            ),
          ),

          body:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row (// column + divider + column 
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //column 1
                  SizedBox(
                    height: 480,
                    child: Column(
                      children: [
                        const Text('Player A',
                        style: TextStyle(
                          fontSize: 35,
                        )
                        ),
                      
                       Text(
                        '$PlayerAPoints',
                        style: const TextStyle(
                          fontSize: 180,
                        )
                        ),

                      // add button
                      ElevatedButton(
                        style:ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 126, 28, 21),
                          minimumSize: const Size(60, 45)
                        ),
                    
                       onPressed:(){
                        setState(() {
                           PlayerAPoints++;
                        });
                        print(PlayerAPoints);
                       },

                       child: const Text('    Add 1 point   ',
                       style: TextStyle(
                        color: Colors.white,
                        fontSize: 19
                       ),),
                    
                       
                       ),
                      //space
                      const SizedBox(
                        height: 10,
                      ),
                       //remove button 
                        ElevatedButton(
                        style:ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 126, 28, 21),
                          minimumSize: const Size(60, 45)
                        ),
                    
                        onPressed: () {
                          setState(() {
                            PlayerAPoints--;
                          });
                        },
                       child: const Text('Remove 1 point',
                       style: TextStyle(
                        color: Colors.white,
                        fontSize: 19
                       ),),
                    
                       
                       ),
                      ],
                    ),
                  ),
                  
                  //divider
                  const SizedBox(
                    height: 450,
                    child: VerticalDivider(
                      
                      color: Color.fromARGB(255, 218, 204, 204),
                      thickness: 1,
                       indent: 15,
                       endIndent:60,
                    ),
                  ),
                  
                  //Column 2
                SizedBox(
                  height: 480,
                  child: Column(
                      children: [
                        const Text('Player B',
                        style: TextStyle(
                          fontSize: 35,
                        )
                        ),
                      
                      Text('$PlayerBPoints',
                        style: const TextStyle(
                          fontSize: 180,
                        )
                        ),
                       //add button
                      ElevatedButton(
                        style:ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 126, 28, 21),
                          minimumSize: const Size(60, 45)
                        ),
                  
                        onPressed: () {
                          setState(() {
                            PlayerBPoints++;
                          });
                         
                        },
                       child: const Text('    Add 1 point   ',
                       style: TextStyle(
                        color: Colors.white,
                        fontSize: 19
                       ),),
                  
                       
                       ),
                       //space
                      const SizedBox(
                        height: 10,
                      ),
                       //remove button 
                      ElevatedButton(
                        style:ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 126, 28, 21),
                          minimumSize: const Size(60, 45)
                        ),
                  
                        onPressed: () {
                          setState(() {
                            PlayerBPoints--;
                          });
                        },
                       child: const Text('Remove 1 point',
                       style: TextStyle(
                        color: Colors.white,
                        fontSize: 19
                       ),),
                  
                       
                       ),
                      ],
                    ),
                ),
                ],
              ),
              
                SizedBox(
                  height: 60,
                  child: ElevatedButton(
                          style:ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 126, 28, 21),
                            minimumSize: const Size(60, 45)
                          ),
                    
                          onPressed: () {
                            setState(() {
                              PlayerAPoints=0;
                              PlayerBPoints=0;
                            });
                          },
                         child: const Text('     Reset     ',
                         style: TextStyle(
                          color: Colors.white,
                          fontSize: 19
                         ),),
                    
                         
                         ),
                ),
                const SizedBox(
                height: 20,
              ),
          ],
          ),
        ),

        );
  }
}