// Licensed under the MIT license: http://www.opensource.org/licenses/mit-license.php
package mvcexpress.extensions.live.mvc {
import mvcexpress.core.namespace.pureLegsCore;
import mvcexpress.extensions.live.core.ProcessMapLive;
import mvcexpress.extensions.live.modules.ModuleLive;
import mvcexpress.mvc.Command;

use namespace pureLegsCore;

/**
 * Command, handles business logic of your application.                                                                                                    <br/>
 * Commands can get proxies injected and can send messages
 * <b><p>
 * It MUST contain custom execute(params:Object) function. Parameter can be typed as you wish.                                                             <br/>
 * It is best practice to use same type as you use in message, that triggers this command.                                                                 <br/>
 * If message does not send any parameter object - you still must have singe parameter that will get null value, for example: execute(blank:Object).
 * </p></b>
 * @author Raimundas Banevicius (http://mvcexpress.org/)
 *
 * @version live.1.0.beta2
 */
dynamic public class CommandLive extends Command {

	/** Handles application processes. */
	public var processMap:ProcessMapLive;

	//----------------------------------
	//    Extension checking: INTERNAL, DEBUG ONLY.
	//----------------------------------

	/** @private */
	CONFIG::debug
	static pureLegsCore var extension_id:int = ModuleLive.pureLegsCore::EXTENSION_LIVE_ID;

	/** @private */
	CONFIG::debug
	static pureLegsCore var extension_name:String = ModuleLive.pureLegsCore::EXTENSION_LIVE_NAME

}
}