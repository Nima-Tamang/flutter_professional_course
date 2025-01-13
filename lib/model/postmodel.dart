class Postmodel {
  final String id;
  final String name;
  final String details;

  const Postmodel(
      {required this.id, required this.name, required this.details});

  factory Postmodel.tojson(Map<String, dynamic> json) {
    return Postmodel(
        id: json['id'] ?? "",
         name: json['name'] ?? "",
          details: json['details']??  ""
          );
  }
}
