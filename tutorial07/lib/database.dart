import 'package:tutorial07/model/filme_model.dart';

class Database {

  static List<Filme> getFilmes() {

    final List<Filme> filmes = [
      Filme(
        titulo: 'Matrix', 
        sinopse: 'Um hacker descobre a realidade...', 
        anoLancamento: 1999, 
        imdb: 8.7,
      ),
      Filme(
        titulo: 'Interstellar', 
        sinopse: 'Viagem espacial e relatividade...', 
        anoLancamento: 2014, 
        imdb: 8.7,
      ),
    ];

    return filmes;
  }
}
