import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../app/router.dart';
import '../../../app/theme/tokens.dart';
import '../../../core/widgets/app_search_field.dart';
import '../../../core/widgets/task_card.dart';
import '../../../core/widgets/bottom_action_bar_admin.dart';

class TasksCompletedPage extends StatelessWidget {
  const TasksCompletedPage({super.key});

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
    final tasks = const [
      ('Implementación de API', 'hoy'),
      ('Implementación de API', 'ayer'),
      ('Implementación de API', 'esta semana'),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tareas Completadas'),
      ),
      backgroundColor: AppTokens.bg,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppTokens.s20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppSearchField(hint: 'Buscar'),
              const SizedBox(height: AppTokens.s16),
              Row(
                children: [
                  const Expanded(child: Text('Tareas Encontradas (3)', style: TextStyle(fontWeight: FontWeight.w700))),
                  TextButton.icon(onPressed: () {}, icon: const Icon(Icons.swap_vert), label: const Text('Ordenar')),
                ],
              ),
              const SizedBox(height: AppTokens.s12),
              Expanded(
                child: ListView.separated(
                  itemCount: tasks.length,
                  separatorBuilder: (_, __) => const SizedBox(height: AppTokens.s12),
                  itemBuilder: (_, i) => TaskCard(title: tasks[i].$1, subtitle: 'Proyecto', dueLabel: tasks[i].$2, showCheckbox: true),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomActionBarAdmin(index: 0, onTap: (i) => _onBarTap(context, i)),
    );
  }
}
