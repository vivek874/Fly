class Flight {
  final String flightid;
  final String flightdate;
  final String flightno;
  final String classcode;
  final String departurecity;
  final String departuretime;
  final String arrivalcity;
  final String arrivaltime;
  final String sectorpair;
  final double fare;
  final double childfare;
  final double surcharge;
  final double vat;
  final String freebaggage;
  final String refundable;
  final String cancellationchargebefore24hours;
  final String cancellationchargeafter24hours;
  final String airfare;


  Flight({
    required this.flightid,
    required this.flightdate,
    required this.flightno,
    required this.classcode,
    required this.departurecity,
    required this.departuretime,
    required this.arrivalcity,
    required this.arrivaltime,
    required this.sectorpair,
    required this.fare,
    required this.childfare,
    required this.surcharge,
    required this.vat,
    required this.freebaggage,
    required this.refundable,
    required this.cancellationchargebefore24hours,
    required this.cancellationchargeafter24hours,
    required this.airfare,
  });

  factory Flight.fromJson(Map<String,dynamic> json) {
    return Flight(
      flightid: json['flightid'],
      flightdate: json['flightdate'],
      flightno: json['flightno'],
      classcode: json['classcode'],
      departurecity: json['departurecity'],
      departuretime: json['departuretime'],
      arrivalcity: json['arrivalcity'],
      arrivaltime: json['arrivaltime'],
      sectorpair: json['sectorpair'],
      fare: double.parse(json['airfare']['faredetail']['fare']),
      childfare: double.parse(json['airfare']['faredetail']['childfare']),
      surcharge: double.parse(json['airfare']['faredetail']['surcharge']),
      vat: double.parse(json['airfare']['faredetail']['vat']),
      freebaggage: json['freebaggage'],
      refundable: json['refundable'],
      cancellationchargebefore24hours: json['cancellationcharge']['before24hours'],
      cancellationchargeafter24hours: json['cancellationcharge']['after24hours'],
        airfare: json['airfare']['faredetail']['fare'],
    );
  }
}