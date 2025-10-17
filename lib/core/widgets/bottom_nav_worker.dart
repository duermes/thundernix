import 'package:flutter/material.dart';
import '../../app/theme/tokens.dart';

class BottomNavWorker extends StatelessWidget {
  final int index;
  final ValueChanged<int> onTap;
  const BottomNavWorker({super.key, required this.index, required this.onTap});

  @override
  Widget build(BuildContext context) {
    Widget circle(IconData icon, int i) {
      final bool active = i == index;
      return Semantics(
        button: true,
        child: InkWell(
          borderRadius: BorderRadius.circular(AppTokens.circleBtn / 2),
          onTap: () => onTap(i),
          child: Container(
            width: AppTokens.circleBtn,
            height: AppTokens.circleBtn,
            decoration: BoxDecoration(
              color: active ? Colors.white : Colors.transparent,
              border: Border.all(color: AppTokens.blackDeep, width: 2),
              shape: BoxShape.circle,
            ),
            alignment: Alignment.center,
            child: Icon(icon, color: active ? AppTokens.blackDeep : Colors.white),
          ),
        ),
      );
    }

    return Container(
      height: AppTokens.bottomBarH,
      color: AppTokens.blackDeep,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          circle(Icons.bookmark_border, 0),
          circle(Icons.remove_red_eye_outlined, 1),
          circle(Icons.notifications_none_outlined, 2),
        ],
      ),
    );
  }
}
