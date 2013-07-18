/**
 * @author Alice
 */

//global variables
var red = '#F77C88';
var orange = '#FF9700';
var yellow = '#FFE600';
var green = '#CFFF5A';
var blue = '#A05DDB';
var purple = '#54B9DD';
var magenta = '#A05DDB';

function check(){
	alert("checking!");
}

function clearColor(arg){
	//$(arg).style.backgroundColor = color;
	$(arg).tween('opacity',0.5);
}

//FIX LATER
function shiftRight(arg){
	var curPos = parseFloat($(arg).getStyle("left"));
	var newPos = curPos + 20;
	$(whichElement).tween('left', newPos);

}

// shifts menu element to the left when hovered //
function shiftLeft(arg){
	element = $(arg);
	fx = new Fx.Styles(element, {duration:200, wait:false});
	fx.start({
		'left': -25,
	});
}