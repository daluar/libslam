      module slam_iaupn
      contains
      DOUBLE PRECISION FUNCTION iau_FAD03 ( T )
*+
*  - - - - - - - - - -
*   i a u _ F A D 0 3
*  - - - - - - - - - -
*
*  Fundamental argument, IERS Conventions (2003):
*  mean elongation of the Moon from the Sun.
*
*  This routine is part of the International Astronomical Union's
*  SOFA (Standards of Fundamental Astronomy) software collection.
*
*  Status:  canonical model.
*
*  Given:
*     T           d    TDB, Julian centuries since J2000.0 (Note 1)
*
*  Returned:
*     iau_FAD03   d    D, radians (Note 2)
*
*  Notes:
*
*  1) Though T is strictly TDB, it is usually more convenient to use TT,
*     which makes no significant difference.
*
*  2) The expression used is as adopted in IERS Conventions (2003) and
*     is from Simon et al. (1994).
*
*  References:
*
*     McCarthy, D. D., Petit, G. (eds.), IERS Conventions (2003),
*     IERS Technical Note No. 32, BKG (2004)
*
*     Simon, J.-L., Bretagnon, P., Chapront, J., Chapront-Touze, M.,
*     Francou, G., Laskar, J. 1994, Astron.Astrophys. 282, 663-683
*
*  This revision:  2009 December 15
*
*  SOFA release 2013-12-02
*
*  Copyright (C) 2013 IAU SOFA Board.  See notes at end.
*
*-----------------------------------------------------------------------

      IMPLICIT NONE

      DOUBLE PRECISION T

* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

*  Arcseconds to radians.
      DOUBLE PRECISION DAS2R
      PARAMETER ( DAS2R = 4.848136811095359935899141D-6 )

*  Arcseconds in a full circle.
      DOUBLE PRECISION TURNAS
      PARAMETER ( TURNAS = 1296000D0 )

* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

*  Mean elongation of the Moon from the Sun (IERS Conventions 2003).
      iau_FAD03 = MOD (      1072260.703692D0 +
     :                  T*( 1602961601.2090D0 +
     :                  T*(        - 6.3706D0 +
     :                  T*(          0.006593D0 +
     :                  T*(        - 0.00003169D0 )))), TURNAS ) * DAS2R

*  Finished.

*+----------------------------------------------------------------------
*
*  Copyright (C) 2013
*  Standards Of Fundamental Astronomy Board
*  of the International Astronomical Union.
*
*  =====================
*  SOFA Software License
*  =====================
*
*  NOTICE TO USER:
*
*  BY USING THIS SOFTWARE YOU ACCEPT THE FOLLOWING SIX TERMS AND
*  CONDITIONS WHICH APPLY TO ITS USE.
*
*  1. The Software is owned by the IAU SOFA Board ("SOFA").
*
*  2. Permission is granted to anyone to use the SOFA software for any
*     purpose, including commercial applications, free of charge and
*     without payment of royalties, subject to the conditions and
*     restrictions listed below.
*
*  3. You (the user) may copy and distribute SOFA source code to others,
*     and use and adapt its code and algorithms in your own software,
*     on a world-wide, royalty-free basis.  That portion of your
*     distribution that does not consist of intact and unchanged copies
*     of SOFA source code files is a "derived work" that must comply
*     with the following requirements:
*
*     a) Your work shall be marked or carry a statement that it
*        (i) uses routines and computations derived by you from
*        software provided by SOFA under license to you; and
*        (ii) does not itself constitute software provided by and/or
*        endorsed by SOFA.
*
*     b) The source code of your derived work must contain descriptions
*        of how the derived work is based upon, contains and/or differs
*        from the original SOFA software.
*
*     c) The names of all routines in your derived work shall not
*        include the prefix "iau" or "sofa" or trivial modifications
*        thereof such as changes of case.
*
*     d) The origin of the SOFA components of your derived work must
*        not be misrepresented;  you must not claim that you wrote the
*        original software, nor file a patent application for SOFA
*        software or algorithms embedded in the SOFA software.
*
*     e) These requirements must be reproduced intact in any source
*        distribution and shall apply to anyone to whom you have
*        granted a further right to modify the source code of your
*        derived work.
*
*     Note that, as originally distributed, the SOFA software is
*     intended to be a definitive implementation of the IAU standards,
*     and consequently third-party modifications are discouraged.  All
*     variations, no matter how minor, must be explicitly marked as
*     such, as explained above.
*
*  4. You shall not cause the SOFA software to be brought into
*     disrepute, either by misuse, or use for inappropriate tasks, or
*     by inappropriate modification.
*
*  5. The SOFA software is provided "as is" and SOFA makes no warranty
*     as to its use or performance.   SOFA does not and cannot warrant
*     the performance or results which the user may obtain by using the
*     SOFA software.  SOFA makes no warranties, express or implied, as
*     to non-infringement of third party rights, merchantability, or
*     fitness for any particular purpose.  In no event will SOFA be
*     liable to the user for any consequential, incidental, or special
*     damages, including any lost profits or lost savings, even if a
*     SOFA representative has been advised of such damages, or for any
*     claim by any third party.
*
*  6. The provision of any version of the SOFA software under the terms
*     and conditions specified herein does not imply that future
*     versions will also be made available under the same terms and
*     conditions.
*
*  In any published work or commercial product which uses the SOFA
*  software directly, acknowledgement (see www.iausofa.org) is
*  appreciated.
*
*  Correspondence concerning SOFA software should be addressed as
*  follows:
*
*      By email:  sofa@ukho.gov.uk
*      By post:   IAU SOFA Center
*                 HM Nautical Almanac Office
*                 UK Hydrographic Office
*                 Admiralty Way, Taunton
*                 Somerset, TA1 2DN
*                 United Kingdom
*
*-----------------------------------------------------------------------

      END FUNCTION iau_FAD03

      DOUBLE PRECISION FUNCTION iau_FAE03 ( T )
*+
*  - - - - - - - - - - -
*   i a u _ F A E 0 3
*  - - - - - - - - - - -
*
*  Fundamental argument, IERS Conventions (2003):
*  mean longitude of Earth.
*
*  This routine is part of the International Astronomical Union's
*  SOFA (Standards of Fundamental Astronomy) software collection.
*
*  Status:  canonical model.
*
*  Given:
*     T           d    TDB, Julian centuries since J2000.0 (Note 1)
*
*  Returned:
*     iau_FAE03   d    mean longitude of Earth, radians (Note 2)
*
*  Notes:
*
*  1) Though T is strictly TDB, it is usually more convenient to use TT,
*     which makes no significant difference.
*
*  2) The expression used is as adopted in IERS Conventions (2003) and
*     comes from Souchay et al. (1999) after Simon et al. (1994).
*
*  References:
*
*     McCarthy, D. D., Petit, G. (eds.), IERS Conventions (2003),
*     IERS Technical Note No. 32, BKG (2004)
*
*     Simon, J.-L., Bretagnon, P., Chapront, J., Chapront-Touze, M.,
*     Francou, G., Laskar, J. 1994, Astron.Astrophys. 282, 663-683
*
*     Souchay, J., Loysel, B., Kinoshita, H., Folgueira, M. 1999,
*     Astron.Astrophys.Supp.Ser. 135, 111
*
*  This revision:  2009 December 15
*
*  SOFA release 2013-12-02
*
*  Copyright (C) 2013 IAU SOFA Board.  See notes at end.
*
*-----------------------------------------------------------------------

      IMPLICIT NONE

      DOUBLE PRECISION T

* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

*  2Pi.
      DOUBLE PRECISION D2PI
      PARAMETER ( D2PI = 6.283185307179586476925287D0 )

* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

*  Mean longitude of Earth (IERS Conventions 2003).
      iau_FAE03= MOD ( 1.753470314D0 + 628.3075849991D0 * T, D2PI )

*  Finished.

*+----------------------------------------------------------------------
*
*  Copyright (C) 2013
*  Standards Of Fundamental Astronomy Board
*  of the International Astronomical Union.
*
*  =====================
*  SOFA Software License
*  =====================
*
*  NOTICE TO USER:
*
*  BY USING THIS SOFTWARE YOU ACCEPT THE FOLLOWING SIX TERMS AND
*  CONDITIONS WHICH APPLY TO ITS USE.
*
*  1. The Software is owned by the IAU SOFA Board ("SOFA").
*
*  2. Permission is granted to anyone to use the SOFA software for any
*     purpose, including commercial applications, free of charge and
*     without payment of royalties, subject to the conditions and
*     restrictions listed below.
*
*  3. You (the user) may copy and distribute SOFA source code to others,
*     and use and adapt its code and algorithms in your own software,
*     on a world-wide, royalty-free basis.  That portion of your
*     distribution that does not consist of intact and unchanged copies
*     of SOFA source code files is a "derived work" that must comply
*     with the following requirements:
*
*     a) Your work shall be marked or carry a statement that it
*        (i) uses routines and computations derived by you from
*        software provided by SOFA under license to you; and
*        (ii) does not itself constitute software provided by and/or
*        endorsed by SOFA.
*
*     b) The source code of your derived work must contain descriptions
*        of how the derived work is based upon, contains and/or differs
*        from the original SOFA software.
*
*     c) The names of all routines in your derived work shall not
*        include the prefix "iau" or "sofa" or trivial modifications
*        thereof such as changes of case.
*
*     d) The origin of the SOFA components of your derived work must
*        not be misrepresented;  you must not claim that you wrote the
*        original software, nor file a patent application for SOFA
*        software or algorithms embedded in the SOFA software.
*
*     e) These requirements must be reproduced intact in any source
*        distribution and shall apply to anyone to whom you have
*        granted a further right to modify the source code of your
*        derived work.
*
*     Note that, as originally distributed, the SOFA software is
*     intended to be a definitive implementation of the IAU standards,
*     and consequently third-party modifications are discouraged.  All
*     variations, no matter how minor, must be explicitly marked as
*     such, as explained above.
*
*  4. You shall not cause the SOFA software to be brought into
*     disrepute, either by misuse, or use for inappropriate tasks, or
*     by inappropriate modification.
*
*  5. The SOFA software is provided "as is" and SOFA makes no warranty
*     as to its use or performance.   SOFA does not and cannot warrant
*     the performance or results which the user may obtain by using the
*     SOFA software.  SOFA makes no warranties, express or implied, as
*     to non-infringement of third party rights, merchantability, or
*     fitness for any particular purpose.  In no event will SOFA be
*     liable to the user for any consequential, incidental, or special
*     damages, including any lost profits or lost savings, even if a
*     SOFA representative has been advised of such damages, or for any
*     claim by any third party.
*
*  6. The provision of any version of the SOFA software under the terms
*     and conditions specified herein does not imply that future
*     versions will also be made available under the same terms and
*     conditions.
*
*  In any published work or commercial product which uses the SOFA
*  software directly, acknowledgement (see www.iausofa.org) is
*  appreciated.
*
*  Correspondence concerning SOFA software should be addressed as
*  follows:
*
*      By email:  sofa@ukho.gov.uk
*      By post:   IAU SOFA Center
*                 HM Nautical Almanac Office
*                 UK Hydrographic Office
*                 Admiralty Way, Taunton
*                 Somerset, TA1 2DN
*                 United Kingdom
*
*-----------------------------------------------------------------------

      END FUNCTION iau_FAE03


      DOUBLE PRECISION FUNCTION iau_FAF03 ( T )
*+
*  - - - - - - - - - -
*   i a u _ F A F 0 3
*  - - - - - - - - - -
*
*  Fundamental argument, IERS Conventions (2003):
*  mean longitude of the Moon minus mean longitude of the ascending
*  node.
*
*  This routine is part of the International Astronomical Union's
*  SOFA (Standards of Fundamental Astronomy) software collection.
*
*  Status:  canonical model.
*
*  Given:
*     T           d    TDB, Julian centuries since J2000.0 (Note 1)
*
*  Returned:
*     iau_FAF03   d    F, radians (Note 2)
*
*  Notes:
*
*  1) Though T is strictly TDB, it is usually more convenient to use TT,
*     which makes no significant difference.
*
*  2) The expression used is as adopted in IERS Conventions (2003) and
*     is from Simon et al. (1994).
*
*  References:
*
*     McCarthy, D. D., Petit, G. (eds.), IERS Conventions (2003),
*     IERS Technical Note No. 32, BKG (2004)
*
*     Simon, J.-L., Bretagnon, P., Chapront, J., Chapront-Touze, M.,
*     Francou, G., Laskar, J. 1994, Astron.Astrophys. 282, 663-683
*
*  This revision:  2009 December 15
*
*  SOFA release 2013-12-02
*
*  Copyright (C) 2013 IAU SOFA Board.  See notes at end.
*
*-----------------------------------------------------------------------

      IMPLICIT NONE

      DOUBLE PRECISION T

* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

*  Arcseconds to radians.
      DOUBLE PRECISION DAS2R
      PARAMETER ( DAS2R = 4.848136811095359935899141D-6 )

*  Arcseconds in a full circle.
      DOUBLE PRECISION TURNAS
      PARAMETER ( TURNAS = 1296000D0 )

* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

*  Mean longitude of the Moon minus that of the ascending node
*  (IERS Conventions 2003).
      iau_FAF03 = MOD (       335779.526232D0 +
     :                  T*( 1739527262.8478D0 +
     :                  T*(       - 12.7512D0 +
     :                  T*(       -  0.001037D0 +
     :                  T*(          0.00000417D0 )))), TURNAS ) * DAS2R

*  Finished.

*+----------------------------------------------------------------------
*
*  Copyright (C) 2013
*  Standards Of Fundamental Astronomy Board
*  of the International Astronomical Union.
*
*  =====================
*  SOFA Software License
*  =====================
*
*  NOTICE TO USER:
*
*  BY USING THIS SOFTWARE YOU ACCEPT THE FOLLOWING SIX TERMS AND
*  CONDITIONS WHICH APPLY TO ITS USE.
*
*  1. The Software is owned by the IAU SOFA Board ("SOFA").
*
*  2. Permission is granted to anyone to use the SOFA software for any
*     purpose, including commercial applications, free of charge and
*     without payment of royalties, subject to the conditions and
*     restrictions listed below.
*
*  3. You (the user) may copy and distribute SOFA source code to others,
*     and use and adapt its code and algorithms in your own software,
*     on a world-wide, royalty-free basis.  That portion of your
*     distribution that does not consist of intact and unchanged copies
*     of SOFA source code files is a "derived work" that must comply
*     with the following requirements:
*
*     a) Your work shall be marked or carry a statement that it
*        (i) uses routines and computations derived by you from
*        software provided by SOFA under license to you; and
*        (ii) does not itself constitute software provided by and/or
*        endorsed by SOFA.
*
*     b) The source code of your derived work must contain descriptions
*        of how the derived work is based upon, contains and/or differs
*        from the original SOFA software.
*
*     c) The names of all routines in your derived work shall not
*        include the prefix "iau" or "sofa" or trivial modifications
*        thereof such as changes of case.
*
*     d) The origin of the SOFA components of your derived work must
*        not be misrepresented;  you must not claim that you wrote the
*        original software, nor file a patent application for SOFA
*        software or algorithms embedded in the SOFA software.
*
*     e) These requirements must be reproduced intact in any source
*        distribution and shall apply to anyone to whom you have
*        granted a further right to modify the source code of your
*        derived work.
*
*     Note that, as originally distributed, the SOFA software is
*     intended to be a definitive implementation of the IAU standards,
*     and consequently third-party modifications are discouraged.  All
*     variations, no matter how minor, must be explicitly marked as
*     such, as explained above.
*
*  4. You shall not cause the SOFA software to be brought into
*     disrepute, either by misuse, or use for inappropriate tasks, or
*     by inappropriate modification.
*
*  5. The SOFA software is provided "as is" and SOFA makes no warranty
*     as to its use or performance.   SOFA does not and cannot warrant
*     the performance or results which the user may obtain by using the
*     SOFA software.  SOFA makes no warranties, express or implied, as
*     to non-infringement of third party rights, merchantability, or
*     fitness for any particular purpose.  In no event will SOFA be
*     liable to the user for any consequential, incidental, or special
*     damages, including any lost profits or lost savings, even if a
*     SOFA representative has been advised of such damages, or for any
*     claim by any third party.
*
*  6. The provision of any version of the SOFA software under the terms
*     and conditions specified herein does not imply that future
*     versions will also be made available under the same terms and
*     conditions.
*
*  In any published work or commercial product which uses the SOFA
*  software directly, acknowledgement (see www.iausofa.org) is
*  appreciated.
*
*  Correspondence concerning SOFA software should be addressed as
*  follows:
*
*      By email:  sofa@ukho.gov.uk
*      By post:   IAU SOFA Center
*                 HM Nautical Almanac Office
*                 UK Hydrographic Office
*                 Admiralty Way, Taunton
*                 Somerset, TA1 2DN
*                 United Kingdom
*
*-----------------------------------------------------------------------

      END FUNCTION iau_FAF03

      DOUBLE PRECISION FUNCTION iau_FAJU03 ( T )
*+
*  - - - - - - - - - - -
*   i a u _ F A J U 0 3
*  - - - - - - - - - - -
*
*  Fundamental argument, IERS Conventions (2003):
*  mean longitude of Jupiter.
*
*  This routine is part of the International Astronomical Union's
*  SOFA (Standards of Fundamental Astronomy) software collection.
*
*  Status:  canonical model.
*
*  Given:
*     T           d    TDB, Julian centuries since J2000.0 (Note 1)
*
*  Returned:
*     iau_FAJU03  d    mean longitude of Jupiter, radians (Note 2)
*
*  Notes:
*
*  1) Though T is strictly TDB, it is usually more convenient to use TT,
*     which makes no significant difference.
*
*  2) The expression used is as adopted in IERS Conventions (2003) and
*     comes from Souchay et al. (1999) after Simon et al. (1994).
*
*  References:
*
*     McCarthy, D. D., Petit, G. (eds.), IERS Conventions (2003),
*     IERS Technical Note No. 32, BKG (2004)
*
*     Simon, J.-L., Bretagnon, P., Chapront, J., Chapront-Touze, M.,
*     Francou, G., Laskar, J. 1994, Astron.Astrophys. 282, 663-683
*
*     Souchay, J., Loysel, B., Kinoshita, H., Folgueira, M. 1999,
*     Astron.Astrophys.Supp.Ser. 135, 111
*
*  This revision:  2009 December 15
*
*  SOFA release 2013-12-02
*
*  Copyright (C) 2013 IAU SOFA Board.  See notes at end.
*
*-----------------------------------------------------------------------

      IMPLICIT NONE

      DOUBLE PRECISION T

* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

*  2Pi.
      DOUBLE PRECISION D2PI
      PARAMETER ( D2PI = 6.283185307179586476925287D0 )

* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

*  Mean longitude of Jupiter (IERS Conventions 2003).
      iau_FAJU03= MOD ( 0.599546497D0 + 52.9690962641D0 * T, D2PI )

*  Finished.

*+----------------------------------------------------------------------
*
*  Copyright (C) 2013
*  Standards Of Fundamental Astronomy Board
*  of the International Astronomical Union.
*
*  =====================
*  SOFA Software License
*  =====================
*
*  NOTICE TO USER:
*
*  BY USING THIS SOFTWARE YOU ACCEPT THE FOLLOWING SIX TERMS AND
*  CONDITIONS WHICH APPLY TO ITS USE.
*
*  1. The Software is owned by the IAU SOFA Board ("SOFA").
*
*  2. Permission is granted to anyone to use the SOFA software for any
*     purpose, including commercial applications, free of charge and
*     without payment of royalties, subject to the conditions and
*     restrictions listed below.
*
*  3. You (the user) may copy and distribute SOFA source code to others,
*     and use and adapt its code and algorithms in your own software,
*     on a world-wide, royalty-free basis.  That portion of your
*     distribution that does not consist of intact and unchanged copies
*     of SOFA source code files is a "derived work" that must comply
*     with the following requirements:
*
*     a) Your work shall be marked or carry a statement that it
*        (i) uses routines and computations derived by you from
*        software provided by SOFA under license to you; and
*        (ii) does not itself constitute software provided by and/or
*        endorsed by SOFA.
*
*     b) The source code of your derived work must contain descriptions
*        of how the derived work is based upon, contains and/or differs
*        from the original SOFA software.
*
*     c) The names of all routines in your derived work shall not
*        include the prefix "iau" or "sofa" or trivial modifications
*        thereof such as changes of case.
*
*     d) The origin of the SOFA components of your derived work must
*        not be misrepresented;  you must not claim that you wrote the
*        original software, nor file a patent application for SOFA
*        software or algorithms embedded in the SOFA software.
*
*     e) These requirements must be reproduced intact in any source
*        distribution and shall apply to anyone to whom you have
*        granted a further right to modify the source code of your
*        derived work.
*
*     Note that, as originally distributed, the SOFA software is
*     intended to be a definitive implementation of the IAU standards,
*     and consequently third-party modifications are discouraged.  All
*     variations, no matter how minor, must be explicitly marked as
*     such, as explained above.
*
*  4. You shall not cause the SOFA software to be brought into
*     disrepute, either by misuse, or use for inappropriate tasks, or
*     by inappropriate modification.
*
*  5. The SOFA software is provided "as is" and SOFA makes no warranty
*     as to its use or performance.   SOFA does not and cannot warrant
*     the performance or results which the user may obtain by using the
*     SOFA software.  SOFA makes no warranties, express or implied, as
*     to non-infringement of third party rights, merchantability, or
*     fitness for any particular purpose.  In no event will SOFA be
*     liable to the user for any consequential, incidental, or special
*     damages, including any lost profits or lost savings, even if a
*     SOFA representative has been advised of such damages, or for any
*     claim by any third party.
*
*  6. The provision of any version of the SOFA software under the terms
*     and conditions specified herein does not imply that future
*     versions will also be made available under the same terms and
*     conditions.
*
*  In any published work or commercial product which uses the SOFA
*  software directly, acknowledgement (see www.iausofa.org) is
*  appreciated.
*
*  Correspondence concerning SOFA software should be addressed as
*  follows:
*
*      By email:  sofa@ukho.gov.uk
*      By post:   IAU SOFA Center
*                 HM Nautical Almanac Office
*                 UK Hydrographic Office
*                 Admiralty Way, Taunton
*                 Somerset, TA1 2DN
*                 United Kingdom
*
*-----------------------------------------------------------------------

      END FUNCTION iau_FAJU03

      DOUBLE PRECISION FUNCTION iau_FAL03 ( T )
*+
*  - - - - - - - - - -
*   i a u _ F A L 0 3
*  - - - - - - - - - -
*
*  Fundamental argument, IERS Conventions (2003):
*  mean anomaly of the Moon.
*
*  This routine is part of the International Astronomical Union's
*  SOFA (Standards of Fundamental Astronomy) software collection.
*
*  Status:  canonical model.
*
*  Given:
*     T           d    TDB, Julian centuries since J2000.0 (Note 1)
*
*  Returned:
*     iau_FAL03   d    l, radians (Note 2)
*
*  Notes:
*
*  1) Though T is strictly TDB, it is usually more convenient to use TT,
*     which makes no significant difference.
*
*  2) The expression used is as adopted in IERS Conventions (2003) and
*     is from Simon et al. (1994).
*
*  References:
*
*     McCarthy, D. D., Petit, G. (eds.), IERS Conventions (2003),
*     IERS Technical Note No. 32, BKG (2004)
*
*     Simon, J.-L., Bretagnon, P., Chapront, J., Chapront-Touze, M.,
*     Francou, G., Laskar, J. 1994, Astron.Astrophys. 282, 663-683
*
*  This revision:  2009 December 15
*
*  SOFA release 2013-12-02
*
*  Copyright (C) 2013 IAU SOFA Board.  See notes at end.
*
*-----------------------------------------------------------------------

      IMPLICIT NONE

      DOUBLE PRECISION T

* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

*  Arcseconds to radians.
      DOUBLE PRECISION DAS2R
      PARAMETER ( DAS2R = 4.848136811095359935899141D-6 )

*  Arcseconds in a full circle.
      DOUBLE PRECISION TURNAS
      PARAMETER ( TURNAS = 1296000D0 )

* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

*  Mean anomaly of the Moon (IERS Conventions 2003).
      iau_FAL03 = MOD (       485868.249036D0 +
     :                  T*( 1717915923.2178D0 +
     :                  T*(         31.8792D0 +
     :                  T*(          0.051635D0 +
     :                  T*(        - 0.00024470D0 )))), TURNAS ) * DAS2R

*  Finished.

*+----------------------------------------------------------------------
*
*  Copyright (C) 2013
*  Standards Of Fundamental Astronomy Board
*  of the International Astronomical Union.
*
*  =====================
*  SOFA Software License
*  =====================
*
*  NOTICE TO USER:
*
*  BY USING THIS SOFTWARE YOU ACCEPT THE FOLLOWING SIX TERMS AND
*  CONDITIONS WHICH APPLY TO ITS USE.
*
*  1. The Software is owned by the IAU SOFA Board ("SOFA").
*
*  2. Permission is granted to anyone to use the SOFA software for any
*     purpose, including commercial applications, free of charge and
*     without payment of royalties, subject to the conditions and
*     restrictions listed below.
*
*  3. You (the user) may copy and distribute SOFA source code to others,
*     and use and adapt its code and algorithms in your own software,
*     on a world-wide, royalty-free basis.  That portion of your
*     distribution that does not consist of intact and unchanged copies
*     of SOFA source code files is a "derived work" that must comply
*     with the following requirements:
*
*     a) Your work shall be marked or carry a statement that it
*        (i) uses routines and computations derived by you from
*        software provided by SOFA under license to you; and
*        (ii) does not itself constitute software provided by and/or
*        endorsed by SOFA.
*
*     b) The source code of your derived work must contain descriptions
*        of how the derived work is based upon, contains and/or differs
*        from the original SOFA software.
*
*     c) The names of all routines in your derived work shall not
*        include the prefix "iau" or "sofa" or trivial modifications
*        thereof such as changes of case.
*
*     d) The origin of the SOFA components of your derived work must
*        not be misrepresented;  you must not claim that you wrote the
*        original software, nor file a patent application for SOFA
*        software or algorithms embedded in the SOFA software.
*
*     e) These requirements must be reproduced intact in any source
*        distribution and shall apply to anyone to whom you have
*        granted a further right to modify the source code of your
*        derived work.
*
*     Note that, as originally distributed, the SOFA software is
*     intended to be a definitive implementation of the IAU standards,
*     and consequently third-party modifications are discouraged.  All
*     variations, no matter how minor, must be explicitly marked as
*     such, as explained above.
*
*  4. You shall not cause the SOFA software to be brought into
*     disrepute, either by misuse, or use for inappropriate tasks, or
*     by inappropriate modification.
*
*  5. The SOFA software is provided "as is" and SOFA makes no warranty
*     as to its use or performance.   SOFA does not and cannot warrant
*     the performance or results which the user may obtain by using the
*     SOFA software.  SOFA makes no warranties, express or implied, as
*     to non-infringement of third party rights, merchantability, or
*     fitness for any particular purpose.  In no event will SOFA be
*     liable to the user for any consequential, incidental, or special
*     damages, including any lost profits or lost savings, even if a
*     SOFA representative has been advised of such damages, or for any
*     claim by any third party.
*
*  6. The provision of any version of the SOFA software under the terms
*     and conditions specified herein does not imply that future
*     versions will also be made available under the same terms and
*     conditions.
*
*  In any published work or commercial product which uses the SOFA
*  software directly, acknowledgement (see www.iausofa.org) is
*  appreciated.
*
*  Correspondence concerning SOFA software should be addressed as
*  follows:
*
*      By email:  sofa@ukho.gov.uk
*      By post:   IAU SOFA Center
*                 HM Nautical Almanac Office
*                 UK Hydrographic Office
*                 Admiralty Way, Taunton
*                 Somerset, TA1 2DN
*                 United Kingdom
*
*-----------------------------------------------------------------------

      END FUNCTION iau_FAL03



      DOUBLE PRECISION FUNCTION iau_FALP03 ( T )
*+
*  - - - - - - - - - - -
*   i a u _ F A L P 0 3
*  - - - - - - - - - - -
*
*  Fundamental argument, IERS Conventions (2003):
*  mean anomaly of the Sun.
*
*  This routine is part of the International Astronomical Union's
*  SOFA (Standards of Fundamental Astronomy) software collection.
*
*  Status:  canonical model.
*
*  Given:
*     T           d    TDB, Julian centuries since J2000.0 (Note 1)
*
*  Returned:
*     iau_FALP03  d    l', radians (Note 2)
*
*  Notes:
*
*  1) Though T is strictly TDB, it is usually more convenient to use TT,
*     which makes no significant difference.
*
*  2) The expression used is as adopted in IERS Conventions (2003) and
*     is from Simon et al. (1994).
*
*  References:
*
*     McCarthy, D. D., Petit, G. (eds.), IERS Conventions (2003),
*     IERS Technical Note No. 32, BKG (2004)
*
*     Simon, J.-L., Bretagnon, P., Chapront, J., Chapront-Touze, M.,
*     Francou, G., Laskar, J. 1994, Astron.Astrophys. 282, 663-683
*
*  This revision:  2009 December 15
*
*  SOFA release 2013-12-02
*
*  Copyright (C) 2013 IAU SOFA Board.  See notes at end.
*
*-----------------------------------------------------------------------

      IMPLICIT NONE

      DOUBLE PRECISION T

* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

*  Arcseconds to radians.
      DOUBLE PRECISION DAS2R
      PARAMETER ( DAS2R = 4.848136811095359935899141D-6 )

*  Arcseconds in a full circle.
      DOUBLE PRECISION TURNAS
      PARAMETER ( TURNAS = 1296000D0 )

* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

*  Mean anomaly of the Sun (IERS Conventions 2003).
      iau_FALP03 = MOD (     1287104.793048D0 +
     :                   T*( 129596581.0481D0 +
     :                   T*(       - 0.5532D0 +
     :                   T*(         0.000136D0 +
     :                   T*(       - 0.00001149D0 )))), TURNAS ) * DAS2R

*  Finished.

*+----------------------------------------------------------------------
*
*  Copyright (C) 2013
*  Standards Of Fundamental Astronomy Board
*  of the International Astronomical Union.
*
*  =====================
*  SOFA Software License
*  =====================
*
*  NOTICE TO USER:
*
*  BY USING THIS SOFTWARE YOU ACCEPT THE FOLLOWING SIX TERMS AND
*  CONDITIONS WHICH APPLY TO ITS USE.
*
*  1. The Software is owned by the IAU SOFA Board ("SOFA").
*
*  2. Permission is granted to anyone to use the SOFA software for any
*     purpose, including commercial applications, free of charge and
*     without payment of royalties, subject to the conditions and
*     restrictions listed below.
*
*  3. You (the user) may copy and distribute SOFA source code to others,
*     and use and adapt its code and algorithms in your own software,
*     on a world-wide, royalty-free basis.  That portion of your
*     distribution that does not consist of intact and unchanged copies
*     of SOFA source code files is a "derived work" that must comply
*     with the following requirements:
*
*     a) Your work shall be marked or carry a statement that it
*        (i) uses routines and computations derived by you from
*        software provided by SOFA under license to you; and
*        (ii) does not itself constitute software provided by and/or
*        endorsed by SOFA.
*
*     b) The source code of your derived work must contain descriptions
*        of how the derived work is based upon, contains and/or differs
*        from the original SOFA software.
*
*     c) The names of all routines in your derived work shall not
*        include the prefix "iau" or "sofa" or trivial modifications
*        thereof such as changes of case.
*
*     d) The origin of the SOFA components of your derived work must
*        not be misrepresented;  you must not claim that you wrote the
*        original software, nor file a patent application for SOFA
*        software or algorithms embedded in the SOFA software.
*
*     e) These requirements must be reproduced intact in any source
*        distribution and shall apply to anyone to whom you have
*        granted a further right to modify the source code of your
*        derived work.
*
*     Note that, as originally distributed, the SOFA software is
*     intended to be a definitive implementation of the IAU standards,
*     and consequently third-party modifications are discouraged.  All
*     variations, no matter how minor, must be explicitly marked as
*     such, as explained above.
*
*  4. You shall not cause the SOFA software to be brought into
*     disrepute, either by misuse, or use for inappropriate tasks, or
*     by inappropriate modification.
*
*  5. The SOFA software is provided "as is" and SOFA makes no warranty
*     as to its use or performance.   SOFA does not and cannot warrant
*     the performance or results which the user may obtain by using the
*     SOFA software.  SOFA makes no warranties, express or implied, as
*     to non-infringement of third party rights, merchantability, or
*     fitness for any particular purpose.  In no event will SOFA be
*     liable to the user for any consequential, incidental, or special
*     damages, including any lost profits or lost savings, even if a
*     SOFA representative has been advised of such damages, or for any
*     claim by any third party.
*
*  6. The provision of any version of the SOFA software under the terms
*     and conditions specified herein does not imply that future
*     versions will also be made available under the same terms and
*     conditions.
*
*  In any published work or commercial product which uses the SOFA
*  software directly, acknowledgement (see www.iausofa.org) is
*  appreciated.
*
*  Correspondence concerning SOFA software should be addressed as
*  follows:
*
*      By email:  sofa@ukho.gov.uk
*      By post:   IAU SOFA Center
*                 HM Nautical Almanac Office
*                 UK Hydrographic Office
*                 Admiralty Way, Taunton
*                 Somerset, TA1 2DN
*                 United Kingdom
*
*-----------------------------------------------------------------------

      END FUNCTION iau_FALP03


      DOUBLE PRECISION FUNCTION iau_FAMA03 ( T )
*+
*  - - - - - - - - - - -
*   i a u _ F A M A 0 3
*  - - - - - - - - - - -
*
*  Fundamental argument, IERS Conventions (2003):
*  mean longitude of Mars.
*
*  This routine is part of the International Astronomical Union's
*  SOFA (Standards of Fundamental Astronomy) software collection.
*
*  Status:  canonical model.
*
*  Given:
*     T           d    TDB, Julian centuries since J2000.0 (Note 1)
*
*  Returned:
*     iau_FAMA03  d    mean longitude of Mars, radians (Note 2)
*
*  Notes:
*
*  1) Though T is strictly TDB, it is usually more convenient to use TT,
*     which makes no significant difference.
*
*  2) The expression used is as adopted in IERS Conventions (2003) and
*     comes from Souchay et al. (1999) after Simon et al. (1994).
*
*  References:
*
*     McCarthy, D. D., Petit, G. (eds.), IERS Conventions (2003),
*     IERS Technical Note No. 32, BKG (2004)
*
*     Simon, J.-L., Bretagnon, P., Chapront, J., Chapront-Touze, M.,
*     Francou, G., Laskar, J. 1994, Astron.Astrophys. 282, 663-683
*
*     Souchay, J., Loysel, B., Kinoshita, H., Folgueira, M. 1999,
*     Astron.Astrophys.Supp.Ser. 135, 111
*
*  This revision:  2009 December 15
*
*  SOFA release 2013-12-02
*
*  Copyright (C) 2013 IAU SOFA Board.  See notes at end.
*
*-----------------------------------------------------------------------

      IMPLICIT NONE

      DOUBLE PRECISION T

* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

*  2Pi.
      DOUBLE PRECISION D2PI
      PARAMETER ( D2PI = 6.283185307179586476925287D0 )

* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

*  Mean longitude of Mars (IERS Conventions 2003).
      iau_FAMA03= MOD ( 6.203480913D0 + 334.0612426700D0 * T, D2PI )

*  Finished.

*+----------------------------------------------------------------------
*
*  Copyright (C) 2013
*  Standards Of Fundamental Astronomy Board
*  of the International Astronomical Union.
*
*  =====================
*  SOFA Software License
*  =====================
*
*  NOTICE TO USER:
*
*  BY USING THIS SOFTWARE YOU ACCEPT THE FOLLOWING SIX TERMS AND
*  CONDITIONS WHICH APPLY TO ITS USE.
*
*  1. The Software is owned by the IAU SOFA Board ("SOFA").
*
*  2. Permission is granted to anyone to use the SOFA software for any
*     purpose, including commercial applications, free of charge and
*     without payment of royalties, subject to the conditions and
*     restrictions listed below.
*
*  3. You (the user) may copy and distribute SOFA source code to others,
*     and use and adapt its code and algorithms in your own software,
*     on a world-wide, royalty-free basis.  That portion of your
*     distribution that does not consist of intact and unchanged copies
*     of SOFA source code files is a "derived work" that must comply
*     with the following requirements:
*
*     a) Your work shall be marked or carry a statement that it
*        (i) uses routines and computations derived by you from
*        software provided by SOFA under license to you; and
*        (ii) does not itself constitute software provided by and/or
*        endorsed by SOFA.
*
*     b) The source code of your derived work must contain descriptions
*        of how the derived work is based upon, contains and/or differs
*        from the original SOFA software.
*
*     c) The names of all routines in your derived work shall not
*        include the prefix "iau" or "sofa" or trivial modifications
*        thereof such as changes of case.
*
*     d) The origin of the SOFA components of your derived work must
*        not be misrepresented;  you must not claim that you wrote the
*        original software, nor file a patent application for SOFA
*        software or algorithms embedded in the SOFA software.
*
*     e) These requirements must be reproduced intact in any source
*        distribution and shall apply to anyone to whom you have
*        granted a further right to modify the source code of your
*        derived work.
*
*     Note that, as originally distributed, the SOFA software is
*     intended to be a definitive implementation of the IAU standards,
*     and consequently third-party modifications are discouraged.  All
*     variations, no matter how minor, must be explicitly marked as
*     such, as explained above.
*
*  4. You shall not cause the SOFA software to be brought into
*     disrepute, either by misuse, or use for inappropriate tasks, or
*     by inappropriate modification.
*
*  5. The SOFA software is provided "as is" and SOFA makes no warranty
*     as to its use or performance.   SOFA does not and cannot warrant
*     the performance or results which the user may obtain by using the
*     SOFA software.  SOFA makes no warranties, express or implied, as
*     to non-infringement of third party rights, merchantability, or
*     fitness for any particular purpose.  In no event will SOFA be
*     liable to the user for any consequential, incidental, or special
*     damages, including any lost profits or lost savings, even if a
*     SOFA representative has been advised of such damages, or for any
*     claim by any third party.
*
*  6. The provision of any version of the SOFA software under the terms
*     and conditions specified herein does not imply that future
*     versions will also be made available under the same terms and
*     conditions.
*
*  In any published work or commercial product which uses the SOFA
*  software directly, acknowledgement (see www.iausofa.org) is
*  appreciated.
*
*  Correspondence concerning SOFA software should be addressed as
*  follows:
*
*      By email:  sofa@ukho.gov.uk
*      By post:   IAU SOFA Center
*                 HM Nautical Almanac Office
*                 UK Hydrographic Office
*                 Admiralty Way, Taunton
*                 Somerset, TA1 2DN
*                 United Kingdom
*
*-----------------------------------------------------------------------

      END FUNCTION iau_FAMA03


      DOUBLE PRECISION FUNCTION iau_FAME03 ( T )
*+
*  - - - - - - - - - - -
*   i a u _ F A M E 0 3
*  - - - - - - - - - - -
*
*  Fundamental argument, IERS Conventions (2003):
*  mean longitude of Mercury.
*
*  This routine is part of the International Astronomical Union's
*  SOFA (Standards of Fundamental Astronomy) software collection.
*
*  Status:  canonical model.
*
*  Given:
*     T           d    TDB, Julian centuries since J2000.0 (Note 1)
*
*  Returned:
*     iau_FAME03  d    mean longitude of Mercury, radians (Note 2)
*
*  Notes:
*
*  1) Though T is strictly TDB, it is usually more convenient to use TT,
*     which makes no significant difference.
*
*  2) The expression used is as adopted in IERS Conventions (2003) and
*     comes from Souchay et al. (1999) after Simon et al. (1994).
*
*  References:
*
*     McCarthy, D. D., Petit, G. (eds.), IERS Conventions (2003),
*     IERS Technical Note No. 32, BKG (2004)
*
*     Simon, J.-L., Bretagnon, P., Chapront, J., Chapront-Touze, M.,
*     Francou, G., Laskar, J. 1994, Astron.Astrophys. 282, 663-683
*
*     Souchay, J., Loysel, B., Kinoshita, H., Folgueira, M. 1999,
*     Astron.Astrophys.Supp.Ser. 135, 111
*
*  This revision:  2009 December 15
*
*  SOFA release 2013-12-02
*
*  Copyright (C) 2013 IAU SOFA Board.  See notes at end.
*
*-----------------------------------------------------------------------

      IMPLICIT NONE

      DOUBLE PRECISION T

* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

*  2Pi.
      DOUBLE PRECISION D2PI
      PARAMETER ( D2PI = 6.283185307179586476925287D0 )

* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

*  Mean longitude of Mercury (IERS Conventions 2003).
      iau_FAME03 = MOD ( 4.402608842D0 + 2608.7903141574D0 * T, D2PI )

*  Finished.

*+----------------------------------------------------------------------
*
*  Copyright (C) 2013
*  Standards Of Fundamental Astronomy Board
*  of the International Astronomical Union.
*
*  =====================
*  SOFA Software License
*  =====================
*
*  NOTICE TO USER:
*
*  BY USING THIS SOFTWARE YOU ACCEPT THE FOLLOWING SIX TERMS AND
*  CONDITIONS WHICH APPLY TO ITS USE.
*
*  1. The Software is owned by the IAU SOFA Board ("SOFA").
*
*  2. Permission is granted to anyone to use the SOFA software for any
*     purpose, including commercial applications, free of charge and
*     without payment of royalties, subject to the conditions and
*     restrictions listed below.
*
*  3. You (the user) may copy and distribute SOFA source code to others,
*     and use and adapt its code and algorithms in your own software,
*     on a world-wide, royalty-free basis.  That portion of your
*     distribution that does not consist of intact and unchanged copies
*     of SOFA source code files is a "derived work" that must comply
*     with the following requirements:
*
*     a) Your work shall be marked or carry a statement that it
*        (i) uses routines and computations derived by you from
*        software provided by SOFA under license to you; and
*        (ii) does not itself constitute software provided by and/or
*        endorsed by SOFA.
*
*     b) The source code of your derived work must contain descriptions
*        of how the derived work is based upon, contains and/or differs
*        from the original SOFA software.
*
*     c) The names of all routines in your derived work shall not
*        include the prefix "iau" or "sofa" or trivial modifications
*        thereof such as changes of case.
*
*     d) The origin of the SOFA components of your derived work must
*        not be misrepresented;  you must not claim that you wrote the
*        original software, nor file a patent application for SOFA
*        software or algorithms embedded in the SOFA software.
*
*     e) These requirements must be reproduced intact in any source
*        distribution and shall apply to anyone to whom you have
*        granted a further right to modify the source code of your
*        derived work.
*
*     Note that, as originally distributed, the SOFA software is
*     intended to be a definitive implementation of the IAU standards,
*     and consequently third-party modifications are discouraged.  All
*     variations, no matter how minor, must be explicitly marked as
*     such, as explained above.
*
*  4. You shall not cause the SOFA software to be brought into
*     disrepute, either by misuse, or use for inappropriate tasks, or
*     by inappropriate modification.
*
*  5. The SOFA software is provided "as is" and SOFA makes no warranty
*     as to its use or performance.   SOFA does not and cannot warrant
*     the performance or results which the user may obtain by using the
*     SOFA software.  SOFA makes no warranties, express or implied, as
*     to non-infringement of third party rights, merchantability, or
*     fitness for any particular purpose.  In no event will SOFA be
*     liable to the user for any consequential, incidental, or special
*     damages, including any lost profits or lost savings, even if a
*     SOFA representative has been advised of such damages, or for any
*     claim by any third party.
*
*  6. The provision of any version of the SOFA software under the terms
*     and conditions specified herein does not imply that future
*     versions will also be made available under the same terms and
*     conditions.
*
*  In any published work or commercial product which uses the SOFA
*  software directly, acknowledgement (see www.iausofa.org) is
*  appreciated.
*
*  Correspondence concerning SOFA software should be addressed as
*  follows:
*
*      By email:  sofa@ukho.gov.uk
*      By post:   IAU SOFA Center
*                 HM Nautical Almanac Office
*                 UK Hydrographic Office
*                 Admiralty Way, Taunton
*                 Somerset, TA1 2DN
*                 United Kingdom
*
*-----------------------------------------------------------------------

      END FUNCTION iau_FAME03


      DOUBLE PRECISION FUNCTION iau_FANE03 ( T )
*+
*  - - - - - - - - - - -
*   i a u _ F A N E 0 3
*  - - - - - - - - - - -
*
*  Fundamental argument, IERS Conventions (2003):
*  mean longitude of Neptune.
*
*  This routine is part of the International Astronomical Union's
*  SOFA (Standards of Fundamental Astronomy) software collection.
*
*  Status:  canonical model.
*
*  Given:
*     T           d    TDB, Julian centuries since J2000.0 (Note 1)
*
*  Returned:
*     iau_FANE03  d    mean longitude of Neptune, radians (Note 2)
*
*  Notes:
*
*  1) Though T is strictly TDB, it is usually more convenient to use TT,
*     which makes no significant difference.
*
*  2) The expression used is as adopted in IERS Conventions (2003) and
*     is adapted from Simon et al. (1994).
*
*  References:
*
*     McCarthy, D. D., Petit, G. (eds.), IERS Conventions (2003),
*     IERS Technical Note No. 32, BKG (2004)
*
*     Simon, J.-L., Bretagnon, P., Chapront, J., Chapront-Touze, M.,
*     Francou, G., Laskar, J. 1994, Astron.Astrophys. 282, 663-683
*
*  This revision:  2009 December 15
*
*  SOFA release 2013-12-02
*
*  Copyright (C) 2013 IAU SOFA Board.  See notes at end.
*
*-----------------------------------------------------------------------

      IMPLICIT NONE

      DOUBLE PRECISION T

* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

*  2Pi.
      DOUBLE PRECISION D2PI
      PARAMETER ( D2PI = 6.283185307179586476925287D0 )

* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

*  Mean longitude of Neptune (IERS Conventions 2003).
      iau_FANE03= MOD ( 5.311886287D0 + 3.8133035638D0 * T, D2PI )

*  Finished.

*+----------------------------------------------------------------------
*
*  Copyright (C) 2013
*  Standards Of Fundamental Astronomy Board
*  of the International Astronomical Union.
*
*  =====================
*  SOFA Software License
*  =====================
*
*  NOTICE TO USER:
*
*  BY USING THIS SOFTWARE YOU ACCEPT THE FOLLOWING SIX TERMS AND
*  CONDITIONS WHICH APPLY TO ITS USE.
*
*  1. The Software is owned by the IAU SOFA Board ("SOFA").
*
*  2. Permission is granted to anyone to use the SOFA software for any
*     purpose, including commercial applications, free of charge and
*     without payment of royalties, subject to the conditions and
*     restrictions listed below.
*
*  3. You (the user) may copy and distribute SOFA source code to others,
*     and use and adapt its code and algorithms in your own software,
*     on a world-wide, royalty-free basis.  That portion of your
*     distribution that does not consist of intact and unchanged copies
*     of SOFA source code files is a "derived work" that must comply
*     with the following requirements:
*
*     a) Your work shall be marked or carry a statement that it
*        (i) uses routines and computations derived by you from
*        software provided by SOFA under license to you; and
*        (ii) does not itself constitute software provided by and/or
*        endorsed by SOFA.
*
*     b) The source code of your derived work must contain descriptions
*        of how the derived work is based upon, contains and/or differs
*        from the original SOFA software.
*
*     c) The names of all routines in your derived work shall not
*        include the prefix "iau" or "sofa" or trivial modifications
*        thereof such as changes of case.
*
*     d) The origin of the SOFA components of your derived work must
*        not be misrepresented;  you must not claim that you wrote the
*        original software, nor file a patent application for SOFA
*        software or algorithms embedded in the SOFA software.
*
*     e) These requirements must be reproduced intact in any source
*        distribution and shall apply to anyone to whom you have
*        granted a further right to modify the source code of your
*        derived work.
*
*     Note that, as originally distributed, the SOFA software is
*     intended to be a definitive implementation of the IAU standards,
*     and consequently third-party modifications are discouraged.  All
*     variations, no matter how minor, must be explicitly marked as
*     such, as explained above.
*
*  4. You shall not cause the SOFA software to be brought into
*     disrepute, either by misuse, or use for inappropriate tasks, or
*     by inappropriate modification.
*
*  5. The SOFA software is provided "as is" and SOFA makes no warranty
*     as to its use or performance.   SOFA does not and cannot warrant
*     the performance or results which the user may obtain by using the
*     SOFA software.  SOFA makes no warranties, express or implied, as
*     to non-infringement of third party rights, merchantability, or
*     fitness for any particular purpose.  In no event will SOFA be
*     liable to the user for any consequential, incidental, or special
*     damages, including any lost profits or lost savings, even if a
*     SOFA representative has been advised of such damages, or for any
*     claim by any third party.
*
*  6. The provision of any version of the SOFA software under the terms
*     and conditions specified herein does not imply that future
*     versions will also be made available under the same terms and
*     conditions.
*
*  In any published work or commercial product which uses the SOFA
*  software directly, acknowledgement (see www.iausofa.org) is
*  appreciated.
*
*  Correspondence concerning SOFA software should be addressed as
*  follows:
*
*      By email:  sofa@ukho.gov.uk
*      By post:   IAU SOFA Center
*                 HM Nautical Almanac Office
*                 UK Hydrographic Office
*                 Admiralty Way, Taunton
*                 Somerset, TA1 2DN
*                 United Kingdom
*
*-----------------------------------------------------------------------

      END FUNCTION iau_FANE03


      DOUBLE PRECISION FUNCTION iau_FAOM03 ( T )
*+
*  - - - - - - - - - - -
*   i a u _ F A O M 0 3
*  - - - - - - - - - - -
*
*  Fundamental argument, IERS Conventions (2003):
*  mean longitude of the Moon's ascending node.
*
*  This routine is part of the International Astronomical Union's
*  SOFA (Standards of Fundamental Astronomy) software collection.
*
*  Status:  canonical model.
*
*  Given:
*     T           d    TDB, Julian centuries since J2000.0 (Note 1)
*
*  Returned:
*     iau_FAOM03  d    Omega, radians (Note 2)
*
*  Notes:
*
*  1) Though T is strictly TDB, it is usually more convenient to use TT,
*     which makes no significant difference.
*
*  2) The expression used is as adopted in IERS Conventions (2003) and
*     is from Simon et al. (1994).
*
*  References:
*
*     McCarthy, D. D., Petit, G. (eds.), IERS Conventions (2003),
*     IERS Technical Note No. 32, BKG (2004)
*
*     Simon, J.-L., Bretagnon, P., Chapront, J., Chapront-Touze, M.,
*     Francou, G., Laskar, J. 1994, Astron.Astrophys. 282, 663-683
*
*  This revision:  2009 December 15
*
*  SOFA release 2013-12-02
*
*  Copyright (C) 2013 IAU SOFA Board.  See notes at end.
*
*-----------------------------------------------------------------------

      IMPLICIT NONE

      DOUBLE PRECISION T

* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

*  Arcseconds to radians.
      DOUBLE PRECISION DAS2R
      PARAMETER ( DAS2R = 4.848136811095359935899141D-6 )

*  Arcseconds in a full circle.
      DOUBLE PRECISION TURNAS
      PARAMETER ( TURNAS = 1296000D0 )

* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

*  Mean longitude of the Moon's ascending node (IERS Conventions 2003).
      iau_FAOM03 = MOD (      450160.398036D0 +
     :                   T*( - 6962890.5431D0 +
     :                   T*(         7.4722D0 +
     :                   T*(         0.007702D0 +
     :                   T*(       - 0.00005939D0 )))), TURNAS ) * DAS2R

*  Finished.

*+----------------------------------------------------------------------
*
*  Copyright (C) 2013
*  Standards Of Fundamental Astronomy Board
*  of the International Astronomical Union.
*
*  =====================
*  SOFA Software License
*  =====================
*
*  NOTICE TO USER:
*
*  BY USING THIS SOFTWARE YOU ACCEPT THE FOLLOWING SIX TERMS AND
*  CONDITIONS WHICH APPLY TO ITS USE.
*
*  1. The Software is owned by the IAU SOFA Board ("SOFA").
*
*  2. Permission is granted to anyone to use the SOFA software for any
*     purpose, including commercial applications, free of charge and
*     without payment of royalties, subject to the conditions and
*     restrictions listed below.
*
*  3. You (the user) may copy and distribute SOFA source code to others,
*     and use and adapt its code and algorithms in your own software,
*     on a world-wide, royalty-free basis.  That portion of your
*     distribution that does not consist of intact and unchanged copies
*     of SOFA source code files is a "derived work" that must comply
*     with the following requirements:
*
*     a) Your work shall be marked or carry a statement that it
*        (i) uses routines and computations derived by you from
*        software provided by SOFA under license to you; and
*        (ii) does not itself constitute software provided by and/or
*        endorsed by SOFA.
*
*     b) The source code of your derived work must contain descriptions
*        of how the derived work is based upon, contains and/or differs
*        from the original SOFA software.
*
*     c) The names of all routines in your derived work shall not
*        include the prefix "iau" or "sofa" or trivial modifications
*        thereof such as changes of case.
*
*     d) The origin of the SOFA components of your derived work must
*        not be misrepresented;  you must not claim that you wrote the
*        original software, nor file a patent application for SOFA
*        software or algorithms embedded in the SOFA software.
*
*     e) These requirements must be reproduced intact in any source
*        distribution and shall apply to anyone to whom you have
*        granted a further right to modify the source code of your
*        derived work.
*
*     Note that, as originally distributed, the SOFA software is
*     intended to be a definitive implementation of the IAU standards,
*     and consequently third-party modifications are discouraged.  All
*     variations, no matter how minor, must be explicitly marked as
*     such, as explained above.
*
*  4. You shall not cause the SOFA software to be brought into
*     disrepute, either by misuse, or use for inappropriate tasks, or
*     by inappropriate modification.
*
*  5. The SOFA software is provided "as is" and SOFA makes no warranty
*     as to its use or performance.   SOFA does not and cannot warrant
*     the performance or results which the user may obtain by using the
*     SOFA software.  SOFA makes no warranties, express or implied, as
*     to non-infringement of third party rights, merchantability, or
*     fitness for any particular purpose.  In no event will SOFA be
*     liable to the user for any consequential, incidental, or special
*     damages, including any lost profits or lost savings, even if a
*     SOFA representative has been advised of such damages, or for any
*     claim by any third party.
*
*  6. The provision of any version of the SOFA software under the terms
*     and conditions specified herein does not imply that future
*     versions will also be made available under the same terms and
*     conditions.
*
*  In any published work or commercial product which uses the SOFA
*  software directly, acknowledgement (see www.iausofa.org) is
*  appreciated.
*
*  Correspondence concerning SOFA software should be addressed as
*  follows:
*
*      By email:  sofa@ukho.gov.uk
*      By post:   IAU SOFA Center
*                 HM Nautical Almanac Office
*                 UK Hydrographic Office
*                 Admiralty Way, Taunton
*                 Somerset, TA1 2DN
*                 United Kingdom
*
*-----------------------------------------------------------------------

      END FUNCTION iau_FAOM03


      DOUBLE PRECISION FUNCTION iau_FAPA03 ( T )
*+
*  - - - - - - - - - - -
*   i a u _ F A P A 0 3
*  - - - - - - - - - - -
*
*  Fundamental argument, IERS Conventions (2003):
*  general accumulated precession in longitude.
*
*  This routine is part of the International Astronomical Union's
*  SOFA (Standards of Fundamental Astronomy) software collection.
*
*  Status:  canonical model.
*
*  Given:
*     T           d    TDB, Julian centuries since J2000.0 (Note 1)
*
*  Returned:
*     iau_FAPA03  d    general precession in longitude, radians (Note 2)
*
*  Notes:
*
*  1) Though T is strictly TDB, it is usually more convenient to use TT,
*     which makes no significant difference.
*
*  2) The expression used is as adopted in IERS Conventions (2003).  It
*     is taken from Kinoshita & Souchay (1990) and comes originally from
*     Lieske et al. (1977).
*
*  References:
*
*     Kinoshita, H. and Souchay J. 1990, Celest.Mech. and Dyn.Astron.
*     48, 187
*
*     Lieske, J.H., Lederle, T., Fricke, W. & Morando, B. 1977,
*     Astron.Astrophys. 58, 1-16
*
*     McCarthy, D. D., Petit, G. (eds.), IERS Conventions (2003),
*     IERS Technical Note No. 32, BKG (2004)
*
*  This revision:  2009 December 15
*
*  SOFA release 2013-12-02
*
*  Copyright (C) 2013 IAU SOFA Board.  See notes at end.
*
*-----------------------------------------------------------------------

      IMPLICIT NONE

      DOUBLE PRECISION T

* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

*  General accumulated precession in longitude.
      iau_FAPA03= ( 0.024381750D0 + 0.00000538691D0 * T ) * T

*  Finished.

*+----------------------------------------------------------------------
*
*  Copyright (C) 2013
*  Standards Of Fundamental Astronomy Board
*  of the International Astronomical Union.
*
*  =====================
*  SOFA Software License
*  =====================
*
*  NOTICE TO USER:
*
*  BY USING THIS SOFTWARE YOU ACCEPT THE FOLLOWING SIX TERMS AND
*  CONDITIONS WHICH APPLY TO ITS USE.
*
*  1. The Software is owned by the IAU SOFA Board ("SOFA").
*
*  2. Permission is granted to anyone to use the SOFA software for any
*     purpose, including commercial applications, free of charge and
*     without payment of royalties, subject to the conditions and
*     restrictions listed below.
*
*  3. You (the user) may copy and distribute SOFA source code to others,
*     and use and adapt its code and algorithms in your own software,
*     on a world-wide, royalty-free basis.  That portion of your
*     distribution that does not consist of intact and unchanged copies
*     of SOFA source code files is a "derived work" that must comply
*     with the following requirements:
*
*     a) Your work shall be marked or carry a statement that it
*        (i) uses routines and computations derived by you from
*        software provided by SOFA under license to you; and
*        (ii) does not itself constitute software provided by and/or
*        endorsed by SOFA.
*
*     b) The source code of your derived work must contain descriptions
*        of how the derived work is based upon, contains and/or differs
*        from the original SOFA software.
*
*     c) The names of all routines in your derived work shall not
*        include the prefix "iau" or "sofa" or trivial modifications
*        thereof such as changes of case.
*
*     d) The origin of the SOFA components of your derived work must
*        not be misrepresented;  you must not claim that you wrote the
*        original software, nor file a patent application for SOFA
*        software or algorithms embedded in the SOFA software.
*
*     e) These requirements must be reproduced intact in any source
*        distribution and shall apply to anyone to whom you have
*        granted a further right to modify the source code of your
*        derived work.
*
*     Note that, as originally distributed, the SOFA software is
*     intended to be a definitive implementation of the IAU standards,
*     and consequently third-party modifications are discouraged.  All
*     variations, no matter how minor, must be explicitly marked as
*     such, as explained above.
*
*  4. You shall not cause the SOFA software to be brought into
*     disrepute, either by misuse, or use for inappropriate tasks, or
*     by inappropriate modification.
*
*  5. The SOFA software is provided "as is" and SOFA makes no warranty
*     as to its use or performance.   SOFA does not and cannot warrant
*     the performance or results which the user may obtain by using the
*     SOFA software.  SOFA makes no warranties, express or implied, as
*     to non-infringement of third party rights, merchantability, or
*     fitness for any particular purpose.  In no event will SOFA be
*     liable to the user for any consequential, incidental, or special
*     damages, including any lost profits or lost savings, even if a
*     SOFA representative has been advised of such damages, or for any
*     claim by any third party.
*
*  6. The provision of any version of the SOFA software under the terms
*     and conditions specified herein does not imply that future
*     versions will also be made available under the same terms and
*     conditions.
*
*  In any published work or commercial product which uses the SOFA
*  software directly, acknowledgement (see www.iausofa.org) is
*  appreciated.
*
*  Correspondence concerning SOFA software should be addressed as
*  follows:
*
*      By email:  sofa@ukho.gov.uk
*      By post:   IAU SOFA Center
*                 HM Nautical Almanac Office
*                 UK Hydrographic Office
*                 Admiralty Way, Taunton
*                 Somerset, TA1 2DN
*                 United Kingdom
*
*-----------------------------------------------------------------------

      END FUNCTION iau_FAPA03


      DOUBLE PRECISION FUNCTION iau_FASA03 ( T )
*+
*  - - - - - - - - - - -
*   i a u _ F A S A 0 3
*  - - - - - - - - - - -
*
*  Fundamental argument, IERS Conventions (2003):
*  mean longitude of Saturn.
*
*  This routine is part of the International Astronomical Union's
*  SOFA (Standards of Fundamental Astronomy) software collection.
*
*  Status:  canonical model.
*
*  Given:
*     T           d    TDB, Julian centuries since J2000.0 (Note 1)
*
*  Returned:
*     iau_FASA03  d    mean longitude of Saturn, radians (Note 2)
*
*  Notes:
*
*  1) Though T is strictly TDB, it is usually more convenient to use TT,
*     which makes no significant difference.
*
*  2) The expression used is as adopted in IERS Conventions (2003) and
*     comes from Souchay et al. (1999) after Simon et al. (1994).
*
*  References:
*
*     McCarthy, D. D., Petit, G. (eds.), IERS Conventions (2003),
*     IERS Technical Note No. 32, BKG (2004)
*
*     Simon, J.-L., Bretagnon, P., Chapront, J., Chapront-Touze, M.,
*     Francou, G., Laskar, J. 1994, Astron.Astrophys. 282, 663-683
*
*     Souchay, J., Loysel, B., Kinoshita, H., Folgueira, M. 1999,
*     Astron.Astrophys.Supp.Ser. 135, 111
*
*  This revision:  2009 December 15
*
*  SOFA release 2013-12-02
*
*  Copyright (C) 2013 IAU SOFA Board.  See notes at end.
*
*-----------------------------------------------------------------------

      IMPLICIT NONE

      DOUBLE PRECISION T

* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

*  2Pi.
      DOUBLE PRECISION D2PI
      PARAMETER ( D2PI = 6.283185307179586476925287D0 )

* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

*  Mean longitude of Saturn (IERS Conventions 2003).
      iau_FASA03= MOD ( 0.874016757D0 + 21.3299104960D0 * T, D2PI )

*  Finished.

*+----------------------------------------------------------------------
*
*  Copyright (C) 2013
*  Standards Of Fundamental Astronomy Board
*  of the International Astronomical Union.
*
*  =====================
*  SOFA Software License
*  =====================
*
*  NOTICE TO USER:
*
*  BY USING THIS SOFTWARE YOU ACCEPT THE FOLLOWING SIX TERMS AND
*  CONDITIONS WHICH APPLY TO ITS USE.
*
*  1. The Software is owned by the IAU SOFA Board ("SOFA").
*
*  2. Permission is granted to anyone to use the SOFA software for any
*     purpose, including commercial applications, free of charge and
*     without payment of royalties, subject to the conditions and
*     restrictions listed below.
*
*  3. You (the user) may copy and distribute SOFA source code to others,
*     and use and adapt its code and algorithms in your own software,
*     on a world-wide, royalty-free basis.  That portion of your
*     distribution that does not consist of intact and unchanged copies
*     of SOFA source code files is a "derived work" that must comply
*     with the following requirements:
*
*     a) Your work shall be marked or carry a statement that it
*        (i) uses routines and computations derived by you from
*        software provided by SOFA under license to you; and
*        (ii) does not itself constitute software provided by and/or
*        endorsed by SOFA.
*
*     b) The source code of your derived work must contain descriptions
*        of how the derived work is based upon, contains and/or differs
*        from the original SOFA software.
*
*     c) The names of all routines in your derived work shall not
*        include the prefix "iau" or "sofa" or trivial modifications
*        thereof such as changes of case.
*
*     d) The origin of the SOFA components of your derived work must
*        not be misrepresented;  you must not claim that you wrote the
*        original software, nor file a patent application for SOFA
*        software or algorithms embedded in the SOFA software.
*
*     e) These requirements must be reproduced intact in any source
*        distribution and shall apply to anyone to whom you have
*        granted a further right to modify the source code of your
*        derived work.
*
*     Note that, as originally distributed, the SOFA software is
*     intended to be a definitive implementation of the IAU standards,
*     and consequently third-party modifications are discouraged.  All
*     variations, no matter how minor, must be explicitly marked as
*     such, as explained above.
*
*  4. You shall not cause the SOFA software to be brought into
*     disrepute, either by misuse, or use for inappropriate tasks, or
*     by inappropriate modification.
*
*  5. The SOFA software is provided "as is" and SOFA makes no warranty
*     as to its use or performance.   SOFA does not and cannot warrant
*     the performance or results which the user may obtain by using the
*     SOFA software.  SOFA makes no warranties, express or implied, as
*     to non-infringement of third party rights, merchantability, or
*     fitness for any particular purpose.  In no event will SOFA be
*     liable to the user for any consequential, incidental, or special
*     damages, including any lost profits or lost savings, even if a
*     SOFA representative has been advised of such damages, or for any
*     claim by any third party.
*
*  6. The provision of any version of the SOFA software under the terms
*     and conditions specified herein does not imply that future
*     versions will also be made available under the same terms and
*     conditions.
*
*  In any published work or commercial product which uses the SOFA
*  software directly, acknowledgement (see www.iausofa.org) is
*  appreciated.
*
*  Correspondence concerning SOFA software should be addressed as
*  follows:
*
*      By email:  sofa@ukho.gov.uk
*      By post:   IAU SOFA Center
*                 HM Nautical Almanac Office
*                 UK Hydrographic Office
*                 Admiralty Way, Taunton
*                 Somerset, TA1 2DN
*                 United Kingdom
*
*-----------------------------------------------------------------------

      END FUNCTION iau_FASA03


      DOUBLE PRECISION FUNCTION iau_FAUR03 ( T )
*+
*  - - - - - - - - - - -
*   i a u _ F A U R 0 3
*  - - - - - - - - - - -
*
*  Fundamental argument, IERS Conventions (2003):
*  mean longitude of Uranus.
*
*  This routine is part of the International Astronomical Union's
*  SOFA (Standards of Fundamental Astronomy) software collection.
*
*  Status:  canonical model.
*
*  Given:
*     T           d    TDB, Julian centuries since J2000.0 (Note 1)
*
*  Returned:
*     iau_FAUR03  d    mean longitude of Uranus, radians (Note 2)
*
*  Notes:
*
*  1) Though T is strictly TDB, it is usually more convenient to use TT,
*     which makes no significant difference.
*
*  2) The expression used is as adopted in IERS Conventions (2003) and
*     is adapted from Simon et al. (1994).
*
*  References:
*
*     McCarthy, D. D., Petit, G. (eds.), IERS Conventions (2003),
*     IERS Technical Note No. 32, BKG (2004)
*
*     Simon, J.-L., Bretagnon, P., Chapront, J., Chapront-Touze, M.,
*     Francou, G., Laskar, J. 1994, Astron.Astrophys. 282, 663-683
*
*  This revision:  2009 December 15
*
*  SOFA release 2013-12-02
*
*  Copyright (C) 2013 IAU SOFA Board.  See notes at end.
*
*-----------------------------------------------------------------------

      IMPLICIT NONE

      DOUBLE PRECISION T

* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

*  2Pi.
      DOUBLE PRECISION D2PI
      PARAMETER ( D2PI = 6.283185307179586476925287D0 )

* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

*  Mean longitude of Uranus (IERS Conventions 2003).
      iau_FAUR03= MOD ( 5.481293872D0 + 7.4781598567D0 * T, D2PI )

*  Finished.

*+----------------------------------------------------------------------
*
*  Copyright (C) 2013
*  Standards Of Fundamental Astronomy Board
*  of the International Astronomical Union.
*
*  =====================
*  SOFA Software License
*  =====================
*
*  NOTICE TO USER:
*
*  BY USING THIS SOFTWARE YOU ACCEPT THE FOLLOWING SIX TERMS AND
*  CONDITIONS WHICH APPLY TO ITS USE.
*
*  1. The Software is owned by the IAU SOFA Board ("SOFA").
*
*  2. Permission is granted to anyone to use the SOFA software for any
*     purpose, including commercial applications, free of charge and
*     without payment of royalties, subject to the conditions and
*     restrictions listed below.
*
*  3. You (the user) may copy and distribute SOFA source code to others,
*     and use and adapt its code and algorithms in your own software,
*     on a world-wide, royalty-free basis.  That portion of your
*     distribution that does not consist of intact and unchanged copies
*     of SOFA source code files is a "derived work" that must comply
*     with the following requirements:
*
*     a) Your work shall be marked or carry a statement that it
*        (i) uses routines and computations derived by you from
*        software provided by SOFA under license to you; and
*        (ii) does not itself constitute software provided by and/or
*        endorsed by SOFA.
*
*     b) The source code of your derived work must contain descriptions
*        of how the derived work is based upon, contains and/or differs
*        from the original SOFA software.
*
*     c) The names of all routines in your derived work shall not
*        include the prefix "iau" or "sofa" or trivial modifications
*        thereof such as changes of case.
*
*     d) The origin of the SOFA components of your derived work must
*        not be misrepresented;  you must not claim that you wrote the
*        original software, nor file a patent application for SOFA
*        software or algorithms embedded in the SOFA software.
*
*     e) These requirements must be reproduced intact in any source
*        distribution and shall apply to anyone to whom you have
*        granted a further right to modify the source code of your
*        derived work.
*
*     Note that, as originally distributed, the SOFA software is
*     intended to be a definitive implementation of the IAU standards,
*     and consequently third-party modifications are discouraged.  All
*     variations, no matter how minor, must be explicitly marked as
*     such, as explained above.
*
*  4. You shall not cause the SOFA software to be brought into
*     disrepute, either by misuse, or use for inappropriate tasks, or
*     by inappropriate modification.
*
*  5. The SOFA software is provided "as is" and SOFA makes no warranty
*     as to its use or performance.   SOFA does not and cannot warrant
*     the performance or results which the user may obtain by using the
*     SOFA software.  SOFA makes no warranties, express or implied, as
*     to non-infringement of third party rights, merchantability, or
*     fitness for any particular purpose.  In no event will SOFA be
*     liable to the user for any consequential, incidental, or special
*     damages, including any lost profits or lost savings, even if a
*     SOFA representative has been advised of such damages, or for any
*     claim by any third party.
*
*  6. The provision of any version of the SOFA software under the terms
*     and conditions specified herein does not imply that future
*     versions will also be made available under the same terms and
*     conditions.
*
*  In any published work or commercial product which uses the SOFA
*  software directly, acknowledgement (see www.iausofa.org) is
*  appreciated.
*
*  Correspondence concerning SOFA software should be addressed as
*  follows:
*
*      By email:  sofa@ukho.gov.uk
*      By post:   IAU SOFA Center
*                 HM Nautical Almanac Office
*                 UK Hydrographic Office
*                 Admiralty Way, Taunton
*                 Somerset, TA1 2DN
*                 United Kingdom
*
*-----------------------------------------------------------------------

      END FUNCTION iau_FAUR03


      DOUBLE PRECISION FUNCTION iau_FAVE03 ( T )
*+
*  - - - - - - - - - - -
*   i a u _ F A V E 0 3
*  - - - - - - - - - - -
*
*  Fundamental argument, IERS Conventions (2003):
*  mean longitude of Venus.
*
*  This routine is part of the International Astronomical Union's
*  SOFA (Standards of Fundamental Astronomy) software collection.
*
*  Status:  canonical model.
*
*  Given:
*     T           d    TDB, Julian centuries since J2000.0 (Note 1)
*
*  Returned:
*     iau_FAVE03  d    mean longitude of Venus, radians (Note 2)
*
*  Notes:
*
*  1) Though T is strictly TDB, it is usually more convenient to use TT,
*     which makes no significant difference.
*
*  2) The expression used is as adopted in IERS Conventions (2003) and
*     comes from Souchay et al. (1999) after Simon et al. (1994).
*
*  References:
*
*     McCarthy, D. D., Petit, G. (eds.), IERS Conventions (2003),
*     IERS Technical Note No. 32, BKG (2004)
*
*     Simon, J.-L., Bretagnon, P., Chapront, J., Chapront-Touze, M.,
*     Francou, G., Laskar, J. 1994, Astron.Astrophys. 282, 663-683
*
*     Souchay, J., Loysel, B., Kinoshita, H., Folgueira, M. 1999,
*     Astron.Astrophys.Supp.Ser. 135, 111
*
*  This revision:  2009 December 15
*
*  SOFA release 2013-12-02
*
*  Copyright (C) 2013 IAU SOFA Board.  See notes at end.
*
*-----------------------------------------------------------------------

      IMPLICIT NONE

      DOUBLE PRECISION T

* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

*  2Pi.
      DOUBLE PRECISION D2PI
      PARAMETER ( D2PI = 6.283185307179586476925287D0 )

* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

*  Mean longitude of Venus (IERS Conventions 2003).
      iau_FAVE03= MOD ( 3.176146697D0 + 1021.3285546211D0 * T, D2PI )

*  Finished.

*+----------------------------------------------------------------------
*
*  Copyright (C) 2013
*  Standards Of Fundamental Astronomy Board
*  of the International Astronomical Union.
*
*  =====================
*  SOFA Software License
*  =====================
*
*  NOTICE TO USER:
*
*  BY USING THIS SOFTWARE YOU ACCEPT THE FOLLOWING SIX TERMS AND
*  CONDITIONS WHICH APPLY TO ITS USE.
*
*  1. The Software is owned by the IAU SOFA Board ("SOFA").
*
*  2. Permission is granted to anyone to use the SOFA software for any
*     purpose, including commercial applications, free of charge and
*     without payment of royalties, subject to the conditions and
*     restrictions listed below.
*
*  3. You (the user) may copy and distribute SOFA source code to others,
*     and use and adapt its code and algorithms in your own software,
*     on a world-wide, royalty-free basis.  That portion of your
*     distribution that does not consist of intact and unchanged copies
*     of SOFA source code files is a "derived work" that must comply
*     with the following requirements:
*
*     a) Your work shall be marked or carry a statement that it
*        (i) uses routines and computations derived by you from
*        software provided by SOFA under license to you; and
*        (ii) does not itself constitute software provided by and/or
*        endorsed by SOFA.
*
*     b) The source code of your derived work must contain descriptions
*        of how the derived work is based upon, contains and/or differs
*        from the original SOFA software.
*
*     c) The names of all routines in your derived work shall not
*        include the prefix "iau" or "sofa" or trivial modifications
*        thereof such as changes of case.
*
*     d) The origin of the SOFA components of your derived work must
*        not be misrepresented;  you must not claim that you wrote the
*        original software, nor file a patent application for SOFA
*        software or algorithms embedded in the SOFA software.
*
*     e) These requirements must be reproduced intact in any source
*        distribution and shall apply to anyone to whom you have
*        granted a further right to modify the source code of your
*        derived work.
*
*     Note that, as originally distributed, the SOFA software is
*     intended to be a definitive implementation of the IAU standards,
*     and consequently third-party modifications are discouraged.  All
*     variations, no matter how minor, must be explicitly marked as
*     such, as explained above.
*
*  4. You shall not cause the SOFA software to be brought into
*     disrepute, either by misuse, or use for inappropriate tasks, or
*     by inappropriate modification.
*
*  5. The SOFA software is provided "as is" and SOFA makes no warranty
*     as to its use or performance.   SOFA does not and cannot warrant
*     the performance or results which the user may obtain by using the
*     SOFA software.  SOFA makes no warranties, express or implied, as
*     to non-infringement of third party rights, merchantability, or
*     fitness for any particular purpose.  In no event will SOFA be
*     liable to the user for any consequential, incidental, or special
*     damages, including any lost profits or lost savings, even if a
*     SOFA representative has been advised of such damages, or for any
*     claim by any third party.
*
*  6. The provision of any version of the SOFA software under the terms
*     and conditions specified herein does not imply that future
*     versions will also be made available under the same terms and
*     conditions.
*
*  In any published work or commercial product which uses the SOFA
*  software directly, acknowledgement (see www.iausofa.org) is
*  appreciated.
*
*  Correspondence concerning SOFA software should be addressed as
*  follows:
*
*      By email:  sofa@ukho.gov.uk
*      By post:   IAU SOFA Center
*                 HM Nautical Almanac Office
*                 UK Hydrographic Office
*                 Admiralty Way, Taunton
*                 Somerset, TA1 2DN
*                 United Kingdom
*
*-----------------------------------------------------------------------

      END FUNCTION iau_FAVE03


      DOUBLE PRECISION FUNCTION iau_S06 ( DATE1, DATE2, X, Y )
*+
*  - - - - - - - -
*   i a u _ S 0 6
*  - - - - - - - -
*
*  The CIO locator s, positioning the Celestial Intermediate Origin on
*  the equator of the Celestial Intermediate Pole, given the CIP's X,Y
*  coordinates.  Compatible with IAU 2006/2000A precession-nutation.
*
*  This routine is part of the International Astronomical Union's
*  SOFA (Standards of Fundamental Astronomy) software collection.
*
*  Status:  canonical model.
*
*  Given:
*     DATE1,DATE2    d      TT as a 2-part Julian Date (Note 1)
*     X,Y            d      CIP coordinates (Note 3)
*
*  Returned:
*     iau_S06        d      the CIO locator s in radians (Note 2)
*
*  Notes:
*
*  1) The TT date DATE1+DATE2 is a Julian Date, apportioned in any
*     convenient way between the two arguments.  For example,
*     JD(TT)=2450123.7 could be expressed in any of these ways,
*     among others:
*
*            DATE1          DATE2
*
*         2450123.7D0        0D0        (JD method)
*          2451545D0      -1421.3D0     (J2000 method)
*         2400000.5D0     50123.2D0     (MJD method)
*         2450123.5D0       0.2D0       (date & time method)
*
*     The JD method is the most natural and convenient to use in
*     cases where the loss of several decimal digits of resolution
*     is acceptable.  The J2000 method is best matched to the way
*     the argument is handled internally and will deliver the
*     optimum resolution.  The MJD method and the date & time methods
*     are both good compromises between resolution and convenience.
*
*  2) The CIO locator s is the difference between the right ascensions
*     of the same point in two systems:  the two systems are the GCRS
*     and the CIP,CIO, and the point is the ascending node of the
*     CIP equator.  The quantity s remains below 0.1 arcsecond
*     throughout 1900-2100.
*
*  3) The series used to compute s is in fact for s+XY/2, where X and Y
*     are the x and y components of the CIP unit vector;  this series is
*     more compact than a direct series for s would be.  This routine
*     requires X,Y to be supplied by the caller, who is responsible for
*     providing values that are consistent with the supplied date.
*
*  4) The model is consistent with the "P03" precession (Capitaine et
*     al. 2003), adopted by IAU 2006 Resolution 1, 2006, and the
*     IAU 2000A nutation (with P03 adjustments).
*
*  Called:
*     iau_FAL03    mean anomaly of the Moon
*     iau_FALP03   mean anomaly of the Sun
*     iau_FAF03    mean argument of the latitude of the Moon
*     iau_FAD03    mean elongation of the Moon from the Sun
*     iau_FAOM03   mean longitude of the Moon's ascending node '
*     iau_FAVE03   mean longitude of Venus
*     iau_FAE03    mean longitude of Earth
*     iau_FAPA03   general accumulated precession in longitude
*
*  References:
*
*     Capitaine, N., Wallace, P.T. & Chapront, J., 2003, Astron.
*     Astrophys. 432, 355
*
*     McCarthy, D.D., Petit, G. (eds.) 2004, IERS Conventions (2003),
*     IERS Technical Note No. 32, BKG
*
*  This revision:   2009 December 15
*
*  SOFA release 2013-12-02
*
*  Copyright (C) 2013 IAU SOFA Board.  See notes at end.
*
*-----------------------------------------------------------------------

      IMPLICIT NONE

      DOUBLE PRECISION DATE1, DATE2, X, Y

* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

*  Arcseconds to radians
      DOUBLE PRECISION DAS2R
      PARAMETER ( DAS2R = 4.848136811095359935899141D-6 )

*  Reference epoch (J2000.0), JD
      DOUBLE PRECISION DJ00
      PARAMETER ( DJ00 = 2451545D0 )

*  Days per Julian century
      DOUBLE PRECISION DJC
      PARAMETER ( DJC = 36525D0 )

*  Time since J2000.0, in Julian centuries
      DOUBLE PRECISION T

*  Miscellaneous
      INTEGER I, J
      DOUBLE PRECISION A, S0, S1, S2, S3, S4, S5
!      DOUBLE PRECISION iau_FAL03, iau_FALP03, iau_FAF03,
!     :                 iau_FAD03, iau_FAOM03, iau_FAVE03, iau_FAE03,
!     :                 iau_FAPA03

*  Fundamental arguments
      DOUBLE PRECISION FA(8)

*  ---------------------
*  The series for s+XY/2
*  ---------------------

*  Number of terms in the series
      INTEGER NSP, NS0, NS1, NS2, NS3, NS4
      PARAMETER ( NSP=6, NS0=33, NS1=3, NS2=25, NS3=4, NS4=1 )

*  Polynomial coefficients
      DOUBLE PRECISION SP ( NSP )

*  Coefficients of l,l',F,D,Om,LVe,LE,pA
      INTEGER KS0 ( 8, NS0 ),
     :        KS1 ( 8, NS1 ),
     :        KS2 ( 8, NS2 ),
     :        KS3 ( 8, NS3 ),
     :        KS4 ( 8, NS4 )

*  Sine and cosine coefficients
      DOUBLE PRECISION SS0 ( 2, NS0 ),
     :                 SS1 ( 2, NS1 ),
     :                 SS2 ( 2, NS2 ),
     :                 SS3 ( 2, NS3 ),
     :                 SS4 ( 2, NS4 )

*  Polynomial coefficients
      DATA SP /    94    D-6,
     :           3808.65 D-6,
     :           -122.68 D-6,
     :         -72574.11 D-6,
     :             27.98 D-6,
     :             15.62 D-6 /

*  Argument coefficients for t^0
      DATA ( ( KS0(I,J), I=1,8), J=1,10 ) /
     :  0,  0,  0,  0,  1,  0,  0,  0,
     :  0,  0,  0,  0,  2,  0,  0,  0,
     :  0,  0,  2, -2,  3,  0,  0,  0,
     :  0,  0,  2, -2,  1,  0,  0,  0,
     :  0,  0,  2, -2,  2,  0,  0,  0,
     :  0,  0,  2,  0,  3,  0,  0,  0,
     :  0,  0,  2,  0,  1,  0,  0,  0,
     :  0,  0,  0,  0,  3,  0,  0,  0,
     :  0,  1,  0,  0,  1,  0,  0,  0,
     :  0,  1,  0,  0, -1,  0,  0,  0 /
      DATA ( ( KS0(I,J), I=1,8), J=11,20 ) /
     :  1,  0,  0,  0, -1,  0,  0,  0,
     :  1,  0,  0,  0,  1,  0,  0,  0,
     :  0,  1,  2, -2,  3,  0,  0,  0,
     :  0,  1,  2, -2,  1,  0,  0,  0,
     :  0,  0,  4, -4,  4,  0,  0,  0,
     :  0,  0,  1, -1,  1, -8, 12,  0,
     :  0,  0,  2,  0,  0,  0,  0,  0,
     :  0,  0,  2,  0,  2,  0,  0,  0,
     :  1,  0,  2,  0,  3,  0,  0,  0,
     :  1,  0,  2,  0,  1,  0,  0,  0 /
      DATA ( ( KS0(I,J), I=1,8), J=21,30 ) /
     :  0,  0,  2, -2,  0,  0,  0,  0,
     :  0,  1, -2,  2, -3,  0,  0,  0,
     :  0,  1, -2,  2, -1,  0,  0,  0,
     :  0,  0,  0,  0,  0,  8,-13, -1,
     :  0,  0,  0,  2,  0,  0,  0,  0,
     :  2,  0, -2,  0, -1,  0,  0,  0,
     :  0,  1,  2, -2,  2,  0,  0,  0,
     :  1,  0,  0, -2,  1,  0,  0,  0,
     :  1,  0,  0, -2, -1,  0,  0,  0,
     :  0,  0,  4, -2,  4,  0,  0,  0 /
      DATA ( ( KS0(I,J), I=1,8), J=31,NS0 ) /
     :  0,  0,  2, -2,  4,  0,  0,  0,
     :  1,  0, -2,  0, -3,  0,  0,  0,
     :  1,  0, -2,  0, -1,  0,  0,  0 /

*  Argument coefficients for t^1
      DATA ( ( KS1(I,J), I=1,8), J=1,NS1 ) /
     :  0,  0,  0,  0,  2,  0,  0,  0,
     :  0,  0,  0,  0,  1,  0,  0,  0,
     :  0,  0,  2, -2,  3,  0,  0,  0 /

*  Argument coefficients for t^2
      DATA ( ( KS2(I,J), I=1,8), J=1,10 ) /
     :  0,  0,  0,  0,  1,  0,  0,  0,
     :  0,  0,  2, -2,  2,  0,  0,  0,
     :  0,  0,  2,  0,  2,  0,  0,  0,
     :  0,  0,  0,  0,  2,  0,  0,  0,
     :  0,  1,  0,  0,  0,  0,  0,  0,
     :  1,  0,  0,  0,  0,  0,  0,  0,
     :  0,  1,  2, -2,  2,  0,  0,  0,
     :  0,  0,  2,  0,  1,  0,  0,  0,
     :  1,  0,  2,  0,  2,  0,  0,  0,
     :  0,  1, -2,  2, -2,  0,  0,  0 /
      DATA ( ( KS2(I,J), I=1,8), J=11,20 ) /
     :  1,  0,  0, -2,  0,  0,  0,  0,
     :  0,  0,  2, -2,  1,  0,  0,  0,
     :  1,  0, -2,  0, -2,  0,  0,  0,
     :  0,  0,  0,  2,  0,  0,  0,  0,
     :  1,  0,  0,  0,  1,  0,  0,  0,
     :  1,  0, -2, -2, -2,  0,  0,  0,
     :  1,  0,  0,  0, -1,  0,  0,  0,
     :  1,  0,  2,  0,  1,  0,  0,  0,
     :  2,  0,  0, -2,  0,  0,  0,  0,
     :  2,  0, -2,  0, -1,  0,  0,  0 /
      DATA ( ( KS2(I,J), I=1,8), J=21,NS2 ) /
     :  0,  0,  2,  2,  2,  0,  0,  0,
     :  2,  0,  2,  0,  2,  0,  0,  0,
     :  2,  0,  0,  0,  0,  0,  0,  0,
     :  1,  0,  2, -2,  2,  0,  0,  0,
     :  0,  0,  2,  0,  0,  0,  0,  0 /

*  Argument coefficients for t^3
      DATA ( ( KS3(I,J), I=1,8), J=1,NS3 ) /
     :  0,  0,  0,  0,  1,  0,  0,  0,
     :  0,  0,  2, -2,  2,  0,  0,  0,
     :  0,  0,  2,  0,  2,  0,  0,  0,
     :  0,  0,  0,  0,  2,  0,  0,  0 /

*  Argument coefficients for t^4
      DATA ( ( KS4(I,J), I=1,8), J=1,NS4 ) /
     :  0,  0,  0,  0,  1,  0,  0,  0 /

*  Sine and cosine coefficients for t^0
      DATA ( ( SS0(I,J), I=1,2), J=1,10 ) /
     :            -2640.73D-6,          +0.39D-6,
     :              -63.53D-6,          +0.02D-6,
     :              -11.75D-6,          -0.01D-6,
     :              -11.21D-6,          -0.01D-6,
     :               +4.57D-6,           0.00D-6,
     :               -2.02D-6,           0.00D-6,
     :               -1.98D-6,           0.00D-6,
     :               +1.72D-6,           0.00D-6,
     :               +1.41D-6,          +0.01D-6,
     :               +1.26D-6,          +0.01D-6 /
      DATA ( ( SS0(I,J), I=1,2), J=11,20 ) /
     :               +0.63D-6,           0.00D-6,
     :               +0.63D-6,           0.00D-6,
     :               -0.46D-6,           0.00D-6,
     :               -0.45D-6,           0.00D-6,
     :               -0.36D-6,           0.00D-6,
     :               +0.24D-6,          +0.12D-6,
     :               -0.32D-6,           0.00D-6,
     :               -0.28D-6,           0.00D-6,
     :               -0.27D-6,           0.00D-6,
     :               -0.26D-6,           0.00D-6 /
      DATA ( ( SS0(I,J), I=1,2), J=21,30 ) /
     :               +0.21D-6,           0.00D-6,
     :               -0.19D-6,           0.00D-6,
     :               -0.18D-6,           0.00D-6,
     :               +0.10D-6,          -0.05D-6,
     :               -0.15D-6,           0.00D-6,
     :               +0.14D-6,           0.00D-6,
     :               +0.14D-6,           0.00D-6,
     :               -0.14D-6,           0.00D-6,
     :               -0.14D-6,           0.00D-6,
     :               -0.13D-6,           0.00D-6 /
      DATA ( ( SS0(I,J), I=1,2), J=31,NS0 ) /
     :               +0.11D-6,           0.00D-6,
     :               -0.11D-6,           0.00D-6,
     :               -0.11D-6,           0.00D-6 /

*  Sine and cosine coefficients for t^1
      DATA ( ( SS1(I,J), I=1,2), J=1,NS1 ) /
     :               -0.07D-6,          +3.57D-6,
     :               +1.73D-6,          -0.03D-6,
     :                0.00D-6,          +0.48D-6 /

*  Sine and cosine coefficients for t^2
      DATA ( ( SS2(I,J), I=1,2), J=1,10 ) /
     :             +743.52D-6,          -0.17D-6,
     :              +56.91D-6,          +0.06D-6,
     :               +9.84D-6,          -0.01D-6,
     :               -8.85D-6,          +0.01D-6,
     :               -6.38D-6,          -0.05D-6,
     :               -3.07D-6,           0.00D-6,
     :               +2.23D-6,           0.00D-6,
     :               +1.67D-6,           0.00D-6,
     :               +1.30D-6,           0.00D-6,
     :               +0.93D-6,           0.00D-6 /
      DATA ( ( SS2(I,J), I=1,2), J=11,20 ) /
     :               +0.68D-6,           0.00D-6,
     :               -0.55D-6,           0.00D-6,
     :               +0.53D-6,           0.00D-6,
     :               -0.27D-6,           0.00D-6,
     :               -0.27D-6,           0.00D-6,
     :               -0.26D-6,           0.00D-6,
     :               -0.25D-6,           0.00D-6,
     :               +0.22D-6,           0.00D-6,
     :               -0.21D-6,           0.00D-6,
     :               +0.20D-6,           0.00D-6 /
      DATA ( ( SS2(I,J), I=1,2), J=21,NS2 ) /
     :               +0.17D-6,           0.00D-6,
     :               +0.13D-6,           0.00D-6,
     :               -0.13D-6,           0.00D-6,
     :               -0.12D-6,           0.00D-6,
     :               -0.11D-6,           0.00D-6 /

*  Sine and cosine coefficients for t^3
      DATA ( ( SS3(I,J), I=1,2), J=1,NS3 ) /
     :               +0.30D-6,         -23.42D-6,
     :               -0.03D-6,          -1.46D-6,
     :               -0.01D-6,          -0.25D-6,
     :                0.00D-6,          +0.23D-6 /

*  Sine and cosine coefficients for t^4
      DATA ( ( SS4(I,J), I=1,2), J=1,NS4 ) /
     :               -0.26D-6,          -0.01D-6 /

* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

*  Interval between fundamental epoch J2000.0 and current date (JC).
      T = ( ( DATE1-DJ00 ) + DATE2 ) / DJC

*  Fundamental Arguments (from IERS Conventions 2003)

*  Mean anomaly of the Moon.
      FA(1) = iau_FAL03 ( T )

*  Mean anomaly of the Sun.
      FA(2) = iau_FALP03 ( T )

*  Mean longitude of the Moon minus that of the ascending node.
      FA(3) = iau_FAF03 ( T )

*  Mean elongation of the Moon from the Sun.
      FA(4) = iau_FAD03 ( T )

*  Mean longitude of the ascending node of the Moon.
      FA(5) = iau_FAOM03 ( T )

*  Mean longitude of Venus.
      FA(6) = iau_FAVE03 ( T )

*  Mean longitude of Earth.
      FA(7) = iau_FAE03 ( T )

*  General precession in longitude.
      FA(8) = iau_FAPA03 ( T )

*  Evaluate s.
      S0 = SP(1)
      S1 = SP(2)
      S2 = SP(3)
      S3 = SP(4)
      S4 = SP(5)
      S5 = SP(6)

      DO 2 I = NS0,1,-1
         A = 0D0
         DO 1 J=1,8
            A = A + DBLE(KS0(J,I))*FA(J)
 1       CONTINUE
         S0 = S0 + ( SS0(1,I)*SIN(A) + SS0(2,I)*COS(A) )
 2    CONTINUE

      DO 4 I = NS1,1,-1
         A = 0D0
         DO 3 J=1,8
            A = A + DBLE(KS1(J,I))*FA(J)
 3       CONTINUE
         S1 = S1 + ( SS1(1,I)*SIN(A) + SS1(2,I)*COS(A) )
 4    CONTINUE

      DO 6 I = NS2,1,-1
         A = 0D0
         DO 5 J=1,8
            A = A + DBLE(KS2(J,I))*FA(J)
 5       CONTINUE
         S2 = S2 + ( SS2(1,I)*SIN(A) + SS2(2,I)*COS(A) )
 6    CONTINUE

      DO 8 I = NS3,1,-1
         A = 0D0
         DO 7 J=1,8
            A = A + DBLE(KS3(J,I))*FA(J)
 7       CONTINUE
         S3 = S3 + ( SS3(1,I)*SIN(A) + SS3(2,I)*COS(A) )
 8    CONTINUE

      DO 10 I = NS4,1,-1
         A = 0D0
         DO 9 J=1,8
            A = A + DBLE(KS4(J,I))*FA(J)
 9       CONTINUE
         S4 = S4 + ( SS4(1,I)*SIN(A) + SS4(2,I)*COS(A) )
 10   CONTINUE

      iau_S06 = ( S0 +
     :          ( S1 +
     :          ( S2 +
     :          ( S3 +
     :          ( S4 +
     :            S5 * T ) * T ) * T ) * T ) * T ) * DAS2R - X*Y/2D0

*  Finished.

*+----------------------------------------------------------------------
*
*  Copyright (C) 2013
*  Standards Of Fundamental Astronomy Board
*  of the International Astronomical Union.
*
*  =====================
*  SOFA Software License
*  =====================
*
*  NOTICE TO USER:
*
*  BY USING THIS SOFTWARE YOU ACCEPT THE FOLLOWING SIX TERMS AND
*  CONDITIONS WHICH APPLY TO ITS USE.
*
*  1. The Software is owned by the IAU SOFA Board ("SOFA").
*
*  2. Permission is granted to anyone to use the SOFA software for any
*     purpose, including commercial applications, free of charge and
*     without payment of royalties, subject to the conditions and
*     restrictions listed below.
*
*  3. You (the user) may copy and distribute SOFA source code to others,
*     and use and adapt its code and algorithms in your own software,
*     on a world-wide, royalty-free basis.  That portion of your
*     distribution that does not consist of intact and unchanged copies
*     of SOFA source code files is a "derived work" that must comply
*     with the following requirements:
*
*     a) Your work shall be marked or carry a statement that it
*        (i) uses routines and computations derived by you from
*        software provided by SOFA under license to you; and
*        (ii) does not itself constitute software provided by and/or
*        endorsed by SOFA.
*
*     b) The source code of your derived work must contain descriptions
*        of how the derived work is based upon, contains and/or differs
*        from the original SOFA software.
*
*     c) The names of all routines in your derived work shall not
*        include the prefix "iau" or "sofa" or trivial modifications
*        thereof such as changes of case.
*
*     d) The origin of the SOFA components of your derived work must
*        not be misrepresented;  you must not claim that you wrote the
*        original software, nor file a patent application for SOFA
*        software or algorithms embedded in the SOFA software.
*
*     e) These requirements must be reproduced intact in any source
*        distribution and shall apply to anyone to whom you have
*        granted a further right to modify the source code of your
*        derived work.
*
*     Note that, as originally distributed, the SOFA software is
*     intended to be a definitive implementation of the IAU standards,
*     and consequently third-party modifications are discouraged.  All
*     variations, no matter how minor, must be explicitly marked as
*     such, as explained above.
*
*  4. You shall not cause the SOFA software to be brought into
*     disrepute, either by misuse, or use for inappropriate tasks, or
*     by inappropriate modification.
*
*  5. The SOFA software is provided "as is" and SOFA makes no warranty
*     as to its use or performance.   SOFA does not and cannot warrant
*     the performance or results which the user may obtain by using the
*     SOFA software.  SOFA makes no warranties, express or implied, as
*     to non-infringement of third party rights, merchantability, or
*     fitness for any particular purpose.  In no event will SOFA be
*     liable to the user for any consequential, incidental, or special
*     damages, including any lost profits or lost savings, even if a
*     SOFA representative has been advised of such damages, or for any
*     claim by any third party.
*
*  6. The provision of any version of the SOFA software under the terms
*     and conditions specified herein does not imply that future
*     versions will also be made available under the same terms and
*     conditions.
*
*  In any published work or commercial product which uses the SOFA
*  software directly, acknowledgement (see www.iausofa.org) is
*  appreciated.
*
*  Correspondence concerning SOFA software should be addressed as
*  follows:
*
*      By email:  sofa@ukho.gov.uk
*      By post:   IAU SOFA Center
*                 HM Nautical Almanac Office
*                 UK Hydrographic Office
*                 Admiralty Way, Taunton
*                 Somerset, TA1 2DN
*                 United Kingdom
*
*-----------------------------------------------------------------------

      END FUNCTION iau_S06


      SUBROUTINE iau_XY06 ( DATE1, DATE2, X, Y )
*+
*  - - - - - - - - -
*   i a u _ X Y 0 6
*  - - - - - - - - -
*
*  X,Y coordinates of celestial intermediate pole from series based
*  on IAU 2006 precession and IAU 2000A nutation.
*
*  This routine is part of the International Astronomical Union's
*  SOFA (Standards of Fundamental Astronomy) software collection.
*
*  Status:  canonical model.
*
*  Given:
*     DATE1,DATE2    d       TT as a 2-part Julian Date (Note 1)
*
*  Returned:
*     X,Y            d       CIP X,Y coordinates (Note 2)
*
*  Notes:
*
*  1) The TT date DATE1+DATE2 is a Julian Date, apportioned in any
*     convenient way between the two arguments.  For example,
*     JD(TT)=2450123.7 could be expressed in any of these ways,
*     among others:
*
*            DATE1          DATE2
*
*         2450123.7D0        0D0        (JD method)
*          2451545D0      -1421.3D0     (J2000 method)
*         2400000.5D0     50123.2D0     (MJD method)
*         2450123.5D0       0.2D0       (date & time method)
*
*     The JD method is the most natural and convenient to use in
*     cases where the loss of several decimal digits of resolution
*     is acceptable.  The J2000 method is best matched to the way
*     the argument is handled internally and will deliver the
*     optimum resolution.  The MJD method and the date & time methods
*     are both good compromises between resolution and convenience.
*
*  2) The X,Y coordinates are those of the unit vector towards the
*     celestial intermediate pole.  They represent the combined effects
*     of frame bias, precession and nutation.
*
*  3) The fundamental arguments used are as adopted in IERS Conventions
*     (2003) and are from Simon et al. (1994) and Souchay et al. (1999).
*
*  4) This is an alternative to the angles-based method, via the SOFA
*     routine iau_FW2XY and as used in iau_XYS06A for example.  The
*     two methods agree at the 1 microarcsecond level (at present),
*     a negligible amount compared with the intrinsic accuracy of the
*     models.  However, it would be unwise to mix the two methods
*     (angles-based and series-based) in a single application.
*
*  Called:
*     iau_FAL03    mean anomaly of the Moon
*     iau_FALP03   mean anomaly of the Sun
*     iau_FAF03    mean argument of the latitude of the Moon
*     iau_FAD03    mean elongation of the Moon from the Sun
*     iau_FAOM03   mean longitude of the Moon's ascending node
*     iau_FAME03   mean longitude of Mercury
*     iau_FAVE03   mean longitude of Venus
*     iau_FAE03    mean longitude of Earth
*     iau_FAMA03   mean longitude of Mars
*     iau_FAJU03   mean longitude of Jupiter
*     iau_FASA03   mean longitude of Saturn
*     iau_FAUR03   mean longitude of Uranus
*     iau_FANE03   mean longitude of Neptune
*     iau_FAPA03   general accumulated precession in longitude
*
*  References:
*
*     Capitaine, N., Wallace, P.T. & Chapront, J., 2003,
*     Astron.Astrophys., 412, 567
*
*     Capitaine, N. & Wallace, P.T., 2006, Astron.Astrophys. 450, 855
*
*     McCarthy, D. D., Petit, G. (eds.), 2004, IERS Conventions (2003),
*     IERS Technical Note No. 32, BKG
*
*     Simon, J.L., Bretagnon, P., Chapront, J., Chapront-Touze, M.,
*     Francou, G. & Laskar, J., Astron.Astrophys., 1994, 282, 663
*
*     Souchay, J., Loysel, B., Kinoshita, H., Folgueira, M., 1999,
*     Astron.Astrophys.Supp.Ser. 135, 111
*
*     Wallace, P.T. & Capitaine, N., 2006, Astron.Astrophys. 459, 981
*
*  This revision:  2013 December 2
*
*  SOFA release 2013-12-02
*
*  Copyright (C) 2013 IAU SOFA Board.  See notes at end.
*
*-----------------------------------------------------------------------

      IMPLICIT NONE

      DOUBLE PRECISION DATE1, DATE2, X, Y

* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

*  Arcseconds to radians
      DOUBLE PRECISION DAS2R
      PARAMETER ( DAS2R = 4.848136811095359935899141D-6 )

*  Reference epoch (J2000.0), JD
      DOUBLE PRECISION DJ00
      PARAMETER ( DJ00 = 2451545D0 )

*  Days per Julian century
      DOUBLE PRECISION DJC
      PARAMETER ( DJC = 36525D0 )

*  Maximum power of T in the polynomials for X and Y
      INTEGER MAXPT
      PARAMETER ( MAXPT = 5 )

*  Numbers of frequencies:  luni-solar, planetary, total
      INTEGER NFLS, NFPL, NF
      PARAMETER ( NFLS = 653, NFPL = 656, NF = NFLS+NFPL )

*  Number of amplitude coefficients
      INTEGER NA
      PARAMETER ( NA = 4755 )

*  Polynomial coefficients
      DOUBLE PRECISION XYP(0:MAXPT,0:1)

*  Fundamental-argument multipliers:  luni-solar and planetary terms
      INTEGER MFALS(5,NFLS), MFAPL(14,NFPL)

*  Pointers into amplitudes array, one pointer per frequency
      INTEGER NC(NF)

*  Amplitude coefficients (microarcsec);  indexed using the NC array
      DOUBLE PRECISION A(NA)

*  Amplitude usage
      INTEGER JAXY(0:MAXPT*4-1), JASC(0:MAXPT*4-1), JAPT(0:MAXPT*4-1)

*  Miscellaneous
      DOUBLE PRECISION T, W, PT(0:MAXPT), FA(14), XYPR(0:1), XYPL(0:1),
     :                 XYLS(0:1), ARG, SC(0:1)
      INTEGER JPT, I, J, JXY, IALAST, IFREQ, M, IA, JSC

*  Functions
!      DOUBLE PRECISION iau_FAL03, iau_FALP03, iau_FAF03, iau_FAD03,
!     :                 iau_FAOM03, iau_FAME03, iau_FAVE03, iau_FAE03,
!     :                 iau_FAMA03, iau_FAJU03, iau_FASA03, iau_FAUR03,
!     :                 iau_FANE03, iau_FAPA03

*  Polynomial coefficients (arcsec).
      DATA ((XYP(I,JXY),I=0,MAXPT),JXY=0,1) /
     :
     :             -0.016617     D0,
     :          +2004.191898     D0,
     :             -0.4297829    D0,
     :             -0.19861834   D0,
     :             +0.000007578  D0,
     :             +0.0000059285 D0,
     :
     :             -0.006951     D0,
     :             -0.025896     D0,
     :            -22.4072747    D0,
     :             +0.00190059   D0,
     :             +0.001112526  D0,
     :             +0.0000001358 D0 /

*  Fundamental-argument multipliers:  luni-solar terms.
      DATA ((MFALS(I,J),I=1,5),J=1,10) /
     :   0,  0,  0,  0,  1,
     :   0,  0,  2, -2,  2,
     :   0,  0,  2,  0,  2,
     :   0,  0,  0,  0,  2,
     :   0,  1,  0,  0,  0,
     :   0,  1,  2, -2,  2,
     :   1,  0,  0,  0,  0,
     :   0,  0,  2,  0,  1,
     :   1,  0,  2,  0,  2,
     :   0,  1, -2,  2, -2 /
      DATA ((MFALS(I,J),I=1,5),J=11,20) /
     :   0,  0,  2, -2,  1,
     :   1,  0, -2,  0, -2,
     :   1,  0,  0, -2,  0,
     :   1,  0,  0,  0,  1,
     :   1,  0,  0,  0, -1,
     :   1,  0, -2, -2, -2,
     :   1,  0,  2,  0,  1,
     :   2,  0, -2,  0, -1,
     :   0,  0,  0,  2,  0,
     :   0,  0,  2,  2,  2 /
      DATA ((MFALS(I,J),I=1,5),J=21,30) /
     :   2,  0,  0, -2,  0,
     :   0,  2, -2,  2, -2,
     :   2,  0,  2,  0,  2,
     :   1,  0,  2, -2,  2,
     :   1,  0, -2,  0, -1,
     :   2,  0,  0,  0,  0,
     :   0,  0,  2,  0,  0,
     :   0,  1,  0,  0,  1,
     :   1,  0,  0, -2, -1,
     :   0,  2,  2, -2,  2 /
      DATA ((MFALS(I,J),I=1,5),J=31,40) /
     :   0,  0,  2, -2,  0,
     :   1,  0,  0, -2,  1,
     :   0,  1,  0,  0, -1,
     :   0,  2,  0,  0,  0,
     :   1,  0, -2, -2, -1,
     :   1,  0,  2,  2,  2,
     :   0,  1,  2,  0,  2,
     :   2,  0, -2,  0,  0,
     :   0,  0,  2,  2,  1,
     :   0,  1, -2,  0, -2 /
      DATA ((MFALS(I,J),I=1,5),J=41,50) /
     :   0,  0,  0,  2,  1,
     :   1,  0,  2, -2,  1,
     :   2,  0,  0, -2, -1,
     :   2,  0,  2, -2,  2,
     :   2,  0,  2,  0,  1,
     :   0,  0,  0,  2, -1,
     :   0,  1, -2,  2, -1,
     :   1,  1,  0, -2,  0,
     :   2,  0,  0, -2,  1,
     :   1,  0,  0,  2,  0 /
      DATA ((MFALS(I,J),I=1,5),J=51,60) /
     :   0,  1,  2, -2,  1,
     :   1, -1,  0,  0,  0,
     :   0,  1, -1,  1, -1,
     :   2,  0, -2,  0, -2,
     :   0,  1,  0, -2,  0,
     :   1,  0,  0, -1,  0,
     :   3,  0,  2,  0,  2,
     :   0,  0,  0,  1,  0,
     :   1, -1,  2,  0,  2,
     :   1,  1, -2, -2, -2 /
      DATA ((MFALS(I,J),I=1,5),J=61,70) /
     :   1,  0, -2,  0,  0,
     :   2,  0,  0,  0, -1,
     :   0,  1, -2, -2, -2,
     :   1,  1,  2,  0,  2,
     :   2,  0,  0,  0,  1,
     :   1,  1,  0,  0,  0,
     :   1,  0, -2,  2, -1,
     :   1,  0,  2,  0,  0,
     :   1, -1,  0, -1,  0,
     :   1,  0,  0,  0,  2 /
      DATA ((MFALS(I,J),I=1,5),J=71,80) /
     :   1,  0, -1,  0, -1,
     :   0,  0,  2,  1,  2,
     :   1,  0, -2, -4, -2,
     :   1, -1,  0, -1, -1,
     :   1,  0,  2,  2,  1,
     :   0,  2, -2,  2, -1,
     :   1,  0,  0,  0, -2,
     :   2,  0, -2, -2, -2,
     :   1,  1,  2, -2,  2,
     :   2,  0, -2, -4, -2 /
      DATA ((MFALS(I,J),I=1,5),J=81,90) /
     :   1,  0, -4,  0, -2,
     :   2,  0,  2, -2,  1,
     :   1,  0,  0, -1, -1,
     :   2,  0,  2,  2,  2,
     :   3,  0,  0,  0,  0,
     :   1,  0,  0,  2,  1,
     :   0,  0,  2, -2, -1,
     :   3,  0,  2, -2,  2,
     :   0,  0,  4, -2,  2,
     :   1,  0,  0, -4,  0 /
      DATA ((MFALS(I,J),I=1,5),J=91,100) /
     :   0,  1,  2,  0,  1,
     :   2,  0,  0, -4,  0,
     :   1,  1,  0, -2, -1,
     :   2,  0, -2,  0,  1,
     :   0,  0,  2,  0, -1,
     :   0,  1, -2,  0, -1,
     :   0,  1,  0,  0,  2,
     :   0,  0,  2, -1,  2,
     :   0,  0,  2,  4,  2,
     :   2,  1,  0, -2,  0 /
      DATA ((MFALS(I,J),I=1,5),J=101,110) /
     :   1,  1,  0, -2,  1,
     :   1, -1,  0, -2,  0,
     :   1, -1,  0, -1, -2,
     :   1, -1,  0,  0,  1,
     :   0,  1, -2,  2,  0,
     :   0,  1,  0,  0, -2,
     :   1, -1,  2,  2,  2,
     :   1,  0,  0,  2, -1,
     :   1, -1, -2, -2, -2,
     :   3,  0,  2,  0,  1 /
      DATA ((MFALS(I,J),I=1,5),J=111,120) /
     :   0,  1,  2,  2,  2,
     :   1,  0,  2, -2,  0,
     :   1,  1, -2, -2, -1,
     :   1,  0,  2, -4,  1,
     :   0,  1, -2, -2, -1,
     :   2, -1,  2,  0,  2,
     :   0,  0,  0,  2,  2,
     :   1, -1,  2,  0,  1,
     :   1, -1, -2,  0, -2,
     :   0,  1,  0,  2,  0 /
      DATA ((MFALS(I,J),I=1,5),J=121,130) /
     :   0,  1,  2, -2,  0,
     :   0,  0,  0,  1,  1,
     :   1,  0, -2, -2,  0,
     :   0,  3,  2, -2,  2,
     :   2,  1,  2,  0,  2,
     :   1,  1,  0,  0,  1,
     :   2,  0,  0,  2,  0,
     :   1,  1,  2,  0,  1,
     :   1,  0,  0, -2, -2,
     :   1,  0, -2,  2,  0 /
      DATA ((MFALS(I,J),I=1,5),J=131,140) /
     :   1,  0, -1,  0, -2,
     :   0,  1,  0, -2,  1,
     :   0,  1,  0,  1,  0,
     :   0,  0,  0,  1, -1,
     :   1,  0, -2,  2, -2,
     :   1, -1,  0,  0, -1,
     :   0,  0,  0,  4,  0,
     :   1, -1,  0,  2,  0,
     :   1,  0,  2,  1,  2,
     :   1,  0,  2, -1,  2 /
      DATA ((MFALS(I,J),I=1,5),J=141,150) /
     :   0,  0,  2,  1,  1,
     :   1,  0,  0, -2,  2,
     :   1,  0, -2,  0,  1,
     :   1,  0, -2, -4, -1,
     :   0,  0,  2,  2,  0,
     :   1,  1,  2, -2,  1,
     :   1,  0, -2,  1, -1,
     :   0,  0,  1,  0,  1,
     :   2,  0, -2, -2, -1,
     :   4,  0,  2,  0,  2 /
      DATA ((MFALS(I,J),I=1,5),J=151,160) /
     :   2, -1,  0,  0,  0,
     :   2,  1,  2, -2,  2,
     :   0,  1,  2,  1,  2,
     :   1,  0,  4, -2,  2,
     :   1,  1,  0,  0, -1,
     :   2,  0,  2,  0,  0,
     :   2,  0, -2, -4, -1,
     :   1,  0, -1,  0,  0,
     :   1,  0,  0,  1,  0,
     :   0,  1,  0,  2,  1 /
      DATA ((MFALS(I,J),I=1,5),J=161,170) /
     :   1,  0, -4,  0, -1,
     :   1,  0,  0, -4, -1,
     :   2,  0,  2,  2,  1,
     :   2,  1,  0,  0,  0,
     :   0,  0,  2, -3,  2,
     :   1,  2,  0, -2,  0,
     :   0,  3,  0,  0,  0,
     :   0,  0,  4,  0,  2,
     :   0,  0,  2, -4,  1,
     :   2,  0,  0, -2, -2 /
      DATA ((MFALS(I,J),I=1,5),J=171,180) /
     :   1,  1, -2, -4, -2,
     :   0,  1,  0, -2, -1,
     :   0,  0,  0,  4,  1,
     :   3,  0,  2, -2,  1,
     :   1,  0,  2,  4,  2,
     :   1,  1, -2,  0, -2,
     :   0,  0,  4, -2,  1,
     :   2, -2,  0, -2,  0,
     :   2,  1,  0, -2, -1,
     :   0,  2,  0, -2,  0 /
      DATA ((MFALS(I,J),I=1,5),J=181,190) /
     :   1,  0,  0, -1,  1,
     :   1,  1,  2,  2,  2,
     :   3,  0,  0,  0, -1,
     :   2,  0,  0, -4, -1,
     :   3,  0,  2,  2,  2,
     :   0,  0,  2,  4,  1,
     :   0,  2, -2, -2, -2,
     :   1, -1,  0, -2, -1,
     :   0,  0,  2, -1,  1,
     :   2,  0,  0,  2,  1 /
      DATA ((MFALS(I,J),I=1,5),J=191,200) /
     :   1, -1, -2,  2, -1,
     :   0,  0,  0,  2, -2,
     :   2,  0,  0, -4,  1,
     :   1,  0,  0, -4,  1,
     :   2,  0,  2, -4,  1,
     :   4,  0,  2, -2,  2,
     :   2,  1, -2,  0, -1,
     :   2,  1, -2, -4, -2,
     :   3,  0,  0, -4,  0,
     :   1, -1,  2,  2,  1 /
      DATA ((MFALS(I,J),I=1,5),J=201,210) /
     :   1, -1, -2,  0, -1,
     :   0,  2,  0,  0,  1,
     :   1,  2, -2, -2, -2,
     :   1,  1,  0, -4,  0,
     :   2,  0,  0, -2,  2,
     :   0,  2,  2, -2,  1,
     :   1,  0,  2,  0, -1,
     :   2,  1,  0, -2,  1,
     :   2, -1, -2,  0, -1,
     :   1, -1, -2, -2, -1 /
      DATA ((MFALS(I,J),I=1,5),J=211,220) /
     :   0,  1, -2,  1, -2,
     :   1,  0, -4,  2, -2,
     :   0,  1,  2,  2,  1,
     :   3,  0,  0,  0,  1,
     :   2, -1,  2,  2,  2,
     :   0,  1, -2, -4, -2,
     :   1,  0, -2, -3, -2,
     :   2,  0,  0,  0,  2,
     :   1, -1,  0, -2, -2,
     :   2,  0, -2,  2, -1 /
      DATA ((MFALS(I,J),I=1,5),J=221,230) /
     :   0,  2, -2,  0, -2,
     :   3,  0, -2,  0, -1,
     :   2, -1,  2,  0,  1,
     :   1,  0, -2, -1, -2,
     :   0,  0,  2,  0,  3,
     :   2,  0, -4,  0, -2,
     :   2,  1,  0, -4,  0,
     :   1,  1, -2,  1, -1,
     :   0,  2,  2,  0,  2,
     :   1, -1,  2, -2,  2 /
      DATA ((MFALS(I,J),I=1,5),J=231,240) /
     :   1, -1,  0, -2,  1,
     :   2,  1,  2,  0,  1,
     :   1,  0,  2, -4,  2,
     :   1,  1, -2,  0, -1,
     :   1,  1,  0,  2,  0,
     :   1,  0,  0, -3,  0,
     :   2,  0,  2, -1,  2,
     :   0,  2,  0,  0, -1,
     :   2, -1,  0, -2,  0,
     :   4,  0,  0,  0,  0 /
      DATA ((MFALS(I,J),I=1,5),J=241,250) /
     :   2,  1, -2, -2, -2,
     :   0,  2, -2,  2,  0,
     :   1,  0,  2,  1,  1,
     :   1,  0, -1,  0, -3,
     :   3, -1,  2,  0,  2,
     :   2,  0,  2, -2,  0,
     :   1, -2,  0,  0,  0,
     :   2,  0,  0,  0, -2,
     :   1,  0,  0,  4,  0,
     :   0,  1,  0,  1,  1 /
      DATA ((MFALS(I,J),I=1,5),J=251,260) /
     :   1,  0,  2,  2,  0,
     :   0,  1,  0,  2, -1,
     :   0,  1,  0,  1, -1,
     :   0,  0,  2, -2,  3,
     :   3,  1,  2,  0,  2,
     :   1,  1,  2,  1,  2,
     :   1,  1, -2,  2, -1,
     :   2, -1,  2, -2,  2,
     :   1, -2,  2,  0,  2,
     :   1,  0,  2, -4,  0 /
      DATA ((MFALS(I,J),I=1,5),J=261,270) /
     :   0,  0,  1,  0,  0,
     :   1,  0,  2, -3,  1,
     :   1, -2,  0, -2,  0,
     :   2,  0,  0,  2, -1,
     :   1,  1,  2, -4,  1,
     :   4,  0,  2,  0,  1,
     :   0,  1,  2,  1,  1,
     :   1,  2,  2, -2,  2,
     :   2,  0,  2,  1,  2,
     :   2,  1,  2, -2,  1 /
      DATA ((MFALS(I,J),I=1,5),J=271,280) /
     :   1,  0,  2, -1,  1,
     :   1,  0,  4, -2,  1,
     :   1, -1,  2, -2,  1,
     :   0,  1,  0, -4,  0,
     :   3,  0, -2, -2, -2,
     :   0,  0,  4, -4,  2,
     :   2,  0, -4, -2, -2,
     :   2, -2,  0, -2, -1,
     :   1,  0,  2, -2, -1,
     :   2,  0, -2, -6, -2 /
      DATA ((MFALS(I,J),I=1,5),J=281,290) /
     :   1,  0, -2,  1, -2,
     :   1,  0, -2,  2,  1,
     :   1, -1,  0,  2, -1,
     :   1,  0, -2,  1,  0,
     :   2, -1,  0, -2,  1,
     :   1, -1,  0,  2,  1,
     :   2,  0, -2, -2,  0,
     :   1,  0,  2, -3,  2,
     :   0,  0,  0,  4, -1,
     :   2, -1,  0,  0,  1 /
      DATA ((MFALS(I,J),I=1,5),J=291,300) /
     :   2,  0,  4, -2,  2,
     :   0,  0,  2,  3,  2,
     :   0,  1,  4, -2,  2,
     :   0,  1, -2,  2,  1,
     :   1,  1,  0,  2,  1,
     :   1,  0,  0,  4,  1,
     :   0,  0,  4,  0,  1,
     :   2,  0,  0, -3,  0,
     :   1,  0,  0, -1, -2,
     :   1, -2, -2, -2, -2 /
      DATA ((MFALS(I,J),I=1,5),J=301,310) /
     :   3,  0,  0,  2,  0,
     :   2,  0,  2, -4,  2,
     :   1,  1, -2, -4, -1,
     :   1,  0, -2, -6, -2,
     :   2, -1,  0,  0, -1,
     :   2, -1,  0,  2,  0,
     :   0,  1,  2, -2, -1,
     :   1,  1,  0,  1,  0,
     :   1,  2,  0, -2, -1,
     :   1,  0,  0,  1, -1 /
      DATA ((MFALS(I,J),I=1,5),J=311,320) /
     :   0,  0,  1,  0,  2,
     :   3,  1,  2, -2,  2,
     :   1,  0, -4, -2, -2,
     :   1,  0,  2,  4,  1,
     :   1, -2,  2,  2,  2,
     :   1, -1, -2, -4, -2,
     :   0,  0,  2, -4,  2,
     :   0,  0,  2, -3,  1,
     :   2,  1, -2,  0,  0,
     :   3,  0, -2, -2, -1 /
      DATA ((MFALS(I,J),I=1,5),J=321,330) /
     :   2,  0,  2,  4,  2,
     :   0,  0,  0,  0,  3,
     :   2, -1, -2, -2, -2,
     :   2,  0,  0, -1,  0,
     :   3,  0,  2, -4,  2,
     :   2,  1,  2,  2,  2,
     :   0,  0,  3,  0,  3,
     :   1,  1,  2,  2,  1,
     :   2,  1,  0,  0, -1,
     :   1,  2,  0, -2,  1 /
      DATA ((MFALS(I,J),I=1,5),J=331,340) /
     :   3,  0,  2,  2,  1,
     :   1, -1, -2,  2, -2,
     :   1,  1,  0, -1,  0,
     :   1,  2,  0,  0,  0,
     :   1,  0,  4,  0,  2,
     :   1, -1,  2,  4,  2,
     :   2,  1,  0,  0,  1,
     :   1,  0,  0,  2,  2,
     :   1, -1, -2,  2,  0,
     :   0,  2, -2, -2, -1 /
      DATA ((MFALS(I,J),I=1,5),J=341,350) /
     :   2,  0, -2,  0,  2,
     :   5,  0,  2,  0,  2,
     :   3,  0, -2, -6, -2,
     :   1, -1,  2, -1,  2,
     :   3,  0,  0, -4, -1,
     :   1,  0,  0,  1,  1,
     :   1,  0, -4,  2, -1,
     :   0,  1,  2, -4,  1,
     :   1,  2,  2,  0,  2,
     :   0,  1,  0, -2, -2 /
      DATA ((MFALS(I,J),I=1,5),J=351,360) /
     :   0,  0,  2, -1,  0,
     :   1,  0,  1,  0,  1,
     :   0,  2,  0, -2,  1,
     :   3,  0,  2,  0,  0,
     :   1,  1, -2,  1,  0,
     :   2,  1, -2, -4, -1,
     :   3, -1,  0,  0,  0,
     :   2, -1, -2,  0,  0,
     :   4,  0,  2, -2,  1,
     :   2,  0, -2,  2,  0 /
      DATA ((MFALS(I,J),I=1,5),J=361,370) /
     :   1,  1,  2, -2,  0,
     :   1,  0, -2,  4, -1,
     :   1,  0, -2, -2,  1,
     :   2,  0,  2, -4,  0,
     :   1,  1,  0, -2, -2,
     :   1,  1, -2, -2,  0,
     :   1,  0,  1, -2,  1,
     :   2, -1, -2, -4, -2,
     :   3,  0, -2,  0, -2,
     :   0,  1, -2, -2,  0 /
      DATA ((MFALS(I,J),I=1,5),J=371,380) /
     :   3,  0,  0, -2, -1,
     :   1,  0, -2, -3, -1,
     :   0,  1,  0, -4, -1,
     :   1, -2,  2, -2,  1,
     :   0,  1, -2,  1, -1,
     :   1, -1,  0,  0,  2,
     :   2,  0,  0,  1,  0,
     :   1, -2,  0,  2,  0,
     :   1,  2, -2, -2, -1,
     :   0,  0,  4, -4,  1 /
      DATA ((MFALS(I,J),I=1,5),J=381,390) /
     :   0,  1,  2,  4,  2,
     :   0,  1, -4,  2, -2,
     :   3,  0, -2,  0,  0,
     :   2, -1,  2,  2,  1,
     :   0,  1, -2, -4, -1,
     :   4,  0,  2,  2,  2,
     :   2,  0, -2, -3, -2,
     :   2,  0,  0, -6,  0,
     :   1,  0,  2,  0,  3,
     :   3,  1,  0,  0,  0 /
      DATA ((MFALS(I,J),I=1,5),J=391,400) /
     :   3,  0,  0, -4,  1,
     :   1, -1,  2,  0,  0,
     :   1, -1,  0, -4,  0,
     :   2,  0, -2,  2, -2,
     :   1,  1,  0, -2,  2,
     :   4,  0,  0, -2,  0,
     :   2,  2,  0, -2,  0,
     :   0,  1,  2,  0,  0,
     :   1,  1,  0, -4,  1,
     :   1,  0,  0, -4, -2 /
      DATA ((MFALS(I,J),I=1,5),J=401,410) /
     :   0,  0,  0,  1,  2,
     :   3,  0,  0,  2,  1,
     :   1,  1,  0, -4, -1,
     :   0,  0,  2,  2, -1,
     :   1,  1,  2,  0,  0,
     :   1, -1,  2, -4,  1,
     :   1,  1,  0,  0,  2,
     :   0,  0,  2,  6,  2,
     :   4,  0, -2, -2, -1,
     :   2,  1,  0, -4, -1 /
      DATA ((MFALS(I,J),I=1,5),J=411,420) /
     :   0,  0,  0,  3,  1,
     :   1, -1, -2,  0,  0,
     :   0,  0,  2,  1,  0,
     :   1,  0,  0,  2, -2,
     :   3, -1,  2,  2,  2,
     :   3, -1,  2, -2,  2,
     :   1,  0,  0, -1,  2,
     :   1, -2,  2, -2,  2,
     :   0,  1,  0,  2,  2,
     :   0,  1, -2, -1, -2 /
      DATA ((MFALS(I,J),I=1,5),J=421,430) /
     :   1,  1, -2,  0,  0,
     :   0,  2,  2, -2,  0,
     :   3, -1, -2, -1, -2,
     :   1,  0,  0, -6,  0,
     :   1,  0, -2, -4,  0,
     :   2,  1,  0, -4,  1,
     :   2,  0,  2,  0, -1,
     :   2,  0, -4,  0, -1,
     :   0,  0,  3,  0,  2,
     :   2,  1, -2, -2, -1 /
      DATA ((MFALS(I,J),I=1,5),J=431,440) /
     :   1, -2,  0,  0,  1,
     :   2, -1,  0, -4,  0,
     :   0,  0,  0,  3,  0,
     :   5,  0,  2, -2,  2,
     :   1,  2, -2, -4, -2,
     :   1,  0,  4, -4,  2,
     :   0,  0,  4, -1,  2,
     :   3,  1,  0, -4,  0,
     :   3,  0,  0, -6,  0,
     :   2,  0,  0,  2,  2 /
      DATA ((MFALS(I,J),I=1,5),J=441,450) /
     :   2, -2,  2,  0,  2,
     :   1,  0,  0, -3,  1,
     :   1, -2, -2,  0, -2,
     :   1, -1, -2, -3, -2,
     :   0,  0,  2, -2, -2,
     :   2,  0, -2, -4,  0,
     :   1,  0, -4,  0,  0,
     :   0,  1,  0, -1,  0,
     :   4,  0,  0,  0, -1,
     :   3,  0,  2, -1,  2 /
      DATA ((MFALS(I,J),I=1,5),J=451,460) /
     :   3, -1,  2,  0,  1,
     :   2,  0,  2, -1,  1,
     :   1,  2,  2, -2,  1,
     :   1,  1,  0,  2, -1,
     :   0,  2,  2,  0,  1,
     :   3,  1,  2,  0,  1,
     :   1,  1,  2,  1,  1,
     :   1,  1,  0, -1,  1,
     :   1, -2,  0, -2, -1,
     :   4,  0,  0, -4,  0 /
      DATA ((MFALS(I,J),I=1,5),J=461,470) /
     :   2,  1,  0,  2,  0,
     :   1, -1,  0,  4,  0,
     :   0,  1,  0, -2,  2,
     :   0,  0,  2,  0, -2,
     :   1,  0, -1,  0,  1,
     :   3,  0,  2, -2,  0,
     :   2,  0,  2,  2,  0,
     :   1,  2,  0, -4,  0,
     :   1, -1,  0, -3,  0,
     :   0,  1,  0,  4,  0 /
      DATA ((MFALS(I,J),I=1,5),J=471,480) /
     :   0,  1, -2,  0,  0,
     :   2,  2,  2, -2,  2,
     :   0,  0,  0,  1, -2,
     :   0,  2, -2,  0, -1,
     :   4,  0,  2, -4,  2,
     :   2,  0, -4,  2, -2,
     :   2, -1, -2,  0, -2,
     :   1,  1,  4, -2,  2,
     :   1,  1,  2, -4,  2,
     :   1,  0,  2,  3,  2 /
      DATA ((MFALS(I,J),I=1,5),J=481,490) /
     :   1,  0,  0,  4, -1,
     :   0,  0,  0,  4,  2,
     :   2,  0,  0,  4,  0,
     :   1,  1, -2,  2,  0,
     :   2,  1,  2,  1,  2,
     :   2,  1,  2, -4,  1,
     :   2,  0,  2,  1,  1,
     :   2,  0, -4, -2, -1,
     :   2,  0, -2, -6, -1,
     :   2, -1,  2, -1,  2 /
      DATA ((MFALS(I,J),I=1,5),J=491,500) /
     :   1, -2,  2,  0,  1,
     :   1, -2,  0, -2,  1,
     :   1, -1,  0, -4, -1,
     :   0,  2,  2,  2,  2,
     :   0,  2, -2, -4, -2,
     :   0,  1,  2,  3,  2,
     :   0,  1,  0, -4,  1,
     :   3,  0,  0, -2,  1,
     :   2,  1, -2,  0,  1,
     :   2,  0,  4, -2,  1 /
      DATA ((MFALS(I,J),I=1,5),J=501,510) /
     :   2,  0,  0, -3, -1,
     :   2, -2,  0, -2,  1,
     :   2, -1,  2, -2,  1,
     :   1,  0,  0, -6, -1,
     :   1, -2,  0,  0, -1,
     :   1, -2, -2, -2, -1,
     :   0,  1,  4, -2,  1,
     :   0,  0,  2,  3,  1,
     :   2, -1,  0, -1,  0,
     :   1,  3,  0, -2,  0 /
      DATA ((MFALS(I,J),I=1,5),J=511,520) /
     :   0,  3,  0, -2,  0,
     :   2, -2,  2, -2,  2,
     :   0,  0,  4, -2,  0,
     :   4, -1,  2,  0,  2,
     :   2,  2, -2, -4, -2,
     :   4,  1,  2,  0,  2,
     :   4, -1, -2, -2, -2,
     :   2,  1,  0, -2, -2,
     :   2,  1, -2, -6, -2,
     :   2,  0,  0, -1,  1 /
      DATA ((MFALS(I,J),I=1,5),J=521,530) /
     :   2, -1, -2,  2, -1,
     :   1,  1, -2,  2, -2,
     :   1,  1, -2, -3, -2,
     :   1,  0,  3,  0,  3,
     :   1,  0, -2,  1,  1,
     :   1,  0, -2,  0,  2,
     :   1, -1,  2,  1,  2,
     :   1, -1,  0,  0, -2,
     :   1, -1, -4,  2, -2,
     :   0,  3, -2, -2, -2 /
      DATA ((MFALS(I,J),I=1,5),J=531,540) /
     :   0,  1,  0,  4,  1,
     :   0,  0,  4,  2,  2,
     :   3,  0, -2, -2,  0,
     :   2, -2,  0,  0,  0,
     :   1,  1,  2, -4,  0,
     :   1,  1,  0, -3,  0,
     :   1,  0,  2, -3,  0,
     :   1, -1,  2, -2,  0,
     :   0,  2,  0,  2,  0,
     :   0,  0,  2,  4,  0 /
      DATA ((MFALS(I,J),I=1,5),J=541,550) /
     :   1,  0,  1,  0,  0,
     :   3,  1,  2, -2,  1,
     :   3,  0,  4, -2,  2,
     :   3,  0,  2,  1,  2,
     :   3,  0,  0,  2, -1,
     :   3,  0,  0,  0,  2,
     :   3,  0, -2,  2, -1,
     :   2,  0,  4, -4,  2,
     :   2,  0,  2, -3,  2,
     :   2,  0,  0,  4,  1 /
      DATA ((MFALS(I,J),I=1,5),J=551,560) /
     :   2,  0,  0, -3,  1,
     :   2,  0, -4,  2, -1,
     :   2,  0, -2, -2,  1,
     :   2, -2,  2,  2,  2,
     :   2, -2,  0, -2, -2,
     :   2, -1,  0,  2,  1,
     :   2, -1,  0,  2, -1,
     :   1,  1,  2,  4,  2,
     :   1,  1,  0,  1,  1,
     :   1,  1,  0,  1, -1 /
      DATA ((MFALS(I,J),I=1,5),J=561,570) /
     :   1,  1, -2, -6, -2,
     :   1,  0,  0, -3, -1,
     :   1,  0, -4, -2, -1,
     :   1,  0, -2, -6, -1,
     :   1, -2,  2,  2,  1,
     :   1, -2, -2,  2, -1,
     :   1, -1, -2, -4, -1,
     :   0,  2,  0,  0,  2,
     :   0,  1,  2, -4,  2,
     :   0,  1, -2,  4, -1 /
      DATA ((MFALS(I,J),I=1,5),J=571,580) /
     :   5,  0,  0,  0,  0,
     :   3,  0,  0, -3,  0,
     :   2,  2,  0, -4,  0,
     :   1, -1,  2,  2,  0,
     :   0,  1,  0,  3,  0,
     :   4,  0, -2,  0, -1,
     :   3,  0, -2, -6, -1,
     :   3,  0, -2, -1, -1,
     :   2,  1,  2,  2,  1,
     :   2,  1,  0,  2,  1 /
      DATA ((MFALS(I,J),I=1,5),J=581,590) /
     :   2,  0,  2,  4,  1,
     :   2,  0,  2, -6,  1,
     :   2,  0,  2, -2, -1,
     :   2,  0,  0, -6, -1,
     :   2, -1, -2, -2, -1,
     :   1,  2,  2,  0,  1,
     :   1,  2,  0,  0,  1,
     :   1,  0,  4,  0,  1,
     :   1,  0,  2, -6,  1,
     :   1,  0,  2, -4, -1 /
      DATA ((MFALS(I,J),I=1,5),J=591,600) /
     :   1,  0, -1, -2, -1,
     :   1, -1,  2,  4,  1,
     :   1, -1,  2, -3,  1,
     :   1, -1,  0,  4,  1,
     :   1, -1, -2,  1, -1,
     :   0,  1,  2, -2,  3,
     :   3,  0,  0, -2,  0,
     :   1,  0,  1, -2,  0,
     :   0,  2,  0, -4,  0,
     :   0,  0,  2, -4,  0 /
      DATA ((MFALS(I,J),I=1,5),J=601,610) /
     :   0,  0,  1, -1,  0,
     :   0,  0,  0,  6,  0,
     :   0,  2,  0,  0, -2,
     :   0,  1, -2,  2, -3,
     :   4,  0,  0,  2,  0,
     :   3,  0,  0, -1,  0,
     :   3, -1,  0,  2,  0,
     :   2,  1,  0,  1,  0,
     :   2,  1,  0, -6,  0,
     :   2, -1,  2,  0,  0 /
      DATA ((MFALS(I,J),I=1,5),J=611,620) /
     :   1,  0,  2, -1,  0,
     :   1, -1,  0,  1,  0,
     :   1, -1, -2, -2,  0,
     :   0,  1,  2,  2,  0,
     :   0,  0,  2, -3,  0,
     :   2,  2,  0, -2, -1,
     :   2, -1, -2,  0,  1,
     :   1,  2,  2, -4,  1,
     :   0,  1,  4, -4,  2,
     :   0,  0,  0,  3,  2 /
      DATA ((MFALS(I,J),I=1,5),J=621,630) /
     :   5,  0,  2,  0,  1,
     :   4,  1,  2, -2,  2,
     :   4,  0, -2, -2,  0,
     :   3,  1,  2,  2,  2,
     :   3,  1,  0, -2,  0,
     :   3,  1, -2, -6, -2,
     :   3,  0,  0,  0, -2,
     :   3,  0, -2, -4, -2,
     :   3, -1,  0, -3,  0,
     :   3, -1,  0, -2,  0 /
      DATA ((MFALS(I,J),I=1,5),J=631,640) /
     :   2,  1,  2,  0,  0,
     :   2,  1,  2, -4,  2,
     :   2,  1,  2, -2,  0,
     :   2,  1,  0, -3,  0,
     :   2,  1, -2,  0, -2,
     :   2,  0,  0, -4,  2,
     :   2,  0,  0, -4, -2,
     :   2,  0, -2, -5, -2,
     :   2, -1,  2,  4,  2,
     :   2, -1,  0, -2,  2 /
      DATA ((MFALS(I,J),I=1,5),J=641,650) /
     :   1,  3, -2, -2, -2,
     :   1,  1,  0,  0, -2,
     :   1,  1,  0, -6,  0,
     :   1,  1, -2,  1, -2,
     :   1,  1, -2, -1, -2,
     :   1,  0,  2,  1,  0,
     :   1,  0,  0,  3,  0,
     :   1,  0,  0, -4,  2,
     :   1,  0, -2,  4, -2,
     :   1, -2,  0, -1,  0 /
      DATA ((MFALS(I,J),I=1,5),J=651,NFLS) /
     :   0,  1, -4,  2, -1,
     :   1,  0, -2,  0, -3,
     :   0,  0,  4, -4,  4 /

*  Fundamental-argument multipliers:  planetary terms.
      DATA ((MFAPL(I,J),I=1,14),J=1,10) /
     :   0,  0,  1, -1,  1,  0,  0, -1,  0, -2,  5,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  0,  0,  2, -5,  0,  0, -1,
     :   0,  0,  0,  0,  0,  0,  3, -5,  0,  0,  0,  0,  0, -2,
     :   0,  0,  1, -1,  1,  0, -8, 12,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  0,  0,  2,  0,  0,  0,  2,
     :   0,  0,  0,  0,  0,  0,  0,  4, -8,  3,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  1, -1,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  8,-16,  4,  5,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  1,  0, -1,  0,  0,  0,  0,
     :   0,  0,  0,  0,  1,  0,  0, -1,  2,  0,  0,  0,  0,  0 /
      DATA ((MFAPL(I,J),I=1,14),J=11,20) /
     :   0,  0,  0,  0,  0,  0,  8,-13,  0,  0,  0,  0,  0, -1,
     :   0,  0,  1, -1,  1,  0,  0, -1,  0,  2, -5,  0,  0,  0,
     :   0,  0,  2, -2,  1,  0, -5,  6,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  4, -6,  0,  0,  0,  0,  0, -2,
     :   0,  0,  0,  0,  0,  0,  0,  3,  0, -1,  0,  0,  0,  2,
     :   0,  0,  0,  0,  0,  0,  0,  2, -8,  3,  0,  0,  0, -2,
     :   0,  0,  0,  0,  0,  0,  2, -4,  0,  0,  0,  0,  0, -2,
     :   0,  0,  0,  0,  0,  0,  0,  6, -8,  3,  0,  0,  0,  2,
     :   0,  0,  0,  0,  0,  0,  0,  1, -2,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  2, -3,  0,  0,  0,  0,  0,  0 /
      DATA ((MFAPL(I,J),I=1,14),J=21,30) /
     :   0,  0,  0,  0,  0,  0,  2, -2,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  2,  0,  0,  0,  0,  0,  0,  2,
     :   0,  0,  0,  0,  1,  0,  0, -4,  8, -3,  0,  0,  0,  0,
     :   0,  0,  0,  0,  1,  0,  0,  4, -8,  3,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  0,  0,  2, -5,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  1,  1,  0,  0,  0,  0,  0,  2,
     :   0,  0,  1, -1,  1,  0,  0,  0, -2,  0,  0,  0,  0,  0,
     :   2,  0,  0, -2, -1,  0,  0, -2,  0,  2,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  0,  0,  2,  0,  0,  0,  1,
     :   2,  0,  0, -2,  0,  0,  0, -2,  0,  2,  0,  0,  0,  0 /
      DATA ((MFAPL(I,J),I=1,14),J=31,40) /
     :   0,  0,  0,  0,  0,  0,  0,  2,  0, -2,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  8,-13,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  1,  0,  1,  0,  0,  0,  2,
     :   0,  0,  0,  0,  0,  0,  5, -8,  0,  0,  0,  0,  0, -2,
     :   0,  0,  0,  0,  0,  0,  0,  2, -2,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  0,  0,  2, -5,  0,  0,  1,
     :   2,  0,  0, -2,  0,  0,  0, -2,  0,  3,  0,  0,  0,  0,
     :   0,  0,  1, -1,  1,  0,  0, -1,  0, -1,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  3, -4,  0,  0,  0,  0,  0,  0,
     :   0,  0,  1, -1,  1,  0,  0, -1,  0,  0, -1,  0,  0,  0 /
      DATA ((MFAPL(I,J),I=1,14),J=41,50) /
     :   0,  0,  0,  0,  0,  0,  0,  1,  0, -2,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  5, -7,  0,  0,  0,  0,  0, -2,
     :   0,  0,  1, -1,  0,  0,  0,  0, -2,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  4,  0, -2,  0,  0,  0,  2,
     :   0,  0,  0,  0,  0,  0,  8,-13,  0,  0,  0,  0,  0, -2,
     :   0,  0,  0,  0,  0,  0,  0,  0,  0,  1,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  2, -1,  0,  0,  0,  0,  0,  2,
     :   1,  0,  0,  0,  0,  0,-18, 16,  0,  0,  0,  0,  0,  0,
     :   0,  0,  1, -1,  1,  0,  0, -1,  0,  2,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  2,  0,  1,  0,  0,  0,  2 /
      DATA ((MFAPL(I,J),I=1,14),J=51,60) /
     :   0,  0,  1, -1,  1,  0, -5,  7,  0,  0,  0,  0,  0,  0,
     :   1,  0,  0,  0,  0,  0,-10,  3,  0,  0,  0,  0,  0,  0,
     :   0,  0,  2, -2,  0,  0, -5,  6,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  2,  0, -1,  0,  0,  0,  2,
     :   1,  0,  2,  0,  2,  0,  0,  1,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  4, -2,  0,  0,  0,  0,  2,
     :   0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  2,  0,  0,  1,
     :   1,  0, -2,  0, -2,  0,  0,  4, -8,  3,  0,  0,  0,  0,
     :   0,  0,  1, -1,  1,  0,  0, -1,  0,  0,  2,  0,  0,  0,
     :   0,  0,  2, -2,  1,  0, -3,  3,  0,  0,  0,  0,  0,  0 /
      DATA ((MFAPL(I,J),I=1,14),J=61,70) /
     :   0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  2,  0,  0,  2,
     :   0,  0,  0,  0,  0,  0,  0,  8,-16,  4,  5,  0,  0, -2,
     :   0,  0,  1, -1,  1,  0,  0,  3, -8,  3,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  8,-11,  0,  0,  0,  0,  0, -2,
     :   0,  0,  0,  0,  0,  0,  0,  0,  0,  3,  0,  0,  0,  2,
     :   0,  0,  0,  0,  0,  0,  0,  8,-16,  4,  5,  0,  0,  2,
     :   0,  0,  0,  0,  0,  0,  1, -1,  0,  0,  0,  0,  0, -1,
     :   0,  0,  0,  0,  0,  0,  4, -6,  0,  0,  0,  0,  0, -1,
     :   0,  0,  0,  0,  0,  0,  0,  1,  0, -3,  0,  0,  0, -2,
     :   0,  0,  0,  0,  0,  0,  0,  2, -4,  0,  0,  0,  0,  0 /
      DATA ((MFAPL(I,J),I=1,14),J=71,80) /
     :   0,  0,  0,  0,  0,  0,  6, -8,  0,  0,  0,  0,  0, -2,
     :   0,  0,  0,  0,  0,  0,  3, -2,  0,  0,  0,  0,  0,  2,
     :   0,  0,  0,  0,  0,  0,  8,-15,  0,  0,  0,  0,  0, -2,
     :   0,  0,  0,  0,  0,  0,  2, -5,  0,  0,  0,  0,  0, -2,
     :   0,  0,  0,  0,  0,  0,  1, -3,  0,  0,  0,  0,  0, -2,
     :   0,  0,  0,  0,  0,  0,  0,  3,  0, -2,  0,  0,  0,  2,
     :   0,  0,  1, -1,  1,  0,  0, -5,  8, -3,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  1,  2,  0,  0,  0,  0,  2,
     :   0,  0,  0,  0,  0,  0,  0,  3, -2,  0,  0,  0,  0,  2,
     :   0,  0,  0,  0,  0,  0,  3, -5,  0,  0,  0,  0,  0,  0 /
      DATA ((MFAPL(I,J),I=1,14),J=81,90) /
     :   2,  0,  0, -2,  1,  0,  0, -2,  0,  3,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  5, -8,  0,  0,  0,  0,  0, -1,
     :   2,  0,  0, -2,  0,  0, -3,  3,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  1,  0,  8,-13,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  1,  0,  0,  0,  0, -2,  5,  0,  0,  0,
     :   1,  0,  0, -1,  0,  0, -3,  4,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  2,  0,  0,  0,  0,  0,  2,
     :   1,  0,  0,  0, -1,  0,-18, 16,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  1,  0,  0,  0,  0,  2, -5,  0,  0,  0,
     :   0,  0,  0,  0,  1,  0,  0,  0,  0,  1,  0,  0,  0,  0 /
      DATA ((MFAPL(I,J),I=1,14),J=91,100) /
     :   1,  0,  0, -2,  0,  0, 19,-21,  3,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  1,  0, -8, 13,  0,  0,  0,  0,  0,  0,
     :   0,  0,  1, -1,  1,  0,  0, -1,  0,  0,  1,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  7, -9,  0,  0,  0,  0,  0, -2,
     :   0,  0,  0,  0,  0,  0,  0,  0,  2,  0,  0,  0,  0,  2,
     :   1,  0,  0,  0,  1,  0,-18, 16,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  2, -4,  0,  0,  0,  0,  0, -1,
     :   0,  0,  0,  0,  0,  0,  0,  6,-16,  4,  5,  0,  0, -2,
     :   0,  0,  0,  0,  0,  0,  4, -7,  0,  0,  0,  0,  0, -2,
     :   0,  0,  0,  0,  0,  0,  3, -7,  0,  0,  0,  0,  0, -2 /
      DATA ((MFAPL(I,J),I=1,14),J=101,110) /
     :   0,  0,  0,  0,  0,  0,  2, -2,  0,  0,  0,  0,  0, -1,
     :   0,  0,  0,  0,  0,  0,  0,  0,  0,  1,  0,  0,  0,  1,
     :   2,  0,  0, -2,  1,  0,  0, -2,  0,  2,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  0,  0,  1,  0,  0,  0, -1,
     :   0,  0,  0,  0,  0,  0,  0,  3, -4,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  1, -2,  0,  0,  0,  0,  0,  0,
     :   2,  0,  0, -2, -1,  0,  0, -2,  0,  3,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  3, -3,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  2,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  1,  0,  2,  0,  0,  0,  2 /
      DATA ((MFAPL(I,J),I=1,14),J=111,120) /
     :   0,  0,  0,  0,  1,  0,  0,  1, -2,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  0,  0,  1,  0,  0,  0,  2,
     :   0,  0,  2, -2,  1,  0,  0, -2,  0,  2,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  2,  0, -3,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  3, -5,  0,  0,  0,  0,  0, -1,
     :   0,  0,  0,  0,  0,  0,  3, -3,  0,  0,  0,  0,  0,  2,
     :   0,  0,  0,  0,  0,  0,  4, -4,  0,  0,  0,  0,  0,  0,
     :   0,  0,  1, -1,  0,  0,  0, -1,  0, -1,  0,  0,  0,  0,
     :   2,  0,  0, -2,  0,  0, -6,  8,  0,  0,  0,  0,  0,  0,
     :   0,  0,  1, -1,  1,  0,  0, -2,  2,  0,  0,  0,  0,  0 /
      DATA ((MFAPL(I,J),I=1,14),J=121,130) /
     :   0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  1,  0,  0,  1,
     :   0,  0,  1, -1,  1,  0,  0, -1,  0,  1,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  1, -2,  0,  0,  0,  0, -1,
     :   0,  0,  0,  0,  0,  0,  0,  2, -3,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  2, -4,  0,  0,  0,  0, -2,
     :   0,  0,  0,  0,  0,  0,  0,  1,  0,  0, -1,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  8,-10,  0,  0,  0,  0,  0, -2,
     :   0,  0,  1, -1,  1,  0, -3,  4,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  6, -9,  0,  0,  0,  0,  0, -2,
     :   1,  0,  0, -1,  1,  0,  0, -1,  0,  2,  0,  0,  0,  0 /
      DATA ((MFAPL(I,J),I=1,14),J=131,140) /
     :   0,  0,  0,  0,  0,  0,  5, -7,  0,  0,  0,  0,  0, -1,
     :   0,  0,  0,  0,  0,  0,  5, -5,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  1,  0,  0, -1,
     :   0,  0,  0,  0,  0,  0,  3, -3,  0,  0,  0,  0,  0, -1,
     :   0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  1,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  0,  4,  0,  0,  0,  0,  2,
     :   0,  0,  0,  0,  0,  0,  0,  4,  0, -3,  0,  0,  0,  2,
     :   0,  0,  0,  0,  0,  0,  1, -1,  0,  0,  0,  0,  0,  1,
     :   0,  0,  0,  0,  0,  0,  0,  2,  0,  0,  0,  0,  0,  1,
     :   0,  0,  0,  0,  1,  0,  2, -3,  0,  0,  0,  0,  0,  0 /
      DATA ((MFAPL(I,J),I=1,14),J=141,150) /
     :   1,  0,  0, -1,  0,  0,  0, -1,  0,  1,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  1, -3,  0,  0,  0,  0,  0, -1,
     :   0,  0,  0,  0,  0,  0,  0,  5, -4,  0,  0,  0,  0,  2,
     :   0,  0,  0,  0,  0,  0,  0,  4, -4,  0,  0,  0,  0,  2,
     :   0,  0,  0,  0,  0,  0,  9,-11,  0,  0,  0,  0,  0, -2,
     :   0,  0,  0,  0,  0,  0,  2, -3,  0,  0,  0,  0,  0, -1,
     :   0,  0,  0,  0,  0,  0,  0,  8,-15,  0,  0,  0,  0,  0,
     :   0,  0,  1, -1,  1,  0, -4,  5,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  4, -6,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  4,  0, -1,  0,  0,  0,  2 /
      DATA ((MFAPL(I,J),I=1,14),J=151,160) /
     :   1,  0,  0, -1,  1,  0, -3,  4,  0,  0,  0,  0,  0,  0,
     :   0,  0,  1,  1,  1,  0,  0,  1,  0,  0,  0,  0,  0,  0,
     :   0,  0,  1, -1,  1,  0,  0, -1,  0, -4, 10,  0,  0,  0,
     :   0,  0,  0,  0,  1,  0,  1, -1,  0,  0,  0,  0,  0,  0,
     :   0,  0,  1, -1,  0,  0,  0, -1,  0,  0, -1,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  1,  0, -3,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  3, -1,  0,  0,  0,  0,  0,  2,
     :   0,  0,  0,  0,  0,  0,  0,  1,  0, -4,  0,  0,  0, -2,
     :   0,  0,  0,  0,  0,  0,  0,  0,  0,  2, -5,  0,  0, -2,
     :   0,  0,  2, -2,  1,  0, -4,  4,  0,  0,  0,  0,  0,  0 /
      DATA ((MFAPL(I,J),I=1,14),J=161,170) /
     :   0,  0,  0,  0,  0,  0,  0,  3,  0,  0, -1,  0,  0,  2,
     :   0,  0,  0,  0,  0,  0,  0,  4, -3,  0,  0,  0,  0,  2,
     :   0,  0,  1, -1,  1,  0,  0, -1,  0,  0,  0,  0,  2,  0,
     :   0,  0,  0,  0,  0,  0,  4, -4,  0,  0,  0,  0,  0, -1,
     :   0,  0,  0,  0,  0,  0,  0,  2, -4,  0,  0,  0,  0, -1,
     :   0,  0,  0,  0,  0,  0,  5, -8,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  1, -2,  0,  0,  0,  0,  1,
     :   0,  0,  0,  0,  1,  0,  0,  0,  0,  0,  1,  0,  0,  0,
     :   0,  0,  2, -2,  1,  0,  0, -9, 13,  0,  0,  0,  0,  0,
     :   2,  0,  2,  0,  2,  0,  0,  2,  0, -3,  0,  0,  0,  0 /
      DATA ((MFAPL(I,J),I=1,14),J=171,180) /
     :   0,  0,  0,  0,  0,  0,  3, -6,  0,  0,  0,  0,  0, -2,
     :   0,  0,  1, -1,  2,  0,  0, -1,  0,  0,  2,  0,  0,  0,
     :   1,  0,  0, -1, -1,  0, -3,  4,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  3, -6,  0,  0,  0,  0, -2,
     :   0,  0,  0,  0,  0,  0,  6, -6,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  0,  0,  3,  0,  0,  0,  1,
     :   1,  0,  2,  0,  1,  0,  0, -2,  0,  3,  0,  0,  0,  0,
     :   1,  0, -2,  0, -1,  0,  0, -1,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  1,  0,  0, -2,  4,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  3, -5,  0,  0,  0,  0,  0 /
      DATA ((MFAPL(I,J),I=1,14),J=181,190) /
     :   0,  0,  0,  0,  0,  0,  2,  1,  0,  0,  0,  0,  0,  2,
     :   0,  0,  0,  0,  0,  0,  1,  1,  0,  0,  0,  0,  0,  1,
     :   0,  0,  2,  0,  2,  0,  0,  1,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  1, -8,  3,  0,  0,  0, -2,
     :   0,  0,  0,  0,  0,  0,  6,-10,  0,  0,  0,  0,  0, -2,
     :   0,  0,  0,  0,  0,  0,  0,  7, -8,  3,  0,  0,  0,  2,
     :   0,  0,  0,  0,  1,  0, -3,  5,  0,  0,  0,  0,  0,  0,
     :   0,  0,  1, -1,  1,  0, -1,  0,  0,  0,  0,  0,  0,  0,
     :   0,  0,  1, -1,  0,  0, -5,  7,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  2,  0, -2,  0,  0,  0,  1 /
      DATA ((MFAPL(I,J),I=1,14),J=191,200) /
     :   0,  0,  0,  0,  0,  0,  0,  2,  0, -1,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  7,-10,  0,  0,  0,  0,  0, -2,
     :   1,  0,  0, -2,  0,  0,  0, -2,  0,  2,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  0,  0,  2,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  1,  0,  2, -5,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  6, -8,  0,  0,  0,  0,  0, -1,
     :   0,  0,  1, -1,  1,  0,  0, -9, 15,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  1,  0, -2,  3,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  1,  0, -1,  1,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  3, -6,  0,  0,  0,  0,  0 /
      DATA ((MFAPL(I,J),I=1,14),J=201,210) /
     :   0,  0,  0,  0,  0,  0,  0,  1, -4,  0,  0,  0,  0, -2,
     :   0,  0,  0,  0,  0,  0,  0,  0,  3,  0,  0,  0,  0,  2,
     :   0,  0,  0,  0,  0,  0,  0,  2,  0,  0, -1,  0,  0,  2,
     :   2,  0,  0, -2,  1,  0, -6,  8,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  5, -5,  0,  0,  0,  0,  0, -1,
     :   0,  0,  1, -1,  1,  0,  3, -6,  0,  0,  0,  0,  0,  0,
     :   0,  0,  1, -1,  1,  0, -2,  2,  0,  0,  0,  0,  0,  0,
     :   0,  0,  1, -1,  1,  0,  8,-14,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  1,  0,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  1,  0,  0,  0,  0,  0,  0 /
      DATA ((MFAPL(I,J),I=1,14),J=211,220) /
     :   0,  0,  0,  0,  1,  0,  0,  8,-15,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  4, -6,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  7, -7,  0,  0,  0,  0,  0,  0,
     :   2,  0,  0, -2,  1,  0, -3,  3,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  3, -1,  0,  0,  0,  0,  2,
     :   0,  0,  0,  0,  0,  0,  0,  2,  0,  0,  1,  0,  0,  2,
     :   2,  0, -1, -1,  0,  0,  0,  3, -7,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  4, -7,  0,  0,  0,  0, -2,
     :   0,  0,  0,  0,  0,  0,  0,  3, -3,  0,  0,  0,  0,  0,
     :   0,  0,  1, -1,  1,  0,  0, -3,  4,  0,  0,  0,  0,  0 /
      DATA ((MFAPL(I,J),I=1,14),J=221,230) /
     :   2,  0,  0, -2,  0,  0,  0, -6,  8,  0,  0,  0,  0,  0,
     :   2,  0,  0, -2,  0,  0,  0, -5,  6,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  1,  0,  0,  0,  0, -1,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  2,  0,  0,  0,  0,  0,  0,  1,
     :   0,  0,  0,  0,  0,  0,  2,  1,  0,  0,  0,  0,  0,  1,
     :   0,  0,  0,  0,  0,  0,  1,  2,  0,  0,  0,  0,  0,  2,
     :   0,  0,  0,  0,  1,  0,  0,  1,  0, -1,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  1, -1,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  3, -9,  4,  0,  0,  0,  0, -2,
     :   0,  0,  0,  0,  0,  0,  0,  3, -5,  0,  0,  0,  0, -2 /
      DATA ((MFAPL(I,J),I=1,14),J=231,240) /
     :   0,  0,  0,  0,  0,  0,  0,  2,  0, -4,  0,  0,  0, -2,
     :   0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  2,  1,
     :   0,  0,  0,  0,  0,  0,  7,-11,  0,  0,  0,  0,  0, -2,
     :   0,  0,  0,  0,  0,  0,  3, -5,  4,  0,  0,  0,  0,  2,
     :   0,  0,  1, -1,  0,  0,  0, -1,  0, -1,  1,  0,  0,  0,
     :   2,  0,  0,  0,  0,  0,  0, -2,  0,  3,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  8,-15,  0,  0,  0,  0, -2,
     :   0,  0,  1, -1,  2,  0,  0, -2,  2,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  3,  0,  0,  2,
     :   0,  0,  0,  0,  0,  0,  6, -6,  0,  0,  0,  0,  0, -1 /
      DATA ((MFAPL(I,J),I=1,14),J=241,250) /
     :   0,  0,  1, -1,  1,  0,  0, -1,  0, -1,  1,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  2, -2,  0,  0,  0,  0,  0,  1,
     :   0,  0,  0,  0,  0,  0,  0,  4, -7,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  3, -8,  3,  0,  0,  0,  0,
     :   0,  0,  1, -1,  1,  0,  2, -4,  0, -3,  0,  0,  0,  0,
     :   0,  0,  0,  0,  1,  0,  3, -5,  0,  2,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  3,  0, -3,  0,  0,  0,  2,
     :   0,  0,  2, -2,  2,  0, -8, 11,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  5, -8,  3,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  1,  0,  0, -2,  0,  0,  0 /
      DATA ((MFAPL(I,J),I=1,14),J=251,260) /
     :   0,  0,  0,  0,  0,  0,  0,  1,  0,  0,  1,  0,  0,  2,
     :   0,  0,  0,  0,  0,  0,  0,  5, -9,  0,  0,  0,  0, -2,
     :   0,  0,  0,  0,  0,  0,  0,  5, -5,  0,  0,  0,  0,  2,
     :   0,  0,  0,  0,  0,  0,  7, -9,  0,  0,  0,  0,  0, -1,
     :   0,  0,  0,  0,  0,  0,  4, -7,  0,  0,  0,  0,  0, -1,
     :   0,  0,  0,  0,  0,  0,  2, -1,  0,  0,  0,  0,  0,  0,
     :   1,  0, -2, -2, -2,  0,  0, -2,  0,  2,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  1,  1,  0,  0,  0,  0,  2,
     :   0,  0,  0,  0,  0,  0,  0,  2,  0, -2,  5,  0,  0,  2,
     :   0,  0,  0,  0,  0,  0,  3, -3,  0,  0,  0,  0,  0,  1 /
      DATA ((MFAPL(I,J),I=1,14),J=261,270) /
     :   0,  0,  0,  0,  0,  0,  0,  6,  0,  0,  0,  0,  0,  2,
     :   0,  0,  0,  0,  0,  0,  0,  2,  0,  2, -5,  0,  0,  2,
     :   2,  0,  0, -2, -1,  0,  0, -2,  0,  0,  5,  0,  0,  0,
     :   2,  0,  0, -2, -1,  0, -6,  8,  0,  0,  0,  0,  0,  0,
     :   1,  0,  0, -2,  0,  0, -3,  3,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  8, -8,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  3,  0,  2, -5,  0,  0,  2,
     :   0,  0,  0,  0,  1,  0,  3, -7,  4,  0,  0,  0,  0,  0,
     :   0,  0,  2, -2,  1,  0, -2,  2,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  1,  0,  0, -1,  0,  1,  0,  0,  0,  0 /
      DATA ((MFAPL(I,J),I=1,14),J=271,280) /
     :   0,  0,  1, -1,  0,  0,  0, -1,  0, -2,  5,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  3,  0, -3,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  3, -1,  0,  0,  0,  0,  0,  1,
     :   0,  0,  0,  0,  0,  0,  2, -3,  0,  0,  0,  0,  0, -2,
     :   0,  0,  0,  0,  0,  0,  0, 11,  0,  0,  0,  0,  0,  2,
     :   0,  0,  0,  0,  0,  0,  0,  6,-15,  0,  0,  0,  0, -2,
     :   0,  0,  0,  0,  0,  0,  0,  3,  0,  1,  0,  0,  0,  2,
     :   1,  0,  0, -1,  0,  0,  0, -3,  4,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  1,  0, -3,  7, -4,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  5,  0, -2,  0,  0,  0,  2 /
      DATA ((MFAPL(I,J),I=1,14),J=281,290) /
     :   0,  0,  0,  0,  0,  0,  3, -5,  0,  0,  0,  0,  0,  1,
     :   0,  0,  2, -2,  2,  0, -5,  6,  0,  0,  0,  0,  0,  0,
     :   0,  0,  2, -2,  2,  0, -3,  3,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  3,  0,  0,  0,  0,  0,  0,  2,
     :   0,  0,  0,  0,  0,  0,  0,  6,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  4, -4,  0,  0,  0,  0,  0,  2,
     :   0,  0,  0,  0,  0,  0,  0,  4, -8,  0,  0,  0,  0, -2,
     :   0,  0,  0,  0,  0,  0,  0,  4, -5,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  5, -7,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  6,-11,  0,  0,  0,  0, -2 /
      DATA ((MFAPL(I,J),I=1,14),J=291,300) /
     :   0,  0,  0,  0,  0,  0,  0,  1, -3,  0,  0,  0,  0, -2,
     :   0,  0,  1, -1,  1,  0,  0, -1,  0,  3,  0,  0,  0,  0,
     :   0,  0,  1, -1,  0,  0,  0, -1,  0,  2,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  1, -2,  0,  0,  0,  0,  0,  1,
     :   0,  0,  0,  0,  0,  0,  9,-12,  0,  0,  0,  0,  0, -2,
     :   0,  0,  0,  0,  0,  0,  4, -4,  0,  0,  0,  0,  0,  1,
     :   0,  0,  1, -1,  0,  0, -8, 12,  0,  0,  0,  0,  0,  0,
     :   0,  0,  1, -1,  1,  0, -2,  3,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  7, -7,  0,  0,  0,  0,  0, -1,
     :   0,  0,  0,  0,  0,  0,  0,  3, -6,  0,  0,  0,  0, -1 /
      DATA ((MFAPL(I,J),I=1,14),J=301,310) /
     :   0,  0,  0,  0,  0,  0,  0,  6, -6,  0,  0,  0,  0,  2,
     :   0,  0,  0,  0,  0,  1,  0, -4,  0,  0,  0,  0,  0, -2,
     :   0,  0,  1, -1,  1,  0,  0,  1,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  6, -9,  0,  0,  0,  0,  0, -1,
     :   0,  0,  1, -1, -1,  0,  0,  0, -2,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  1, -5,  0,  0,  0,  0, -2,
     :   2,  0,  0, -2,  0,  0,  0, -2,  0,  3, -1,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  2,  0,  0, -2,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  5, -9,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  5, -6,  0,  0,  0,  0,  0,  2 /
      DATA ((MFAPL(I,J),I=1,14),J=311,320) /
     :   0,  0,  0,  0,  0,  0,  9, -9,  0,  0,  0,  0,  0, -1,
     :   0,  0,  1, -1,  1,  0,  0, -1,  0,  0,  3,  0,  0,  0,
     :   0,  0,  0,  0,  1,  0,  0,  2, -4,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  5, -3,  0,  0,  0,  0,  0,  2,
     :   0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  3,  0,  0,  1,
     :   0,  0,  1, -1,  2,  0,  0, -1,  0,  2,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  5, -9,  0,  0,  0,  0,  0, -2,
     :   0,  0,  0,  0,  0,  0,  0,  5, -3,  0,  0,  0,  0,  2,
     :   0,  0,  0,  0,  0,  0,  0,  0,  0,  4,  0,  0,  0,  2,
     :   0,  0,  2,  0,  2,  0,  0,  4, -8,  3,  0,  0,  0,  0 /
      DATA ((MFAPL(I,J),I=1,14),J=321,330) /
     :   0,  0,  2,  0,  2,  0,  0, -4,  8, -3,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  5,  0, -3,  0,  0,  0,  2,
     :   0,  0,  0,  0,  0,  0,  0,  1,  0,  1,  0,  0,  0,  0,
     :   2,  0, -1, -1, -1,  0,  0, -1,  0,  3,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  4, -3,  0,  0,  0,  0,  0,  2,
     :   0,  0,  0,  0,  0,  0,  4, -2,  0,  0,  0,  0,  0,  2,
     :   0,  0,  0,  0,  0,  0,  5,-10,  0,  0,  0,  0,  0, -2,
     :   0,  0,  0,  0,  0,  0,  8,-13,  0,  0,  0,  0,  0,  1,
     :   0,  0,  2, -2,  1, -1,  0,  2,  0,  0,  0,  0,  0,  0,
     :   0,  0,  1, -1,  1,  0,  0, -1,  0,  0,  0,  2,  0,  0 /
      DATA ((MFAPL(I,J),I=1,14),J=331,340) /
     :   0,  0,  0,  0,  1,  0,  3, -5,  0,  0,  0,  0,  0,  0,
     :   1,  0,  0, -2,  0,  0,  0, -2,  0,  3,  0,  0,  0,  0,
     :   0,  0,  2, -2,  0,  0, -3,  3,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  9, -9,  0,  0,  0,  0,  0,  0,
     :   0,  0,  2,  0,  2,  0,  1, -1,  0,  0,  0,  0,  0,  0,
     :   0,  0,  2, -2,  1,  0,  0, -8, 11,  0,  0,  0,  0,  0,
     :   0,  0,  2, -2,  1,  0,  0, -2,  0,  0,  2,  0,  0,  0,
     :   0,  0,  1, -1,  1,  0,  0, -1,  0, -1,  2,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  5, -5,  0,  0,  0,  0,  0,  2,
     :   0,  0,  0,  0,  0,  0,  2, -6,  0,  0,  0,  0,  0, -2 /
      DATA ((MFAPL(I,J),I=1,14),J=341,350) /
     :   0,  0,  0,  0,  0,  0,  0,  8,-15,  0,  0,  0,  0, -1,
     :   0,  0,  0,  0,  0,  0,  0,  5, -2,  0,  0,  0,  0,  2,
     :   0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  1,  0,  0,  2,
     :   0,  0,  0,  0,  0,  0,  0,  7,-13,  0,  0,  0,  0, -2,
     :   0,  0,  0,  0,  0,  0,  0,  3,  0, -2,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  1,  0,  3,  0,  0,  0,  2,
     :   0,  0,  2, -2,  1,  0,  0, -2,  0,  3,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  8, -8,  0,  0,  0,  0,  0, -1,
     :   0,  0,  0,  0,  0,  0,  8,-10,  0,  0,  0,  0,  0, -1,
     :   0,  0,  0,  0,  0,  0,  4, -2,  0,  0,  0,  0,  0,  1 /
      DATA ((MFAPL(I,J),I=1,14),J=351,360) /
     :   0,  0,  0,  0,  0,  0,  3, -6,  0,  0,  0,  0,  0, -1,
     :   0,  0,  0,  0,  0,  0,  3, -4,  0,  0,  0,  0,  0, -1,
     :   0,  0,  0,  0,  0,  0,  0,  0,  0,  2, -5,  0,  0,  2,
     :   0,  0,  0,  0,  0,  0,  1,  0,  0,  0,  0,  0,  0,  2,
     :   0,  0,  0,  0,  0,  0,  0,  2,  0, -4,  0,  0,  0,  0,
     :   2,  0,  0, -2, -1,  0,  0, -5,  6,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  2, -5,  0,  0,  0,  0, -2,
     :   2,  0, -1, -1, -1,  0,  0,  3, -7,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  5, -8,  0,  0,  0,  0,  0,
     :   0,  0,  2,  0,  2,  0, -1,  1,  0,  0,  0,  0,  0,  0 /
      DATA ((MFAPL(I,J),I=1,14),J=361,370) /
     :   2,  0,  0, -2,  0,  0,  0, -2,  0,  4, -3,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  6,-11,  0,  0,  0,  0,  0,
     :   2,  0,  0, -2,  1,  0,  0, -6,  8,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  4, -8,  1,  5,  0,  0, -2,
     :   0,  0,  0,  0,  0,  0,  0,  6, -5,  0,  0,  0,  0,  2,
     :   1,  0, -2, -2, -2,  0, -3,  3,  0,  0,  0,  0,  0,  0,
     :   0,  0,  1, -1,  2,  0,  0,  0, -2,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  2,  0,  0,  4, -8,  3,  0,  0,  0,  0,
     :   0,  0,  0,  0,  2,  0,  0, -4,  8, -3,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  6,  0,  0,  0,  0,  0,  1 /
      DATA ((MFAPL(I,J),I=1,14),J=371,380) /
     :   0,  0,  0,  0,  0,  0,  0,  6, -7,  0,  0,  0,  0,  2,
     :   0,  0,  0,  0,  0,  0,  0,  4,  0,  0, -2,  0,  0,  2,
     :   0,  0,  0,  0,  0,  0,  0,  3,  0,  0, -2,  0,  0,  2,
     :   0,  0,  0,  0,  0,  0,  0,  1,  0, -1,  0,  0,  0,  1,
     :   0,  0,  0,  0,  0,  0,  0,  1, -6,  0,  0,  0,  0, -2,
     :   0,  0,  0,  0,  0,  0,  0,  0,  0,  4, -5,  0,  0,  2,
     :   0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  2,  0,  2,
     :   0,  0,  0,  0,  0,  0,  3, -5,  0,  2,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  7,-13,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  2,  0, -2,  0,  0,  0,  2 /
      DATA ((MFAPL(I,J),I=1,14),J=381,390) /
     :   0,  0,  1, -1,  0,  0,  0, -1,  0,  0,  2,  0,  0,  0,
     :   0,  0,  0,  0,  1,  0,  0, -8, 15,  0,  0,  0,  0,  0,
     :   2,  0,  0, -2, -2,  0, -3,  3,  0,  0,  0,  0,  0,  0,
     :   2,  0, -1, -1, -1,  0,  0, -1,  0,  2,  0,  0,  0,  0,
     :   1,  0,  2, -2,  2,  0,  0, -2,  0,  2,  0,  0,  0,  0,
     :   1,  0, -1,  1, -1,  0,-18, 17,  0,  0,  0,  0,  0,  0,
     :   0,  0,  2,  0,  2,  0,  0,  1,  0, -1,  0,  0,  0,  0,
     :   0,  0,  2,  0,  2,  0,  0, -1,  0,  1,  0,  0,  0,  0,
     :   0,  0,  2, -2, -1,  0, -5,  6,  0,  0,  0,  0,  0,  0,
     :   0,  0,  1, -1,  2,  0,  0, -1,  0,  1,  0,  0,  0,  0 /
      DATA ((MFAPL(I,J),I=1,14),J=391,400) /
     :   0,  0,  0,  0,  1,  0,  2, -2,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  8,-16,  0,  0,  0,  0,  0, -2,
     :   0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  5,  0,  0,  2,
     :   0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  2,  2,
     :   0,  0,  0,  0,  2,  0,  0, -1,  2,  0,  0,  0,  0,  0,
     :   2,  0, -1, -1, -2,  0,  0, -1,  0,  2,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  6,-10,  0,  0,  0,  0,  0, -1,
     :   0,  0,  1, -1,  1,  0,  0, -1,  0, -2,  4,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  2,  2,  0,  0,  0,  0,  2,
     :   2,  0,  0, -2, -1,  0,  0, -2,  0,  4, -5,  0,  0,  0 /
      DATA ((MFAPL(I,J),I=1,14),J=401,410) /
     :   2,  0,  0, -2, -1,  0, -3,  3,  0,  0,  0,  0,  0,  0,
     :   2,  0, -1, -1, -1,  0,  0, -1,  0,  0,  0,  0,  0,  0,
     :   1,  0,  1, -1,  1,  0,  0, -1,  0,  0,  0,  0,  0,  0,
     :   1,  0,  0, -1, -1,  0,  0, -2,  2,  0,  0,  0,  0,  0,
     :   1,  0, -1, -1, -1,  0, 20,-20,  0,  0,  0,  0,  0,  0,
     :   0,  0,  2, -2,  1,  0,  0, -1,  0,  1,  0,  0,  0,  0,
     :   0,  0,  1, -1,  1,  0,  1, -2,  0,  0,  0,  0,  0,  0,
     :   0,  0,  1, -1,  1,  0, -2,  1,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  1,  0,  5, -8,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  1,  0,  0,  0,  0,  0, -1,  0,  0,  0 /
      DATA ((MFAPL(I,J),I=1,14),J=411,420) /
     :   0,  0,  0,  0,  0,  0,  9,-11,  0,  0,  0,  0,  0, -1,
     :   0,  0,  0,  0,  0,  0,  5, -3,  0,  0,  0,  0,  0,  1,
     :   0,  0,  0,  0,  0,  0,  0,  1,  0, -3,  0,  0,  0, -1,
     :   0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  2,  0,  1,
     :   0,  0,  0,  0,  0,  0,  6, -7,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  3, -2,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  1, -2,  0,  0,  0,  0,  0, -2,
     :   0,  0,  1, -1,  1,  0,  0, -1,  0,  0, -2,  0,  0,  0,
     :   0,  0,  1, -1,  2,  0,  0, -1,  0, -2,  5,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  5, -7,  0,  0,  0,  0,  0 /
      DATA ((MFAPL(I,J),I=1,14),J=421,430) /
     :   0,  0,  0,  0,  0,  0,  1, -3,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  5, -8,  0,  0,  0,  0, -2,
     :   0,  0,  0,  0,  0,  0,  0,  2, -6,  0,  0,  0,  0, -2,
     :   1,  0,  0, -2,  0,  0, 20,-21,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  8,-12,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  5, -6,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  4, -4,  0,  0,  0,  0,  0,
     :   0,  0,  1, -1,  2,  0,  0, -1,  0, -1,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  8,-12,  0,  0,  0,  0,  0, -2,
     :   0,  0,  0,  0,  0,  0,  0,  9,-17,  0,  0,  0,  0,  0 /
      DATA ((MFAPL(I,J),I=1,14),J=431,440) /
     :   0,  0,  0,  0,  0,  0,  0,  5, -6,  0,  0,  0,  0,  2,
     :   0,  0,  0,  0,  0,  0,  0,  4, -8,  1,  5,  0,  0,  2,
     :   0,  0,  0,  0,  0,  0,  0,  4, -6,  0,  0,  0,  0, -2,
     :   0,  0,  0,  0,  0,  0,  0,  2, -7,  0,  0,  0,  0, -2,
     :   1,  0,  0, -1,  1,  0,  0, -3,  4,  0,  0,  0,  0,  0,
     :   1,  0, -2,  0, -2,  0,-10,  3,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  1,  0,  0, -9, 17,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  1, -4,  0,  0,  0,  0,  0, -2,
     :   1,  0, -2, -2, -2,  0,  0, -2,  0,  3,  0,  0,  0,  0,
     :   1,  0, -1,  1, -1,  0,  0,  1,  0,  0,  0,  0,  0,  0 /
      DATA ((MFAPL(I,J),I=1,14),J=441,450) /
     :   0,  0,  2, -2,  2,  0,  0, -2,  0,  2,  0,  0,  0,  0,
     :   0,  0,  1, -1,  2,  0,  0, -1,  0,  0,  1,  0,  0,  0,
     :   0,  0,  1, -1,  2,  0, -5,  7,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  1,  0,  0,  2, -2,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  4, -5,  0,  0,  0,  0,  0, -1,
     :   0,  0,  0,  0,  0,  0,  3, -4,  0,  0,  0,  0,  0, -2,
     :   0,  0,  0,  0,  0,  0,  2, -4,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  5,-10,  0,  0,  0,  0, -2,
     :   0,  0,  0,  0,  0,  0,  0,  4,  0, -4,  0,  0,  0,  2,
     :   0,  0,  0,  0,  0,  0,  0,  2,  0, -5,  0,  0,  0, -2 /
      DATA ((MFAPL(I,J),I=1,14),J=451,460) /
     :   0,  0,  0,  0,  0,  0,  0,  1,  0, -5,  0,  0,  0, -2,
     :   0,  0,  0,  0,  0,  0,  0,  1,  0, -2,  5,  0,  0,  2,
     :   0,  0,  0,  0,  0,  0,  0,  1,  0, -2,  0,  0,  0, -2,
     :   0,  0,  0,  0,  0,  0,  2, -3,  0,  0,  0,  0,  0,  1,
     :   1,  0,  0, -2,  0,  0,  0,  1,  0, -1,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  3, -7,  4,  0,  0,  0,  0,  0,
     :   2,  0,  2,  0,  1,  0,  0,  1,  0,  0,  0,  0,  0,  0,
     :   0,  0,  1, -1, -1,  0,  0, -1,  0, -1,  0,  0,  0,  0,
     :   0,  0,  0,  0,  1,  0,  0,  1,  0, -2,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  6,-10,  0,  0,  0,  0, -2 /
      DATA ((MFAPL(I,J),I=1,14),J=461,470) /
     :   1,  0,  0, -1,  1,  0,  0, -1,  0,  1,  0,  0,  0,  0,
     :   0,  0,  2, -2,  1,  0,  0,  4, -8,  3,  0,  0,  0,  0,
     :   0,  0,  2, -2,  1,  0,  0,  1,  0, -1,  0,  0,  0,  0,
     :   0,  0,  2, -2,  1,  0,  0, -4,  8, -3,  0,  0,  0,  0,
     :   0,  0,  2, -2,  1,  0,  0, -3,  0,  3,  0,  0,  0,  0,
     :   0,  0,  2, -2,  1,  0, -5,  5,  0,  0,  0,  0,  0,  0,
     :   0,  0,  1, -1,  1,  0,  1, -3,  0,  0,  0,  0,  0,  0,
     :   0,  0,  1, -1,  1,  0,  0, -4,  6,  0,  0,  0,  0,  0,
     :   0,  0,  1, -1,  1,  0,  0, -1,  0,  0,  0, -1,  0,  0,
     :   0,  0,  1, -1,  1,  0, -5,  6,  0,  0,  0,  0,  0,  0 /
      DATA ((MFAPL(I,J),I=1,14),J=471,480) /
     :   0,  0,  0,  0,  1,  0,  3, -4,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  1,  0, -2,  2,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  7,-10,  0,  0,  0,  0,  0, -1,
     :   0,  0,  0,  0,  0,  0,  5, -5,  0,  0,  0,  0,  0,  1,
     :   0,  0,  0,  0,  0,  0,  4, -5,  0,  0,  0,  0,  0, -2,
     :   0,  0,  0,  0,  0,  0,  3, -8,  0,  0,  0,  0,  0, -2,
     :   0,  0,  0,  0,  0,  0,  2, -5,  0,  0,  0,  0,  0, -1,
     :   0,  0,  0,  0,  0,  0,  1, -2,  0,  0,  0,  0,  0, -1,
     :   0,  0,  0,  0,  0,  0,  0,  7, -9,  0,  0,  0,  0,  2,
     :   0,  0,  0,  0,  0,  0,  0,  7, -8,  0,  0,  0,  0,  2 /
      DATA ((MFAPL(I,J),I=1,14),J=481,490) /
     :   0,  0,  0,  0,  0,  0,  0,  3,  0,  0,  0,  0,  0,  2,
     :   0,  0,  0,  0,  0,  0,  0,  3, -8,  3,  0,  0,  0, -2,
     :   0,  0,  0,  0,  0,  0,  0,  2,  0,  0, -2,  0,  0,  1,
     :   0,  0,  0,  0,  0,  0,  0,  2, -4,  0,  0,  0,  0,  1,
     :   0,  0,  0,  0,  0,  0,  0,  1,  0,  0,  0,  0,  0, -1,
     :   0,  0,  0,  0,  0,  0,  0,  1,  0, -1,  0,  0,  0, -1,
     :   2,  0,  0, -2, -1,  0,  0, -6,  8,  0,  0,  0,  0,  0,
     :   2,  0, -1, -1,  1,  0,  0,  3, -7,  0,  0,  0,  0,  0,
     :   0,  0,  2, -2,  1,  0,  0, -7,  9,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  3, -5,  0,  0,  0,  0, -1 /
      DATA ((MFAPL(I,J),I=1,14),J=491,500) /
     :   0,  0,  1, -1,  2,  0, -8, 12,  0,  0,  0,  0,  0,  0,
     :   1,  0,  0,  0,  0,  0,  0, -2,  0,  2,  0,  0,  0,  0,
     :   1,  0,  0, -2,  0,  0,  2, -2,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  7, -8,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  0,  2,  0,  0,  0,  0,  0,
     :   2,  0,  0, -2,  1,  0,  0, -5,  6,  0,  0,  0,  0,  0,
     :   2,  0,  0, -2, -1,  0,  0, -2,  0,  3, -1,  0,  0,  0,
     :   1,  0,  1,  1,  1,  0,  0,  1,  0,  0,  0,  0,  0,  0,
     :   1,  0,  0, -2,  1,  0,  0, -2,  0,  2,  0,  0,  0,  0,
     :   1,  0,  0, -2, -1,  0,  0, -2,  0,  2,  0,  0,  0,  0 /
      DATA ((MFAPL(I,J),I=1,14),J=501,510) /
     :   1,  0,  0, -1, -1,  0,  0, -3,  4,  0,  0,  0,  0,  0,
     :   1,  0, -1,  0, -1,  0, -3,  5,  0,  0,  0,  0,  0,  0,
     :   0,  0,  2, -2,  1,  0,  0, -4,  4,  0,  0,  0,  0,  0,
     :   0,  0,  2, -2,  1,  0,  0, -2,  0,  0,  0,  0,  0,  0,
     :   0,  0,  2, -2,  1,  0, -8, 11,  0,  0,  0,  0,  0,  0,
     :   0,  0,  2, -2,  0,  0,  0, -9, 13,  0,  0,  0,  0,  0,
     :   0,  0,  1,  1,  2,  0,  0,  1,  0,  0,  0,  0,  0,  0,
     :   0,  0,  1, -1,  1,  0,  0,  1, -4,  0,  0,  0,  0,  0,
     :   0,  0,  1, -1,  1,  0,  0, -1,  0,  1, -3,  0,  0,  0,
     :   0,  0,  0,  0,  1,  0,  0,  7,-13,  0,  0,  0,  0,  0 /
      DATA ((MFAPL(I,J),I=1,14),J=511,520) /
     :   0,  0,  0,  0,  1,  0,  0,  2,  0, -2,  0,  0,  0,  0,
     :   0,  0,  0,  0,  1,  0,  0, -2,  2,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  1,  0, -3,  4,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  1,  0, -4,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  7,-11,  0,  0,  0,  0,  0, -1,
     :   0,  0,  0,  0,  0,  0,  6, -6,  0,  0,  0,  0,  0,  1,
     :   0,  0,  0,  0,  0,  0,  6, -4,  0,  0,  0,  0,  0,  1,
     :   0,  0,  0,  0,  0,  0,  5, -6,  0,  0,  0,  0,  0, -1,
     :   0,  0,  0,  0,  0,  0,  4, -2,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  3, -4,  0,  0,  0,  0,  0,  1 /
      DATA ((MFAPL(I,J),I=1,14),J=521,530) /
     :   0,  0,  0,  0,  0,  0,  1, -4,  0,  0,  0,  0,  0, -1,
     :   0,  0,  0,  0,  0,  0,  0,  9,-17,  0,  0,  0,  0, -2,
     :   0,  0,  0,  0,  0,  0,  0,  7, -7,  0,  0,  0,  0,  2,
     :   0,  0,  0,  0,  0,  0,  0,  4, -8,  3,  0,  0,  0,  1,
     :   0,  0,  0,  0,  0,  0,  0,  4, -8,  3,  0,  0,  0, -1,
     :   0,  0,  0,  0,  0,  0,  0,  4, -8,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  4, -7,  0,  0,  0,  0, -1,
     :   0,  0,  0,  0,  0,  0,  0,  1,  0,  1,  0,  0,  0,  1,
     :   0,  0,  0,  0,  0,  0,  0,  1,  0, -4,  0,  0,  0,  0,
     :   2,  0,  0, -2,  0,  0,  0, -4,  8, -3,  0,  0,  0,  0 /
      DATA ((MFAPL(I,J),I=1,14),J=531,540) /
     :   2,  0,  0, -2,  0,  0, -2,  2,  0,  0,  0,  0,  0,  0,
     :   1,  0,  0,  0,  0,  0,  0,  4, -8,  3,  0,  0,  0,  0,
     :   1,  0,  0,  0,  0,  0,  0, -4,  8, -3,  0,  0,  0,  0,
     :   1,  0,  0,  0,  0,  0, -1,  1,  0,  0,  0,  0,  0,  0,
     :   1,  0,  0, -2,  0,  0, 17,-16,  0, -2,  0,  0,  0,  0,
     :   1,  0,  0, -1,  0,  0,  0, -2,  2,  0,  0,  0,  0,  0,
     :   0,  0,  2, -2,  0,  0,  0, -2,  0,  2,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  6, -9,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  4,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  3,  0, -4,  0,  0,  0,  0 /
      DATA ((MFAPL(I,J),I=1,14),J=541,550) /
     :   0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  1, -2, -2,
     :   0,  0,  0,  0,  0,  0,  0,  2,  1,  0,  0,  0,  0,  2,
     :   2,  0,  0, -2,  0,  0,  0, -4,  4,  0,  0,  0,  0,  0,
     :   2,  0,  0, -2,  0,  0,  0, -2,  0,  2,  2,  0,  0,  0,
     :   1,  0,  0,  0,  0,  0,  1, -1,  0,  0,  0,  0,  0,  0,
     :   1,  0,  0,  0,  0,  0,  0, -1,  0,  1,  0,  0,  0,  0,
     :   1,  0,  0,  0,  0,  0, -3,  3,  0,  0,  0,  0,  0,  0,
     :   1,  0,  0, -2,  0,  0,  1, -1,  0,  0,  0,  0,  0,  0,
     :   1,  0,  0, -2,  0,  0,  0,  4, -8,  3,  0,  0,  0,  0,
     :   1,  0,  0, -2,  0,  0,  0, -4,  8, -3,  0,  0,  0,  0 /
      DATA ((MFAPL(I,J),I=1,14),J=551,560) /
     :   1,  0,  0, -2,  0,  0, -2,  2,  0,  0,  0,  0,  0,  0,
     :   0,  0,  2, -2,  0,  0, -4,  4,  0,  0,  0,  0,  0,  0,
     :   0,  0,  1,  1,  0,  0,  0,  1,  0,  0,  0,  0,  0,  0,
     :   0,  0,  1, -1,  0,  0,  3, -6,  0,  0,  0,  0,  0,  0,
     :   0,  0,  1, -1,  0,  0,  0, -2,  2,  0,  0,  0,  0,  0,
     :   0,  0,  1, -1,  0,  0,  0, -1,  0,  1,  0,  0,  0,  0,
     :   0,  0,  1, -1,  0,  0,  0, -1,  0,  0,  1,  0,  0,  0,
     :   0,  0,  1, -1,  0,  0, -4,  5,  0,  0,  0,  0,  0,  0,
     :   0,  0,  1, -1,  0,  0, -3,  4,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  2,  0,  0,  0, -1,  0,  1,  0,  0,  0,  0 /
      DATA ((MFAPL(I,J),I=1,14),J=561,570) /
     :   0,  0,  0,  0,  0,  0,  8, -9,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  3, -6,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  1,  1,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  0,  0,  3, -5,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  0,  0,  2, -2,  0,  0,  0,
     :   2,  0, -2, -2, -2,  0,  0, -2,  0,  2,  0,  0,  0,  0,
     :   1,  0,  0,  0,  1,  0,-10,  3,  0,  0,  0,  0,  0,  0,
     :   1,  0,  0,  0, -1,  0,-10,  3,  0,  0,  0,  0,  0,  0,
     :   0,  0,  2,  0,  2,  0,  2, -3,  0,  0,  0,  0,  0,  0,
     :   0,  0,  2,  0,  2,  0,  2, -2,  0,  0,  0,  0,  0,  0 /
      DATA ((MFAPL(I,J),I=1,14),J=571,580) /
     :   0,  0,  2,  0,  2,  0, -2,  3,  0,  0,  0,  0,  0,  0,
     :   0,  0,  2,  0,  2,  0, -2,  2,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  2,  0,  0,  0,  0,  1,  0,  0,  0,  0,
     :   0,  0,  0,  0,  1,  0,  0, -1,  0,  2,  0,  0,  0,  0,
     :   2,  0,  2, -2,  2,  0,  0, -2,  0,  3,  0,  0,  0,  0,
     :   2,  0,  1, -3,  1,  0, -6,  7,  0,  0,  0,  0,  0,  0,
     :   2,  0,  0, -2,  0,  0,  2, -5,  0,  0,  0,  0,  0,  0,
     :   2,  0,  0, -2,  0,  0,  0, -2,  0,  5, -5,  0,  0,  0,
     :   2,  0,  0, -2,  0,  0,  0, -2,  0,  1,  5,  0,  0,  0,
     :   2,  0,  0, -2,  0,  0,  0, -2,  0,  0,  5,  0,  0,  0 /
      DATA ((MFAPL(I,J),I=1,14),J=581,590) /
     :   2,  0,  0, -2,  0,  0,  0, -2,  0,  0,  2,  0,  0,  0,
     :   2,  0,  0, -2,  0,  0, -4,  4,  0,  0,  0,  0,  0,  0,
     :   2,  0, -2,  0, -2,  0,  0,  5, -9,  0,  0,  0,  0,  0,
     :   2,  0, -1, -1,  0,  0,  0, -1,  0,  3,  0,  0,  0,  0,
     :   1,  0,  2,  0,  2,  0,  1, -1,  0,  0,  0,  0,  0,  0,
     :   1,  0,  2,  0,  2,  0,  0,  4, -8,  3,  0,  0,  0,  0,
     :   1,  0,  2,  0,  2,  0,  0, -4,  8, -3,  0,  0,  0,  0,
     :   1,  0,  2,  0,  2,  0, -1,  1,  0,  0,  0,  0,  0,  0,
     :   1,  0,  2, -2,  2,  0, -3,  3,  0,  0,  0,  0,  0,  0,
     :   1,  0,  0,  0,  0,  0,  0,  1,  0, -1,  0,  0,  0,  0 /
      DATA ((MFAPL(I,J),I=1,14),J=591,600) /
     :   1,  0,  0,  0,  0,  0,  0, -2,  0,  3,  0,  0,  0,  0,
     :   1,  0,  0, -2,  0,  0,  0,  2,  0, -2,  0,  0,  0,  0,
     :   1,  0, -2, -2, -2,  0,  0,  1,  0, -1,  0,  0,  0,  0,
     :   1,  0, -1,  1,  0,  0,  0,  1,  0,  0,  0,  0,  0,  0,
     :   1,  0, -1, -1,  0,  0,  0,  8,-15,  0,  0,  0,  0,  0,
     :   0,  0,  2,  2,  2,  0,  0,  2,  0, -2,  0,  0,  0,  0,
     :   0,  0,  2, -2,  1,  0,  1, -1,  0,  0,  0,  0,  0,  0,
     :   0,  0,  2, -2,  1,  0,  0, -2,  0,  1,  0,  0,  0,  0,
     :   0,  0,  2, -2,  1,  0,  0,-10, 15,  0,  0,  0,  0,  0,
     :   0,  0,  2, -2,  0, -1,  0,  2,  0,  0,  0,  0,  0,  0 /
      DATA ((MFAPL(I,J),I=1,14),J=601,610) /
     :   0,  0,  1, -1,  2,  0,  0, -1,  0,  0, -1,  0,  0,  0,
     :   0,  0,  1, -1,  2,  0, -3,  4,  0,  0,  0,  0,  0,  0,
     :   0,  0,  1, -1,  1,  0, -4,  6,  0,  0,  0,  0,  0,  0,
     :   0,  0,  1, -1,  1,  0, -1,  2,  0,  0,  0,  0,  0,  0,
     :   0,  0,  1, -1,  0,  0,  0,  1,  0,  0,  0,  0,  0,  0,
     :   0,  0,  1, -1,  0,  0,  0, -1,  0,  0, -2,  0,  0,  0,
     :   0,  0,  1, -1,  0,  0, -2,  2,  0,  0,  0,  0,  0,  0,
     :   0,  0,  1, -1,  0,  0, -1,  0,  0,  0,  0,  0,  0,  0,
     :   0,  0,  1, -1, -1,  0, -5,  7,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  2,  0,  0,  0,  2,  0, -2,  0,  0,  0,  0 /
      DATA ((MFAPL(I,J),I=1,14),J=611,620) /
     :   0,  0,  0,  2,  0,  0, -2,  2,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  2,  0, -3,  5,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  1,  0, -1,  2,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  9,-13,  0,  0,  0,  0,  0, -2,
     :   0,  0,  0,  0,  0,  0,  8,-14,  0,  0,  0,  0,  0, -2,
     :   0,  0,  0,  0,  0,  0,  8,-11,  0,  0,  0,  0,  0, -1,
     :   0,  0,  0,  0,  0,  0,  6, -9,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  6, -8,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  6, -7,  0,  0,  0,  0,  0, -1,
     :   0,  0,  0,  0,  0,  0,  5, -6,  0,  0,  0,  0,  0, -2 /
      DATA ((MFAPL(I,J),I=1,14),J=621,630) /
     :   0,  0,  0,  0,  0,  0,  5, -6, -4,  0,  0,  0,  0, -2,
     :   0,  0,  0,  0,  0,  0,  5, -4,  0,  0,  0,  0,  0,  2,
     :   0,  0,  0,  0,  0,  0,  4, -8,  0,  0,  0,  0,  0, -2,
     :   0,  0,  0,  0,  0,  0,  4, -5,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  3, -3,  0,  2,  0,  0,  0,  2,
     :   0,  0,  0,  0,  0,  0,  3, -1,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  2,  0,  0,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  1, -1,  0,  0,  0,  0,  0, -2,
     :   0,  0,  0,  0,  0,  0,  0,  7,-12,  0,  0,  0,  0, -2,
     :   0,  0,  0,  0,  0,  0,  0,  6, -9,  0,  0,  0,  0, -2 /
      DATA ((MFAPL(I,J),I=1,14),J=631,640) /
     :   0,  0,  0,  0,  0,  0,  0,  6, -8,  1,  5,  0,  0,  2,
     :   0,  0,  0,  0,  0,  0,  0,  6, -4,  0,  0,  0,  0,  2,
     :   0,  0,  0,  0,  0,  0,  0,  6,-10,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  5,  0, -4,  0,  0,  0,  2,
     :   0,  0,  0,  0,  0,  0,  0,  5, -9,  0,  0,  0,  0, -1,
     :   0,  0,  0,  0,  0,  0,  0,  5, -8,  3,  0,  0,  0,  2,
     :   0,  0,  0,  0,  0,  0,  0,  5, -7,  0,  0,  0,  0, -2,
     :   0,  0,  0,  0,  0,  0,  0,  5, -6,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  5,-16,  4,  5,  0,  0, -2,
     :   0,  0,  0,  0,  0,  0,  0,  5,-13,  0,  0,  0,  0, -2 /
      DATA ((MFAPL(I,J),I=1,14),J=641,650) /
     :   0,  0,  0,  0,  0,  0,  0,  3,  0, -5,  0,  0,  0, -2,
     :   0,  0,  0,  0,  0,  0,  0,  3, -9,  0,  0,  0,  0, -2,
     :   0,  0,  0,  0,  0,  0,  0,  3, -7,  0,  0,  0,  0, -2,
     :   0,  0,  0,  0,  0,  0,  0,  2,  0,  2,  0,  0,  0,  2,
     :   0,  0,  0,  0,  0,  0,  0,  2,  0,  0, -3,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  2, -8,  1,  5,  0,  0, -2,
     :   0,  0,  0,  0,  0,  0,  0,  1,  0,  1, -5,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  1,  0,  0,  2,  0,  0,  2,
     :   0,  0,  0,  0,  0,  0,  0,  1,  0,  0, -3,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  1,  0, -3,  5,  0,  0,  0 /
      DATA ((MFAPL(I,J),I=1,14),J=651,NFPL) /
     :   0,  0,  0,  0,  0,  0,  0,  1, -3,  0,  0,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  0,  0,  2, -6,  3,  0, -2,
     :   0,  0,  0,  0,  0,  0,  0,  0,  0,  1, -2,  0,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  1,  0,  0,
     :   0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  2,
     :   0,  0,  0,  0,  0,  0,  0,  0,  1,  0,  0,  0,  0,  0 /

*  Pointers into amplitudes array, one pointer per frequency.
      DATA (NC(I),I=1,100) /
     :    1,   21,   37,   51,   65,   79,   91,  103,  115,  127,
     :  139,  151,  163,  172,  184,  196,  207,  219,  231,  240,
     :  252,  261,  273,  285,  297,  309,  318,  327,  339,  351,
     :  363,  372,  384,  396,  405,  415,  423,  435,  444,  452,
     :  460,  467,  474,  482,  490,  498,  506,  513,  521,  528,
     :  536,  543,  551,  559,  566,  574,  582,  590,  597,  605,
     :  613,  620,  628,  636,  644,  651,  658,  666,  674,  680,
     :  687,  695,  702,  710,  717,  725,  732,  739,  746,  753,
     :  760,  767,  774,  782,  790,  798,  805,  812,  819,  826,
     :  833,  840,  846,  853,  860,  867,  874,  881,  888,  895 /
      DATA (NC(I),I=101,200) /
     :  901,  908,  914,  921,  928,  934,  941,  948,  955,  962,
     :  969,  976,  982,  989,  996, 1003, 1010, 1017, 1024, 1031,
     : 1037, 1043, 1050, 1057, 1064, 1071, 1078, 1084, 1091, 1098,
     : 1104, 1112, 1118, 1124, 1131, 1138, 1145, 1151, 1157, 1164,
     : 1171, 1178, 1185, 1192, 1199, 1205, 1212, 1218, 1226, 1232,
     : 1239, 1245, 1252, 1259, 1266, 1272, 1278, 1284, 1292, 1298,
     : 1304, 1310, 1316, 1323, 1329, 1335, 1341, 1347, 1353, 1359,
     : 1365, 1371, 1377, 1383, 1389, 1396, 1402, 1408, 1414, 1420,
     : 1426, 1434, 1440, 1446, 1452, 1459, 1465, 1471, 1477, 1482,
     : 1488, 1493, 1499, 1504, 1509, 1514, 1520, 1527, 1532, 1538 /
      DATA (NC(I),I=201,300) /
     : 1543, 1548, 1553, 1558, 1564, 1569, 1574, 1579, 1584, 1589,
     : 1594, 1596, 1598, 1600, 1602, 1605, 1608, 1610, 1612, 1617,
     : 1619, 1623, 1625, 1627, 1629, 1632, 1634, 1640, 1642, 1644,
     : 1646, 1648, 1650, 1652, 1654, 1658, 1660, 1662, 1664, 1668,
     : 1670, 1672, 1673, 1675, 1679, 1681, 1683, 1684, 1686, 1688,
     : 1690, 1693, 1695, 1697, 1701, 1703, 1705, 1707, 1709, 1711,
     : 1712, 1715, 1717, 1721, 1723, 1725, 1727, 1729, 1731, 1733,
     : 1735, 1737, 1739, 1741, 1743, 1745, 1747, 1749, 1751, 1753,
     : 1755, 1757, 1759, 1761, 1762, 1764, 1766, 1768, 1769, 1771,
     : 1773, 1775, 1777, 1779, 1781, 1783, 1785, 1787, 1788, 1790 /
      DATA (NC(I),I=301,400) /
     : 1792, 1794, 1796, 1798, 1800, 1802, 1804, 1806, 1807, 1809,
     : 1811, 1815, 1817, 1819, 1821, 1823, 1825, 1827, 1829, 1831,
     : 1833, 1835, 1837, 1839, 1840, 1842, 1844, 1848, 1850, 1852,
     : 1854, 1856, 1858, 1859, 1860, 1862, 1864, 1866, 1868, 1869,
     : 1871, 1873, 1875, 1877, 1879, 1881, 1883, 1885, 1887, 1889,
     : 1891, 1892, 1896, 1898, 1900, 1901, 1903, 1905, 1907, 1909,
     : 1910, 1911, 1913, 1915, 1919, 1921, 1923, 1927, 1929, 1931,
     : 1933, 1935, 1937, 1939, 1943, 1945, 1947, 1948, 1949, 1951,
     : 1953, 1955, 1957, 1958, 1960, 1962, 1964, 1966, 1968, 1970,
     : 1971, 1973, 1974, 1975, 1977, 1979, 1980, 1981, 1982, 1984 /
      DATA (NC(I),I=401,500) /
     : 1986, 1988, 1990, 1992, 1994, 1995, 1997, 1999, 2001, 2003,
     : 2005, 2007, 2008, 2009, 2011, 2013, 2015, 2017, 2019, 2021,
     : 2023, 2024, 2025, 2027, 2029, 2031, 2033, 2035, 2037, 2041,
     : 2043, 2045, 2046, 2047, 2049, 2051, 2053, 2055, 2056, 2057,
     : 2059, 2061, 2063, 2065, 2067, 2069, 2070, 2071, 2072, 2074,
     : 2076, 2078, 2080, 2082, 2084, 2086, 2088, 2090, 2092, 2094,
     : 2095, 2096, 2097, 2099, 2101, 2105, 2106, 2107, 2108, 2109,
     : 2110, 2111, 2113, 2115, 2119, 2121, 2123, 2125, 2127, 2129,
     : 2131, 2133, 2135, 2136, 2137, 2139, 2141, 2143, 2145, 2147,
     : 2149, 2151, 2153, 2155, 2157, 2159, 2161, 2163, 2165, 2167 /
      DATA (NC(I),I=501,600) /
     : 2169, 2171, 2173, 2175, 2177, 2179, 2181, 2183, 2185, 2186,
     : 2187, 2188, 2192, 2193, 2195, 2197, 2199, 2201, 2203, 2205,
     : 2207, 2209, 2211, 2213, 2217, 2219, 2221, 2223, 2225, 2227,
     : 2229, 2231, 2233, 2234, 2235, 2236, 2237, 2238, 2239, 2240,
     : 2241, 2244, 2246, 2248, 2250, 2252, 2254, 2256, 2258, 2260,
     : 2262, 2264, 2266, 2268, 2270, 2272, 2274, 2276, 2278, 2280,
     : 2282, 2284, 2286, 2288, 2290, 2292, 2294, 2296, 2298, 2300,
     : 2302, 2303, 2304, 2305, 2306, 2307, 2309, 2311, 2313, 2315,
     : 2317, 2319, 2321, 2323, 2325, 2327, 2329, 2331, 2333, 2335,
     : 2337, 2341, 2343, 2345, 2347, 2349, 2351, 2352, 2355, 2356 /
      DATA (NC(I),I=601,700) /
     : 2357, 2358, 2359, 2361, 2363, 2364, 2365, 2366, 2367, 2368,
     : 2369, 2370, 2371, 2372, 2373, 2374, 2376, 2378, 2380, 2382,
     : 2384, 2385, 2386, 2387, 2388, 2389, 2390, 2391, 2392, 2393,
     : 2394, 2395, 2396, 2397, 2398, 2399, 2400, 2401, 2402, 2403,
     : 2404, 2405, 2406, 2407, 2408, 2409, 2410, 2411, 2412, 2413,
     : 2414, 2415, 2417, 2418, 2430, 2438, 2445, 2453, 2460, 2468,
     : 2474, 2480, 2488, 2496, 2504, 2512, 2520, 2527, 2535, 2543,
     : 2550, 2558, 2566, 2574, 2580, 2588, 2596, 2604, 2612, 2619,
     : 2627, 2634, 2642, 2648, 2656, 2664, 2671, 2679, 2685, 2693,
     : 2701, 2709, 2717, 2725, 2733, 2739, 2747, 2753, 2761, 2769 /
      DATA (NC(I),I=701,800) /
     : 2777, 2785, 2793, 2801, 2809, 2817, 2825, 2833, 2841, 2848,
     : 2856, 2864, 2872, 2878, 2884, 2892, 2898, 2906, 2914, 2922,
     : 2930, 2938, 2944, 2952, 2958, 2966, 2974, 2982, 2988, 2996,
     : 3001, 3009, 3017, 3025, 3032, 3039, 3045, 3052, 3059, 3067,
     : 3069, 3076, 3083, 3090, 3098, 3105, 3109, 3111, 3113, 3120,
     : 3124, 3128, 3132, 3136, 3140, 3144, 3146, 3150, 3158, 3161,
     : 3165, 3166, 3168, 3172, 3176, 3180, 3182, 3185, 3189, 3193,
     : 3194, 3197, 3200, 3204, 3208, 3212, 3216, 3219, 3221, 3222,
     : 3226, 3230, 3234, 3238, 3242, 3243, 3247, 3251, 3254, 3258,
     : 3262, 3266, 3270, 3274, 3275, 3279, 3283, 3287, 3289, 3293 /
      DATA (NC(I),I=801,900) /
     : 3296, 3300, 3303, 3307, 3311, 3315, 3319, 3321, 3324, 3327,
     : 3330, 3334, 3338, 3340, 3342, 3346, 3350, 3354, 3358, 3361,
     : 3365, 3369, 3373, 3377, 3381, 3385, 3389, 3393, 3394, 3398,
     : 3402, 3406, 3410, 3413, 3417, 3421, 3425, 3429, 3433, 3435,
     : 3439, 3443, 3446, 3450, 3453, 3457, 3458, 3461, 3464, 3468,
     : 3472, 3476, 3478, 3481, 3485, 3489, 3493, 3497, 3501, 3505,
     : 3507, 3511, 3514, 3517, 3521, 3524, 3525, 3527, 3529, 3533,
     : 3536, 3540, 3541, 3545, 3548, 3551, 3555, 3559, 3563, 3567,
     : 3569, 3570, 3574, 3576, 3578, 3582, 3586, 3590, 3593, 3596,
     : 3600, 3604, 3608, 3612, 3616, 3620, 3623, 3626, 3630, 3632 /
      DATA (NC(I),I=901,1000) /
     : 3636, 3640, 3643, 3646, 3648, 3652, 3656, 3660, 3664, 3667,
     : 3669, 3671, 3675, 3679, 3683, 3687, 3689, 3693, 3694, 3695,
     : 3699, 3703, 3705, 3707, 3710, 3713, 3717, 3721, 3725, 3729,
     : 3733, 3736, 3740, 3744, 3748, 3752, 3754, 3757, 3759, 3763,
     : 3767, 3770, 3773, 3777, 3779, 3783, 3786, 3790, 3794, 3798,
     : 3801, 3805, 3809, 3813, 3817, 3821, 3825, 3827, 3831, 3835,
     : 3836, 3837, 3840, 3844, 3848, 3852, 3856, 3859, 3863, 3867,
     : 3869, 3871, 3875, 3879, 3883, 3887, 3890, 3894, 3898, 3901,
     : 3905, 3909, 3913, 3917, 3921, 3922, 3923, 3924, 3926, 3930,
     : 3932, 3936, 3938, 3940, 3944, 3948, 3952, 3956, 3959, 3963 /
      DATA (NC(I),I=1001,1100) /
     : 3965, 3969, 3973, 3977, 3979, 3981, 3982, 3986, 3989, 3993,
     : 3997, 4001, 4004, 4006, 4009, 4012, 4016, 4020, 4024, 4026,
     : 4028, 4032, 4036, 4040, 4044, 4046, 4050, 4054, 4058, 4060,
     : 4062, 4063, 4064, 4068, 4071, 4075, 4077, 4081, 4083, 4087,
     : 4089, 4091, 4095, 4099, 4101, 4103, 4105, 4107, 4111, 4115,
     : 4119, 4123, 4127, 4129, 4131, 4135, 4139, 4141, 4143, 4145,
     : 4149, 4153, 4157, 4161, 4165, 4169, 4173, 4177, 4180, 4183,
     : 4187, 4191, 4195, 4198, 4201, 4205, 4209, 4212, 4213, 4216,
     : 4217, 4221, 4223, 4226, 4230, 4234, 4236, 4240, 4244, 4248,
     : 4252, 4256, 4258, 4262, 4264, 4266, 4268, 4270, 4272, 4276 /
      DATA (NC(I),I=1101,1200) /
     : 4279, 4283, 4285, 4287, 4289, 4293, 4295, 4299, 4300, 4301,
     : 4305, 4309, 4313, 4317, 4319, 4323, 4325, 4329, 4331, 4333,
     : 4335, 4337, 4341, 4345, 4349, 4351, 4353, 4357, 4361, 4365,
     : 4367, 4369, 4373, 4377, 4381, 4383, 4387, 4389, 4391, 4395,
     : 4399, 4403, 4407, 4411, 4413, 4414, 4415, 4418, 4419, 4421,
     : 4423, 4427, 4429, 4431, 4433, 4435, 4437, 4439, 4443, 4446,
     : 4450, 4452, 4456, 4458, 4460, 4462, 4466, 4469, 4473, 4477,
     : 4481, 4483, 4487, 4489, 4491, 4493, 4497, 4499, 4501, 4504,
     : 4506, 4510, 4513, 4514, 4515, 4518, 4521, 4522, 4525, 4526,
     : 4527, 4530, 4533, 4534, 4537, 4541, 4542, 4543, 4544, 4545 /
      DATA (NC(I),I=1201,1300) /
     : 4546, 4547, 4550, 4553, 4554, 4555, 4558, 4561, 4564, 4567,
     : 4568, 4571, 4574, 4575, 4578, 4581, 4582, 4585, 4586, 4588,
     : 4590, 4592, 4596, 4598, 4602, 4604, 4608, 4612, 4613, 4616,
     : 4619, 4622, 4623, 4624, 4625, 4626, 4629, 4632, 4633, 4636,
     : 4639, 4640, 4641, 4642, 4643, 4644, 4645, 4648, 4649, 4650,
     : 4651, 4652, 4653, 4656, 4657, 4660, 4661, 4664, 4667, 4670,
     : 4671, 4674, 4675, 4676, 4677, 4678, 4681, 4682, 4683, 4684,
     : 4687, 4688, 4689, 4692, 4693, 4696, 4697, 4700, 4701, 4702,
     : 4703, 4704, 4707, 4708, 4711, 4712, 4715, 4716, 4717, 4718,
     : 4719, 4720, 4721, 4722, 4723, 4726, 4729, 4730, 4733, 4736 /
      DATA (NC(I),I=1301,NF) /
     : 4737, 4740, 4741, 4742, 4745, 4746, 4749, 4752, 4753 /

*  Amplitude coefficients (microarcsec);  indexed using the NC array.
      DATA (A(I),I=1,133) /
     :-6844318.44D0,9205236.26D0,1328.67D0,1538.18D0,205833.11D0,
     :153041.79D0,-3309.73D0,853.32D0,2037.98D0,-2301.27D0,81.46D0,
     :120.56D0,-20.39D0,-15.22D0,1.73D0,-1.61D0,-0.1D0,0.11D0,-0.02D0,
     :-0.02D0,-523908.04D0,573033.42D0,-544.75D0,-458.66D0,12814.01D0,
     :11714.49D0,198.97D0,-290.91D0,155.74D0,-143.27D0,-2.75D0,-1.03D0,
     :-1.27D0,-1.16D0,    0D0,-0.01D0,-90552.22D0,97846.69D0,111.23D0,
     :137.41D0,2187.91D0,2024.68D0,41.44D0,-51.26D0,26.92D0,-24.46D0,
     :-0.46D0,-0.28D0,-0.22D0, -0.2D0,82168.76D0,-89618.24D0,-27.64D0,
     :-29.05D0,-2004.36D0,-1837.32D0,-36.07D0,48D0,-24.43D0,22.41D0,
     : 0.47D0, 0.24D0,  0.2D0, 0.18D0,58707.02D0,7387.02D0,470.05D0,
     :-192.4D0,164.33D0,-1312.21D0,-179.73D0,-28.93D0,-17.36D0,-1.83D0,
     : -0.5D0, 3.57D0,    0D0, 0.13D0,-20557.78D0,22438.42D0,-20.84D0,
     :-17.4D0,501.82D0,459.68D0,59.2D0,-67.3D0,6.08D0,-5.61D0,-1.36D0,
     :-1.19D0,28288.28D0,-674.99D0,-34.69D0,35.8D0,-15.07D0,-632.54D0,
     :-11.19D0,0.78D0,-8.41D0, 0.17D0, 0.01D0, 0.07D0,-15406.85D0,
     :20069.5D0,15.12D0,31.8D0,448.76D0,344.5D0,-5.77D0,1.41D0,4.59D0,
     :-5.02D0, 0.17D0, 0.24D0,-11991.74D0,12902.66D0,32.46D0,36.7D0,
     :288.49D0,268.14D0,5.7D0,-7.06D0, 3.57D0,-3.23D0,-0.06D0,-0.04D0,
     :-8584.95D0,-9592.72D0,4.42D0,-13.2D0,-214.5D0,192.06D0,23.87D0 /
      DATA (A(I),I=134,273) /
     :29.83D0, 2.54D0,  2.4D0,  0.6D0,-0.48D0,5095.5D0,-6918.22D0,
     : 7.19D0, 3.92D0,-154.91D0,-113.94D0,2.86D0,-1.04D0,-1.52D0,
     : 1.73D0,-0.07D0, -0.1D0,-4910.93D0,-5331.13D0,0.76D0,0.4D0,
     :-119.21D0,109.81D0,2.16D0,3.2D0, 1.46D0, 1.33D0, 0.04D0,-0.02D0,
     :-6245.02D0,-123.48D0,-6.68D0,-8.2D0,-2.76D0,139.64D0,2.71D0,
     : 0.15D0, 1.86D0,2511.85D0,-3323.89D0,1.07D0,-0.9D0,-74.33D0,
     :-56.17D0,1.16D0,-0.01D0,-0.75D0, 0.83D0,-0.02D0,-0.04D0,
     :2307.58D0,3143.98D0,-7.52D0,7.5D0,70.31D0,-51.6D0,1.46D0,0.16D0,
     :-0.69D0,-0.79D0, 0.02D0,-0.05D0,2372.58D0,2554.51D0,5.93D0,
     : -6.6D0,57.12D0,-53.05D0,-0.96D0,-1.24D0,-0.71D0,-0.64D0,-0.01D0,
     :-2053.16D0,2636.13D0,5.13D0,7.8D0,58.94D0,45.91D0,-0.42D0,
     :-0.12D0, 0.61D0,-0.66D0, 0.02D0, 0.03D0,-1825.49D0,-2423.59D0,
     : 1.23D0,   -2D0,-54.19D0,40.82D0,-1.07D0,-1.02D0,0.54D0, 0.61D0,
     :-0.04D0, 0.04D0,2521.07D0,-122.28D0,-5.97D0,2.9D0,-2.73D0,
     :-56.37D0,-0.82D0,0.13D0,-0.75D0,-1534.09D0,1645.01D0,6.29D0,
     :  6.8D0,36.78D0, 34.3D0, 0.92D0,-1.25D0, 0.46D0,-0.41D0,-0.02D0,
     :-0.01D0,1898.27D0,47.7D0,-0.72D0, 2.5D0, 1.07D0,-42.45D0,-0.94D0,
     : 0.02D0,-0.56D0,-1292.02D0,-1387D0, 0D0,    0D0,-31.01D0,28.89D0,
     : 0.68D0,    0D0, 0.38D0, 0.35D0,-0.01D0,-0.01D0,-1234.96D0 /
      DATA (A(I),I=274,415) /
     :1323.81D0,5.21D0, 5.9D0, 29.6D0,27.61D0, 0.74D0,-1.22D0, 0.37D0,
     :-0.33D0,-0.02D0,-0.01D0,1137.48D0,-1233.89D0,-0.04D0,-0.3D0,
     :-27.59D0,-25.43D0,-0.61D0,  1D0,-0.34D0, 0.31D0, 0.01D0, 0.01D0,
     :-813.13D0,-1075.6D0,0.4D0,0.3D0,-24.05D0,18.18D0,-0.4D0,-0.01D0,
     : 0.24D0, 0.27D0,-0.01D0, 0.01D0,1163.22D0,-60.9D0,-2.94D0,1.3D0,
     :-1.36D0,-26.01D0,-0.58D0,0.07D0,-0.35D0,1029.7D0,-55.55D0,
     :-2.63D0,  1.1D0,-1.25D0,-23.02D0,-0.52D0,0.06D0,-0.31D0,
     :-556.26D0,852.85D0,3.16D0,-4.48D0,19.06D0,12.44D0,-0.81D0,
     :-0.27D0, 0.17D0,-0.21D0,    0D0, 0.02D0,-603.52D0,-800.34D0,
     : 0.44D0,  0.1D0,-17.9D0,13.49D0,-0.08D0,-0.01D0, 0.18D0,  0.2D0,
     :-0.01D0, 0.01D0,-628.24D0,684.99D0,-0.64D0,-0.5D0,15.32D0,
     :14.05D0, 3.18D0,-4.19D0, 0.19D0,-0.17D0,-0.09D0,-0.07D0,
     :-866.48D0,-16.26D0,0.52D0,-1.3D0,-0.36D0,19.37D0,0.43D0,-0.01D0,
     : 0.26D0,-512.37D0,695.54D0,-1.47D0,-1.4D0,15.55D0,11.46D0,
     :-0.16D0, 0.03D0, 0.15D0,-0.17D0, 0.01D0, 0.01D0,506.65D0,
     :643.75D0,2.54D0,-2.62D0, 14.4D0,-11.33D0,-0.77D0,-0.06D0,-0.15D0,
     :-0.16D0,    0D0, 0.01D0,664.57D0,16.81D0,-0.4D0,    1D0, 0.38D0,
     :-14.86D0,-3.71D0,-0.09D0,-0.2D0,405.91D0,522.11D0,0.99D0,-1.5D0,
     :11.67D0,-9.08D0,-0.25D0,-0.02D0,-0.12D0,-0.13D0,-305.78D0 /
      DATA (A(I),I=416,566) /
     :326.6D0, 1.75D0,  1.9D0,  7.3D0, 6.84D0,  0.2D0,-0.04D0,300.99D0,
     :-325.03D0,-0.44D0,-0.5D0,-7.27D0,-6.73D0,-1.01D0,0.01D0,    0D0,
     : 0.08D0,    0D0, 0.02D0,438.51D0,10.47D0,-0.56D0,-0.2D0, 0.24D0,
     :-9.81D0,-0.24D0, 0.01D0,-0.13D0,-264.02D0,335.24D0,0.99D0,1.4D0,
     : 7.49D0,  5.9D0,-0.27D0,-0.02D0,284.09D0,307.03D0,0.32D0,-0.4D0,
     : 6.87D0,-6.35D0,-0.99D0,-0.01D0,-250.54D0,327.11D0,0.08D0,0.4D0,
     : 7.31D0,  5.6D0, -0.3D0,230.72D0,-304.46D0,0.08D0,-0.1D0,-6.81D0,
     :-5.16D0, 0.27D0,229.78D0,304.17D0,-0.6D0, 0.5D0,  6.8D0,-5.14D0,
     : 0.33D0, 0.01D0,256.3D0,-276.81D0,-0.28D0,-0.4D0,-6.19D0,-5.73D0,
     :-0.14D0, 0.01D0,-212.82D0,269.45D0,0.84D0,1.2D0, 6.02D0, 4.76D0,
     : 0.14D0,-0.02D0,196.64D0,272.05D0,-0.84D0,0.9D0, 6.08D0, -4.4D0,
     : 0.35D0, 0.02D0,188.95D0,272.22D0,-0.12D0,0.3D0, 6.09D0,-4.22D0,
     : 0.34D0,-292.37D0,-5.1D0,-0.32D0,-0.4D0,-0.11D0, 6.54D0, 0.14D0,
     : 0.01D0,161.79D0,-220.67D0,0.24D0,0.1D0,-4.93D0,-3.62D0,-0.08D0,
     :261.54D0,-19.94D0,-0.95D0,0.2D0,-0.45D0,-5.85D0,-0.13D0, 0.02D0,
     :142.16D0,-190.79D0,0.2D0, 0.1D0,-4.27D0,-3.18D0,-0.07D0,187.95D0,
     :-4.11D0,-0.24D0,  0.3D0,-0.09D0, -4.2D0,-0.09D0, 0.01D0,    0D0,
     :    0D0,-79.08D0,167.9D0,0.04D0,    0D0, 3.75D0, 1.77D0,121.98D0,
     :131.04D0,-0.08D0, 0.1D0, 2.93D0,-2.73D0,-0.06D0,-172.95D0 /
      DATA (A(I),I=567,713) /
     :-8.11D0, -0.4D0, -0.2D0,-0.18D0, 3.87D0, 0.09D0, 0.01D0,
     :-160.15D0,-55.3D0,-14.04D0,13.9D0,-1.23D0,3.58D0, 0.4D0, 0.31D0,
     :-115.4D0,123.2D0, 0.6D0,  0.7D0, 2.75D0, 2.58D0, 0.08D0,-0.01D0,
     :-168.26D0, -2D0,  0.2D0, -0.2D0,-0.04D0, 3.76D0, 0.08D0,
     :-114.49D0,123.2D0,0.32D0, 0.4D0, 2.75D0, 2.56D0, 0.07D0,-0.01D0,
     :112.14D0,120.7D0,0.28D0, -0.3D0,  2.7D0,-2.51D0,-0.07D0,-0.01D0,
     :161.34D0,4.03D0,  0.2D0,  0.2D0, 0.09D0,-3.61D0,-0.08D0,91.31D0,
     :126.64D0,-0.4D0,  0.4D0, 2.83D0,-2.04D0,-0.04D0, 0.01D0,105.29D0,
     :112.9D0, 0.44D0, -0.5D0, 2.52D0,-2.35D0,-0.07D0,-0.01D0,98.69D0,
     :-106.2D0,-0.28D0,-0.3D0,-2.37D0,-2.21D0,-0.06D0, 0.01D0,86.74D0,
     :-112.94D0,-0.08D0,-0.2D0,-2.53D0,-1.94D0,-0.05D0,-134.81D0,
     : 3.51D0,  0.2D0, -0.2D0, 0.08D0, 3.01D0, 0.07D0,79.03D0,107.31D0,
     :-0.24D0,  0.2D0,  2.4D0,-1.77D0,-0.04D0, 0.01D0,132.81D0,
     :-10.77D0,-0.52D0, 0.1D0,-0.24D0,-2.97D0,-0.07D0, 0.01D0,
     :-130.31D0,-0.9D0,0.04D0,    0D0,    0D0, 2.91D0,-78.56D0,85.32D0,
     :    0D0,    0D0, 1.91D0, 1.76D0, 0.04D0,    0D0,    0D0,-41.53D0,
     : 89.1D0, 0.02D0,    0D0, 1.99D0, 0.93D0,66.03D0,  -71D0, -0.2D0,
     : -0.2D0,-1.59D0,-1.48D0,-0.04D0, 60.5D0, 64.7D0, 0.36D0, -0.4D0,
     : 1.45D0,-1.35D0,-0.04D0,-0.01D0,-52.27D0,-70.01D0,  0D0,    0D0 /
      DATA (A(I),I=714,865) /
     :-1.57D0, 1.17D0, 0.03D0,-52.95D0,66.29D0,0.32D0,  0.4D0, 1.48D0,
     : 1.18D0, 0.04D0,-0.01D0,51.02D0,67.25D0,    0D0,    0D0,  1.5D0,
     :-1.14D0,-0.03D0,-55.66D0,-60.92D0,0.16D0,-0.2D0,-1.36D0, 1.24D0,
     : 0.03D0,-54.81D0,-59.2D0,-0.08D0, 0.2D0,-1.32D0, 1.23D0, 0.03D0,
     :51.32D0,-55.6D0,    0D0,    0D0,-1.24D0,-1.15D0,-0.03D0,48.29D0,
     : 51.8D0,  0.2D0, -0.2D0, 1.16D0,-1.08D0,-0.03D0,-45.59D0, -49D0,
     :-0.12D0,  0.1D0, -1.1D0, 1.02D0, 0.03D0,40.54D0,-52.69D0,-0.04D0,
     : -0.1D0,-1.18D0,-0.91D0,-0.02D0,-40.58D0,-49.51D0, -1D0,    1D0,
     :-1.11D0, 0.91D0, 0.04D0, 0.02D0,-43.76D0,46.5D0, 0.36D0,  0.4D0,
     : 1.04D0, 0.98D0, 0.03D0,-0.01D0,62.65D0,   -5D0,-0.24D0,    0D0,
     :-0.11D0, -1.4D0,-0.03D0, 0.01D0,-38.57D0,49.59D0,0.08D0,  0.1D0,
     : 1.11D0, 0.86D0, 0.02D0,-33.22D0,-44.04D0,0.08D0,-0.1D0,-0.98D0,
     : 0.74D0, 0.02D0,37.15D0,-39.9D0,-0.12D0, -0.1D0,-0.89D0,-0.83D0,
     :-0.02D0,36.68D0,-39.5D0,-0.04D0, -0.1D0,-0.88D0,-0.82D0,-0.02D0,
     :-53.22D0,-3.91D0,-0.2D0,    0D0,-0.09D0, 1.19D0, 0.03D0,32.43D0,
     :-42.19D0,-0.04D0,-0.1D0,-0.94D0,-0.73D0,-0.02D0,  -51D0, -2.3D0,
     :-0.12D0, -0.1D0,    0D0, 1.14D0,-29.53D0,-39.11D0,0.04D0,   0D0,
     :-0.87D0, 0.66D0, 0.02D0, 28.5D0,-38.92D0,-0.08D0,-0.1D0,-0.87D0,
     :-0.64D0,-0.02D0,26.54D0,36.95D0,-0.12D0,  0.1D0, 0.83D0,-0.59D0 /
      DATA (A(I),I=866,1017) /
     :-0.01D0,26.54D0,34.59D0, 0.04D0, -0.1D0, 0.77D0,-0.59D0,-0.02D0,
     :28.35D0,-32.55D0,-0.16D0, 0.2D0,-0.73D0,-0.63D0,-0.01D0,  -28D0,
     : 30.4D0,    0D0,    0D0, 0.68D0, 0.63D0, 0.01D0,-27.61D0,29.4D0,
     :  0.2D0,  0.2D0, 0.66D0, 0.62D0, 0.02D0,40.33D0,  0.4D0,-0.04D0,
     :  0.1D0,    0D0, -0.9D0,-23.28D0,31.61D0,-0.08D0,-0.1D0, 0.71D0,
     : 0.52D0, 0.01D0,37.75D0,  0.8D0, 0.04D0,  0.1D0,    0D0,-0.84D0,
     :23.66D0, 25.8D0,    0D0,    0D0, 0.58D0,-0.53D0,-0.01D0,21.01D0,
     :-27.91D0,   0D0,    0D0,-0.62D0,-0.47D0,-0.01D0,-34.81D0,2.89D0,
     : 0.04D0,    0D0,    0D0, 0.78D0,-23.49D0,-25.31D0,  0D0,    0D0,
     :-0.57D0, 0.53D0, 0.01D0,-23.47D0,25.2D0, 0.16D0,  0.2D0, 0.56D0,
     : 0.52D0, 0.02D0,19.58D0, 27.5D0,-0.12D0,  0.1D0, 0.62D0,-0.44D0,
     :-0.01D0,-22.67D0,-24.4D0,-0.08D0, 0.1D0,-0.55D0, 0.51D0, 0.01D0,
     :-19.97D0,  25D0, 0.12D0,  0.2D0, 0.56D0, 0.45D0, 0.01D0,21.28D0,
     :-22.8D0,-0.08D0, -0.1D0,-0.51D0,-0.48D0,-0.01D0,-30.47D0,0.91D0,
     : 0.04D0,    0D0,    0D0, 0.68D0,18.58D0,   24D0, 0.04D0, -0.1D0,
     : 0.54D0,-0.42D0,-0.01D0,-18.02D0,24.4D0,-0.04D0, -0.1D0, 0.55D0,
     :  0.4D0, 0.01D0,17.74D0, 22.5D0, 0.08D0, -0.1D0,  0.5D0, -0.4D0,
     :-0.01D0,-19.41D0,20.7D0, 0.08D0,  0.1D0, 0.46D0, 0.43D0, 0.01D0,
     :-18.64D0,20.11D0,   0D0,    0D0, 0.45D0, 0.42D0, 0.01D0,-16.75D0 /
      DATA (A(I),I=1018,1169) /
     : 21.6D0, 0.04D0,  0.1D0, 0.48D0, 0.37D0, 0.01D0,-18.42D0, -20D0,
     :    0D0,    0D0,-0.45D0, 0.41D0, 0.01D0,-26.77D0,1.41D0, 0.08D0,
     :    0D0,    0D0,  0.6D0,-26.17D0,-0.19D0,   0D0,    0D0,    0D0,
     : 0.59D0,-15.52D0,20.51D0,   0D0,    0D0, 0.46D0, 0.35D0, 0.01D0,
     :-25.42D0,-1.91D0,-0.08D0,   0D0,-0.04D0, 0.57D0, 0.45D0,-17.42D0,
     : 18.1D0,    0D0,    0D0,  0.4D0, 0.39D0, 0.01D0,16.39D0,-17.6D0,
     :-0.08D0, -0.1D0,-0.39D0,-0.37D0,-0.01D0,-14.37D0,18.91D0,   0D0,
     :    0D0, 0.42D0, 0.32D0, 0.01D0,23.39D0, -2.4D0,-0.12D0,    0D0,
     :    0D0,-0.52D0,14.32D0,-18.5D0,-0.04D0, -0.1D0,-0.41D0,-0.32D0,
     :-0.01D0,15.69D0,17.08D0,    0D0,    0D0, 0.38D0,-0.35D0,-0.01D0,
     :-22.99D0, 0.5D0, 0.04D0,    0D0,    0D0, 0.51D0,    0D0,    0D0,
     :14.47D0,-17.6D0,-0.01D0,    0D0,-0.39D0,-0.32D0,-13.33D0,18.4D0,
     :-0.04D0, -0.1D0, 0.41D0,  0.3D0,22.47D0, -0.6D0,-0.04D0,    0D0,
     :    0D0, -0.5D0,-12.78D0,-17.41D0,0.04D0,   0D0,-0.39D0, 0.29D0,
     : 0.01D0,-14.1D0,-15.31D0,0.04D0,    0D0,-0.34D0, 0.32D0, 0.01D0,
     :11.98D0,16.21D0,-0.04D0,    0D0, 0.36D0,-0.27D0,-0.01D0,19.65D0,
     : -1.9D0,-0.08D0,    0D0,    0D0,-0.44D0,19.61D0, -1.5D0,-0.08D0,
     :    0D0,    0D0,-0.44D0,13.41D0,-14.3D0,-0.04D0, -0.1D0,-0.32D0,
     : -0.3D0,-0.01D0,-13.29D0,14.4D0,    0D0,    0D0, 0.32D0,  0.3D0 /
      DATA (A(I),I=1170,1321) /
     : 0.01D0,11.14D0,-14.4D0,-0.04D0,    0D0,-0.32D0,-0.25D0,-0.01D0,
     :12.24D0,-13.38D0,0.04D0,    0D0, -0.3D0,-0.27D0,-0.01D0,10.07D0,
     :-13.81D0,0.04D0,    0D0,-0.31D0,-0.23D0,-0.01D0,10.46D0, 13.1D0,
     : 0.08D0, -0.1D0, 0.29D0,-0.23D0,-0.01D0,16.55D0,-1.71D0,-0.08D0,
     :    0D0,    0D0,-0.37D0, 9.75D0,-12.8D0,    0D0,    0D0,-0.29D0,
     :-0.22D0,-0.01D0, 9.11D0, 12.8D0,    0D0,    0D0, 0.29D0, -0.2D0,
     :    0D0,    0D0,-6.44D0,-13.8D0,    0D0,    0D0,-0.31D0, 0.14D0,
     :-9.19D0,  -12D0,    0D0,    0D0,-0.27D0, 0.21D0,-10.3D0, 10.9D0,
     : 0.08D0,  0.1D0, 0.24D0, 0.23D0, 0.01D0,14.92D0, -0.8D0,-0.04D0,
     :    0D0,    0D0,-0.33D0,10.02D0,-10.8D0,    0D0,    0D0,-0.24D0,
     :-0.22D0,-0.01D0,-9.75D0, 10.4D0, 0.04D0,    0D0, 0.23D0, 0.22D0,
     : 0.01D0, 9.67D0,-10.4D0,-0.04D0,    0D0,-0.23D0,-0.22D0,-0.01D0,
     :-8.28D0,-11.2D0, 0.04D0,    0D0,-0.25D0, 0.19D0,13.32D0,-1.41D0,
     :-0.08D0,    0D0,    0D0, -0.3D0, 8.27D0, 10.5D0, 0.04D0,    0D0,
     : 0.23D0,-0.19D0,    0D0,    0D0,13.13D0,    0D0,    0D0,    0D0,
     :    0D0,-0.29D0,-12.93D0, 0.7D0, 0.04D0,    0D0,    0D0, 0.29D0,
     : 7.91D0,-10.2D0,    0D0,    0D0,-0.23D0,-0.18D0,-7.84D0,  -10D0,
     :-0.04D0,    0D0,-0.22D0, 0.18D0, 7.44D0,  9.6D0,    0D0,    0D0,
     : 0.21D0,-0.17D0,-7.64D0,  9.4D0, 0.08D0,  0.1D0, 0.21D0, 0.17D0 /
      DATA (A(I),I=1322,1473) /
     : 0.01D0,-11.38D0, 0.6D0, 0.04D0,    0D0,    0D0, 0.25D0,-7.48D0,
     :  8.3D0,    0D0,    0D0, 0.19D0, 0.17D0,-10.98D0,-0.2D0,    0D0,
     :    0D0,    0D0, 0.25D0,10.98D0,  0.2D0,    0D0,    0D0,    0D0,
     :-0.25D0,  7.4D0, -7.9D0,-0.04D0,    0D0,-0.18D0,-0.17D0,-6.09D0,
     :  8.4D0,-0.04D0,    0D0, 0.19D0, 0.14D0,-6.94D0,-7.49D0,    0D0,
     :    0D0,-0.17D0, 0.16D0, 6.92D0,  7.5D0, 0.04D0,    0D0, 0.17D0,
     :-0.15D0,  6.2D0, 8.09D0,    0D0,    0D0, 0.18D0,-0.14D0,-6.12D0,
     :  7.8D0, 0.04D0,    0D0, 0.17D0, 0.14D0, 5.85D0, -7.5D0,    0D0,
     :    0D0,-0.17D0,-0.13D0,-6.48D0,  6.9D0, 0.08D0,  0.1D0, 0.15D0,
     : 0.14D0, 0.01D0, 6.32D0,  6.9D0,    0D0,    0D0, 0.15D0,-0.14D0,
     : 5.61D0, -7.2D0,    0D0,    0D0,-0.16D0,-0.13D0, 9.07D0,    0D0,
     :    0D0,    0D0,    0D0, -0.2D0, 5.25D0,  6.9D0,    0D0,    0D0,
     : 0.15D0,-0.12D0,-8.47D0, -0.4D0,    0D0,    0D0,    0D0, 0.19D0,
     : 6.32D0,-5.39D0,-1.11D0,  1.1D0,-0.12D0,-0.14D0, 0.02D0, 0.02D0,
     : 5.73D0, -6.1D0,-0.04D0,    0D0,-0.14D0,-0.13D0,  4.7D0,  6.6D0,
     :-0.04D0,    0D0, 0.15D0,-0.11D0, -4.9D0, -6.4D0,    0D0,    0D0,
     :-0.14D0, 0.11D0,-5.33D0,  5.6D0, 0.04D0,  0.1D0, 0.13D0, 0.12D0,
     : 0.01D0,-4.81D0,    6D0, 0.04D0,    0D0, 0.13D0, 0.11D0, 5.13D0,
     :  5.5D0, 0.04D0,    0D0, 0.12D0,-0.11D0,  4.5D0,  5.9D0,    0D0 /
      DATA (A(I),I=1474,1625) /
     :    0D0, 0.13D0, -0.1D0,-4.22D0,  6.1D0,    0D0,    0D0, 0.14D0,
     :-4.53D0,  5.7D0,    0D0,    0D0, 0.13D0,  0.1D0, 4.18D0,  5.7D0,
     :    0D0,    0D0, 0.13D0,-4.75D0,-5.19D0,    0D0,    0D0,-0.12D0,
     : 0.11D0,-4.06D0,  5.6D0,    0D0,    0D0, 0.13D0,-3.98D0,  5.6D0,
     :-0.04D0,    0D0, 0.13D0, 4.02D0, -5.4D0,    0D0,    0D0,-0.12D0,
     : 4.49D0, -4.9D0,-0.04D0,    0D0,-0.11D0, -0.1D0,-3.62D0, -5.4D0,
     :-0.16D0,  0.2D0,-0.12D0,    0D0, 0.01D0, 4.38D0,  4.8D0,    0D0,
     :    0D0, 0.11D0, -6.4D0, -0.1D0,    0D0,    0D0,    0D0, 0.14D0,
     :-3.98D0,    5D0, 0.04D0,    0D0, 0.11D0,-3.82D0,   -5D0,    0D0,
     :    0D0,-0.11D0,-3.71D0, 5.07D0,    0D0,    0D0, 0.11D0, 4.14D0,
     :  4.4D0,    0D0,    0D0,  0.1D0,-6.01D0, -0.5D0,-0.04D0,    0D0,
     :    0D0, 0.13D0,-4.04D0, 4.39D0,    0D0,    0D0,  0.1D0, 3.45D0,
     :-4.72D0,    0D0,    0D0,-0.11D0, 3.31D0, 4.71D0,    0D0,    0D0,
     : 0.11D0, 3.26D0, -4.5D0,    0D0,    0D0, -0.1D0,-3.26D0, -4.5D0,
     :    0D0,    0D0, -0.1D0,-3.34D0, -4.4D0,    0D0,    0D0, -0.1D0,
     :-3.74D0,   -4D0,  3.7D0,    4D0, 3.34D0, -4.3D0,  3.3D0, -4.3D0,
     :-3.66D0,  3.9D0, 0.04D0, 3.66D0,  3.9D0, 0.04D0,-3.62D0, -3.9D0,
     :-3.61D0,  3.9D0, -0.2D0,  5.3D0,    0D0,    0D0, 0.12D0, 3.06D0,
     :  4.3D0,  3.3D0,    4D0,  0.4D0,  0.2D0,  3.1D0,  4.1D0,-3.06D0 /
      DATA (A(I),I=1626,1777) /
     :  3.9D0, -3.3D0, -3.6D0, -3.3D0, 3.36D0, 0.01D0, 3.14D0,  3.4D0,
     :-4.57D0, -0.2D0,    0D0,    0D0,    0D0,  0.1D0, -2.7D0, -3.6D0,
     : 2.94D0, -3.2D0, -2.9D0,  3.2D0, 2.47D0, -3.4D0, 2.55D0, -3.3D0,
     :  2.8D0,-3.08D0, 2.51D0,  3.3D0, -4.1D0,  0.3D0,-0.12D0, -0.1D0,
     :  4.1D0,  0.2D0,-2.74D0,    3D0, 2.46D0, 3.23D0,-3.66D0,  1.2D0,
     : -0.2D0,  0.2D0, 3.74D0, -0.4D0,-2.51D0, -2.8D0,-3.74D0, 2.27D0,
     : -2.9D0,    0D0,    0D0, -2.5D0,  2.7D0,-2.51D0,  2.6D0, -3.5D0,
     :  0.2D0, 3.38D0,-2.22D0, -2.5D0, 3.26D0, -0.4D0, 1.95D0, -2.6D0,
     : 3.22D0, -0.4D0,-0.04D0,-1.79D0, -2.6D0, 1.91D0,  2.5D0, 0.74D0,
     : 3.05D0,-0.04D0, 0.08D0, 2.11D0, -2.3D0,-2.11D0,  2.2D0,-1.87D0,
     : -2.4D0, 2.03D0, -2.2D0,-2.03D0,  2.2D0, 2.98D0,    0D0,    0D0,
     : 2.98D0,-1.71D0,  2.4D0, 2.94D0, -0.1D0,-0.12D0,  0.1D0, 1.67D0,
     :  2.4D0,-1.79D0,  2.3D0,-1.79D0,  2.2D0,-1.67D0,  2.2D0, 1.79D0,
     :   -2D0, 1.87D0, -1.9D0, 1.63D0, -2.1D0,-1.59D0,  2.1D0, 1.55D0,
     : -2.1D0,-1.55D0,  2.1D0,-2.59D0, -0.2D0,-1.75D0, -1.9D0,-1.75D0,
     :  1.9D0,-1.83D0, -1.8D0, 1.51D0,    2D0,-1.51D0,   -2D0, 1.71D0,
     :  1.8D0, 1.31D0,  2.1D0,-1.43D0,    2D0, 1.43D0,    2D0,-2.43D0,
     :-1.51D0,  1.9D0,-1.47D0,  1.9D0, 2.39D0,  0.2D0,-2.39D0, 1.39D0,
     :  1.9D0, 1.39D0, -1.8D0, 1.47D0, -1.6D0, 1.47D0, -1.6D0, 1.43D0 /
      DATA (A(I),I=1778,1929) /
     : -1.5D0,-1.31D0,  1.6D0, 1.27D0, -1.6D0,-1.27D0,  1.6D0, 1.27D0,
     : -1.6D0, 2.03D0, 1.35D0,  1.5D0,-1.39D0, -1.4D0, 1.95D0, -0.2D0,
     :-1.27D0, 1.49D0, 1.19D0,  1.5D0, 1.27D0,  1.4D0, 1.15D0,  1.5D0,
     : 1.87D0, -0.1D0,-1.12D0, -1.5D0, 1.87D0,-1.11D0, -1.5D0,-1.11D0,
     : -1.5D0,    0D0,    0D0, 1.19D0,  1.4D0, 1.27D0, -1.3D0,-1.27D0,
     : -1.3D0,-1.15D0,  1.4D0,-1.23D0,  1.3D0,-1.23D0, -1.3D0, 1.22D0,
     :-1.29D0, 1.07D0, -1.4D0, 1.75D0, -0.2D0,-1.03D0, -1.4D0,-1.07D0,
     :  1.2D0,-1.03D0, 1.15D0, 1.07D0,  1.1D0, 1.51D0,-1.03D0,  1.1D0,
     : 1.03D0, -1.1D0,    0D0,    0D0,-1.03D0, -1.1D0, 0.91D0, -1.2D0,
     :-0.88D0, -1.2D0,-0.88D0,  1.2D0,-0.95D0,  1.1D0,-0.95D0, -1.1D0,
     : 1.43D0,-1.39D0, 0.95D0,   -1D0,-0.95D0,    1D0, -0.8D0,  1.1D0,
     : 0.91D0,   -1D0,-1.35D0, 0.88D0,    1D0,-0.83D0,    1D0,-0.91D0,
     :  0.9D0, 0.91D0,  0.9D0, 0.88D0, -0.9D0,-0.76D0,   -1D0,-0.76D0,
     :    1D0, 0.76D0,    1D0,-0.72D0,    1D0, 0.84D0, -0.9D0, 0.84D0,
     :  0.9D0, 1.23D0,    0D0,    0D0,-0.52D0, -1.1D0,-0.68D0,    1D0,
     : 1.19D0, -0.2D0, 1.19D0, 0.76D0,  0.9D0, 1.15D0, -0.1D0, 1.15D0,
     : -0.1D0, 0.72D0, -0.9D0,-1.15D0,-1.15D0, 0.68D0,  0.9D0,-0.68D0,
     :  0.9D0,-1.11D0,    0D0,    0D0,  0.2D0, 0.79D0,  0.8D0,-1.11D0,
     : -0.1D0,    0D0,    0D0,-0.48D0,   -1D0,-0.76D0, -0.8D0,-0.72D0 /
      DATA (A(I),I=1930,2081) /
     : -0.8D0,-1.07D0, -0.1D0, 0.64D0,  0.8D0,-0.64D0, -0.8D0, 0.64D0,
     :  0.8D0,  0.4D0,  0.6D0, 0.52D0, -0.5D0, -0.6D0, -0.8D0,-0.71D0,
     :  0.7D0,-0.99D0, 0.99D0, 0.56D0,  0.8D0,-0.56D0,  0.8D0, 0.68D0,
     : -0.7D0, 0.68D0,  0.7D0,-0.95D0,-0.64D0,  0.7D0, 0.64D0,  0.7D0,
     : -0.6D0,  0.7D0, -0.6D0, -0.7D0,-0.91D0, -0.1D0,-0.51D0, 0.76D0,
     :-0.91D0,-0.56D0,  0.7D0, 0.88D0, 0.88D0,-0.63D0, -0.6D0, 0.55D0,
     : -0.6D0, -0.8D0,  0.8D0, -0.8D0,-0.52D0,  0.6D0, 0.52D0,  0.6D0,
     : 0.52D0, -0.6D0,-0.48D0,  0.6D0, 0.48D0,  0.6D0, 0.48D0,  0.6D0,
     :-0.76D0, 0.44D0, -0.6D0, 0.52D0, -0.5D0,-0.52D0,  0.5D0,  0.4D0,
     :  0.6D0, -0.4D0, -0.6D0,  0.4D0, -0.6D0, 0.72D0,-0.72D0,-0.51D0,
     : -0.5D0,-0.48D0,  0.5D0, 0.48D0, -0.5D0,-0.48D0,  0.5D0,-0.48D0,
     :  0.5D0, 0.48D0, -0.5D0,-0.48D0, -0.5D0,-0.68D0,-0.68D0, 0.44D0,
     :  0.5D0,-0.64D0, -0.1D0,-0.64D0, -0.1D0, -0.4D0,  0.5D0,  0.4D0,
     :  0.5D0,  0.4D0,  0.5D0,    0D0,    0D0, -0.4D0, -0.5D0,-0.36D0,
     : -0.5D0, 0.36D0, -0.5D0,  0.6D0, -0.6D0,  0.4D0, -0.4D0,  0.4D0,
     :  0.4D0, -0.4D0,  0.4D0, -0.4D0,  0.4D0,-0.56D0,-0.56D0, 0.36D0,
     : -0.4D0,-0.36D0,  0.4D0, 0.36D0, -0.4D0,-0.36D0, -0.4D0, 0.36D0,
     :  0.4D0, 0.36D0,  0.4D0,-0.52D0, 0.52D0, 0.52D0, 0.32D0,  0.4D0,
     :-0.32D0,  0.4D0,-0.32D0,  0.4D0,-0.32D0,  0.4D0, 0.32D0, -0.4D0 /
      DATA (A(I),I=2082,2233) /
     :-0.32D0, -0.4D0, 0.32D0, -0.4D0, 0.28D0, -0.4D0,-0.28D0,  0.4D0,
     : 0.28D0, -0.4D0, 0.28D0,  0.4D0, 0.48D0,-0.48D0, 0.48D0, 0.36D0,
     : -0.3D0,-0.36D0, -0.3D0,    0D0,    0D0,  0.2D0,  0.4D0,-0.44D0,
     : 0.44D0,-0.44D0,-0.44D0,-0.44D0,-0.44D0, 0.32D0, -0.3D0, 0.32D0,
     :  0.3D0, 0.24D0,  0.3D0,-0.12D0, -0.1D0,-0.28D0,  0.3D0, 0.28D0,
     :  0.3D0, 0.28D0,  0.3D0, 0.28D0, -0.3D0, 0.28D0, -0.3D0, 0.28D0,
     : -0.3D0, 0.28D0,  0.3D0,-0.28D0,  0.3D0,  0.4D0,  0.4D0,-0.24D0,
     :  0.3D0, 0.24D0, -0.3D0, 0.24D0, -0.3D0,-0.24D0, -0.3D0, 0.24D0,
     :  0.3D0, 0.24D0, -0.3D0,-0.24D0,  0.3D0, 0.24D0, -0.3D0,-0.24D0,
     : -0.3D0, 0.24D0, -0.3D0, 0.24D0,  0.3D0,-0.24D0,  0.3D0,-0.24D0,
     :  0.3D0,  0.2D0, -0.3D0,  0.2D0, -0.3D0,  0.2D0, -0.3D0,  0.2D0,
     :  0.3D0,  0.2D0, -0.3D0,  0.2D0, -0.3D0,  0.2D0,  0.3D0,  0.2D0,
     :  0.3D0, -0.2D0, -0.3D0,  0.2D0, -0.3D0,  0.2D0, -0.3D0,-0.36D0,
     :-0.36D0,-0.36D0,-0.04D0,  0.3D0, 0.12D0, -0.1D0,-0.32D0,-0.24D0,
     :  0.2D0, 0.24D0,  0.2D0,  0.2D0, -0.2D0, -0.2D0, -0.2D0, -0.2D0,
     : -0.2D0,  0.2D0,  0.2D0,  0.2D0, -0.2D0,  0.2D0,  0.2D0,  0.2D0,
     :  0.2D0, -0.2D0, -0.2D0,    0D0,    0D0, -0.2D0, -0.2D0, -0.2D0,
     :  0.2D0, -0.2D0,  0.2D0,  0.2D0, -0.2D0, -0.2D0, -0.2D0,  0.2D0,
     :  0.2D0,  0.2D0,  0.2D0,  0.2D0, -0.2D0,  0.2D0, -0.2D0, 0.28D0 /
      DATA (A(I),I=2234,2385) /
     : 0.28D0, 0.28D0, 0.28D0, 0.28D0, 0.28D0,-0.28D0, 0.28D0, 0.12D0,
     :    0D0, 0.24D0, 0.16D0, -0.2D0, 0.16D0, -0.2D0, 0.16D0, -0.2D0,
     : 0.16D0,  0.2D0,-0.16D0,  0.2D0, 0.16D0,  0.2D0,-0.16D0,  0.2D0,
     :-0.16D0,  0.2D0,-0.16D0,  0.2D0, 0.16D0, -0.2D0, 0.16D0,  0.2D0,
     : 0.16D0, -0.2D0,-0.16D0,  0.2D0,-0.16D0, -0.2D0,-0.16D0,  0.2D0,
     : 0.16D0,  0.2D0, 0.16D0, -0.2D0, 0.16D0, -0.2D0, 0.16D0,  0.2D0,
     : 0.16D0,  0.2D0, 0.16D0,  0.2D0,-0.16D0, -0.2D0, 0.16D0,  0.2D0,
     :-0.16D0,  0.2D0, 0.16D0,  0.2D0,-0.16D0, -0.2D0, 0.16D0, -0.2D0,
     : 0.16D0, -0.2D0,-0.16D0, -0.2D0, 0.24D0,-0.24D0,-0.24D0, 0.24D0,
     : 0.24D0, 0.12D0,  0.2D0, 0.12D0,  0.2D0,-0.12D0, -0.2D0, 0.12D0,
     : -0.2D0, 0.12D0, -0.2D0,-0.12D0,  0.2D0,-0.12D0,  0.2D0,-0.12D0,
     : -0.2D0, 0.12D0,  0.2D0, 0.12D0,  0.2D0, 0.12D0, -0.2D0,-0.12D0,
     :  0.2D0, 0.12D0, -0.2D0,-0.12D0,  0.2D0, 0.12D0,  0.2D0,    0D0,
     :    0D0,-0.12D0,  0.2D0,-0.12D0,  0.2D0, 0.12D0, -0.2D0,-0.12D0,
     :  0.2D0, 0.12D0,  0.2D0,    0D0,-0.21D0, -0.2D0,    0D0,    0D0,
     :  0.2D0, -0.2D0, -0.2D0, -0.2D0,  0.2D0,-0.16D0, -0.1D0,    0D0,
     : 0.17D0, 0.16D0, 0.16D0, 0.16D0, 0.16D0,-0.16D0, 0.16D0, 0.16D0,
     :-0.16D0, 0.16D0,-0.16D0, 0.16D0, 0.12D0,  0.1D0, 0.12D0, -0.1D0,
     :-0.12D0,  0.1D0,-0.12D0,  0.1D0, 0.12D0, -0.1D0,-0.12D0, 0.12D0 /
      DATA (A(I),I=2386,2537) /
     :-0.12D0, 0.12D0,-0.12D0, 0.12D0,-0.12D0,-0.12D0,-0.12D0,-0.12D0,
     :-0.12D0,-0.12D0,-0.12D0, 0.12D0, 0.12D0, 0.12D0, 0.12D0,-0.12D0,
     :-0.12D0, 0.12D0, 0.12D0, 0.12D0,-0.12D0, 0.12D0,-0.12D0,-0.12D0,
     :-0.12D0, 0.12D0,-0.12D0,-0.12D0, 0.12D0,    0D0, 0.11D0, 0.11D0,
     :-122.67D0,164.7D0,203.78D0,273.5D0,3.58D0,2.74D0,6.18D0,-4.56D0,
     :    0D0,-0.04D0,    0D0,-0.07D0,57.44D0,-77.1D0,95.82D0,128.6D0,
     :-1.77D0,-1.28D0, 2.85D0,-2.14D0,82.14D0, 89.5D0,    0D0,    0D0,
     :    2D0,-1.84D0,-0.04D0,47.73D0,-64.1D0,23.79D0, 31.9D0,-1.45D0,
     :-1.07D0, 0.69D0,-0.53D0,-46.38D0,50.5D0,    0D0,    0D0, 1.13D0,
     : 1.04D0, 0.02D0,-18.38D0,   0D0, 63.8D0,    0D0,    0D0, 0.41D0,
     :    0D0,-1.43D0,59.07D0,    0D0,    0D0,    0D0,    0D0,-1.32D0,
     :57.28D0,    0D0,    0D0,    0D0,    0D0,-1.28D0,-48.65D0,   0D0,
     :-1.15D0,    0D0,    0D0, 1.09D0,    0D0, 0.03D0,-18.3D0, 24.6D0,
     :-17.3D0,-23.2D0, 0.56D0, 0.41D0,-0.51D0, 0.39D0,-16.91D0,26.9D0,
     : 8.43D0, 13.3D0,  0.6D0, 0.38D0, 0.31D0,-0.19D0, 1.23D0, -1.7D0,
     :-19.13D0,-25.7D0,-0.03D0,-0.03D0,-0.58D0,0.43D0,-0.72D0,  0.9D0,
     :-17.34D0,-23.3D0,0.03D0, 0.02D0,-0.52D0, 0.39D0,-19.49D0,-21.3D0,
     :    0D0,    0D0,-0.48D0, 0.44D0, 0.01D0,20.57D0,-20.1D0, 0.64D0,
     :  0.7D0,-0.45D0,-0.46D0,    0D0,-0.01D0, 4.89D0,  5.9D0,-16.55D0 /
      DATA (A(I),I=2538,2689) /
     : 19.9D0, 0.14D0,-0.11D0, 0.44D0, 0.37D0,18.22D0, 19.8D0,    0D0,
     :    0D0, 0.44D0,-0.41D0,-0.01D0, 4.89D0, -5.3D0,-16.51D0, -18D0,
     :-0.11D0,-0.11D0,-0.41D0, 0.37D0,-17.86D0,   0D0, 17.1D0,    0D0,
     :    0D0,  0.4D0,    0D0,-0.38D0, 0.32D0,    0D0,24.42D0,    0D0,
     :    0D0,-0.01D0,    0D0,-0.55D0,-23.79D0,   0D0,    0D0,    0D0,
     :    0D0, 0.53D0,14.72D0,  -16D0,-0.32D0,    0D0,-0.36D0,-0.33D0,
     :-0.01D0, 0.01D0, 3.34D0, -4.5D0,11.86D0, 15.9D0,-0.11D0,-0.07D0,
     : 0.35D0,-0.27D0,-3.26D0,  4.4D0,11.62D0, 15.6D0, 0.09D0, 0.07D0,
     : 0.35D0,-0.26D0,-19.53D0,   0D0, 5.09D0,    0D0,    0D0, 0.44D0,
     :    0D0,-0.11D0,-13.48D0,14.7D0,    0D0,    0D0, 0.33D0,  0.3D0,
     : 0.01D0,10.86D0,-14.6D0, 3.18D0,  4.3D0,-0.33D0,-0.24D0, 0.09D0,
     :-0.07D0,-11.3D0,-15.1D0,    0D0,    0D0,-0.34D0, 0.25D0, 0.01D0,
     : 2.03D0, -2.7D0,10.82D0, 14.5D0,-0.07D0,-0.05D0, 0.32D0,-0.24D0,
     :17.46D0,    0D0,    0D0,    0D0,    0D0,-0.39D0,16.43D0,    0D0,
     : 0.52D0,    0D0,    0D0,-0.37D0,    0D0,-0.01D0, 9.35D0,    0D0,
     :13.29D0,    0D0,    0D0,-0.21D0,    0D0, -0.3D0,-10.42D0,11.4D0,
     :    0D0,    0D0, 0.25D0, 0.23D0, 0.01D0, 0.44D0,  0.5D0,-10.38D0,
     : 11.3D0, 0.02D0,-0.01D0, 0.25D0, 0.23D0,-14.64D0,   0D0,    0D0,
     :    0D0,    0D0, 0.33D0, 0.56D0,  0.8D0,-8.67D0, 11.7D0, 0.02D0 /
      DATA (A(I),I=2690,2841) /
     :-0.01D0, 0.26D0, 0.19D0,13.88D0,    0D0,-2.47D0,    0D0,    0D0,
     :-0.31D0,    0D0, 0.06D0,-1.99D0,  2.7D0, 7.72D0, 10.3D0, 0.06D0,
     : 0.04D0, 0.23D0,-0.17D0, -0.2D0,    0D0,13.05D0,    0D0,    0D0,
     :    0D0,    0D0,-0.29D0, 6.92D0, -9.3D0, 3.34D0,  4.5D0,-0.21D0,
     :-0.15D0,  0.1D0,-0.07D0, -6.6D0,    0D0, 10.7D0,    0D0,    0D0,
     : 0.15D0,    0D0,-0.24D0,-8.04D0, -8.7D0,    0D0,    0D0,-0.19D0,
     : 0.18D0,-10.58D0,   0D0, -3.1D0,    0D0,    0D0, 0.24D0,    0D0,
     : 0.07D0,-7.32D0,    8D0,-0.12D0, -0.1D0, 0.18D0, 0.16D0, 1.63D0,
     :  1.7D0, 6.96D0, -7.6D0, 0.03D0,-0.04D0,-0.17D0,-0.16D0,-3.62D0,
     :    0D0, 9.86D0,    0D0,    0D0, 0.08D0,    0D0,-0.22D0,  0.2D0,
     : -0.2D0,-6.88D0, -7.5D0,    0D0,    0D0,-0.17D0, 0.15D0,-8.99D0,
     :    0D0, 4.02D0,    0D0,    0D0,  0.2D0,    0D0,-0.09D0,-1.07D0,
     :  1.4D0,-5.69D0, -7.7D0, 0.03D0, 0.02D0,-0.17D0, 0.13D0, 6.48D0,
     : -7.2D0,-0.48D0, -0.5D0,-0.16D0,-0.14D0,-0.01D0, 0.01D0, 5.57D0,
     : -7.5D0, 1.07D0,  1.4D0,-0.17D0,-0.12D0, 0.03D0,-0.02D0, 8.71D0,
     :    0D0, 3.54D0,    0D0,    0D0,-0.19D0,    0D0,-0.08D0,  0.4D0,
     :    0D0, 9.27D0,    0D0,    0D0,-0.01D0,    0D0,-0.21D0,-6.13D0,
     :  6.7D0,-1.19D0, -1.3D0, 0.15D0, 0.14D0,-0.03D0, 0.03D0, 5.21D0,
     : -5.7D0,-2.51D0, -2.6D0,-0.13D0,-0.12D0,-0.06D0, 0.06D0, 5.69D0 /
      DATA (A(I),I=2842,2993) /
     : -6.2D0,-0.12D0, -0.1D0,-0.14D0,-0.13D0,-0.01D0, 2.03D0, -2.7D0,
     : 4.53D0,  6.1D0,-0.06D0,-0.05D0, 0.14D0, -0.1D0, 5.01D0,  5.5D0,
     :-2.51D0,  2.7D0, 0.12D0,-0.11D0, 0.06D0, 0.06D0,-1.91D0,  2.6D0,
     :-4.38D0, -5.9D0, 0.06D0, 0.04D0,-0.13D0,  0.1D0, 4.65D0, -6.3D0,
     :    0D0,    0D0,-0.14D0, -0.1D0,-5.29D0,  5.7D0,    0D0,    0D0,
     : 0.13D0, 0.12D0,-2.23D0,   -4D0,-4.65D0,  4.2D0,-0.09D0, 0.05D0,
     :  0.1D0,  0.1D0,-4.53D0,  6.1D0,    0D0,    0D0, 0.14D0,  0.1D0,
     : 2.47D0,  2.7D0,-4.46D0,  4.9D0, 0.06D0,-0.06D0, 0.11D0,  0.1D0,
     :-5.05D0,  5.5D0, 0.84D0,  0.9D0, 0.12D0, 0.11D0, 0.02D0,-0.02D0,
     : 4.97D0, -5.4D0,-1.71D0,    0D0,-0.12D0,-0.11D0,    0D0, 0.04D0,
     :-0.99D0, -1.3D0, 4.22D0, -5.7D0,-0.03D0, 0.02D0,-0.13D0,-0.09D0,
     : 0.99D0,  1.4D0, 4.22D0, -5.6D0, 0.03D0,-0.02D0,-0.13D0,-0.09D0,
     :-4.69D0, -5.2D0,    0D0,    0D0,-0.12D0,  0.1D0,-3.42D0,    0D0,
     : 6.09D0,    0D0,    0D0, 0.08D0,    0D0,-0.14D0,-4.65D0, -5.1D0,
     :    0D0,    0D0,-0.11D0,  0.1D0,    0D0,    0D0,-4.53D0,   -5D0,
     :    0D0,    0D0,-0.11D0,  0.1D0,-2.43D0, -2.7D0,-3.82D0,  4.2D0,
     :-0.06D0, 0.05D0,  0.1D0, 0.09D0,    0D0,    0D0,-4.53D0,  4.9D0,
     :    0D0,    0D0, 0.11D0,  0.1D0,-4.49D0, -4.9D0,    0D0,    0D0,
     :-0.11D0,  0.1D0, 2.67D0, -2.9D0,-3.62D0, -3.9D0,-0.06D0,-0.06D0 /
      DATA (A(I),I=2994,3145) /
     :-0.09D0, 0.08D0, 3.94D0, -5.3D0,    0D0,    0D0,-0.12D0,-3.38D0,
     :  3.7D0,-2.78D0, -3.1D0, 0.08D0, 0.08D0,-0.07D0, 0.06D0, 3.18D0,
     : -3.5D0,-2.82D0, -3.1D0,-0.08D0,-0.07D0,-0.07D0, 0.06D0,-5.77D0,
     :    0D0, 1.87D0,    0D0,    0D0, 0.13D0,    0D0,-0.04D0, 3.54D0,
     : -4.8D0,-0.64D0, -0.9D0,-0.11D0,    0D0,-0.02D0, -3.5D0, -4.7D0,
     : 0.68D0, -0.9D0,-0.11D0,    0D0,-0.02D0, 5.49D0,    0D0,    0D0,
     :    0D0,    0D0,-0.12D0, 1.83D0, -2.5D0, 2.63D0,  3.5D0,-0.06D0,
     :    0D0, 0.08D0, 3.02D0, -4.1D0, 0.68D0,  0.9D0,-0.09D0,    0D0,
     : 0.02D0,    0D0,    0D0, 5.21D0,    0D0,    0D0,    0D0,    0D0,
     :-0.12D0,-3.54D0,  3.8D0,  2.7D0,  3.6D0,-1.35D0,  1.8D0, 0.08D0,
     :    0D0, 0.04D0, -2.9D0,  3.9D0, 0.68D0,  0.9D0, 0.09D0,    0D0,
     : 0.02D0,  0.8D0, -1.1D0,-2.78D0, -3.7D0,-0.02D0,    0D0,-0.08D0,
     :  4.1D0,    0D0,-2.39D0,    0D0,    0D0,-0.09D0,    0D0, 0.05D0,
     :-1.59D0,  2.1D0, 2.27D0,    3D0, 0.05D0,    0D0, 0.07D0,-2.63D0,
     :  3.5D0,-0.48D0, -0.6D0,-2.94D0, -3.2D0,-2.94D0,  3.2D0, 2.27D0,
     :   -3D0,-1.11D0, -1.5D0,-0.07D0,    0D0,-0.03D0,-0.56D0, -0.8D0,
     :-2.35D0,  3.1D0,    0D0, -0.6D0,-3.42D0,  1.9D0,-0.12D0, -0.1D0,
     : 2.63D0, -2.9D0, 2.51D0,  2.8D0,-0.64D0,  0.7D0,-0.48D0, -0.6D0,
     : 2.19D0, -2.9D0, 0.24D0, -0.3D0, 2.15D0,  2.9D0, 2.15D0, -2.9D0 /
      DATA (A(I),I=3146,3297) /
     : 0.52D0,  0.7D0, 2.07D0, -2.8D0, -3.1D0,    0D0, 1.79D0,    0D0,
     :    0D0, 0.07D0,    0D0,-0.04D0, 0.88D0,    0D0,-3.46D0, 2.11D0,
     :  2.8D0,-0.36D0,  0.5D0, 3.54D0, -0.2D0, -3.5D0,-1.39D0,  1.5D0,
     :-1.91D0, -2.1D0,-1.47D0,    2D0, 1.39D0,  1.9D0, 2.07D0, -2.3D0,
     : 0.91D0,    1D0, 1.99D0, -2.7D0,  3.3D0,    0D0,  0.6D0,-0.44D0,
     : -0.7D0,-1.95D0,  2.6D0, 2.15D0, -2.4D0, -0.6D0, -0.7D0,  3.3D0,
     : 0.84D0,    0D0, -3.1D0, -3.1D0,    0D0,-0.72D0,-0.32D0,  0.4D0,
     :-1.87D0, -2.5D0, 1.87D0, -2.5D0, 0.32D0,  0.4D0,-0.24D0,  0.3D0,
     :-1.87D0, -2.5D0,-0.24D0, -0.3D0, 1.87D0, -2.5D0, -2.7D0,    0D0,
     : 1.55D0, 2.03D0,  2.2D0,-2.98D0,-1.99D0, -2.2D0, 0.12D0, -0.1D0,
     : -0.4D0,  0.5D0, 1.59D0,  2.1D0,    0D0,    0D0,-1.79D0,    2D0,
     :-1.03D0,  1.4D0,-1.15D0, -1.6D0, 0.32D0,  0.5D0, 1.39D0, -1.9D0,
     : 2.35D0,-1.27D0,  1.7D0,  0.6D0,  0.8D0,-0.32D0, -0.4D0, 1.35D0,
     : -1.8D0, 0.44D0,    0D0, 2.23D0,-0.84D0,  0.9D0,-1.27D0, -1.4D0,
     :-1.47D0,  1.6D0,-0.28D0, -0.3D0,-0.28D0,  0.4D0,-1.27D0, -1.7D0,
     : 0.28D0, -0.4D0,-1.43D0, -1.5D0,    0D0,    0D0,-1.27D0, -1.7D0,
     : 2.11D0,-0.32D0, -0.4D0,-1.23D0,  1.6D0, 1.19D0, -1.3D0,-0.72D0,
     : -0.8D0, 0.72D0, -0.8D0,-1.15D0, -1.3D0,-1.35D0, -1.5D0,-1.19D0,
     : -1.6D0,-0.12D0,  0.2D0, 1.79D0,    0D0,-0.88D0,-0.28D0,  0.4D0 /
      DATA (A(I),I=3298,3449) /
     : 1.11D0,  1.5D0,-1.83D0,    0D0, 0.56D0,-0.12D0,  0.1D0,-1.27D0,
     : -1.4D0,    0D0,    0D0, 1.15D0,  1.5D0,-0.12D0,  0.2D0, 1.11D0,
     :  1.5D0, 0.36D0, -0.5D0,-1.07D0, -1.4D0,-1.11D0,  1.5D0, 1.67D0,
     :    0D0,  0.8D0,-1.11D0,    0D0, 1.43D0, 1.23D0, -1.3D0,-0.24D0,
     :-1.19D0, -1.3D0,-0.24D0,  0.2D0,-0.44D0, -0.9D0,-0.95D0,  1.1D0,
     : 1.07D0, -1.4D0, 1.15D0, -1.3D0, 1.03D0, -1.1D0,-0.56D0, -0.6D0,
     :-0.68D0,  0.9D0,-0.76D0,   -1D0,-0.24D0, -0.3D0, 0.95D0, -1.3D0,
     : 0.56D0,  0.7D0, 0.84D0, -1.1D0,-0.56D0,    0D0,-1.55D0, 0.91D0,
     : -1.3D0, 0.28D0,  0.3D0, 0.16D0, -0.2D0, 0.95D0,  1.3D0,  0.4D0,
     : -0.5D0,-0.88D0, -1.2D0, 0.95D0, -1.1D0,-0.48D0, -0.5D0,    0D0,
     :    0D0,-1.07D0,  1.2D0, 0.44D0, -0.5D0, 0.95D0,  1.1D0,    0D0,
     :    0D0, 0.92D0, -1.3D0, 0.95D0,    1D0,-0.52D0,  0.6D0, 1.59D0,
     : 0.24D0, -0.4D0, 0.91D0,  1.2D0, 0.84D0, -1.1D0,-0.44D0, -0.6D0,
     : 0.84D0,  1.1D0,-0.44D0,  0.6D0,-0.44D0,  0.6D0,-0.84D0, -1.1D0,
     : -0.8D0,    0D0, 1.35D0, 0.76D0,  0.2D0,-0.91D0,   -1D0,  0.2D0,
     : -0.3D0,-0.91D0, -1.2D0,-0.95D0,    1D0,-0.48D0, -0.5D0, 0.88D0,
     :    1D0, 0.48D0, -0.5D0,-0.95D0, -1.1D0,  0.2D0, -0.2D0,-0.99D0,
     :  1.1D0,-0.84D0,  1.1D0,-0.24D0, -0.3D0,  0.2D0, -0.3D0, 0.84D0,
     :  1.1D0,-1.39D0,    0D0,-0.28D0,-0.16D0,  0.2D0, 0.84D0,  1.1D0 /
      DATA (A(I),I=3450,3601) /
     :    0D0,    0D0, 1.39D0,    0D0,    0D0,-0.95D0,    1D0, 1.35D0,
     :-0.99D0,    0D0, 0.88D0,-0.52D0,    0D0,-1.19D0,  0.2D0,  0.2D0,
     : 0.76D0,   -1D0,    0D0,    0D0, 0.76D0,    1D0,    0D0,    0D0,
     : 0.76D0,    1D0,-0.76D0,    1D0,    0D0,    0D0, 1.23D0, 0.76D0,
     :  0.8D0,-0.32D0,  0.4D0,-0.72D0,  0.8D0, -0.4D0, -0.4D0,    0D0,
     :    0D0, -0.8D0, -0.9D0,-0.68D0,  0.9D0,-0.16D0, -0.2D0,-0.16D0,
     : -0.2D0, 0.68D0, -0.9D0,-0.36D0,  0.5D0,-0.56D0, -0.8D0, 0.72D0,
     : -0.9D0, 0.44D0, -0.6D0,-0.48D0, -0.7D0,-0.16D0,    0D0,-1.11D0,
     : 0.32D0,    0D0,-1.07D0,  0.6D0, -0.8D0,-0.28D0, -0.4D0,-0.64D0,
     :    0D0, 0.91D0, 1.11D0, 0.64D0, -0.9D0, 0.76D0, -0.8D0,    0D0,
     :    0D0,-0.76D0, -0.8D0, 1.03D0,    0D0,-0.36D0,-0.64D0, -0.7D0,
     : 0.36D0, -0.4D0, 1.07D0, 0.36D0, -0.5D0,-0.52D0, -0.7D0,  0.6D0,
     :    0D0, 0.88D0, 0.95D0,    0D0, 0.48D0, 0.16D0, -0.2D0,  0.6D0,
     :  0.8D0, 0.16D0, -0.2D0, -0.6D0, -0.8D0,    0D0,   -1D0, 0.12D0,
     :  0.2D0, 0.16D0, -0.2D0, 0.68D0,  0.7D0, 0.59D0, -0.8D0,-0.99D0,
     :-0.56D0, -0.6D0, 0.36D0, -0.4D0,-0.68D0, -0.7D0,-0.68D0, -0.7D0,
     :-0.36D0, -0.5D0,-0.44D0,  0.6D0, 0.64D0,  0.7D0,-0.12D0,  0.1D0,
     :-0.52D0,  0.6D0, 0.36D0,  0.4D0,    0D0,    0D0, 0.95D0,-0.84D0,
     :    0D0, 0.44D0, 0.56D0,  0.6D0, 0.32D0, -0.3D0,    0D0,    0D0 /
      DATA (A(I),I=3602,3753) /
     :  0.6D0,  0.7D0,    0D0,    0D0,  0.6D0,  0.7D0,-0.12D0, -0.2D0,
     : 0.52D0, -0.7D0,    0D0,    0D0, 0.56D0,  0.7D0,-0.12D0,  0.1D0,
     :-0.52D0, -0.7D0,    0D0,    0D0, 0.88D0,-0.76D0,    0D0,-0.44D0,
     :    0D0,    0D0,-0.52D0, -0.7D0, 0.52D0, -0.7D0, 0.36D0, -0.4D0,
     :-0.44D0, -0.5D0,    0D0,    0D0,  0.6D0,  0.6D0, 0.84D0,    0D0,
     : 0.12D0,-0.24D0,    0D0,  0.8D0,-0.56D0,  0.6D0,-0.32D0, -0.3D0,
     : 0.48D0, -0.5D0, 0.28D0, -0.3D0,-0.48D0, -0.5D0, 0.12D0,  0.2D0,
     : 0.48D0, -0.6D0, 0.48D0,  0.6D0,-0.12D0,  0.2D0, 0.24D0,    0D0,
     : 0.76D0,-0.52D0, -0.6D0,-0.52D0,  0.6D0, 0.48D0, -0.5D0,-0.24D0,
     : -0.3D0, 0.12D0, -0.1D0, 0.48D0,  0.6D0, 0.52D0, -0.2D0, 0.36D0,
     :  0.4D0,-0.44D0,  0.5D0,-0.24D0, -0.3D0,-0.48D0, -0.6D0,-0.44D0,
     : -0.6D0,-0.12D0,  0.1D0, 0.76D0, 0.76D0,  0.2D0, -0.2D0, 0.48D0,
     :  0.5D0,  0.4D0, -0.5D0,-0.24D0, -0.3D0, 0.44D0, -0.6D0, 0.44D0,
     : -0.6D0, 0.36D0,    0D0,-0.64D0, 0.72D0,    0D0,-0.12D0,    0D0,
     : -0.1D0, -0.4D0, -0.6D0, -0.2D0, -0.2D0,-0.44D0,  0.5D0,-0.44D0,
     :  0.5D0,  0.2D0,  0.2D0,-0.44D0, -0.5D0,  0.2D0, -0.2D0, -0.2D0,
     :  0.2D0,-0.44D0, -0.5D0, 0.64D0,    0D0, 0.32D0,-0.36D0,  0.5D0,
     : -0.2D0, -0.3D0, 0.12D0, -0.1D0, 0.48D0,  0.5D0,-0.12D0,  0.3D0,
     :-0.36D0, -0.5D0,    0D0,    0D0, 0.48D0,  0.5D0,-0.48D0,  0.5D0 /
      DATA (A(I),I=3754,3905) /
     : 0.68D0,    0D0,-0.12D0, 0.56D0, -0.4D0, 0.44D0, -0.5D0,-0.12D0,
     : -0.1D0, 0.24D0,  0.3D0, -0.4D0,  0.4D0, 0.64D0,    0D0,-0.24D0,
     : 0.64D0,    0D0, -0.2D0,    0D0,    0D0, 0.44D0, -0.5D0, 0.44D0,
     :  0.5D0,-0.12D0,  0.2D0,-0.36D0, -0.5D0, 0.12D0,    0D0, 0.64D0,
     : -0.4D0,  0.5D0,    0D0,  0.1D0,    0D0,    0D0, -0.4D0,  0.5D0,
     :    0D0,    0D0, -0.4D0, -0.5D0, 0.56D0,    0D0, 0.28D0,    0D0,
     :  0.1D0, 0.36D0,  0.5D0,    0D0, -0.1D0, 0.36D0, -0.5D0, 0.36D0,
     :  0.5D0,    0D0, -0.1D0, 0.24D0, -0.2D0,-0.36D0, -0.4D0, 0.16D0,
     :  0.2D0,  0.4D0, -0.4D0,    0D0,    0D0,-0.36D0, -0.5D0,-0.36D0,
     : -0.5D0,-0.32D0, -0.5D0,-0.12D0,  0.1D0,  0.2D0,  0.2D0,-0.36D0,
     :  0.4D0, -0.6D0,  0.6D0, 0.28D0,    0D0, 0.52D0, 0.12D0, -0.1D0,
     :  0.4D0,  0.4D0,    0D0, -0.5D0,  0.2D0, -0.2D0,-0.32D0,  0.4D0,
     : 0.16D0,  0.2D0,-0.16D0,  0.2D0, 0.32D0,  0.4D0, 0.56D0,    0D0,
     :-0.12D0, 0.32D0, -0.4D0,-0.16D0, -0.2D0,    0D0,    0D0,  0.4D0,
     :  0.4D0, -0.4D0, -0.4D0, -0.4D0,  0.4D0,-0.36D0,  0.4D0, 0.12D0,
     :  0.1D0,    0D0,  0.1D0, 0.36D0,  0.4D0,    0D0, -0.1D0, 0.36D0,
     :  0.4D0,-0.36D0,  0.4D0,    0D0,  0.1D0, 0.32D0,    0D0, 0.44D0,
     : 0.12D0,  0.2D0, 0.28D0, -0.4D0,    0D0,    0D0, 0.36D0,  0.4D0,
     : 0.32D0, -0.4D0,-0.16D0, 0.12D0,  0.1D0, 0.32D0, -0.4D0,  0.2D0 /
      DATA (A(I),I=3906,4057) /
     :  0.3D0,-0.24D0,  0.3D0,    0D0,  0.1D0, 0.32D0,  0.4D0,    0D0,
     : -0.1D0,-0.32D0, -0.4D0,-0.32D0,  0.4D0,    0D0,  0.1D0,-0.52D0,
     :-0.52D0, 0.52D0, 0.32D0, -0.4D0,    0D0,    0D0, 0.32D0,  0.4D0,
     : 0.32D0, -0.4D0,    0D0,    0D0,-0.32D0, -0.4D0,-0.32D0,  0.4D0,
     : 0.32D0,  0.4D0,    0D0,    0D0, 0.32D0,  0.4D0,    0D0,    0D0,
     :-0.32D0, -0.4D0,    0D0,    0D0, 0.32D0,  0.4D0, 0.16D0,  0.2D0,
     : 0.32D0, -0.3D0,-0.16D0,    0D0,-0.48D0, -0.2D0,  0.2D0,-0.28D0,
     : -0.3D0, 0.28D0, -0.4D0,    0D0,    0D0, 0.28D0, -0.4D0,    0D0,
     :    0D0, 0.28D0, -0.4D0,    0D0,    0D0,-0.28D0, -0.4D0, 0.28D0,
     :  0.4D0,-0.28D0, -0.4D0,-0.48D0, -0.2D0,  0.2D0, 0.24D0,  0.3D0,
     : 0.44D0,    0D0, 0.16D0, 0.24D0,  0.3D0, 0.16D0, -0.2D0, 0.24D0,
     :  0.3D0,-0.12D0,  0.2D0,  0.2D0,  0.3D0,-0.16D0,  0.2D0,    0D0,
     :    0D0, 0.44D0,-0.32D0,  0.3D0, 0.24D0,    0D0,-0.36D0, 0.36D0,
     :    0D0, 0.24D0, 0.12D0, -0.2D0,  0.2D0,  0.3D0,-0.12D0,    0D0,
     :-0.28D0,  0.3D0,-0.24D0,  0.3D0, 0.12D0,  0.1D0,-0.28D0, -0.3D0,
     :-0.28D0,  0.3D0,    0D0,    0D0,-0.28D0, -0.3D0,    0D0,    0D0,
     :-0.28D0, -0.3D0,    0D0,    0D0, 0.28D0,  0.3D0,    0D0,    0D0,
     :-0.28D0, -0.3D0,-0.28D0,  0.3D0,    0D0,    0D0,-0.28D0, -0.3D0,
     :    0D0,    0D0, 0.28D0,  0.3D0,    0D0,    0D0,-0.28D0,  0.3D0 /
      DATA (A(I),I=4058,4209) /
     : 0.28D0, -0.3D0,-0.28D0,  0.3D0,  0.4D0,  0.4D0,-0.24D0,  0.3D0,
     :    0D0, -0.1D0, 0.16D0,    0D0, 0.36D0, -0.2D0,  0.3D0,-0.12D0,
     : -0.1D0,-0.24D0, -0.3D0,    0D0,    0D0,-0.24D0,  0.3D0,-0.24D0,
     :  0.3D0,    0D0,    0D0,-0.24D0,  0.3D0,-0.24D0,  0.3D0, 0.24D0,
     : -0.3D0,    0D0,    0D0, 0.24D0, -0.3D0,    0D0,    0D0, 0.24D0,
     :  0.3D0, 0.24D0, -0.3D0, 0.24D0,  0.3D0,-0.24D0,  0.3D0,-0.24D0,
     :  0.3D0, -0.2D0,  0.2D0,-0.16D0, -0.2D0,    0D0,    0D0,-0.32D0,
     :  0.2D0,    0D0,  0.1D0,  0.2D0, -0.3D0,  0.2D0, -0.2D0, 0.12D0,
     :  0.2D0,-0.16D0,  0.2D0, 0.16D0,  0.2D0,  0.2D0,  0.3D0,  0.2D0,
     :  0.3D0,    0D0,    0D0, -0.2D0,  0.3D0,    0D0,    0D0,  0.2D0,
     :  0.3D0, -0.2D0, -0.3D0, -0.2D0, -0.3D0,  0.2D0, -0.3D0,    0D0,
     :    0D0,  0.2D0,  0.3D0,    0D0,    0D0,  0.2D0,  0.3D0,    0D0,
     :    0D0,  0.2D0,  0.3D0,    0D0,    0D0,  0.2D0,  0.3D0,    0D0,
     :    0D0,  0.2D0, -0.3D0,    0D0,    0D0, -0.2D0, -0.3D0,    0D0,
     :    0D0, -0.2D0,  0.3D0,    0D0,    0D0, -0.2D0,  0.3D0,    0D0,
     :    0D0, 0.36D0,    0D0,    0D0, 0.36D0, 0.12D0,  0.1D0,-0.24D0,
     :  0.2D0, 0.12D0, -0.2D0,-0.16D0, -0.2D0,-0.13D0,  0.1D0, 0.22D0,
     : 0.21D0,  0.2D0,    0D0,-0.28D0, 0.32D0,    0D0,-0.12D0, -0.2D0,
     : -0.2D0, 0.12D0, -0.1D0, 0.12D0,  0.1D0, -0.2D0,  0.2D0,    0D0 /
      DATA (A(I),I=4210,4361) /
     :    0D0,-0.32D0, 0.32D0,    0D0,    0D0, 0.32D0, 0.32D0,    0D0,
     :    0D0,-0.24D0, -0.2D0, 0.24D0,  0.2D0,  0.2D0,    0D0,-0.24D0,
     :    0D0,    0D0,-0.24D0, -0.2D0,    0D0,    0D0, 0.24D0,  0.2D0,
     :-0.24D0, -0.2D0,    0D0,    0D0,-0.24D0,  0.2D0, 0.16D0, -0.2D0,
     : 0.12D0,  0.1D0,  0.2D0,  0.2D0,    0D0, -0.1D0,-0.12D0,  0.1D0,
     :-0.16D0, -0.2D0,-0.12D0, -0.1D0,-0.16D0,  0.2D0,  0.2D0,  0.2D0,
     :    0D0,    0D0, -0.2D0,  0.2D0, -0.2D0,  0.2D0, -0.2D0,  0.2D0,
     : -0.2D0,  0.2D0,  0.2D0, -0.2D0, -0.2D0, -0.2D0,    0D0,    0D0,
     : -0.2D0,  0.2D0,  0.2D0,    0D0, -0.2D0,    0D0,    0D0, -0.2D0,
     :  0.2D0, -0.2D0,  0.2D0, -0.2D0, -0.2D0, -0.2D0, -0.2D0,    0D0,
     :    0D0,  0.2D0,  0.2D0,  0.2D0,  0.2D0, 0.12D0, -0.2D0,-0.12D0,
     : -0.1D0, 0.28D0,-0.28D0, 0.16D0, -0.2D0,    0D0, -0.1D0,    0D0,
     :  0.1D0,-0.16D0,  0.2D0,    0D0, -0.1D0,-0.16D0, -0.2D0,    0D0,
     : -0.1D0, 0.16D0, -0.2D0, 0.16D0, -0.2D0,    0D0,    0D0, 0.16D0,
     :  0.2D0,-0.16D0,  0.2D0,    0D0,    0D0, 0.16D0,  0.2D0, 0.16D0,
     : -0.2D0, 0.16D0, -0.2D0,-0.16D0,  0.2D0, 0.16D0, -0.2D0,    0D0,
     :    0D0, 0.16D0,  0.2D0,    0D0,    0D0, 0.16D0,  0.2D0,    0D0,
     :    0D0,-0.16D0, -0.2D0, 0.16D0, -0.2D0,-0.16D0, -0.2D0,    0D0,
     :    0D0,-0.16D0, -0.2D0,    0D0,    0D0,-0.16D0,  0.2D0,    0D0 /
      DATA (A(I),I=4362,4513) /
     :    0D0, 0.16D0, -0.2D0, 0.16D0,  0.2D0, 0.16D0,  0.2D0,    0D0,
     :    0D0,-0.16D0, -0.2D0,    0D0,    0D0,-0.16D0, -0.2D0,    0D0,
     :    0D0, 0.16D0,  0.2D0, 0.16D0,  0.2D0,    0D0,    0D0, 0.16D0,
     :  0.2D0, 0.16D0, -0.2D0, 0.16D0,  0.2D0,    0D0,    0D0,-0.16D0,
     :  0.2D0,    0D0,  0.1D0, 0.12D0, -0.2D0, 0.12D0, -0.2D0,    0D0,
     : -0.1D0,    0D0, -0.1D0, 0.12D0,  0.2D0,    0D0, -0.1D0,-0.12D0,
     :  0.2D0,-0.15D0,  0.2D0,-0.24D0, 0.24D0,    0D0,    0D0, 0.24D0,
     : 0.24D0, 0.12D0, -0.2D0,-0.12D0, -0.2D0,    0D0,    0D0, 0.12D0,
     :  0.2D0, 0.12D0, -0.2D0, 0.12D0,  0.2D0, 0.12D0,  0.2D0, 0.12D0,
     :  0.2D0, 0.12D0, -0.2D0,-0.12D0,  0.2D0,    0D0,    0D0, 0.12D0,
     :  0.2D0, 0.12D0,    0D0, -0.2D0,    0D0,    0D0,-0.12D0, -0.2D0,
     : 0.12D0, -0.2D0,    0D0,    0D0, 0.12D0,  0.2D0,-0.12D0,  0.2D0,
     :-0.12D0,  0.2D0, 0.12D0, -0.2D0,    0D0,    0D0, 0.12D0,  0.2D0,
     :  0.2D0,    0D0, 0.12D0,    0D0,    0D0,-0.12D0,  0.2D0,    0D0,
     :    0D0,-0.12D0, -0.2D0,    0D0,    0D0,-0.12D0, -0.2D0,-0.12D0,
     : -0.2D0,    0D0,    0D0, 0.12D0, -0.2D0, 0.12D0, -0.2D0, 0.12D0,
     :  0.2D0,-0.12D0, -0.2D0,    0D0,    0D0, 0.12D0, -0.2D0, 0.12D0,
     : -0.2D0, 0.12D0,  0.2D0, 0.12D0,    0D0,  0.2D0,-0.12D0, -0.2D0,
     :    0D0,    0D0, 0.12D0,  0.2D0,-0.16D0,    0D0, 0.16D0, -0.2D0 /
      DATA (A(I),I=4514,4665) /
     :  0.2D0,    0D0,    0D0, -0.2D0,    0D0,    0D0, -0.2D0,  0.2D0,
     :    0D0,    0D0,  0.2D0,  0.2D0, -0.2D0,    0D0,    0D0, -0.2D0,
     : 0.12D0,    0D0,-0.16D0,  0.2D0,    0D0,    0D0,  0.2D0, 0.12D0,
     : -0.1D0,    0D0,  0.1D0, 0.16D0,-0.16D0,-0.16D0,-0.16D0,-0.16D0,
     :-0.16D0,    0D0,    0D0,-0.16D0,    0D0,    0D0,-0.16D0,-0.16D0,
     :-0.16D0,    0D0,    0D0,-0.16D0,    0D0,    0D0, 0.16D0,    0D0,
     :    0D0, 0.16D0,    0D0,    0D0, 0.16D0, 0.16D0,    0D0,    0D0,
     :-0.16D0,    0D0,    0D0,-0.16D0,-0.16D0,    0D0,    0D0, 0.16D0,
     :    0D0,    0D0,-0.16D0,-0.16D0,    0D0,    0D0,-0.16D0,-0.16D0,
     : 0.12D0,  0.1D0, 0.12D0, -0.1D0, 0.12D0,  0.1D0,    0D0,    0D0,
     : 0.12D0,  0.1D0,-0.12D0,  0.1D0,    0D0,    0D0, 0.12D0,  0.1D0,
     : 0.12D0, -0.1D0,    0D0,    0D0,-0.12D0, -0.1D0,    0D0,    0D0,
     : 0.12D0,  0.1D0, 0.12D0,    0D0,    0D0, 0.12D0,    0D0,    0D0,
     :-0.12D0,    0D0,    0D0, 0.12D0, 0.12D0, 0.12D0, 0.12D0, 0.12D0,
     :    0D0,    0D0, 0.12D0,    0D0,    0D0, 0.12D0, 0.12D0,    0D0,
     :    0D0, 0.12D0,    0D0,    0D0, 0.12D0,-0.12D0,-0.12D0, 0.12D0,
     : 0.12D0,-0.12D0,-0.12D0,    0D0,    0D0, 0.12D0,-0.12D0, 0.12D0,
     : 0.12D0,-0.12D0,-0.12D0,    0D0,    0D0,-0.12D0,-0.12D0,    0D0,
     :    0D0,-0.12D0, 0.12D0,    0D0,    0D0, 0.12D0,    0D0,    0D0 /
      DATA (A(I),I=4666,NA) /
     : 0.12D0,    0D0,    0D0, 0.12D0,-0.12D0,    0D0,    0D0,-0.12D0,
     : 0.12D0,-0.12D0,-0.12D0, 0.12D0,    0D0,    0D0, 0.12D0, 0.12D0,
     : 0.12D0,-0.12D0,    0D0,    0D0,-0.12D0,-0.12D0,-0.12D0,    0D0,
     :    0D0,-0.12D0,-0.12D0,    0D0,    0D0, 0.12D0, 0.12D0,    0D0,
     :    0D0,-0.12D0,-0.12D0,-0.12D0,-0.12D0, 0.12D0,    0D0,    0D0,
     : 0.12D0,-0.12D0,    0D0,    0D0,-0.12D0,-0.12D0,    0D0,    0D0,
     : 0.12D0,-0.12D0,-0.12D0,-0.12D0,-0.12D0, 0.12D0, 0.12D0,-0.12D0,
     :-0.12D0,    0D0,    0D0,-0.12D0,    0D0,    0D0,-0.12D0, 0.12D0,
     :    0D0,    0D0, 0.12D0,    0D0,    0D0,-0.12D0,-0.12D0,    0D0,
     :    0D0,-0.12D0,-0.12D0, 0.12D0,    0D0,    0D0, 0.12D0, 0.12D0,
     :    0D0,    0D0, 0.12D0,    0D0,    0D0, 0.12D0, 0.12D0, 0.08D0,
     :    0D0, 0.04D0 /

*  Amplitude usage: X or Y, sin or cos, power of T.
      DATA JAXY / 0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1 /
      DATA JASC / 0,1,1,0,1,0,0,1,0,1,1,0,1,0,0,1,0,1,1,0 /
      DATA JAPT / 0,0,0,0,1,1,1,1,2,2,2,2,3,3,3,3,4,4,4,4 /

* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

*  Interval between fundamental date J2000.0 and given date (JC).
      T = ( ( DATE1-DJ00 ) + DATE2 ) / DJC

*  Powers of T.
      W = 1D0
      DO 1 JPT=0,MAXPT
         PT(JPT) = W
         W = W*T
 1    CONTINUE

*
*  Luni-solar fundamental (Delaunay) arguments (IERS 2003)
*

*  Mean anomaly of the Moon.
      FA(1) = iau_FAL03 ( T )

*  Mean anomaly of the Sun.
      FA(2) = iau_FALP03 ( T )

*  Mean argument of the latitude of the Moon.
      FA(3) = iau_FAF03 ( T )

*  Mean elongation of the Moon from the Sun.
      FA(4) = iau_FAD03 ( T )

*  Mean longitude of the ascending node of the Moon.
      FA(5) = iau_FAOM03 ( T )

*  Planetary longitudes, Mercury through Neptune.
      FA(6)  = iau_FAME03 ( T )
      FA(7)  = iau_FAVE03 ( T )
      FA(8)  = iau_FAE03 ( T )
      FA(9)  = iau_FAMA03 ( T )
      FA(10) = iau_FAJU03 ( T )
      FA(11) = iau_FASA03 ( T )
      FA(12) = iau_FAUR03 ( T )
      FA(13) = iau_FANE03 ( T )

*  General accumulated precession in longitude.
      FA(14) = iau_FAPA03 ( T )

*  --------------------------------------
*  Polynomial part of precession-nutation
*  --------------------------------------

      DO 3 JXY=0,1
         XYPR(JXY) = 0D0
         DO 2 J=MAXPT,0,-1
            XYPR(JXY) = XYPR(JXY) + XYP(J,JXY)*PT(J)
 2       CONTINUE
 3    CONTINUE

*  ----------------------------------
*  Nutation periodic terms, planetary
*  ----------------------------------

*  Initialize totals in X and Y.
      DO 4 JXY=0,1
         XYPL(JXY) = 0D0
 4    CONTINUE

*  Work backwards through the coefficients per frequency list.
      IALAST = NA
      DO 7 IFREQ=NFPL,1,-1

*     Obtain the argument functions.
         ARG = 0D0
         DO 5 I=1,14
            M = MFAPL(I,IFREQ)
            IF ( M.NE.0 ) ARG = ARG + DBLE(M)*FA(I)
 5       CONTINUE
         SC(0) = SIN(ARG)
         SC(1) = COS(ARG)

*     Work backwards through the amplitudes at this frequency.
         IA = NC(IFREQ+NFLS)
         DO 6 I=IALAST,IA,-1

*        Coefficient number (0 = 1st).
            J = I-IA

*        X or Y.
            JXY = JAXY(J)

*        Sin or cos.
            JSC = JASC(J)

*        Power of T.
            JPT = JAPT(J)

*        Accumulate the component.
            XYPL(JXY) = XYPL(JXY) + A(I)*SC(JSC)*PT(JPT)
 6       CONTINUE
         IALAST = IA-1
 7    CONTINUE

*  -----------------------------------
*  Nutation periodic terms, luni-solar
*  -----------------------------------

*  Initialize totals in X and Y.
      DO 8 JXY=0,1
         XYLS(JXY) = 0D0
 8    CONTINUE

*  Continue working backwards through the number of coefficients list.
      DO 11 IFREQ=NFLS,1,-1

*     Obtain the argument functions.
         ARG = 0D0
         DO 9 I=1,5
            M = MFALS(I,IFREQ)
            IF ( M.NE.0 ) ARG = ARG + DBLE(M)*FA(I)
 9       CONTINUE
         SC(0) = SIN(ARG)
         SC(1) = COS(ARG)

*     Work backwards through the amplitudes at this frequency.
         IA = NC(IFREQ)
         DO 10 I=IALAST,IA,-1

*        Coefficient number (0 = 1st).
            J = I-IA

*        X or Y.
            JXY = JAXY(J)

*        Sin or cos.
            JSC = JASC(J)

*        Power of T.
            JPT = JAPT(J)

*        Accumulate the component.
            XYLS(JXY) = XYLS(JXY) + A(I)*SC(JSC)*PT(JPT)
 10      CONTINUE
         IALAST = IA-1
 11   CONTINUE

*  -------
*  Results
*  -------

*  CIP unit vector components.
      X = DAS2R * ( XYPR(0) + ( XYLS(0) + XYPL(0) )/1D6 )
      Y = DAS2R * ( XYPR(1) + ( XYLS(1) + XYPL(1) )/1D6 )

*  Finished.

*+----------------------------------------------------------------------
*
*  Copyright (C) 2013
*  Standards Of Fundamental Astronomy Board
*  of the International Astronomical Union.
*
*  =====================
*  SOFA Software License
*  =====================
*
*  NOTICE TO USER:
*
*  BY USING THIS SOFTWARE YOU ACCEPT THE FOLLOWING SIX TERMS AND
*  CONDITIONS WHICH APPLY TO ITS USE.
*
*  1. The Software is owned by the IAU SOFA Board ("SOFA").
*
*  2. Permission is granted to anyone to use the SOFA software for any
*     purpose, including commercial applications, free of charge and
*     without payment of royalties, subject to the conditions and
*     restrictions listed below.
*
*  3. You (the user) may copy and distribute SOFA source code to others,
*     and use and adapt its code and algorithms in your own software,
*     on a world-wide, royalty-free basis.  That portion of your
*     distribution that does not consist of intact and unchanged copies
*     of SOFA source code files is a "derived work" that must comply
*     with the following requirements:
*
*     a) Your work shall be marked or carry a statement that it
*        (i) uses routines and computations derived by you from
*        software provided by SOFA under license to you; and
*        (ii) does not itself constitute software provided by and/or
*        endorsed by SOFA.
*
*     b) The source code of your derived work must contain descriptions
*        of how the derived work is based upon, contains and/or differs
*        from the original SOFA software.
*
*     c) The names of all routines in your derived work shall not
*        include the prefix "iau" or "sofa" or trivial modifications
*        thereof such as changes of case.
*
*     d) The origin of the SOFA components of your derived work must
*        not be misrepresented;  you must not claim that you wrote the
*        original software, nor file a patent application for SOFA
*        software or algorithms embedded in the SOFA software.
*
*     e) These requirements must be reproduced intact in any source
*        distribution and shall apply to anyone to whom you have
*        granted a further right to modify the source code of your
*        derived work.
*
*     Note that, as originally distributed, the SOFA software is
*     intended to be a definitive implementation of the IAU standards,
*     and consequently third-party modifications are discouraged.  All
*     variations, no matter how minor, must be explicitly marked as
*     such, as explained above.
*
*  4. You shall not cause the SOFA software to be brought into
*     disrepute, either by misuse, or use for inappropriate tasks, or
*     by inappropriate modification.
*
*  5. The SOFA software is provided "as is" and SOFA makes no warranty
*     as to its use or performance.   SOFA does not and cannot warrant
*     the performance or results which the user may obtain by using the
*     SOFA software.  SOFA makes no warranties, express or implied, as
*     to non-infringement of third party rights, merchantability, or
*     fitness for any particular purpose.  In no event will SOFA be
*     liable to the user for any consequential, incidental, or special
*     damages, including any lost profits or lost savings, even if a
*     SOFA representative has been advised of such damages, or for any
*     claim by any third party.
*
*  6. The provision of any version of the SOFA software under the terms
*     and conditions specified herein does not imply that future
*     versions will also be made available under the same terms and
*     conditions.
*
*  In any published work or commercial product which uses the SOFA
*  software directly, acknowledgement (see www.iausofa.org) is
*  appreciated.
*
*  Correspondence concerning SOFA software should be addressed as
*  follows:
*
*      By email:  sofa@ukho.gov.uk
*      By post:   IAU SOFA Center
*                 HM Nautical Almanac Office
*                 UK Hydrographic Office
*                 Admiralty Way, Taunton
*                 Somerset, TA1 2DN
*                 United Kingdom
*
*-----------------------------------------------------------------------

      END SUBROUTINE iau_XY06

      SUBROUTINE iau_ECM06 ( DATE1, DATE2, RM )
*+
*  - - - - - - - - - -
*   i a u _ E C M 0 6
*  - - - - - - - - - -
*
*  ICRS equatorial to ecliptic rotation matrix, IAU 2006.
*
*  This routine is part of the International Astronomical Union's
*  SOFA (Standards of Fundamental Astronomy) software collection.
*
*  Status:  support routine.
*
*  Given:
*     DATE1,DATE2  d      TT as a 2-part Julian Date (Note 1)
*
*  Returned:
*     RM           d(3,3) ICRS to ecliptic rotation matrix
*
*  Notes:
*
*  1) The TT date DATE1+DATE2 is a Julian Date, apportioned in any
*     convenient way between the two arguments.  For example,
*     JD(TT)=2450123.7 could be expressed in any of these ways,
*     among others:
*
*            DATE1          DATE2
*
*         2450123.7D0        0D0        (JD method)
*          2451545D0      -1421.3D0     (J2000 method)
*         2400000.5D0     50123.2D0     (MJD method)
*         2450123.5D0       0.2D0       (date & time method)
*
*     The JD method is the most natural and convenient to use in
*     cases where the loss of several decimal digits of resolution
*     is acceptable.  The J2000 method is best matched to the way
*     the argument is handled internally and will deliver the
*     optimum resolution.  The MJD method and the date & time methods
*     are both good compromises between resolution and convenience.
*
*  2) The matrix is in the sense
*
*        E_ep = RM x P_ICRS,
*
*     where P_ICRS is a vector with respect to ICRS right ascension
*     and declination axes and E_ep is the same vector with respect to
*     the (inertial) ecliptic and equinox of date.
*
*  3) P_ICRS is a free vector, merely a direction, typically of unit
*     magnitude, and not bound to any particular spatial origin, such as
*     the Earth, Sun or SSB.  No assumptions are made about whether it
*     represents starlight and embodies astrometric effects such as
*     parallax or aberration.  The transformation is approximately that
*     between mean J2000.0 right ascension and declination and ecliptic
*     longitude and latitude, with only frame bias (always less than
*     25 mas) to disturb this classical picture.
*
*  Called:
*     iau_OBL06    mean obliquity, IAU 2006
*     iau_PMAT06   PB matrix, IAU 2006
*     iau_IR       initialize r-matrix to identity
*     iau_RX       rotate around X-axis
*     iau_RXR      product of two r-matrices
*
*  This revision:  2015 December 11
*
*  SOFA release 2018-01-30
*
*  Copyright (C) 2018 IAU SOFA Board.  See notes at end.
*
*-----------------------------------------------------------------------

      IMPLICIT NONE

      DOUBLE PRECISION DATE1, DATE2, RM(3,3)

      DOUBLE PRECISION OB, BP(3,3), E(3,3)
      !DOUBLE PRECISION iau_OBL06

* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


*  Obliquity, IAU 2006.
      OB = iau_OBL06 ( DATE1, DATE2 )

*  Precession-bias matrix, IAU 2006.
      CALL iau_PMAT06 ( DATE1, DATE2, BP )

*  Equatorial of date to ecliptic matrix.
      CALL iau_IR ( E )
      CALL iau_RX ( OB, E )

*  ICRS to ecliptic coordinates rotation matrix, IAU 2006.
      CALL iau_RXR ( E, BP, RM )

*  Finished.

*+----------------------------------------------------------------------
*
*  Copyright (C) 2018
*  Standards Of Fundamental Astronomy Board
*  of the International Astronomical Union.
*
*  =====================
*  SOFA Software License
*  =====================
*
*  NOTICE TO USER:
*
*  BY USING THIS SOFTWARE YOU ACCEPT THE FOLLOWING SIX TERMS AND
*  CONDITIONS WHICH APPLY TO ITS USE.
*
*  1. The Software is owned by the IAU SOFA Board ("SOFA").
*
*  2. Permission is granted to anyone to use the SOFA software for any
*     purpose, including commercial applications, free of charge and
*     without payment of royalties, subject to the conditions and
*     restrictions listed below.
*
*  3. You (the user) may copy and distribute SOFA source code to others,
*     and use and adapt its code and algorithms in your own software,
*     on a world-wide, royalty-free basis.  That portion of your
*     distribution that does not consist of intact and unchanged copies
*     of SOFA source code files is a "derived work" that must comply
*     with the following requirements:
*
*     a) Your work shall be marked or carry a statement that it
*        (i) uses routines and computations derived by you from
*        software provided by SOFA under license to you; and
*        (ii) does not itself constitute software provided by and/or
*        endorsed by SOFA.
*
*     b) The source code of your derived work must contain descriptions
*        of how the derived work is based upon, contains and/or differs
*        from the original SOFA software.
*
*     c) The names of all routines in your derived work shall not
*        include the prefix "iau" or "sofa" or trivial modifications
*        thereof such as changes of case.
*
*     d) The origin of the SOFA components of your derived work must
*        not be misrepresented;  you must not claim that you wrote the
*        original software, nor file a patent application for SOFA
*        software or algorithms embedded in the SOFA software.
*
*     e) These requirements must be reproduced intact in any source
*        distribution and shall apply to anyone to whom you have
*        granted a further right to modify the source code of your
*        derived work.
*
*     Note that, as originally distributed, the SOFA software is
*     intended to be a definitive implementation of the IAU standards,
*     and consequently third-party modifications are discouraged.  All
*     variations, no matter how minor, must be explicitly marked as
*     such, as explained above.
*
*  4. You shall not cause the SOFA software to be brought into
*     disrepute, either by misuse, or use for inappropriate tasks, or
*     by inappropriate modification.
*
*  5. The SOFA software is provided "as is" and SOFA makes no warranty
*     as to its use or performance.   SOFA does not and cannot warrant
*     the performance or results which the user may obtain by using the
*     SOFA software.  SOFA makes no warranties, express or implied, as
*     to non-infringement of third party rights, merchantability, or
*     fitness for any particular purpose.  In no event will SOFA be
*     liable to the user for any consequential, incidental, or special
*     damages, including any lost profits or lost savings, even if a
*     SOFA representative has been advised of such damages, or for any
*     claim by any third party.
*
*  6. The provision of any version of the SOFA software under the terms
*     and conditions specified herein does not imply that future
*     versions will also be made available under the same terms and
*     conditions.
*
*  In any published work or commercial product which uses the SOFA
*  software directly, acknowledgement (see www.iausofa.org) is
*  appreciated.
*
*  Correspondence concerning SOFA software should be addressed as
*  follows:
*
*      By email:  sofa@ukho.gov.uk
*      By post:   IAU SOFA Center
*                 HM Nautical Almanac Office
*                 UK Hydrographic Office
*                 Admiralty Way, Taunton
*                 Somerset, TA1 2DN
*                 United Kingdom
*
*-----------------------------------------------------------------------

      END SUBROUTINE iau_ECM06

      DOUBLE PRECISION FUNCTION iau_OBL06 ( DATE1, DATE2 )
*+
*  - - - - - - - - - -
*   i a u _ O B L 0 6
*  - - - - - - - - - -
*
*  Mean obliquity of the ecliptic, IAU 2006 precession model.
*
*  This routine is part of the International Astronomical Union's
*  SOFA (Standards of Fundamental Astronomy) software collection.
*
*  Status:  canonical model.
*
*  Given:
*     DATE1,DATE2    d     TT as a 2-part Julian Date (Note 1)
*
*  Returned:
*     iau_OBL06      d     obliquity of the ecliptic (radians, Note 2)
*
*  Notes:
*
*  1) The date DATE1+DATE2 is a Julian Date, apportioned in any
*     convenient way between the two arguments.  For example,
*     JD(TT)=2450123.7 could be expressed in any of these ways,
*     among others:
*
*             DATE1         DATE2
*
*         2450123.7D0        0D0        (JD method)
*          2451545D0      -1421.3D0     (J2000 method)
*         2400000.5D0     50123.2D0     (MJD method)
*         2450123.5D0       0.2D0       (date & time method)
*
*     The JD method is the most natural and convenient to use in
*     cases where the loss of several decimal digits of resolution
*     is acceptable.  The J2000 method is best matched to the way
*     the argument is handled internally and will deliver the
*     optimum resolution.  The MJD method and the date & time methods
*     are both good compromises between resolution and convenience.
*
*  2) The result is the angle between the ecliptic and mean equator of
*     date DATE1+DATE2.
*
*  Reference:
*
*     Hilton, J. et al., 2006, Celest.Mech.Dyn.Astron. 94, 351
*
*  This revision:  2009 December 15
*
*  SOFA release 2018-01-30
*
*  Copyright (C) 2018 IAU SOFA Board.  See notes at end.
*
*-----------------------------------------------------------------------

      IMPLICIT NONE

      DOUBLE PRECISION DATE1, DATE2

*  Arcseconds to radians
      DOUBLE PRECISION DAS2R
      PARAMETER ( DAS2R = 4.848136811095359935899141D-6 )

*  Reference epoch (J2000.0), JD
      DOUBLE PRECISION DJ00
      PARAMETER ( DJ00 = 2451545D0 )

*  Days per Julian century
      DOUBLE PRECISION DJC
      PARAMETER ( DJC = 36525D0 )

      DOUBLE PRECISION T

* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

*  Interval between fundamental date J2000.0 and given date (JC).
      T = ( ( DATE1-DJ00 ) + DATE2 ) / DJC

*  Mean obliquity.
      iau_OBL06 = ( 84381.406D0       +
     :            (   -46.836769D0    +
     :            (    -0.0001831D0   +
     :            (     0.00200340D0  +
     :            (    -0.000000576D0 +
     :            (    -0.0000000434D0 )
     :                             * T ) * T ) * T ) * T ) * T ) * DAS2R

*  Finished.

*+----------------------------------------------------------------------
*
*  Copyright (C) 2018
*  Standards Of Fundamental Astronomy Board
*  of the International Astronomical Union.
*
*  =====================
*  SOFA Software License
*  =====================
*
*  NOTICE TO USER:
*
*  BY USING THIS SOFTWARE YOU ACCEPT THE FOLLOWING SIX TERMS AND
*  CONDITIONS WHICH APPLY TO ITS USE.
*
*  1. The Software is owned by the IAU SOFA Board ("SOFA").
*
*  2. Permission is granted to anyone to use the SOFA software for any
*     purpose, including commercial applications, free of charge and
*     without payment of royalties, subject to the conditions and
*     restrictions listed below.
*
*  3. You (the user) may copy and distribute SOFA source code to others,
*     and use and adapt its code and algorithms in your own software,
*     on a world-wide, royalty-free basis.  That portion of your
*     distribution that does not consist of intact and unchanged copies
*     of SOFA source code files is a "derived work" that must comply
*     with the following requirements:
*
*     a) Your work shall be marked or carry a statement that it
*        (i) uses routines and computations derived by you from
*        software provided by SOFA under license to you; and
*        (ii) does not itself constitute software provided by and/or
*        endorsed by SOFA.
*
*     b) The source code of your derived work must contain descriptions
*        of how the derived work is based upon, contains and/or differs
*        from the original SOFA software.
*
*     c) The names of all routines in your derived work shall not
*        include the prefix "iau" or "sofa" or trivial modifications
*        thereof such as changes of case.
*
*     d) The origin of the SOFA components of your derived work must
*        not be misrepresented;  you must not claim that you wrote the
*        original software, nor file a patent application for SOFA
*        software or algorithms embedded in the SOFA software.
*
*     e) These requirements must be reproduced intact in any source
*        distribution and shall apply to anyone to whom you have
*        granted a further right to modify the source code of your
*        derived work.
*
*     Note that, as originally distributed, the SOFA software is
*     intended to be a definitive implementation of the IAU standards,
*     and consequently third-party modifications are discouraged.  All
*     variations, no matter how minor, must be explicitly marked as
*     such, as explained above.
*
*  4. You shall not cause the SOFA software to be brought into
*     disrepute, either by misuse, or use for inappropriate tasks, or
*     by inappropriate modification.
*
*  5. The SOFA software is provided "as is" and SOFA makes no warranty
*     as to its use or performance.   SOFA does not and cannot warrant
*     the performance or results which the user may obtain by using the
*     SOFA software.  SOFA makes no warranties, express or implied, as
*     to non-infringement of third party rights, merchantability, or
*     fitness for any particular purpose.  In no event will SOFA be
*     liable to the user for any consequential, incidental, or special
*     damages, including any lost profits or lost savings, even if a
*     SOFA representative has been advised of such damages, or for any
*     claim by any third party.
*
*  6. The provision of any version of the SOFA software under the terms
*     and conditions specified herein does not imply that future
*     versions will also be made available under the same terms and
*     conditions.
*
*  In any published work or commercial product which uses the SOFA
*  software directly, acknowledgement (see www.iausofa.org) is
*  appreciated.
*
*  Correspondence concerning SOFA software should be addressed as
*  follows:
*
*      By email:  sofa@ukho.gov.uk
*      By post:   IAU SOFA Center
*                 HM Nautical Almanac Office
*                 UK Hydrographic Office
*                 Admiralty Way, Taunton
*                 Somerset, TA1 2DN
*                 United Kingdom
*
*-----------------------------------------------------------------------

      END FUNCTION iau_OBL06

      SUBROUTINE iau_PMAT06 ( DATE1, DATE2, RBP )
*+
*  - - - - - - - - - - -
*   i a u _ P M A T 0 6
*  - - - - - - - - - - -
*
*  Precession matrix (including frame bias) from GCRS to a specified
*  date, IAU 2006 model.
*
*  This routine is part of the International Astronomical Union's
*  SOFA (Standards of Fundamental Astronomy) software collection.
*
*  Status:  support routine.
*
*  Given:
*     DATE1,DATE2   d       TT as a 2-part Julian Date (Note 1)
*
*  Returned:
*     RBP         d(3,3)    bias-precession matrix (Note 2)
*
*  Notes:
*
*  1) The TT date DATE1+DATE2 is a Julian Date, apportioned in any
*     convenient way between the arguments DATE1 and DATE2.  For
*     example, JD(TT)=2450123.7 could be expressed in any of these
*     ways, among others:
*
*            DATE1          DATE2
*
*         2450123.7D0        0D0        (JD method)
*          2451545D0      -1421.3D0     (J2000 method)
*         2400000.5D0     50123.2D0     (MJD method)
*         2450123.5D0       0.2D0       (date & time method)
*
*     The JD method is the most natural and convenient to use in
*     cases where the loss of several decimal digits of resolution
*     is acceptable.  The J2000 method is best matched to the way
*     the argument is handled internally and will deliver the
*     optimum resolution.  The MJD method and the date & time methods
*     are both good compromises between resolution and convenience.
*
*  2) The matrix operates in the sense V(date) = RBP * V(GCRS), where
*     the p-vector V(GCRS) is with respect to the Geocentric Celestial
*     Reference System (IAU, 2000) and the p-vector V(date) is with
*     respect to the mean equatorial triad of the given date.
*
*  Called:
*     iau_PFW06    bias-precession F-W angles, IAU 2006
*     iau_FW2M     F-W angles to r-matrix
*
*  References:
*
*     Capitaine, N. & Wallace, P.T., 2006, Astron.Astrophys. 450, 855
*
*     Wallace, P.T. & Capitaine, N., 2006, Astron.Astrophys. 459, 981
*
*  This revision:  2009 December 21
*
*  SOFA release 2018-01-30
*
*  Copyright (C) 2018 IAU SOFA Board.  See notes at end.
*
*-----------------------------------------------------------------------

      IMPLICIT NONE

      DOUBLE PRECISION DATE1, DATE2, RBP(3,3)

      DOUBLE PRECISION GAMB, PHIB, PSIB, EPSA

* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

*  Bias-precession Fukushima-Williams angles.
      CALL iau_PFW06 ( DATE1, DATE2, GAMB, PHIB, PSIB, EPSA )

*  Form the matrix.
      CALL iau_FW2M ( GAMB, PHIB, PSIB, EPSA, RBP )

*  Finished.

*+----------------------------------------------------------------------
*
*  Copyright (C) 2018
*  Standards Of Fundamental Astronomy Board
*  of the International Astronomical Union.
*
*  =====================
*  SOFA Software License
*  =====================
*
*  NOTICE TO USER:
*
*  BY USING THIS SOFTWARE YOU ACCEPT THE FOLLOWING SIX TERMS AND
*  CONDITIONS WHICH APPLY TO ITS USE.
*
*  1. The Software is owned by the IAU SOFA Board ("SOFA").
*
*  2. Permission is granted to anyone to use the SOFA software for any
*     purpose, including commercial applications, free of charge and
*     without payment of royalties, subject to the conditions and
*     restrictions listed below.
*
*  3. You (the user) may copy and distribute SOFA source code to others,
*     and use and adapt its code and algorithms in your own software,
*     on a world-wide, royalty-free basis.  That portion of your
*     distribution that does not consist of intact and unchanged copies
*     of SOFA source code files is a "derived work" that must comply
*     with the following requirements:
*
*     a) Your work shall be marked or carry a statement that it
*        (i) uses routines and computations derived by you from
*        software provided by SOFA under license to you; and
*        (ii) does not itself constitute software provided by and/or
*        endorsed by SOFA.
*
*     b) The source code of your derived work must contain descriptions
*        of how the derived work is based upon, contains and/or differs
*        from the original SOFA software.
*
*     c) The names of all routines in your derived work shall not
*        include the prefix "iau" or "sofa" or trivial modifications
*        thereof such as changes of case.
*
*     d) The origin of the SOFA components of your derived work must
*        not be misrepresented;  you must not claim that you wrote the
*        original software, nor file a patent application for SOFA
*        software or algorithms embedded in the SOFA software.
*
*     e) These requirements must be reproduced intact in any source
*        distribution and shall apply to anyone to whom you have
*        granted a further right to modify the source code of your
*        derived work.
*
*     Note that, as originally distributed, the SOFA software is
*     intended to be a definitive implementation of the IAU standards,
*     and consequently third-party modifications are discouraged.  All
*     variations, no matter how minor, must be explicitly marked as
*     such, as explained above.
*
*  4. You shall not cause the SOFA software to be brought into
*     disrepute, either by misuse, or use for inappropriate tasks, or
*     by inappropriate modification.
*
*  5. The SOFA software is provided "as is" and SOFA makes no warranty
*     as to its use or performance.   SOFA does not and cannot warrant
*     the performance or results which the user may obtain by using the
*     SOFA software.  SOFA makes no warranties, express or implied, as
*     to non-infringement of third party rights, merchantability, or
*     fitness for any particular purpose.  In no event will SOFA be
*     liable to the user for any consequential, incidental, or special
*     damages, including any lost profits or lost savings, even if a
*     SOFA representative has been advised of such damages, or for any
*     claim by any third party.
*
*  6. The provision of any version of the SOFA software under the terms
*     and conditions specified herein does not imply that future
*     versions will also be made available under the same terms and
*     conditions.
*
*  In any published work or commercial product which uses the SOFA
*  software directly, acknowledgement (see www.iausofa.org) is
*  appreciated.
*
*  Correspondence concerning SOFA software should be addressed as
*  follows:
*
*      By email:  sofa@ukho.gov.uk
*      By post:   IAU SOFA Center
*                 HM Nautical Almanac Office
*                 UK Hydrographic Office
*                 Admiralty Way, Taunton
*                 Somerset, TA1 2DN
*                 United Kingdom
*
*-----------------------------------------------------------------------

      END SUBROUTINE iau_PMAT06

      SUBROUTINE iau_PFW06 ( DATE1, DATE2, GAMB, PHIB, PSIB, EPSA )
*+
*  - - - - - - - - - -
*   i a u _ P F W 0 6
*  - - - - - - - - - -
*
*  Precession angles, IAU 2006 (Fukushima-Williams 4-angle formulation).
*
*  This routine is part of the International Astronomical Union's
*  SOFA (Standards of Fundamental Astronomy) software collection.
*
*  Status:  canonical model.
*
*  Given:
*     DATE1,DATE2   d    TT as a 2-part Julian Date (Note 1)
*
*  Returned:
*     GAMB          d    F-W angle gamma_bar (radians)
*     PHIB          d    F-W angle phi_bar (radians)
*     PSIB          d    F-W angle psi_bar (radians)
*     EPSA          d    F-W angle epsilon_A (radians)
*
*  Notes:
*
*  1) The TT date DATE1+DATE2 is a Julian Date, apportioned in any
*     convenient way between the two arguments.  For example,
*     JD(TT)=2450123.7 could be expressed in any of these ways,
*     among others
*
*            DATE1          DATE2
*
*         2450123.7D0        0D0        (JD method)
*          2451545D0      -1421.3D0     (J2000 method)
*         2400000.5D0     50123.2D0     (MJD method)
*         2450123.5D0       0.2D0       (date & time method)
*
*     The JD method is the most natural and convenient to use in
*     cases where the loss of several decimal digits of resolution
*     is acceptable.  The J2000 method is best matched to the way
*     the argument is handled internally and will deliver the
*     optimum resolution.  The MJD method and the date & time methods
*     are both good compromises between resolution and convenience.
*
*  2) Naming the following points:
*
*           e = J2000.0 ecliptic pole,
*           p = GCRS pole,
*           E = mean ecliptic pole of date,
*     and   P = mean pole of date,
*
*     the four Fukushima-Williams angles are as follows:
*
*        GAMB = gamma_bar = epE
*        PHIB = phi_bar = pE
*        PSIB = psi_bar = pEP
*        EPSA = epsilon_A = EP
*
*  3) The matrix representing the combined effects of frame bias and
*     precession is:
*
*        PxB = R_1(-EPSA).R_3(-PSIB).R_1(PHIB).R_3(GAMB)
*
*  4) The matrix representing the combined effects of frame bias,
*     precession and nutation is simply:
*
*        NxPxB = R_1(-EPSA-dE).R_3(-PSIB-dP).R_1(PHIB).R_3(GAMB)
*
*     where dP and dE are the nutation components with respect to the
*     ecliptic of date.
*
*  Reference:
*
*     Hilton, J. et al., 2006, Celest.Mech.Dyn.Astron. 94, 351
*
*  Called:
*     iau_OBL06    mean obliquity, IAU 2006
*
*  This revision:  2009 December 15
*
*  SOFA release 2018-01-30
*
*  Copyright (C) 2018 IAU SOFA Board.  See notes at end.
*
*-----------------------------------------------------------------------

      IMPLICIT NONE

      DOUBLE PRECISION DATE1, DATE2, GAMB, PHIB, PSIB, EPSA

*  Arcseconds to radians
      DOUBLE PRECISION DAS2R
      PARAMETER ( DAS2R = 4.848136811095359935899141D-6 )

*  Reference epoch (J2000.0), JD
      DOUBLE PRECISION DJ00
      PARAMETER ( DJ00 = 2451545D0 )

*  Days per Julian century
      DOUBLE PRECISION DJC
      PARAMETER ( DJC = 36525D0 )

      DOUBLE PRECISION T

      !DOUBLE PRECISION iau_OBL06

* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

*  Interval between fundamental date J2000.0 and given date (JC).
      T = ( ( DATE1-DJ00 ) + DATE2 ) / DJC

*  P03 bias+precession angles.
      GAMB =        (    -0.052928D0    +
     :              (    10.556378D0    +
     :              (     0.4932044D0   +
     :              (    -0.00031238D0  +
     :              (    -0.000002788D0 +
     :              (     0.0000000260D0 )
     :                             * T ) * T ) * T ) * T ) * T ) * DAS2R
      PHIB =        ( 84381.412819D0    +
     :              (   -46.811016D0    +
     :              (     0.0511268D0   +
     :              (     0.00053289D0  +
     :              (    -0.000000440D0 +
     :              (    -0.0000000176D0 )
     :                             * T ) * T ) * T ) * T ) * T ) * DAS2R
      PSIB =        (    -0.041775D0    +
     :              (  5038.481484D0    +
     :              (     1.5584175D0   +
     :              (    -0.00018522D0  +
     :              (    -0.000026452D0 +
     :              (    -0.0000000148D0 )
     :                             * T ) * T ) * T ) * T ) * T ) * DAS2R
      EPSA = iau_OBL06 ( DATE1, DATE2 )

*  Finished.

*+----------------------------------------------------------------------
*
*  Copyright (C) 2018
*  Standards Of Fundamental Astronomy Board
*  of the International Astronomical Union.
*
*  =====================
*  SOFA Software License
*  =====================
*
*  NOTICE TO USER:
*
*  BY USING THIS SOFTWARE YOU ACCEPT THE FOLLOWING SIX TERMS AND
*  CONDITIONS WHICH APPLY TO ITS USE.
*
*  1. The Software is owned by the IAU SOFA Board ("SOFA").
*
*  2. Permission is granted to anyone to use the SOFA software for any
*     purpose, including commercial applications, free of charge and
*     without payment of royalties, subject to the conditions and
*     restrictions listed below.
*
*  3. You (the user) may copy and distribute SOFA source code to others,
*     and use and adapt its code and algorithms in your own software,
*     on a world-wide, royalty-free basis.  That portion of your
*     distribution that does not consist of intact and unchanged copies
*     of SOFA source code files is a "derived work" that must comply
*     with the following requirements:
*
*     a) Your work shall be marked or carry a statement that it
*        (i) uses routines and computations derived by you from
*        software provided by SOFA under license to you; and
*        (ii) does not itself constitute software provided by and/or
*        endorsed by SOFA.
*
*     b) The source code of your derived work must contain descriptions
*        of how the derived work is based upon, contains and/or differs
*        from the original SOFA software.
*
*     c) The names of all routines in your derived work shall not
*        include the prefix "iau" or "sofa" or trivial modifications
*        thereof such as changes of case.
*
*     d) The origin of the SOFA components of your derived work must
*        not be misrepresented;  you must not claim that you wrote the
*        original software, nor file a patent application for SOFA
*        software or algorithms embedded in the SOFA software.
*
*     e) These requirements must be reproduced intact in any source
*        distribution and shall apply to anyone to whom you have
*        granted a further right to modify the source code of your
*        derived work.
*
*     Note that, as originally distributed, the SOFA software is
*     intended to be a definitive implementation of the IAU standards,
*     and consequently third-party modifications are discouraged.  All
*     variations, no matter how minor, must be explicitly marked as
*     such, as explained above.
*
*  4. You shall not cause the SOFA software to be brought into
*     disrepute, either by misuse, or use for inappropriate tasks, or
*     by inappropriate modification.
*
*  5. The SOFA software is provided "as is" and SOFA makes no warranty
*     as to its use or performance.   SOFA does not and cannot warrant
*     the performance or results which the user may obtain by using the
*     SOFA software.  SOFA makes no warranties, express or implied, as
*     to non-infringement of third party rights, merchantability, or
*     fitness for any particular purpose.  In no event will SOFA be
*     liable to the user for any consequential, incidental, or special
*     damages, including any lost profits or lost savings, even if a
*     SOFA representative has been advised of such damages, or for any
*     claim by any third party.
*
*  6. The provision of any version of the SOFA software under the terms
*     and conditions specified herein does not imply that future
*     versions will also be made available under the same terms and
*     conditions.
*
*  In any published work or commercial product which uses the SOFA
*  software directly, acknowledgement (see www.iausofa.org) is
*  appreciated.
*
*  Correspondence concerning SOFA software should be addressed as
*  follows:
*
*      By email:  sofa@ukho.gov.uk
*      By post:   IAU SOFA Center
*                 HM Nautical Almanac Office
*                 UK Hydrographic Office
*                 Admiralty Way, Taunton
*                 Somerset, TA1 2DN
*                 United Kingdom
*
*-----------------------------------------------------------------------

      END SUBROUTINE iau_PFW06

      SUBROUTINE iau_FW2M ( GAMB, PHIB, PSI, EPS, R )
*+
*  - - - - - - - - -
*   i a u _ F W 2 M
*  - - - - - - - - -
*
*  Form rotation matrix given the Fukushima-Williams angles.
*
*  This routine is part of the International Astronomical Union's
*  SOFA (Standards of Fundamental Astronomy) software collection.
*
*  Status:  support routine.
*
*  Given:
*     GAMB       d      F-W angle gamma_bar (radians)
*     PHIB       d      F-W angle phi_bar (radians)
*     PSI        d      F-W angle psi (radians)
*     EPS        d      F-W angle epsilon (radians)
*
*  Returned:
*     R        d(3,3)   rotation matrix
*
*  Notes:
*
*  1) Naming the following points:
*
*           e = J2000.0 ecliptic pole,
*           p = GCRS pole,
*           E = ecliptic pole of date,
*     and   P = CIP,
*
*     the four Fukushima-Williams angles are as follows:
*
*        GAMB = gamma = epE
*        PHIB = phi = pE
*        PSI = psi = pEP
*        EPS = epsilon = EP
*
*  2) The matrix representing the combined effects of frame bias,
*     precession and nutation is:
*
*        NxPxB = R_1(-EPS).R_3(-PSI).R_1(PHIB).R_3(GAMB)
*
*  3) Three different matrices can be constructed, depending on the
*     supplied angles:
*
*     o  To obtain the nutation x precession x frame bias matrix,
*        generate the four precession angles, generate the nutation
*        components and add them to the psi_bar and epsilon_A angles,
*        and call the present routine.
*
*     o  To obtain the precession x frame bias matrix, generate the
*        four precession angles and call the present routine.
*
*     o  To obtain the frame bias matrix, generate the four precession
*        angles for date J2000.0 and call the present routine.
*
*     The nutation-only and precession-only matrices can if necessary
*     be obtained by combining these three appropriately.
*
*  Called:
*     iau_IR       initialize r-matrix to identity
*     iau_RZ       rotate around Z-axis
*     iau_RX       rotate around X-axis
*
*  Reference:
*
*     Hilton, J. et al., 2006, Celest.Mech.Dyn.Astron. 94, 351
*
*  This revision:   2009 December 15
*
*  SOFA release 2018-01-30
*
*  Copyright (C) 2018 IAU SOFA Board.  See notes at end.
*
*-----------------------------------------------------------------------

      IMPLICIT NONE

      DOUBLE PRECISION GAMB, PHIB, PSI, EPS, R(3,3)

* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

*  Construct the matrix.
      CALL iau_IR ( R )
      CALL iau_RZ ( GAMB, R )
      CALL iau_RX ( PHIB, R )
      CALL iau_RZ ( -PSI, R )
      CALL iau_RX ( -EPS, R )

*  Finished.

*+----------------------------------------------------------------------
*
*  Copyright (C) 2018
*  Standards Of Fundamental Astronomy Board
*  of the International Astronomical Union.
*
*  =====================
*  SOFA Software License
*  =====================
*
*  NOTICE TO USER:
*
*  BY USING THIS SOFTWARE YOU ACCEPT THE FOLLOWING SIX TERMS AND
*  CONDITIONS WHICH APPLY TO ITS USE.
*
*  1. The Software is owned by the IAU SOFA Board ("SOFA").
*
*  2. Permission is granted to anyone to use the SOFA software for any
*     purpose, including commercial applications, free of charge and
*     without payment of royalties, subject to the conditions and
*     restrictions listed below.
*
*  3. You (the user) may copy and distribute SOFA source code to others,
*     and use and adapt its code and algorithms in your own software,
*     on a world-wide, royalty-free basis.  That portion of your
*     distribution that does not consist of intact and unchanged copies
*     of SOFA source code files is a "derived work" that must comply
*     with the following requirements:
*
*     a) Your work shall be marked or carry a statement that it
*        (i) uses routines and computations derived by you from
*        software provided by SOFA under license to you; and
*        (ii) does not itself constitute software provided by and/or
*        endorsed by SOFA.
*
*     b) The source code of your derived work must contain descriptions
*        of how the derived work is based upon, contains and/or differs
*        from the original SOFA software.
*
*     c) The names of all routines in your derived work shall not
*        include the prefix "iau" or "sofa" or trivial modifications
*        thereof such as changes of case.
*
*     d) The origin of the SOFA components of your derived work must
*        not be misrepresented;  you must not claim that you wrote the
*        original software, nor file a patent application for SOFA
*        software or algorithms embedded in the SOFA software.
*
*     e) These requirements must be reproduced intact in any source
*        distribution and shall apply to anyone to whom you have
*        granted a further right to modify the source code of your
*        derived work.
*
*     Note that, as originally distributed, the SOFA software is
*     intended to be a definitive implementation of the IAU standards,
*     and consequently third-party modifications are discouraged.  All
*     variations, no matter how minor, must be explicitly marked as
*     such, as explained above.
*
*  4. You shall not cause the SOFA software to be brought into
*     disrepute, either by misuse, or use for inappropriate tasks, or
*     by inappropriate modification.
*
*  5. The SOFA software is provided "as is" and SOFA makes no warranty
*     as to its use or performance.   SOFA does not and cannot warrant
*     the performance or results which the user may obtain by using the
*     SOFA software.  SOFA makes no warranties, express or implied, as
*     to non-infringement of third party rights, merchantability, or
*     fitness for any particular purpose.  In no event will SOFA be
*     liable to the user for any consequential, incidental, or special
*     damages, including any lost profits or lost savings, even if a
*     SOFA representative has been advised of such damages, or for any
*     claim by any third party.
*
*  6. The provision of any version of the SOFA software under the terms
*     and conditions specified herein does not imply that future
*     versions will also be made available under the same terms and
*     conditions.
*
*  In any published work or commercial product which uses the SOFA
*  software directly, acknowledgement (see www.iausofa.org) is
*  appreciated.
*
*  Correspondence concerning SOFA software should be addressed as
*  follows:
*
*      By email:  sofa@ukho.gov.uk
*      By post:   IAU SOFA Center
*                 HM Nautical Almanac Office
*                 UK Hydrographic Office
*                 Admiralty Way, Taunton
*                 Somerset, TA1 2DN
*                 United Kingdom
*
*-----------------------------------------------------------------------

      END SUBROUTINE iau_FW2M

      SUBROUTINE iau_IR ( R )
*+
*  - - - - - - -
*   i a u _ I R
*  - - - - - - -
*
*  Initialize an r-matrix to the identity matrix.
*
*  This routine is part of the International Astronomical Union's
*  SOFA (Standards of Fundamental Astronomy) software collection.
*
*  Status:  vector/matrix support routine.
*
*  Returned:
*     R        d(3,3)    r-matrix
*
*  This revision:  2012 April 3
*
*  SOFA release 2018-01-30
*
*  Copyright (C) 2018 IAU SOFA Board.  See notes at end.
*
*-----------------------------------------------------------------------

      IMPLICIT NONE

      DOUBLE PRECISION R(3,3)

* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

      R(1,1) = 1D0
      R(1,2) = 0D0
      R(1,3) = 0D0
      R(2,1) = 0D0
      R(2,2) = 1D0
      R(2,3) = 0D0
      R(3,1) = 0D0
      R(3,2) = 0D0
      R(3,3) = 1D0

*  Finished.

*+----------------------------------------------------------------------
*
*  Copyright (C) 2018
*  Standards Of Fundamental Astronomy Board
*  of the International Astronomical Union.
*
*  =====================
*  SOFA Software License
*  =====================
*
*  NOTICE TO USER:
*
*  BY USING THIS SOFTWARE YOU ACCEPT THE FOLLOWING SIX TERMS AND
*  CONDITIONS WHICH APPLY TO ITS USE.
*
*  1. The Software is owned by the IAU SOFA Board ("SOFA").
*
*  2. Permission is granted to anyone to use the SOFA software for any
*     purpose, including commercial applications, free of charge and
*     without payment of royalties, subject to the conditions and
*     restrictions listed below.
*
*  3. You (the user) may copy and distribute SOFA source code to others,
*     and use and adapt its code and algorithms in your own software,
*     on a world-wide, royalty-free basis.  That portion of your
*     distribution that does not consist of intact and unchanged copies
*     of SOFA source code files is a "derived work" that must comply
*     with the following requirements:
*
*     a) Your work shall be marked or carry a statement that it
*        (i) uses routines and computations derived by you from
*        software provided by SOFA under license to you; and
*        (ii) does not itself constitute software provided by and/or
*        endorsed by SOFA.
*
*     b) The source code of your derived work must contain descriptions
*        of how the derived work is based upon, contains and/or differs
*        from the original SOFA software.
*
*     c) The names of all routines in your derived work shall not
*        include the prefix "iau" or "sofa" or trivial modifications
*        thereof such as changes of case.
*
*     d) The origin of the SOFA components of your derived work must
*        not be misrepresented;  you must not claim that you wrote the
*        original software, nor file a patent application for SOFA
*        software or algorithms embedded in the SOFA software.
*
*     e) These requirements must be reproduced intact in any source
*        distribution and shall apply to anyone to whom you have
*        granted a further right to modify the source code of your
*        derived work.
*
*     Note that, as originally distributed, the SOFA software is
*     intended to be a definitive implementation of the IAU standards,
*     and consequently third-party modifications are discouraged.  All
*     variations, no matter how minor, must be explicitly marked as
*     such, as explained above.
*
*  4. You shall not cause the SOFA software to be brought into
*     disrepute, either by misuse, or use for inappropriate tasks, or
*     by inappropriate modification.
*
*  5. The SOFA software is provided "as is" and SOFA makes no warranty
*     as to its use or performance.   SOFA does not and cannot warrant
*     the performance or results which the user may obtain by using the
*     SOFA software.  SOFA makes no warranties, express or implied, as
*     to non-infringement of third party rights, merchantability, or
*     fitness for any particular purpose.  In no event will SOFA be
*     liable to the user for any consequential, incidental, or special
*     damages, including any lost profits or lost savings, even if a
*     SOFA representative has been advised of such damages, or for any
*     claim by any third party.
*
*  6. The provision of any version of the SOFA software under the terms
*     and conditions specified herein does not imply that future
*     versions will also be made available under the same terms and
*     conditions.
*
*  In any published work or commercial product which uses the SOFA
*  software directly, acknowledgement (see www.iausofa.org) is
*  appreciated.
*
*  Correspondence concerning SOFA software should be addressed as
*  follows:
*
*      By email:  sofa@ukho.gov.uk
*      By post:   IAU SOFA Center
*                 HM Nautical Almanac Office
*                 UK Hydrographic Office
*                 Admiralty Way, Taunton
*                 Somerset, TA1 2DN
*                 United Kingdom
*
*-----------------------------------------------------------------------

      END SUBROUTINE iau_IR

      SUBROUTINE iau_RX ( PHI, R )
*+
*  - - - - - - -
*   i a u _ R X
*  - - - - - - -
*
*  Rotate an r-matrix about the x-axis.
*
*  This routine is part of the International Astronomical Union's
*  SOFA (Standards of Fundamental Astronomy) software collection.
*
*  Status:  vector/matrix support routine.
*
*  Given:
*     PHI      d         angle (radians)
*
*  Given and returned:
*     R        d(3,3)    r-matrix, rotated
*
*  Notes:
*
*  1) Calling this routine with positive PHI incorporates in the
*     supplied r-matrix R an additional rotation, about the x-axis,
*     anticlockwise as seen looking towards the origin from positive x.
*
*  2) The additional rotation can be represented by this matrix:
*
*         (  1        0            0      )
*         (                               )
*         (  0   + cos(PHI)   + sin(PHI)  )
*         (                               )
*         (  0   - sin(PHI)   + cos(PHI)  )
*
*  This revision:  2012 April 3
*
*  SOFA release 2018-01-30
*
*  Copyright (C) 2018 IAU SOFA Board.  See notes at end.
*
*-----------------------------------------------------------------------

      IMPLICIT NONE

      DOUBLE PRECISION PHI, R(3,3)

      DOUBLE PRECISION S, C, A21, A22, A23, A31, A32, A33

* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

      S = SIN(PHI)
      C = COS(PHI)

      A21 =   C*R(2,1) + S*R(3,1)
      A22 =   C*R(2,2) + S*R(3,2)
      A23 =   C*R(2,3) + S*R(3,3)
      A31 = - S*R(2,1) + C*R(3,1)
      A32 = - S*R(2,2) + C*R(3,2)
      A33 = - S*R(2,3) + C*R(3,3)

      R(2,1) = A21
      R(2,2) = A22
      R(2,3) = A23
      R(3,1) = A31
      R(3,2) = A32
      R(3,3) = A33

*  Finished.

*+----------------------------------------------------------------------
*
*  Copyright (C) 2018
*  Standards Of Fundamental Astronomy Board
*  of the International Astronomical Union.
*
*  =====================
*  SOFA Software License
*  =====================
*
*  NOTICE TO USER:
*
*  BY USING THIS SOFTWARE YOU ACCEPT THE FOLLOWING SIX TERMS AND
*  CONDITIONS WHICH APPLY TO ITS USE.
*
*  1. The Software is owned by the IAU SOFA Board ("SOFA").
*
*  2. Permission is granted to anyone to use the SOFA software for any
*     purpose, including commercial applications, free of charge and
*     without payment of royalties, subject to the conditions and
*     restrictions listed below.
*
*  3. You (the user) may copy and distribute SOFA source code to others,
*     and use and adapt its code and algorithms in your own software,
*     on a world-wide, royalty-free basis.  That portion of your
*     distribution that does not consist of intact and unchanged copies
*     of SOFA source code files is a "derived work" that must comply
*     with the following requirements:
*
*     a) Your work shall be marked or carry a statement that it
*        (i) uses routines and computations derived by you from
*        software provided by SOFA under license to you; and
*        (ii) does not itself constitute software provided by and/or
*        endorsed by SOFA.
*
*     b) The source code of your derived work must contain descriptions
*        of how the derived work is based upon, contains and/or differs
*        from the original SOFA software.
*
*     c) The names of all routines in your derived work shall not
*        include the prefix "iau" or "sofa" or trivial modifications
*        thereof such as changes of case.
*
*     d) The origin of the SOFA components of your derived work must
*        not be misrepresented;  you must not claim that you wrote the
*        original software, nor file a patent application for SOFA
*        software or algorithms embedded in the SOFA software.
*
*     e) These requirements must be reproduced intact in any source
*        distribution and shall apply to anyone to whom you have
*        granted a further right to modify the source code of your
*        derived work.
*
*     Note that, as originally distributed, the SOFA software is
*     intended to be a definitive implementation of the IAU standards,
*     and consequently third-party modifications are discouraged.  All
*     variations, no matter how minor, must be explicitly marked as
*     such, as explained above.
*
*  4. You shall not cause the SOFA software to be brought into
*     disrepute, either by misuse, or use for inappropriate tasks, or
*     by inappropriate modification.
*
*  5. The SOFA software is provided "as is" and SOFA makes no warranty
*     as to its use or performance.   SOFA does not and cannot warrant
*     the performance or results which the user may obtain by using the
*     SOFA software.  SOFA makes no warranties, express or implied, as
*     to non-infringement of third party rights, merchantability, or
*     fitness for any particular purpose.  In no event will SOFA be
*     liable to the user for any consequential, incidental, or special
*     damages, including any lost profits or lost savings, even if a
*     SOFA representative has been advised of such damages, or for any
*     claim by any third party.
*
*  6. The provision of any version of the SOFA software under the terms
*     and conditions specified herein does not imply that future
*     versions will also be made available under the same terms and
*     conditions.
*
*  In any published work or commercial product which uses the SOFA
*  software directly, acknowledgement (see www.iausofa.org) is
*  appreciated.
*
*  Correspondence concerning SOFA software should be addressed as
*  follows:
*
*      By email:  sofa@ukho.gov.uk
*      By post:   IAU SOFA Center
*                 HM Nautical Almanac Office
*                 UK Hydrographic Office
*                 Admiralty Way, Taunton
*                 Somerset, TA1 2DN
*                 United Kingdom
*
*-----------------------------------------------------------------------

      END SUBROUTINE iau_RX

      SUBROUTINE iau_RY ( THETA, R )
*+
*  - - - - - - -
*   i a u _ R Y
*  - - - - - - -
*
*  Rotate an r-matrix about the y-axis.
*
*  This routine is part of the International Astronomical Union's
*  SOFA (Standards of Fundamental Astronomy) software collection.
*
*  Status:  vector/matrix support routine.
*
*  Given:
*     THETA    d         angle (radians)
*
*  Given and returned:
*     R        d(3,3)    r-matrix, rotated
*
*  Notes:
*
*  1) Calling this routine with positive THETA incorporates in the
*     supplied r-matrix R an additional rotation, about the y-axis,
*     anticlockwise as seen looking towards the origin from positive y.
*
*  2) The additional rotation can be represented by this matrix:
*
*         (  + cos(THETA)     0      - sin(THETA)  )
*         (                                        )
*         (       0           1           0        )
*         (                                        )
*         (  + sin(THETA)     0      + cos(THETA)  )
*
*  This revision:  2012 April 3
*
*  SOFA release 2018-01-30
*
*  Copyright (C) 2018 IAU SOFA Board.  See notes at end.
*
*-----------------------------------------------------------------------

      IMPLICIT NONE

      DOUBLE PRECISION THETA, R(3,3)

      DOUBLE PRECISION S, C, A11, A12, A13, A31, A32, A33

* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

      S = SIN(THETA)
      C = COS(THETA)

      A11 = C*R(1,1) - S*R(3,1)
      A12 = C*R(1,2) - S*R(3,2)
      A13 = C*R(1,3) - S*R(3,3)
      A31 = S*R(1,1) + C*R(3,1)
      A32 = S*R(1,2) + C*R(3,2)
      A33 = S*R(1,3) + C*R(3,3)

      R(1,1) = A11
      R(1,2) = A12
      R(1,3) = A13
      R(3,1) = A31
      R(3,2) = A32
      R(3,3) = A33

*  Finished.

*+----------------------------------------------------------------------
*
*  Copyright (C) 2018
*  Standards Of Fundamental Astronomy Board
*  of the International Astronomical Union.
*
*  =====================
*  SOFA Software License
*  =====================
*
*  NOTICE TO USER:
*
*  BY USING THIS SOFTWARE YOU ACCEPT THE FOLLOWING SIX TERMS AND
*  CONDITIONS WHICH APPLY TO ITS USE.
*
*  1. The Software is owned by the IAU SOFA Board ("SOFA").
*
*  2. Permission is granted to anyone to use the SOFA software for any
*     purpose, including commercial applications, free of charge and
*     without payment of royalties, subject to the conditions and
*     restrictions listed below.
*
*  3. You (the user) may copy and distribute SOFA source code to others,
*     and use and adapt its code and algorithms in your own software,
*     on a world-wide, royalty-free basis.  That portion of your
*     distribution that does not consist of intact and unchanged copies
*     of SOFA source code files is a "derived work" that must comply
*     with the following requirements:
*
*     a) Your work shall be marked or carry a statement that it
*        (i) uses routines and computations derived by you from
*        software provided by SOFA under license to you; and
*        (ii) does not itself constitute software provided by and/or
*        endorsed by SOFA.
*
*     b) The source code of your derived work must contain descriptions
*        of how the derived work is based upon, contains and/or differs
*        from the original SOFA software.
*
*     c) The names of all routines in your derived work shall not
*        include the prefix "iau" or "sofa" or trivial modifications
*        thereof such as changes of case.
*
*     d) The origin of the SOFA components of your derived work must
*        not be misrepresented;  you must not claim that you wrote the
*        original software, nor file a patent application for SOFA
*        software or algorithms embedded in the SOFA software.
*
*     e) These requirements must be reproduced intact in any source
*        distribution and shall apply to anyone to whom you have
*        granted a further right to modify the source code of your
*        derived work.
*
*     Note that, as originally distributed, the SOFA software is
*     intended to be a definitive implementation of the IAU standards,
*     and consequently third-party modifications are discouraged.  All
*     variations, no matter how minor, must be explicitly marked as
*     such, as explained above.
*
*  4. You shall not cause the SOFA software to be brought into
*     disrepute, either by misuse, or use for inappropriate tasks, or
*     by inappropriate modification.
*
*  5. The SOFA software is provided "as is" and SOFA makes no warranty
*     as to its use or performance.   SOFA does not and cannot warrant
*     the performance or results which the user may obtain by using the
*     SOFA software.  SOFA makes no warranties, express or implied, as
*     to non-infringement of third party rights, merchantability, or
*     fitness for any particular purpose.  In no event will SOFA be
*     liable to the user for any consequential, incidental, or special
*     damages, including any lost profits or lost savings, even if a
*     SOFA representative has been advised of such damages, or for any
*     claim by any third party.
*
*  6. The provision of any version of the SOFA software under the terms
*     and conditions specified herein does not imply that future
*     versions will also be made available under the same terms and
*     conditions.
*
*  In any published work or commercial product which uses the SOFA
*  software directly, acknowledgement (see www.iausofa.org) is
*  appreciated.
*
*  Correspondence concerning SOFA software should be addressed as
*  follows:
*
*      By email:  sofa@ukho.gov.uk
*      By post:   IAU SOFA Center
*                 HM Nautical Almanac Office
*                 UK Hydrographic Office
*                 Admiralty Way, Taunton
*                 Somerset, TA1 2DN
*                 United Kingdom
*
*-----------------------------------------------------------------------

      END SUBROUTINE iau_RY

      SUBROUTINE iau_RZ ( PSI, R )
*+
*  - - - - - - -
*   i a u _ R Z
*  - - - - - - -
*
*  Rotate an r-matrix about the z-axis.
*
*  This routine is part of the International Astronomical Union's
*  SOFA (Standards of Fundamental Astronomy) software collection.
*
*  Status:  vector/matrix support routine.
*
*  Given:
*     PSI      d         angle (radians)
*
*  Given and returned:
*     R        d(3,3)    r-matrix, rotated
*
*  Notes:
*
*  1) Calling this routine with positive PSI incorporates in the
*     supplied r-matrix R an additional rotation, about the z-axis,
*     anticlockwise as seen looking towards the origin from positive z.
*
*  2) The additional rotation can be represented by this matrix:
*
*         (  + cos(PSI)   + sin(PSI)     0  )
*         (                                 )
*         (  - sin(PSI)   + cos(PSI)     0  )
*         (                                 )
*         (       0            0         1  )
*
*  This revision:  2012 April 3
*
*  SOFA release 2018-01-30
*
*  Copyright (C) 2018 IAU SOFA Board.  See notes at end.
*
*-----------------------------------------------------------------------

      IMPLICIT NONE

      DOUBLE PRECISION PSI, R(3,3)

      DOUBLE PRECISION S, C, A11, A12, A13, A21, A22, A23

* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

      S = SIN(PSI)
      C = COS(PSI)

      A11 =   C*R(1,1) + S*R(2,1)
      A12 =   C*R(1,2) + S*R(2,2)
      A13 =   C*R(1,3) + S*R(2,3)
      A21 = - S*R(1,1) + C*R(2,1)
      A22 = - S*R(1,2) + C*R(2,2)
      A23 = - S*R(1,3) + C*R(2,3)

      R(1,1) = A11
      R(1,2) = A12
      R(1,3) = A13
      R(2,1) = A21
      R(2,2) = A22
      R(2,3) = A23

*  Finished.

*+----------------------------------------------------------------------
*
*  Copyright (C) 2018
*  Standards Of Fundamental Astronomy Board
*  of the International Astronomical Union.
*
*  =====================
*  SOFA Software License
*  =====================
*
*  NOTICE TO USER:
*
*  BY USING THIS SOFTWARE YOU ACCEPT THE FOLLOWING SIX TERMS AND
*  CONDITIONS WHICH APPLY TO ITS USE.
*
*  1. The Software is owned by the IAU SOFA Board ("SOFA").
*
*  2. Permission is granted to anyone to use the SOFA software for any
*     purpose, including commercial applications, free of charge and
*     without payment of royalties, subject to the conditions and
*     restrictions listed below.
*
*  3. You (the user) may copy and distribute SOFA source code to others,
*     and use and adapt its code and algorithms in your own software,
*     on a world-wide, royalty-free basis.  That portion of your
*     distribution that does not consist of intact and unchanged copies
*     of SOFA source code files is a "derived work" that must comply
*     with the following requirements:
*
*     a) Your work shall be marked or carry a statement that it
*        (i) uses routines and computations derived by you from
*        software provided by SOFA under license to you; and
*        (ii) does not itself constitute software provided by and/or
*        endorsed by SOFA.
*
*     b) The source code of your derived work must contain descriptions
*        of how the derived work is based upon, contains and/or differs
*        from the original SOFA software.
*
*     c) The names of all routines in your derived work shall not
*        include the prefix "iau" or "sofa" or trivial modifications
*        thereof such as changes of case.
*
*     d) The origin of the SOFA components of your derived work must
*        not be misrepresented;  you must not claim that you wrote the
*        original software, nor file a patent application for SOFA
*        software or algorithms embedded in the SOFA software.
*
*     e) These requirements must be reproduced intact in any source
*        distribution and shall apply to anyone to whom you have
*        granted a further right to modify the source code of your
*        derived work.
*
*     Note that, as originally distributed, the SOFA software is
*     intended to be a definitive implementation of the IAU standards,
*     and consequently third-party modifications are discouraged.  All
*     variations, no matter how minor, must be explicitly marked as
*     such, as explained above.
*
*  4. You shall not cause the SOFA software to be brought into
*     disrepute, either by misuse, or use for inappropriate tasks, or
*     by inappropriate modification.
*
*  5. The SOFA software is provided "as is" and SOFA makes no warranty
*     as to its use or performance.   SOFA does not and cannot warrant
*     the performance or results which the user may obtain by using the
*     SOFA software.  SOFA makes no warranties, express or implied, as
*     to non-infringement of third party rights, merchantability, or
*     fitness for any particular purpose.  In no event will SOFA be
*     liable to the user for any consequential, incidental, or special
*     damages, including any lost profits or lost savings, even if a
*     SOFA representative has been advised of such damages, or for any
*     claim by any third party.
*
*  6. The provision of any version of the SOFA software under the terms
*     and conditions specified herein does not imply that future
*     versions will also be made available under the same terms and
*     conditions.
*
*  In any published work or commercial product which uses the SOFA
*  software directly, acknowledgement (see www.iausofa.org) is
*  appreciated.
*
*  Correspondence concerning SOFA software should be addressed as
*  follows:
*
*      By email:  sofa@ukho.gov.uk
*      By post:   IAU SOFA Center
*                 HM Nautical Almanac Office
*                 UK Hydrographic Office
*                 Admiralty Way, Taunton
*                 Somerset, TA1 2DN
*                 United Kingdom
*
*-----------------------------------------------------------------------

      END SUBROUTINE iau_RZ

      SUBROUTINE iau_RXR ( A, B, ATB )
*+
*  - - - - - - - -
*   i a u _ R X R
*  - - - - - - - -
*
*  Multiply two r-matrices.
*
*  This routine is part of the International Astronomical Union's
*  SOFA (Standards of Fundamental Astronomy) software collection.
*
*  Status:  vector/matrix support routine.
*
*  Given:
*     A        d(3,3)    first r-matrix
*     B        d(3,3)    second r-matrix
*
*  Returned:
*     ATB      d(3,3)    A * B
*
*  Called:
*     iau_CR       copy r-matrix
*
*  This revision:  2000 November 25
*
*  SOFA release 2018-01-30
*
*  Copyright (C) 2018 IAU SOFA Board.  See notes at end.
*
*-----------------------------------------------------------------------

      IMPLICIT NONE

      DOUBLE PRECISION A(3,3), B(3,3), ATB(3,3)

      INTEGER I, J, K
      DOUBLE PRECISION W, WM(3,3)

* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

      DO 3 I=1,3
         DO 2 J=1,3
            W = 0D0
            DO 1 K=1,3
               W = W + A(I,K)*B(K,J)
 1          CONTINUE
            WM(I,J) = W
 2       CONTINUE
 3    CONTINUE
      CALL iau_CR ( WM, ATB )

*  Finished.

*+----------------------------------------------------------------------
*
*  Copyright (C) 2018
*  Standards Of Fundamental Astronomy Board
*  of the International Astronomical Union.
*
*  =====================
*  SOFA Software License
*  =====================
*
*  NOTICE TO USER:
*
*  BY USING THIS SOFTWARE YOU ACCEPT THE FOLLOWING SIX TERMS AND
*  CONDITIONS WHICH APPLY TO ITS USE.
*
*  1. The Software is owned by the IAU SOFA Board ("SOFA").
*
*  2. Permission is granted to anyone to use the SOFA software for any
*     purpose, including commercial applications, free of charge and
*     without payment of royalties, subject to the conditions and
*     restrictions listed below.
*
*  3. You (the user) may copy and distribute SOFA source code to others,
*     and use and adapt its code and algorithms in your own software,
*     on a world-wide, royalty-free basis.  That portion of your
*     distribution that does not consist of intact and unchanged copies
*     of SOFA source code files is a "derived work" that must comply
*     with the following requirements:
*
*     a) Your work shall be marked or carry a statement that it
*        (i) uses routines and computations derived by you from
*        software provided by SOFA under license to you; and
*        (ii) does not itself constitute software provided by and/or
*        endorsed by SOFA.
*
*     b) The source code of your derived work must contain descriptions
*        of how the derived work is based upon, contains and/or differs
*        from the original SOFA software.
*
*     c) The names of all routines in your derived work shall not
*        include the prefix "iau" or "sofa" or trivial modifications
*        thereof such as changes of case.
*
*     d) The origin of the SOFA components of your derived work must
*        not be misrepresented;  you must not claim that you wrote the
*        original software, nor file a patent application for SOFA
*        software or algorithms embedded in the SOFA software.
*
*     e) These requirements must be reproduced intact in any source
*        distribution and shall apply to anyone to whom you have
*        granted a further right to modify the source code of your
*        derived work.
*
*     Note that, as originally distributed, the SOFA software is
*     intended to be a definitive implementation of the IAU standards,
*     and consequently third-party modifications are discouraged.  All
*     variations, no matter how minor, must be explicitly marked as
*     such, as explained above.
*
*  4. You shall not cause the SOFA software to be brought into
*     disrepute, either by misuse, or use for inappropriate tasks, or
*     by inappropriate modification.
*
*  5. The SOFA software is provided "as is" and SOFA makes no warranty
*     as to its use or performance.   SOFA does not and cannot warrant
*     the performance or results which the user may obtain by using the
*     SOFA software.  SOFA makes no warranties, express or implied, as
*     to non-infringement of third party rights, merchantability, or
*     fitness for any particular purpose.  In no event will SOFA be
*     liable to the user for any consequential, incidental, or special
*     damages, including any lost profits or lost savings, even if a
*     SOFA representative has been advised of such damages, or for any
*     claim by any third party.
*
*  6. The provision of any version of the SOFA software under the terms
*     and conditions specified herein does not imply that future
*     versions will also be made available under the same terms and
*     conditions.
*
*  In any published work or commercial product which uses the SOFA
*  software directly, acknowledgement (see www.iausofa.org) is
*  appreciated.
*
*  Correspondence concerning SOFA software should be addressed as
*  follows:
*
*      By email:  sofa@ukho.gov.uk
*      By post:   IAU SOFA Center
*                 HM Nautical Almanac Office
*                 UK Hydrographic Office
*                 Admiralty Way, Taunton
*                 Somerset, TA1 2DN
*                 United Kingdom
*
*-----------------------------------------------------------------------

      END SUBROUTINE iau_RXR

      SUBROUTINE iau_CR ( R, C )
*+
*  - - - - - - -
*   i a u _ C R
*  - - - - - - -
*
*  Copy an r-matrix.
*
*  This routine is part of the International Astronomical Union's
*  SOFA (Standards of Fundamental Astronomy) software collection.
*
*  Status:  vector/matrix support routine.
*
*  Given:
*     R        d(3,3)    r-matrix to be copied
*
*  Returned:
*     C        d(3,3)    copy
*
*  Called:
*     iau_CP       copy p-vector
*
*  This revision:  2000 November 25
*
*  SOFA release 2018-01-30
*
*  Copyright (C) 2018 IAU SOFA Board.  See notes at end.
*
*-----------------------------------------------------------------------

      IMPLICIT NONE

      DOUBLE PRECISION R(3,3), C(3,3)

      INTEGER I

* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

      DO 1 I=1,3
         CALL iau_CP ( R(1,I), C(1,I) )
 1    CONTINUE

*  Finished.

*+----------------------------------------------------------------------
*
*  Copyright (C) 2018
*  Standards Of Fundamental Astronomy Board
*  of the International Astronomical Union.
*
*  =====================
*  SOFA Software License
*  =====================
*
*  NOTICE TO USER:
*
*  BY USING THIS SOFTWARE YOU ACCEPT THE FOLLOWING SIX TERMS AND
*  CONDITIONS WHICH APPLY TO ITS USE.
*
*  1. The Software is owned by the IAU SOFA Board ("SOFA").
*
*  2. Permission is granted to anyone to use the SOFA software for any
*     purpose, including commercial applications, free of charge and
*     without payment of royalties, subject to the conditions and
*     restrictions listed below.
*
*  3. You (the user) may copy and distribute SOFA source code to others,
*     and use and adapt its code and algorithms in your own software,
*     on a world-wide, royalty-free basis.  That portion of your
*     distribution that does not consist of intact and unchanged copies
*     of SOFA source code files is a "derived work" that must comply
*     with the following requirements:
*
*     a) Your work shall be marked or carry a statement that it
*        (i) uses routines and computations derived by you from
*        software provided by SOFA under license to you; and
*        (ii) does not itself constitute software provided by and/or
*        endorsed by SOFA.
*
*     b) The source code of your derived work must contain descriptions
*        of how the derived work is based upon, contains and/or differs
*        from the original SOFA software.
*
*     c) The names of all routines in your derived work shall not
*        include the prefix "iau" or "sofa" or trivial modifications
*        thereof such as changes of case.
*
*     d) The origin of the SOFA components of your derived work must
*        not be misrepresented;  you must not claim that you wrote the
*        original software, nor file a patent application for SOFA
*        software or algorithms embedded in the SOFA software.
*
*     e) These requirements must be reproduced intact in any source
*        distribution and shall apply to anyone to whom you have
*        granted a further right to modify the source code of your
*        derived work.
*
*     Note that, as originally distributed, the SOFA software is
*     intended to be a definitive implementation of the IAU standards,
*     and consequently third-party modifications are discouraged.  All
*     variations, no matter how minor, must be explicitly marked as
*     such, as explained above.
*
*  4. You shall not cause the SOFA software to be brought into
*     disrepute, either by misuse, or use for inappropriate tasks, or
*     by inappropriate modification.
*
*  5. The SOFA software is provided "as is" and SOFA makes no warranty
*     as to its use or performance.   SOFA does not and cannot warrant
*     the performance or results which the user may obtain by using the
*     SOFA software.  SOFA makes no warranties, express or implied, as
*     to non-infringement of third party rights, merchantability, or
*     fitness for any particular purpose.  In no event will SOFA be
*     liable to the user for any consequential, incidental, or special
*     damages, including any lost profits or lost savings, even if a
*     SOFA representative has been advised of such damages, or for any
*     claim by any third party.
*
*  6. The provision of any version of the SOFA software under the terms
*     and conditions specified herein does not imply that future
*     versions will also be made available under the same terms and
*     conditions.
*
*  In any published work or commercial product which uses the SOFA
*  software directly, acknowledgement (see www.iausofa.org) is
*  appreciated.
*
*  Correspondence concerning SOFA software should be addressed as
*  follows:
*
*      By email:  sofa@ukho.gov.uk
*      By post:   IAU SOFA Center
*                 HM Nautical Almanac Office
*                 UK Hydrographic Office
*                 Admiralty Way, Taunton
*                 Somerset, TA1 2DN
*                 United Kingdom
*
*-----------------------------------------------------------------------

      END SUBROUTINE iau_CR

      SUBROUTINE iau_CP ( P, C )
*+
*  - - - - - - -
*   i a u _ C P
*  - - - - - - -
*
*  Copy a p-vector.
*
*  This routine is part of the International Astronomical Union's
*  SOFA (Standards of Fundamental Astronomy) software collection.
*
*  Status:  vector/matrix support routine.
*
*  Given:
*     P        d(3)     p-vector to be copied
*
*  Returned:
*     C        d(3)     copy
*
*  This revision:  2000 November 25
*
*  SOFA release 2018-01-30
*
*  Copyright (C) 2018 IAU SOFA Board.  See notes at end.
*
*-----------------------------------------------------------------------

      IMPLICIT NONE

      DOUBLE PRECISION P(3), C(3)

      INTEGER I

* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

      DO 1 I=1,3
         C(I) = P(I)
 1    CONTINUE

*  Finished.

*+----------------------------------------------------------------------
*
*  Copyright (C) 2018
*  Standards Of Fundamental Astronomy Board
*  of the International Astronomical Union.
*
*  =====================
*  SOFA Software License
*  =====================
*
*  NOTICE TO USER:
*
*  BY USING THIS SOFTWARE YOU ACCEPT THE FOLLOWING SIX TERMS AND
*  CONDITIONS WHICH APPLY TO ITS USE.
*
*  1. The Software is owned by the IAU SOFA Board ("SOFA").
*
*  2. Permission is granted to anyone to use the SOFA software for any
*     purpose, including commercial applications, free of charge and
*     without payment of royalties, subject to the conditions and
*     restrictions listed below.
*
*  3. You (the user) may copy and distribute SOFA source code to others,
*     and use and adapt its code and algorithms in your own software,
*     on a world-wide, royalty-free basis.  That portion of your
*     distribution that does not consist of intact and unchanged copies
*     of SOFA source code files is a "derived work" that must comply
*     with the following requirements:
*
*     a) Your work shall be marked or carry a statement that it
*        (i) uses routines and computations derived by you from
*        software provided by SOFA under license to you; and
*        (ii) does not itself constitute software provided by and/or
*        endorsed by SOFA.
*
*     b) The source code of your derived work must contain descriptions
*        of how the derived work is based upon, contains and/or differs
*        from the original SOFA software.
*
*     c) The names of all routines in your derived work shall not
*        include the prefix "iau" or "sofa" or trivial modifications
*        thereof such as changes of case.
*
*     d) The origin of the SOFA components of your derived work must
*        not be misrepresented;  you must not claim that you wrote the
*        original software, nor file a patent application for SOFA
*        software or algorithms embedded in the SOFA software.
*
*     e) These requirements must be reproduced intact in any source
*        distribution and shall apply to anyone to whom you have
*        granted a further right to modify the source code of your
*        derived work.
*
*     Note that, as originally distributed, the SOFA software is
*     intended to be a definitive implementation of the IAU standards,
*     and consequently third-party modifications are discouraged.  All
*     variations, no matter how minor, must be explicitly marked as
*     such, as explained above.
*
*  4. You shall not cause the SOFA software to be brought into
*     disrepute, either by misuse, or use for inappropriate tasks, or
*     by inappropriate modification.
*
*  5. The SOFA software is provided "as is" and SOFA makes no warranty
*     as to its use or performance.   SOFA does not and cannot warrant
*     the performance or results which the user may obtain by using the
*     SOFA software.  SOFA makes no warranties, express or implied, as
*     to non-infringement of third party rights, merchantability, or
*     fitness for any particular purpose.  In no event will SOFA be
*     liable to the user for any consequential, incidental, or special
*     damages, including any lost profits or lost savings, even if a
*     SOFA representative has been advised of such damages, or for any
*     claim by any third party.
*
*  6. The provision of any version of the SOFA software under the terms
*     and conditions specified herein does not imply that future
*     versions will also be made available under the same terms and
*     conditions.
*
*  In any published work or commercial product which uses the SOFA
*  software directly, acknowledgement (see www.iausofa.org) is
*  appreciated.
*
*  Correspondence concerning SOFA software should be addressed as
*  follows:
*
*      By email:  sofa@ukho.gov.uk
*      By post:   IAU SOFA Center
*                 HM Nautical Almanac Office
*                 UK Hydrographic Office
*                 Admiralty Way, Taunton
*                 Somerset, TA1 2DN
*                 United Kingdom
*
*-----------------------------------------------------------------------

      END SUBROUTINE iau_CP
      end module slam_iaupn
