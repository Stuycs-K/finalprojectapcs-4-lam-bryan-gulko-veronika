
# Technical Details:

Period: 4

Group Members: Veronika Gulko and Bryan Lam

Group Name: 

A description of your technical design. This should include: 
   
How you will be using the topics covered in class in the project.

Brief Description: Our project will be similar to fruit ninja. Different images of fruit will fall from the top of the screen towards the bottom and will continue to fall off screen, similar to Earth Mode from OrbGravity but the fruit will only bounce from the left and right sides of the screen. The player will have to click the fruit, which will replace the fruit image with a sliced version. For each fruit cut, points will be added to a point counter displayed near the top of the screen. If the player has enough points, they can advance to harder levels which will apply acceleration to the fruits, increase the frequency of fruit falling, and start having 'hard fruits' which will require double clicking in order to cut.

## Expanded Description
### Minimum Viable Product by Week 1.5:
By the 1.5-week mark, we aim to have the core mechanics of the game working:
Loading Screen: Displays a brief overview of game rules and fruit types. For example, coconuts and other hard-skinned fruits require a double tap to slice.

Start Button: The game should only begin when the user presses “Start.”
Fruit Mechanics: Fruits should fall from the top of the screen with gravity.
Slicing Animation: A rough animation to represent slicing.
Point System: Tracks score accurately without counting both halves of a sliced fruit or missed slices.
5 Core Fruits: Banana, kiwi, apple, pineapple, and orange

These components will be built around a Fruit class, which contains physics, slicing behavior, and point logic. Each fruit type will extend this base class and include rough visuals for both whole and sliced states.

Nice-to-Have Features:
Special Fruits: Melons, coconuts, and dragonfruit that require double taps and award bonus points (+5).
Trash Objects: Non-fruit items that, if sliced, cause the player to lose a life.

Lives System: Players start with 3 lives. A life is lost if:
A fruit reaches the bottom of the screen unsliced.
A piece of trash is sliced.

Difficulty Modes: On the start screen, users can choose between Easy, Medium, and Hard. These options affect how quickly and frequently fruits fall.
Progressive Challenge: As the game continues, fruit speed and spawn rate should gradually increase to raise difficulty.

     
# Project Design

UML Diagrams and descriptions of key algorithms, classes, and how things fit together.
![UML diagram](UML.png?raw=true "uml" )

    
# Intended pacing

How you are breaking down the project and who is responsible for which parts.

- [ ] Create Fruit class
   - [ ] Create Gravity pulling down fruits
   - [ ] Make a slice feature
   - [ ] Points feature to add points for each fruit cut and lead to progression
- [ ] Create Fruit Subclasses
    - [ ] Banana
    - [ ] Kiwi
    - [ ] Apple
    - [ ] Pineapple
    - [ ] Orange
    - [ ] Create double tap fruit classes
        - [ ] Coconut
        - [ ] Watermelon
        - [ ] Dragon Fruit
- [ ] Devop lives system
    - [ ] Create trash pieces (fruits that kill if sliced)
    - [ ] Take a life for each fruit that hits the ground without being sliced
    - [ ] Create bombs that annihilate everything
- [ ] Progression of Game
    - [ ] Speed up (fruits accelerate)
    - [ ] Increase Frequency of fruits falling
- [ ] Loading Screen
    - [ ] Start Button
    - [ ] Description of fruits/lives/points
    - [ ] Options for easy, medium, and hard, which affects the starting frequency and speed

A timeline with expected completion dates of parts of the project. (CHANGE THIS!!!!!)

