import 'viagem.dart';
import 'transporte.dart';

void main() {
  Viagem viagemMaio = Viagem(locomocao: Transportes.carro);
  viagemMaio.registrarPrecoVisitas("Diamantina", 2150.00);
  viagemMaio.registrarPrecoVisitas("Piaui", 1500.00);
  viagemMaio.registrarPrecoVisitas("Blumenal", 2720.00);
  print(viagemMaio.registroPrecos);
  //viagemMaio.escolherTransporte(Transportes.carro);
  //viagemMaio.visitar("Museu Nacional");
  //viagemMaio.visitar("Barra da tijuca");
  //print(viagemMaio.registrosVisitados);
  //print(viagemMaio.consultarTotalLugaresVisitados);
}
