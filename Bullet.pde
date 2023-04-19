class Bullet extends Sprite {
    
    Bullet(float x, float y, float w, float h, PVector velocity, int team) {
        super(x, y, w, h); // invoke parent constructor
        vel = velocity;
        this.team = team;
    }

    Bullet(PVector pos, PVector size, PVector vel, int team) {
        //constructor chaining
        this(pos.x, pos.y, size.x, size.y, vel, team); // invoke another own constructor
        // this refers to the above on line 3
    }
    
    @Override
    void update() {
        pos.add(vel);
    }

    @Override
    void display() {
         fill(255,0,0);
         ellipse(pos.x, pos.y, size.x, size.y);

    }
}