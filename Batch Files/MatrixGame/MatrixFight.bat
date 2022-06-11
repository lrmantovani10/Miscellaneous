:FIGHT
@echo off
color a
mode 1000
set ryui=10
echo (Neo) Neo here. I will be comunicating you during your fight simulation.
TIMEOUT 1
echo An agent is punching you!
start <PATH TO PUNCH IMAGE IN YOUR COMPUTER>
set /p cm=Command:
echo Punch!
if %cm%==defend set /p k=Command:
echo Upper attack!
start <PATH TO ANOTHER PUNCH IMAGE IN YOUR COMPUTER>
if %k%==punch set /p ghj=Command:

echo The agents are on the defence ! Attack! Watch out for your head!
if %ghj%==punch set /p jhk=Command:
start <PATH TO AIR KICK IMAGE IN YOUR COMPUTER>
echo Punch!
if %ghj% neq punch set ryui=7
if %jhk%==kick set /p nmk=Command:
start <PATH TO PUNCH IMAGE IN YOUR COMPUTER>

echo Jump!
if %jhk% neq kick set ryui=6
if %nmk% neq punch set ryui=5
if %nmk%==punch set /p ntk=Command:
start <PATH TO JUMP KICK IMAGE IN YOUR COMPUTER>

echo You were hit! We can still win this!
echo lower attack!
if %ntk% neq jump set ryui=4
if %ntk%==jump set /p nmo=Command:

echo My connection to you is being hacked by the agents. I am tracing the hack... It's from the agents trying to dominate Zion. I am failing to send you images of your fight..
echo Defend!

if %nmo%==kick set /p nyk=Command:
if %nmo% neq kick set ryui=3
echo Watch out! The agents are going to attack you! Perform a lower attack!

if %nyk%==defend set /p nmv=Command:
if %nyk% neq defend set ryui=2
echo Now! Kick!
if %nmv%==kick set /p nmk=Command:
if %nmv% neq kick set ryui=1
echo The agents are everywhere! Jump!
if %nmk%==kick set /p nek=Command:
if %nmk% neq kick set ryui=0
echo 	Defend!
if %nek%==jump set /p nqk=Command:
start <PATH TO IMAGE IN YOUR COMPUTER OF NEO BEING HIT>
if %nek% neq jump set ryui=5
echo Watch out! The agents are coming again... They are going to attack... Punch!!
if %nqk%==defend set /p nxk=Command:
echo Connection re-established. I am in full control of your simulation.
if %nqk% neq defend set ryui=6
echo Kick!
if %nxk%==punch set /p emk=Command:
<PATH TO PUNCH IMAGE>
if %nxk% neq punch set ryui=3
echo The agents are attacking again...Defend.
if %emk%==kick set /p nmr=Command:
if %emk% neq kick set ryui=2
echo Jump
if %nmr%==defend set /p nwdk=Command:
if %nmr% neq defend set ryui=1
echo kick
if %nwdk%==jump set /p nask=Command:
start <PATH TO HUMP KICK IMAGE>
echo Upper attack! Now we got the agents!
echo Punch
if %nask%==kick set /p iumk=Command:
if %nwdk% neq jump set ryui=0
if %ryui%==0 exit
echo jump
if %iumk%==punch set /p hjklo=Command:


echo Nice job. You can jump now to exit the Matrix.

if %hjklo%==jump echo (Neo) Hi, %n%. You did a nice job back there.
start <PATH TO JUMP IMAGE>
Pause
Goto FIGHT
