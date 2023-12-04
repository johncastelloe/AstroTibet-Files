libname myfile excel
   "//dntsrc/jocast/astrotibet/astrotibet-2017-dates_jc.xlsx";

data a1;
   set myfile.'Sheet1$'n;
run;

libname myfile clear;

proc format;
   value $codes
      'birthday'='1. Birthdays and Anniversaries of Holy Beings'
      'B'='2. Buddha Days'
      'eclipse'='3. Eclipses'
      'PRECEPTS'=	'4. Eight Mahayana Precepts'
      'FD-EE'='5. Favorable Day (Earth-Earth)'
      'FD-WW'='6. Favorable Day (Water-Water)'
      'FD-EW'='7. Favorable Day (Earth-Water)'
      'FD-FF'='8. Favorable Day (Fire-Fire)'
      'FD-AA'='9. Favorable Day (Air-Air)'
      'FD-FA'='10. Favorable Day (Fire-Air)'
      'FIRE PUJA'='11. Fire Puja'
      'full_moon'='12. Full Moon'
      'MEDICINE BUDDHA'='13. Medicine Buddha Puja'
      'NAGA PUJA'='14. Naga Puja'
      'new_moon'='15. New Moon'
      'PF'='16. Prayer Flags'
      'PP'='17. Prayers and Practices'
      'PROTECTOR PUJA'='18. Protector Puja'
      'SOJONG'='19. Sojong: Monastics Confession Days'
      'TARA PUJA'='20. Tara Puja'
      'TSOG'='21. Tsog Offering'
      'NB'='22. No Starting New Business Activities'
      'NCE'='23. No Community Events'
      'NCH'='24. No Cutting Hair'
      'NF'='25. No Funerals or Cremations'
      'NG'='26. No Inviting Guests for Parties'
      'NH'='27. No Starting to Build New Houses'
      'NM'='28. No Memorials or Wakes'
      'NMP'='29. No Medical Procedures'
      'NPF'='30. No Prayer Flags'
      'NW'='31. No Weddings'
      'NWR'='32. No Wealth Rituals'
      'UD'='33. Unfavorable Day'
      'UD-EA'='34. Unfavorable Day (Earth-Air)'
      'UD-WA'='35. Unfavorable Day (Water-Air)'
      'UD-EF'='36. Unfavorable Day (Earth-Fire)'
      'UD-FW'='37. Unfavorable Day (Fire-Water)'
      'VUD'='38. Very Unfavorable Day'
      'other'='39. Other'
;
run;

data a2;
   set a1;
   val=1;
   tot_events=countw(codes,';');
   do count = 1 to tot_events;
      word = scan(codes, count, ';');
      output;
   end;
   if moon='NEW MOON' then do;
      word='new_moon';
      output;
   end;
   if moon='FULL MOON' then do;
      word='full_moon';
      output;
   end;
   if not missing(detailse) then do;
      word='eclipse';
      output;
   end;
   if not missing(detailsbahb) then do;
      word='birthday';
      output;
   end;
   if not missing(detailso) then do;
      word='other';
      output;
   end;
run;

proc sort data=a2;
   by date tmonth tday moon detailsbahb detailsbd detailse detailso ;
run;

proc transpose data=a2 out=a3;
   by date tmonth tday moon detailsbahb detailsbd detailse detailso ;
   id word;
   var val;
run;

data a4;
   * putting retain before set is a trick to reorder variables;
   retain date birthday B eclipse precepts
          FD_EE FD_WW FD_EW FD_FF FD_AA FD_FA
          FIRE_PUJA FULL_MOON MEDICINE_BUDDHA NAGA_PUJA
          NEW_MOON PF PP PROTECTOR_PUJA SOJONG TARA_PUJA
          TSOG NB NCE NCH NF NG NH NM NMP NPF NW NWR
          UD UD_EA UD_WA UD_EF UD_FW VUD
          other detailsbahb detailsbd detailse detailso tmonth tday;
   set a3;
   array codes{*} birthday B eclipse precepts
                  FD_EE FD_WW FD_EW FD_FF FD_AA FD_FA
                  FIRE_PUJA FULL_MOON MEDICINE_BUDDHA NAGA_PUJA
                  NEW_MOON PF PP PROTECTOR_PUJA SOJONG TARA_PUJA
                  TSOG NB NCE NCH NF NG NH NM NMP NPF NW NWR
                  UD UD_EA UD_WA UD_EF UD_FW VUD other;
   do i=1 to dim(codes);
      if codes(i)=. then codes(i)=0;
   end;
   label
      birthday='1. Birthdays and Anniversaries of Holy Beings'
      B='2. Buddha Days'
      eclipse='3. Eclipses'
      PRECEPTS=	'4. Eight Mahayana Precepts'
      FD_EE='5. Favorable Day (Earth-Earth)'
      FD_WW='6. Favorable Day (Water-Water)'
      FD_EW='7. Favorable Day (Earth-Water)'
      FD_FF='8. Favorable Day (Fire-Fire)'
      FD_AA='9. Favorable Day (Air-Air)'
      FD_FA='10. Favorable Day (Fire-Air)'
      FIRE_PUJA='11. Fire Puja'
      full_moon='12. Full Moon'
      MEDICINE_BUDDHA='13. Medicine Buddha Puja'
      NAGA_PUJA='14. Naga Puja'
      new_moon='15. New Moon'
      PF='16. Prayer Flags'
      PP='17. Prayers and Practices'
      PROTECTOR_PUJA='18. Protector Puja'
      SOJONG='19. Sojong: Monastics Confession Days'
      TARA_PUJA='20. Tara Puja'
      TSOG='21. Tsog Offering'
      NB='22. No Starting New Business Activities'
      NCE='23. No Community Events'
      NCH='24. No Cutting Hair'
      NF='25. No Funerals or Cremations'
      NG='26. No Inviting Guests for Parties'
      NH='27. No Starting to Build New Houses'
      NM='28. No Memorials or Wakes'
      NMP='29. No Medical Procedures'
      NPF='30. No Prayer Flags'
      NW='31. No Weddings'
      NWR='32. No Wealth Rituals'
      UD='33. Unfavorable Day'
      UD_EA='34. Unfavorable Day (Earth-Air)'
      UD_WA='35. Unfavorable Day (Water-Air)'
      UD_EF='36. Unfavorable Day (Earth-Fire)'
      UD_FW='37. Unfavorable Day (Fire-Water)'
      VUD='38. Very Unfavorable Day'
      other='39. Other'
      tmonth='Tibetan Month'
      tday='Tibetan Day';
    drop i _name_ moon;
run;

proc export data= work.a4
            outfile= "//dntsrc/jocast/astrotibet/astrotibet-2017-dates_final.xlsx"
            dbms=excel replace;
     sheet="astrotibet-2017-astrology";
     newfile=yes;
run;

/*to save as excel, view in explorer right click and select view in excel, save as xlsx file*/

* if I want to save as CSV instead of XLSX;
* proc export data= work.a4
            outfile= "//dntsrc/jocast/astrotibet/astrotibet-2017-dates_final.csv"
            dbms=csv replace;

* an alternative strategy to proc export, using libname and data step;
* libname outfile excel "//dntsrc/jocast/astrotibet/astrotibet-2017-dates_final.xlsx";
* data outfile.'a5'n;
* set a4;
* run;

