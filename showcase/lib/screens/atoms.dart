import 'package:atomic_design_system/tokens/atomic_system_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AtomsPage extends StatelessWidget {
  const AtomsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: AtomicDesignColors.dark, // Change the color to white
        leading: IconButton(
          icon: const Icon(
            Icons.undo,
            color: Colors.white,
          ), // Change the icon to a curved arrow and set the color to white
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text('Atoms'),
      ),
      body: Container(
        decoration: const BoxDecoration(color: AtomicDesignColors.dark),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            const Text(
              'A T O M S',
              style: TextStyle(
                fontFamily: 'Montserrat',
                color: AtomicDesignColors.dark,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10.0),
            const Text(
              'Inventario de componentes',
              style: TextStyle(
                fontFamily: 'Montserrat',
                color: AtomicDesignColors.light,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 33.0),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: AtomicDesignColors.favorite,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    title: const Text(
                      'WeinDsButton',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: AtomicDesignColors.light,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: const Text(
                      'A customizable button widget with primary and secondary styles.',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: AtomicDesignColors.light,
                        fontSize: 14.0,
                        fontWeight: FontWeight.normal,
                      ),
                    ),

                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
