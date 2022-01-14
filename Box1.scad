
// Author    KMS - Martin Dubois, P. Eng.
// Copyright (C) 2022 KMS
// License   http://www.apache.org/licenses/LICENSE-2.0
// Product   Panel1x1
// File      Box1.scad

use <../Base3D/Inch.scad>

use <Hole.scad>

module Box1_Left( aDist_X, aSize_Y, aSize_Z, aHole_Y )
{
    difference()
    {
        union()
        {
            cube( [ SIZE_X, TICK + aSize_Y, aSize_Z + TICK ] );
            Mount_Pos( - 3 - aDist_X, aDist_X, aSize_Y );
        }

        Box_Neg( SIZE_X / 2, aSize_Y, aSize_Z );
        Mount_Neg( SIZE_X / 2 - aDist_X, aHole_Y );
    }

}

module Box1_Right( aDist_X, aSize_Y, aSize_Z, aHole_Y )
{
    difference()
    {
        union()
        {
            cube( [ SIZE_X, TICK + aSize_Y, aSize_Z + TICK ] );
            Mount_Pos( SIZE_X, aDist_X, aSize_Y );
        }

        Box_Neg( - EPS, aSize_Y, aSize_Z );
        Mount_Neg( SIZE_X / 2 + aDist_X, aHole_Y );
    }
}

// Private
// //////////////////////////////////////////////////////////////////////////

module Box_Neg( aX, aSize_Y, aSize_Z )
{
    translate( [ aX, TICK, - EPS ] )
        cube( [ EPS + SIZE_X / 2, EPS + aSize_Y, EPS + aSize_Z ] );
}

module Mount_Pos( aX, aDist_X, aSize_Y )
{
    translate( [ aX, 0, 0 ] )
        cube( [ aDist_X + 3, TICK + aSize_Y, TICK ] );
}

module Mount_Neg( aX, aHole_Y )
{
    Hole_Shank_Z( aX, aHole_Y, - EPS, 2 * EPS + TICK, 3 );
}

EPS = 0.1;

SIZE_X = 5;

TICK = 2;
