import 'package:weather_app/core/models/Weather_Model.dart';

class Assets {
  Assets._();

 
  static const String Moon = "asstes/image/113.png";

  /// Assets for assetsImage200
  /// asstes/image/200.png
  static const String assetsImage200 = "asstes/image/200.png";

  /// Assets for assetsImage230
  /// asstes/image/230.png
  static const String assetsImage230 = "asstes/image/230.png";

  
  static const String Mist = "asstes/image/305.png";

  
  static const String Sunny = "asstes/image/396.png";

 
  static const String Patchy_snow_possible = "asstes/image/412.png";

 
  static const String Cloudy = "asstes/image/415.png";

  
  static const String Partly_Cloudy = "asstes/image/423.png";

 
  static const String assetsImageBack = "asstes/image/Back.png";

 
  static const String assetsImageHouse = "asstes/image/House.png";

  static const String HomeImage = "asstes/image/Image.png";

  static const String NetWorkData = "asstes/image/images.png";

  static const String Indicator = "asstes/image/Indicator.png";

  static const String assetsImageRectangle1 = "asstes/image/Rectangle 1.png";

  static const String offline =
      "asstes/image/wifi-error-signal-offline-icon-off-vector-37642163.jpg";
}

dynamic Contion_image_state(WeatherModel weatherModel) {
    if (weatherModel.forecast.forecastday[0].condition.text == "Cloudy") {
      return "asstes/415.png";
    } else if (weatherModel.forecast.forecastday[0].condition.text == "Sunny") {
      return 'asstes/396.png';
    } else if (weatherModel.forecast.forecastday[0].condition.text ==
        "Partly Cloudy ") {
      return 'asstes/423.png';
    } else if (weatherModel.forecast.forecastday[0].condition.text ==
        "Overcast") {
      return 'asstes/415.png';
    } else if (weatherModel.forecast.forecastday[0].condition.text == "Mist") {
      return 'asstes/305.png';
    } else if (weatherModel.forecast.forecastday[0].condition.text ==
        "Patchy snow possible") {
      return 'asstes/412.png';
    } else {
      return 'asstes/113.png';
    }
  }