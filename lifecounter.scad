$t = 1;

$fn=100;
wheelWidth = 10;
wheelDia = 30;

wheelHolderWidth = wheelWidth*0.8;
wheelHolderDia = wheelDia*1.2;

axelDia= wheelDia/3;
axelLength = wheelWidth*2+(wheelWidth/2);

textHeight = 5;

magnetDia = 5;
magnetHeight = 5;


springLength = wheelDia*0.8; // determined impirically
springWidth = 1.2; // chosen arbitrarily, adjust for feel
springOffset = axelDia/2*sin(2*360/10);



module axel(mod){
    cylinder(h=axelLength, d=axelDia, $fn=10);
}

module axelHoleDif(){
    cylinder(h=axelLength, d=axelDia*2);
}

module axelHoleEnd(){
    cylinder(h=wheelWidth/2, d=axelDia, $fn=10);
}
module springs(){
    translate([-springLength/2,springOffset,0])
        cube([springLength,springWidth,wheelWidth]);

    rotate([0,0,36*4])
        translate([-springLength/2,springOffset,0])
            cube([springLength,springWidth,wheelWidth]);
    
    
    rotate([0,0,36*7])
        translate([-springLength/2,springOffset,0])
            cube([springLength,springWidth,wheelWidth]);
    
    
}

module numbers(tranXMod,tranZMod,angle) {
    rotate([0,0,18])
        for (n=[0:9])
        rotate ([0,0,(n-1)*360/10])
            translate([wheelDia/tranXMod-2,-wheelWidth/3,wheelWidth*tranZMod])
                rotate([0,angle,0])
                    linear_extrude(2)
                        text(str(n), size=8);
}

module sides(tranZ, triRot, tranTri){
    translate([0,0,tranZ])
        difference(){
            union(){
                hull(){
                    cylinder($fn=10, h=wheelHolderWidth, d=wheelHolderDia);
                    
                        translate([-wheelHolderDia/2,wheelHolderDia/2,0])
                            cube([wheelHolderDia,wheelHolderDia/8,wheelHolderWidth]);
                    
                    
                }

                translate([0,-wheelHolderDia/2+1.5,wheelHolderWidth/2+tranTri])
                    rotate([90,triRot,0])
                        cylinder($fn=3, h=1, r=3);
            }
            
            hull(){
                translate([0,wheelHolderDia/1.5,-1])
                    cylinder(d=wheelHolderDia/1.75, h=wheelHolderWidth+2);
                
                
                translate([-wheelHolderDia/3.5,wheelHolderDia/2,-1])
                    cube([wheelHolderDia/1.75,wheelHolderDia/1.75,wheelHolderWidth+2]);
            }
            
            
        }
}
//Number Wheel #1
rotate([0,0,$t*-360])
translate([0,0,$t*30])
    union() {
        difference(){
            cylinder($fn=10, h=wheelWidth, d2=wheelDia, d1=wheelHolderDia);
            
            axelHoleDif();
            
        }
        springs();
        numbers(1.9,0.75,70);
    }

//Number Wheel #2
rotate([0,0,$t*360])
translate([0,0,$t*60])
    union() {
        difference(){
            translate([0,0,wheelWidth])
            cylinder($fn=10, h=wheelWidth, d2=wheelHolderDia, d1=wheelDia);
            
            axelHoleDif();
            
        }
            translate([0,0,wheelWidth])
        springs();
        numbers(1.8,1.75,110);
    }

//Side #1
union() {
    sides(-wheelHolderWidth,-90,1);

    axel();
}


//Side #2
translate([0,0,$t*90])
    difference() {
        sides(wheelWidth*2,90,-1);
        translate([0,0,wheelWidth*2])
            axelHoleEnd();
    }



/*

//Test only the axis fit before wasting plastic on the whole thing
difference(){
cylinder(d=wheelHolderDia/1.75, h=wheelWidth);
    
cylinder(d=wheelHolderDia/2, h=wheelWidth);}

intersection(){
    
cylinder(d=wheelHolderDia/1.75, h=wheelWidth);
springs();}

translate([0,30,0])
axel();*/