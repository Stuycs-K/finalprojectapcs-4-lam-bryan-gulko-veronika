# Dev Log:

This document must be updated daily every time you finish a work session.

## Bryan Lam

### 2025-05-25 - Brief description
I wrote the Fruit Class. I created the fields from the UML and added more in order to keep track of the state and position of the fruit. The constructor initializes the arrays, makes the fruit uncut, and randomly picks a fruit by using Math.random on the arrays indexes. The gravity method right now simply adds the speed to the y-coordinate of the fruit, the points method, which will be called in mouseclicked checks if it touches the image, and visualizer displays it. Took about 1.5 hours to complete.

### 2024-05-26 - Brief description
I moved the initialization of the array fields in Fruit to outside of the constructor, so that they will only be made once as all regular fruits will have the same fruits to choose from. I also created the Trash class, by simply adding new arrays for the trash image and index, and calling super before changing which array the uimages come from. The points method was overrided by simply always adding 0 to the points, as trash doesn't give points and for the lives method, I subtracted 1 from lives when a trash image is clicked on. It took about 40 minutes to complete.

### 2025-05-27 - Brief description
I changed the int arrays in the fruit and trash class to string arrays, which contained the names of the types of fruit and trash. I created the bomb class by having two string fields for the before and after explosion images, and two int fields for the bomb's position. The gravity and visualizer methods were written very similarily to the fruit class, as they would be dropped like a fruit. However, the new destruct method would display the string Get Over! if the bomb was pressed and that would signal to end the game. It took about 1 hour to complete, mostly during classwork.

### 2025-05-28 - Brief Description
I fixed some of the errors on the Fruit class by removing an unnecessary declaration and calling gravity after displaying image. I then focused on the HardFruit class, which is mostly similar to the parent class. However, I added Veronika's suggestion of using a life system, where the fruit starts with 2 lives and mousePressed removes 1. Only when the lives are 0, is the fruit cut, forcing the player to tap twice. It took about 40 minutes.

### 2025-05-29 - Brief Description
I added some names of the images to the image arrays for some of the subclasses. I also wrote a prototype Fruit_Ninja by using a boolean to keep adding fruit and a mousePressed method to call points. We eventually decided to use Veronika's version later on because of the loading screen. It took about 30 minutes.

### 2025-05-30 - Brief Description
Since we needed the Fruit classes to access the global non-constant fields in Fruit_Ninja, we made the Fruit constructor have a double parameter and have the Fruit class it's own speed field. This way when adding a new fruit, we use the speed on the main gameplay for the fruit, so the speed can change. The points method was changed to checkSliced and using Veronika's advice, I used h and w for the image's dimensions, added mousePressed to if statements, and remove the line adding points so the draw method checks the boolean instead. Bomb was also changed to FruitBomb to extend Fruit Class, eliminating the need for it's gravity and visualizer. This was applied to all subclasses. It took about a little over an hour and 20 minutes.

### 2025-05-31 - Brief Description
I fixed a couple of errors and added more images to the arrays in the Fruit classes. I mostly focused on the lives method in trash, since it can no longer access Fruit_Ninja's lives. I created the boolean fatal, so that when the player presses trash, it makes the boolean fatal true which can be checked in draw to subtract a life. Took about 30 minutes.

### 2025-06-01 - Brief Description
First, I fixed the type casting on nameIndex, so it doesn't always return 0. Then, I merged my branch with main to access Veronika's code, as she was adding the actual fruit images onto the repository and completing the draw method for running the game. I changed the frequency to an int, so that the method can keep adding fruit and have the game continue past the initial setup. I also tried to fix some issues with lagging and fruit going off screen by changing the x in fruit class to try to be more in the center and putting the loop creating the fruit before checking if it's cut. I also moved all of the code checking and displaying the fruit within the correct else if statement. It took about 2 hours in total.

### 2025-06-02 - Brief Description
I fixed the Trash class by changing the lives method to trySlice in order to override the Fruit's trySlice. This includes using mx and my, the new values for h and w, and adding the boolean fatal. This boolean was added to all Fruit classes so it takes lives when the actual fruits are not cut and when the trash is cut. This helped to solve the problem of adding points for the correct state of each item. After making sure the Trash class fits with the rest of the Fruit, I added an if statement in Fruit_Ninja to add trash and used fatal when checking to take a life or add points. It took about 1 hour in total.

### 2025-06-03 - Brief Description
I mainly focused on testing the game after Veronika added the additional features, like the hearts for lives, game over, and the new image sizes, after waiting for her to merge. I fixed the HardFruit class by initializing and changing currentImage, to make sure the correct images were being used. I then visualized the cutting motion by drawing a line from (mouseX, mouseY) to (pmouseX, pmouseY) after each call for trySlice so it tracks the recent location of the mouse to better show the players' movement. The actual coding took about 40 minutes with writing and testing.

### 2025-06-04 - Brief Description
I fixed some smaller parts of the draw function. First, I made the line drawn by the mouse white, so it sticks out against the background without looking weird. I then added the else if statement after trySlice, so the game only awards points for the actual fruit and not for not hitting bombs or trash, so the player doesn't earn too many points. It took about 20 minutes to finish.

### 2025-06-05 - Brief Description
In the draw method, I had the hearts for lives, the points, speed, and frequency added to the top of the game screen on a horizontal line, so that the player can easily see it while playing. I also wrote the keyPressed method to stand in for the slider. Before the game starts, players can press keys to change the speed and frequency. Lowercase letters are for speed and uppercase letters are frequency; for both, 'a' to 'm' inreases and 'n' to 'z' decreases. This all took about 45 minutes, including testing the increments used and location where the stats are displayed.

### 2025-06-06 - Brief Description
Most of the class time was spent looking at and testing Veronika's code for gravity, as she tried to apply the OrbPhysics orbit mode so that the fruits moved like the actual game. I provided a few suggestions for her, but kept my branch in the original form so that we had a functional game. I added the speed and frequency to the start screen on top of the respective sliders, so the player was able to see the stats they were choosing. I also fixed some miscellaneous errors, such as changing checking the location of the mouse relative to the fruit by adding halfH to y instead of halfW. It took about 30 minutes including with the pair programming with Veronika.

### 2025-06-08 - Brief Description
I merged with Veronika's work who changed the move function to use Earth mode physics instead of Orbit mode in order for the fruit to move properly. I also fixed trySlice in the Trash class, so that it used position.x and position.y and 50 for halfW and halfH, so that mouseClicked worked for it. I also changed Veronika's position and velocity vectors, so that they moved a little slower for the player to be able to hit the fruit and have the fruit spawn higher, so that player has a chance at hitting the fruit, as it takes a life or even game over if the fruit is below the display screen when uncut. I also fixed adding points and taking lives, since the original code doesn't work on Earth mode. Instead of checking the fruit when it falls in draw, I had it be done within the Fruit classes, as the fields are not private. This also helps give points instantly for cut fruit and takes a life for cutting trash, as it doesn't wait for it to fall to the ground first, while for uncut fruit there is another if statement to check if the fruit is below the screen. This took about an hour and 30 minutes.