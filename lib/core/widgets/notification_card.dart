import 'package:flutter/material.dart';
import '../../app/theme/tokens.dart';
import 'app_button.dart';

class NotificationCard extends StatelessWidget {
  final String title;
  final String body;
  final String date;
  final String actionLabel;
  final VoidCallback? onAction;

  const NotificationCard({super.key, required this.title, required this.body, required this.date, required this.actionLabel, this.onAction});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppTokens.notifySurface,
        borderRadius: BorderRadius.circular(AppTokens.r12),
      ),
      padding: const EdgeInsets.all(AppTokens.s16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(child: Text(title, style: const TextStyle(fontWeight: FontWeight.w700))),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.close, size: 20),
                tooltip: 'Cerrar',
              ),
            ],
          ),
          Text(body),
          const SizedBox(height: AppTokens.s12),
          Row(
            children: [
              Text(date, style: TextStyle(color: AppTokens.textSecondary, fontSize: 12)),
              const Spacer(),
              SizedBox(
                height: 40,
                child: AppButton(label: actionLabel, onPressed: onAction),
              ),
            ],
          )
        ],
      ),
    );
  }
}
