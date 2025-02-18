
$fn=50;
pcbx = 21;
pcby = 21;
pcbz = 5;

ww = 1.4;
pitch = 16.5;
holeod = 6;
holeid = 3.5;

/*
difference() {
    translate([0,0,pcbz/2]) cube([pcbx+ww*2, pcby+ww*2, pcbz], center=true);
    translate([0,0,pcbz/2-ww]) cube([pcbx, pcby, pcbz], center=true);
    translate([0,0,pcbz/2-ww]) cube([pcbx-ww*2, pcby-ww*2, pcbz+5], center=true);
    translate([10,-5,0]) cube([10,10,10], center=true);
}

translate([pitch/2,-14,pcbz/2]) {
difference() {
translate([0,0,0]) cylinder(h=pcbz,r=5.5/2, center=true);
translate([0,0,0]) cylinder(h=pcbz+2,r=3.5/2, center=true);
}}

translate([-pitch/2,-14,pcbz/2]) {
difference() {
translate([0,0,0]) cylinder(h=pcbz,r=5.5/2, center=true);
translate([0,0,0]) cylinder(h=pcbz+2,r=3.5/2, center=true);
}}
*/

difference() {
hull() {
translate([0,0,pcbz/2]) cube([pcbx+ww*2, pcby+ww*2, pcbz], center=true);
translate([-pitch/2,-14,pcbz/2]) cylinder(h=pcbz,r=holeod/2, center=true);
translate([pitch/2,-14,pcbz/2]) cylinder(h=pcbz,r=holeod/2, center=true);
}
translate([0,0,pcbz/2-ww]) cube([pcbx, pcby, pcbz], center=true);
translate([0,0,pcbz/2-ww]) cube([pcbx-ww*2, pcby-ww*2, pcbz+5], center=true);
translate([0,-ww,pcbz/2-ww]) cube([pcbx-ww*5, pcby-ww*2, pcbz+5], center=true);
translate([pitch/2,-14,pcbz/2]) cylinder(h=pcbz+2,r=3.5/2, center=true);
translate([-pitch/2,-14,pcbz/2]) cylinder(h=pcbz+2,r=3.5/2, center=true);
translate([5,10,0]) cube([10,10,7.2], center=true);
}