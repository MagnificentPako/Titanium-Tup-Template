app = Application!\set {
  terminatable: true
  backgroundColour: colours.white
  colour: colours.grey
}

theme = Theme.fromFile "masterTheme", "styles/master.theme"

app\importFromTML "markup/master.tml"
app\addTheme theme

result = app\query "#myButton"

local animated
result\on "trigger", (button) ->
  if animated
    button\animate "btnMove", "X", 1, 0.4, "inOutQuad"
  else
    button\animate "btnMove", "X", app.width - button.width + 1, 0.3, "inOutQuad"
  animated = not animated

app\start!
