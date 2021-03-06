#if debug
package sdg;

import kha.Canvas;
import kha.input.KeyCode;
import sdg.manager.Keyboard;

class Editor
{
    public var active:Bool;
    var activationKey:KeyCode;
    
    public function new(activationKey:KeyCode):Void
    {
        active = false;
        this.activationKey = activationKey;
    }
    
    public function checkMode():Void
    {
        if (Keyboard.isPressed(activationKey))
        {
            if (!active)
            {
                Sdg.screen.active = false;
                active = true;
                open();
            }
            else
            {
                Sdg.screen.active = true;
                active = false;
                close();
            }
        }
    }
    
    public function open():Void {}

    public function close():Void {}
    
    public function update():Void {}
    
    public function render(canvas:Canvas):Void {}    
}
#end