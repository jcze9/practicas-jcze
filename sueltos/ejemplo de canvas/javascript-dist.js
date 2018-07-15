"use strict";

window.onload = draw;

// This function is called on page load.
function draw() {

    // Get the canvas element.
    var canvas = document.getElementById("canvas");

    // Specify a 2d drawing context.
    var context = canvas.getContext("2d");

    // Set the color to the RGB equivalent of gold.
    context.fillStyle = "rgb(255, 215, 0)";

    // Draw the rectangle.
    context.fillRect(15, 15, 55, 50);

    // Set the color to the RGB equivalent of purple and
    // set the opacity of the rectangle to 50 percent.

    context.fillStyle = "rgba(0, 0, 200, 0.5)";

    // Draw the rectangle.
    context.fillRect(40, 40, 45, 40);
}