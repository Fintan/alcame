package;

import openfl.Lib;
import openfl.display.Sprite;
import ToolSelection;

class Main extends Sprite {
    
    public function new () {
        
        super();

        var canvas = new Sprite();
        canvas.graphics.beginFill(0xBFFF00);
        canvas.graphics.drawRect(0, 0, Lib.current.stage.stageWidth, Lib.current.stage.stageHeight);
        Lib.current.addChild(canvas);
        Lib.current.addChild(new openfl.display.FPS());
        ToolSelection.selectTool({ id: 'Shapes', canvas: canvas });
        
    }

}