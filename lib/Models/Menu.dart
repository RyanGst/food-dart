class MenuList {
  final String sId;
  final String user;
  final String thumbnail;
  final String company;
  final num price;
  final int iV;
  final List<String> techs;
  final String thumbnailUrl;
  final String id;

  MenuList(
      {this.techs,
      this.sId,
      this.user,
      this.thumbnail,
      this.company,
      this.price,
      this.iV,
      this.thumbnailUrl,
      this.id});

  factory MenuList.fromJson(Map<String,  dynamic> json) {
    return MenuList(
        techs: json['techs'].cast<String>(),
        sId: json['_id'],
        user: json['user'],
        thumbnail:  json['thumbnail'],
        company: json['company'],
        price: json['price'],
        iV: json['__v'],
        thumbnailUrl: json['thumbnail_url'],
        id: json['id'],
    );
  }
}
