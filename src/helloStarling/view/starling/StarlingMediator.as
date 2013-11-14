package helloStarling.view.starling {
import mvcexpress.mvc.Mediator;

import starling.core.Starling;
import starling.events.Event;

/**
 * TODO:CLASS COMMENT
 * @author Raimundas Banevicius (http://mvcexpress.org)
 */
public class StarlingMediator extends Mediator {

	[Inject]
	public var view:Starling;

	override protected function onRegister():void {
		view.antiAliasing = 0;
		view.start();
		CONFIG::debug {
			view.showStats = true;
		}

		view.addEventListener(Event.ROOT_CREATED, handleRootCreated);

	}

	private function handleAntialiasingChange(antialiasing:int):void {
		view.antiAliasing = antialiasing;
	}

	private function handleRootCreated(event:Event):void {
		view.removeEventListener(Event.ROOT_CREATED, handleRootCreated);
		mediatorMap.mediate(view.root);
	}

	override protected function onRemove():void {
		trace("StarlingMediator.onRemove() should not be called.");
	}

}
}