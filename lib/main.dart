import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'First App',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Local Market',
          style: TextStyle(
          color: Colors.white,
          ),
        ),
        leading: Icon(Icons.menu, color: Colors.white,),

        actions: [
          IconButton(onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Money has been sent successfully!'),),);
          }, icon: Icon(Icons.add), color: Colors.white,),
          IconButton(onPressed: (){
            showDialog(context: context, builder: (context) {
              return AlertDialog(
                title: Text('Are you sure?'),
                content: Text('Do you want to exit app?'),
                actions: [
                  TextButton(onPressed: (){
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Yes'),),);
                  }, child: Text('Yes'),),
                  TextButton(onPressed: (){
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('No'),),);
                  }, child: Text('No'),)
                ],
              );
            });
          }, icon: Icon(Icons.exit_to_app), color: Colors.white,)
        ],
      ),

      body: Center(
        /*  child: Text(
          'Hey this is Rukon, I have started new flutter course. I want build my dream app with flutter',
          maxLines: 2,
          style: TextStyle(
              color: Colors.white,
              backgroundColor: Colors.green,
              fontSize: 40,
              fontWeight: FontWeight.w900,
              overflow: TextOverflow.ellipsis),
        ),


        // child: Icon(Icons.android, size: 100, color: Colors.green,),
        child: Image.network(
          'https://th.bing.com/th/id/OIP.1MOKCrKpcoPQdr33ec-isAAAAA?rs=1&pid=ImgDetMain',
          width: 200,
          height: 300,
          fit: BoxFit.scaleDown,
        ),
        // child: Image.asset('images/rukon.jpg', width: 200, height: 300, fit: BoxFit.scaleDown,),
       */

        /*       child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Hello'),
            Text('World From Rukon'),
            Text('and From'),
            Text('Rukon'),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  children: [
                    Icon(Icons.date_range),
                    Text('Data '),
                  ],
                ),
                Text('29-03-2024'),
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.lock_clock_outlined),
                        Text('Time'),
                      ],
                    ),

                    Text('7:44pm'),
                  ],
                )
              ],
            )
          ],
        ),*/

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Elevated Button'),),);
            }, child: Text('Elevated Button'))
          ],
        ),

      ),
    );
  }
}
