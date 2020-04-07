import 'package:flutter/material.dart';
import 'package:favorite_contact/models/model.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List data = [];

  Future<dynamic> _getData() async {
    var response = await http.get(
        'https://randomuser.me/api/?results=100&inc=name,nat,email,phone,picture&nat=au,br,ca,ch,de&format=PrettyJSON&noinfo');
    User user = User.fromJson(response.body);
    data = user.results;

    return data;
  }

  Future<dynamic> _getExistingData() async {
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact List',
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
                color: Colors.white)),
        centerTitle: true,
        elevation: 5.0,
        backgroundColor: Colors.purple[900],
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.favorite),
            iconSize: 25.0,
            onPressed: () {
              Navigator.pushNamed(context, '/favorite');
            },
          )
        ],
      ),
      body: Container(
        child: FutureBuilder(
          future: data.isEmpty ? _getData() : _getExistingData(),
          builder: (context, snapshot) {
            return snapshot.hasData
                ? buildList(
                    snapshot,
                  )
                : Center(
                    child: CircularProgressIndicator(),
                  );
          },
        ),
      ),
    );
  }

  Widget buildList(AsyncSnapshot<dynamic> snapshot) {
    return Consumer<Favorite>(
      builder: (context, favorite, _) => ListView.builder(
          itemCount: snapshot.data.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage:
                    NetworkImage(snapshot.data[index].picture.thumbnail),
              ),
              title: Text(
                  '${snapshot.data[index].name.first} ${snapshot.data[index].name.last}'),
              subtitle: Text(snapshot.data[index].phone),
              trailing: IconButton(
                icon: Icon(
                  snapshot.data[index].favorite
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color: snapshot.data[index].favorite ? Colors.red : null,
                ),
                onPressed: () {
                  favorite.addToFavorite(snapshot.data[index]);
                },
              ),
            );
          }),
    );
  }
}
