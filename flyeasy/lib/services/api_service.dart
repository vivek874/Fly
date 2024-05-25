import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/flight.dart';
import 'package:http/io_client.dart';
import 'dart:io';

class ApiService {
  static const String apiUrl =
      'https://www.buddhaair.com/soap/FlightAvailability';

  // Define createHttpClient outside fetchFlights method
  http.Client createHttpClient() {
    final HttpClient httpClient = HttpClient()
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
    return IOClient(httpClient);
  }

  Future<List<Flight>> fetchFlights() async {
    final http.Client client = createHttpClient();
    final response = await client.post(
      Uri.parse(apiUrl),
      body: jsonEncode({
        "intAdult": 1,
        "intChild": 0,
        "strFlightDate": "26-May-2024",
        "strNationality": "NP",
        "strReturnDate": "31-May-2024",
        "strSectorFrom": "PKR",
        "strSectorTo": "KTM",
        "strTripType": "R"
      }),
      headers: {'Content-Type': 'application/json; charset=utf-8'},
    );

    if (response.statusCode == 200) {
      Map<String, dynamic> jsonResponse = jsonDecode(response.body);
      if (jsonResponse.containsKey('data')) {
        List<dynamic> flightList =
            jsonResponse['data']['outbound']['flightsector']['flightdetail'];
        List<Flight> flights =
            flightList.map((dynamic item) => Flight.fromJson(item)).toList();
        return flights;
      } else {
        throw Exception('Failed to load flights');
      }
    } else {
      throw Exception('Failed to fetch flights: ${response.statusCode}');
    }
  }
}
