import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('img/interieur.png'),
            fit: BoxFit.cover
          )
        ),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:[
            Container(
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.height * 0.15,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('img/logo.png'),
                      fit: BoxFit.fitHeight
                  )
              ),
            ),
            Container(
              padding: EdgeInsets.only(top:MediaQuery.of(context).size.height * 0.1),
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width * 0.9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
              height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 0.9,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Welcome To Tesla",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold, fontSize: MediaQuery.of(context).size.height * 0.05),),
                        Text("Aereis carentibus figmentis consiliis tendere quam quam minima regem aeternitati",textAlign: TextAlign.center,style: TextStyle(color:Color.fromARGB(255, 255, 255, 255), fontSize: MediaQuery.of(context).size.height * 0.03),)
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute<void>(
                              builder:(BuildContext context) {
                                return Accueil();
                              }));
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 183, 0, 0),
                        borderRadius: BorderRadius.all(Radius.circular(60))
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Get Started",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold, fontSize: MediaQuery.of(context).size.height * 0.04),),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),

      ),
    );
  }
}
class Accueil extends StatefulWidget {
  const Accueil({Key? key}) : super(key: key);
  @override
  State<Accueil> createState() => AccueilState();
}

class AccueilState extends State<Accueil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.05),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
           color:Color.fromARGB(255,246,245,250)
        ),
        child:Column(
          children:[
Container(
  height: MediaQuery.of(context).size.height*0.1,
  width: MediaQuery.of(context).size.width*0.95,
  child:Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
Container(
  height: MediaQuery.of(context).size.height*0.055,
  width: MediaQuery.of(context).size.height*0.055,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(60)),
      image: DecorationImage(
          image: AssetImage('img/profil.jpeg'),
          fit: BoxFit.cover
      )
  ),
),
      Container(
        height: MediaQuery.of(context).size.height*0.07,
        width: MediaQuery.of(context).size.height*0.17,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('364',style: TextStyle(fontWeight: FontWeight.bold,fontSize:MediaQuery.of(context).size.height*0.025 ),),
            Text('USD',style:TextStyle(fontSize:MediaQuery.of(context).size.height*0.025 )),
            Container(
              decoration: BoxDecoration(
                color:Color.fromARGB(255, 183, 0, 0),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              height: MediaQuery.of(context).size.height*0.055,
              width: MediaQuery.of(context).size.height*0.055,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('+', style: TextStyle(color:Colors.white,fontSize: MediaQuery.of(context).size.height*0.04),)
                ],
              ),
            )
          ],
        ),
      )
    ],
  ),
),
            Container(
              margin: EdgeInsets.only(top:MediaQuery.of(context).size.height *0.02),
              height: MediaQuery.of(context).size.height *0.08,
              width: MediaQuery.of(context).size.width * 0.95,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 4,
                      offset: Offset(1, 2), // Shadow position
                    ),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Color.fromARGB(255, 255, 255, 255)
              ),
            ),
            Container(
              margin: EdgeInsets.only(top:MediaQuery.of(context).size.height *0.02),
              height: MediaQuery.of(context).size.height *0.08,
              width: MediaQuery.of(context).size.width * 0.95,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Vehicule available',style: TextStyle(fontSize:MediaQuery.of(context).size.height *0.035, fontWeight: FontWeight.bold),),
                  Text('Most popular',style: TextStyle(fontSize:MediaQuery.of(context).size.height *0.025, color:Color.fromARGB(255, 183, 0, 0), ),)
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top:MediaQuery.of(context).size.height *0.02),
              height: MediaQuery.of(context).size.height *0.63,
              width: MediaQuery.of(context).size.width * 0.95,
              child: ListView(
                padding: EdgeInsets.all(0),
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height *0.3,
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: (){

                          },
                          child: Container(
                            padding: EdgeInsets.all(MediaQuery.of(context).size.height *0.015),
                            height: MediaQuery.of(context).size.height *0.25,
                            width: MediaQuery.of(context).size.width * 0.45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 4,
                                    offset: Offset(1, 2), // Shadow position
                                  ),]
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                    height: MediaQuery.of(context).size.height *0.1,
                                    width: MediaQuery.of(context).size.height *0.3,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('img/teslablue.png'),
                                          fit: BoxFit.fitWidth
                                      )
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text('Model S', textAlign: TextAlign.left,style: TextStyle(fontWeight: FontWeight.bold,fontSize:MediaQuery.of(context).size.height *0.025 ),)
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text('Start from ', textAlign: TextAlign.left,style: TextStyle(fontSize:MediaQuery.of(context).size.height *0.02 ),),
                                    Text('162.24 €', textAlign: TextAlign.left,style: TextStyle(fontWeight: FontWeight.bold,fontSize:MediaQuery.of(context).size.height *0.02 ),)
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){

                          },
                          child: Container(
                            padding: EdgeInsets.all(MediaQuery.of(context).size.height *0.015),
                            height: MediaQuery.of(context).size.height *0.25,
                            width: MediaQuery.of(context).size.width * 0.45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 4,
                                    offset: Offset(1, 2), // Shadow position
                                  ),]
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  height: MediaQuery.of(context).size.height *0.1,
                                  width: MediaQuery.of(context).size.height *0.3,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('img/teslablue.png'),
                                          fit: BoxFit.fitWidth
                                      )
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text('Model S', textAlign: TextAlign.left,style: TextStyle(fontWeight: FontWeight.bold,fontSize:MediaQuery.of(context).size.height *0.025 ),)
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text('Start from ', textAlign: TextAlign.left,style: TextStyle(fontSize:MediaQuery.of(context).size.height *0.02 ),),
                                    Text('162.24 €', textAlign: TextAlign.left,style: TextStyle(fontWeight: FontWeight.bold,fontSize:MediaQuery.of(context).size.height *0.02 ),)
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )

                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height *0.3,
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: (){

                          },
                          child: Container(
                            padding: EdgeInsets.all(MediaQuery.of(context).size.height *0.015),
                            height: MediaQuery.of(context).size.height *0.25,
                            width: MediaQuery.of(context).size.width * 0.45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 4,
                                    offset: Offset(1, 2), // Shadow position
                                  ),]
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  height: MediaQuery.of(context).size.height *0.1,
                                  width: MediaQuery.of(context).size.height *0.3,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('img/teslablue.png'),
                                          fit: BoxFit.fitWidth
                                      )
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text('Model S', textAlign: TextAlign.left,style: TextStyle(fontWeight: FontWeight.bold,fontSize:MediaQuery.of(context).size.height *0.025 ),)
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text('Start from ', textAlign: TextAlign.left,style: TextStyle(fontSize:MediaQuery.of(context).size.height *0.02 ),),
                                    Text('162.24 €', textAlign: TextAlign.left,style: TextStyle(fontWeight: FontWeight.bold,fontSize:MediaQuery.of(context).size.height *0.02 ),)
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){

                          },
                          child: Container(
                            padding: EdgeInsets.all(MediaQuery.of(context).size.height *0.015),
                            height: MediaQuery.of(context).size.height *0.25,
                            width: MediaQuery.of(context).size.width * 0.45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 4,
                                    offset: Offset(1, 2), // Shadow position
                                  ),]
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  height: MediaQuery.of(context).size.height *0.1,
                                  width: MediaQuery.of(context).size.height *0.3,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('img/teslablue.png'),
                                          fit: BoxFit.fitWidth
                                      )
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text('Model S', textAlign: TextAlign.left,style: TextStyle(fontWeight: FontWeight.bold,fontSize:MediaQuery.of(context).size.height *0.025 ),)
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text('Start from ', textAlign: TextAlign.left,style: TextStyle(fontSize:MediaQuery.of(context).size.height *0.02 ),),
                                    Text('162.24 €', textAlign: TextAlign.left,style: TextStyle(fontWeight: FontWeight.bold,fontSize:MediaQuery.of(context).size.height *0.02 ),)
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )

                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height *0.3,
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: (){

                          },
                          child: Container(
                            padding: EdgeInsets.all(MediaQuery.of(context).size.height *0.015),
                            height: MediaQuery.of(context).size.height *0.25,
                            width: MediaQuery.of(context).size.width * 0.45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 4,
                                    offset: Offset(1, 2), // Shadow position
                                  ),]
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  height: MediaQuery.of(context).size.height *0.1,
                                  width: MediaQuery.of(context).size.height *0.3,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('img/teslablue.png'),
                                          fit: BoxFit.fitWidth
                                      )
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text('Model S', textAlign: TextAlign.left,style: TextStyle(fontWeight: FontWeight.bold,fontSize:MediaQuery.of(context).size.height *0.025 ),)
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text('Start from ', textAlign: TextAlign.left,style: TextStyle(fontSize:MediaQuery.of(context).size.height *0.02 ),),
                                    Text('162.24 €', textAlign: TextAlign.left,style: TextStyle(fontWeight: FontWeight.bold,fontSize:MediaQuery.of(context).size.height *0.02 ),)
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){

                          },
                          child: Container(
                            padding: EdgeInsets.all(MediaQuery.of(context).size.height *0.015),
                            height: MediaQuery.of(context).size.height *0.25,
                            width: MediaQuery.of(context).size.width * 0.45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 4,
                                    offset: Offset(1, 2), // Shadow position
                                  ),]
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  height: MediaQuery.of(context).size.height *0.1,
                                  width: MediaQuery.of(context).size.height *0.3,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('img/teslablue.png'),
                                          fit: BoxFit.fitWidth
                                      )
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text('Model S', textAlign: TextAlign.left,style: TextStyle(fontWeight: FontWeight.bold,fontSize:MediaQuery.of(context).size.height *0.025 ),)
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text('Start from ', textAlign: TextAlign.left,style: TextStyle(fontSize:MediaQuery.of(context).size.height *0.02 ),),
                                    Text('162.24 €', textAlign: TextAlign.left,style: TextStyle(fontWeight: FontWeight.bold,fontSize:MediaQuery.of(context).size.height *0.02 ),)
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )

                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),

      ),
    );
  }
}
