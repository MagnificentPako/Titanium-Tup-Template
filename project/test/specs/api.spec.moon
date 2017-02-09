require "moonscript"

import add,mul,div from require "src/api"

context "Sample API", ->

  context "add", ->
    it "Should do addition", ->
      assert_equal add(40,2), 42
    it "Should do subtraction through addition", ->
      assert_equal add(44, -2), 42
    it "Should accept decimal numbers", ->
      assert_equal add(41.5, .5), 42

  context "mul", ->
    it "Should do multiplication", ->
      assert_equal mul(21, 2), 42
    it "Should do division through mulitplication", ->
      assert_equal mul(84, .5), 42
    it "Should accept decimal numbers", ->
      assert_equal mul(35, 1.2), 42

  context "div", ->
    it "Should do division", ->
      assert_equal div(84, 2), 42
    -- I won't add more tests because I'm lazy and I guess you get the point
