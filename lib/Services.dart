import 'package:ussd_service/ussd_service.dart';


makeRequest(option) async {
  int subscriptionId = 1; // sim card subscription ID
  String code = '*99*${option.toString()}#'; // ussd code payload
  try{String ussdResponseMessage = await UssdService.makeRequest(
    subscriptionId,
    code,
    Duration(seconds: 0),// timeout (optional) - default is 10 seconds
  );
  print(1);}
  catch(e){print(2);}
}
class Services{
  checkBalance(){
    makeRequest('3');
  }
  sendMoney(){
  makeRequest('1*3');
  }
  recieveMoney(){
  makeRequest('2');
  }
}