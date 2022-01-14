
// Author    KMS - Martin Dubois, P. Eng.
// Copyright (C) 2022 KMS
// License   http://www.apache.org/licenses/LICENSE-2.0
// Product   Panel1x1
// File      Weintek/MT8070iER.scad

use <../Box1.scad>

Left();

// translate( [ 50, 0, 0 ] ) Right();

module Left()
{
    Box1_Left( DIST_X, SIZE_Y_LEFT, SIZE_Z, HOLE_Y );

    translate( [ 2.5, 2, 0 ] )
        cube( [ 2.5, SIZE_Y_LEFT, 7 ] );

}

module Right() { Box1_Right( DIST_X, SIZE_Y_RIGHT, SIZE_Z, HOLE_Y ); }

// Private
// //////////////////////////////////////////////////////////////////////////

DIST_X       =  7;
HOLE_Y       = 11;
SIZE_Y_LEFT  = 95;
SIZE_Y_RIGHT = 20;
SIZE_Z       = 35;
