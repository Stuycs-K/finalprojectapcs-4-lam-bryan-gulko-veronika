# Dev Log:

This document must be updated daily every time you finish a work session.

## Bryan Lam

### 2025-05-25 - Brief description
I wrote the Fruit Class. I created the fields from the UML and added more in order to keep track of the state and position of the fruit. The constructor initializes the arrays, makes the fruit uncut, and randomly picks a fruit by using Math.random on the arrays indexes. The gravity method right now simply adds the speed to the y-coordinate of the fruit, the points method, which will be called in mouseclicked checks if it touches the image, and visualizer displays it. Took about 1.5 hours to complete.

### 2024-05-26 - Brief description
I moved the initialization of the array fields in Fruit to outside of the constructor, so that they will only be made once as all regular fruits will have the same fruits to choose from. I also created the Trash class, by simply adding new arrays for the trash image and index, and calling super before changing which array the uimages come from. The points method was overrided by simply always adding 0 to the points, as trash doesn't give points and for the lives method, I subtracted 1 from lives when a trash image is clicked on. It took about 40 minutes to complete.

### 2025-05-27 - Brief description
I changed the int arrays in the fruit and trash class to string arrays, which contained the names of the types of fruit and trash. I created the bomb class by having two string fields for the before and after explosion images, and two int fields for the bomb's position. The gravity and visualizer methods were written very similarily to the fruit class, as they would be dropped like a fruit. However, the new destruct method would display the string Get Over! if the bomb was pressed and that would signal to end the game. It took about 1 hour to complete, mostly during classwork.
