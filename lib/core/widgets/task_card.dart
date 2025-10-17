import 'package:flutter/material.dart';
import '../../app/theme/tokens.dart';

class TaskCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String dueLabel;
  final VoidCallback? onTap;
  final bool showCheckbox;

  const TaskCard({super.key, required this.title, required this.subtitle, required this.dueLabel, this.onTap, this.showCheckbox = false});

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(AppTokens.r12),
        child: Container(
          decoration: BoxDecoration(
            color: AppTokens.surface,
            borderRadius: BorderRadius.circular(AppTokens.r12),
            border: Border.all(color: AppTokens.border),
          ),
          padding: const EdgeInsets.all(AppTokens.s16),
          child: Row(
            children: [
              const Icon(Icons.assignment_outlined, size: 28, color: AppTokens.blackDeep),
              const SizedBox(width: AppTokens.s12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: const TextStyle(fontWeight: FontWeight.w700)),
                    const SizedBox(height: 4),
                    Text('Proyecto', style: TextStyle(color: AppTokens.textSecondary)),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('Vence en:', style: TextStyle(color: AppTokens.textSecondary, fontSize: 12)),
                  Text(dueLabel, style: const TextStyle(fontWeight: FontWeight.w600)),
                ],
              ),
              if (showCheckbox) ...[
                const SizedBox(width: AppTokens.s12),
                const SizedBox(
                  width: 24,
                  height: 24,
                  child: Checkbox(value: false, onChanged: null),
                ),
              ]
            ],
          ),
        ),
      ),
    );
  }
}
