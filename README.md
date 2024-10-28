# LOVE2D Pong Game

A simple Pong-style game built using the [LOVE2D](https://love2d.org/) framework, featuring custom paddles, a moving ball, and score tracking. The game includes wall collisions, player-controlled paddles, and a simple scoring system. 

## Features
- **Player paddles:** Each player can control a paddle to hit the ball and score.
- **Ball with random impulse:** The ball is initialized with a linear impulse to create movement.
- **Collision physics:** Paddle, wall, and ball collisions are handled using [Windfield](https://github.com/adnzzzzZ/windfield).
- **Score tracking:** Each paddle keeps score, and the game resets the ball position upon scoring.
- **Game over condition:** The game quits when a player reaches a score of 3.

## Dependencies
This project uses several libraries:
- **[LOVE2D](https://love2d.org/):** Game framework.
- **[Windfield](https://github.com/adnzzzzZ/windfield):** Library for 2D physics.
- **[anim8](https://github.com/kikito/anim8):** Animation library for sprites.
- **[STI](https://github.com/karai17/Simple-Tiled-Implementation):** Simple Tiled map loader.

These dependencies should be placed in a `libraries` folder in the root directory.

## Game Controls
- **Player 1 (left paddle):**
  - `W` key: Move up
  - `S` key: Move down
- **Player 2 (right paddle):**
  - `Up` arrow: Move up
  - `Down` arrow: Move down
- **`R` key:** Reset ball position and impulse.

## Setup and Installation

1. **Install LOVE2D:** Follow the instructions on [the LOVE2D website](https://love2d.org/) to install the framework.
2. **Clone or Download this Repository.**
3. **Add Dependencies:** Ensure that the required libraries (`anim8`, `STI`, and `Windfield`) are placed in a `libraries` directory within the project.
4. **Run the Game:**
   - Open a terminal and navigate to the project directory.
   - Run the game with LOVE2D:
     ```bash
     love .
     ```

## Code Overview

- **`love.load`:** Initializes game objects, including paddles, ball, and map, and sets up physics properties and sprites.
- **`love.update`:** Manages paddle movement, ball resetting, collision detection, and scoring. Contains the game logic, such as win conditions.
- **`love.draw`:** Renders the game map, paddles, ball, and player scores on the screen.

## How to Play

The objective of this game is to score by bouncing the ball past the opponent's paddle. The game will reset each time a player scores, and the first to reach a score of 3 wins the game, ending it automatically.

Enjoy playing and experimenting with the code!
