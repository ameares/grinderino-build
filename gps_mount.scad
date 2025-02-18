/*
 * GPS Mount for Grinderino Frame
 * --------------------------------
 * Description:
 *   This OpenSCAD script generates a mount for a GPS module 
 *   designed to attach to the Grinderino frame.
 *
 * Author: Andrew Meares
 * Date: 2025-02-18
 * Version: 1.0
 *
 * License:
 *   MIT License
 *
 */


$fn=50;
pcbx = 21;
pcby = 21;
pcbz = 5;

ww = 1.4;
pitch = 16.5;
holeod = 6;
holeid = 3.5;

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