import 'package:flutter/material.dart';
import '../../../app/theme/tokens.dart';
import '../../../core/widgets/app_text_field.dart';
import '../../../core/widgets/app_button.dart';
import '../../../core/widgets/bottom_action_bar_admin.dart';
import 'package:go_router/go_router.dart';
import '../../../app/router.dart';

class WorkerNewPage extends StatefulWidget {
  const WorkerNewPage({super.key});

  @override
  State<WorkerNewPage> createState() => _WorkerNewPageState();
}

class _WorkerNewPageState extends State<WorkerNewPage> {
  bool showPass1 = false;
  bool showPass2 = false;

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
      appBar: AppBar(title: const Text('Nuevo Trabajador')),
      backgroundColor: AppTokens.bg,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(AppTokens.s20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 12),
              CircleAvatar(
                radius: 48,
                backgroundColor: AppTokens.blackDeep.withValues(alpha: 0.1),
                child: const Icon(Icons.person, color: AppTokens.blackDeep, size: 48),
              ),
              const SizedBox(height: AppTokens.s20),
              const Align(
                alignment: Alignment.centerLeft,
                child: AppTextField(label: 'Usuario:'),
              ),
              const SizedBox(height: AppTokens.s16),
              Align(
                alignment: Alignment.centerLeft,
                child: AppTextField(
                  label: 'Contraseña:',
                  obscure: !showPass1,
                  suffix: IconButton(
                    icon: Icon(showPass1 ? Icons.visibility_off : Icons.visibility),
                    onPressed: () => setState(() => showPass1 = !showPass1),
                  ),
                ),
              ),
              const SizedBox(height: AppTokens.s16),
              Align(
                alignment: Alignment.centerLeft,
                child: AppTextField(
                  label: 'Confirmar Contraseña:',
                  obscure: !showPass2,
                  suffix: IconButton(
                    icon: Icon(showPass2 ? Icons.visibility_off : Icons.visibility),
                    onPressed: () => setState(() => showPass2 = !showPass2),
                  ),
                ),
              ),
              const SizedBox(height: AppTokens.s20),
              const AppButton(label: 'Registrar', onPressed: null),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomActionBarAdmin(index: 1, onTap: (i) => _onBarTap(context, i)),
    );
  }
}
