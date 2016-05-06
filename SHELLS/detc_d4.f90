!=======================================================================
  Real(8) Function detc_d4 (id,it)
!=======================================================================
! coefficient for determinamt id and term it for subshell d4 
!-----------------------------------------------------------------------
 
  Implicit none
 
  Integer, intent(in)  :: id,it
 
  Integer, parameter :: kd_d4 = 210
  Integer, parameter :: nt_d4 =  16
 
  Integer :: INT_d4 (kd_d4,nt_d4)
 
  Integer :: Norm_d4  = 9240
 
  if(id.le.0.or.id.gt.kd_d4) Stop "detc_d4: index id is out of range"
  if(it.le.0.or.it.gt.nt_d4) Stop "detc_d4: index it is out of range"
 
  detc_d4 = dfloat(INT_d4(id,it))/dfloat(Norm_d4)
 
  detc_d4 = dsqrt(dabs(detc_d4))
 
  if(INT_d4(id,it).lt.0) detc_d4=-detc_d4
 

  Data INT_d4 (:,   1)/ &
        0,        0,     -924,        0,        0,        0,        0,      924,        0,        0,        0,        0, &
        0,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0, &
      924,     -924,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0, &
        0,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0, &
        0,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0, &
        0,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0, &
        0,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0, &
        0,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0, &
        0,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0, &
        0,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0, &
        0,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0, &
        0,        0,        0,        0,        0,        0,        0,        0,     -924,        0,        0,        0, &
        0,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0, &
        0,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0,     -924, &
      924,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0, &
        0,      924,     -924,        0,        0,        0,        0,        0,        0,        0,        0,        0, &
        0,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0, &
        0,        0,        0,        0,        0,     -924  /

  Data INT_d4 (:,   2)/ &
        0,        0,     -396,        0,        0,        0,        0,      396,        0,        0,        0,        0, &
        0,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0, &
     -396,      396,        0,        0,        0,        0,        0,        0,        0,    -1056,        0,        0, &
        0,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0, &
        0,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0, &
        0,        0,        0,        0,        0,    -1056,        0,        0,        0,        0,        0,        0, &
        0,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0, &
        0,        0,        0,        0,     1056,        0,        0,        0,        0,        0,        0,        0, &
        0,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0, &
        0,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0, &
     1056,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0, &
        0,        0,        0,        0,        0,        0,        0,        0,       44,        0,        0,        0, &
        0,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0, &
        0,        0,        0,        0,        0,        0,        0,     -704,        0,        0,        0,      396, &
       44,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0, &
        0,       44,      396,        0,        0,        0,     -704,        0,        0,        0,        0,        0, &
        0,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0, &
        0,        0,        0,        0,        0,    -1100  /

  Data INT_d4 (:,   3)/ &
        0,     -616,     -308,        0,        0,     1232,      616,     -308,     -616,        0,        0,      616, &
     1232,        0,    -1232,     -616,        0,        0,     -616,    -1232,        0,        0,        0,     2464, &
     1232,     1232,     2464,        0,     1848,      924,        0,        0,        0,        0,    -1848,        0, &
        0,        0,        0,        0,        0,        0,        0,        0,        0,     1848,    -1848,        0, &
        0,     -924,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0, &
      924,     -924,        0,        0,        0,        0,        0,        0,        0,        0,    -1848,     1848, &
        0,        0,        0,        0,     -924,      924,        0,        0,        0,        0,        0,        0, &
      924,     1848,        0,        0,        0,        0,     -924,        0,        0,        0,        0,        0, &
        0,        0,        0,        0,        0,      924,     -924,        0,        0,    -1848,        0,        0, &
        0,        0,        0,        0,        0,        0,        0,        0,     1848,    -1848,        0,        0, &
        0,        0,        0,        0,        0,        0,     -924,      924,        0,        0,        0,        0, &
    -1848,     1848,        0,        0,        0,        0,        0,        0,        0,        0,        0,     1232, &
      616,        0,        0,      616,     1232,        0,        0,        0,        0,        0,        0,    -1232, &
     -616,        0,        0,        0,        0,     -616,      616,        0,        0,        0,    -2464,    -2772, &
     -308,    -2464,        0,        0,        0,    -1232,     -616,     -616,    -1232,        0,        0,        0, &
     2464,      308,     2772,     2464,        0,        0,        0,     -616,      616,        0,        0,        0, &
        0,     -616,    -1232,        0,        0,        0,        0,        0,        0,     1232,      616,        0, &
        0,      616,     1232,        0,        0,        0  /

  Data INT_d4 (:,   4)/ &
        0,    -2816,    -1408,        0,        0,      -88,      -44,    -1408,    -2816,        0,        0,      -44, &
      -88,        0,       88,       44,        0,        0,       44,       88,        0,        0,        0,     -176, &
      -88,      -88,     -176,        0,      528,      264,        0,        0,    -2376,    -1188,     -528,        0, &
        0,        0,        0,        0,        0,        0,        0,        0,        0,    -2112,     -528,    -2376, &
        0,     -264,        0,        0,        0,        0,        0,        0,        0,        0,        0,     1188, &
      -66,       66,    -1188,        0,     2376,     1188,        0,        0,        0,        0,     -528,    -2112, &
    -2376,        0,        0,     1188,       66,      -66,    -1188,        0,        0,        0,        0,        0, &
      264,      528,        0,        0,    -1188,    -2376,     -264,        0,        0,        0,        0,        0, &
        0,        0,        0,        0,     1188,      -66,       66,    -1188,        0,     -528,        0,        0, &
        0,        0,        0,        0,        0,        0,        0,     2376,      528,     2112,        0,        0, &
     1188,     2376,        0,        0,        0,     1188,       66,      -66,    -1188,        0,        0,     2376, &
     2112,      528,        0,        0,        0,        0,        0,        0,        0,        0,        0,    -1408, &
     -704,        0,        0,     -704,    -1408,        0,        0,        0,        0,        0,        0,     1408, &
      704,        0,        0,        0,        0,      704,     -704,        0,        0,        0,      -44,      198, &
     -550,      -44,        0,        0,        0,    -2200,    -1100,      704,     1408,        0,        0,        0, &
       44,      550,     -198,       44,        0,        0,        0,      704,     -704,        0,        0,        0, &
        0,    -1100,    -2200,        0,        0,        0,        0,        0,        0,     2200,     1100,        0, &
        0,     1100,     2200,        0,        0,        0  /

  Data INT_d4 (:,   5)/ &
    -1320,        0,     1980,        0,        0,        0,     1320,    -1980,        0,        0,        0,    -1320, &
        0,    -1320,        0,     1320,        0,        0,    -1320,        0,        0,        0,        0,        0, &
        0,        0,        0,        0,        0,     -220,        0,        0,        0,        0,        0,        0, &
        0,        0,        0,        0,     -880,        0,     -880,        0,        0,        0,        0,        0, &
        0,     -220,        0,      880,        0,      880,        0,        0,        0,        0,        0,        0, &
     -220,      220,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0, &
        0,        0,        0,        0,     -220,      220,        0,        0,        0,     -880,        0,     -880, &
      220,        0,        0,        0,        0,        0,      220,        0,        0,        0,        0,      880, &
        0,      880,        0,        0,        0,      220,     -220,        0,        0,        0,     -880,        0, &
     -880,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0, &
        0,        0,        0,        0,        0,        0,      220,     -220,        0,        0,        0,        0, &
        0,        0,        0,        0,      880,        0,      880,        0,      880,        0,        0,        0, &
     1320,        0,        0,    -1320,        0,        0,        0,    -1320,     1320,        0,        0,        0, &
     1320,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0,     -220, &
      220,        0,        0,        0,        0,        0,    -1320,    -1320,        0,        0,        0,        0, &
        0,      220,     -220,        0,        0,        0,        0,        0,        0,        0,        0,        0, &
        0,     1320,        0,        0,        0,    -1320,     1320,        0,        0,        0,    -1320,        0, &
        0,     1320,        0,        0,        0,    -3520  /

  Data INT_d4 (:,   6)/ &
    -2640,        0,        0,        0,        0,        0,     -660,        0,        0,        0,        0,      660, &
        0,    -2640,        0,     -660,        0,        0,      660,        0,        0,        0,        0,        0, &
        0,        0,        0,        0,        0,     -440,        0,        0,        0,      660,        0,        0, &
        0,        0,        0,        0,     -440,        0,        0,        0,        0,        0,        0,     1760, &
        0,     -440,        0,        0,        0,      440,      440,        0,     -440,        0,        0,        0, &
     -110,     -990,        0,        0,        0,      660,        0,        0,        0,        0,        0,        0, &
    -1760,        0,        0,        0,      990,      110,        0,        0,        0,      440,        0,      440, &
      440,        0,        0,        0,     -660,        0,      440,        0,      440,        0,     -440,        0, &
        0,      440,        0,        0,        0,     -990,     -110,        0,        0,        0,     -440,        0, &
        0,        0,        0,        0,        0,        0,        0,     1760,        0,        0,        0,        0, &
     -660,        0,        0,        0,        0,        0,      110,      990,        0,        0,        0,    -1760, &
        0,        0,        0,        0,     -440,        0,     -440,        0,    -1760,        0,        0,        0, &
        0,        0,        0,        0,        0,        0,        0,      660,     -660,        0,    -2640,        0, &
        0,        0,        0,        0,        0,        0,        0,     -440,        0,        0,        0,      990, &
     -110,        0,        0,        0,        0,        0,     -660,        0,        0,        0,        0,        0, &
        0,     -110,      990,        0,        0,        0,     -440,        0,        0,        0,        0,        0, &
        0,      660,        0,    -2640,        0,      660,     -660,        0,        0,        0,     -660,        0, &
        0,      660,        0,        0,        0,    -1760  /

  Data INT_d4 (:,   7)/ &
        0,        0,        0,        0,        0,    -2640,    -1320,        0,        0,        0,        0,    -1320, &
    -2640,        0,    -2640,    -1320,        0,        0,    -1320,    -2640,        0,        0,        0,        0, &
        0,        0,        0,        0,     1760,      880,        0,        0,     2640,     1320,     1760,        0, &
    -2750,        0,     2750,      990,     -220,      110,     1980,        0,        0,     -990,      110,     -220, &
        0,      880,     -110,    -1980,     -990,      220,      220,     -990,     -220,      990,        0,     -110, &
     -880,        0,     -990,        0,     2640,     1320,        0,        0,        0,        0,     -110,      990, &
      220,        0,        0,      110,        0,      880,      990,        0,    -1760,     -880,    -1760,     -880, &
      880,     1760,        0,        0,     1320,     2640,      880,      990,     -220,     -990,      220,     1980, &
      110,     -220,      990,        0,      990,        0,      880,      110,        0,     1760,      220,     -990, &
    -1980,     -110,     2750,        0,    -2750,        0,        0,      220,     -110,      990,        0,        0, &
     1320,     2640,        0,        0,        0,     -990,     -880,        0,     -110,        0,        0,     -220, &
     -990,      110,        0,        0,     -880,    -1760,     -880,    -1760,        0,        0,        0,        0, &
        0,        0,        0,        0,        0,        0,    -2640,    -1320,    -1320,    -2640,        0,        0, &
        0,        0,        0,        0,        0,      990,      990,     1980,        0,        0,     -990,        0, &
        0,      990,        0,        0,        0,    -2640,    -1320,        0,        0,        0,        0,        0, &
     -990,        0,        0,      990,        0,        0,    -1980,     -990,     -990,        0,        0,        0, &
        0,    -1320,    -2640,        0,     2640,     1320,     1320,     2640,        0,    -2640,    -1320,        0, &
        0,    -1320,    -2640,        0,        0,        0  /

  Data INT_d4 (:,   8)/ &
        0,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0, &
        0,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0, &
        0,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0,     9240, &
     2310,    -9240,    -2310,     2310,     1540,    -2310,    -1540,        0,    -9240,    -2310,    -2310,    -1540, &
        0,        0,     2310,     1540,    -2310,    -1540,     1540,     2310,    -1540,    -2310,        0,    -2310, &
    -1540,    -1540,    -2310,        0,        0,        0,        0,        0,        0,     9240,     2310,     2310, &
     1540,        0,        0,     2310,     1540,     1540,     2310,        0,        0,        0,        0,        0, &
        0,        0,        0,        0,        0,        0,        0,     2310,     1540,    -2310,    -1540,     1540, &
     2310,    -1540,    -2310,        0,    -2310,    -1540,    -1540,    -2310,        0,        0,     1540,     2310, &
    -1540,    -2310,     2310,     9240,    -2310,    -9240,        0,    -1540,    -2310,    -2310,    -9240,        0, &
        0,        0,        0,        0,        0,     2310,     1540,     1540,     2310,        0,        0,     1540, &
     2310,     2310,     9240,        0,        0,        0,        0,        0,        0,        0,        0,        0, &
        0,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0, &
        0,        0,        0,        0,     9240,     2310,     2310,     1540,        0,        0,     2310,     1540, &
     1540,     2310,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0, &
     2310,     1540,     1540,     2310,        0,        0,     1540,     2310,     2310,     9240,        0,        0, &
        0,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0, &
        0,        0,        0,        0,        0,        0  /

  Data INT_d4 (:,   9)/ &
     1848,        0,        0,        0,      693,        0,    -1155,        0,        0,     -693,        0,     1155, &
        0,    -1848,        0,     1155,        0,     -693,    -1155,        0,      693,        0,        0,        0, &
        0,        0,        0,        0,        0,      770,        0,        0,        0,     2310,        0,        0, &
        0,        0,        0,        0,      -77,        0,      693,        0,        0,        0,        0,      770, &
        0,     -770,        0,      693,        0,      -77,     -308,        0,     -308,        0,        0,        0, &
     -770,        0,        0,      462,        0,    -2310,        0,        0,        0,        0,        0,        0, &
      770,        0,     -462,        0,        0,     -770,        0,        0,        0,     1232,        0,    -1232, &
     -770,        0,        0,        0,    -2310,        0,      770,        0,     -308,        0,     -308,      693, &
        0,      -77,        0,        0,        0,        0,     -770,        0,     -462,        0,      -77,        0, &
      693,        0,        0,        0,        0,        0,        0,      770,        0,        0,        0,        0, &
     2310,        0,        0,        0,      462,        0,     -770,        0,        0,        0,        0,      770, &
        0,        0,        0,        0,    -1232,        0,     1232,        0,        0,        0,      693,        0, &
     1155,     -693,        0,    -1155,        0,        0,        0,     -462,      462,        0,     1848,        0, &
    -1155,        0,     -693,        0,        0,        0,        0,        0,        0,        0,        0,        0, &
        0,        0,        0,        0,     2772,        0,        0,     1155,        0,      693,        0,        0, &
        0,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0,    -2772, &
        0,        0,        0,    -1848,        0,      462,     -462,        0,        0,        0,        0,        0, &
    -2772,        0,        0,     2772,        0,        0  /

  Data INT_d4 (:,  10)/ &
        0,     2464,     1232,    -3080,    -1540,     1848,      924,     1232,     2464,    -1540,    -3080,      924, &
     1848,        0,    -1848,     -924,     3080,     1540,     -924,    -1848,     1540,     3080,        0,      616, &
      308,      308,      616,        0,    -1232,     -616,        0,        0,        0,        0,     1232,        0, &
        0,        0,        0,     3080,     1540,    -3080,    -1540,        0,        0,    -1232,     1232,        0, &
        0,      616,    -3080,    -1540,     3080,     1540,        0,        0,        0,        0,        0,        0, &
     -616,      616,        0,        0,        0,        0,        0,        0,        0,        0,     1232,    -1232, &
        0,        0,        0,        0,      616,     -616,        0,        0,     3080,     1540,    -3080,    -1540, &
     -616,    -1232,        0,        0,        0,        0,      616,        0,        0,        0,        0,     1540, &
     3080,    -1540,    -3080,        0,        0,     -616,      616,        0,        0,     1232,    -1540,    -3080, &
     1540,     3080,        0,        0,        0,        0,        0,        0,    -1232,     1232,        0,        0, &
        0,        0,        0,        0,        0,        0,      616,     -616,        0,        0,        0,        0, &
     1232,    -1232,        0,        0,     1540,     3080,    -1540,    -3080,        0,    -3080,    -1540,     1848, &
      924,    -1540,    -3080,      924,     1848,        0,        0,        0,        0,        0,        0,    -1848, &
     -924,     3080,     1540,        0,        0,     2464,    -2464,        0,        0,        0,     -616,      308, &
    -2772,     -616,        0,     3080,     1540,    -1848,     -924,     -924,    -1848,     1540,     3080,        0, &
      616,     2772,     -308,      616,        0,        0,        0,     2464,    -2464,        0,        0,     1540, &
     3080,     -924,    -1848,        0,        0,        0,        0,        0,        0,     1848,      924,    -3080, &
    -1540,      924,     1848,    -1540,    -3080,        0  /

  Data INT_d4 (:,  11)/ &
        0,     2464,     1232,      770,      385,      462,      231,     1232,     2464,      385,      770,      231, &
      462,        0,     -462,     -231,     -770,     -385,     -231,     -462,     -385,     -770,        0,    -2464, &
    -1232,    -1232,    -2464,        0,    -2772,    -1386,        0,        0,     -924,     -462,     2772,        0, &
     3080,        0,     3080,     -770,      385,     -770,      385,        0,        0,      308,    -1232,     -154, &
     4620,     1386,     -770,      385,     -770,      385,    -1540,        0,    -1540,        0,        0,    -1232, &
     -154,    -2464,    -2772,     2310,      924,      462,        0,        0,    -4620,        0,    -1232,      308, &
     -154,        0,    -2310,    -1232,    -2464,     -154,    -2772,        0,        0,        0,        0,        0, &
    -1386,    -2772,        0,        0,     -462,     -924,     1386,        0,     1540,        0,     1540,     -385, &
      770,     -385,      770,        0,     2772,     2464,      154,     1232,     2310,     2772,     -385,      770, &
     -385,      770,    -3080,        0,    -3080,        0,        0,      154,     1232,     -308,        0,     4620, &
      462,      924,        0,        0,    -2310,     2772,      154,     2464,     1232,        0,    -4620,      154, &
     -308,     1232,        0,        0,        0,        0,        0,        0,        0,      770,      385,     -462, &
     -231,      385,      770,     -231,     -462,        0,    -4620,    -2310,    -2310,    -4620,        0,      462, &
      231,     -770,     -385,        0,        0,     -616,      616,        0,        0,        0,     -616,    -1232, &
        0,     -616,        0,     3080,     1540,        0,        0,      231,      462,     -385,     -770,        0, &
      616,        0,     1232,      616,        0,        0,        0,     -616,      616,        0,        0,     1540, &
     3080,        0,        0,        0,    -4620,    -2310,    -2310,    -4620,        0,        0,        0,    -3080, &
    -1540,        0,        0,    -1540,    -3080,        0  /

  Data INT_d4 (:,  12)/ &
     1760,        0,     -176,        0,     1540,        0,      220,      176,        0,    -1540,        0,     -220, &
        0,     1760,        0,      220,        0,     1540,     -220,        0,    -1540,        0,     3080,        0, &
     2156,    -2156,        0,     3080,        0,     1320,        0,        0,        0,        0,        0,        0, &
        0,        0,        0,        0,     -660,        0,     -660,        0,        0,        0,        0,        0, &
        0,     1320,        0,      660,        0,      660,        0,        0,        0,        0,        0,        0, &
     1320,    -1320,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0, &
        0,        0,        0,        0,     1320,    -1320,        0,        0,        0,     -660,        0,     -660, &
    -1320,        0,        0,        0,        0,        0,    -1320,        0,        0,        0,        0,      660, &
        0,      660,        0,        0,        0,    -1320,     1320,        0,        0,        0,     -660,        0, &
     -660,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0, &
        0,        0,        0,        0,        0,        0,    -1320,     1320,        0,        0,        0,        0, &
        0,        0,        0,        0,      660,        0,      660,        0,     2816,        0,     1540,        0, &
      220,    -1540,        0,     -220,        0,        0,        0,     1760,    -1760,        0,        0,        0, &
      220,        0,     1540,        0,        0,        0,        0,        0,        0,    -3080,        0,      396, &
     -396,        0,    -3080,        0,    -1540,        0,     -220,     -220,        0,    -1540,        0,     3080, &
        0,     -396,      396,        0,     3080,        0,        0,        0,        0,        0,        0,     1540, &
        0,      220,        0,        0,        0,     1760,    -1760,        0,        0,        0,     -220,        0, &
    -1540,      220,        0,     1540,        0,     -176  /

  Data INT_d4 (:,  13)/ &
     1000,        0,     -784,        0,      875,        0,     -845,      784,        0,     -875,        0,      845, &
        0,     1000,        0,     -845,        0,      875,      845,        0,     -875,        0,    -1120,        0, &
     -784,      784,        0,    -1120,        0,      750,        0,    -3780,        0,       54,        0,        0, &
        0,        0,        0,        0,       15,        0,      735,        0,        0,        0,        0,     -270, &
        0,      750,        0,     -735,        0,      -15,      540,        0,     -540,        0,        0,        0, &
      -30,      480,        0,    -1890,        0,       54,        0,    -3780,        0,        0,        0,        0, &
      270,        0,    -1890,        0,     -480,       30,        0,        0,        0,     -960,        0,     -960, &
     -750,        0,     3780,        0,      -54,        0,     -750,        0,      540,        0,     -540,     -735, &
        0,      -15,        0,        0,        0,      480,      -30,        0,     1890,        0,       15,        0, &
      735,        0,        0,        0,        0,        0,        0,     -270,        0,        0,        0,        0, &
      -54,        0,     3780,        0,     1890,        0,       30,     -480,        0,        0,        0,      270, &
        0,        0,        0,        0,      960,        0,      960,        0,      256,        0,    -1715,        0, &
     -245,     1715,        0,      245,        0,        0,        0,     -250,      250,        0,    -3240,        0, &
     -245,        0,    -1715,        0,        0,        0,        0,     1296,        0,     -280,        0,     -144, &
     -576,        0,     -280,        0,     -140,        0,    -2000,      245,        0,     1715,        0,      280, &
        0,     -576,     -144,        0,      280,        0,     1296,        0,        0,        0,        0,      140, &
        0,     2000,        0,    -3240,        0,     -250,      250,        0,        0,        0,    -2000,        0, &
     -140,     2000,        0,      140,        0,    -1600  /

  Data INT_d4 (:,  14)/ &
        0,        0,        0,    -4158,    -2079,      594,      297,        0,        0,    -2079,    -4158,      297, &
      594,        0,      594,      297,    -4158,    -2079,      297,      594,    -2079,    -4158,        0,        0, &
        0,        0,        0,        0,     -396,     -198,     5544,     2772,    -1980,     -990,     -396,        0, &
      792,        0,     -792,     1782,     2475,      198,      -99,        0,        0,     -396,    -1584,    -1782, &
    -2772,     -198,     -198,       99,    -1782,    -2475,      396,     3168,     -396,    -3168,        0,     1584, &
      198,        0,     -396,    -1386,    -1980,     -990,     5544,     2772,    -2772,        0,     1584,      396, &
     1782,        0,    -1386,    -1584,        0,     -198,      396,        0,    -3168,    -1584,    -3168,    -1584, &
     -198,     -396,     2772,     5544,     -990,    -1980,     -198,    -3168,     -396,     3168,      396,      -99, &
      198,     2475,     1782,        0,      396,        0,     -198,    -1584,    -1386,     -396,    -2475,    -1782, &
       99,     -198,     -792,        0,      792,        0,        0,     1782,     1584,      396,        0,    -2772, &
     -990,    -1980,     2772,     5544,    -1386,     -396,      198,        0,     1584,        0,    -2772,    -1782, &
     -396,    -1584,        0,        0,    -1584,    -3168,    -1584,    -3168,        0,      462,      231,    -3234, &
    -1617,      231,      462,    -1617,    -3234,        0,      132,       66,       66,      132,        0,    -3234, &
    -1617,      462,      231,    -3696,        0,     1320,     1320,     2640,     3696,    -1848,    -1320,        0, &
        0,     1320,     1848,    -1848,     -924,    -1056,     -528,    -1617,    -3234,      231,      462,    -1848, &
    -1320,        0,        0,     1320,     1848,    -3696,    -2640,    -1320,    -1320,        0,     3696,     -924, &
    -1848,     -528,    -1056,        0,     -132,      -66,      -66,     -132,        0,    -1056,     -528,    -1848, &
     -924,     -528,    -1056,     -924,    -1848,        0  /

  Data INT_d4 (:,  15)/ &
        0,     -880,     -440,    -1232,     -616,    -2376,    -1188,     -440,     -880,     -616,    -1232,    -1188, &
    -2376,        0,     2376,     1188,     1232,      616,     1188,     2376,      616,     1232,        0,    -3520, &
    -1760,    -1760,    -3520,        0,      704,      352,     3696,     1848,     1320,      660,     -704,        0, &
     -308,        0,     -308,      308,        0,     2772,      616,    -9240,        0,      -44,      396,       88, &
    -1848,     -352,     2772,      616,      308,        0,     2464,     2772,     2464,     2772,    -4620,    -2816, &
    -1782,     -550,    -1584,     -924,    -1320,     -660,    -3696,    -1848,     1848,        0,      396,      -44, &
       88,     9240,      924,    -2816,     -550,    -1782,    -1584,     4620,     1232,      616,    -1232,     -616, &
      352,      704,     1848,     3696,      660,     1320,     -352,    -2772,    -2464,    -2772,    -2464,     -616, &
    -2772,        0,     -308,    -4620,     1584,      550,     1782,     2816,     -924,     -704,        0,     -308, &
     -616,    -2772,      308,        0,      308,        0,    -9240,      -88,     -396,       44,        0,    -1848, &
     -660,    -1320,    -1848,    -3696,      924,     1584,     1782,      550,     2816,     4620,     1848,      -88, &
       44,     -396,        0,     9240,      616,     1232,     -616,    -1232,        0,     4928,     2464,     1056, &
      528,     2464,     4928,      528,     1056,        0,    -1848,     -924,     -924,    -1848,        0,    -1056, &
     -528,    -4928,    -2464,     5544,        0,      220,     -220,        0,     5544,     2772,     -880,     -110, &
     -990,     -880,     2772,     1232,      616,     -264,     -132,     -528,    -1056,    -2464,    -4928,     2772, &
      880,      990,      110,      880,     2772,     5544,        0,      220,     -220,        0,     5544,      616, &
     1232,     -132,     -264,        0,    -1848,     -924,     -924,    -1848,        0,      264,      132,    -1232, &
     -616,      132,      264,     -616,    -1232,        0  /

  Data INT_d4 (:,  16)/ &
      672,        0,     -360,        0,     1512,        0,     -420,      360,        0,    -1512,        0,      420, &
        0,      672,        0,     -420,        0,     1512,      420,        0,    -1512,        0,     5040,        0, &
     -360,      360,        0,     5040,        0,     1120,        0,     -840,        0,      540,        0,        0, &
        0,        0,        0,        0,    -1008,        0,      112,        0,        0,        0,        0,      280, &
        0,     1120,        0,     -112,        0,     1008,     1792,        0,    -1792,        0,     4620,        0, &
     -630,       70,        0,     2268,        0,      540,        0,     -840,        0,        0,        0,        0, &
     -280,        0,     2268,        0,      -70,      630,        0,     4620,        0,      448,        0,      448, &
    -1120,        0,      840,        0,     -540,        0,    -1120,        0,     1792,        0,    -1792,     -112, &
        0,     1008,        0,    -4620,        0,       70,     -630,        0,    -2268,        0,    -1008,        0, &
      112,        0,        0,        0,        0,        0,        0,      280,        0,        0,        0,        0, &
     -540,        0,      840,        0,    -2268,        0,      630,      -70,        0,    -4620,        0,     -280, &
        0,        0,        0,        0,     -448,        0,     -448,        0,     2560,        0,     -672,        0, &
     1680,      672,        0,    -1680,        0,     9240,        0,     -168,      168,        0,     1512,        0, &
     1680,        0,     -672,        0,        0,        0,        0,     -640,        0,     1260,        0,      -10, &
      810,        0,     1260,        0,      168,        0,      420,    -1680,        0,      672,        0,    -1260, &
        0,      810,      -10,        0,    -1260,        0,     -640,        0,        0,        0,        0,     -168, &
        0,     -420,        0,     1512,        0,     -168,      168,        0,     9240,        0,      420,        0, &
      168,     -420,        0,     -168,        0,      160  /
 
  End Function detc_d4