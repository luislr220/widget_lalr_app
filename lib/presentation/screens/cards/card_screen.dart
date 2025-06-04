import 'package:flutter/material.dart';

const cards = <Map<String, dynamic>>[
  {'elevation': 0.0, 'label': 'Elevation 0.0'},
  {'elevation': 1.0, 'label': 'Elevation 1.0'},
  {'elevation': 2.0, 'label': 'Elevation 2.0'},
  {'elevation': 3.0, 'label': 'Elevation 3.0'},
  {'elevation': 4.0, 'label': 'Elevation 4.0'},
  {'elevation': 5.0, 'label': 'Elevation 5.0'},
];

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tarjetas')),
      body: _CardView(),
    );
  }
}

class _CardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...cards.map(
            (card) =>
                _CardType1(label: card['label'], elevation: card['elevation']),
          ),

          ...cards.map(
            (card) =>
                _CardType2(label: card['label'], elevation: card['elevation']),
          ),

          ...cards.map(
            (card) =>
                _CardType3(label: card['label'], elevation: card['elevation']),
          ),

          ...cards.map(
            (card) =>
                _CardType4(label: card['label'], elevation: card['elevation']),
          ),

          const SizedBox(height: 60),
        ],
      ),
    );
  }
}

class _CardType1 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardType1({required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: Padding(
        // Removido el const aquí
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: Icon(Icons.more_vert),
                onPressed:
                    null, // Puedes dejarlo como null o agregar una función
              ),
            ),

            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                label,
              ), // Este Text no puede ser const porque label es variable
            ),
          ],
        ),
      ),
    );
  }
}

class _CardType2 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardType2({required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        side: BorderSide(color: colors.outline),
      ),
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: Icon(Icons.more_vert),
                onPressed:
                    null, // Puedes dejarlo como null o agregar una función
              ),
            ),

            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                label,
              ), // Este Text no puede ser const porque label es variable
            ),
          ],
        ),
      ),
    );
  }
}

class _CardType3 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardType3({required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Card(
      color: colors.surfaceContainerHighest,
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: Icon(Icons.more_vert),
                onPressed:
                    null, // Puedes dejarlo como null o agregar una función
              ),
            ),

            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                '$label - outline',
              ), // Este Text no puede ser const porque label es variable
            ),
          ],
        ),
      ),
    );
  }
}

class _CardType4 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardType4({required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      elevation: elevation,
      child: Stack(
        children: [
          Image.network(
            'https://picsum.photos/id/${elevation.toInt() + 80}/600/250',
            fit: BoxFit.fill,
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                ),
              ),
              child: const IconButton(
                icon: Icon(Icons.more_vert),
                onPressed:
                    null, // Puedes dejarlo como null o agregar una función
              ),
            ),
          ),

          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              label,
              style: const TextStyle(color: Colors.white),
            ), // Este Text no puede ser const porque label es variable
          ),
        ],
      ),
    );
  }
}


//animated screen
//app tutorial screen
//infiniti scroll screen
//progress screen
//snackbar screen
//ui controls screen