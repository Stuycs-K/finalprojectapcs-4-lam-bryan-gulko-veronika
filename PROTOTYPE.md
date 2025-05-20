
# Technical Details:

Period: 4

Group Members: Veronika Gulko and Bryan Lam

Group Name: 

A description of your technical design. This should include: 
   
How you will be using the topics covered in class in the project.

Brief Description: Our project will be similar to fruit ninja. Different images of fruit will fall from the top of the screen towards the bottom and will continue to fall off screen, similar to Earth Mode from OrbGravity but the fruit will only bounce from the left and right sides of the screen. The player will have to click the fruit, which will replace the fruit image with a sliced version. For each fruit cut, points will be added to a point counter displayed near the top of the screen. If the player has enough points, they can advance to harder levels which will apply acceleration to the fruits, increase the frequency of fruit falling, and start having 'hard fruits' which will require double clicking in order to cut.
     
# Project Design

UML Diagrams and descriptions of key algorithms, classes, and how things fit together.


    
# Intended pacing:

How you are breaking down the project and who is responsible for which parts.

- [ ] Create Fruit class
   - [ ] Create Gravity pulling down fruits (Bryan)
   - [ ] Make a slice feature (Veronika)
   - [ ] Points feature to add points for each fruit cut and lead to progression (Bryan)


- [ ] Create Fruit Subclasses
    - [ ] Banana (Veronika)
    - [ ] Kiwi  (Bryan)
    - [ ] Apple (Veronika)
    - [ ] Pineapple (Bryan)
    - [ ] Orange (Veronika)
    
   
    - [ ] Create double tap fruit classes
        - [ ] Coconut (Bryan)
        - [ ] Watermelon (Veronika)
        - [ ] Dragon Fruit (Bryan)


- [ ] Devop lives system
    - [ ] Create trash pieces (fruits that kill if sliced) (Veronika)
    - [ ] Take a life for each fruit that hits the ground without being sliced (Bryan)
    - [ ] Create bombs that annihilate everything (Veronika)


- [ ] Progression of Game
    - [ ] Speed up (fruits accelerate) (Bryan)
    - [ ] Increase Frequency of fruits falling (Veronika)


- [ ] Loading Screen
    - [ ] Start Button (Bryan)
    - [ ] Description of fruits/lives/points (Veronika)
    - [ ] Options for easy, medium, and hard, which affects the starting frequency and speed (Bryan)


