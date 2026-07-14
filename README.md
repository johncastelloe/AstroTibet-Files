# AstroTibet-Files
Highlights from past versions of the AstroTibet mobile app

## About AstroTibet

The annual series of AstroTibet apps from 2011 to 2018 served as an interactive version of the annual [Liberation Calendar](https://liberationcalendar.com/), an astrological calendar based on Tibetan Buddhism. It shows which days in the year are favorable or unfavorable for about 40 types of activities.

AstroTibet and the Liberation Calendar have been the top funding sources for Liberation Prison Project (LPP), a 501(c)(3) nonprofit that supports people in prison interested in exploring, studying, and practicing Buddhism. The focus is on practical methods for managing anger and developing compassion.

The Liberation Calendar was created in 1998 by Ven. Robina Courtin, who founded LPP in 1996 and served as Executive Director until 2010. She introduced the concept of the AstroTibet app in 2010 and invited me (John Castelloe), the volunteer IT manager for LPP since that time, to be the technical lead. I hired mobile app developer Jerrod Blavos to create and maintain AstroTibet, using personal funds as a donation-in-kind to LPP. After developing AstroTibet '11 through AstroTibet '14, Jerrod generously offered his work on AstroTibet '15 through AstroTibet '18 as an in-kind donation to LPP as well.

Since 2018 many people have been asking LPP to produce an app again, and we're excited to have the opportunity now. 

## Files from AstroTibet '17

This repository is based on AstroTibet '17 (rather than '18) because it has the most complete archive.

### Android build

- This is the .apk file for AstroTibet '17, downloaded before the Google Play Console account expired in 2024. The associated Google account is still accessible, but nothing AstroTibet-related is there anymore. To resume app-development we would need to create a new Google Play Console account for a one-time fee of $25.

### iOS builds

- The Apple Developer account for AstroTibet is accessible, but the membership expired several years ago. It maintains a history of all the AstroTibet apps, but we would need to re-join and pay the $100 annual fee to access app-related files. I don't have any iOS builds archived.

### Data package (1. initial stage)

- This is the raw calendar grid data and a SAS program that does some validation to detect astrology mistakes and converts it to a structure that was more convenient for the app developer at the time.

### Data package (2. final stage)

- This is the complete package of files that was sent to the app developer.

### Hardcopy

- This is the annual Liberation Calendar PDF product that I used as a source for data and design elements. The 2017 and 2026 versions are included.

### Marketing screenshots

- These were used for listings on the iOS App Store, Google Play, and Amazon.

### Walkthrough screenshots

Click [here](https://johncastelloe.github.io/AstroTibet-Files/AstroTibet%20Walkthrough.html) for a full slideshow tour of the app's features. The descriptions within the slideshow are also shown below.

- 03 Today (as of 2017)
   - Tibetan months and days are based on lunar cycles and are numbered differently than Western ones.
   - There is a mantra for each Western month; two versions of each mantra are available (one chanted by a Tibetan male, the other by a Western female).
   - The app isn't meant to make sense after the year is over (e.g., Nov 19 was a Sunday in 2017, and that's what it's calling "today").
   - In this color scheme, all entries should have white background, and this applies to lists throughout the whole app. It's a bug that some don't (such as "Favorable Day (Fire-Fire)" here).
- 04 Today ctd.
   - This list shows the four "day types" (out of about 40) that apply to Nov 19, 2017.
   - Some day types are "auspicious" (e.g., the first & last here) and others "inauspicious" (e.g., the middle two here).
- 05 Next day
   - Arrows at top right scroll through days.
- 06 All months
   - Can get here from 2nd tab at the bottom ("Months").
- 08 January
   - Tapping a month in the Months list shows a summary of the entire month.
- 14 February
   - Arrows at top right on a Month page scroll through months.
- 15 December
   - Month scrolling wraps around to/from January and December.
- 16 December 1
   - Tapping a day on a Month page goes to the detailed view for that day.
- 17 Upcoming by day type
   - Can get here from 3rd tab at the bottom ("Upcoming").
   - It's a long list of about 40 types of days.
- 18 First day type upcoming
   - Tapping on a day type shows all days in the year for which it applies.
   - Tapping on a day here goes to the detailed view for that day.
- 26 About_Help
   - This is a good summary of the app's purpose and usage.

### Functional requirements

Note that the specs below were for the original 2011 version. Since then we have increased the number of day types and made some minor changes to the hardcopy design.

1. Basics:
   - primary name = AstroTibet
   - secondary name = YYYY Liberation Tibetan Buddhist Calendar and Astrology
2. Same look and feel as existing LPP branding, except where iPhone conventions would be preferable
   - bold colors with clean, classic, simple designs
   - Garamond and Fruitiger as primary fonts
   - weekend days in red
   - first day of a lunar month in blue
3. Month view
   - top half of screen has a cycling view of (1) deity image, (2) mantra, and (3) quote;  cycle among the three displays every few seconds, with a tap causing pause/resume and a swipe causing immediate cycling; have a single-line information bar below with a short description for each
      - perhaps also play a recording of the mantra being chanted
   - bottom half of screen has calendar view;  show same info for each day as the hardcopy does: Western date, Tibetan date, and all 37 day types
   c. have options for fullscreen calendar or fullscreen deity/mantra/quote views
      - might also incorporate some type of card-flipping effect
   - try to use same symbols as in hardcopy except where things could be streamlined to use screen space more efficiently, provide better visual recognition at a glance, or offer better consistency with iPhone conventions
   - tapping day brings up day view for that day
   - have a toggle to choose from among Tibetan dates only, Western dates only, and both (the default)
   - current day is highlighted when current month is showing
4. Day view
   - show same info as seen for that day in month view
   - tapping on day type shows detail page for that day type (perhaps as popup window, or another screen with a "Back" button)
   - pinching on day view jumps to month view
5. Detail view (for day type)
   - show same info as in the first 2 pages of the hardcopy calendar
   - "Upcoming dates" link performs a search for this type of day (see "6." below) for the remainder of the year
   - "All dates" link shows a concise list of all relevant 2011 dates for this day type, similar to the last few pages in the hardcopy calendar; tapping on a day jumps to that day view
6. Search view:  date selection mechanism followed by list of 37 day types; clicking on day type yields detail page
   - \<from date\> to \<to date\>
      - initialized to "\<today\> to \<last day of year\>"
      - clicking on a date jumps to date scroller view for date selection
   - list of day types ("Birthdays & Anniversaries of Holy Beings" through "Very Unfavorable Day" in same order as in hardcopy calendar, with headings for Auspicious Days and Inauspicious Days)
      - tapping on entry brings up detail page for that day type
      - each entry is followed by two buttons:
         - Search: performs a search for days of this type within the date range specified above
         - All Dates: shows a concise list of all relevant 2011 dates for this day type, similar to the last few pages in the hardcopy calendar; tapping on a day jumps to that day view
7. Search results view
   - similar to month view but linear, suitable in a search results context rather than a calendar context
   - tapping on result brings up day view for that day
   - "Back" button will take user back to search with same settings
8. Date scroller view
   - have the usual date scroller as offered in other apps
      - looks nice, is familiar to most iPhone users, and enables users to just dial up a desired date rather than flicking through calendar pages
   - support both Western (default) and Tibetan dates (ideally showing both together somehow, so that this can also function as a date converter)
9. Key view
   - same as "KEY" on last page of hardcopy
10. Credits view
    - similar to page 29 of 2010 hardcopy;  shows details for deity images, mantras, and quotes for each month
11. Navigation buttons
    - buttons at bottom of each screen enabling user to quickly jump to  month, day, search, credits, options, etc. views

### Marketing ideas

The app should appeal to horoscope and astrology people as well as Buddhists and people who relate to Tibet. Suggested keywords for app store listings:
- horoscope, astrology, Buddhism, Tibet
