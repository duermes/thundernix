import 'package:flutter/material.dart';
import '../../app/theme/tokens.dart';

class BottomActionBarAdmin extends StatelessWidget {
  final int index;
  final ValueChanged<int> onTap;
  const BottomActionBarAdmin({super.key, required this.index, required this.onTap});

  @override
  Widget build(BuildContext context) {
    Widget circle(IconData icon, int i) {
      final bool active = i == index;
      return Semantics(
        button: true,
        label: 'Navegar',
        child: InkWell(
          borderRadius: BorderRadius.circular(AppTokens.circleBtn / 2),
          onTap: () => onTap(i),
          child: Container(
            width: AppTokens.circleBtn,
            height: AppTokens.circleBtn,
            decoration: BoxDecoration(
              color: active ? Colors.white : Colors.transparent,
              border: Border.all(color: const Color(0xFF000007).withValues(alpha: 0.5), width: 2),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: active ? AppTokens.blackDeep : Colors.white),
          ),
        ),
      );
    }

    return Container(
      height: AppTokens.bottomBarH,
      padding: const EdgeInsets.symmetric(horizontal: AppTokens.s20),
      color: AppTokens.blackDeep,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          circle(Icons.list_alt_outlined, 0),
          circle(Icons.group_outlined, 1),
          circle(Icons.add, 2),
          circle(Icons.notifications_none_outlined, 3),
        ],
      ),
    );
  }
}
