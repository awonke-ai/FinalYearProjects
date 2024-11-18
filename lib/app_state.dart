import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _Favorites = prefs
              .getStringList('ff_Favorites')
              ?.map((path) => path.ref)
              .toList() ??
          _Favorites;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  int _quantity = 1;
  int get quantity => _quantity;
  set quantity(int value) {
    _quantity = value;
  }

  List<String> _foodname = [];
  List<String> get foodname => _foodname;
  set foodname(List<String> value) {
    _foodname = value;
  }

  void addToFoodname(String value) {
    foodname.add(value);
  }

  void removeFromFoodname(String value) {
    foodname.remove(value);
  }

  void removeAtIndexFromFoodname(int index) {
    foodname.removeAt(index);
  }

  void updateFoodnameAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    foodname[index] = updateFn(_foodname[index]);
  }

  void insertAtIndexInFoodname(int index, String value) {
    foodname.insert(index, value);
  }

  List<double> _foodprices = [];
  List<double> get foodprices => _foodprices;
  set foodprices(List<double> value) {
    _foodprices = value;
  }

  void addToFoodprices(double value) {
    foodprices.add(value);
  }

  void removeFromFoodprices(double value) {
    foodprices.remove(value);
  }

  void removeAtIndexFromFoodprices(int index) {
    foodprices.removeAt(index);
  }

  void updateFoodpricesAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    foodprices[index] = updateFn(_foodprices[index]);
  }

  void insertAtIndexInFoodprices(int index, double value) {
    foodprices.insert(index, value);
  }

  List<String> _foodimg = [];
  List<String> get foodimg => _foodimg;
  set foodimg(List<String> value) {
    _foodimg = value;
  }

  void addToFoodimg(String value) {
    foodimg.add(value);
  }

  void removeFromFoodimg(String value) {
    foodimg.remove(value);
  }

  void removeAtIndexFromFoodimg(int index) {
    foodimg.removeAt(index);
  }

  void updateFoodimgAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    foodimg[index] = updateFn(_foodimg[index]);
  }

  void insertAtIndexInFoodimg(int index, String value) {
    foodimg.insert(index, value);
  }

  List<int> _foodquantity = [];
  List<int> get foodquantity => _foodquantity;
  set foodquantity(List<int> value) {
    _foodquantity = value;
  }

  void addToFoodquantity(int value) {
    foodquantity.add(value);
  }

  void removeFromFoodquantity(int value) {
    foodquantity.remove(value);
  }

  void removeAtIndexFromFoodquantity(int index) {
    foodquantity.removeAt(index);
  }

  void updateFoodquantityAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    foodquantity[index] = updateFn(_foodquantity[index]);
  }

  void insertAtIndexInFoodquantity(int index, int value) {
    foodquantity.insert(index, value);
  }

  double _totalprice = 0.0;
  double get totalprice => _totalprice;
  set totalprice(double value) {
    _totalprice = value;
  }

  List<String> _ItemsOrdered = [];
  List<String> get ItemsOrdered => _ItemsOrdered;
  set ItemsOrdered(List<String> value) {
    _ItemsOrdered = value;
  }

  void addToItemsOrdered(String value) {
    ItemsOrdered.add(value);
  }

  void removeFromItemsOrdered(String value) {
    ItemsOrdered.remove(value);
  }

  void removeAtIndexFromItemsOrdered(int index) {
    ItemsOrdered.removeAt(index);
  }

  void updateItemsOrderedAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    ItemsOrdered[index] = updateFn(_ItemsOrdered[index]);
  }

  void insertAtIndexInItemsOrdered(int index, String value) {
    ItemsOrdered.insert(index, value);
  }

  List<DocumentReference> _cart = [];
  List<DocumentReference> get cart => _cart;
  set cart(List<DocumentReference> value) {
    _cart = value;
  }

  void addToCart(DocumentReference value) {
    cart.add(value);
  }

  void removeFromCart(DocumentReference value) {
    cart.remove(value);
  }

  void removeAtIndexFromCart(int index) {
    cart.removeAt(index);
  }

  void updateCartAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    cart[index] = updateFn(_cart[index]);
  }

  void insertAtIndexInCart(int index, DocumentReference value) {
    cart.insert(index, value);
  }

  List<String> _cartItems = [];
  List<String> get cartItems => _cartItems;
  set cartItems(List<String> value) {
    _cartItems = value;
  }

  void addToCartItems(String value) {
    cartItems.add(value);
  }

  void removeFromCartItems(String value) {
    cartItems.remove(value);
  }

  void removeAtIndexFromCartItems(int index) {
    cartItems.removeAt(index);
  }

  void updateCartItemsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    cartItems[index] = updateFn(_cartItems[index]);
  }

  void insertAtIndexInCartItems(int index, String value) {
    cartItems.insert(index, value);
  }

  List<DocumentReference> _Favorites = [];
  List<DocumentReference> get Favorites => _Favorites;
  set Favorites(List<DocumentReference> value) {
    _Favorites = value;
    prefs.setStringList('ff_Favorites', value.map((x) => x.path).toList());
  }

  void addToFavorites(DocumentReference value) {
    Favorites.add(value);
    prefs.setStringList('ff_Favorites', _Favorites.map((x) => x.path).toList());
  }

  void removeFromFavorites(DocumentReference value) {
    Favorites.remove(value);
    prefs.setStringList('ff_Favorites', _Favorites.map((x) => x.path).toList());
  }

  void removeAtIndexFromFavorites(int index) {
    Favorites.removeAt(index);
    prefs.setStringList('ff_Favorites', _Favorites.map((x) => x.path).toList());
  }

  void updateFavoritesAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    Favorites[index] = updateFn(_Favorites[index]);
    prefs.setStringList('ff_Favorites', _Favorites.map((x) => x.path).toList());
  }

  void insertAtIndexInFavorites(int index, DocumentReference value) {
    Favorites.insert(index, value);
    prefs.setStringList('ff_Favorites', _Favorites.map((x) => x.path).toList());
  }

  String _address = 'Select your location';
  String get address => _address;
  set address(String value) {
    _address = value;
  }

  String _notes = '';
  String get notes => _notes;
  set notes(String value) {
    _notes = value;
  }

  bool _viewAnswer = false;
  bool get viewAnswer => _viewAnswer;
  set viewAnswer(bool value) {
    _viewAnswer = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
