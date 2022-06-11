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
current_repeat = 0

// Number of repetitions
const repetitions = 4

// Interval time, in seconds
var interval = 0.01

// Number of characters corresponding to terminal width
const initial_position = (process.stdout.columns / 2) - 1
const final_limit = (process.stdout.columns / 7.5)

// Accumulator with number of reduced spaces in string
space_reduces = 1

// Increase pyramid?
increase = true

// Function to decide which slash to use
function generate_random(){
    let x = Math.random() >= 0.5 ? '╱' : '╲'
    return x
}

// Drawing function
function draw(){
    var final_string = ''

    // Draw each line of slashes
    for (i = 0; i < space_reduces; i++){

        // For each line, draw specified number of slashes. Here,
        // I repeat the generate_random() function because one space
        // is being reduced at every time teh function is run

        final_string += generate_random()
        final_string += generate_random()
    }

    // Output string
    let total_reduces = color + ' '.repeat(initial_position - space_reduces)
    console.log(total_reduces + final_string)

    // If reaches left/right boundaries, switch 
    // value of increase boolean
    if (space_reduces >= final_limit) increase = false
    else if(space_reduces <= 1){
        increase = true
        current_repeat++
    }

    // If increasing, increase reduction of spaces. Otherwise, reduce 
    // number of spaces.
    if (increase) space_reduces++
    else space_reduces--

    // Recursively draw more slashes if repetition accumulator is less than
    // total number of repetitions specified
    if (current_repeat <= repetitions) setTimeout(draw, 1000 * interval); 
}


// Using Readline for user-interactive console
const readline = require("readline");
const interactive = readline.createInterface({
    input: process.stdin,
    output: process.stdout,
  });


function setcolor(chosen_col){
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