# Time Crunch
MSCH-C220 Game Jam, April 2022

## Theme
We interpreted the theme Time Crunch theme as guy eating chips (crunch) that can be used to stop time and move. 

## Game Play
Objective: The objective is to progress through the different platforming levels, utilizing the chips as bonus movement. 

Game-play instructions:
- W: Jump
- A: Left
- D: Right
- E: Activate/Deactivate Chip Mode
- W/A/S/D: Up/Left/Down/Right while in Chip mode
- Esc: Close Program

## Impediments
- When implementing the state-machine from Unit 4: 2d Platformer, we encountered an unfortunate spelling typo that was making it impossible to move and jump.
- We had many issues with "gravity" and downward speed being way too high, therefore making the game too fast for people to react and make meaningful platforming decisions. 
- Importing assets from Piskel required multiple iterations because what seems like a 1 to 1 size model doesn't always turn out as expected.
- Choosing the right things to work on at the right time can be quite difficult when you are in a **time crunch**

## Implementation
Features:
- A mode switch: Made by a state machine capable of blocking normal movement inputs and utilizing a different "advanced movement" state. 
- 
Assets:
- Tilemap created by Bonnie Gawron using https://www.piskelapp.com/
- Animated Sprite created by Abbey Gorney using https://www.piskelapp.com/

Resources: 
- https://www.piskelapp.com/
- https://godotengine.org/

## References

## Future Development
None

# Created by: GiGaByte Studios (GGB)
- Bonnie Gawron: Level Design, Conceptual Work, Background/Level Tilemap, and Programming
- Abbey Gorney: Player Animated Sprite and Spritesheets
- Ian Brower: Repository/File Management, StateMachine/Physics, and Bug-Fixing
