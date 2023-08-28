import 'package:flutter/material.dart';
import 'package:flutter_ui_widgets/models/form_data.dart';

import '../utils/strings.dart';

class FormResult extends StatelessWidget {
  final FormData? data;

  const FormResult({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    final result = data!.toJson();
    print(result);
    return SizedBox(
      width: 300,
      height: 300,
      child: ListView.builder(
        itemCount: result.length,
        itemBuilder: (context, index) {
          final key = result.keys.elementAt(index);
          final title = camelCaseToTitle(key);
          return Column(
            children: <Widget>[
              ListTile(
                title: Text(title),
                subtitle: Text('${result[key]}'),
              ),
              const Divider(height: 2.0),
            ],
          );
        },
      ),
    );
  }
}
