String message = "om ar";

void setup() {
  // put your setup code here, to run once:

Serial.begin(115200);
Serial.println("Démarrage");   
pinMode(12, OUTPUT);

Serial.println("Message à transcrire :omar ");

message.toUpperCase();
Serial.println("Message transformé en majuscule : OMAR ");

  int NbrLettresMsg = message.length();

  Serial.print("Nombre de lettre dans le message : ");
  Serial.println(NbrLettresMsg);

 message.replace("A",".-;");
  message.replace("B","-...;");
  message.replace("C","-.-.;");
  message.replace("D","-..;");
  message.replace("E",".;");
  message.replace("F","..-.;");
  message.replace("G","--.;");
  message.replace("H","....;");
  message.replace("I","..;");
  message.replace("J",".---;");
  message.replace("K","-.-;");
  message.replace("L",".-..;");
  message.replace("M","--;");
  message.replace("N","-.;");
  message.replace("O","---;");
  message.replace("P",".--.;");
  message.replace("Q","--.-;");
  message.replace("R",".-.;");
  message.replace("S","...;");
  message.replace("T","-;");
  message.replace("U","..-;");
  message.replace("V","...-;");
  message.replace("W",".--;");
  message.replace("X","-..-;");
  message.replace("Y","-.--;");
  message.replace("Z","--..;");
  message.replace("1",".----;");
  message.replace("2","..---;");
  message.replace("3","...--;");
  message.replace("4","....-;");
  message.replace("5",".....;");
  message.replace("6","-....;");
  message.replace("7","--...;");
  message.replace("8","---..;");
  message.replace("9","----.;");
  message.replace("0","-----;");
  message.replace(" ","|");           // Ici le "|" indique la fin d'un mot et qu'il peut y en avoir un autre derrière car il y a un espace dans votre message  
  message.replace(":","---...;");
  message.replace(",","--..--;");
  message.replace("?","..--..;");
  message.replace("'",".----.;");
  message.replace("!","-.-.--;");
  message.replace("@",".--.-.;");

}


void loop() {

  SequencageMorse(message);   

}

void SequencageMorse(String msg){
  // On crée une boucle FOR qui démarre à 0 jusqu'au nombre de lettre dans le message à séquencer en incrémentant de 1 à chaque tour
  for(int i = 0; i < msg.length(); i++) {
    // On vérifie à quoi correspond chaque caractère dans la boucle
    if (msg.substring(i, i+1) == "-") {
      Serial.print("-");
      tiret();
    }
    else if (msg.substring(i, i+1) == ".") {
      Serial.print(".");
      point();
    }
    else if (msg.substring(i, i+1) == ";") {
      Serial.print(" ");
      delay(2000);  // Rapelez-vous, un espacement de la durée de 3 points entre chaque lettre
    }
    else if (msg.substring(i, i+1) == "|") {
      Serial.print("   ");
      delay(7000);  // Rapelez-vous, un espacement de la durée de 7 points entre chaque mots
    }
  }
}

void tiret(){
  digitalWrite(12, HIGH);   // HIGH = Allumé
  delay(2000);
  digitalWrite(12, LOW);    // LOW = Eteind
  delay(500);
}

void point(){
  digitalWrite(12, HIGH);   // HIGH = Allumé
  delay(600);
  digitalWrite(12, LOW);    // LOW = Eteind
  delay(500);
}
