import 'package:flutter/material.dart';

Widget buildSearchField() {
  return TextField(
    decoration: const InputDecoration(
      hintText: 'Search...',
    ),
    autofocus: true,
    textInputAction: TextInputAction.search,
    onSubmitted: (value) {
      // Do search operation here
    },
  );
}
