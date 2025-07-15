# 2D Platformer Game

## Description
This is a 2D platformer game developed using the Godot Engine (version 4.3 or compatible). Players control a character who can run, jump, and collect coins and keys while avoiding hazards. The game features animated sprites, tile-based levels, and interactive elements such as gates that open when keys are collected. This project was created by Dea Afrizal.

## Features
- Smooth player movement with running and jumping mechanics.
- Collectible coins and keys scattered throughout the levels.
- Interactive gates that unlock when keys are collected.
- Hazardous zones that reset player progress upon contact.
- User interface displaying collected coins and keys.
- Tile-based level design with animated sprites.
- Modular scene and script structure for easy expansion.

## Getting Started

### Prerequisites
- Godot Engine 4.3 or a compatible version installed on your system.
- Basic familiarity with Godot Engine interface and workflow.

### Installation and Setup
1. Clone or download this repository to your local machine.
2. Open Godot Engine and select "Import" to open the project folder.
3. Ensure all assets and scripts are properly loaded.
4. The main playable scene is located at `scene/run.tscn`.
5. Use the Godot editor's play button to run the game or export it to your desired platform.

## How to Play
- Use the arrow keys or gamepad to move the player character left and right.
- Press the jump button (Spacebar or gamepad accept button) to jump.
- Collect coins and keys scattered throughout the levels.
- Use keys to unlock gates and progress through the game.
- Avoid hazards such as kill zones that reset your progress.
- The UI displays the number of coins and keys collected.

## Gameplay Mechanics
- **Player Movement:** The player can run and jump with smooth animations.
- **Collectibles:** Coins increase score; keys are required to unlock gates.
- **Gates:** Gates block progress until the player collects the corresponding key.
- **Hazards:** Kill zones reset the player to the last checkpoint or start.
- **UI Elements:** Real-time display of collected items to keep track of progress.

## Project Structure

### Assets
- `assets/character/player/`: Contains player sprite animations for idle, run, and jump states.
- `assets/collection/`: Contains collectible item sprites such as coins and keys.
- `assets/tileset/`: Contains tileset images used for level design.

### Scenes
- `scene/`: Contains Godot scene files (.tscn) for levels, UI, and game objects.
  - `run.tscn`: Main gameplay scene.
  - `coin_ui.tscn`, `key_ui.tscn`: UI elements for collectibles.
  - `gate.tscn`, `key.tscn`, `coin.tscn`: Interactive game objects.

### Scripts
- `script/`: Contains GDScript files implementing game logic.
  - `player.gd`: Controls player movement and interactions.
  - `coin.gd`, `key.gd`: Logic for collectibles.
  - `gate_tile_map.gd`, `tile_map_layer.gd`: Level and tile map management.
  - `controller.gd`: Main game controller logic.
  - `kill_zone.gd`: Hazard behavior.

### Configuration
- `project.godot`: Godot project configuration file.
- `.gitignore`: Git ignore rules.

## Development Notes
- The project uses Godot's scene system for modularity and ease of expansion.
- Animations are handled via sprite sheets and animated sprites.
- Scripts are organized by functionality to maintain clean code structure.
- Future improvements could include additional levels, enemies, and power-ups.

## Troubleshooting
- Ensure you are using Godot Engine version 4.3 or compatible.
- If assets do not load correctly, verify the project folder structure is intact.
- For any script errors, check the Godot output console for detailed messages.

## Contributing
Contributions are welcome! Please fork the repository and submit pull requests. When contributing:
- Follow the existing code style and conventions.
- Document new features or changes clearly.
- Test your changes thoroughly before submitting.

## Author
Dea Afrizal

## License
This project is open source and free to use.