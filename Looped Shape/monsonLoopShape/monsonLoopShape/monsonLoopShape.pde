void setup(){
 size(700,500);
 background(0);
}

void draw(){
//green diagonals

for (int i=0; i < 720; i=i+5){
  for (int j=0; j < 700; j=j+10){
    fill(0, 255, 0, 20);
    if (j< 350){
        noFill();
        }
     if (j< 300){
        fill(0, 255, 0, 20);
        }
    ellipse(i, (i-j), 5,5);
  }
} 
//for (int i=0; i < 720; i=i+5){
//  fill(0, 255, 0, 40);    
//  ellipse(i, i-600, 5,5);
//  ellipse(i, i-590, 5,5);
//  ellipse(i, i-580, 5,5);
//  ellipse(i, i-570, 5,5);
//  ellipse(i, i-560, 5,5);
//  
//  ellipse(i, i-500, 5,5);
//  ellipse(i, i-490, 5,5);
//  ellipse(i, i-480, 5,5);
//  ellipse(i, i-470, 5,5);
//  ellipse(i, i-460, 5,5);
//  
//  ellipse(i, i-400, 5,5);
//  ellipse(i, i-390, 5,5);
//  ellipse(i, i-380, 5,5);
//  ellipse(i, i-370, 5,5);
//  ellipse(i, i-360, 5,5);
//  
//  ellipse(i, i-300, 5,5);
//  ellipse(i, i-290, 5,5);
//  ellipse(i, i-280, 5,5);
//  ellipse(i, i-270, 5,5);
//  ellipse(i, i-260, 5,5);
//  
//  ellipse(i, i-200, 5,5);
//  ellipse(i, i-190, 5,5);
//  ellipse(i, i-180, 5,5);
//  ellipse(i, i-170, 5,5);
//  ellipse(i, i-160, 5,5);
//  
//  ellipse(i, i-100, 5,5);
//  ellipse(i, i-90, 5,5);
//  ellipse(i, i-80, 5,5);
//  ellipse(i, i-70, 5,5);
//  ellipse(i, i-60, 5,5);
//  
//  ellipse(i, i, 5,5);
//  ellipse(i, i+10, 5,5);
//  ellipse(i, i+20, 5,5);
//  ellipse(i, i+30, 5,5);
//  ellipse(i, i+40, 5,5);
//  
//  ellipse(i, i+100, 5,5);
//  ellipse(i, i+110, 5,5);
//  ellipse(i, i+120, 5,5);
//  ellipse(i, i+130, 5,5);
//  ellipse(i, i+140, 5,5);
//  
//  ellipse(i, i+200, 5,5);
//  ellipse(i, i+210, 5,5);
//  ellipse(i, i+220, 5,5);
//  ellipse(i, i+230, 5,5);
//  ellipse(i, i+240, 5,5);
//  
//  ellipse(i, i+300, 5,5);
//  ellipse(i, i+310, 5,5);
//  ellipse(i, i+320, 5,5);
//  ellipse(i, i+330, 5,5);
//  ellipse(i, i+340, 5,5);
//  
//  ellipse(i, i+400, 5,5);
//  ellipse(i, i+410, 5,5);
//  ellipse(i, i+420, 5,5);
//  ellipse(i, i+430, 5,5);
//  ellipse(i, i+440, 5,5);
//}


//pink and teal vertical lines
for (int i=0; i < 2000; i=i+10){
  for (int j=0; j < 720; j=j+20){
    fill(0, 0+i, 0+i, 40);
        if (j< 100){
        fill(0+i, 0, 0+i, 40);
        }
        if (j>180){
        fill(0+i, 0, 0+i, 40);
        }
        if (j>280){
        fill(0, 0+i, 0+i, 40);
        }
        if (j>380){
        fill(0+i, 0, 0+i, 40);
        }
        if (j>480){
        fill(0, 0+i, 0+i, 40);
        }
        if (j>580){
        fill(0+i, 0, 0+i, 40);
        }
        if (j>680){
        fill(0, 0+i, 0+i, 40);
        }
    ellipse(j, i, 5,5);
  }
}

}

