package helloStarling {
import flash.geom.Rectangle;

import helloStarling.constants.GameConstants;
import helloStarling.controller.setup.SetupControlerCommand;
import helloStarling.controller.setup.SetupModelCommand;
import helloStarling.controller.setup.SetupViewCommand;
import helloStarling.messages.DataMessage;
import helloStarling.messages.Message;
import helloStarling.messages.ProcessMessage;
import helloStarling.messages.ViewMessage;
import helloStarling.view.gameField.GameField;
import helloStarling.view.starling.StarlingMediator;

import mvcexpress.extensions.live.modules.ModuleLive;
import mvcexpress.utils.checkClassStringConstants;

import starling.core.Starling;

/**
 * TODO:CLASS COMMENT
 * @author Raimundas Banevicius (http://mvcexpress.org)
 */
public class MainModule extends ModuleLive {

	public function MainModule() {
		super("helloStarling.MainModule");
	}

	override protected function onInit():void {

		// little utility to prevent accidental message constant dublications.
		CONFIG::debug {
			checkClassStringConstants(Message, DataMessage, ViewMessage, ProcessMessage);
		}

		// map commands
		commandMap.execute(SetupControlerCommand);

	}

	public function start(main:Main):void {

		// map proxies
		commandMap.execute(SetupModelCommand, main.stage);
		// map modiators
		commandMap.execute(SetupViewCommand);

		processMap.setStage(main.stage);

		mediatorMap.mediate(main);

		//commandMap.execute(PreloadAssetsCommand);

		// set up starling
		var mainStarling:Starling = new Starling(GameField, main.stage, new Rectangle(0, 0, GameConstants.GAME_WIDTH, GameConstants.GAME_HEIGHT));
		mediatorMap.mediateWith(mainStarling, StarlingMediator);

	}

}
}