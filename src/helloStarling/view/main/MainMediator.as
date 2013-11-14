package helloStarling.view.main {
import flash.events.MouseEvent;

import helloStarling.Main;
import helloStarling.constants.ProvideIds;

import mvcexpress.extensions.live.mvc.MediatorLive;

/**
 * Mediator for aplication root view object.
 * @author Raimundas Banevicius (http://mvcexpress.org)
 */
public class MainMediator extends MediatorLive {


	[Inject]
	public var view:Main;


	//[Inject]
	//public var myProxy:MyProxy;

	override protected function onRegister():void {

		view.stage.addEventListener(MouseEvent.CLICK, handleMouseClick);

		provide(view, ProvideIds.MAIN_VIEW);

	}


	private function handleMouseClick(event:MouseEvent):void {
		trace("Stage clicked at:", view.stage.mouseX, view.stage.mouseY);
		//clickPoint.x = view.stage.mouseX;
		//clickPoint.y = view.stage.mouseY;
		//sendMessage(Message.PLAYFIELD_CLICKED, clickPoint);
	}

	override protected function onRemove():void {

	}

}
}