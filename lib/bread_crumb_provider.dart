import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:testing_provider_in_flutter/bread_crumb.dart';

class BreadCrumbProvider extends ChangeNotifier{
  
  final List<BreadCrumb> _items = [];
  UnmodifiableListView<BreadCrumb> get items => UnmodifiableListView(_items);

  void add(BreadCrumb value){
    for(final item in _items){
      item.activate();
    }
    _items.add(value);
    notifyListeners();
  }

  void reset(){
    _items.clear();
    notifyListeners();
  }


}