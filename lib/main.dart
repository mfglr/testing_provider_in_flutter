import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TestProvider"),
        backgroundColor: Colors.blue,
      ),
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:testing_provider_in_flutter/bread_crumb_provider.dart';
// import 'package:provider/provider.dart';
// import 'package:testing_provider_in_flutter/bread_crumbs_widget.dart';
// import 'package:testing_provider_in_flutter/new_bread_crumb_view.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (_) => BreadCrumbProvider(),
//       child: MaterialApp(
//         title: 'Flutter Demo',
//         theme: ThemeData(
//           colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//           useMaterial3: true,
//         ),
//         home: const HomeView(),
//         routes: {
//           "/new" : (context) => const NewBreadCrumbView()
//         },
//       ),
//     );
//   }
// }

// class HomeView extends StatelessWidget {
//   const HomeView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("TestProvider"),
//         backgroundColor: Colors.blue,
//       ),
//       body: Column(
//         children: [
//           Consumer<BreadCrumbProvider>(
//             builder: (context,value,child) {
//               return BreadCrumbsWidget(breadCrumbs: value.items);
//             }
//           ),
//           Center(
//             child: Column(
//               children: [
//                 OutlinedButton(
//                   onPressed: () async {
//                     await Navigator.of(context).pushNamed("/new");
//                   },
//                   child: const Text("Add a new bread crumb.")
//                 ),
//                 OutlinedButton(
//                   onPressed: (){
//                     context.read<BreadCrumbProvider>().reset();
//                   },
//                   child: const Text("Reset")
//                 )
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }