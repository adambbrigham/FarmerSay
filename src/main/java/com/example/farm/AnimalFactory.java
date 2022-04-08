package com.example.farm;

public class AnimalFactory
{
    public Animal spawn(int pointerAngle)
    {
        if ((pointerAngle > 345 && pointerAngle < 360) || pointerAngle <= 15)
        {
            return new Sheep();
        }
        else if (pointerAngle > 315 && pointerAngle <= 345)
        {
            return new Turkey();
        }
        else if (pointerAngle > 285 && pointerAngle <= 315)
        {
            return new Cat();
        }
        else if (pointerAngle > 255 && pointerAngle <= 285)
        {
            return new Bird();
        }
        else if (pointerAngle > 225 && pointerAngle <= 255)
        {
            return new Cow();
        }
        else if (pointerAngle > 195 && pointerAngle <= 225)
        {
            return new Pig();
        }
        else if (pointerAngle > 165 && pointerAngle <= 195)
        {
            return new Rooster();
        }
        else if (pointerAngle > 135 && pointerAngle <= 165)
        {
            return new Coyote();
        }
        else if (pointerAngle > 105 && pointerAngle <= 135)
        {
            return new Horse();
        }
        else if (pointerAngle > 75 && pointerAngle <= 105)
        {
            return new Frog();
        }
        else if (pointerAngle > 45 && pointerAngle <= 75)
        {
            return new Duck();
        }
        else if (pointerAngle <= 45)
        {
            return new Dog();
        }
        return null;
    }
}
