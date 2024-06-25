// ignore_for_file: file_names

class WeatherModel {
  Location location;
  Forecast forecast;
  Current current;

  WeatherModel({
    required this.location,
    required this.forecast,
    required this.current,
  });

  // Factory method to convert JSON to a WeatherModel object
  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      location: Location.fromJson(json['location']),
      forecast: Forecast.fromJson(json['forecast']),
      current: Current.fromJson(json['current']),
    );
  }

  // Method to convert a WeatherModel object to JSON
  Map<String, dynamic> toJson() {
    return {
      'location': location.toJson(),
      'forecast': forecast.toJson(),
      'current': current.toJson(),
    };
  }
}

class Location {
  String name;
  String region;
  String country;
  String localtime;

  Location({
    required this.name,
    required this.region,
    required this.country,
    required this.localtime,
  });

  // Factory method to convert JSON to a Location object
  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      name: json['name'],
      region: json['region'],
      country: json['country'],
      localtime: json['localtime'],
    );
  }

  // Method to convert a Location object to JSON
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'region': region,
      'country': country,
      'localtime': localtime,
    };
  }
}

class Forecast {
  List<ForecastDay> forecastday;

  Forecast({
    required this.forecastday,
  });

  // Factory method to convert JSON to a Forecast object
  factory Forecast.fromJson(Map<String, dynamic> json) {
    var list = json['forecastday'] as List;
    List<ForecastDay> forecastdayList =
        list.map((i) => ForecastDay.fromJson(i)).toList();

    return Forecast(
      forecastday: forecastdayList,
    );
  }

  // Method to convert a Forecast object to JSON
  Map<String, dynamic> toJson() {
    return {
      'forecastday': forecastday.map((v) => v.toJson()).toList(),
    };
  }
}

class ForecastDay {
  String date;
  double maxtempC;
  double mintempC;
  double avgtempC;
  Condition condition; 
  List<Hour> hour;

  ForecastDay({
    required this.date,
    required this.maxtempC,
    required this.mintempC,
    required this.avgtempC,
    required this.condition, 
    required this.hour,
  });

  // Factory method to convert JSON to a ForecastDay object
  factory ForecastDay.fromJson(Map<String, dynamic> json) {
    var hourList = json['hour'] as List;
    List<Hour> hourItems = hourList.map((i) => Hour.fromJson(i)).toList();

    return ForecastDay(
      date: json['date'],
      maxtempC: json['day']['maxtemp_c'],
      mintempC: json['day']['mintemp_c'],
      avgtempC: json['day']['avgtemp_c'],
      condition: Condition.fromJson(json['day']['condition']),
      hour: hourItems,
    );
  }

  // Method to convert a ForecastDay object to JSON
  Map<String, dynamic> toJson() {
    return {
      'date': date,
      'day': {
        'maxtemp_c': maxtempC,
        'mintemp_c': mintempC,
        'avgtemp_c': avgtempC,
        'condition': condition.toJson(),
      },
      'hour': hour.map((v) => v.toJson()).toList(),
    };
  }
}

class Hour {
  int timeEpoch;
  String time;
  double tempC;
  double tempF;
  int isDay;
  Condition condition;

  Hour({
    required this.timeEpoch,
    required this.time,
    required this.tempC,
    required this.tempF,
    required this.isDay,
    required this.condition,
  });

  // Factory method to convert JSON to an Hour object
  factory Hour.fromJson(Map<String, dynamic> json) {
    return Hour(
      timeEpoch: json['time_epoch'],
      time: json['time'],
      tempC: json['temp_c'],
      tempF: json['temp_f'],
      isDay: json['is_day'],
      condition: Condition.fromJson(json['condition']),
    );
  }

  // Method to convert an Hour object to JSON
  Map<String, dynamic> toJson() {
    return {
      'time_epoch': timeEpoch,
      'time': time,
      'temp_c': tempC,
      'temp_f': tempF,
      'is_day': isDay,
      'condition': condition.toJson(),
    };
  }
}

class Current {
  int lastUpdatedEpoch;
  String lastUpdated;
  double tempC;
  double tempF;
  int isDay;
  Condition condition;

  Current({
    required this.lastUpdatedEpoch,
    required this.lastUpdated,
    required this.tempC,
    required this.tempF,
    required this.isDay,
    required this.condition,
  });

  // Factory method to convert JSON to a Current object
  factory Current.fromJson(Map<String, dynamic> json) {
    return Current(
      lastUpdatedEpoch: json['last_updated_epoch'],
      lastUpdated: json['last_updated'],
      tempC: json['temp_c'].toDouble(),
      tempF: json['temp_f'].toDouble(),
      isDay: json['is_day'],
      condition: Condition.fromJson(json['condition']),
    );
  }

  // Method to convert a Current object to JSON
  Map<String, dynamic> toJson() {
    return {
      'last_updated_epoch': lastUpdatedEpoch,
      'last_updated': lastUpdated,
      'temp_c': tempC,
      'temp_f': tempF,
      'is_day': isDay,
      'condition': condition.toJson(),
    };
  }
}

class Condition {
  String text;
  String icon;
  int code;

  Condition({
    required this.text,
    required this.icon,
    required this.code,
  });

  // Factory method to convert JSON to a Condition object
  factory Condition.fromJson(Map<String, dynamic> json) {
    return Condition(
      text: json['text'],
      icon: json['icon'],
      code: json['code'],
    );
  }

  // Method to convert a Condition object to JSON
  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'icon': icon,
      'code': code,
    };
  }
}
