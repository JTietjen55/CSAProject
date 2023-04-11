class Player extends Sprite {
    boolean left, right, up, down;
    Player(float x, float y) {
        //super refers to ther parent
        //used here as a constructor
        super(x,y, 40, 40); //in this case, Sprite
        team = 1;
    }

    @Override
    void update() {
        if(left) vel.add(new PVector(-speed, 0));
        if(right) vel.add(new PVector(speed, 0));
        if(up) vel.add(new PVector(0, -speed));
        if(down) vel.add(new PVector(0, speed));
        //update the position by velocity
        pos.add(vel);
        //always try to decelerate
        vel.mult(0.9);
    }

    void keyUp() {
        switch(key) {
            case 'a':
            case 'A': left = false; break;
            case 'w':
            case 'W': down = false; break;
            case 's':
            case 'S': right = false; break;
            case 'd':
            case 'D': up = false; break;
        }
    }

    void keyDown() {
        switch(key) { // key is a global value
            case 'a':
            case 'A': left = true; break;
            case 'w':
            case 'W': down = true; break;
            case 's':
            case 'S': right = true; break;
            case 'd':
            case 'D': up = true; break;
        }
    }
}