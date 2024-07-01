import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:testing_provider_in_flutter/bread_crumb.dart';

class BreadCrumbsWidget extends StatelessWidget {
  final UnmodifiableListView<BreadCrumb> breadCrumbs;

  const BreadCrumbsWidget({super.key,required this.breadCrumbs});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: breadCrumbs.map(
        (element) => Text(
          element.name,
          style: TextStyle(
            color: element.isActive ? Colors.blue : Colors.black
          ),
        )
      ).toList(),
    );
  }
}