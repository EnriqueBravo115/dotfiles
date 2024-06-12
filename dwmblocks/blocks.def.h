//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
    {"📦  ", "/home/nullboy/Applications/dwmblocks/scripts/pacupdate",  360,		          9},
    {"🔊  ", "/home/nullboy/Applications/dwmblocks/scripts/volume",     30,		              0},
    //{"💾  ", "free -h | awk '/^Mem/ { print $3\"/\"$2 }' | sed s/i//g",	15,		0},
    {"🗓️  ", "/home/nullboy/Applications/dwmblocks/scripts/calendar",	     500,	              0},
    {"🕑  ", "/home/nullboy/Applications/dwmblocks/scripts/clock",	     60,	              0},
};

//sets delimiter between status commands. NULL character ('\0') means no delimiter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
