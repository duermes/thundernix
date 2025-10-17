import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../app/router.dart';
import '../../../app/theme/tokens.dart';
import '../../../core/widgets/bottom_nav_worker.dart';
import '../../../core/widgets/app_button.dart';

class TaskCurrentPage extends StatelessWidget {
  const TaskCurrentPage({super.key});

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
    return Scaffold(
      appBar: AppBar(title: const Text('Tarea Actual')),
      backgroundColor: AppTokens.bg,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(AppTokens.s20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: AppTokens.s12),
              const Text('Implementación de API', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800)),
              const SizedBox(height: AppTokens.s12),
              const Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nec felis nec nulla efficitur imperdiet. Mauris aliquet, magna sit amet varius faucibus, odio lorem fermentum eros, eget facilisis risus mi id nisi. Phasellus non mauris eget mi cursus finibus. Etiam at odio nec elit blandit suscipit.',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: AppTokens.s20),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Tiempo Restante:', style: TextStyle(fontWeight: FontWeight.w700))),
              const SizedBox(height: 6),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('1d 10:32:45', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700))),
              const SizedBox(height: AppTokens.s20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text('Tarea Completada', style: TextStyle(fontWeight: FontWeight.w600)),
                  SizedBox(width: AppTokens.s12),
                  SizedBox(width: 24, height: 24, child: Checkbox(value: false, onChanged: null)),
                ],
              ),
              const SizedBox(height: AppTokens.s20),
              const Align(alignment: Alignment.centerLeft, child: Text('Adjuntar Captura:')),
              const SizedBox(height: AppTokens.s8),
              Container(
                decoration: BoxDecoration(
                  color: AppTokens.surface,
                  borderRadius: BorderRadius.circular(AppTokens.r12),
                  border: Border.all(color: AppTokens.border),
                ),
                padding: const EdgeInsets.all(AppTokens.s16),
                child: const SizedBox(
                  width: double.infinity,
                  child: AppButton(label: 'Subir Foto', onPressed: null),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavWorker(index: 1, onTap: (i) => _onBarTap(context, i)),
    );
  }
}
