class Shooter extends Invader {

    long mark, wait = 1200; //ms
    int r = 0;


    Shooter(float x, float y){
        super(x, y);
        mark = millis();

    }



    @Override 
    void update() {
        super.update();
        PVector size = new PVector(30,30);
        PVector aim = new PVector(0,-10);
        aim = aim.normalize().mult(3); // turn this into a single unit vector, the increase its magnitude
        wait--;
        aim.rotate(radians(r));
        if(millis() - mark > wait) {
            mark = millis();
            _SM.spawn(new Bullet(pos, size, aim, team));
            r += PI;
        }

    }
}