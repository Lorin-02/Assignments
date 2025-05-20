import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class Country {
  final String name;
  final String code;

  const Country({required this.name, required this.code});
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive Country Flags',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const FlagGridPage(),
    );
  }
}

class FlagGridPage extends StatelessWidget {
  const FlagGridPage({super.key});

  final List<Country> countries = const [
    Country(name: 'United States', code: 'us'),
    Country(name: 'India', code: 'in'),
    Country(name: 'Germany', code: 'de'),
    Country(name: 'Italy', code: 'it'),
    Country(name: 'Japan', code: 'jp'),
    Country(name: 'Canada', code: 'ca'),
    Country(name: 'France', code: 'fr'),
    Country(name: 'Brazil', code: 'br'),
    Country(name: 'United Kingdom', code: 'gb'),
    Country(name: 'China', code: 'cn'),
    Country(name: 'South Korea', code: 'kr'),
    Country(name: 'Spain', code: 'es'),
    Country(name: 'Australia', code: 'au'),
    Country(name: 'Mexico', code: 'mx'),
    Country(name: 'Russia', code: 'ru'),
    Country(name: 'Bangladesh', code: 'bd'),
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    int crossAxisCount;
    if (screenWidth < 600) {
      crossAxisCount = 2; // Mobile
    } else if (screenWidth < 1024) {
      crossAxisCount = 3; // Tablet
    } else {
      crossAxisCount = 4; // Desktop
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Country Flag Cards'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: Wrap(
            spacing: 16,
            runSpacing: 16,
            children: countries.map((country) {
              return SizedBox(
                width: screenWidth / crossAxisCount - 24,
                child: CountryCard(country: country),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class CountryCard extends StatelessWidget {
  final Country country;

  const CountryCard({super.key, required this.country});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius:
            const BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.network(
              'https://flagcdn.com/w320/${country.code}.png',
              height: 120,
              fit: BoxFit.cover,
              errorBuilder: (_, __, ___) => const Icon(Icons.flag),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              country.name,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
