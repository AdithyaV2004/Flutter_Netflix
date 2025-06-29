# flutter_netflix

Clone of netflix.

All dummy data will be filled with APIs

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

    Each section is part of a listview.seperated with a sizedbox divider.

--Search Page--

    Consists of 2 pages

        All icons are CupertinoIcons. Install CupertinoIcons package

        Title at the top is a widget in a seperate file.

        1.idle-

            ListView.seperated with widget for the tile: Poster name and play button.

        2.Results-

            Gridview with poster images.

--Fast Laugh--

    Pageview with scroll vertical.

    Row with mute button aligned to the end(Cross Axis).

    Column with A circular avatar and 4 icons aligned to the end(main).

--Home--

    All rows are refactored widgets genereated with Listview.generate.

    Title is seperately refactored.

    Third row is stack.


