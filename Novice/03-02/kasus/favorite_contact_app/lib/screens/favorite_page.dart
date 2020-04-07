import 'package:favorite_contact/models/model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Contact',
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
                color: Colors.white)),
        centerTitle: true,
        elevation: 5.0,
        backgroundColor: Colors.purple[900],
      ),
      body: Consumer<Favorite>(
        builder: (context, favorite, _) => ListView.builder(
            itemCount: favorite.favoriteList.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      favorite.favoriteList[index].picture.thumbnail),
                ),
                title: Text(
                    '${favorite.favoriteList[index].name.first} ${favorite.favoriteList[index].name.last}'),
                subtitle: Text(favorite.favoriteList[index].phone),
                trailing: IconButton(
                  icon: Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
                  onPressed: () {
                    favorite.removeFromFavorite(favorite.favoriteList[index]);
                  },
                ),
              );
            }),
      ),
    );
  }
}
