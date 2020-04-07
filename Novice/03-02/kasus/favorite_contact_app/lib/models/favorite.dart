import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Favorite extends ChangeNotifier {
  List _favoriteList = [];

  List get favoriteList => _favoriteList;

  addToFavorite(var item) {
    item.setFavorite = !item.favorite;
    _favoriteList.add(item);
    notifyListeners();
  }

  removeFromFavorite(var item) {
    item.setFavorite = !item.favorite;
    _favoriteList.remove(item);
    notifyListeners();
  }
}
