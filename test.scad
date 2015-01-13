module board()
{
    translate([200, 180, 5]){
        rotate([0, 0, 90]) {
            import("motherboard/motherboard.stl", convexity=5);
        }
    }
}

module battery()
{
    translate([42, 180, 5]){
        rotate([0, 0, 90]) {
            import("battery/battery.stl", convexity=5);
        }
    }
}

module screen()
{
    translate([0,6,20]){
        rotate([0, -100, 0]){
            cube([174.75, 283.975, 1]);
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
        translate([0,0,3]){
            cube([202,302,20]);
        }
    }
}

module ssd()
{
    translate([60, 10, 5]) {
        cube([99.8, 69.8, 7]);
    }
}

module keyboard()
{
    translate([70, 5, 18]) {
        cube([120, 290, 24]);
    }
}

module lid()
{


}

board();
screen();
case();
ssd();
//keyboard();
battery();
//lid();
