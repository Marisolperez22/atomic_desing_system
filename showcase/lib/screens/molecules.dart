import 'package:flutter/material.dart';

import 'package:atomic_design_system/atomic_design_system.dart';
import 'package:atomic_design_system/tokens/atomic_system_colors.dart';

class Molecules extends StatelessWidget {
  const Molecules({super.key});

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
        decoration: const BoxDecoration(color: AtomicDesignColors.dark),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            const TitleAppbar(
              title: 'M O L E C U L E S',
              color: AtomicDesignColors.light,
            ),
            const SizedBox(height: 10.0),
            const TitleAppbar(
              title: 'Inventario de componentes',
              color: AtomicDesignColors.light,
            ),
            const SizedBox(height: 20.0),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: ListView(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Custom Search Bar',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          width: 540,
                          child: CustomSearchBar(
                            hintText: 'Type to search',
                            buttonText: 'Search',
                            onSearchChanged: (value) {},
                            onSearchPressed: () {},
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'User profile avatar',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Expanded(
                          child: UserProfile(
                            avatarSize: 70,
                            name: 'User name',
                            avatarPath:
                                'https://cdn-icons-png.flaticon.com/512/3135/3135715.png',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Styled card',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Expanded(
                          child: StyledCard(
                            imageUrl:
                                'https://underarmourcol.vtexassets.com/arquivos/ids/601872/3028487-101_022_1.png?v=638703255000730000',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
