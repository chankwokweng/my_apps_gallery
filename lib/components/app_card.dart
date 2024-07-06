import 'package:flutter/material.dart';

class MyAppCard extends StatefulWidget {
  final String appName, appDescription, appIconImagePath, appImagePath, appURL;
  const MyAppCard({
    required this.appName, 
    required this.appDescription, 
    required this.appIconImagePath, 
    required this.appImagePath, 
    required this.appURL, 
    super.key
    });

  @override
  State<MyAppCard> createState() => _MyAppCardState();
}

class _MyAppCardState extends State<MyAppCard> {
  bool _expand = false;
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children : <Widget> [
            Image.network(widget.appImagePath, ),
            ListTile (
              title: Text(widget.appName),
              subtitle: GestureDetector(
                onTap: (){setState(() {
                  _expand = !_expand;  // toggle expand
                });},
                child: 
                // Text (widget.appDescription)
                  _expand? Text (widget.appDescription)
                          : Text (overflow: TextOverflow.ellipsis , widget.appDescription)
            )),
        ]),
      ),
    );
  }
}