import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meu_app_flutter_clone/services/sorteador_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var numeroSorteado = 0;
  int qtdSorteios = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meu Primeiro App Flutter", style: GoogleFonts.pacifico()),
        backgroundColor: const Color.fromRGBO(255, 0, 0, 1.0),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            children: [
              Text(
                "Tivemos até agora $qtdSorteios sorteios!",
                style: GoogleFonts.roboto(fontSize: 50),
              ),
              Text(
                numeroSorteado.toString(),
                style: GoogleFonts.roboto(fontSize: 100),
              ),
              Text(
                "O último número sorteado foi: $numeroSorteado",
                style: GoogleFonts.roboto(fontSize: 50),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.monetization_on_outlined),
        onPressed: () {
          setState(() {
            qtdSorteios++;
            numeroSorteado = SorteadorService.sortearNumero();
          });
          debugPrint(numeroSorteado.toString());
        },
      ),
    );
  }
}
