import 'package:flutter/material.dart';
import 'package:flutter_ui_widgets/models/form_data.dart';

class CreateArticle extends StatefulWidget {
  const CreateArticle({super.key});

  @override
  State<CreateArticle> createState() => _CreateArticleState();
}

class _CreateArticleState extends State<CreateArticle> {
  FormData formData = FormData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Article'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
            child: ListView(
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(labelText: 'Title'),
              validator: (value) =>
                  value!.isEmpty ? 'Please enter Title' : null,
              onSaved: (value) => formData.title = value,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Save'),
            )
          ],
        )),
      ),
    );
  }
}
