app = Application!\set {
  terminatable: true
  backgroundColour: colours.white
  colour: colours.grey
}

app\importFromTML "compiled/markup/master.tml"

result = app\query "#myButton"

local animated
result\on "trigger", (button) ->
  if animated
    button\animate "btnMove", "X", 1, 0.3, "inOutQuad"
  else
    button\animate "btnMove", "X", app.width - button.width + 1, 0.3, "inOutQuad"
  animated = not animated

app\start!
