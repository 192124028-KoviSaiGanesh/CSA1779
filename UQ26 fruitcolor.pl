% Define fruits and their colors
fruit_color(apple, red).
fruit_color(banana, yellow).
fruit_color(grape, purple).
fruit_color(orange, orange).
fruit_color(pineapple, yellow).
fruit_color(strawberry, red).
fruit_color(blueberry, blue).
fruit_color(kiwi, green).
fruit_color(pomegranate, red).

% Define a predicate to find the color of a fruit
colorof(Fruit, Color) :-
    fruit_color(Fruit, Color).
