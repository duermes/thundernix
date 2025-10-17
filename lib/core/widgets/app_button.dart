import 'package:flutter/material.dart';
import '../../app/theme/tokens.dart';

class AppButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final bool filled;
  final bool danger;
  final EdgeInsetsGeometry padding;

  const AppButton({super.key, required this.label, this.onPressed, this.filled = true, this.danger = false, this.padding = const EdgeInsets.symmetric(horizontal: AppTokens.s20, vertical: 14)});

  @override
  Widget build(BuildContext context) {
    final bg = danger
        ? AppTokens.danger
        : (filled ? AppTokens.btnDark50 : Colors.transparent);
    final fg = filled ? Colors.white : AppTokens.blackDeep;
    final border = danger
        ? AppTokens.danger
        : const Color(0xFF000007).withValues(alpha: 0.5);

    return Semantics(
      button: true,
      enabled: onPressed != null,
      child: ConstrainedBox(
        constraints: const BoxConstraints(minHeight: AppTokens.inputH),
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: onPressed == null ? const Color(0xFF000007).withValues(alpha: 0.08) : bg,
            foregroundColor: fg,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppTokens.r12),
              side: BorderSide(color: border, width: filled ? 0 : 1.5),
            ),
            padding: padding,
          ),
          onPressed: onPressed,
          child: Text(label, style: const TextStyle(fontWeight: FontWeight.w600)),
        ),
      ),
    );
  }
}
