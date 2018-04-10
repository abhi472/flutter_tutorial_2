import 'package:flutter/material.dart';

void main() => runApp(
    new MaterialApp(
      title: 'My app',
      home: new MyScaffold(),
    )
);

class MyApp extends StatelessWidget {
 MyApp({this.title});

 final Widget title; // fields in widget subclass are final

 @override
  Widget build(BuildContext context) {
   return new Container(
     height: 56.0, // in logical pixel
     padding: const EdgeInsets.symmetric(horizontal: 8.0),
     decoration: new BoxDecoration(color: Colors.blue[500]),

     child: new Row(
       children: <Widget>[ // <Widget> is the type of items in the list
         new IconButton(
             icon: new Icon(Icons.menu),
           tooltip: 'Navigation Menu',
           onPressed: null, // null disables the button
         ),
         new Expanded (   // Expanded expands its child to fill the available space
           child: title,
         ),
         new IconButton(
           icon: new Icon(Icons.search),
           onPressed: null,
           tooltip: 'search',
         ),
       ],
     ),
   );
 }

}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Material(
      child: new Column(
        children: <Widget>[
          new MyApp(
            title: new Text(
              'Example title',
              style: Theme.of(context).primaryTextTheme.title,
            ),
          ),
          new Expanded(
              child: new Center(
                  child: new Text(
                      'hello world'
                  ),
              ),
          ),
        ],
      ),
    );
  }
}



