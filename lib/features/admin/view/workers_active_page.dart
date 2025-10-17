import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../app/router.dart';
import '../../../app/theme/tokens.dart';
import '../../../core/widgets/employee_tile.dart';
import '../../../core/widgets/bottom_action_bar_admin.dart';

class WorkersActivePage extends StatefulWidget {
  const WorkersActivePage({super.key});

  @override
  State<WorkersActivePage> createState() => _WorkersActivePageState();
}

class _WorkersActivePageState extends State<WorkersActivePage> {
  int selected = 0;
  final workers = const [
    'María Hernández',
    'Juan Pérez',
    'Ana Gómez',
    'Carlos Ruiz',
  ];

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
    return Scaffold(
      appBar: AppBar(title: const Text('Trabajadores Activos')),
      backgroundColor: AppTokens.bg,
      floatingActionButton: FloatingActionButton.small(
        onPressed: () => context.go(AppRoutes.adminWorkerNew),
        backgroundColor: AppTokens.btnDark50,
        foregroundColor: Colors.white,
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppTokens.s20),
          child: ListView.separated(
            itemCount: workers.length,
            separatorBuilder: (_, __) => const SizedBox(height: AppTokens.s12),
            itemBuilder: (context, i) => EmployeeTile(
              name: workers[i],
              selected: i == selected,
              onTap: () => setState(() => selected = i),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomActionBarAdmin(index: 1, onTap: (i) => _onBarTap(context, i)),
    );
  }
}
