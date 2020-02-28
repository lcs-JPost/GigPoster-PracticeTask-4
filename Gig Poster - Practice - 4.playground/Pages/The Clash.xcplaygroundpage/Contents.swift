//: # Gig Poster - Practice Task 4
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport

/*:
 Each image is exactly 400 pixels wide by 600 pixels tall. 
 
 Your goal is to precisely reproduce this image: 
 
 ![the-clash-no-grid](the-clash-no-grid.png "The Clash")
 ![the-clash-with-grid](the-clash-with-grid.png "The Clash")

 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * conditionals (making decisions with ``if`` statements)
 * iteration (use of loops to repeat statements)
 
 You may use the color constants created below to obtain the correct colors.
 
 Remember that you can refer to the [Canvas class documentation](https://www.russellgordon.ca/canvasgraphics/documentation/classes/canvas), as needed.
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLORS
let orange = Color(hue: 21, saturation: 76, brightness: 94, alpha: 100)
let blue = Color(hue: 201, saturation: 72, brightness: 85, alpha: 65)
let offWhite = Color(hue: 208, saturation: 1, brightness: 88, alpha: 100)
let black = Color(hue: 0, saturation: 100, brightness: 0, alpha: 100)

// Begin your work below...


// change the background color

canvas.fillColor = orange
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)


// write the things
canvas.drawText(message: "the clash", at: Point(x: 20, y: 94), size: 46)

canvas.drawText(message: "with the brattles\nand dear kennedys", at: Point(x: 20, y: 30), size: 8)

canvas.drawText(message: "matinee and eve\nsatruday/june 13 1981", at: Point(x: 106, y: 30), size: 8)

canvas.drawText(message: "bonds international casino\nin times square, new york city", at: Point(x: 258, y: 30), size: 8)
// translate the canvas
canvas.translate(to: Point(x: 230, y: 376))


// rotate the canvas
canvas.rotate(by: 45)


// create the rectangle pattern using a loop

canvas.defaultBorderWidth = 10
canvas.borderColor = offWhite
canvas.drawShapesWithBorders = true
canvas.drawShapesWithFill = false
var measurements = 10
for _ in 1...7 {
    canvas.drawRectangle(at: Point(x: 0, y: 0), width: measurements, height: measurements)
    canvas.translate(to: Point(x: -24, y: -24))
    measurements += 48
}

canvas.borderColor = blue
canvas.rotate(by: -45)
canvas.translate(to: Point(x: -60, y: 238))
var measurements2 = 10
canvas.rotate(by: 45)
for _ in 1...7 {
    canvas.drawRectangle(at: Point(x: 0, y: 0), width: measurements2, height: measurements2)
    canvas.translate(to: Point(x: -24, y: -24))
    measurements2 += 48
}



/*:
 ## Use Source Control
 
 As this is a practice task, there is no hard deadline. However, completing this practice task – an assessment for learning – prior to attempting an assessment of learning – is strongly recommended.
 
 *Be sure to commit your work multiple times as you make progress on completing this task.*

 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas

