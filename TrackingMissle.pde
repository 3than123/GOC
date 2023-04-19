class TrackingMissle extends Sprite {

    long mark, wait = 1200; //ms
    float scalar = 1;


    TrackingMissle(float x, float y){
        super(x, y, 15, 15);
        mark = millis();
    }

     @Override 
    void update() {
        PVector aim = new PVector(_SM.player.pos.x - this.pos.x, _SM.player.pos.y - this.pos.y);
        aim = aim.normalize().mult(scalar); // turn this into a single unit vector, the increase its magnitude
        scalar += 0.005;
        
        if(millis() - mark > wait) {
            mark = millis();
        }
        pos.add(aim);
    }

     @Override
    void display() {
        fill(255,0,0);
        ellipse(pos.x, pos.y, size.x, size.y);
    }
    
}
      

