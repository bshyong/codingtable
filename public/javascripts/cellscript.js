/**
 * @author Alice
 */

function changeColor(arg, color){
	$(arg).style.backgroundColor = color;
	//$(arg).tween('opacity',0);
}

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