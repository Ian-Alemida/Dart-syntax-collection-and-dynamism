import 'transporte.dart';

class Viagem {
  static String codigoTrabalho = "DJNADS12";
  double dinheiro = 0;
  Transportes locomocao;

  Set<String> registrosVisitados = <String>{};
  Map<String, dynamic> registroPrecos = {};

  int _totalLugaresVisitados = 0;

  Viagem({required this.locomocao});

  printCodigo() {
    print(codigoTrabalho);
  }

  escolherTransporte(Transportes locomocao) {
    switch (locomocao) {
      case Transportes.carro:
        print('Vamos de carro');
        break;
      case Transportes.aviao:
        print('Vamos de avião');
        break;
      case Transportes.moto:
        print('Vamos de moto');
        break;
      case Transportes.trem:
        print('Vamos de trem');
        break;
      case Transportes.skate:
        print('Vamos de skate');
        break;
      default:
        print('Vamos a pé, o importante é ir.');
    }
  }

  visitar(String localVisita) {
    registrosVisitados.add(localVisita);
    _totalLugaresVisitados += 1;
  }

  void registrarPrecoVisitas(String local, dynamic valor) {
    registroPrecos[local] = valor;
  }

  int get consultarTotalLugaresVisitados {
    return _totalLugaresVisitados;
  }

  void set alterarLocaisVisitados(int novaQuant) {
    if (novaQuant < 10) {
      _totalLugaresVisitados = novaQuant;
    } else {
      print("não é possivel!!");
    }
  }
}
