import 'package:flutter/material.dart';
import 'package:pet_flutter/google_search_field/google_search_field_flow.dart';

class ListWidget extends StatelessWidget {
  const ListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GoogleSearchFieldFlow(onChange: (v) {}),
          Expanded(
            child: Container(
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
