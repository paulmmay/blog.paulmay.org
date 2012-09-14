/*

 Creatures
 A little world of creatures and food and weather
 
 Paul May
 ITP 2012
 
 */


String sketchname = "creatures";

boolean debug;
boolean flag;
color[] colours = {
  #F2f2f2, #ADDAEA, #cccccc, #FAFAFA, #6F0D0D, #E8E8E8, #B0D748, #DB4050, #222222, #98B8E0
};

PFont font;

World w;
Creature c;
void setup() {
  font = loadFont("HelveticaNeue-Medium-12.vlw"); 
  //size(1920, 1080); //FHD
  size(1360, 768); //HD
  //size(1280,720); //720p
  //size(1093, 614); //QFHD
  smooth();
  w = new World(); //create the world and set basic parameters
  w.makeThings(20, false); //make food
  w.makeThings(10, true); //make threats
  w.makeHerds(5, 4);
  debug = true;
  flag = false;
}

void draw() {
  background(colours[0]);
  w.render(); //render the world
  //saveFrame("movie/"+sketchname+"_"+"reproduction"+"####.png");
}


/* ---------------- ADMIN FUNCTIONS ---------------------- */

void keyPressed() {
  screenShot();
}

void mousePressed() {
  flag = !flag;
}

void screenShot() {
  //take a timestamped screenshot
  Date d = new Date();
  save("screenshots/"+d.toString()+"_"+sketchname+".png");
}

//do you have a favourite pixel
/*

 A creature that roams the land
 
 */

class Creature {
  /* ---------------- TRAITS ---------------------- */

  //my memory
  //how do we make this fallible - have locations drift over time, have things pop out of memory randomly?
  //places where there is food
  //ArrayList<Something> knownFood = new ArrayList();
  //places i am scared of
  //ArrayList<Something> knownThreats = new ArrayList();
  //creatures i know and trust - from my herd

  //direct relatives - maybe a little useless?
  //ArrayList<Creature> family = new ArrayList();

  //where am i
  PVector location, velocity, acceleration;
  ArrayList<Something> knownThreats = new ArrayList();
  ArrayList<Something> knownFoods = new ArrayList();
  //health
  Gene g;

  int h = 9;
  //birthday and age and lifespan
  //attributes - these should be from species?
  float maxspeed = 0; //can we change this based on how much feeding the creature has done?
  float maxforce = 0; //
  //speeds and forces based on current state
  float calculatedMaxSpeed = 0;
  int birthday;
  float calculatedMaxForce = 0;
  Species mySpecies;

  //speeds should be a factor of my age and g.energy

  float wandertheta;
  String mode;
  int colourIndex;

  //states
  Boolean wander = true;
  Boolean alive = true;
  Boolean seek = false;
  Boolean fleeing = false;

  /* ---------------- CONSTRUCTOR---------------------- */

  Creature(float _x, float _y, int _generation, Species _s) {
    g = new Gene(_generation);
    mySpecies = _s;
    println(this+ " Hi, I'm a creature");
    location = new PVector(_x, _y);
    acceleration = new PVector(0, 0);
    velocity = new PVector(0, 0);
    //set up basic parameters / reset
    report();
    mode = "w";
    println(mySpecies);
    birthday = millis();
    //println(birthday);
  }

  // a constructor where we're given a gene
  Creature(float _x, float _y, Gene _n, Species _s) {
    g = _n;
    mySpecies = _s;
    println(this+ " Hi, I'm a creature");
    location = new PVector(_x, _y);
    acceleration = new PVector(0, 0);
    velocity = new PVector(0, 0);
    //set up basic parameters / reset
    report();
    mode = "w";
    println(mySpecies);
    birthday = millis();
    //println(birthday);
  }

  /* ---------------- ADMIN FUNCTIONS ---------------------- */
  int getAge(int factor) {
    //get the creature's age in milliseconds divided by a factor. if the factor is 1000 we will return the age in seconds.
    int age = (millis()-birthday)/factor;
    return age;
  }

  void report() {
    //spit out information about me
    if (debug) {
      println(this+" (Creature)"+
        " age:"+getAge(1000)+
        ", g.energy:"+g.energy);
    }
  }

  void update() {
    calculatedMaxSpeed = maxspeed*g.energy/200;
    //  println(calculatedMaxSpeed);

    velocity.add(acceleration);
    // Limit speed
    velocity.limit(calculatedMaxSpeed);
    location.add(velocity);
    // Reset accelerationelertion to 0 each cycle
    acceleration.mult(0);
  }

  void flag() {
    //display useful information about the creature
    //abstracting this as it may be useful elsewhere
    textFont(font);
    int offset = 20;
    int space = 12;
    fill(colours[8]); 
    text(mode, location.x+offset, location.y);
    fill(colours[2]); 
    text(g.generation, location.x+offset, location.y-3*space);
    fill(colours[8], 120);
    //text(Float.toString(g.energy), location.x+offset, location.y+3*space);


    String threatChit = "";
    String foodChit="";
    for (int i=0;i<knownThreats.size();i++) {
      threatChit+="•";
    }
    for (int i=0;i<knownFoods.size();i++) {
      foodChit+="•";
    }

    fill(colours[7]); //red
    text(threatChit, location.x+offset, location.y-2*space);
    fill(colours[6]); //green
    text(foodChit, location.x+offset, location.y-1*space);
  }


  void render() {


    if (debug) {
      //draw the trangular creature boid 
      beginShape();
      endShape();
      // Draw a triangle rotated in the direction of velocity
      float theta = velocity.heading2D() + PI/2;
      //flag
      //flag();
      noStroke();
      pushMatrix();
      translate(location.x, location.y);
      int myAge = getAge(1000);
      //if (flag && myAge <= 10 && g.generation > 1) {
      if (myAge <= 10 && g.generation > 1) {
        noFill();
        stroke(colours[9], 100);
        strokeWeight(3);
        ellipse(0, 0, 35, 35);
      }
      noStroke();
      float r = g.energy/25;
      if (r>=7) {
        r=7;
      }
      fill(mySpecies.colour);
      rotate(theta);
      beginShape();
      vertex(0, -r*2);
      vertex(-r, r*2);
      vertex(r, r*2);
      endShape(CLOSE);
      popMatrix();
    }
    else {
      //draw something fancier
    }
  }

  /* ---------------- BEHAVIOURS ---------------------- */

  /*
   Next:
   avoid other species
   follow own species
   food respawns
   better wandering
   reproduction 
   
   next: tie speed and agility to g.energy level
   */

  void applyForce(PVector force) {
    // We could add mass here if we want A = F / M
    acceleration.add(force);
  }

  void seek(PVector _target) {
    //line(location.x,location.y,_target.x,_target.y);
    PVector desired = PVector.sub(_target, location);  // A vector pointing from the location to the target
    // Normalize desired and scale to maximum speed
    desired.normalize();
    desired.mult(maxspeed);
    // Steering = Desired minus velocity
    PVector steer = PVector.sub(desired, velocity);
    steer.limit(maxforce);  // Limit to maximum steering force
    applyForce(steer);
  }

  void arrive(PVector _target) {
    PVector desired = PVector.sub(_target, location);  // A vector pointing from the location to the target
    float d = desired.mag();
    // Normalize desired and scale with arbitrary damping within 100 pixels
    desired.normalize();
    float m = map(d, 0, 100, 0, calculatedMaxSpeed);
    desired.mult(m);
    // Steering = Desired minus Velocity
    PVector steer = PVector.sub(desired, velocity);
    steer.limit(maxforce);  // Limit to maximum steering force
    applyForce(steer);
  }

  void flee(PVector _target) {
    //println("flee");
    PVector desired = PVector.sub(_target, location);  // A vector pointing from the location to the target
    // Normalize desired and scale to maximum speed
    desired.normalize();
    desired.mult(-1*random(1)*calculatedMaxSpeed);
    // Steering = Desired minus velocity
    PVector steer = PVector.sub(desired, velocity);
    steer.limit(maxforce);  // Limit to maximum steering force
    applyForce(steer);
  }

  void leave() {
    //leave the food source if I am full
  }

  void age() {
    //my g.energy depletes over time
    //this needs to actually kill the creature - need to decouple age and energy
    if (g.energy > g.minenergy) {
      g.energy-=g.agespeed;
    }
    else {
      alive = false;
      println("i died");
    }
  }

  void tire() {
    //my g.energy depletes over time
    if (g.energy > g.minenergy) {
      g.energy-=g.tirespeed;
    }
    else {
      alive = false;
      println("i died");
    }
  }

  void friendly(ArrayList<Creature> _allCreatures) {
    //make a decision based on the locations of the other creatures
    // for (Creature c:_allCreatures) {
    for (int i = 0; i< _allCreatures.size(); i++) { 
      Creature c = (Creature)_allCreatures.get(i);

      //make sure this isn't me
      if (_allCreatures.indexOf(this) != i) {
        //calculate the distance between me and the other creature - if it's alive
        float distance = PVector.dist(location, c.location);
        // If the distance is greater than 0 and less than an arbitrary amount (0 when you are yourself)
        if (c.alive && getAge(1000) > 20 && distance < 25) { //some sort of sexy distance
          if (flag) {
            stroke(colours[3]);
            strokeWeight(1);
            line(location.x, location.y, c.location.x, c.location.y);
          };


          if (calculateFitness(g, c.g)) { //if the parents have sufficient energy
            // if (random(1)<0.01) { //there is about a one in a hundred chance
            if (random(1)<0.05) { //there is about a one in twenty chance
              println("hey there - let's mate");
              seek(c.location);
              Gene n = combine(g, c.g);
              mySpecies.makeCreatures(1, location.x, location.y, n); //that a new creature will be created                       
              g.energy-=g.reprocost; //and giving birth is tiring
              c.g.energy-=c.g.reprocost;
            }
          }
        }
      }
    }
  }


  boolean calculateFitness(Gene _g, Gene _cg) {
    //could look at age
    //could look at ability to find food
    if ((_g.energy+_cg.energy/2) >150) {
      return true;
    }
    else {
      return false;
    }
  }

  Gene combine(Gene _x, Gene _y) {
    Gene n = new Gene();
    n.energy = (_x.energy+_y.energy)/2;
    n.maxenergy= (_x.energy+_y.energy)/2;
    n.lifespan= (_x.lifespan+_y.lifespan)/2;
    n.wander_maxspeed= (_x.wander_maxspeed+_y.wander_maxspeed)/2;
    n.wander_maxforce= (_x.wander_maxforce+_y.wander_maxforce)/2;
    n.flee_maxspeed= (_x.flee_maxspeed+_y.flee_maxspeed)/2;
    n.flee_maxforce= (_x.flee_maxforce+_y.flee_maxforce)/2;
    n.minenergy= (_x.minenergy+_y.minenergy)/2;
    n.farvisiondistance= (_x.farvisiondistance+_y.farvisiondistance)/2;
    n.nearvisiondistance= (_x.nearvisiondistance+_y.nearvisiondistance)/2;
    n.agespeed= (_x.agespeed+_y.agespeed)/2;
    n.tirespeed= (_x.tirespeed+_y.tirespeed)/2;
    n.wanderR= (_x.wanderR+_y.wanderR)/2;
    n.wanderD= (_x.wanderD+_y.wanderD)/2;
    n.change= (_x.change+_y.change)/2;
    n.reprocost= (_x.reprocost+_y.reprocost)/2;
    n.fertility= (_x.fertility+_y.fertility)/2;
    n.generation = _x.generation+_y.generation;
    //n = mutate(n);
    return n;
  }

  void wander() {
    //if I am wandering, I am getting tired
    tire();
    fleeing = false;
    if (wander == true && fleeing == false) {
      //wander
      maxspeed = g.wander_maxspeed;
      maxforce = g.wander_maxforce;
      mode = "w";
      wandertheta += random(-g.change, g.change);     // Randomly change wander theta
      // Now we have to calculate the new location to steer towards on the wander circle
      PVector circleloc = velocity.get();    // Start with velocity
      circleloc.normalize();            // Normalize to get heading
      circleloc.mult(g.wanderD);          // Multiply by distance
      circleloc.add(location);               // Make it relative to boid's location
      float h = velocity.heading2D();        // We need to know the heading to offset wandertheta
      PVector circleOffSet = new PVector(g.wanderR*cos(wandertheta+h), g.wanderR*sin(wandertheta+h));
      PVector target = PVector.add(circleloc, circleOffSet);
      //println("wander");
      seek(target);
    }
  }

  void boundaries() {
    //there must less verbose way of doing this - like distance from the center or something?
    PVector desired = null;

    if (location.x < g.nearvisiondistance) {
      mode = "!";
      desired = new PVector(calculatedMaxSpeed, velocity.y);
    } 
    else if (location.x > width - g.nearvisiondistance) {
      mode = "!";
      desired = new PVector(-calculatedMaxSpeed, velocity.y);
    } 

    if (location.y < g.nearvisiondistance) {
      mode = "!";
      desired = new PVector(velocity.x, maxspeed);
    } 
    else if (location.y > height- g.nearvisiondistance) {
      mode = "!";
      desired = new PVector(velocity.x, -maxspeed);
    } 

    if (desired != null) {
      desired.normalize();
      desired.mult(calculatedMaxSpeed);
      PVector steer = PVector.sub(desired, velocity);
      steer.limit(maxforce);
      applyForce(steer);
    }
  }

  //what should I do in reference to all the things in the world - epic cheating, prefect knowledge
  void decide(ArrayList<Something> _allThings) {

    // Search for the closest (within threshold)
    Something whichThing = null;
    wander = true;
    float recordDistance = 1000000;

    //need to figure out how to not reset recordDistance to 1000000 if we're seeking a target

    //distance from all things
    for (Something s:_allThings) { //check dist to each thing - awareness
      float targetDistance = dist(location.x, location.y, s.location.x, s.location.y);
      if (targetDistance < g.farvisiondistance && s.active == true) { //outer threshold
        if (targetDistance < recordDistance) {
          //println("record distance is now "+recordDistance);
          recordDistance = targetDistance;
          whichThing = s;
          wander = false;
        }
      }
      // if you find something that is the closest
      // do all the stuff you need to do
      if (whichThing != null) {
        if (targetDistance < g.farvisiondistance && targetDistance > g.nearvisiondistance && !knownThreats.contains(whichThing)) { //within sight but not at arrive
          /*
          //draw a line between me and the thing i seek. very handy to see the changes in creatures' range of vision
           strokeWeight(1);
           stroke(200);
           line(this.location.x, this.location.y, whichThing.location.x, whichThing.location.y);*/
          seek(whichThing.location);
          //when else should I seek? when I am hungry
        }
        //it's food
        if (targetDistance <= g.nearvisiondistance && whichThing.threat ==false) {
          mode = "f";
          if (!knownFoods.contains(whichThing)) {
            knownFoods.add(whichThing);
          }
          arrive(whichThing.location);
          g.energy+=whichThing.deplete();
          //println("feeding");
        }

        //it's a threat - i already know about it or I can see it up close
        else if ((targetDistance < g.farvisiondistance && knownThreats.contains(whichThing)) || (targetDistance <= g.nearvisiondistance && whichThing.threat == true)) {
          //fleeing = true;
          g.energy = whichThing.injur(g.energy);
          maxspeed = g.flee_maxspeed;
          maxforce = g.flee_maxforce;
          mode = "!";
          if (!knownThreats.contains(whichThing)) {
            knownThreats.add(whichThing);
          }
          // println("FLEE " + frameCount);
          flee(whichThing.location);
        }
      }
    }
  }
} //class ends
class Food extends Something {

  /* ---------------- CONSTRUCTOR---------------------- */
  Food(Float _x, Float _y) {
    location = new PVector(_x, _y);
    foodSupply = 30;
    foodLimit = 30;
    threat = false;
    myColour = colours[6];
    mySize = 10;  
    println(this+ " Hi, I'm some food - you should come and taste me");
  }

  /* ---------------- ATRIBUTES---------------------- */




  /* ---------------- BEHAVIOUR FUNCTIONS ---------------------- */





  /* ---------------- ADMIN FUNCTIONS ---------------------- */
}
class Gene {
  //a storage medium for heritable traits
  float energy; //the amount of energy i have right now
  float maxenergy; //the maximum energy i can store
  float lifespan; //my maximum age in milliseconds
  float wander_maxspeed = 2; //the speed at which i wander
  float wander_maxforce = 0.3; //the force that can be applied when i am wandering
  float flee_maxspeed = 10; //the speed at which i can flee
  float flee_maxforce = 2; //the force that can be applied when i flee
  float minenergy = 10; //my minimum energy threshold - if i tire below here, i die
  float farvisiondistance = 50; //the distance at which i can see things in outline 
  float nearvisiondistance = 20; //the distance at which i can accurately see things
  float agespeed=0.004; //the speed at which I age
  float tirespeed=0.006; //the amount I tire each frame when i am wandering
  float wanderR = 10; // Radius for our "wander circle"
  float wanderD = 50; // Distance for our "wander circle"
  float change = 0.008; //very interesting - tie this to a gene?
  float reprocost = 20; //the energy cost of reproducing
  float fertility = 0.5; //the chance that i will reproduce when i encounter a suitable mate
  int generation;
  Gene(int _generation) {
    generation = _generation;
    energy = 100;
    maxenergy = 100; //what is the most energy I can have?
  }

  Gene() {
  }
}
class Something {
  PVector location;
  color myColour;
  Boolean threat;
  Boolean active;
  float foodSupply;
  float foodLimit;
  float mySize;
  int number = 0;

  Something() {
    //location = new PVector(random(width), random(height));
    //location = new PVector(random(conf.bound, width-conf.bound), random(conf.bound, height-conf.bound));
    active = true;
  }


  void render() {
    reGrow();
    noStroke();
    if (active) { //don't draw me if I've been depleted
      fill(myColour);
      if (!threat) {
        ellipse(location.x, location.y, foodSupply, foodSupply);
      }
      else {
        ellipse(location.x, location.y, mySize, mySize);
      }
      fill(colours[8]);
      fill(colours[8]); 
      //text(Float.toString(foodSupply), location.x+5, location.y-5, 10);
      //stroke(colours[3]);
      noFill();
      //ellipse(location.x, location.y, 100, 100); //twice the smell distance of the creature - hacky for now
    }
  }

  void reGrow() {
    //food sources will regrow slowly and become active when they get over a minimum size.
    if (foodSupply > 5) {
      this.active = true;
    }
    //regrowth rate
    if (foodSupply < foodLimit) {
      foodSupply+=0.015;
    }
  }

  float deplete() {
    float chunk = 0.1;
    foodSupply=foodSupply-chunk;
    // println(foodSupply);
    if (foodSupply < 0) {
      this.active = false;
    }
    return(chunk);
  }

  float injur(float _energy) {
    return _energy-0.2;
  }
}
class Species {

  ArrayList<Creature> allCreatures; 
  color colour;
  //all the creatures in this herd share the same basic attributes
  //colour
  //speed
  color[] possibleColours = {
    #9BD49D, #F6BA40, #DD5F22, #BF282D, #3C7B37, #42445D, #498A3E, #66C256, #C0CC8B, #C4B0C3, #5A8991, #B8D0DE, #FBD861, #F59F22, #6792AB, #E65A65, #E65A65, #D04A2F, #5A418C, #19A3BE, #FFCD09, #82AE93, #938A45, #84BA20, #FFBF00, #A6356F, #FC2853, #00FF9D
  };


  Species() {
    println("Herd "+this+" is alive");
    allCreatures = new ArrayList();
    //pick a random colour for the herd
    int colRand = int(floor(random(possibleColours.length)));
    println(colRand);
    colour = possibleColours[colRand];
  }


  void makeCreatures(int _creatures, float _x, float _y, int _generation) {
    //make a group of creatures with a number of creatures
    for (int i=0;i<=_creatures-1;i++) {
      Creature c = new Creature(_x, _y, _generation, this);
      allCreatures.add(c);
    }
  }

  void makeCreatures(int _creatures, float _x, float _y, Gene _n) {
    //make a group of creatures with a number of creatures
    for (int i=0;i<=_creatures-1;i++) {
      Creature c = new Creature(_x, _y, _n, this);
      allCreatures.add(c);
    }
  }
}
class Threat extends Something {

  /* ---------------- CONSTRUCTOR---------------------- */
  Threat(Float _x, Float _y) {
    location = new PVector(_x, _y);
    myColour = colours[7];
    mySize = 10; 
    threat = true;
    println(this+ " Hi, I'm a threatening object - you'd better stay away");
  }

  /* ---------------- ATRIBUTES---------------------- */

  //see parent class

  /* ---------------- BEHAVIOUR FUNCTIONS ---------------------- */

  //see parent class

  /* ---------------- ADMIN FUNCTIONS ---------------------- */

  //see parent class
}
class Weather {


  Weather() {
  }
}
class World {

  //has species
  ArrayList<Species> allHerds = new ArrayList();

  //has terrain, some of it edible
  ArrayList<Something> allThings = new ArrayList();
  PFont font = loadFont("HelveticaNeue-Medium-12.vlw"); 
  //has weather



  World() {
  }

  void makeThings(int _num, boolean _threat) { //bloated
    for (int i=0;i<=_num-1;i++) {
      //make a food
      //should probably be in "clusters", so will make this noisy, not random

      /* float x = random(width);
       float y = random(height);
       float angle = random(TWO_PI);
       float r = random(10); // use perlin noise based on the angle?
       Food f = new Food(x+r*cos(angle),y+sin(angle));*/

      if (_threat == false) {
        //pick a point and pick points within an offset
        Food f = new Food(random(40, width-40), random(40, height-40));
        allThings.add(f);
      }
      else
      {
        Threat t = new Threat(random(40, width-40), random(40, height-40));
        allThings.add(t);
      }
    }
  }


  void makeHerds(int _herds, int _creatures) {
    //make herds with a number of creatures
    for (int i=0;i<=_herds-1;i++) {
      Species s = new Species();
      allHerds.add(s);
      Float startx = random(width); //doing this to start the herd at one x-loc
      s.makeCreatures(_creatures, startx, height/2,1);
    }
  }


  void render() {
    int total = 0;
    //draw the objects in our world - food, threats etc.
    for (Something s:allThings) {
      s.render();
    }
    //pass all the objects to all the creatures - right approach?
    for (Species h:allHerds) {
      //for (Creature c:h.allCreatures) { //for each herd, each creature in the herd
      for (int i = 0; i< h.allCreatures.size(); i++) { 
        Creature c = (Creature)h.allCreatures.get(i);
        if (c.alive == true) { //creatures can die, when they do - don't show them anymore
          c.update();
          c.age();
          c.render();
          if (flag) {
            c.flag();
          }
          c.wander();
          c.boundaries();
          c.decide(allThings);
          c.friendly(h.allCreatures);
        }
      }
    }
  }
}
