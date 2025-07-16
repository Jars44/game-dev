# 2D Platformer Game

[![Godot Engine](https://img.shields.io/badge/Godot-4.3-blue.svg)](https://godotengine.org/)

This is a 2D platformer game developed using the Godot Engine (version 4.3 or compatible). Players control a character who can run, jump, and collect coins and keys while avoiding hazards. The game features animated sprites, tile-based levels, and interactive elements such as gates that open when keys are collected. This project is created by Dea Afrizal.

## Features
- Smooth and responsive player movement with running and jumping mechanics.
- Collectible coins and keys distributed throughout the levels.
- Interactive gates that unlock upon collecting the corresponding keys.
- Hazardous zones that reset player progress upon contact.
- User interface displaying real-time counts of collected coins and keys.
- Tile-based level design enhanced with animated sprites.
- Modular scene and script structure facilitating easy expansion and maintenance.

## Architecture and Design
- Utilizes Godot's scene system for modular and reusable components.
- Player character controlled via `player.gd` script implementing physics-based movement.
- Collectibles managed by `coin.gd` and `key.gd` scripts using signal-based interactions.
- Gates and hazards implemented as separate scenes with dedicated scripts for encapsulated behavior.
- UI elements dynamically update based on game state using `coin_ui.gd` and `key_ui.gd`.
- Level design leverages tile maps with animated tiles for visual effects.
- Game controller script (`controller.gd`) orchestrates overall game logic and state transitions.

## Getting Started

### Prerequisites
- Godot Engine 4.3 or a compatible version installed on your system.
- Basic familiarity with Godot Engine interface and workflow.

### Installation and Setup
1. Clone or download this repository to your local machine.
2. Open Godot Engine and select "Import" to open the project folder.
3. Verify that all assets and scripts are properly loaded.
4. The main playable scene is located at `scene/run.tscn`.
5. Use the Godot editor's play button to run the game or export it to your desired platform.

### Exporting the Game
- Use Godot's export feature to build the game for your target platform.
- Configure export templates and settings as needed in the Godot editor.
- Refer to the [Godot Export Documentation](https://docs.godotengine.org/en/stable/tutorials/export/index.html) for detailed instructions.

## How to Play
- Use the arrow keys or gamepad to move the player character left and right.
- Press the jump button (Spacebar or gamepad accept button) to jump.
- Collect coins and keys scattered throughout the levels.
- Use keys to unlock gates and progress through the game.
- Avoid hazards such as kill zones that reset your progress.
- The UI displays the number of coins and keys collected.

## Gameplay Mechanics
- **Player Movement:** Smooth running and jumping animations with responsive controls.
- **Collectibles:** Coins increase score; keys are required to unlock gates.
- **Gates:** Block progress until the player collects the corresponding key.
- **Hazards:** Kill zones reset the player to the last checkpoint or start.
- **UI Elements:** Real-time display of collected items to keep track of progress.

## Development Workflow
- Scripts are organized by functionality and follow Godot's best practices.
- Use the Godot editor's built-in debugger and output console for troubleshooting.
- Regularly test gameplay mechanics by running the main scene (`run.tscn`).
- Use version control (Git) to manage changes and collaborate effectively.
- Follow consistent code style and document new features clearly.

## Testing
- Perform manual testing by playing through levels and verifying game mechanics.
- Check edge cases such as collecting multiple keys or interacting with hazards.
- Verify UI updates correctly reflect game state changes.
- Utilize Godot's remote debugging tools for in-depth analysis.

## Troubleshooting
- Ensure you are using Godot Engine version 4.3 or compatible.
- Verify the project folder structure is intact if assets fail to load.
- Check the Godot output console for detailed script error messages.
- Common issues include missing assets, script errors, or incorrect scene setup.

## FAQ / Known Issues
- **Q:** Can I add new levels?
  - **A:** Yes, create new scenes and integrate them into the game controller logic.
- **Q:** How do I add new collectibles?
  - **A:** Duplicate existing collectible scenes and update scripts as needed.
- **Q:** Are there any performance considerations?
  - **A:** Optimize sprite sizes and limit active objects for better performance.

## Contributing
Contributions are welcome! Please fork the repository and submit pull requests. When contributing:
- Follow the existing code style and conventions.
- Document new features or changes clearly.
- Test your changes thoroughly before submitting.
- Use descriptive commit messages and reference issues when applicable.

## Author
[Dea Afrizal](https://github.com/deaafrizal)

## License
This project is open source and free to use.
