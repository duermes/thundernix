import 'package:flutter/material.dart';
import '../../../app/theme/tokens.dart';
import '../../../core/widgets/employee_tile.dart';
import '../../../core/widgets/app_button.dart';

class WorkerSelectPage extends StatefulWidget {
  const WorkerSelectPage({super.key});

  @override
  State<WorkerSelectPage> createState() => _WorkerSelectPageState();
}

class _WorkerSelectPageState extends State<WorkerSelectPage> {
  int selected = -1;
  final workers = const ['María', 'Juan', 'Ana', 'Carlos'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Seleccionar Trabajador')),
      backgroundColor: AppTokens.bg,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppTokens.s20),
          child: Column(
            children: [
              Expanded(
                child: ListView.separated(
                  itemCount: workers.length,
                  separatorBuilder: (_, __) => const SizedBox(height: AppTokens.s12),
                  itemBuilder: (context, i) => EmployeeTile(
                    name: workers[i],
                    selected: selected == i,
                    onTap: () => setState(() => selected = i),
                  ),
                ),
              ),
              const SizedBox(height: AppTokens.s16),
              AppButton(label: 'Confirmar', onPressed: selected >= 0 ? () {} : null),
            ],
          ),
        ),
      ),
    );
  }
}
