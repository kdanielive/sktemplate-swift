## sktemplate-swift

This is a template project you can use as an alternative to the Xcode SpriteKit template for Swift.

### Update
09/22/2016: Updated for Xcode 8.0 and Swift 3.0

### sktemplate-swift Features
* ObjectAL. Includes [OALSimpleAudio](http://kstenerud.github.io/ObjectAL-for-iPhone/) for *really* easy audio play back in your games.
* Bitmap Font Support. Includes the required libraries to use Bitmap Fonts created with [bmglyph](http://www.bmglyph.com). 
* Animated Character. Example animated character that flies to the location tapped on screen.
* Handy Functions. My most used super handy functions are included in Math.swift and Colors.swift. 

### Renaming your project
1 - Clone the project some place temporary, like your Downloads folder.
```bash
cd ~/Downloads && git clone https://github.com/spritekitbook/sktemplate-swift.git
```

2 - Make the rename script executable.
```bash
chmod +x sktemplate-swift/renameProject.sh
```

3 - Rename the project
```bash
sktemplate-swift/renameProject.sh sktemplate-swift MyCoolGame
```

### Keeping the project up to date
1 - Change directory into where you have the source downloaded.
```bash
git fetch origin
git reset —-hard origin/master
```


### Screenshot
<p align="center">
  <img src="https://github.com/spritekitbook/spritekitbook.github.io/blob/master/images/sktemplate-swift.png" width="40%">
</p>
