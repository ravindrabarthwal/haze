class StationFeed {
  String status;
  String message;
  Data data;

  StationFeed({this.status, this.message, this.data});

  StationFeed.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'] != null ? json["message"]: null;
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    return data;
  }
}

class Data {
  int aqi;
  int idx;
  List<Attributions> attributions;
  City city;
  String dominentpol;
  Iaqi iaqi;
  Time time;
  Debug debug;

  Data(
      {this.aqi,
        this.idx,
        this.attributions,
        this.city,
        this.dominentpol,
        this.iaqi,
        this.time,
        this.debug});

  Data.fromJson(Map<String, dynamic> json) {
    aqi = json['aqi'];
    idx = json['idx'];
    if (json['attributions'] != null) {
      attributions = new List<Attributions>();
      json['attributions'].forEach((v) {
        attributions.add(new Attributions.fromJson(v));
      });
    }
    city = json['city'] != null ? new City.fromJson(json['city']) : null;
    dominentpol = json['dominentpol'];
    iaqi = json['iaqi'] != null ? new Iaqi.fromJson(json['iaqi']) : null;
    time = json['time'] != null ? new Time.fromJson(json['time']) : null;
    debug = json['debug'] != null ? new Debug.fromJson(json['debug']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['aqi'] = this.aqi;
    data['idx'] = this.idx;
    if (this.attributions != null) {
      data['attributions'] = this.attributions.map((v) => v.toJson()).toList();
    }
    if (this.city != null) {
      data['city'] = this.city.toJson();
    }
    data['dominentpol'] = this.dominentpol;
    if (this.iaqi != null) {
      data['iaqi'] = this.iaqi.toJson();
    }
    if (this.time != null) {
      data['time'] = this.time.toJson();
    }
    if (this.debug != null) {
      data['debug'] = this.debug.toJson();
    }
    return data;
  }
}

class Attributions {
  String url;
  String name;

  Attributions({this.url, this.name});

  Attributions.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this.url;
    data['name'] = this.name;
    return data;
  }
}

class City {
  List<double> geo;
  String name;
  String url;

  City({this.geo, this.name, this.url});

  City.fromJson(Map<String, dynamic> json) {
    geo = json['geo'].cast<double>();
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['geo'] = this.geo;
    data['name'] = this.name;
    data['url'] = this.url;
    return data;
  }
}

class Iaqi {
  Value co;
  Value h;
  Value no2;
  Value o3;
  Value p;
  Value pm10;
  Value pm25;
  Value so2;
  Value t;
  Value w;

  Iaqi(
      {this.co,
        this.h,
        this.no2,
        this.o3,
        this.p,
        this.pm10,
        this.pm25,
        this.so2,
        this.t,
        this.w});

  Iaqi.fromJson(Map<String, dynamic> json) {
    co = json['co'] != null ? new Value.fromJson(json['co']) : null;
    h = json['h'] != null ? new Value.fromJson(json['h']) : null;
    no2 = json['no2'] != null ? new Value.fromJson(json['no2']) : null;
    o3 = json['o3'] != null ? new Value.fromJson(json['o3']) : null;
    p = json['p'] != null ? new Value.fromJson(json['p']) : null;
    pm10 = json['pm10'] != null ? new Value.fromJson(json['pm10']) : null;
    pm25 = json['pm25'] != null ? new Value.fromJson(json['pm25']) : null;
    so2 = json['so2'] != null ? new Value.fromJson(json['so2']) : null;
    t = json['t'] != null ? new Value.fromJson(json['t']) : null;
    w = json['w'] != null ? new Value.fromJson(json['w']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.co != null) {
      data['co'] = this.co.toJson();
    }
    if (this.h != null) {
      data['h'] = this.h.toJson();
    }
    if (this.no2 != null) {
      data['no2'] = this.no2.toJson();
    }
    if (this.o3 != null) {
      data['o3'] = this.o3.toJson();
    }
    if (this.p != null) {
      data['p'] = this.p.toJson();
    }
    if (this.pm10 != null) {
      data['pm10'] = this.pm10.toJson();
    }
    if (this.pm25 != null) {
      data['pm25'] = this.pm25.toJson();
    }
    if (this.so2 != null) {
      data['so2'] = this.so2.toJson();
    }
    if (this.t != null) {
      data['t'] = this.t.toJson();
    }
    if (this.w != null) {
      data['w'] = this.w.toJson();
    }
    return data;
  }
}

class Value {
  double v;

  Value({this.v});

  Value.fromJson(Map<String, dynamic> json) {
    v = json['v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['v'] = this.v;
    return data;
  }
}

class Time {
  String s;
  String tz;
  int v;

  Time({this.s, this.tz, this.v});

  Time.fromJson(Map<String, dynamic> json) {
    s = json['s'];
    tz = json['tz'];
    v = json['v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['s'] = this.s;
    data['tz'] = this.tz;
    data['v'] = this.v;
    return data;
  }
}

class Debug {
  String sync;

  Debug({this.sync});

  Debug.fromJson(Map<String, dynamic> json) {
    sync = json['sync'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sync'] = this.sync;
    return data;
  }
}
