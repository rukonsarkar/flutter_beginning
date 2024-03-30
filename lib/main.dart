import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First App',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  List<String> studentList = [
    'Rukon',
    'Mim',
    'Konika',
    'Aklima',
    'Liza',
    'Riya',
  ];

  MySnackBar(message, context) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  int bottomIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Local Market',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: false,
        titleSpacing: 10,
        toolbarHeight: 50,
        toolbarOpacity: 1,
        elevation: 10,
        backgroundColor: Colors.green,
        /* leading: IconButton(
          icon: Icon(Icons.menu),
          color: Colors.white,
          onPressed: () {
            MySnackBar('I am leading icon', context);
          },
        ),*/
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Are you sure?'),
                      content: Text('Do you want to exit app?'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Yes'),
                              ),
                            );
                          },
                          child: Text('Yes'),
                        ),
                        TextButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('No'),
                              ),
                            );
                          },
                          child: Text('No'),
                        )
                      ],
                    );
                  });
            },
            icon: Icon(Icons.exit_to_app),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {
              MySnackBar('I am comment', context);
            },
            icon: Icon(Icons.comment),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {
              MySnackBar('I am settings', context);
            },
            icon: Icon(Icons.settings),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {
              MySnackBar('I am search', context);
            },
            icon: Icon(Icons.search),
            color: Colors.white,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          MySnackBar('I am floating action button', context);
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.green,
        elevation: 10,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: bottomIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chats'),
          BottomNavigationBarItem(icon: Icon(Icons.update), label: 'Updates'),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Calls'),
        ],
        onTap: (int index) {
          if (index == 0) {
            MySnackBar("Chats", context);
            bottomIndex = 0;
          }
          if (index == 1) {
            MySnackBar("Updates", context);
            bottomIndex = 1;
          }
          if (index == 2) {
            MySnackBar("Calls", context);
            bottomIndex = 2;
          }
        },
      ),
      drawer: Drawer(
        // backgroundColor: Colors.deepOrange,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                accountName: Text('Rukon'),
                accountEmail: Text('frrukonsarkar@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  radius: 100,
                  backgroundImage: NetworkImage(
                      'https://th.bing.com/th/id/OIP.1MOKCrKpcoPQdr33ec-isAAAAA?rs=1&pid=ImgDetMain'),
                ),
                currentAccountPictureSize: Size(70, 70),
                onDetailsPressed: () {
                  MySnackBar('This is my profile', context);
                },
              ),
            ),
            ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home),
              onTap: () {
                MySnackBar('This is home', context);
              },
            ),
            ListTile(
                title: Text('Contact'),
                leading: Icon(Icons.contact_emergency),
                onTap: () {
                  MySnackBar('This is contact', context);
                }),
            ListTile(
                title: Text('Profile'),
                leading: Icon(Icons.person),
                onTap: () {
                  MySnackBar('This is profile', context);
                }),
            ListTile(
              title: Text('Email'),
              leading: Icon(Icons.email),
              onTap: () {
                MySnackBar('This is email', context);
              },
            ),
            ListTile(
              title: Text('phone'),
              leading: Icon(Icons.phone),
              onTap: () {
                MySnackBar('This is phone', context);
              },
            ),
          ],
        ),
      ),
      endDrawer: Drawer(
        // backgroundColor: Colors.deepOrange,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                accountName: Text('Rukon'),
                accountEmail: Text('frrukonsarkar@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  radius: 100,
                  backgroundImage: NetworkImage(
                      'https://th.bing.com/th/id/OIP.1MOKCrKpcoPQdr33ec-isAAAAA?rs=1&pid=ImgDetMain'),
                ),
                currentAccountPictureSize: Size(70, 70),
                onDetailsPressed: () {
                  MySnackBar('This is my profile', context);
                },
              ),
            ),
            ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home),
              onTap: () {
                MySnackBar('This is home', context);
              },
            ),
            ListTile(
                title: Text('Contact'),
                leading: Icon(Icons.contact_emergency),
                onTap: () {
                  MySnackBar('This is contact', context);
                }),
            ListTile(
                title: Text('Profile'),
                leading: Icon(Icons.person),
                onTap: () {
                  MySnackBar('This is profile', context);
                }),
            ListTile(
              title: Text('Email'),
              leading: Icon(Icons.email),
              onTap: () {
                MySnackBar('This is email', context);
              },
            ),
            ListTile(
              title: Text('phone'),
              leading: Icon(Icons.phone),
              onTap: () {
                MySnackBar('This is phone', context);
              },
            ),
          ],
        ),
      ),

      // body
  /*
      body: Center(
          //Text & Image
          *//*  child: Text(
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
       *//*

          //Column & Row
          *//*       child: Column(
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
        ),*//*

          // Column
          *//*
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shadowColor: Colors.black,
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: Colors.orange, width: 2),
                  ),
                  textStyle:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20)),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Elevated Button'),
                    backgroundColor: Colors.green,
                    duration: Duration(seconds: 1),
                  ),
                );
              },
              child: Text('Elevated Button'),
            ),
            TextButton(
                style: TextButton.styleFrom(
                    foregroundColor: Colors.orange,
                    textStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    )),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Text Button'),
                      backgroundColor: Colors.orange,
                      duration: Duration(seconds: 1),
                    ),
                  );
                },
                child: Text('Text Button')),
            IconButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Icon Button'),
                      backgroundColor: Colors.blue,
                      duration: Duration(seconds: 1),
                    ),
                  );
                },
                icon: Icon(Icons.add_circle_outline_rounded)),
            GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('on Tab pressed'),
                    backgroundColor: Colors.green,
                    duration: Duration(seconds: 1),
                  ),
                );
              },
              onDoubleTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('on Double tab pressed'),
                    backgroundColor: Colors.green,
                    duration: Duration(seconds: 1),
                  ),
                );
              },
              onLongPress: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('on Long pressed'),
                    backgroundColor: Colors.green,
                    duration: Duration(seconds: 1),
                  ),
                );
              },
              child: Column(
                children: [Text('Add a photo'), Icon(Icons.add_a_photo)],
              ),
            ),
            InkWell(
              splashColor: Colors.orange,
              radius: 10,
              borderRadius: BorderRadius.circular(10),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('on Tab pressed'),
                    backgroundColor: Colors.green,
                    duration: Duration(seconds: 1),
                  ),
                );
              },
              onDoubleTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('on Double tab pressed'),
                    backgroundColor: Colors.green,
                    duration: Duration(seconds: 1),
                  ),
                );
              },
              onLongPress: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('on Long pressed'),
                    backgroundColor: Colors.green,
                    duration: Duration(seconds: 1),
                  ),
                );
              },
              child: Column(
                children: [Text('Add a alarm'), Icon(Icons.add_alarm_rounded)],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
           //     controller: TextEditingController(),
           //     enabled: false,
                onChanged: (value) {
              //    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Text Button'), backgroundColor: Colors.orange, duration: Duration(seconds: 1),),);
                },
                maxLength: 11,
                style: TextStyle(fontSize: 16, color: Colors.green,),
                decoration: InputDecoration(
                    hintText: 'Enter your crush name',
                    hintStyle:
                        TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    labelText: 'Crush Name',
                    labelStyle: TextStyle(
                        color: Colors.green,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(width: 2, color: Colors.green),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(width: 2, color: Colors.green),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        borderSide:
                            BorderSide(width: 1.5, color: Colors.orange)),
                    disabledBorder: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.horizontal(left: Radius.circular(10)),
                        borderSide: BorderSide(width: 1, color: Colors.grey)),
                    fillColor: Colors.green.shade50,
                    filled: true,
              *//*

          // prefix & suffix
          *//*    prefix: Column(
                    children: [
                      Icon(Icons.add),
                      Icon(Icons.phone),
                      Icon(Icons.email),
                    ],
                  ),

                  suffix: Column(
                    children: [
                      Icon(Icons.password),
                      Icon(Icons.numbers),
                      Icon(Icons.remove_red_eye),
                    ],
                  ),*//*

          // prefixIcon & suffixIcon & Container
          *//*

                  prefixIcon: Icon(Icons.person, color: Colors.green, size: 30,),
                  suffixIcon: Icon(Icons.remove_red_eye, color: Colors.red,),


                ),

              ),
            ),

            Container(
              width: 100,
              height: 100,
              child: Text('Rukon', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.red, width: 1),
             *//*

          //Border
          *//*   border: Border(
                  top: BorderSide(width: 2, color: Colors.black),
                  bottom: BorderSide(width: 2, color: Colors.red),
                  left: BorderSide(width: 2, color: Colors.blue),
                  right: BorderSide(width: 2, color: Colors.yellow),
                ),*//*

          //DecorationImage
          *//*
                image: DecorationImage(
                  image: AssetImage('images/rukon.jpg'),
                  fit: BoxFit.fill
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.9),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3)
                  )
                ]
              ),
            ),
          ],
        ),
      ),*//*

          //SingleChildScrollView
          *//*  body: SingleChildScrollView(
        child: Column(
          children: [
            Text('Rukon'),
            Text('Rukon'),
            Text('Rukon'),
            Text('Rukon'),
            Text('Rukon'),
            Text('Rukon'),
            Text('Rukon'),
            Text('Rukon'),
            Text('Rukon'),
          ],
        ),
      )*//*

          //ListView
          *//*  body: ListView(
        children: [
          Text('Rukon', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),),
          Text('Rukon', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),),
          Text('Rukon', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),),
          Text('Rukon', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),),
          Text('Rukon', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),),
          Text('Rukon', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),),
          Text('Rukon', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),),
          Text('Rukon', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),),
          Text('Rukon', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),),
          Text('Rukon', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),),
          Text('Rukon', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),),
          Text('Rukon', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),),
          Text('Rukon', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),),
          Text('Rukon', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),),
          Text('Rukon', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),),
          Text('Rukon', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),),
          Text('Rukon', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),),
          Text('Rukon', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),),
          Text('Rukon', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),),
          Text('Rukon', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),),
          Text('Rukon', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),),
          Text('Rukon', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),),
          Text('Rukon', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),),
          Text('Rukon', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),),
          Text('Rukon', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),),
          Text('Rukon', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),),
          Text('Rukon', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),),
          Text('Rukon', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),),
          Text('Rukon', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),),
          Text('Rukon', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),),

        ],
      ),*//*

          //ListView.builder
          *//*  body: ListView.builder(
          itemCount: 50,
          itemBuilder: (context, index){

        return Text('${index+1}', style: TextStyle(fontSize: 20),);
      }),*//*

          //ListView.builder
          *//* body: ListView.builder(
          itemCount: studentList.length,
          itemBuilder: (context, index) {
            return Text(studentList[index]);
          }),*//*

          //ListView.builder
          *//* body: ListView.builder(
          itemCount: studentList.length,
          itemBuilder: (context, index) {
            return Padding(padding: EdgeInsets.all(16),
            child: Text(studentList[index]));
          }),*//*

          //ListView.separated
          *//*  body: ListView.separated(
          itemBuilder: (context, index){
            return Center(child: Text(studentList[index]));
          },
          separatorBuilder: (context, index){
            return Divider(
              color: Colors.orange,
              height: 20,
              thickness: 2,
              endIndent: 20,
              indent: 20,
            );
          },
          itemCount: studentList.length),*//*

          //GridView
          *//*body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          Text('Rukon', style: TextStyle(color: Colors.white, backgroundColor: Colors.green),),
          Text('Mim'),
          Text('Konika'),
          Text('Riya'),
          Text('Aklima'),
          Text('Liza'),
        ],
      ),*//*

          //SingleChildScrollView & ListView.separated & GridView & Container
          *//* body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.separated(
                shrinkWrap: true,
                primary: false,
                itemBuilder: (context, index) {
                  return Center(child: Text(studentList[index]));
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    color: Colors.green,
                    height: 20,
                    thickness: 2,
                    endIndent: 20,
                    indent: 20,
                  );
                },
                itemCount: studentList.length),
            GridView.builder(
                itemCount: 100,
                shrinkWrap: true,
                primary: false,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 10),
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: Column(
                                children: [
                                  Text(
                                    'Roll - ${index + 1}',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  );
                }),
          ],
        ),
      ),*//*
          ),

      */

      // Container
   /*   body: Container(
        height: 200,
        width: 200,
        child: Text('Rukon', style: TextStyle(color: Colors.white),),
        alignment: Alignment.center,
        margin: EdgeInsets.all(50),
        padding: EdgeInsets.all(40),
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.red, width: 2),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 20,
              spreadRadius: 5,
            )
          ]
        ),
      ),*/

      //Row
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(height: 100, width: 100, child: Image.network('https://th.bing.com/th/id/OIP.1MOKCrKpcoPQdr33ec-isAAAAA?rs=1&pid=ImgDetMain'),),
          Container(height: 100, width: 100, child: Image.network('https://th.bing.com/th/id/OIP.1MOKCrKpcoPQdr33ec-isAAAAA?rs=1&pid=ImgDetMain'),),
          Container(height: 100, width: 100, child: Image.network('https://th.bing.com/th/id/OIP.1MOKCrKpcoPQdr33ec-isAAAAA?rs=1&pid=ImgDetMain'),),
        ],
      ),

    );
  }
}
