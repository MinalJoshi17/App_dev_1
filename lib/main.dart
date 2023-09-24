import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white70,
        useMaterial3: true,
      ),
      home: const MyHomePage(title: ''),
    );
  }
}
void _subscribe() {
  print('Subscribe');
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            width: 360,
            height: 720,
            color: Colors.white,
            child: const Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Your Plan', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
                      Row(
                        children: [
                          Text('Change', style: TextStyle(fontSize: 20)),
                          Icon(Icons.arrow_circle_right_outlined),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 0),
                  child: Row(
                    children: [
                      Text('\________________________________________________', style: TextStyle(color: Colors.grey),)
                    ],
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 10),
                      child: Row(
                        children: [Text('Premium Offer', style: TextStyle(fontSize: 20),)],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 0),
                      child: Row(
                        children: [
                          Text('\$'), // Add a Text widget with the dollar sign
                          Text('9.99', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
                          Text('/month')
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 0),
                      child: Row(
                        children: [
                          Text('Cancel Anytime'),
                          Text('Offer terms', style: TextStyle(color: Colors.lightBlueAccent),),
                          Text('apply'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 0),
                      child: Row(
                        children: [
                          Text('\________________________________________________', style: TextStyle(color: Colors.grey),)
                        ],
                      ),
                    ),
                    // Add TextField widget here
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 10),
                      child: Row(
                        children: [
                          Text('Card Number', style: TextStyle(color: Colors.grey),)
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10,left: 20,right:20),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Card Number',
                          border: OutlineInputBorder(
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 25,right:40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Expiry Date', style: TextStyle(color: Colors.grey),),
                          Text('Security Code', style: TextStyle(color: Colors.grey),),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween, // You can adjust the alignment as needed
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10, left: 20, right: 20), // Adjust the padding as needed
                          child: SizedBox(
                            width: 120, // Adjust the width as needed
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'MM/YY',
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10, left: 10, right: 20), // Adjust the padding as needed
                          child: SizedBox(
                            width: 120, // Adjust the width as needed
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'CVV',
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top:25,left: 25),
                      child: Row(
                        children: [
                          Text('Zip Code',style:TextStyle(color:Colors.grey),)
                        ],
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(top: 10,left: 20,right:20),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter Zip Code',
                          border: OutlineInputBorder(
                          ),
                        ),
                      ),
                    ),

// Existing code ...

// Add a SizedBox for spacing
                    SizedBox(height: 20),

// Subscribe Button
                    SizedBox(
                      height: 65,
                      width: 500,
                      child: Padding(
                        padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                          child: ElevatedButton(
                            onPressed: _subscribe,

                            child: Text('Subscribe',style: TextStyle(color: Colors.black,fontSize: 40),),
                          ),



                      ),
                    ),

// End of existing code ...

                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
