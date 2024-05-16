import 'package:flutter/material.dart';

class AddFormPage extends StatefulWidget {
  const AddFormPage({super.key});

  @override
  State<AddFormPage> createState() => _AddFormPageState();
}

class _AddFormPageState extends State<AddFormPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Todo"),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const TextField(decoration: InputDecoration(labelText: "Title")),
          const SizedBox(height: 20),
          const TextField(
            decoration: InputDecoration(labelText: "Description"),
            keyboardType: TextInputType.multiline,
            minLines: 5,
            maxLines: 8,
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )),
            child: const Text("Submit", style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
