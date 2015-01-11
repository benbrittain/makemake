module screen()
{
    translate([1, 1, 0]){
        rotate([0, 0, 0]){
            cube([174.75, 283.975, 2]);
        }
    }
}

module lid_front()
{
    difference(){
        minkowski()
        {
            cube([175,290,1]);
            cylinder(r=4,h=1);
        }
        screen();
    }
}

module lid_back()
{
    translate([0, 0, 1]) {
        cube([175, 290, 1]);
    }
}

lid_front();
lid_back();
//screen();
