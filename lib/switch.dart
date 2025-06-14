enum WeatherCondition { clear, rainy, cloudy, snowy, unknown }

extension on int {
  WeatherCondition get toCondition {
    switch (this) {
      case 0:
        return WeatherCondition.clear;
      case 1:
      case 2:
      case 3:
      case 45:
      case 48:
        return WeatherCondition.cloudy;
      case 51:
      case 53:
      case 55:
      case 56:
      case 57:
      case 61:
      case 63:
      case 65:
      case 66:
      case 67:
      case 80:
      case 81:
      case 82:
      case 95:
      case 96:
      case 99:
        return WeatherCondition.rainy;
      case 71:
      case 73:
      case 75:
      case 77:
      case 85:
      case 86:
        return WeatherCondition.snowy;
      default:
        return WeatherCondition.unknown;
    }
  }

  WeatherCondition get toCondition2 => switch (this) {
        0 => WeatherCondition.clear,
        1 || 2 || 3 || 45 || 48 => WeatherCondition.cloudy,
        51 || 53 || 55 || 56 || 57 || 61 || 63 || 65 || 66 || 67 || 80 || 81 || 82 || 95 || 96 || 99 => WeatherCondition.rainy,
        71 || 73 || 75 || 77 || 85 || 86 => WeatherCondition.snowy,
        _ => WeatherCondition.unknown,
      };
}

void main() {
  for (int i = 0; i < 99; i++) {
    print(i.toCondition == i.toCondition2);
  }
}
