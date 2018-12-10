import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './custom_button.dart';

void main() => runApp(MyApp());

// GridView Example
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final title = 'Grid List';

//     return MaterialApp(
//       title: title,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text(title),
//         ),
//         body: GridView.count(
//           // Create a grid with 2 columns. If you change the scrollDirection to
//           // horizontal, this would produce 2 rows.
//           crossAxisCount: 3,
//           // Generate 100 Widgets that display their index in the List
//           children: List.generate(100, (index) {
//             return Center(
//               child: Text(
//                 'Item $index',
//                 style: Theme.of(context).textTheme.headline,
//               ),
//             );
//           }),
//         ),
//       ),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    String _lakeName = 'Gunung Reng Lake';

    Widget titleSection = Container(
      padding: const EdgeInsets.all(32.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    _lakeName,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Jeli, Kelantan',
                  style: TextStyle(
                    color: Colors.green[400],
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          Text('41'),
        ],
      ),
    );

    Column buildButtonColumn(IconData icon, String label) {
      Color color = Theme.of(context).primaryColor;

      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(icon, color: color),
          Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          buildButtonColumn(Icons.call, 'CALL'),
          buildButtonColumn(Icons.near_me, 'ROUTE'),
          buildButtonColumn(Icons.share, 'SHARE')
        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32.0),
      child: Text(
        '''
        Gunung Reng is the best place in the world
        ''',
        softWrap: true,
      ),
    );

    Widget imageSection =  Image.asset(
          'images/lake.jpg',
          height: 240.0,
          fit: BoxFit.cover,
    );

    Widget myDrawer = Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Column(
              children: <Widget>[
                Image.asset(
                  'images/lake.jpg',
                  height: 89.0,
                  width: 500.0,
                  fit: BoxFit.cover,
                ),
                RaisedButton(
                  color: Colors.black,
                  textColor: Colors.white,
                  child: Text('Ayamas'),
                  onPressed: () {
                    print('ek eleh');
                  },
                )
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.indigo,
            ),
            duration: new Duration(hours: 0, minutes: 0, seconds: 10),
          ),
          ListTile(
            title: Text('Hello Afiq'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Coded with flutter'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          RaisedButton(
            child: Text('Afiq@2018 Flutter'),
            onPressed: () {},
          ),
        ],
      ),
    );

    _buttonPressed() {
      print('heyoo');
    }

    return MaterialApp(
      title: 'Flutter App Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Reng Lake'),
        ),
        body: ListView(
          children: [
            imageSection,
            titleSection,
            buttonSection,
            textSection,
            
          ],
        ),
        floatingActionButton: CustomButton(
          'Hello',
        ),
        backgroundColor: Colors.white,
        drawer: myDrawer,
        persistentFooterButtons: <Widget>[
          Icon(Icons.apps, color: Colors.purple),
          Icon(Icons.mail, color: Colors.purple),
          Icon(Icons.more_horiz, color: Colors.purple),
        ],
      ),
    );

  }

}

// class MyAppPage extends StatefulWidget {
//   @override
//   _MyAppPageState createState() => _MyAppPageState();
// }

// class _MyAppPageState extends State<MyAppPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
      
//     );
//   }
// }
