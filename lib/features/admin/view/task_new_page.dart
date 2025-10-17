import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../app/theme/tokens.dart';
import '../../../app/router.dart';
import '../../../core/widgets/app_text_field.dart';
import '../../../core/widgets/segmented_choice.dart';
import '../../../core/widgets/app_button.dart';
import '../../../core/widgets/bottom_action_bar_admin.dart';

class TaskNewPage extends StatefulWidget {
  const TaskNewPage({super.key});

  @override
  State<TaskNewPage> createState() => _TaskNewPageState();
}

class _TaskNewPageState extends State<TaskNewPage> {
  int assign = 0;

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
      appBar: AppBar(title: const Text('Nueva Tarea')),
      backgroundColor: AppTokens.bg,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(AppTokens.s20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppTextField(label: 'Nombre'),
              const SizedBox(height: AppTokens.s16),
              const AppTextField(label: 'Descripción'),
              const SizedBox(height: AppTokens.s16),
              AppTextField(
                label: 'Duración',
                suffix: IconButton(onPressed: () {}, icon: const Icon(Icons.access_time)),
              ),
              const SizedBox(height: AppTokens.s20),
              const Text('Asignar:'),
              const SizedBox(height: AppTokens.s8),
              SegmentedChoice(
                options: const ['Automático', 'Manual'],
                selectedIndex: assign,
                onChanged: (i) => setState(() => assign = i),
              ),
              const SizedBox(height: AppTokens.s20),
              AppButton(
                label: 'Seleccionar Trabajador',
                filled: false,
                onPressed: () => context.go(AppRoutes.adminWorkerSelect),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomActionBarAdmin(index: 2, onTap: (i) => _onBarTap(context, i)),
    );
  }
}
