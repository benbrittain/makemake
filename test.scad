module board()
{
    import("motherboard/motherboard.stl", convexity=3);
//    translate([11, 11, 5]){
//        cube([120, 150, 10]);
//    }
}

module battery()
{
    translate([10, 10, 10]) {
        rotate([0, 90, 0]) {
            import("battery/battery.stl", convexity=3);
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
    translate([60, 180, 5]) {
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
//screen();
//case();
//ssd();
//keyboard();
battery();
//lid();
