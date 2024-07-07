import 'package:flutter/material.dart';
import 'package:my_apps_gallery/constants.dart';

class MyAppCard extends StatefulWidget {
  final String appName, appIntro, appDescription, appIconImagePath, appImagePath, appURL;
  const MyAppCard({
    required this.appName, 
    required this.appIntro, 
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
  bool _expandIntro = false;
  bool _expandDesc = false;
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          child: Column(
            children : <Widget> [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(widget.appImagePath, height:200, width:200 ),
              ),
              //---- App Name
              Text(widget.appName, style: myHeaderTextStyle,),

              //---- Intro
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                    onTap: (){setState(() {
                      _expandDesc = false;
                      _expandIntro = !_expandIntro;  // toggle expand
                    });},
                    child: 
                    // Text (widget.appIntro)
                      _expandIntro? SingleChildScrollView(child: Text (widget.appIntro, style: mySmallTextStyle))
                              : Text (overflow: TextOverflow.ellipsis , widget.appIntro, style: mySmallTextStyle,)
                ),
              ),

              const SizedBox(height:40),
              //---- App Description
              const Text("Mobile App Details:", style: mySubHeaderTextStyle,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: (){setState(() {
                    _expandIntro = false;
                    _expandDesc = !_expandDesc;  // toggle expand
                  });},
                  child: 
                  // Text (widget.appDescription)
                    _expandDesc? Text (widget.appDescription, style: myBodyTextStyle)
                            : Text (overflow: TextOverflow.ellipsis , widget.appDescription, )
                            ),
              ),
          ]),
        ),
      ),
    );
  }
}