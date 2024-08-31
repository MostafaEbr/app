import 'package:flutter_gen/gen_l10n/app_localizations.dart';


List<String> ticketClassList(context){
  return
    ['Economy', 'Business', 'First Class']
  ;
}

List<String> ticketTypeList(context){
  return [AppLocalizations.of(context)!.roundedTrip, AppLocalizations.of(context)!.oneWay, AppLocalizations.of(context)!.multiCity];
}