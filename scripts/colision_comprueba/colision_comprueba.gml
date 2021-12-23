// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function colision_comprueba(startX, startY, endX, endY, target){
var len = 0;
var dir = point_direction(startX, startY, endX, endY);
var max1 = point_distance(startX, startY, endX, endY);

//Begin raycast loop
while(len < max1) {
    var castX = startX + lengthdir_x(len, dir);
    var castY = startY + lengthdir_y(len,dir);
    if(collision_point(castX, castY, target, true, false)) {
        hitpoint[0] = castX;
        hitpoint[1] = castY;
        return hitpoint;
    }
    len++;
}

//If the raycast hit nothing, return false
return false;
}

function colision_comprueba2(){
	var x1 = argument0;
	var y1 = argument1;
	var x2 = argument2;
	var y2 = argument3;
	var qi = argument4;
	var qp = argument5;
	var qn = argument6;
	var rr, rx, ry;
	rr = collision_line(x1, y1, x2, y2, qi, qp, qn);
	rx = x2;
	ry = y2;
	if (rr != noone) {
	    var p0 = 0;
	    var p1 = 1;
	    repeat (ceil(log2(point_distance(x1, y1, x2, y2))) + 1) {
	        var np = p0 + (p1 - p0) * 0.5;
	        var nx = x1 + (x2 - x1) * np;
	        var ny = y1 + (y2 - y1) * np;
	        var px = x1 + (x2 - x1) * p0;
	        var py = y1 + (y2 - y1) * p0;
	        var nr = collision_line(px, py, nx, ny, qi, qp, qn);
	        if (nr != noone) {
	            rr = nr;
	            rx = nx;
	            ry = ny;
	            p1 = np;
	        } else p0 = np;
	    }
	}
	//var r;
	//r[0] = rr;
	//r[1] = rx;
	//r[2] =floor(ry);
	
	
	return floor(ry);
}