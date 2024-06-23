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

  // * Factory method to convert JSON to a WeatherModel object
  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      location: Location.fromJson(json[
          'location']), //~ Convert JSON data for location to a Location object
      forecast: Forecast.fromJson(json[
          'forecast']), //~ Convert JSON data for forecast to a Forecast object
      current: Current.fromJson(json['current']),
    );
  }

// * Method to convert a WeatherModel object to JSON
  Map<String, dynamic> toJson() {
    return {
      'location': location.toJson(), //~ Convert Location object to JSON
      'forecast': forecast.toJson(), //~ Convert Forecast object to JSON
      'current': current.toJson(), //~ Convert Current object to JSON
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

  // *Factory method to convert JSON to a Location object

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      name: json['name'],
      region: json['region'],
      country: json['country'],
      localtime: json['localtime'],
    );
  }
  // *Method to convert a Location object to JSON

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

  // *Factory method to convert JSON to a Forecast object
  factory Forecast.fromJson(Map<String, dynamic> json) {
    var list =
        json['forecastday'] as List; // *Extract the list of forecasts from JSON
    List<ForecastDay> forecastdayList = list
        .map((i) => ForecastDay.fromJson(i))
        .toList(); //~ Convert each item in the list to a ForecastDay object

    return Forecast(
      forecastday: forecastdayList, // Set the converted list of forecasts
    );
  }

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

  ForecastDay({
    required this.date,
    required this.maxtempC,
    required this.mintempC,
    required this.avgtempC,
  });

  factory ForecastDay.fromJson(Map<String, dynamic> json) {
    return ForecastDay(
      date: json['date'],
      maxtempC: json['day']['maxtemp_c'],
      mintempC: json['day']['mintemp_c'],
      avgtempC: json['day']['avgtemp_c'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'date': date,
      'day': {
        'maxtemp_c': maxtempC,
        'mintemp_c': mintempC,
        'avgtemp_c': avgtempC,
      },
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

  factory Condition.fromJson(Map<String, dynamic> json) {
    return Condition(
      text: json['text'],
      icon: json['icon'],
      code: json['code'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'icon': icon,
      'code': code,
    };
  }
}
