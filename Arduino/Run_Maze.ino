#include <Time.h>

// General Parameters
int movingSpeed = 200;
int rotationSpeed = movingSpeed;
// Measure time needed to rotate 30 degrees at the 
// rotation speed and store that value here
float time30 = 300; // in ms
float threshold = 10; // Maximum acceptable distance from wall, in cm

//PWM Variables
int frequency = 5000;
int resolution = 8;
int forward1Channel = 0;
int forward2Channel = 1;
int backward2Channel = 2;
int backward1Channel = 3;

// Sensor
int trigPin = 13;
int echoPin = 32;
long duration;
long distance;

//DC Motor
// Both wheels on the left are connected to this pin
int forward1Pin = A0;
int backward2Pin = A5;
// Both wheels on the right are connected to this pin
int forward2Pin = A1;
int backward1Pin = 21;

// Angle sweeped
int angleSum = 0;
int sTime;
int sweepAngle = 210;
int currentDistance;
int comparativeDistance;
int comparativeAngle;

// Time to go backwards
int backTime;
int goBackTime = 2000;

// Comparative Variable
int temporaryDistance = 0;
int unacceptableRange = 450;

// Time between each rotation break, in ms
int breakTime = 80;

// Get distance from sensor to wall
long getDistance(){
  digitalWrite(trigPin, LOW);
  delayMicroseconds(2);
  digitalWrite(trigPin, HIGH);
  delayMicroseconds(10);
  digitalWrite(trigPin, LOW);
  duration = pulseIn(echoPin, HIGH);
  distance = duration * 0.034 / 2; // in cm
  
  Serial.print("Distance: ");
  Serial.println(distance);

  return distance;
}

void movPins(int direction, int intensity){
  if(direction == 0){
    //forward1 pin
    ledcWrite(forward1Channel, 0.78 * intensity);

    //forward2 pin
    ledcWrite(forward2Channel, intensity);

    // Zeroing both backward pins
    ledcWrite(backward1Channel, 0);
    ledcWrite(backward2Channel, 0);
  }

  else{
    
    //backward1 pin
    ledcWrite(backward1Channel, intensity);

    //backward2 pin
    ledcWrite(backward2Channel, intensity);

    // Zeroing both forward pins
    ledcWrite(forward1Channel, 0);
    ledcWrite(forward2Channel, 0);
  }
}

void goBack(int time){
  movPins(0, 0);
  backTime = millis();
  while(millis() - backTime <= time){
    movPins(1, movingSpeed);
  }
}
void rotate(int rDirection, float rTime, int cSpeed){
  movPins(0, 0);
  sTime = millis();

  if(rDirection == 1)
    rTime *= 1.2;
  
  while(millis() - sTime <= rTime){

    // Counterclockwise rotation
    if(rDirection == 1){
     ledcWrite(forward2Channel, 1.28 * cSpeed);
     ledcWrite(backward1Channel, cSpeed);
     ledcWrite(forward1Channel, 0); 
     ledcWrite(backward2Channel, 0);
    }

    // Clockwise rotation
    else{
     ledcWrite(forward1Channel, cSpeed);
     ledcWrite(backward2Channel, 1.2 * cSpeed);
     ledcWrite(forward2Channel, 0); 
     ledcWrite(backward1Channel, 0);
    }
  }

  movPins(0, 0);
}

// Find furthest wall after running a degree sweep ste by sweepAngle
void findWall(){
  movPins(0, 0);
  angleSum = 0;
  comparativeDistance = 0;
  comparativeAngle = 0;
  // Clockwise rotation
  while(angleSum < (sweepAngle / 2)){
    rotate(1, time30, rotationSpeed);
    delay(breakTime);
    angleSum += 30;
    currentDistance = getDistance();
    if(currentDistance > comparativeDistance){
      comparativeDistance = currentDistance;
      comparativeAngle = angleSum;
    }
  }

  // Counterclockwise rotation
  while(angleSum > -(sweepAngle / 2)){
    rotate(0, time30, rotationSpeed);
    delay(breakTime);
    angleSum -= 30;
    currentDistance = getDistance();
    if(currentDistance > comparativeDistance){
      comparativeDistance = currentDistance;
      comparativeAngle = angleSum;
    }
  }

  /*
  if(comparativeDistance < 20){
    while(angleSum <0){
    rotate(1, time30, rotationSpeed);
    delay(breakTime);
    angleSum += 30;
  } 
    sweepAngle += 30;
    findWall();
  }
  */

  // Now that we have the angle to the furthest wall, we need to rotate
  // the robot in the right direction
   while(angleSum < comparativeAngle){
     rotate(1, time30, rotationSpeed);
     delay(breakTime);
     angleSum += 30;
   }
}

void setup() {
  //Configure trig and echo pins
  pinMode(trigPin, OUTPUT); 
  pinMode(echoPin, INPUT); 

  // Setting up PWM
  ledcSetup(forward1Channel, frequency, resolution);
  ledcSetup(forward2Channel, frequency, resolution);
  ledcSetup(backward2Channel, frequency, resolution);
  ledcSetup(backward1Channel, frequency, resolution);
  ledcAttachPin(forward1Pin, forward1Channel);
  ledcAttachPin(forward2Pin, forward2Channel);
  ledcAttachPin(backward1Pin, backward1Channel);
  ledcAttachPin(backward2Pin, backward2Channel);

  // Set all DC motor pins to output and low

  movPins(0, 0);
  movPins(1, 0);
  Serial.begin(9600); 
}

void loop() {

  temporaryDistance = getDistance(); 
  // Rule out invalid readings
  if(temporaryDistance <= unacceptableRange){
    // If distance is greater than threhsold, and furthest wall found, move to it
    if(temporaryDistance > threshold){
      movPins(0, movingSpeed);
    }
    else{
      goBack(goBackTime);
      findWall();
    } 
  }

  // If reading is invalid, go back and find the wall
  else{
    goBack(goBackTime);
    findWall();
  }
}
