# AstroTibet-Files
Highlights from past versions of the AstroTibet mobile app

## About AstroTibet

The annual series of AstroTibet apps from 2011 to 2017 served as an interactive version of the annual Liberation Calendar, which is an astrological calendar based on Tibetan Buddhism. It shows which days in the year are favorable or unfavorable for about 40 types of activities.

AstroTibet and the Liberation Calendar have been the top funding sources for Liberation Prison Project, a 501(c)(3) nonprofit that supports people in prison interested in exploring, studying, and practicing Buddhism. The focus is on practical methods for managing anger and developing compassion.

In 2010 I hired a mobile app developer to create and maintain AstroTibet, using my own personal funds as a donation-in-kind to Liberation Prison Project. But after AstroTibet '17, he became unavailable to work on the project.

Since 2017 there have been many people asking for another AstroTibet app. I've wanted to make that happen, but I haven't learned mobile app development myself or found an affordable developer. Now I'm combining those two options by seeking a developer with whom I can participate in the development process and learn by experience.

My goal is to eventually become qualified to implement and maintain AstroTibet, so that I can offer it sustainably every year as a fundraiser for Liberation Prison Project. I've been a developer for data analysis software for over 20 years but have mostly used outdated tools like Emacs and languages like C. But in recent years I've started to use modern tools like VSCode and Git, and I'm ready to learn mobile app development.

## Files from AstroTibet '17

### Android build
- This is the final .apk file
- We can log in to my Google Play developer console to access more files (but I don't understand them)

### iOS build
- We can log in to my Apple Developer account to access files for the iOS version (and I don't understand these either)

### Data package (1. initial stage)
- This is the calendar grid data I started with plus a SAS program that converts it to a structure more convenient for the developer

### Data package (2. final stage)
- This is the complete package of files that I gave to the developer

### Hardcopy
- This is the annual Liberation Calendar PDF product that I use as a source for data and design elements

### Marketing screenshots
- These were used for listings on the iTunes Store, Google Play, and Amazon

### Walkthrough screenshots
- This provides a full tour of the app's features
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
