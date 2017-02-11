require "moonscript"
import add,mul,div from require "src/api"

describe "Sample API", ->

  describe "add", ->
    it "Should do addition", ->
      assert.is_equal add(40,2), 42
    it "Should do subtraction through addition", ->
      assert.is_equal add(44, -2), 42
    it "Should accept decimal numbers", ->
      assert.is_equal add(41.5, .5), 42

  describe "mul", ->
    it "Should do multiplication", ->
      assert.is_equal mul(21, 2), 42
    it "Should do division through mulitplication", ->
      assert.is_equal mul(84, .5), 42
    it "Should accept decimal numbers", ->
      assert.is_equal mul(35, 1.2), 42

  describe "div", ->
    it "Should do division", ->
      assert.is_equal div(84, 2), 42
    -- I won't add more tests because I'm lazy and I guess you get the point
