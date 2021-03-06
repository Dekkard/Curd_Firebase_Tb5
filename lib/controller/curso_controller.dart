import 'package:crud_firebase/dao/curso_dao.dart';
import 'package:crud_firebase/model/curso.dart';

class CursoController {
  CursoDao cursoDao = CursoDao();
  Future<String> salvar(Curso curso){
    if(curso.id == null){
      return cursoDao.inserir(curso);
    }else{
      return cursoDao.alterar(curso);
    }
  }
  Future<List<Curso>> findAll() async{
    return cursoDao.findAll();
  }
  Future<String> excluir(String id){
    return cursoDao.excluir(id);
  }
}