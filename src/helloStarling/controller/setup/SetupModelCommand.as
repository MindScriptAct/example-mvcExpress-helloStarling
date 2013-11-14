package helloStarling.controller.setup {
import flash.display.Stage;

import mvcexpress.mvc.Command;

/**
 * Initial set up of maping proxies to proxy class and name for injection.
 * proxyMap.mapClass(proxyClass:Class, injectClass:Class = null, name:String = "");
 * proxyMap.mapObject(proxyObject:Proxy, injectClass:Class = null, name:String = "");
 * @author Raimundas Banevicius (http://mvcexpress.org)
 */
public class SetupModelCommand extends Command {

	public function execute(stage:Stage):void {

	}

}
}