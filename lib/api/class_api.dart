// ignore_for_file: prefer_typing_uninitialized_variables
class FirstApi {
  var name;
  var image;
  var type;

  FirstApi({required this.name, required this.image, required this.type});

  FirstApi.fromJson(json) {
    name = json['name'];
    image = json['img'];
    type = json['type'];
  }
}
