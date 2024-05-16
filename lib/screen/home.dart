import 'package:flutter/material.dart';
import 'package:todo/screen/add_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todo List"),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: navigateToAddPage,
        label: const Icon(Icons.add_task),
      ),
    );
  }

  void navigateToAddPage() {
    final route = MaterialPageRoute(
      builder: (context) => AddFormPage(),
    );

    Navigator.push(context, route);
  }
}
