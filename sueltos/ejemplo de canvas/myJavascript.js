window.onload = draw;   

// This function is called on page load.
function draw() {

    // Get the canvas element.
var canvas = document.getElementById("canvas");

// Specify a 2-D canvas type.
var context = canvas.getContext("2d");

// Create the path.
context.beginPath();

// Set the starting point for the curve.
context.moveTo(75, 25);
 
// Set each of the curves.
context.bezierCurveTo(10, 100, 10, 122, 20, 130);
context.bezierCurveTo(20, 100, 20, 122, 30, 130);
context.bezierCurveTo(40, 100, 40, 122, 50, 130);
context.bezierCurveTo(70, 100, 70, 122, 80, 130);
context.bezierCurveTo(110, 100, 110, 122, 120, 130);
context.bezierCurveTo(160, 100, 160, 122, 170, 130);

// Set the color of the image to red.
context.fillStyle = "#0CFF00";

// Draw the image.
context.fill();

}


    // Get the canvas element.
var canvas = document.getElementById("canvas");

// Specify a 2-D canvas type.
var context = canvas.getContext("2d");
         
// Create the path.
context.beginPath();

// Set the starting point for the curve.
context.moveTo(200,200);

// Set each of the curves.        
context.quadraticCurveTo(210, 280, 240, 330);
context.quadraticCurveTo(230, 290, 250, 330);
context.quadraticCurveTo(250, 300, 270, 330);
context.quadraticCurveTo(280, 310, 300, 330);
context.quadraticCurveTo(320, 320, 340, 330);

// Set the color of the image to green.
context.fillStyle = "rgb(100, 200, 50)";

// Draw the image.
context.fill();

// Get the canvas element.
var canvas = document.getElementById("canvas");

// Specify a 2-D canvas type.
var context = canvas.getContext("2d");
          
// Start the path.
context.beginPath();

// Define the stroke color in RGB for blue.
context.strokeStyle = "rgb(0, 162, 232)";

// Define the circle using an arc.
context.arc(150, 150, 132, 100, 102 * Math.PI, true);

// draw the circle.
context.stroke();

   // Get the canvas element.
    var canvas = document.getElementById("canvas");

    // Specify a 2-D canvas type.
    var context = canvas.getContext("2d");
           
    // Add the brown triangle.
    context.beginPath();
    context.moveTo(328, 320);
    context.lineTo(378, 350); 
    context.lineTo(328, 378); 
    context.lineTo(328, 320); 
          
    // Set the color to the hexadecimal equivalent of brown.
    // Omit this step and the triangle will render 
    // the default color of black.
    context.fillStyle = "#996633";

    // Draw the triangle.
    context.fill();  




