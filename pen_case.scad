include <../threads.scad>

/* [Print Settings] */
// Cyrcles interpolation
FINESS=80; //[50:500]
// Tollerance of the printer (width of cuts and increasing goven dimentions)
TOLLERANCE= 0.3; // [0.1, 0.2, 0.3, 0.4, 0.5]
// nozzle diameter
NOZZEL_D= 0.4; // [0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1]
//Build case or pen "models"
PRESENT="case"; // ["case","model"]
//PRESENT="model";

/* [Case] */
// Minimum Case length (0 - automatic)
CASE_MIN_LENGTH= 0;
// Minimum case "diameter" (0 - automatic)
CASE_MIN_D= 0;
// Minimum thickness of top and bottom
CASE_TOP_BOTTOM_WALL_MIN= 1.6;
// Thikness of side walls
CASE_WALL= 1.2; // [3, 2.4, 2, 1.8, 1.6, 1.2]
// Latch pin hight
LATCH_PIN_H= 2; // [3, 2.4, 2, 1.8, 1.6, 1.2]
// Latch hight
LATCH_H= 2.4; // [3, 2.4, 2, 1.8, 1.6, 1.2]
// Latch final depth (starts with thikness of the case wall)
LATCH_DEPTH= 2.4; // [3, 2.4, 2, 1.8, 1.6, 1.2]
// Case close in turns
CASE_TURN= 2/3; // [0.3333333, 0.6666666, 0.5, 1, 1.5, 2, 3]
// Case thread width
CASE_TR_W= 2.5; // [2.5, 3, 3.5, 4, 4.5, 5]
// Case thread length (not 0 - automatic length and multiplier)
CASE_TR_L= 0; // [0:100]
// Case faces
CASE_N= 3; // [3, 4, 5, 6, 7, 8, 9, 10]
// Case corners rounding
CASE_ROUNDING= 9; // [0, 1, 1.5, 2, 2.5, 3, 4, 5, 6, 8, 9, 10, 11, 12]
// Case corners rounding mode
CASE_ROUNDING_MODE="2.5d"; // ["sharp", "2d", "3d", "2.5d"]
// Case thread starts multiplier (starts = faces*multiplier)
CASE_TR_NN= 1; // [1, 2, 3, 4]
// Case thread space multiplier (as above but space)
CASE_TR_SPACE_RATIO= 1.5; // [1, 1.3333333, 1.5, 1.6666666, 2]
// So many pen will be wisible from the case to take it out
CASE_TAKE= 9;
// Latch maximum length
LATCH_MAX_L= 15;
// Generate latch supports
LATCH_SUPPORT= true;

/* [text] */
// Vertical text (empty string to no text)
VTEXT_TEXT= "Noodler's Boston Safety";
// Vertical text font
VTEXT_FONT= "Liberation Sans;style=bold";
// Vertical text size
VTEXT_SIZE= 7.8;
// Vertical text depth
VTEXT_DEPTH= 0.6;
// Vertical text skip ratio (1-each face, 2-each second ...)
VTEXT_RATIO= 1; // [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
// Vertical text turn (top-bottom / bottom-top)
VTEXT_TURN=false; // [true, false]
// Top/bottom text (empty string to no text)
TBTEXT_TEXT= "Boston";
// Top/bottom text font
TBTEXT_FONT= "Liberation Sans;style=bold";
// Top/bottom text size
TBTEXT_SIZE= 6;
// Top/bottom text turn angle
TBTEXT_ANGLE= 30;
// Top/bottom text depth
TBTEXT_DEPTH= 0.6;

/* [Pen] */

// First (top) cylinder diameter
PEN_1_D=12.5;
// First cylinder length (0 - no section)
PEN_1_L=8.2;
// First clip overhang (0 - no clip)
PEN_1_CLIP_DD=0;
// First clip width
PEN_1_CLIP_W=0;
// Second cylinder diameter
PEN_2_D=13;
// Second cylinder length (0 - no section)
PEN_2_L=40;
// Second clip overhang (0 - no clip)
PEN_2_CLIP_DD=4;
// Second clip width
PEN_2_CLIP_W=6;
// Third cylinder diameter
PEN_3_D=13;
// Third cylinder length (0 - no section)
PEN_3_L=2.5;
// Third clip overhang (0 - no clip)
PEN_3_CLIP_DD=0;
// Third clip width
PEN_3_CLIP_W=0;
// Fourth cylinder diameter
PEN_4_D=11;
// Fourth cylinder length (0 - no section)
PEN_4_L=36;
// Fourth clip overhang (0 - no clip)
PEN_4_CLIP_DD=0;
// Fourth clip width
PEN_4_CLIP_W=0;
// Fifth cylinder diameter
PEN_5_D=13;
// Fifth cylinder length (0 - no section)
PEN_5_L=56.5;
// Fifth clip overhang (0 - no clip)
PEN_5_CLIP_DD=0;
// Fifth clip width
PEN_5_CLIP_W=0;
// Sixth cylinder diameter
PEN_6_D=11;
// Sexth cylinder length (0 - no section)
PEN_6_L=12;
// Sexth clip overhang (0 - no clip)
PEN_6_CLIP_DD=0;
// Fexth clip width
PEN_6_CLIP_W=0;


/* [Hidden] */

LATCH_W= CASE_WALL;
$fn= FINESS;

/*******************************
    Some known pen model data
********************************/
/*
// Lamy 2000
// First (top) cylinder diameter
PEN_1_D=10;
// First cylinder length (0 - no section)
PEN_1_L=3.3;
// First clip overhang (0 - no clip)
PEN_1_CLIP_DD=0;
// First clip width
PEN_1_CLIP_W=0;
// Second cylinder diameter
PEN_2_D=13.6;
// Second cylinder length (0 - no section)
PEN_2_L=38.3;
// Second clip overhang (0 - no clip)
PEN_2_CLIP_DD=2.8;
// Second clip width
PEN_2_CLIP_W=5.1;
// Third cylinder diameter
PEN_3_D=14.3;
// Third cylinder length (0 - no section)
PEN_3_L=22.8;
// Third clip overhang (0 - no clip)
PEN_3_CLIP_DD=0;
// Third clip width
PEN_3_CLIP_W=0;
// Fourth cylinder diameter
PEN_4_D=13.3;
// Fourth cylinder length (0 - no section)
PEN_4_L=74.4;
// Fourth clip overhang (0 - no clip)
PEN_4_CLIP_DD=0;
// Fourth clip width
PEN_4_CLIP_W=0;
// Fifth cylinder diameter
PEN_5_D=0;
// Fifth cylinder length (0 - no section)
PEN_5_L=0;
// Fifth clip overhang (0 - no clip)
PEN_5_CLIP_DD=0;
// Fifth clip width
PEN_5_CLIP_W=0;
// Sixth cylinder diameter
PEN_6_D=0;
// Sexth cylinder length (0 - no section)
PEN_6_L=0;
// Sexth clip overhang (0 - no clip)
PEN_6_CLIP_DD=0;
// Fexth clip width
PEN_6_CLIP_W=0;
*/
/*
// Lamy Safari
// First (top) cylinder diameter
PEN_1_D=13;
// First cylinder length (0 - no section)
PEN_1_L=3.5;
// First clip overhang (0 - no clip)
PEN_1_CLIP_DD=0;
// First clip width
PEN_1_CLIP_W=0;
// Second cylinder diameter
PEN_2_D=14.7;
// Second cylinder length (0 - no section)
PEN_2_L=56.4;
// Second clip overhang (0 - no clip)
PEN_2_CLIP_DD=4;
// Second clip width
PEN_2_CLIP_W=13.5;
// Third cylinder diameter
PEN_3_D=14.7;
// Third cylinder length (0 - no section)
PEN_3_L=5.5;
// Third clip overhang (0 - no clip)
PEN_3_CLIP_DD=0;
// Third clip width
PEN_3_CLIP_W=0;
// Fourth cylinder diameter
PEN_4_D=12.5;
// Fourth cylinder length (0 - no section)
PEN_4_L=73;
// Fourth clip overhang (0 - no clip)
PEN_4_CLIP_DD=0;
// Fourth clip width
PEN_4_CLIP_W=0;
// Fifth cylinder diameter
PEN_5_D=11.7;
// Fifth cylinder length (0 - no section)
PEN_5_L=1.6;
// Fifth clip overhang (0 - no clip)
PEN_5_CLIP_DD=0;
// Fifth clip width
PEN_5_CLIP_W=0;
// Sixth cylinder diameter
PEN_6_D=0;
// Sexth cylinder length (0 - no section)
PEN_6_L=0;
// Sexth clip overhang (0 - no clip)
PEN_6_CLIP_DD=0;
// Fexth clip width
PEN_6_CLIP_W=0;
*/
/*
// Opus 88 KOLORO DEMO
// First (top) cylinder diameter
PEN_1_D=16.3;
// First cylinder length (0 - no section)
PEN_1_L=7.7;
// First clip overhang (0 - no clip)
PEN_1_CLIP_DD=0;
// First clip width
PEN_1_CLIP_W=0;
// Second cylinder diameter
PEN_2_D=16.5;
// Second cylinder length (0 - no section)
PEN_2_L=42.3;
// Second clip overhang (0 - no clip)
PEN_2_CLIP_DD=4.8;
// Second clip width
PEN_2_CLIP_W=8;
// Third cylinder diameter
PEN_3_D=16.5;
// Third cylinder length (0 - no section)
PEN_3_L=13.5;
// Third clip overhang (0 - no clip)
PEN_3_CLIP_DD=0;
// Third clip width
PEN_3_CLIP_W=0;
// Fourth cylinder diameter
PEN_4_D=15;
// Fourth cylinder length (0 - no section)
PEN_4_L=83.3;
// Fourth clip overhang (0 - no clip)
PEN_4_CLIP_DD=0;
// Fourth clip width
PEN_4_CLIP_W=0;
// Fifth cylinder diameter
PEN_5_D=0;
// Fifth cylinder length (0 - no section)
PEN_5_L=0;
// Fifth clip overhang (0 - no clip)
PEN_5_CLIP_DD=0;
// Fifth clip width
PEN_5_CLIP_W=0;
// Sixth cylinder diameter
PEN_6_D=0;
// Sexth cylinder length (0 - no section)
PEN_6_L=0;
// Sexth clip overhang (0 - no clip)
PEN_6_CLIP_DD=0;
// Fexth clip width
PEN_6_CLIP_W=0;
*/
/*
// Noodler's Konrad
// First (top) cylinder diameter
PEN_1_D=12;
// First cylinder length (0 - no section)
PEN_1_L=6.9;
// First clip overhang (0 - no clip)
PEN_1_CLIP_DD=0;
// First clip width
PEN_1_CLIP_W=0;
// Second cylinder diameter
PEN_2_D=14;
// Second cylinder length (0 - no section)
PEN_2_L=39.1;
// Second clip overhang (0 - no clip)
PEN_2_CLIP_DD=4;
// Second clip width
PEN_2_CLIP_W=6;
// Third cylinder diameter
PEN_3_D=14.5;
// Third cylinder length (0 - no section)
PEN_3_L=13;
// Third clip overhang (0 - no clip)
PEN_3_CLIP_DD=0;
// Third clip width
PEN_3_CLIP_W=0;
// Fourth cylinder diameter
PEN_4_D=12;
// Fourth cylinder length (0 - no section)
PEN_4_L=74;
// Fourth clip overhang (0 - no clip)
PEN_4_CLIP_DD=0;
// Fourth clip width
PEN_4_CLIP_W=0;
// Fifth cylinder diameter
PEN_5_D=0;
// Fifth cylinder length (0 - no section)
PEN_5_L=0;
// Fifth clip overhang (0 - no clip)
PEN_5_CLIP_DD=0;
// Fifth clip width
PEN_5_CLIP_W=0;
// Sixth cylinder diameter
PEN_6_D=0;
// Sexth cylinder length (0 - no section)
PEN_6_L=0;
// Sexth clip overhang
PEN_6_CLIP_DD=0;
// Fexth clip width
PEN_6_CLIP_W=0;
*/
/*
// Noodler's Ahab
// First (top) cylinder diameter
PEN_1_D=11;
// First cylinder length (0 - no section)
PEN_1_L=6.5;
// First clip overhang (0 - no clip)
PEN_1_CLIP_DD=0;
// First clip width
PEN_1_CLIP_W=0;
// Second cylinder diameter
PEN_2_D=15.1;
// Second cylinder length (0 - no section)
PEN_2_L=41.5;
// Second clip overhang (0 - no clip)
PEN_2_CLIP_DD=5.5;
// Second clip width
PEN_2_CLIP_W=8;
// Third cylinder diameter
PEN_3_D=15.2;
// Third cylinder length (0 - no section)
PEN_3_L=12;
// Third clip overhang (0 - no clip)
PEN_3_CLIP_DD=0;
// Third clip width
PEN_3_CLIP_W=0;
// Fourth cylinder diameter
PEN_4_D=14;
// Fourth cylinder length (0 - no section)
PEN_4_L=69.2;
// Fourth clip overhang (0 - no clip)
PEN_4_CLIP_DD=0;
// Fourth clip width
PEN_4_CLIP_W=0;
// Fifth cylinder diameter
PEN_5_D=11.5;
// Fifth cylinder length (0 - no section)
PEN_5_L=10;
// Fifth clip overhang (0 - no clip)
PEN_5_CLIP_DD=0;
// Fifth clip width
PEN_5_CLIP_W=0;
// Sixth cylinder diameter
PEN_6_D=0;
// Sexth cylinder length (0 - no section)
PEN_6_L=0;
// Sexth clip overhang (0 - no clip)
PEN_6_CLIP_DD=0;
// Fexth clip width
PEN_6_CLIP_W=0;
*/
/*
// Noodler's Boston safety pen
// First (top) cylinder diameter
PEN_1_D=12.5;
// First cylinder length (0 - no section)
PEN_1_L=8.2;
// First clip overhang (0 - no clip)
PEN_1_CLIP_DD=0;
// First clip width
PEN_1_CLIP_W=0;
// Second cylinder diameter
PEN_2_D=13;
// Second cylinder length (0 - no section)
PEN_2_L=40;
// Second clip overhang (0 - no clip)
PEN_2_CLIP_DD=4;
// Second clip width
PEN_2_CLIP_W=6;
// Third cylinder diameter
PEN_3_D=13;
// Third cylinder length (0 - no section)
PEN_3_L=2.5;
// Third clip overhang (0 - no clip)
PEN_3_CLIP_DD=0;
// Third clip width
PEN_3_CLIP_W=0;
// Fourth cylinder diameter
PEN_4_D=11;
// Fourth cylinder length (0 - no section)
PEN_4_L=36;
// Fourth clip overhang (0 - no clip)
PEN_4_CLIP_DD=0;
// Fourth clip width
PEN_4_CLIP_W=0;
// Fifth cylinder diameter
PEN_5_D=13;
// Fifth cylinder length (0 - no section)
PEN_5_L=56.5;
// Fifth clip overhang (0 - no clip)
PEN_5_CLIP_DD=0;
// Fifth clip width
PEN_5_CLIP_W=0;
// Sixth cylinder diameter
PEN_6_D=11;
// Sexth cylinder length (0 - no section)
PEN_6_L=12;
// Sexth clip overhang (0 - no clip)
PEN_6_CLIP_DD=0;
// Fexth clip width
PEN_6_CLIP_W=0;
*/
/*
// Jinhao X750
// First (top) cylinder diameter
PEN_1_D=13.3;
// First cylinder length (0 - no section)
PEN_1_L=7.1;
// First clip overhang (0 - no clip)
PEN_1_CLIP_DD=0;
// First clip width
PEN_1_CLIP_W=0;
// Second cylinder diameter
PEN_2_D=13.6;
// Second cylinder length (0 - no section)
PEN_2_L=44.7;
// Second clip overhang (0 - no clip)
PEN_2_CLIP_DD=4.4;
// Second clip width
PEN_2_CLIP_W=7.3;
// Third cylinder diameter
PEN_3_D=13.6;
// Third cylinder length (0 - no section)
PEN_3_L=4.2;
// Third clip overhang (0 - no clip)
PEN_3_CLIP_DD=0;
// Third clip width
PEN_3_CLIP_W=0;
// Fourth cylinder diameter
PEN_4_D=14.6;
// Fourth cylinder length (0 - no section)
PEN_4_L=5;
// Fourth clip overhang (0 - no clip)
PEN_4_CLIP_DD=0;
// Fourth clip width
PEN_4_CLIP_W=0;
// Fifth cylinder diameter
PEN_5_D=13.6;
// Fifth cylinder length (0 - no section)
PEN_5_L=71.4;
// Fifth clip overhang (0 - no clip)
PEN_5_CLIP_DD=0;
// Fifth clip width
PEN_5_CLIP_W=0;
// Sixth cylinder diameter
PEN_6_D=10.5;
// Sexth cylinder length (0 - no section)
PEN_6_L=8;
// Sexth clip overhang (0 - no clip)
PEN_6_CLIP_DD=0;
// Fexth clip width
PEN_6_CLIP_W=0;
*/
/*
// A very old Waterman safety pen
// First (top) cylinder diameter
PEN_1_D=14;
// First cylinder length (0 - no section)
PEN_1_L=13;
// First clip overhang (0 - no clip)
PEN_1_CLIP_DD=0;
// First clip width
PEN_1_CLIP_W=0;
// Second cylinder diameter
PEN_2_D=15.5;
// Second cylinder length (0 - no section)
PEN_2_L=10;
// Second clip overhang (0 - no clip)
PEN_2_CLIP_DD=0;
// Second clip width
PEN_2_CLIP_W=0;
// Third cylinder diameter
PEN_3_D=13.5;
// Third cylinder length (0 - no section)
PEN_3_L=27;
// Third clip overhang (0 - no clip)
PEN_3_CLIP_DD=5;
// Third clip width
PEN_3_CLIP_W=9;
// Fourth cylinder diameter
PEN_4_D=13.5;
// Fourth cylinder length (0 - no section)
PEN_4_L=7;
// Fourth clip overhang (0 - no clip)
PEN_4_CLIP_DD=0;
// Fourth clip width
PEN_4_CLIP_W=0;
// Fifth cylinder diameter
PEN_5_D=11.7;
// Fifth cylinder length (0 - no section)
PEN_5_L=73;
// Fifth clip overhang (0 - no clip)
PEN_5_CLIP_DD=0;
// Fifth clip width
PEN_5_CLIP_W=0;
// Sixth cylinder diameter
PEN_6_D=0;
// Sexth cylinder length (0 - no section)
PEN_6_L=0;
// Sexth clip overhang (0 - no clip)
PEN_6_CLIP_DD=0;
// Fexth clip width
PEN_6_CLIP_W=0;
*/


// index meanings
d_index=0;
d_l= 1;
d_d= 2;
d_cdd= 3;
d_cw= 4;

init_desc=[[0, PEN_1_L, PEN_1_D, PEN_1_CLIP_DD, PEN_1_CLIP_W],
           [1, PEN_2_L, PEN_2_D, PEN_2_CLIP_DD, PEN_2_CLIP_W],
           [2, PEN_3_L, PEN_3_D, PEN_3_CLIP_DD, PEN_3_CLIP_W],
           [3, PEN_4_L, PEN_4_D, PEN_4_CLIP_DD, PEN_4_CLIP_W],
           [4, PEN_5_L, PEN_5_D, PEN_5_CLIP_DD, PEN_5_CLIP_W],
           [5, PEN_6_L, PEN_6_D, PEN_6_CLIP_DD, PEN_6_CLIP_W]];

// Remove empty descriptions (with renumbering) & calculate diameters
desc= [for(d = init_desc) if (d[d_l] > 0) [count_up_list(init_desc,d[d_index],d_l),d[d_l],(d[d_d] + TOLLERANCE*2),(d[d_d] + d[d_cdd]*2 + TOLLERANCE*2), (min(d[d_d],d[d_cw])+ TOLLERANCE*2)]];
    
echo("desc:", desc);

function slice_list(list,s)= [for(d = list) d[s]];

// Number of descriptions
PEN_N= len(desc);

function count_up_list(list,i,s)= ((i< 0) ? 0 : (list[i][s] > 0 ? 1 : 0) + count_up_list(list,i-1,s));

function sum_up_list(list,i,s)= ((i< 0) ? 0 : list[i][s] + sum_up_list(list,i-1,s));
function sum_dn_list(list,i,s)= ((i >= len(list)) ? 0 : list[i][s] + sum_dn_list(list,i+1,s));

function safe_list(list, i, s, def=0)= (( i < 0 || i >= len(list)) ? def : list[i][s]);

function slice_up_list(list,i,s)= [for(d = list) if (d[0] <= i) d[s]];
function slice_dn_list(list,i,s)= [for(d = list) if (d[0] >= i) d[s]];

pen_length= sum_dn_list(desc, 0, d_l);
echo("pen_length", pen_length);
pen_cut= pen_length - CASE_TAKE;
echo ("pen_cut", pen_cut);

//fix diameters around cut place CASE_TAKE
desc_fixed1= [for(d = desc) [d[d_index], d[d_l], ((sum_dn_list(desc,d[d_index]+1,d_l) < pen_cut) ? max(slice_dn_list(desc,d[d_index],d_d)) : d[d_d]), ((sum_dn_list(desc,d[d_index]+1,d_l) < pen_cut) ? max(slice_dn_list(desc,d[d_index],d_cdd)) : d[d_cdd]), ((sum_dn_list(desc,d[d_index]+1,d_l) < pen_cut) ? max(slice_dn_list(desc,d[d_index],d_cw)) : d[d_cw])]];
desc_fixed2= [for(d = desc) [d[d_index], d[d_l], ((sum_up_list(desc,d[d_index]-1,d_l) < CASE_TAKE) ? max(slice_up_list(desc,d[d_index],d_d)) : d[d_d]), ((sum_up_list(desc,d[d_index]-1,d_l) < CASE_TAKE) ? max(slice_up_list(desc,d[d_index],d_cdd)) : d[d_cdd]), ((sum_up_list(desc,d[d_index]-1,d_l) < CASE_TAKE) ? max(slice_up_list(desc,d[d_index],d_cw)) : d[d_cw])]];

pen_l= pen_length + 2*TOLLERANCE;
pen_max_d= max(slice_dn_list(desc_fixed2, 0, d_cdd));

case_length= max(CASE_MIN_LENGTH, pen_l + 2*CASE_TOP_BOTTOM_WALL_MIN);

case_top_bottom_wall= (case_length - pen_l) / 2;

echo("Case Length:", case_length, "Case top/bottom walls:", case_top_bottom_wall);

case_dn_l= case_top_bottom_wall + pen_l - CASE_TAKE;
case_up_l= 2*case_top_bottom_wall + pen_l - case_dn_l;


pen_c_d= max((pen_max_d + CASE_TR_W + TOLLERANCE + 4*CASE_WALL)/cos(180/CASE_N), CASE_MIN_D);

echo("Pen max D:", pen_max_d);

case_wall= (pen_c_d*cos(180/CASE_N) - (pen_max_d + CASE_TR_W + TOLLERANCE)) / 4;

case_tr_w_dd= pen_max_d + 2*case_wall + CASE_TR_W - TOLLERANCE;

echo("Case wall:", case_wall, "Case D:", pen_c_d);

case_tr_l= CASE_TR_L == 0 ? ((CASE_TURN*CASE_N*CASE_TR_NN)*CASE_TR_W*CASE_TR_SPACE_RATIO) : min(CASE_TR_L, case_dn_l - CASE_TAKE);

case_tr_n= CASE_TR_L == 0 ? CASE_N*CASE_TR_NN : max(floor(CASE_TR_L / (CASE_TURN * CASE_TR_W * CASE_N))*CASE_N, CASE_N);

latch_add_depth= min(max(CASE_WALL, LATCH_DEPTH - CASE_WALL), CASE_WALL+ CASE_TR_W);

echo("latch added depth:", latch_add_depth);


module rounding(h, d, n, delta, mode, cut_top)
{
    dd= (delta*2)/cos(180/n);
    difference()
    {
        translate([0,0,cut_top ? delta : 0])
        minkowski()
        {
            children();
            sphere(r=delta);
        }
        translate([0, 0, h])
        cylinder(h= delta*2, d= d + 0.2, $fn=n);
        translate([0, 0, -delta*2])
        cylinder(h= delta*2, d= d + 0.2, $fn=n);
    }

}

module case_basis(h, d, n, delta, mode="sharp", cut_top=true, dv)
{
    dd= (delta*2)/cos(180/n);
    if (mode == "2d")
    {
        linear_extrude(height = h)
        offset(r = delta)
        circle(d= d-dd, $fn=n);
    }
    else if (mode == "3d")
    {
        rounding(h=h, d=d, n=n, delta=delta, mode=mode, cut_top=cut_top)
        cylinder(h= h - delta, d= d-dd, $fn=n);
    }
    else if (mode == "2.5d")
    {
        ddv= (dv*2)/cos(180/n);
        rounding(h=h, d=d, n=n, delta=dv, mode="3d", cut_top=cut_top)
        case_basis(h=h-dv, d=d-ddv, n=n, delta=delta, mode="2d", dv=0);
    }
    else
        cylinder(h= h, d= d, $fn=n);
}

module p_model(dsc, turn=false)
{
    // All cylynders made with +/-TOLLERANCE by hight, so lift all on that balue
    rotate([0,0,-90])
    translate([0, 0, TOLLERANCE])
    for(i = [0:1:PEN_N-1])
    {
        //echo("i", i, dsc[i], sum_dn_list(dsc, i + 1,d_l));
        translate([0,0, sum_dn_list(dsc, i + 1,d_l) - TOLLERANCE])
        union()
        {
            cylinder(d= dsc[i][d_d], h= dsc[i][d_l] + 2*TOLLERANCE);
            if(dsc[i][d_cdd] > dsc[i][d_d])
            {
                if(turn)
                {
                    cylinder(d= dsc[i][d_cdd], h= dsc[i][d_l] + 2*TOLLERANCE);
                }
                else
                {
                    intersection()
                    {
                        cylinder(d= dsc[i][d_cdd], h= dsc[i][d_l + 2*TOLLERANCE]);
                        translate([-dsc[i][d_cw]/2, 0, 0])
                        cube([dsc[i][d_cw], dsc[i][d_cdd]/2, dsc[i][d_l] + 2*TOLLERANCE], center= false);
                    }
                }
            }
        }
    }
}

module pen_model_up()
{
    p_model(desc_fixed2, true);
}

module pen_model_dn()
{
    p_model(desc_fixed1, false);
}

module case_dn ()
{
    difference()
    {
        union()
        {
            translate([0, 0, case_dn_l - case_tr_l -0.1])
            metric_thread (diameter=case_tr_w_dd, pitch= case_tr_l/(CASE_TURN * case_tr_n), length=case_tr_l + 0.1, internal=false, n_starts=case_tr_n, thread_size=CASE_TR_W, groove=false, square=false, rectangle=0, angle=60, taper=0, leadin=1, leadfac=1.0, test=false);
            case_basis(h= case_dn_l - case_tr_l, d= pen_c_d, n=CASE_N, delta=CASE_ROUNDING, mode=CASE_ROUNDING_MODE, dv=CASE_WALL);
            for (n=[0:CASE_N-1])
                translate([0,0,case_dn_l - case_tr_l])
                rotate([0,0,n*(180 - 180*(CASE_N - 2) / CASE_N)])
                latch(cut=false);
        }
        translate([0, 0, case_top_bottom_wall])
        pen_model_dn();
        for (n=[0:CASE_N-1])
        {
            translate([0,0,case_dn_l - case_tr_l])
            rotate([0,0,n*(180 - 180*(CASE_N - 2) / CASE_N)])
            latch(cut=true);
            if ((n % VTEXT_RATIO) == 0)
            {
                translate([0,0,(case_dn_l - case_tr_l)/2])
                rotate([0,0,n*(180 - 180*(CASE_N - 2) / CASE_N)])
                vtxt();
            }
        }
        tb_txt(true);
    }
}


module case_up()
{
    difference()
    {
        case_basis(h= case_up_l + case_tr_l, d= pen_c_d, n=CASE_N, delta=CASE_ROUNDING, mode=CASE_ROUNDING_MODE, cut_top=false, dv= CASE_WALL);
        metric_thread (diameter=case_tr_w_dd + 2*TOLLERANCE, pitch= case_tr_l/(CASE_TURN*case_tr_n), length=case_tr_l, internal=true, n_starts=case_tr_n, thread_size=CASE_TR_W, groove=false, square=false, rectangle=0, angle=60, taper=0, leadin=3, leadfac=1.0, test=false);
        translate([0, 0, -pen_l + case_tr_l + case_up_l - case_top_bottom_wall])
        pen_model_up();
        for (n=[0:CASE_N-1])
            translate([0,0,-2*TOLLERANCE])
            rotate([0,0,n*(180 - 180*(CASE_N - 2) / CASE_N)])
            latch(cut=false);
        translate([0, 0, case_up_l + case_tr_l - TBTEXT_DEPTH])        
        tb_txt();
    }
}


module latch(cut=false)
{
    pad= (CASE_N == 3 ? 10 : (CASE_N == 4 ? 6 : 3));
    lcalc=  pen_c_d * cos(((180*(CASE_N - 2) / CASE_N) / 2)) - LATCH_W*pad;
    l= min(lcalc, LATCH_MAX_L);

    rotate([0,0,-(180*(CASE_N - 2) / CASE_N)/2])
    translate([-l/2+LATCH_PIN_H,-(LATCH_W/2-pen_c_d*cos(180/CASE_N)/2),0])
    if (cut)
        latch_cut(w=LATCH_W, l=l, h1=LATCH_PIN_H, h2=LATCH_H, cut=TOLLERANCE, l_pin= latch_add_depth);
    else
        latch_shape(w=LATCH_W, l=l, h1=LATCH_PIN_H, h2=LATCH_H, l_pin= latch_add_depth);
}

module quoter(l, h)
{
    hh= h*2*cos(45);
    translate([l/2, 0, 0])
    intersection()
    {
        rotate([45,0,0])
        cube([l,hh,hh], center=true);
        translate([-l/2, 0, 0])
        cube([l,h,h], center=false);
    }
}

module l_pin(l, h, l_pin)
{
    difference()
    {
        mirror([0, 1, 0])
        quoter(l=l, h=h);
        translate([-1, -l_pin - h, -1])
        cube([l+2,h,h+2], center=false);
    }
}

//!l_pin(l=10, h=3, l_pin=2.4);


module latch_shape(w, l, h1, h2, o=0, l_pin=0)
{
    ww= w+2*o;
    union()
    {
        rotate([90,0,0])
        translate([0,0,-ww/2])
        linear_extrude(height = ww)
        offset(delta= o)
        polygon([[-h1,0],[0,h1],[h1, 0],[l-h1,0],[l-h1,-h2],[-h1,-h2]]);
        if (l_pin > 0)
        {
            translate([-h1 - o, -ww/2 + 0.01, -h2 - o])
            l_pin(l= l+2*o, h= h2+2*o, l_pin= l_pin);
        }
    }
}

//!latch_shape(w=1.2, l=15, h1=2.4, h2=3, o=0.5, l_pin=2);

module latch_cut(w, l, h1, h2, cut=0.3, l_pin=0)
{
    difference()
    {
        union()
        {
            latch_shape(w, l, h1, h2, o=cut, l_pin=l_pin);
            translate([-(h1+cut), -(w+2*cut)/2 - l_pin, -(h2+h1+2*cut)])
            cube([l+cut, w + 2*cut +l_pin, h1 + 2*cut]);
            translate([-(h1 + 2*cut), -(w + 2*cut)/2, -(h2+h1+2*cut)])
            cube([cut*2, w + 2*cut, h2 + h1 + 3*cut]);
            if (l_pin > 0)
            {
                translate([-(h1 + 2*cut), -(w + 2*cut)/2 + 0.01, -(h2+h1+2*cut)])
                l_pin(l=cut*2, h= h2 + h1 + 3*cut, l_pin= l_pin);
            }
        }
        latch_shape(w, l, h1, h2, o=0, l_pin=l_pin);
        translate([l - h1 - 0.01, -(w + 2*cut)/2 - (l_pin + cut + 1), -(h2 + h1 + cut + 1)])
        cube([cut * 2 , w + 2*cut + l_pin + cut + 2, h2 + h1 + 2*cut + 2]);
        if (LATCH_SUPPORT)
        {
            for(i=[0:h1:l])
            {
                translate([i-h1, -w/2 - l_pin,-(h2 + h1 + 2*cut + 0.01)])
                cube([NOZZEL_D, (w + l_pin), h1 + 2*cut + 0.02]);
            }
        }
    }
}

//!latch_cut(w=1.2, l=15, h1=2.4, h2=3, cut=0.5, l_pin=2);

if (PRESENT=="model")
{
    union()
    {
        p_model(desc, false);
        %pen_model_dn();
        #translate([0,0,pen_cut])
        cylinder(h=pen_length - pen_cut, d= pen_max_d * 2);
    }
    translate([pen_max_d * 2 + 1, 0, 0,])
    union()
    {
        p_model(desc, false);
        %pen_model_up();
        #cylinder(h=pen_cut, d= pen_max_d * 2);
    }
}
else
{
    translate([pen_c_d + 1, 0, 0,])
    case_dn();

    translate([0, 0, case_up_l + case_tr_l])
    rotate([0,180,0])
    case_up();
}

module vtxt()
{
    pad= (CASE_N == 3 ? 10 : (CASE_N == 4 ? 6 : 3));
    lcalc=  pen_c_d * cos(((180*(CASE_N - 2) / CASE_N) / 2)) - LATCH_W*pad;
    l= min(lcalc, LATCH_MAX_L);
    h= VTEXT_DEPTH;

    if (VTEXT_TEXT != "")
        rotate([0,0,-(180*(CASE_N - 2) / CASE_N)/2])
        translate([0,-h+0.01+(pen_c_d*cos(180/CASE_N)/2),0])    
        rotate([0,90,90])
        rotate([0,0,(VTEXT_TURN ? 0 : 180)])
        linear_extrude(height= h)
        text(text=VTEXT_TEXT, font=VTEXT_FONT, size=VTEXT_SIZE, valign="center", halign="center");
}

module tb_txt(rotate=false)
{
    if (VTEXT_TEXT != "")
        #rotate([0,0,TBTEXT_ANGLE])
        mirror([0,(rotate ? 1 : 0),0])
        linear_extrude(height= TBTEXT_DEPTH)
        text(text=TBTEXT_TEXT, font=TBTEXT_FONT, size=TBTEXT_SIZE, valign="center", halign="center");
}

