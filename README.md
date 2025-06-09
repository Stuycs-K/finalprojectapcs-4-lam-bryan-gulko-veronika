[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/YxXKqIeT)
# Project Description

lorem ipsum.

# Intended usage:

## Gameplay Overview

The game consists of **three modes**:

### 1. **Title Screen (mode 0)**
- Displayed when the game first launches
- Press letter key to change the **frequency** of fruit spawns:
  - `A`: Slower spawn rate (decreases frequency by 0.2)
  - `N`: Faster spawn rate (increases frequency by 0.2)
  *Note that these keys only work as capitals*
- Click the mouse to begin the game
  
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


