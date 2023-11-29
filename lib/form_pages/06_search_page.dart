import 'package:flutter/material.dart';
import 'package:fn_ui_kit/fn_ui_kit.dart';

import '../components/code_light/code.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
        centerTitle: true,
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            '可点',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: FNUISearch(
            clearWidget: Icon(Icons.clear),
          ),
        ),
        const CodeHighlightCard(
          code: '''
         FNUISearch(
            clearWidget: Icon(Icons.clear),
          ),
        ''',
        ),
      ]),
    );
  }
}
