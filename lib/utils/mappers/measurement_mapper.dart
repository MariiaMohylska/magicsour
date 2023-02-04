import 'package:magicsour/models/measurement.dart';
import 'package:magicsour/s_localization.dart';

class MeasurementMapper {
  static String measurementToString(
      Measurement measurement) {
    switch (measurement) {
      case Measurement.gram:
        return S.instance!.gram;
      case Measurement.kilogram:
        return S.instance!.kilogram;
      case Measurement.liter:
        return S.instance!.liter;
      case Measurement.millilitre:
        return S.instance!.milliliter;
      case Measurement.cup:
        return S.instance!.cup;
      case Measurement.tablespoon:
        return S.instance!.tablespoon;
      case Measurement.teaspoon:
        return S.instance!.teaspoon;
      case Measurement.pinch:
        return S.instance!.pinch;
      case Measurement.piece:
        return S.instance!.piece;
    }
  }

  static Measurement measurementFromString(String measurement) => {
    S.instance!.gram: Measurement.gram,
    S.instance!.kilogram: Measurement.kilogram,
    S.instance!.liter: Measurement.liter,
    S.instance!.milliliter: Measurement.millilitre,
    S.instance!.cup: Measurement.cup,
    S.instance!.tablespoon: Measurement.tablespoon,
    S.instance!.teaspoon: Measurement.teaspoon,
    S.instance!.pinch: Measurement.pinch,
    S.instance!.piece: Measurement.piece,
  }[measurement] ?? Measurement.piece;
}