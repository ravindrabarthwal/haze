class SearchResponse {
  String status;
  String message;
  List<Data> data;

  SearchResponse({this.status, this.message, this.data});

  SearchResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'] != null ? json["message"]: null;
    if (json['data'] != null) {
      data = new List<Data>();
      json['data'].forEach((v) {
        data.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int uid;
  String aqi;
  Time time;
  Station station;

  Data({this.uid, this.aqi, this.time, this.station});

  Data.fromJson(Map<String, dynamic> json) {
    uid = json['uid'];
    aqi = json['aqi'];
    time = json['time'] != null ? new Time.fromJson(json['time']) : null;
    station =
    json['station'] != null ? new Station.fromJson(json['station']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uid'] = this.uid;
    data['aqi'] = this.aqi;
    if (this.time != null) {
      data['time'] = this.time.toJson();
    }
    if (this.station != null) {
      data['station'] = this.station.toJson();
    }
    return data;
  }
}

class Time {
  String tz;
  String stime;
  int vtime;

  Time({this.tz, this.stime, this.vtime});

  Time.fromJson(Map<String, dynamic> json) {
    tz = json['tz'];
    stime = json['stime'];
    vtime = json['vtime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tz'] = this.tz;
    data['stime'] = this.stime;
    data['vtime'] = this.vtime;
    return data;
  }
}

class Station {
  String name;
  List<double> geo;
  String url;
  String country;

  Station({this.name, this.geo, this.url, this.country});

  Station.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    geo = json['geo'].cast<double>();
    url = json['url'];
    country = json['country'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['geo'] = this.geo;
    data['url'] = this.url;
    data['country'] = this.country;
    return data;
  }
}
