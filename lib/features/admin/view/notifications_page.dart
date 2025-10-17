import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../app/router.dart';
import '../../../app/theme/tokens.dart';
import '../../../core/widgets/notification_card.dart';
import '../../../core/widgets/bottom_action_bar_admin.dart';

class AdminNotificationsPage extends StatelessWidget {
  const AdminNotificationsPage({super.key});

  void _onBarTap(BuildContext context, int i) {
    switch (i) {
      case 0:
        context.go(AppRoutes.adminCreated);
        break;
      case 1:
        context.go(AppRoutes.adminWorkers);
        break;
      case 2:
        context.go(AppRoutes.adminTaskNew);
        break;
      case 3:
        context.go(AppRoutes.adminNotifications);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final items = List.generate(3, (i) => i);
    return Scaffold(
      appBar: AppBar(title: const Text('Notificaciones')),
      backgroundColor: AppTokens.bg,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppTokens.s20),
          child: ListView.separated(
            itemCount: items.length,
            separatorBuilder: (_, __) => const SizedBox(height: AppTokens.s12),
            itemBuilder: (_, i) => const NotificationCard(
              title: 'Título Notificación',
              body: 'La tarea "título de la tarea" fue completada, requiere de confirmación',
              date: '11/09/2025 16:24',
              actionLabel: 'Ver Tarea',
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomActionBarAdmin(index: 3, onTap: (i) => _onBarTap(context, i)),
    );
  }
}
