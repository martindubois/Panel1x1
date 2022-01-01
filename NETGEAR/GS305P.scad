
// Author    KMS - Martin Dubois, P. Eng.
// Copyright (C) 2022 KMS
// License   http://www.apache.org/licenses/LICENSE-2.0
// Product   Panel1x1
// File      Blackmagic/GS305P.scad

use <../Box0.scad>

Left();

translate( [ 50, 0, 0 ] ) Right();

module Left() { Box0_Left( DIST_X, SIZE_Y, SIZE_Z ); }
module Right() { Box0_Right( DIST_X, SIZE_Y, SIZE_Z ); }

// Private
// //////////////////////////////////////////////////////////////////////////

DIST_X = 10;
SIZE_Y = 50;
SIZE_Z = 31.5;
