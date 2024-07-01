import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testing_provider_in_flutter/bread_crumb.dart';
import 'package:testing_provider_in_flutter/bread_crumb_provider.dart';

class NewBreadCrumbView extends StatefulWidget {
  const NewBreadCrumbView({super.key});

  @override
  State<NewBreadCrumbView> createState() => _NewBreadCrumbViewState();
}

class _NewBreadCrumbViewState extends State<NewBreadCrumbView> {
  late final TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add new bread crumb"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          TextField(
            controller: _controller,
            decoration: const InputDecoration(
              hintText: "Enter a bread crumb"
            ),
          ),
          OutlinedButton(
            onPressed: () {
              final breadCrumb = _controller.text;
              context.read<BreadCrumbProvider>().add(BreadCrumb(name: breadCrumb));
              Navigator.of(context).pop();
            },
            child: const Text("Add")
          )
        ],
      ),
    );
  }
}