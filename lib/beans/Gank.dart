

class Gank{

  final String id;
  final String time,url,who,desc;

  Gank({this.id, this.who, this.desc, this.url,this.time});


  factory Gank.fromJson(Map<String, dynamic> json) {
    print(json);
    return new Gank(
      url: json['url'],
      id: json['_id'],
        desc: json['desc'],
      time: json['publishedAt'],
      who: json['who']
    );
  }

}