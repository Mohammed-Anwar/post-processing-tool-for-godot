
## the tool is in development and hasn't been released yet

## post processing tool for Godot

a tool for adding post-processing effects
in your Godot project

### how to use

 1. after you clone the project
copy the "Post Processing tool" folder 
and add it to your Godot project folder
 2. open your Godot project and you will see a new folder called "Post Processing tool"  in the file system ,
inside it, you will find the "PostProcessing_tool.tscn" scene
add that file to your scene 
and that is  all you need  to run the tool
 3. you will  find the effects in the inspector of the tool
enable it to show the desired  effect, then play with the properties


### calling a property 
if you want to call any proparty use

    get_node("path_to_PostProcessing_tool").EffectName_proparty

example:

    get_node("player/PostProcessing_tool").vignette_scale


