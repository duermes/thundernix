import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../app/router.dart';
import '../../../app/theme/tokens.dart';
import '../../../core/widgets/bottom_nav_worker.dart';
import '../../../core/widgets/app_button.dart';

class TaskExpiredPage extends StatelessWidget {
  const TaskExpiredPage({super.key});

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
      backgroundColor: AppTokens.blackDeep,
      appBar: AppBar(
        backgroundColor: AppTokens.blackDeep,
        foregroundColor: Colors.white,
        title: const Text('Tarea Actual'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(AppTokens.s20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 12),
              const Icon(Icons.error_outline, color: AppTokens.danger, size: 64),
              const SizedBox(height: 8),
              const Text('Tiempo límite excedido', style: TextStyle(color: AppTokens.danger, fontWeight: FontWeight.w700)),
              const SizedBox(height: AppTokens.s20),
              const Text('Implementación de API', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800, color: AppTokens.danger)),
              const SizedBox(height: AppTokens.s12),
              const Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nec felis nec nulla efficitur imperdiet. Mauris aliquet, magna sit amet varius faucibus, odio lorem fermentum eros, eget facilisis risus mi id nisi.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(height: AppTokens.s20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text('Tarea Completada', style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white)),
                  SizedBox(width: AppTokens.s12),
                  SizedBox(width: 24, height: 24, child: Checkbox(value: false, onChanged: null)),
                ],
              ),
              const SizedBox(height: AppTokens.s20),
              const Align(alignment: Alignment.centerLeft, child: Text('Adjuntar Captura:', style: TextStyle(color: Colors.white))),
              const SizedBox(height: AppTokens.s8),
              Container(
                decoration: BoxDecoration(
                  color: AppTokens.blackDeep,
                  borderRadius: BorderRadius.circular(AppTokens.r12),
                  border: Border.all(color: Colors.white30),
                ),
                padding: const EdgeInsets.all(AppTokens.s16),
                child: const SizedBox(
                  width: double.infinity,
                  child: AppButton(label: 'Subir Foto', onPressed: null),
                ),
              ),
              const SizedBox(height: AppTokens.s20),
              Text(
                'El tiempo para completar tus tareas se ha terminado. Se ha restringido el acceso a otras aplicaciones no esenciales temporalmente.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white.withValues(alpha: 0.7), fontSize: 12),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavWorker(index: 1, onTap: (i) => _onBarTap(context, i)),
    );
  }
}
