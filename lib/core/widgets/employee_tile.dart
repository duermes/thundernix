import 'package:flutter/material.dart';
import '../../app/theme/tokens.dart';

class EmployeeTile extends StatelessWidget {
  final String name;
  final bool selected;
  final VoidCallback? onTap;

  const EmployeeTile({super.key, required this.name, this.selected = false, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(AppTokens.s16),
        decoration: BoxDecoration(
          color: selected ? AppTokens.blackDeep.withValues(alpha: 0.04) : AppTokens.surface,
          borderRadius: BorderRadius.circular(AppTokens.r12),
          border: Border.all(color: AppTokens.border),
        ),
        child: Row(
          children: [
            CircleAvatar(backgroundColor: AppTokens.blackDeep.withValues(alpha: 0.1), child: const Icon(Icons.person, color: AppTokens.blackDeep)),
            const SizedBox(width: AppTokens.s12),
            Expanded(child: Text(name, overflow: TextOverflow.ellipsis)),
            const Icon(Icons.chevron_right, color: AppTokens.blackDeep),
          ],
        ),
      ),
    );
  }
}
