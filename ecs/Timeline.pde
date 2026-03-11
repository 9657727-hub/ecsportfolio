// Weston Day | 25 Feb 2026 | Timeline
void setup() {
  size(950,400);
}
void draw() {
  background(#5CC0DB);
  drawRef();
  histEvent(185,200,"June 1987",true,"He was born in Rosina, Argentina and he was plaing lots of soccer while he was very young. \n It was important because it lead to his soccer success.");
  histEvent(405,300,"Sep 2000",false,"He got diagnosed with growth hormone deficiency at the age of 11 with effected his soccer career. \n He moved to FC Barcelona because he got an offer to play there and they said they would pay for his medical treatments. ");
  histEvent(470,200,"Oct 2004",true,"He made his professional debut at the age of 17 and it is important because this was his first professional game. \n At the time it was the youngest player to represent in a club competitive match.");
  histEvent(540,300,"Aug 2008",false,"He won an olympic gold medal with Argentina in 2008 in the Beijing Olympics.");
  histEvent(575,200,"Dec 2009",true,"He won his first Ballon d'Or and it was importnat because it was his first big accomplishment.");
  histEvent(770,300,"July 2021",false,"He won the big tournament Copa America in 2021. He won his first big trophy and it was very important \n because that gave him confidence and led to him getting more trophies in the future of his career.");
  histEvent(785,200,"Dec 2022",true,"They won the World Cup against France in 2022. They won the biggest trophy and it is the most \n watched sporting event in the world. And Messi received the golden ball for scoring two goals in the World Cup.");
  histEvent(835,300,"July 2023",false,"He left to play at Inter Miami the MLS team in 2023 which is a bug step down because \n he is getting older. His first year there they won the 2023 League Cup right away.");
}
void drawRef() {
  textAlign(CENTER);
  textSize(36);
  fill(#1C5FDC);
  text("Lionel Messi: Timeline",width/2,60);
  textSize(20);
  text("by Weston Day",width/2,90);
  strokeWeight(5);
  line(50,250,900,250);
  textSize(16);
  text("1980",50,275);
  text("2030",900,275);
  strokeWeight(2);
  line(50,260,50,240);
  line(900,260,900,240);
  line(200,260,200,240);
  line(390,260,390,240);
  line(570,260,570,240);
  line(750,260,750,240);
}
void histEvent(int x, int y, String title, boolean top, String detail) {
  if(top == true) {
    line(x,y,x-15,y+50);
  } else {
    line(x,y,x-15,y-50);
  }
  rectMode(CENTER);
  fill(#FAFBFC);
  strokeWeight(2);
  fill(#1C5FDC);
  rect(x,y,100,30,10);
  fill(#000000);
  text(title,x,y+5);
  if(mouseX > x-50 && mouseX < x+50 &&mouseY > y-15 && mouseY < y+15) {
    text(detail,width/2,350);
  }
}
