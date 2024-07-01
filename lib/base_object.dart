import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

@immutable
class BaseObject{
  final String id;
  final String lastUpdated;
  
  BaseObject() : id = const Uuid().v4(), lastUpdated = DateTime.now().toIso8601String();
}