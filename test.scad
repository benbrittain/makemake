module board()
{
    translate([11, 11, 0]){
        cube([120, 150, 10]);
    }
}

module screen()
{
    translate([00,0,0]){
        rotate([0,90,0]){
            cube([330, 40, 2]);
        }
    }
}


module case()
{
    difference(){
        minkowski()
        {
            cube([200,300,20]);
            cylinder(r=4,h=1);
        }
        translate([0,0,0]){
            cube([202,302,20]);
        }
    }
}

module ssd()
{
    translate([60, 180, 0]) {
        cube([99.8, 69.8, 7]);
    }
}

module keyboard()
{
    translate([70, 5, -18]) {
        cube([120, 290, 24]);
    }
}

board();
//screen();
case();
ssd();
keyboard();
