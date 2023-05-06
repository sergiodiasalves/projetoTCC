import 'dart:convert';

class Information {
  final String? id;
  final String category;
  final String title;
  final String description;

  Information({this.id, required this.category, required this.title, required this.description});

  Map<String, dynamic> toMap() {
    return <String, dynamic> {
      '_id': id,
      'category': category,
      'title': title,
      'description': description
    };
  }

  factory Information.fromMap(Map<String,dynamic> map) {
    return Information(
      id: map.containsKey('_id') ? map['_id']: null, 
      category: map['category'], 
      title: map['title'], 
      description: map['description'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Information.fromJson(String source) {
    return Information.fromMap(json.decode(source) as Map<String, dynamic>);
  }

  static List<Information> list(String source) {
    var jsonDecoded = json.decode(source);
    if (jsonDecoded is List) {
      return jsonDecoded.map<Information>((e) => Information.fromMap(e)).toList();
    }
    return [];
  }

  static List<Information> fromList(List<dynamic> source) {
    return source.map<Information>((e) => Information.fromMap(e)).toList();
  }
}