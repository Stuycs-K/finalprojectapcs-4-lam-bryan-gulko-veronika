# Dev Log

This document must be updated daily every time you finish a work session.

## Veronika Gulko

### 2025-05-27 - Initial Visual Design & Setup (2 hours)

I began by designing visuals for the game using Piskel and Canva. I created a preliminary background image for the title screen. Then, I started coding the Fruit\_Ninja.pde file. I declared and initialized the main instance variables outlined in our UML diagram, such as lives, points, and fruit frequency. I also wrote the initial setup() function to load the background image and prepare the game state. This session helped establish the visual identity and foundational structure of the game.

### 2025-05-29 - Title Screen & Sprite Work (1.5 hours)

I created the title screen for Mode 0 of the game using Piskel and Canva, aiming for a clean and colorful layout. In addition, I designed and exported original sprites for several fruit types, including coconut, dragon fruit, watermelon, and banana. These images were prepared with transparent backgrounds and formatted to fit the game's display resolution.

### 2025-05-30 - Game Modes & UI Text (2 hours)

I implemented setter methods for lives, points, and mode. While these variables were initially accessed directly, I refactored them for better control and cleaner logic. I updated the draw() function to handle three modes: title screen (0), gameplay (1), and game over (2). In Mode 1, I added logic to generate fruits randomly and display temporary UI text showing the current score and remaining lives in the corner. This helped with testing and debugging.

### 2025-06-01 - Asset Refinement (1.5 hours)

I focused on producing polished sprite assets using Piskel and Canva. I created whole and sliced images for the following fruits: banana, kiwi, coconut, dragon fruit, pineapple, orange, and watermelon. I also created sprites for trash items (trash bag, water bottle) and bomb images. Some assets had to be re-exported multiple times to fix transparency issues.

### 2025-06-02 - Fruit Generation & Logic Refactor (2.5 hours)

I edited the Fruit, HardFruit, Trash, and FruitBomb classes. I replaced the original checkSlice() method with a new trySlice() method across all classes to improve code clarity and reuse. I changed the fruit spawning logic in draw() to be time-based using millis(), which made performance smoother. I also integrated bomb generation at a 20% spawn rate using Math.random(). Lastly, I designed a new title screen that includes a visible start button.

### 2025-06-03 - Bomb Visual Bug Fix (1 hour)

I fixed a critical visual bug where slicing a bomb would end the game but not display the explosion sprite. This created confusion during testing, as the screen appeared frozen. I updated setMode() to trigger the game over screen and ensured that the explosion image was shown before the transition. This made the user experience clearer.

### 2025-06-06 - Orbit Physics Attempt & Transition to Earth Mode (2 hours)

We tried implementing orbital physics to simulate fruits orbiting an invisible center. However, due to random spawn positions, the fruits behaved erratically. We decided to switch to Earth Mode by giving fruits a negative initial y-velocity and simulating gravitational attraction to a central fruit positioned far below the screen. I cleaned up the vector logic by removing redundant variables and rewrote trySlice() to use position.x and position.y.

### 2025-06-07 - Final Edits & Video Recording (2.5 hours)

Bryan and I called on Zoom to finalize our code. We removed unused variables such as speed and removed the associated display panel from the title screen. We also adjusted fruit spawn probabilities to make the gameplay more balanced. 


I edited our gameplay demo video on the morning of June 8 to prepare for submission.

Bryan: I believe this document accurately reflects the contributions of my teamate.