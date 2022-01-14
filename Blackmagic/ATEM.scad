
// Author    KMS - Martin Dubois, P. Eng.
// Copyright (C) 2022 KMS
// License   http://www.apache.org/licenses/LICENSE-2.0
// Product   Panel1x1
// File      Blackmagic/ATEM.scad

use <../Hole.scad>

// Left();

translate( [ 50, 0, 0 ] ) Right();

module Left()
{
    difference()
    {
        union()
        {
            Floor( SIZE_X / 2 );
            Front_Pos();
            Mount_Pos( 2 );
            Wall( 0 );
        }

        Front_Neg();
        Mount_Neg( 2 );
    }
}

module Right()
{
    difference()
    {
        union()
        {
            Floor( 0 );
            Front_Pos();
            Mount_Pos( SIZE_X - 2 );
            Wall( SIZE_X / 2 );
        }

        Front_Neg();
        Mount_Neg( SIZE_X - 2 );
    }
}

// Private
// //////////////////////////////////////////////////////////////////////////

module Floor( aX )
{
    translate( [ aX, 0, 0 ] )
        cube( [ SIZE_X / 2, TICK, 22.9 ] );
}

module Front_Neg()
{
    translate( [ - EPS, 0, 22.97 ] )
    {
        rotate( [ TOP_A, 0, 0 ] )
            cube( [ 2 * EPS + SIZE_X, SIZE_Y + 1, 7 ] );
    }
}

module Front_Pos()
{
    translate( [ 0, 0.3, 21 ] )
    {
        rotate( [ TOP_A, 0, 0 ] )
            cube( [ SIZE_X, SIZE_Y + 0.3, TICK ] );
    }
}

module Mount_Pos( aX )
{
    for ( y = [ 20, 45.4 ] )
    {
        translate( [ aX, y, 0 ] )
            cylinder( 25, 2.5 + TICK + 1, 2, $fn = 20 );
    }
}

module Mount_Neg( aX )
{
    Hole_Thread_Z( aX, 20, - EPS, EPS + 15, 2 );
}

module Wall( aX )
{
    translate( [ aX, 0, 0 ] )
        cube( [ SIZE_X / 2, SIZE_Y, 29.5 ] );
}

EPS = 0.1;

SIZE_X = 20;
SIZE_Y = 65;

TICK = 2;

TOP_A = 7;
