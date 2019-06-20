import 'package:cartola/pages/hello_listview.dart';
import 'package:cartola/pages/hello_page1.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: ThemeData(primaryColor: Colors.white),
  home: MyApp(),
));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _msg = "Cartola";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cartola"),
      ),
      body: _buildBody(),
    );
  }

  _buildBody() {
  return Container(
    child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _text(),
          _pageView(),
          _buttons(),
        ],
      ),
  );
}

_pageView() {
  return SizedBox(
    height: 300,
    child: PageView(
      children: <Widget>[
        _img("assets/images/logo.jpg"),
        _img("assets/images/carta_louco.png")
      ],
    ),
  );
}

_buttons() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      _button("Page 1", () => _onClickPage(HelloPage1())),
      _button("ListView", () => _onClickPage(HelloListView())),
      _button("Page 3", () => _onClickPage(HelloPage1())),
    ],
  );
}

_onClickPage(Widget page) async {
  /*String s = await Navigator.push(context, MaterialPageRoute(builder: (context) => page ));
  if (s != null) {
    setState(() {
      _msg = s;
    });
  }*/
  Future<String> future = Navigator.push(context, MaterialPageRoute(builder: (context) => page ));
  future.then((s) {
    if (s != null) {
      setState((){
        _msg = s;
      });
    }
  });
}

_img(String imagem) {
  return Image.asset(
    imagem,
    fit: BoxFit.contain,
  );
}

_button(String s, Function onPressed) {
  return RaisedButton(color: Colors.blue, child: Text(s), onPressed: onPressed);
}

void _onClickOk() {
  print("Clicou no botao");
}

_text() {
  return Text(
    _msg,
    style: TextStyle(
      fontSize: 30,
      color: Colors.blue,
    ),
  );
}
}
