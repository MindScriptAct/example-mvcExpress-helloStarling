package helloStarling {
import com.mindscriptact.mvcExpressLogger.MvcExpressLogger;

import flash.display.Sprite;
import flash.events.Event;

/**
 * TODO:CLASS COMMENT
 * @author Raimundas Banevicius (http://mvcexpress.org)
 */

[SWF(width='1280', height='720', backgroundColor='#ffffff', frameRate='60')]
[Frame(factoryClass="helloStarling.Preloader")]
public class Main extends Sprite {

	private var module:MainModule;

	public function Main():void {
		if (stage) {
			init();
		} else {
			addEventListener(Event.ADDED_TO_STAGE, init);
		}
	}

	private function init(event:Event = null):void {
		removeEventListener(Event.ADDED_TO_STAGE, init);
		// init mvcExpressLogger (can be opened with CTRL + ~)
		CONFIG::debug {
			MvcExpressLogger.init(this.stage);
		}
		// entry point
		module = new MainModule();
		module.start(this);
	}
}
}