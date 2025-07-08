import 'package:atomic_design_system/atomic_design_system.dart';
import 'package:atomic_design_system/atoms/buttons/favorite_button.dart';
import 'package:atomic_design_system/atoms/image_card.dart';
import 'package:atomic_design_system/atoms/rating_icon.dart';
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
            Icons.arrow_back_ios_rounded,
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
                color: AtomicDesignColors.light,
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
                    leading: ButtonAppbar(icon: Icons.place, onPressed: () {}),
                    title: const Text(
                      'Appbar Button',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: AtomicDesignColors.light,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: const Text(
                      'A customizable button widget used into the Appbar to navigate other routes',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: AtomicDesignColors.light,
                        fontSize: 14.0,
                        fontWeight: FontWeight.normal,
                      ),
                    ),

                    onTap: () {},
                  ),
                  ListTile(
                    leading: FavoriteButton(favoriteOnPressed: () {}),
                    title: const Text(
                      'Favorite Button',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: AtomicDesignColors.light,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: const Text(
                      'A button that allows user to add a product to favorites',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: AtomicDesignColors.light,
                        fontSize: 14.0,
                        fontWeight: FontWeight.normal,
                      ),
                    ),

                    onTap: () {},
                  ),
                   ListTile(
                    leading: TitleAppbar(title: 'Title',),
                    title: const Text(
                      'Title',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: AtomicDesignColors.light,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: const Text(
                      'A title text',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: AtomicDesignColors.light,
                        fontSize: 14.0,
                        fontWeight: FontWeight.normal,
                      ),
                    ),

                    onTap: () {},
                  ),

                  ListTile(
                    leading: RatingIcon(),
                    title: const Text(
                      'Rating Button',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: AtomicDesignColors.light,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: const Text(
                      'Indicates a product rating or score',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: AtomicDesignColors.light,
                        fontSize: 14.0,
                        fontWeight: FontWeight.normal,
                      ),
                    ),

                    onTap: () {},
                  ),
                  ListTile(
                    leading: PrimaryButton(
                      text: 'Conocer más',
                      onPressed: () {},
                    ),
                    title: const Text(
                      'Primary Button',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: AtomicDesignColors.light,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: const Text(
                      'A customizable button that allows to execute an specific action',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: AtomicDesignColors.light,
                        fontSize: 14.0,

                        fontWeight: FontWeight.normal,
                      ),
                    ),

                    onTap: () {},
                  ),
                  ListTile(
                    leading: SizedBox(
                      width: 130,
                      height: 100,
                      child: SearchField(hintText: '', onChanged: (value) {}),
                    ),
                    title: const Text(
                      'Text Field',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: AtomicDesignColors.light,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: const Text(
                      'A customizable text field that allows to search',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: AtomicDesignColors.light,
                        fontSize: 14.0,

                        fontWeight: FontWeight.normal,
                      ),
                    ),

                    onTap: () {},
                  ),
                  ListTile(
                    leading: ImageCard(
                      imageUrl:
                          'https://www.mcw.edu/-/media/MCW/Content-Hub/Story-Photos/Science-Spectrum-Graphic_Article.png?h=833&w=811&hash=31D41E0ABB7A5C709E95307A58466016',
                    ),
                    title: const Text(
                      'Card Image',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: AtomicDesignColors.light,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: const Text(
                      'Allows to show an image',
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
