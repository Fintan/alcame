package tools;
import openfl.display.DisplayObjectContainer;
import tools.ITool;

typedef ToolsSig = {
    var id:String;
    var canvas:openfl.display.DisplayObjectContainer;
}

class Tools {

    public static function getTool(sig:ToolsSig) {
        var tool = null;
        if(sig.id == 'Shapes') {
            tool = new Shapes();
            sig.canvas.addChild(tool.container);
        }
        return tool;
    }

}