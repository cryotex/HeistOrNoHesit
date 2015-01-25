with(argument0){
    if (other.hspeed != 0){
        if (other.hspeed > 0){
            image_angle = 90;
            other.playerDirection = 1;
        }else if(other.hspeed < 0){
            image_angle = 270;
            other.playerDirection = 0;
        }
    }else{
        if (other.vspeed > 0){
            image_angle = 0;
            other.playerDirection = 2;
        }else if (other.vspeed < 0){
            image_angle = 180;
            other.playerDirection = 3;
        }
    }
        
    if(other.playerDirection==1){
        x = other.x + other.sprite_width/2-3;
        y = other.y;
    }else if(other.playerDirection==0){
        x = other.x - other.sprite_width/2+3;
        y = other.y;
    }else if(other.playerDirection==3){
        x = other.x;
        y = other.y - other.sprite_width/2+3;
    }else if(other.playerDirection==2){
        x = other.x;
        y = other.y + other.sprite_width/2-3;
    }
    
    if (argument1 != false){
        with(argument1){
            x = other.x;
            y = other.y;
        }
    }
}