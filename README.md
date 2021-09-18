## post-processing-tool for Godot engine

a tool for adding post-processing effects
in your Godot project and only for godot projects
![](https://media.discordapp.net/attachments/888846681712525332/888855039785967636/unknown.png?width=960&height=559)
![](https://media.discordapp.net/attachments/888846681712525332/888855205628743710/unknown.png?width=960&height=557)
![](https://media.discordapp.net/attachments/888846681712525332/888855708404187186/unknown.png?width=960&height=562)
![](https://media.discordapp.net/attachments/888846681712525332/888857997533655080/unknown.png?width=960&height=561)

### how to install it in your project
 1. clone(download) the project
 2. copy the "Post Processing tool" folder that is inside the clone(download)
 3. paste the copied folder in your Godot project folder
 4. open your project using Godot and you will be fined "Post Processing tool" folder in the file system
 5. open that folder and you will be fined scene with the name "PostProcessing_tool.tscn" add it to your scene that you want to run the post-processing into
 6. you will find a new node in the scene that have all the effects in its inspector

### gif

![](https://cdn.discordapp.com/attachments/888846681712525332/888885555012730890/demo3.gif)
## how to use 
### use an effect
in the inspector of the PostProcessing_tool node, you will find all the effects in groups 
in any group effect, you will be fined the show button that shows the effect
and the properties of that effect
you can play in that properties to get some awesome results

![](https://media.discordapp.net/attachments/888846681712525332/888846789334159470/unknown.png)

### calling property using script
you can call a property using gdscrript using the normal method
 ```get_node("path/to/PostProcessing_tool/node").EfectName_PropertyName ```
 example of setting scale property of vignette to new value
 ```get_node("PostProcessing_tool").vignette_scale = vector2(1.5, 1.5)```
 
### make an object doesn't affect by any effect
 the tool is like any control node
 so you can place the node in the scene tree in order
 so all the nodes above it should be effected
 and all the nodes under it will not be affected
 
### follow player, effect in the whole level/scene
to make the tool effected in whole the scene or level
you can change its rect_size property so it gets whole the map
or you can just make it follow the player 
and that by adding CanvasLayer node to the scene
and put the post-processing tool as a child to that CanvasLayer
like that it will be always effecting whole the viewport
and if the player has a camera that follows him
the canvas layer will do the same and follow him
![](https://media.discordapp.net/attachments/888846681712525332/888847177101758514/unknown.png)

## some alerts
### it is a control node so use it as a control node
that's mean you have to put it under a 2D node to get the Layout button in the top
![](https://media.discordapp.net/attachments/888846681712525332/888846701236994058/unknown.png)
### don't change in the original scene/code
if you change anything in the original scene of the tool
that's will change all the instances to the default
so be careful about that
no one wants to reset all the everything level

### bloom has some problems
for some reason, I can't make a good bloom effect ner find it
so the effect is not good for now and you have to make the Threshold property around 0.2 value to see the changes
## Q/A

### Q/ how many effects are in the tool right now?
9 and they are
- Adjustments
- Bloom
- Chromatic Aberration
- Color Splash
- Fog Overlay
- Glitch
- Noise
- Vignette
- White Balance

### Q/ why this is better than the WorldEnvironment node?
the world environment node is not easy to use 
and at the same time it takes so much time to set up one effect those in it
also there is some effect that you can't even set up in the world environment like "vignette" or "fog overly"

### Q/ Would it also work in 3D?
yes
you can use it like any control node 
and any control node will work in 3D

### Q/ Is it all one shader or there is a stack of nodes with their own shaders?
it's a stack of nodes with their own shaders
like that you can delete whatever the shader you don't want it
also I can handle everything alone and add more effects easily

### Q/ can I use it with animation player or tween node?
of course, you can :)

### Q/ is it laggy?
I use it in core 2 due, 3g ram, nvidia quadro nvs 290 gpu
and it's only got laggy when I use bloom
