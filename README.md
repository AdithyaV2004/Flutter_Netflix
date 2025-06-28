# flutter_netflix

Clone of netflix.

5 navigation screens.

5 individual directories for each screen.

Switching to each directories is controlled in screen_main_page.dart.

All constant values are kept in a file and are called when needed for easy modification like colors and spacings.

Seperate file for appbar widget in each page. Switches dynamically with valuenotifier

Navigationbar configuration in bottom_nav.dart

--Downloads Page--

    divided the page into 3 sections, each section is a widget. 

        1. One icon and text

        2. Title, subtitle and the movie posters held in a circular avatar which is held in a container(transparent), each poster is a seperate widget.

        3. two buttons

    Each section is part of a listview.seperated with a sizedbox divider
