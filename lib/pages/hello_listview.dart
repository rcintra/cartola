
import 'package:flutter/material.dart';

class HelloListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View"),
      ),
      body: Container(
        color: Colors.white,
        child: _listView(),
        ),
    );
  }

  _listView() {
    var jogadores = [
      "jogador1",
      "jogador2",
      "jogador3",
    ];

    return ListView.builder(
      itemCount: jogadores.length,
      itemBuilder: (context, idx) {
        return Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black45
            ),
            child: Text(jogadores[idx])
            )
        );
    });

  }
}