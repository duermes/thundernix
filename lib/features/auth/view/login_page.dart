import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../app/router.dart';
import '../../../app/theme/tokens.dart';
import '../../../core/widgets/app_button.dart';
import '../../../core/widgets/app_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final userCtrl = TextEditingController();
  final passCtrl = TextEditingController();
  int role = 0; // 0 admin, 1 worker
  bool showPass = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppTokens.bg,
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 560),
            child: Padding(
              padding: const EdgeInsets.all(AppTokens.s20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 24),
                    const Icon(Icons.bolt, size: 64, color: AppTokens.blackDeep),
                    const SizedBox(height: 12),
                    const Text('ThunderNix', style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800)),
                    const SizedBox(height: 4),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8), border: Border.all(color: AppTokens.border)),
                      child: const Text('Beta', style: TextStyle(fontSize: 12)),
                    ),
                    const SizedBox(height: 24),
                    const Text('La fuerza del trueno, al servicio de tu productividad.', textAlign: TextAlign.center, style: TextStyle(color: AppTokens.textSecondary)),
                    const SizedBox(height: 24),
                    const Align(alignment: Alignment.centerLeft, child: Text('Usuario:', style: TextStyle(fontWeight: FontWeight.w600))),
                    const SizedBox(height: 8),
                    AppTextField(label: '', hint: 'usuario@acme.com', controller: userCtrl),
                    const SizedBox(height: AppTokens.s16),
                    const Align(alignment: Alignment.centerLeft, child: Text('Contraseña:', style: TextStyle(fontWeight: FontWeight.w600))),
                    const SizedBox(height: 8),
                    AppTextField(
                      label: '',
                      hint: 'Tu contraseña',
                      controller: passCtrl,
                      obscure: !showPass,
                      suffix: IconButton(
                        icon: Icon(showPass ? Icons.visibility_off : Icons.visibility),
                        onPressed: () => setState(() => showPass = !showPass),
                      ),
                    ),
                    const SizedBox(height: AppTokens.s20),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Wrap(
                        spacing: 16,
                        runSpacing: 8,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Radio<int>(value: 0, groupValue: role, onChanged: (v) => setState(() => role = v ?? 0)),
                          const Text('Administrador'),
                          const SizedBox(width: 16),
                          Radio<int>(value: 1, groupValue: role, onChanged: (v) => setState(() => role = v ?? 1)),
                          const Text('Trabajador'),
                        ],
                      ),
                    ),
                    const SizedBox(height: AppTokens.s20),
                    SizedBox(
                      width: size.width,
                      child: AppButton(
                        label: 'Iniciar Sesión',
                        onPressed: () {
                          if (role == 0) {
                            context.go(AppRoutes.adminCreated);
                          } else {
                            context.go(AppRoutes.workerTasks);
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
