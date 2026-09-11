import 'package:flutter/material.dart';
import 'login_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //dados simulados para preencher o escopo da opção 1
    final List<Map<String, String>> serviceOrders = [
      {
        'id': '05-2026-001',
        'client': 'Lab de Informática 3',
        'status': 'Em Andamento',
        'desc': 'Manutenção preventina dos computadores.',
      },
      {
        'id': '05-2026-002',
        'client': 'Secretaria Executiva',
        'status': 'Aberta',
        'desc': 'Configuração de nova sub-rede local.',
      },
      {
        'id': '05-2026-003',
        'client': 'Bloco Técnico B',
        'status': 'Concluída',
        'desc': 'Troca de switch e testes de patch panel.',
      }
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('TechService Home'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            tooltip: 'Sair do App',
            onPressed: () {
              //meçhores práticas: ao deslogar. limpa a pilha
              // para impedir navegação reversa à home
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const LoginScreen()),
                (route) => false,
              );
            },
          ),
        ],
      ),
    )
  }
}