class Curso {
  String id;
  String nome;
  int cargaHoraria;
  String modalidade;
  Curso(this.nome, this.cargaHoraria, this.modalidade, {this.id});
  Map<String, dynamic> toMap() => {
        "nome": nome,
        "cargaHoraria": cargaHoraria,
        "modalidade": modalidade,
      };
  @override
  String toString() {
    return "Curso: $nome \n Carga Horária: $cargaHoraria \n modalidade: $modalidade";
  }

  Curso.fromJson(Map<String, dynamic> json, String idFirebase)
      : nome = json["nome"],
        cargaHoraria = json["cargaHoraria"],
        modalidade = json["modalidade"],
        id = idFirebase;
}
