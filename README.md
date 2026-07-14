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
- For a full tour of the app's features, you can step through the screenshots as you read the notes below.
- Notes:
   - 03 Today (as of 2017)
      - Tibetan months and days are based on lunar cycles and are numbered differently than Western ones.
      - There is a mantra for each Western month; two versions of each mantra are available (one chanted by a Tibetan male, the other by a Western female).
      - App isn't meant to make sense after the year is over (e.g., Nov 19 was a Sunday in 2017, and that's what it's calling "today").
      - All entries should have white background, and this applies to lists throughout the whole app. It's a bug that some don't (such as "Favorable Day (Fire-Fire)" here).
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
