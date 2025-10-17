import 'package:flutter/material.dart';
import '../../app/theme/tokens.dart';

class AppSearchField extends StatelessWidget {
  final String hint;
  const AppSearchField({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: const Icon(Icons.search, color: AppTokens.blackDeep),
      ),
    );
  }
}
