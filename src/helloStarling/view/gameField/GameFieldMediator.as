package helloStarling.view.gameField {
import mvcexpress.extensions.live.mvc.MediatorLive;

/**
 * TODO:CLASS COMMENT
 * @author Raimundas Banevicius (http://mvcexpress.org)
 */
public class GameFieldMediator extends MediatorLive {

	[Inject]
	public var view:GameField;


	override protected function onRegister():void {
		view.touchable = false;


	}

	override protected function onRemove():void {

	}

}
}