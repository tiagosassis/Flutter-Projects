// ignore_for_file: camel_case_types

class CurrencyModel{
    String? name;
    double real, bitcoin, dollar, euro;

    CurrencyModel({this.name, required this.real, required this.dollar, required this.euro, required this.bitcoin});

    

    static List<CurrencyModel> getCurrencies(){
        return <CurrencyModel>[
            CurrencyModel(
                name: 'Real', real: 1.0, dollar: 0.18, euro: 0.15, bitcoin: 0.000016), 
            CurrencyModel(
                name: 'Dollar', real: 5.65, dollar: 1.0, euro: 0.85, bitcoin: 0.000088), 
            CurrencyModel(
                name: 'Euro', real: 6.62, dollar: 1.17, euro: 1.0, bitcoin: 0.000010), 
            CurrencyModel(
                name: 'Bitcoin',
                real: 64116.51,
                dollar: 11351.30,
                euro: 9689.54,
                bitcoin: 1,
            ), 
        ];
    }
}