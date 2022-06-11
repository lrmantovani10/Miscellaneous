/*
Color code ranges:
foreground: 30 - 37
foreground bright: 90 - 97
background: 40 - 47
background bright: 100-107

*/

// Colors
const FgGreen = '\x1b[32m'
const Fg_Light_Blue = '\x1b[44m\x1b[94m'
const Fg_Green_Purple = '\x1b[35m\x1b[42m'
const Fg_Red_Black = '\x1b[31m\x1b[40m'

// Repetition accumulator
var current_repeat = 0

// Number of repetitions
var repetitions = 5

// Interval time, in seconds
var interval = 0.01

// Number of characters corresponding to terminal width
const final_limit = process.stdout.columns
var limit = 0

// Wave direction
var right = true

// Drawing function - recursive
function draw(){
    let final_string = color

    if(right) limit ++
    else limit--
    
    if (limit > final_limit){
        limit = final_limit
        right = false
    }
    else if (limit < 0){
        limit = 0
        right = true
        current_repeat++
    }

    for (i = 0; i < limit; i++) final_string += 
    ((Math.random() >= 0.5) ? '╱' : '╲')

    console.log(final_string)

    if (current_repeat < repetitions) setTimeout(draw, 1000 * interval); 
}


// Using Readline for user-interactive console
const readline = require("readline");
const interactive = readline.createInterface({
    input: process.stdin,
    output: process.stdout,
  });


var setcolor = (chosen_col) =>{
if (chosen_col == "Classic") color = Fg_Light_Blue
else if(chosen_col == "Green_Purple") color = Fg_Green_Purple
else if(chosen_col == "Red_Black") color = Fg_Red_Black
else color = FgGreen
}

// User decides color
console.log("Default Classic Green_Purple Red_Black")
chosen_color = interactive.question("Choose a color among the ones shown: ", 
    function (answer) {
    setcolor(answer)
    interactive.close();
    draw()
  });  