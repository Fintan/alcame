
import thx.Arrays;
using thx.Arrays;
import tools.Tools;


typedef ToolSelectionSig = {
    var id:String;
    @:optional var modifiers:Array<String>;
    var canvas:openfl.display.DisplayObjectContainer;
}

class ToolSelection {
    static var modifiers:Array<String> = [];
    public static function selectTool(obj:ToolSelectionSig) {
        /*if(obj.modifiers) {
            modifiers = obj.modifiers;
        }*/
        
        var tool = Tools.getTool({ id: obj.id, canvas:obj.canvas });
    }
}