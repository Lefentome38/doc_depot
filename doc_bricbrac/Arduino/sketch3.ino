// Potentiometer is connected to GPIO 34 (Analog ADC1_CH6) 
const int potPin = 34;
const int led1 = 27;
const int led2 = 26;
const int led3 = 25;
const int led4 = 33;
const int led5 = 32;
// variable for storing the potentiometer value
int potValue = 0;

void setup() {
  potValue = analogRead(potPin);
  Serial.begin(115200);
  delay(1000);

  pinMode(led1, OUTPUT);
  pinMode(led2, OUTPUT);
  pinMode(led3, OUTPUT);
  pinMode(led4, OUTPUT);
  pinMode(led5, OUTPUT);
}

void loop() {
  // Reading potentiometer value 
  Serial.println(potValue);
  delay(1000);
  if(potValue < 1100 ){
    digitalWrite(led1, HIGH);
  } else if (1100 > potValue < 2100){
    digitalWrite(led1, LOW);
    digitalWrite(led2, HIGH);
  } else if (2100 > potValue < 3100){
    digitalWrite(led2, LOW);
    digitalWrite(led3, HIGH);
  } else if (3100 > potValue < 4100){
    digitalWrite(led3, LOW);
    digitalWrite(led4, HIGH);
  } else {
    digitalWrite(led4, LOW);
    digitalWrite(led5, HIGH);
  }
}