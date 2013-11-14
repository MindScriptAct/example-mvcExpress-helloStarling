package helloStarling.controller.setup {
import helloStarling.Main;
import helloStarling.view.gameField.GameField;
import helloStarling.view.gameField.GameFieldMediator;
import helloStarling.view.main.MainMediator;
import helloStarling.view.starling.StarlingMediator;

import mvcexpress.mvc.Command;

import starling.core.Starling;

/**
 * Initial set up of maping mediator class to view class.
 * mediatorMap.map(viewClass:Class, mediatorClass:Class);
 * @author Raimundas Banevicius (http://mvcexpress.org)
 */
public class SetupViewCommand extends Command {

	public function execute(params:Object):void {

		Starling, StarlingMediator;

		mediatorMap.map(GameField, GameFieldMediator);
		//{
		//	mediatorMap.map(MapSprite, MapSpriteMediator);
		//	mediatorMap.map(HeroSprite, HeroSpriteMediator);
		//}

		mediatorMap.map(Main, MainMediator);
		//{
		//	mediatorMap.map(GameGui, GameGuiMediator);
		//}
	}

}
}