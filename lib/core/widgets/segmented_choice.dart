import 'package:flutter/material.dart';
import '../../app/theme/tokens.dart';

class SegmentedChoice extends StatelessWidget {
  final List<String> options;
  final int selectedIndex;
  final ValueChanged<int>? onChanged;

  const SegmentedChoice({super.key, required this.options, required this.selectedIndex, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppTokens.surface,
        borderRadius: BorderRadius.circular(AppTokens.r12),
        border: Border.all(color: AppTokens.border),
      ),
      child: Row(
        children: [
          for (int i = 0; i < options.length; i++)
            Expanded(
              child: InkWell(
                onTap: () => onChanged?.call(i),
                borderRadius: BorderRadius.circular(AppTokens.r12),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 180),
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: BoxDecoration(
                    color: i == selectedIndex ? AppTokens.surface : Colors.transparent,
                    borderRadius: BorderRadius.circular(AppTokens.r12),
                    border: Border.all(color: i == selectedIndex ? AppTokens.blackDeep : Colors.transparent),
                  ),
                  child: Center(
                    child: Text(
                      options[i],
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: AppTokens.blackDeep.withValues(alpha: i == selectedIndex ? 1 : 0.6),
                      ),
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
