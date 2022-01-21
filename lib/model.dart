class Model {
  String? id;
  String? name;
  String? password;
  String? color;
  int? icon;
  bool? visibleFeed;
  String? manager;
  String? dateCreate;

  Model(
      {this.id,
      this.name,
      this.password,
      this.color,
      this.icon,
      this.visibleFeed,
      this.manager,
      this.dateCreate});

  fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    password = json['password'];
    color = json['color'];
    icon = json['icon'];
    visibleFeed = json['visibleFeed'];
    manager = json['manager'];
    dateCreate = json['dateCreate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['password'] = this.password;
    data['color'] = this.color;
    data['icon'] = this.icon;
    data['visibleFeed'] = this.visibleFeed;
    data['manager'] = this.manager;
    data['dateCreate'] = this.dateCreate;
    return data;
  }
}
