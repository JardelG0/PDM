import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  List<Item> items = [];

  HomePage() {
    items.add(Item(nome: 'Arroz', chek: true));
    items.add(Item(nome: 'Feijão', chek: true));
    items.add(Item(nome: 'Farinha', chek: true));
  }
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HOME'),
        actions: <Widget>[
          Icon(Icons.local_cafe_rounded),
          Padding(padding: EdgeInsets.all(6)),
        ],
      ),
      drawer: Drawer(
        
      ),
      body: ListView.builder(
        itemCount: widget.items.length,
        itemBuilder: (BuildContext context, int index) {
          final item = widget.items[index]; //para evitar a repeticao
          return CheckboxListTile(
            title: Text(item.nome),
            key: Key(item.nome),
            value: item.chek,
            onChanged: (value) {},
          );
        },
      ),
    );
  }
}

class Item {
  String nome;
  bool chek;

  Item({required this.nome, required this.chek});
}
