import 'package:atomic_design_system/atomic_design_system.dart';
import 'package:atomic_design_system/tokens/atomic_system_colors.dart';
import 'package:flutter/material.dart';

class AtomsPage extends StatelessWidget {
  const AtomsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: AtomicDesignColors.dark,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_rounded, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(color: AtomicDesignColors.dark),
        child: Column(
          children: [
            const TitleAppbar(
              title: 'A T O M S',
              color: AtomicDesignColors.light,
            ),
            const SizedBox(height: 10.0),
            const TitleAppbar(
              title: 'Inventario de componentes',
              color: AtomicDesignColors.light,
            ),
            const SizedBox(height: 20.0),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: ButtonAppbar(
                      icon: Icons.place,
                      onPressed: () => debugPrint('Appbar button pressed'),
                    ),
                    title: Text('Appbar Button', style: titleStyle()),
                    subtitle: const Text(
                      'A customizable button widget used into the Appbar to navigate other routes',
                      style: TextStyle(color: AtomicDesignColors.light),
                    ),
                    onTap: () => debugPrint('Appbar button pressed'),
                  ),
                  ListTile(
                    leading: FavoriteButton(
                      favoriteOnPressed:
                          () => debugPrint('Favorite button pressed'),
                    ),
                    title: Text('Favorite Button', style: titleStyle()),
                    subtitle: const Text(
                      'A button that allows user to add a product to favorites',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: AtomicDesignColors.light,
                      ),
                    ),

                    onTap: () {},
                  ),
                  ListTile(
                    leading: TitleAppbar(
                      title: 'Title',
                      color: AtomicDesignColors.light,
                    ),
                    title: Text('Title', style: titleStyle()),
                    subtitle: const Text(
                      'A title text',
                      style: TextStyle(color: AtomicDesignColors.light),
                    ),
                    onTap: () => debugPrint('Title text pressed'),
                  ),
                  ListTile(
                    leading: RatingIcon(),
                    title: Text('Rating Button', style: titleStyle()),
                    subtitle: const Text(
                      'Indicates a product rating or score',
                      style: TextStyle(color: AtomicDesignColors.light),
                    ),
                    onTap: () => debugPrint('Rating button pressed'),
                  ),
                  ListTile(
                    leading: PrimaryButton(
                      text: 'Conocer más',
                      onPressed: () => debugPrint('Primary button pressed'),
                    ),
                    title: Text('Primary Button', style: titleStyle()),
                    subtitle: const Text(
                      'A customizable button that allows to execute an specific action',
                      style: TextStyle(color: AtomicDesignColors.light),
                    ),
                    onTap: () => debugPrint('Primary button pressed'),
                  ),
                  ListTile(
                    leading: SizedBox(
                      width: 130,
                      height: 100,
                      child: SearchField(
                        hintText: 'Search',
                        onChanged: (value) => debugPrint(value),
                      ),
                    ),
                    title: Text('Text Field', style: titleStyle()),
                    subtitle: const Text(
                      'A customizable text field that allows to search',
                      style: TextStyle(color: AtomicDesignColors.light),
                    ),
                    onTap: () => debugPrint('Text field pressed'),
                  ),
                  ListTile(
                    leading: ImageCard(
                      imageUrl:
                          'https://www.mcw.edu/-/media/MCW/Content-Hub/Story-Photos/Science-Spectrum-Graphic_Article.png?h=833&w=811&hash=31D41E0ABB7A5C709E95307A58466016',
                    ),
                    title: Text('Card Image', style: titleStyle()),
                    subtitle: const Text(
                      'Allows to show an image',
                      style: TextStyle(color: AtomicDesignColors.light),
                    ),
                    onTap: () => debugPrint('image pressed'),
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

TextStyle titleStyle() {
  return TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.bold,
    color: AtomicDesignColors.light,
  );
}
