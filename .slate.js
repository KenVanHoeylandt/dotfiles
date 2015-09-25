/**
 * References:
 * https://github.com/jigish/slate/wiki/JavaScript-Configs
 * https://github.com/jigish/slate/wiki/Operations
 */

// Configs
S.cfga({
	"defaultToCurrentScreen" : true,
	"secondsBetweenRepeat" : 0.1,
	"checkDefaultsOnLoad" : true,
	"focusCheckWidthMax" : 3000,
	"orderScreensLeftToRight" : true,
	"nudgePercentOf" : "screenSize",
	"resizePercentOf" : "screenSize"
});

// Monitors
var screen_rect = S.screen().rect();
var screen_count = slate.screenCount();
var monitor_current = screen_rect.width.toString() + "x" + screen_rect.height.toString();
var monitor_laptop = "1440x900";
var monitor_work = "2560x1440";
var monitor_home = "1920x1080";

/**
 * Create a "move" operation for a grid-based alignment
 * @param columnsTotal defines the grid's column count
 * @param rowsTotal defines the grid's row count
 * @param columnIndex defines the column offset for the layout
 * @param rowIndex defines the row offset for the layout
 * @param columnsWide defines the layout with in column count units
 * @param rowsHigh defines the layout height in row count units
 * @return operation
 */
function moveOnGrid(columnsTotal, rowsTotal, columnIndex, rowIndex, columnsWide, rowsHigh)
{
	return S.op("move", {
		"x" : "screenOriginX+screenSizeX/" + columnsTotal.toString() + "*" + columnIndex.toString(),
		"y" : "screenOriginY+screenSizeY/" + rowsTotal.toString() + "*" + rowIndex.toString(),
		"width" : "screenSizeX/" + columnsTotal.toString() + "*" + columnsWide.toString(),
		"height" : "screenSizeY/" + rowsTotal.toString() + "*" + rowsHigh.toString()
	});
}

/**
 * @return a "move" operation to show the largest layout that is comfortable for the current screen
 */
function getFocusBig()
{
	if (screen_count == 1)
	{
		return S.op("move", {
			"x" : "screenOriginX",
			"y" : "screenOriginY",
			"width" : "screenSizeX",
			"height" : "screenSizeY"
		});
	}
	else // assume large
	{
		return S.op("move", {
			"x" : "screenOriginX+screenSizeX/8",
			"y" : "screenOriginY+screenSizeY/14",
			"width" : "screenSizeX*3/4",
			"height" : "screenSizeY*6/7"
		});
	}
}

/**
 * @return a "move" operation to show the second-largest layout that is comfortable for the current screen
 */
function getFocusMedium()
{
	if (screen_count == 1)
	{
		return S.op("move", {
			"x" : "screenOriginX+screenSizeX/8",
			"y" : "screenOriginY+screenSizeY/12",
			"width" : "screenSizeX*3/4",
			"height" : "screenSizeY*5/6"
		});
	}
	else
	{
		return S.op("move", {
			"x" : "screenOriginX+screenSizeX/5",
			"y" : "screenOriginY+screenSizeY/8",
			"width" : "screenSizeX*3/5",
			"height" : "screenSizeY*3/4"
		});
	}
}

var layout_work = S.lay("work",
{
	"IntelliJ IDEA" : {
		"operations" : [getFocusBig()],
		"repeat" : true
	},
	"Android Studio" : {
		"operations" : [getFocusBig()],
		"repeat" : true
	},
	"Xcode" : {
		"operations" : [getFocusBig()],
		"repeat" : true
	},
	"iTerm" : {
		"operations" : [
			moveOnGrid(3, 3, 0, 0, 1, 1),
			moveOnGrid(3, 3, 1, 0, 1, 1),
			moveOnGrid(3, 3, 2, 0, 1, 1),
			moveOnGrid(3, 3, 0, 1, 1, 1),
			moveOnGrid(3, 3, 1, 1, 1, 1),
			moveOnGrid(3, 3, 2, 1, 1, 1),
			moveOnGrid(3, 3, 0, 2, 1, 1),
			moveOnGrid(3, 3, 1, 2, 1, 1),
			moveOnGrid(3, 3, 2, 2, 1, 1)
		]
	},
	"Sublime Text 2" : {
		"operations" : [
			moveOnGrid(4, 7, 1, 1, 2, 5)
		]
	},
	"SourceTree" : { 
		"operations" : [moveOnGrid(5, 2, 0, 1, 1, 1)]
	},
	"Skype" : {
		"operations" : [
			moveOnGrid(25, 25, 3, 1, 9, 11),
			moveOnGrid(25, 25, 13, 1, 9, 11)
		],
		"repeat" : true,
  		"ignore-fail" : true
	},
	"HipChat" : {
		"operations" : [moveOnGrid(25, 25, 3, 12, 9, 12)]
	},
	"Mail" : {
		"operations" : [moveOnGrid(25, 25, 13, 12, 9, 12)]
	},
	"Google Chrome" : {
		"operations" : [getFocusMedium()],
		"repeat" : true
	},
	"Safari" : {
		"operations" : [getFocusMedium()],
		"repeat" : true
	},
	"Firefox" : {
		"operations" : [getFocusMedium()],
		"repeat" : true
	},
	"Spotify" : {
		"operations" : [moveOnGrid(32, 32, 1, 1, 14, 18)],
		"repeat" : true
	}
});

var layout_home = S.lay("home", {
	"IntelliJ IDEA" : {
		"operations" : [getFocusBig()],
		"repeat" : true
	},
	"Android Studio" : {
		"operations" : [getFocusBig()],
		"repeat" : true
	},
	"Xcode" : {
		"operations" : [getFocusBig()],
		"repeat" : true
	},
	"iTerm" : {
		"operations" : [
			moveOnGrid(3, 3, 0, 0, 1, 1),
			moveOnGrid(3, 3, 1, 0, 1, 1),
			moveOnGrid(3, 3, 2, 0, 1, 1),
			moveOnGrid(3, 3, 0, 1, 1, 1),
			moveOnGrid(3, 3, 1, 1, 1, 1),
			moveOnGrid(3, 3, 2, 1, 1, 1),
			moveOnGrid(3, 3, 0, 2, 1, 1),
			moveOnGrid(3, 3, 1, 2, 1, 1),
			moveOnGrid(3, 3, 2, 2, 1, 1)
		]
	},
	"Sublime Text 2" : {
		"operations" : [getFocusMedium()]
	},
	"SourceTree" : { 
		"operations" : [moveOnGrid(5, 2, 0, 1, 1, 1)]
	},
	"Skype" : {
		"operations" : [
			moveOnGrid(2, 2, 0, 0, 1, 1),
			moveOnGrid(2, 2, 0, 1, 1, 1)
		],
		"repeat" : true,
  		"ignore-fail" : true
	},
	"Messages" : {
		"operations" : [moveOnGrid(25, 25, 1, 1, 15, 20)]
	},
	"Mail" : {
		"operations" : [moveOnGrid(25, 25, 9, 4, 15, 20)]
	},
	"Google Chrome" : {
		"operations" : [getFocusMedium()],
		"repeat" : true
	},
	"Safari" : {
		"operations" : [getFocusMedium()],
		"repeat" : true
	},
	"Firefox" : {
		"operations" : [getFocusMedium()],
		"repeat" : true
	},
	"Spotify" : {
		"operations" : [moveOnGrid(25, 25, 1, 1, 15, 20)],
		"repeat" : true
	}
});

// TODO: Default Layouts?
// S.def(2, layout_dev);
// S.def(1, layout_dev);

function op_layout_selector()
{
	// TODO: monitor or network-based configuration
	if (S.screenCount() === 1)
	{
		return layout_home;
	}
	else
	{
		return layout_work;
	}
}


/**
 * Hide all except a specific application name in the given layout.
 * @return an operation
 */
function focusOn(name, layout)
{
	return S.op("sequence", {
		"operations" : [
			S.op("hide",	{ "app" : "all-but:'" + name + "'" }),
			S.op("show",	{ "app" : [name] }),
			S.op("layout",	{ "name" : layout }),
			S.op("focus", 	{ "app" : name })
		]
	})
}

S.bnda({
	"z:cmd,shift" : S.op("chain", { // TODO: only toggle between *running* applications
		"operations" : [
			focusOn('Android Studio', op_layout_selector()),
			focusOn('IntelliJ IDEA', op_layout_selector()),
			focusOn('Xcode', op_layout_selector()),
			focusOn('Sublime Text 2', op_layout_selector())
		]
	}),
	"x:cmd,shift" : S.op("sequence", {
		"operations" : [ // TODO: toggle between running browsers
			S.op("hide",	{ "app" : "all-but:'Safari'"}),
			S.op("show",	{ "app" : ["Safari", "Chrome", "Firefox", "Spotify"]}),
			S.op("layout",	{ "name" : op_layout_selector()}),
			S.op("focus",	{ "app" : "Safari" })
		]
	}),
	"c:cmd,shift" : S.op("sequence", {
		"operations" : [ // TODO: only toggle between running applications
			S.op("hide",	{ "app" : "all-but:'HipChat'"}),
			S.op("show",	{ "app" : ["Skype", "HipChat", "Mail", "Messages"]}),
			S.op("layout",	{ "name" : op_layout_selector()}),
			S.op("focus",	{ "app" : "HipChat" })
		]
	}),
	"s:cmd,shift" : S.op("hint", {
	  "characters" : 'QWERTYUIOP'
	}),
	"g:cmd,shift" : S.op("grid", {
	  "grids" : {
	    monitor_work : {
	      "width" : 16,
	      "height" : 9
	    },
	    monitor_home : {
	      "width" : 16,
	      "height" : 9
	    }
	  },
	  "padding" : 5
	})
});

// TODO: Test Cases
// source .slate.test if_exists
