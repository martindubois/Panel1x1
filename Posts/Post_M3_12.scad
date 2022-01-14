
// Author    KMS - Martin Dubois, P. Eng.
// Copyright (C) 2022 KMS
// License   http://www.apache.org/licenses/LICENSE-2.0
// Product   Panel1x1
// File      Posts/Post_M3_12.scad

use <../../Base3D/Metric/M3.scad>
use <../../Base3D/SAE/Screw10.scad>

difference()
{
    union()
    {
        cylinder( SIZE_Z, POST_R, POST_R, $fn = 16 );

        translate( [ DIST, 0, 0 ] )
            cylinder( TICK, MOUNT_R, MOUNT_R, $fn = 32 );

        translate( [ 0, - POST_R, 0 ] )
            cube( [ DIST, 2 * POST_R, TICK ] );
    }

    translate( [ 0, 0, - EPS ] )
        M3_Thread_Z( 2 * EPS + SIZE_Z );

    translate( [ DIST, 0, - EPS ] )
        Screw10_Shank_Z( 2 * EPS + TICK );

}

// Private
// //////////////////////////////////////////////////////////////////////////

DIST = 12;

EPS = 0.1;

MOUNT_R = 6;

POST_R = 3;

SIZE_X = DIST + POST_R + MOUNT_R;
SIZE_Z = 6;

TICK = 2;
