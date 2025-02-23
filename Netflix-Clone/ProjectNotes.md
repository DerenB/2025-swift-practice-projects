# Netflix Clone Project Notes

- [Netflix Clone Project Notes](#netflix-clone-project-notes)
- [Project Creation](#project-creation)
    - [Remove Base Settings](#remove-base-settings)
- [Configure SceneDelegate](#configure-scenedelegate)

# Project Creation

- Create App
- Set to Storyboard and Swift

### Remove Base Settings

- Delete `Main.storyboard`
- Remove Storyboard Reference
  - `Info.plist` file
  - Found in Tree:
    - Information Property List
    - Application Scene Manifest
    - Scene Configuration
    - Window Application Session Role
    - Item 0 (Default Configuration)
    - Storyboard Name (delete this)
- Remove Main Storyboard reference
  - Project > Target > Netflix-Clone
  - Info Tab:
    - Custom iOS Target Properties
    - Main Storyboard File base name

# Configure SceneDelegate

- `SceneDelegate.swift`
- Setting up the scene delegate file to be able to work without storyboards
- Assigns the ViewController to be the root ViewController of the application window
```
window = UIWindow(frame: windowScene.coordinateSpace.bounds)
window?.windowScene = windowScene
window?.rootViewController = ViewController()
window?.makeKeyAndVisible()
```





























