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
