
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _conteo =0;
  final _textStyle = new TextStyle(fontSize: 35, fontWeight: FontWeight.bold);
  final _textStyleCounter = new TextStyle(fontSize: 35, color: Colors.grey);
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Counter App',
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Counter App'),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              
            Text('Número de Clicks:',style: _textStyle),
            Text('$_conteo',style: _textStyleCounter), //$ interpolacion string
            _createButtons()
              
            ],
          ),
        ),
      ),
    );
  }

  Widget _createButtons(){

  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      //CupertinoButton(child: Icon(Icons.exposure_zero), onPressed: _reset),
      CupertinoButton.filled(child: Icon(Icons.rotate_right), onPressed: _reset,disabledColor: CupertinoColors.activeBlue,padding: EdgeInsets.symmetric(horizontal: 30)),
      SizedBox(width: 40.0),
      CupertinoButton.filled(child: Icon(Icons.add), onPressed: _agregar,disabledColor: CupertinoColors.activeBlue,padding: EdgeInsets.symmetric(horizontal: 30)),
      SizedBox(width: 40.0),
      CupertinoButton.filled(child: Icon(Icons.remove), onPressed: _restar,disabledColor: CupertinoColors.activeBlue,padding: EdgeInsets.symmetric(horizontal: 30)),
      
      ],
  );
}


void _agregar(){
  _conteo++;
  setState(()=> _conteo );
}

void _restar(){
_conteo--;
  setState(()=> _conteo );

}

void _reset(){
  _conteo=0;
  setState(()=> _conteo);
}

}
 