[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/YxXKqIeT)
# Project Description
This Fruit Ninja-inspired slicing game is an interactive desktop arcade experience built using Processing (Java). Players use their mouse like a blade to slice flying fruits, dodge bombs, and rack up points while managing their lives. The game incorporates physics-based motion, diverse fruit behaviors, multiple game modes, and dynamic difficulty adjustment.

# Intended usage:
## Gameplay Overview

<<<<<<< HEAD
To start the game, press the start button using the mouse. If you want to change the frequency (of the time), press 'A' to increase so less fruit appears or press 'N' so more fruit appear at a time. The frequency can become negative, but the game only starts if frequency is above 0. When the game starts, press down on the mouse and start swiping over the fruits. The mouse has to be pressed down on the fruit  in order to cut and some fruits (dragon fruit, watermelon, and coconut) requires at least 2 swipes, and each fruit will add 5 points. Touching a piece of trash or letting a fruit fall without cutting takes away one life. Touching a bomb is an automatic game over. If you lose all lives, press the restart icon on the right hand corner and it resets everything.
=======
The game consists of **three modes**:

### 1. **Title Screen (mode 0)**
- Displayed when the game first launches
- Press letter key to change the **frequency** of fruit spawns:
  - `A`: Slower spawn rate (decreases frequency by 0.2)
  - `N`: Faster spawn rate (increases frequency by 0.2)
  *Note that these keys only work as capitals*
- Click the mouse to begin the game
>>>>>>> Veronika
  
### 2. **Gameplay (mode 1)**
- Fruits launch upward from either the left or right side of the screen with randomized x-velocity and a set y-velocity (this is done for game pieces to each move up to a predicted height for easier game play)
- Use the mouse to slice fruits by dragging over them (no clicking required)
- Each fruit sliced earns **+5 points**
- **Lives** are lost when:
  - A fruit game piece falls off the screen unsliced
  - A player slices trash fruit (which turns fatal when sliced)
- **Lose Condition**:
  - Lives reach 0
  - A bomb is sliced (instant game over)
- Visual feedback:
  - White slash line appears as you swipe
  - Score and current fruit frequency are displayed at the top
  - Lives are shown as hearts

### 3. **Game Over Screen (mode 2)**
- Displayed when the player loses
- Click the **top-right corner** to return to the title screen
  - This resets:
    - Points
    - Lives
    - Fruit list
    - Frequency (default: 1.0)


## Fruit Types and Behavior
### `Fruit`
- Default fruit types: apple, kiwi, orange, banana, pineapple
- Sliced in one hit
- Fatal if dropped unsliced

### `HardFruit`
- Includes: coconut, watermelon, dragon fruit
- Requires **multiple slices** to cut
- Fatal if dropped unsliced

### `FruitBomb`
- **If sliced: immediate game over**
- Non-fatal if dropped

### `Trash`
- Includes: water bottles, plastic bags
- Not initially fatal
- **Becomes fatal if sliced**, then causes you to lose a life if it drops


## Visual Assets
- `loading_screen.png`: Shown on title screen
- `game_screen.png`: Background for gameplay
- `dead_screen.png`: Displayed on game over
- `heart.png`: Heart icon representing lives
- `*.png` game piece images:
  - `kiwi.png`, `kiwi_sliced.png`, `pineapple.png`, `pineapple_sliced.png`, `apple.png`, `apple_sliced.png`, `banana.png`, `banana_sliced.png`, `orange.png`, `orange_sliced.png`
  - `Bomb.png`, `explosion.png`
  - `coconut.png`, `coconut_sliced.png`, `dragon.png`, `dragon_sliced.png`, `watermelon.png`, `watermelon_sliced.png`
  - `trash.png`, `bottle.png`

## Known Bugs
- Hard fruits occasionaly require more than 2 slices due to cutting boundaries not truly being centered on the fruit but rather on the loaded-in image
- There is no way to tell if trash is cut, coupled with the faulty boundaries for cutting, lives are only sometimes taken off when trash is "cut"
