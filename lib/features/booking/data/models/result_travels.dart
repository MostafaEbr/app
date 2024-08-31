class ResultTravels {
  SearchMetadata? searchMetadata;
  SearchParameters? searchParameters;
  List<BestFlights>? bestFlights;
  List<BestFlights>? otherFlights;
  PriceInsights? priceInsights;

  ResultTravels(
      {this.searchMetadata,
        this.searchParameters,
        this.bestFlights,
        this.otherFlights,
        this.priceInsights});

  ResultTravels.fromJson(Map<String, dynamic> json) {
    searchMetadata = json['search_metadata'] != null
        ? new SearchMetadata.fromJson(json['search_metadata'])
        : null;
    searchParameters = json['search_parameters'] != null
        ? new SearchParameters.fromJson(json['search_parameters'])
        : null;
    if (json['best_flights'] != null) {
      bestFlights = <BestFlights>[];
      json['best_flights'].forEach((v) {
        bestFlights!.add(new BestFlights.fromJson(v));
      });
    }
    if (json['other_flights'] != null) {
      otherFlights = <BestFlights>[];
      json['other_flights'].forEach((v) {
        otherFlights!.add( BestFlights.fromJson(v));
      });
    }
    priceInsights = json['price_insights'] != null
        ?  PriceInsights.fromJson(json['price_insights'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.searchMetadata != null) {
      data['search_metadata'] = this.searchMetadata!.toJson();
    }
    if (this.searchParameters != null) {
      data['search_parameters'] = this.searchParameters!.toJson();
    }
    if (this.bestFlights != null) {
      data['best_flights'] = this.bestFlights!.map((v) => v.toJson()).toList();
    }
    if (this.otherFlights != null) {
      data['other_flights'] =
          this.otherFlights!.map((v) => v.toJson()).toList();
    }
    if (this.priceInsights != null) {
      data['price_insights'] = this.priceInsights!.toJson();
    }
    return data;
  }
}

class SearchMetadata {
  String? id;
  String? status;
  String? jsonEndpoint;
  String? createdAt;
  String? processedAt;
  String? googleFlightsUrl;
  String? rawHtmlFile;
  String? prettifyHtmlFile;
  double? totalTimeTaken;

  SearchMetadata(
      {this.id,
        this.status,
        this.jsonEndpoint,
        this.createdAt,
        this.processedAt,
        this.googleFlightsUrl,
        this.rawHtmlFile,
        this.prettifyHtmlFile,
        this.totalTimeTaken});

  SearchMetadata.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    status = json['status'];
    jsonEndpoint = json['json_endpoint'];
    createdAt = json['created_at'];
    processedAt = json['processed_at'];
    googleFlightsUrl = json['google_flights_url'];
    rawHtmlFile = json['raw_html_file'];
    prettifyHtmlFile = json['prettify_html_file'];
    totalTimeTaken = json['total_time_taken'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['status'] = this.status;
    data['json_endpoint'] = this.jsonEndpoint;
    data['created_at'] = this.createdAt;
    data['processed_at'] = this.processedAt;
    data['google_flights_url'] = this.googleFlightsUrl;
    data['raw_html_file'] = this.rawHtmlFile;
    data['prettify_html_file'] = this.prettifyHtmlFile;
    data['total_time_taken'] = this.totalTimeTaken;
    return data;
  }
}

class SearchParameters {
  String? engine;
  String? hl;
  String? gl;
  String? type;
  String? departureId;
  String? arrivalId;
  String? outboundDate;
  int? travelClass;
  int? adults;

  SearchParameters(
      {this.engine,
        this.hl,
        this.gl,
        this.type,
        this.departureId,
        this.arrivalId,
        this.outboundDate,
        this.travelClass,
        this.adults});

  SearchParameters.fromJson(Map<String, dynamic> json) {
    engine = json['engine'];
    hl = json['hl'];
    gl = json['gl'];
    type = json['type'];
    departureId = json['departure_id'];
    arrivalId = json['arrival_id'];
    outboundDate = json['outbound_date'];
    travelClass = json['travel_class'];
    adults = json['adults'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['engine'] = this.engine;
    data['hl'] = this.hl;
    data['gl'] = this.gl;
    data['type'] = this.type;
    data['departure_id'] = this.departureId;
    data['arrival_id'] = this.arrivalId;
    data['outbound_date'] = this.outboundDate;
    data['travel_class'] = this.travelClass;
    data['adults'] = this.adults;
    return data;
  }
}

class BestFlights {
  List<Flights>? flights;
  List<Layovers>? layovers;
  int? totalDuration;
  CarbonEmissions? carbonEmissions;
  int? price;
  String? type;
  String? airlineLogo;
  String? bookingToken;

  BestFlights(
      {this.flights,
        this.layovers,
        this.totalDuration,
        this.carbonEmissions,
        this.price,
        this.type,
        this.airlineLogo,
        this.bookingToken});

  BestFlights.fromJson(Map<String, dynamic> json) {
    if (json['flights'] != null) {
      flights = <Flights>[];
      json['flights'].forEach((v) {
        flights!.add(new Flights.fromJson(v));
      });
    }
    if (json['layovers'] != null) {
      layovers = <Layovers>[];
      json['layovers'].forEach((v) {
        layovers!.add(new Layovers.fromJson(v));
      });
    }
    totalDuration = json['total_duration'];
    carbonEmissions = json['carbon_emissions'] != null
        ? new CarbonEmissions.fromJson(json['carbon_emissions'])
        : null;
    price = json['price'];
    type = json['type'];
    airlineLogo = json['airline_logo'];
    bookingToken = json['booking_token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.flights != null) {
      data['flights'] = this.flights!.map((v) => v.toJson()).toList();
    }
    if (this.layovers != null) {
      data['layovers'] = this.layovers!.map((v) => v.toJson()).toList();
    }
    data['total_duration'] = this.totalDuration;
    if (this.carbonEmissions != null) {
      data['carbon_emissions'] = this.carbonEmissions!.toJson();
    }
    data['price'] = this.price;
    data['type'] = this.type;
    data['airline_logo'] = this.airlineLogo;
    data['booking_token'] = this.bookingToken;
    return data;
  }
}

class DepartureAirport {
  String? name;
  String? id;
  String? time;

  DepartureAirport({this.name, this.id, this.time});

  DepartureAirport.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    id = json['id'];
    time = json['time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['id'] = this.id;
    data['time'] = this.time;
    return data;
  }
}

class Layovers {
  int? duration;
  String? name;
  String? id;
  bool? overnight;

  Layovers({this.duration, this.name, this.id, this.overnight});

  Layovers.fromJson(Map<String, dynamic> json) {
    duration = json['duration'];
    name = json['name'];
    id = json['id'];
    overnight = json['overnight'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['duration'] = this.duration;
    data['name'] = this.name;
    data['id'] = this.id;
    data['overnight'] = this.overnight;
    return data;
  }
}

class CarbonEmissions {
  int? thisFlight;

  CarbonEmissions({this.thisFlight});

  CarbonEmissions.fromJson(Map<String, dynamic> json) {
    thisFlight = json['this_flight'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['this_flight'] = this.thisFlight;
    return data;
  }
}

class Flights {
  DepartureAirport? departureAirport;
  DepartureAirport? arrivalAirport;
  int? duration;
  String? airplane;
  String? airline;
  String? airlineLogo;
  String? travelClass;
  String? flightNumber;
  String? legroom;
  List<String>? extensions;
  bool? overnight;

  Flights(
      {this.departureAirport,
        this.arrivalAirport,
        this.duration,
        this.airplane,
        this.airline,
        this.airlineLogo,
        this.travelClass,
        this.flightNumber,
        this.legroom,
        this.extensions,
        this.overnight});

  Flights.fromJson(Map<String, dynamic> json) {
    departureAirport = json['departure_airport'] != null
        ? new DepartureAirport.fromJson(json['departure_airport'])
        : null;
    arrivalAirport = json['arrival_airport'] != null
        ? new DepartureAirport.fromJson(json['arrival_airport'])
        : null;
    duration = json['duration'];
    airplane = json['airplane'];
    airline = json['airline'];
    airlineLogo = json['airline_logo'];
    travelClass = json['travel_class'];
    flightNumber = json['flight_number'];
    legroom = json['legroom'];
    extensions = json['extensions'].cast<String>();
    overnight = json['overnight'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.departureAirport != null) {
      data['departure_airport'] = this.departureAirport!.toJson();
    }
    if (this.arrivalAirport != null) {
      data['arrival_airport'] = this.arrivalAirport!.toJson();
    }
    data['duration'] = this.duration;
    data['airplane'] = this.airplane;
    data['airline'] = this.airline;
    data['airline_logo'] = this.airlineLogo;
    data['travel_class'] = this.travelClass;
    data['flight_number'] = this.flightNumber;
    data['legroom'] = this.legroom;
    data['extensions'] = this.extensions;
    data['overnight'] = this.overnight;
    return data;
  }
}

class PriceInsights {
  int? lowestPrice;
  String? priceLevel;
  List<int>? typicalPriceRange;

  PriceInsights({this.lowestPrice, this.priceLevel, this.typicalPriceRange});

  PriceInsights.fromJson(Map<String, dynamic> json) {
    lowestPrice = json['lowest_price'];
    priceLevel = json['price_level'];
    typicalPriceRange = json['typical_price_range'].cast<int>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lowest_price'] = this.lowestPrice;
    data['price_level'] = this.priceLevel;
    data['typical_price_range'] = this.typicalPriceRange;
    return data;
  }
}
