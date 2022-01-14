
// Author KMS - Martin Dubois, P. Eng.
// Copyright (C) 2022 KMS
// License   http://www.apache.org/licenses/LICENSE-2.0
// Product   Panel1x1
// File      Hook.scad

use <../Base3D/Cylinder.scad>
use <../Base3D/Inch.scad>
use <../Base3D/SAE/Screw8.scad>

intersection()
{
    difference()
    {
        union()
        {
            cube( [ SIZE_X, SIZE_Y, SIZE_Z ] );

            translate( [ 0, SIZE_Y - TICK, SIZE_Z ] )
                cube( [ SIZE_X, TICK, 10 ] );

            translate( [ SIZE_X / 2, 8, SIZE_Z ] )
                cylinder( 6, 3, 2, $fn = 20 );
        }

        for ( x = [ 10, SIZE_X - 10 ] )
        {
            translate( [ x, - EPS, SIZE_Z / 2 ] )
            {
                Screw8_Head_Y( 5 );
                Screw8_Shank_Y( 2 * EPS + SIZE_Y );
            }
        }
    }

    translate( [ SIZE_X / 2, 0, SIZE_Z / 2 + 5 ] )
    {
        Cylinder_Y( SIZE_Y, SIZE_X / 2, 80 );
    }
}

// Private
/////////////////////////////////////////////////////////////////////////////

EPS = 0.1;

TICK = 2;

SIZE_X = 20 + Inch_to_mm(1);
SIZE_Y = 18 + TICK;
SIZE_Z = 18;