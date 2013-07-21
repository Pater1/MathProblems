
//common Vals
baseline = 300; //distance between static points of inputCrank and outputCrank
commonWidth = 10;
commonHeight = 4;

//inputCrank Vals
inputCrankLength = 100;
inputCrankAngle = 90;

//OutputCrank Vals
outputCrankLength = 200;

//ConnectingRod Vals


inputCrank(inputCrankLength, commonWidth, commonHeight, -inputCrankAngle);
outputCrank(outputCrankLength, commonWidth, commonHeight);  
connectingRod(baseline);
 
 
 
 module inputCrank(Length,Width,Height,initAngle){
	translate([0,baseline/2,0]){
		rotate([0,0,initAngle]){
			color("red")cylinder(Height,r = Width/2);
			translate([-Width/2,0,.1])
			cube([Width,Length,Height-.2]);
			translate([0,Length,0])
			color("green")cylinder(Height,r = Width/2);
		}
	}
 }
 
module outputCrank(Length,Width,Height){
	translate([0,-baseline/2,0]){
		rotate([0,0,0]){
		rod(Length,Width,Height);
		}
	} 
 }
 
 module connectingRod(Length,Width,Height){
 
 }
 
module rod(Length,Width,Height){		
		color("red")cylinder(Height,r = Width/2);
		translate([-Width/2,0,.1])
		cube([Width,Length,Height-.2]);
		translate([0,Length,0])
		color("green")cylinder(Height,r = Width/2);

}