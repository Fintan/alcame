package tools;

import openfl.Lib;
import openfl.display.Sprite;
import openfl.events.MouseEvent;
import tools.shapes.Polys;
import Defs;

class Shapes implements ITool {

    public var container:Sprite;
    public var polys:Polys;
    
    public function new () {
        
        container = new Sprite();

        polys = new Polys();
        container.addChild(polys.container);
        
        Lib.current.addEventListener (MouseEvent.MOUSE_DOWN, onMouseDown);
        // container.addEventListener (MouseEvent.MOUSE_DOWN, onMouseDown);
    }

    function onMouseDown(e:MouseEvent) {
        
        polys.beginShape({ x: e.stageX, y: e.stageY });
        container.stage.addEventListener (MouseEvent.MOUSE_MOVE, stage_onMouseMove);
        container.stage.addEventListener (MouseEvent.MOUSE_UP, stage_onMouseUp);
        
    }
    
    function stage_onMouseMove(e:MouseEvent) {
        
        polys.updateShape({ x: e.stageX, y: e.stageY });
        
    }
    
    function stage_onMouseUp(event:MouseEvent) {
        
        polys.endShape();
        container.stage.removeEventListener (MouseEvent.MOUSE_MOVE, stage_onMouseMove);
        container.stage.removeEventListener (MouseEvent.MOUSE_UP, stage_onMouseUp);
        
    }

    /*private function drawPolygon (graphics:Graphics, x:Float, y:Float, radius:Float, sides:Int):Void {
        
        var step = (Math.PI * 2) / sides;
        var start = 0.5 * Math.PI;
        
        graphics.moveTo (Math.cos (start) * radius + x, -Math.sin (start) * radius + y);
        
        for (i in 0...sides) {
            
            graphics.lineTo (Math.cos (start + (step * i)) * radius + x, -Math.sin (start + (step * i)) * radius + y);
            
        }
        
    }*/

}