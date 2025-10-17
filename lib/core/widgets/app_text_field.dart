import 'package:flutter/material.dart';
import '../../app/theme/tokens.dart';

class AppTextField extends StatelessWidget {
  final String label;
  final String? hint;
  final TextEditingController? controller;
  final bool obscure;
  final Widget? suffix;

  const AppTextField({super.key, required this.label, this.hint, this.controller, this.obscure = false, this.suffix});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontWeight: FontWeight.w600)),
        const SizedBox(height: AppTokens.s8),
        TextField(
          controller: controller,
          obscureText: obscure,
          decoration: InputDecoration(
            hintText: hint,
            suffixIcon: suffix,
          ),
          style: const TextStyle(height: 1.2),
        ),
      ],
    );
  }
}
