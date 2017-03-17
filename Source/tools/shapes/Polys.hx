package tools.shapes;

import openfl.display.Sprite;
import Defs;

class Polys {

    public var container:Sprite;
    public var paths:Array<Shape>;
    var currentShape:Shape;
    
    public function new () {
        container = new Sprite();
        paths = []; 
    }

    public function beginShape(pt:Pt) {
        currentShape = { view: new Sprite(), data: [] };
        paths.push(currentShape);
        currentShape.data.push({ x: pt.x, y: pt.y });
    }

    public function updateShape(pt:Pt) {
        currentShape.data.push({ x: pt.x, y: pt.y });
        drawPoly(currentShape.view, currentShape.data);
    }

    public function endShape() {
        drawPoly(currentShape.view, currentShape.data);
    }

    function drawPoly(poly:Sprite, data:Array<Pt>) {
        if(data.length > 0) {
            poly.graphics.clear();
            poly.graphics.beginFill(0x00FFFF, 0.5);
            poly.graphics.moveTo(data[0].x, data[0].y);
            for( i in 0...data.length ) {
                poly.graphics.lineTo(data[i].x, data[i].y);
            }
            poly.graphics.endFill();
            container.addChild(poly);
        }
    }

}