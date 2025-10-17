import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../app/router.dart';
import '../../../app/theme/tokens.dart';
import '../../../core/widgets/app_search_field.dart';
import '../../../core/widgets/task_card.dart';
import '../../../core/widgets/bottom_nav_worker.dart';

class TasksAssignedPage extends StatelessWidget {
  const TasksAssignedPage({super.key});

  void _onBarTap(BuildContext context, int i) {
    switch (i) {
      case 0:
        context.go(AppRoutes.workerTasks);
        break;
      case 1:
        context.go(AppRoutes.workerTaskCurrent);
        break;
      case 2:
        context.go(AppRoutes.workerNotifications);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final tasks = const [
      ('Implementación de API', '4 días'),
      ('Implementación de API', '2 semanas'),
      ('Implementación de API', '3 semanas'),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Tareas Asignadas'),
        leading: Padding(
          padding: const EdgeInsets.only(left: AppTokens.s12),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Icon(Icons.bolt, color: Colors.white),
              SizedBox(width: 6),
              Text('ThunderNix', style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        actions: [
          TextButton.icon(onPressed: () {}, icon: const Icon(Icons.arrow_drop_down, color: Colors.white), label: const Text('')),
        ],
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
                  itemBuilder: (_, i) => TaskCard(title: tasks[i].$1, subtitle: 'Proyecto', dueLabel: tasks[i].$2),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavWorker(index: 0, onTap: (i) => _onBarTap(context, i)),
    );
  }
}
