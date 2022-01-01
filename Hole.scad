
// Author    KMS - Martin Dubois, P. Eng.
// Copyright (C) 2022 KMS
// License   http://www.apache.org/licenses/LICENSE-2.0
// Product   Panel1x1
// File      Hole.scad

use <../Base3D/Inch.scad>
use <../Base3D/SAE/Screw10.scad>

module Hole_Shank_Z( aX, aY, aZ, aSize_Z, aCount_Y )
{
    for ( y = [ aY : Inch_to_mm( 1 ) : aY + aCount_Y * Inch_to_mm( 1 ) ] )
    {
        translate( [ aX, y, aZ ] )
            Screw10_Shank_Z( aSize_Z );
    }
}

module Hole_Thread_Z( aX, aY, aZ, aSize_Z, aCount_Y )
{
    for ( y = [ aY : Inch_to_mm( 1 ) : aY + aCount_Y * Inch_to_mm( 1 ) ] )
    {
        translate( [ aX, y, aZ ] )
            Screw10_Thread_Z( aSize_Z );
    }
}
