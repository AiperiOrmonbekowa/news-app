class Country {
  Country({
    required this.name,
    required this.domain,
  });

  final String name;
  final String domain;
}

Country unitedArabEmirates =
    Country(name: 'United Arab Emirates', domain: 'ae');
Country switzerlan = Country(name: 'Switzerlan', domain: 'ch');
Country russia = Country(name: 'Россия', domain: 'ru');
Country indonesia = Country(name: 'Indonesia', domain: 'id');
Country india = Country(name: 'India', domain: 'in');
Country usa = Country(name: 'Usa', domain: 'us');
Country korea = Country(name: 'Korea', domain: 'kr');
Country turkey = Country(name: 'Turkey', domain: 'tr');
Country ukraine = Country(name: 'Ukraine', domain: 'ua');

Set<Country> countrySet = {
  unitedArabEmirates,
  switzerlan,
  russia,
  indonesia,
  india,
  usa,
  korea,
  turkey,
  ukraine
};

List<Country> country = [
  unitedArabEmirates,
  switzerlan,
  russia,
  indonesia,
  india,
  usa,
  korea,
  turkey,
  ukraine
];
