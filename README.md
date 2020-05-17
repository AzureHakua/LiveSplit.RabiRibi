# LiveSplit.RabiRibi
Rabi-Ribi Auto Splitter ASL Script for use with LiveSplit

General Notes:
===
-Only works on version 1.99t of Rabi-Ribi

-The default settings are 10TM ready for BunStrike routes (any difficulty should work).
 
-Start timing uses screen blackness while the menu music is playing to determine start time. This will trigger when starting any file, so take note of that.
 
-Reset will trigger when the title music plays. Recommended to disable this if you are running any category with ASG or playing Randomizer where you might need to reload to the title screen to load an Auto Save.
 
 
Regarding Boss Skips
===
-Performing a boss skip with their split option checked will split when the boss despawns. Basically as soon as you screen transition for the following bosses:
    -Nixie
    -Syaro
    -Aruraune
    -Kotri 3
 
-If you are performing Syaro Skip, you can use the Syaro Skip option INSTEAD of the Syaro option. The Syaro Skip option will split when you leave System Interior. If you have both options checked, you will split twice when performing Syaro Skip.
 
-The Noah Skip option will split as you transition to the room where Noah 3 is. Use this option for both Noah Skip and BunStrike Zip routes.
 
-The Computer option will split when you obtain 17,500 EN (in a single frame), which is how much money Cicini gives you for finding the Computer in Exotic Laboratory. Implementing more safety checks here in the future.
 
 
Regarding In-game Time
===
-By default RASA will output the T.Playtime, which is used for leaderboard submissions. To get the IGT to display on your splits, you need to download and install the "Alternate Timing Method" component to your LiveSplit.
 
-If you would like to display T.Runtime instead, which is the total frame count the game is running for that run (menus, cutscenes, and loads included), then open the RASA script in any text editing program and delete the "//" at the start of line 106 and move them to the start of line 107. "//" just hides the code from being read. (alternatively you can just retype the "play" part to "run". See below for what I mean:
 
//vars.igt = (int) current.truntime * 1000 / 60;

vars.igt = (int) current.tplaytime * 1000 / 60;
 
 
Future To Do
===
-Implement 100% specific options: split on CFE, split on map transitions, split on specific item percents
-Implement practice splitting controls to use to time boss fights more effectively
