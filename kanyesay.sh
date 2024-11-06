#!/bin/bash

# Default values
default_wrap_width=40
default_thought_bubble="(@)"
config_file="$HOME/.config/kanyesay/config.conf"
message=""
use_config_save=false
default_kanye="1"  # Default Kanye ASCII art choice

# Define Kanye ASCII arts
kanye_art_1="
      ..  ...  .. .@@@@@@@@@@@@...  ...  ..  ..  ..   
    ..  ...  ..@@@@@@@@@@@@@@@@@@%@@# ...  ..  ..  ...
      ..  ..@@@@@@@@@%@@@@@%@@@%@@%@@%@@...  ..  ..   
    ......@@@@@@@@@%@@#%%%@%%%%%#%#%%%%%@@=...........
    ..  -@@%@%@@%@%@%#%%#%%%%####+##***%@@%@.  ..  ...
      .@@@@%@@@%%%%##**###*+*+*++*******##@@@..  ..   
    ..@@@@%%%%%##****++++++++++=+++*+**+**#%%@ ..  ...
     %@%%##*********++++++++++=++++++*+**+###@%  ..   
    .@%%##******++*+++++=+=====:==+++++++++###@@.  ...
    @@%#####*****++++++==++==+=+===+++*++++*##%%%..   
    @%%%%#*#*****++++++++++========++++++++++*#%%..   
    @%#%%##*****+++++===++=+=++====+=+++**%@@@@@@@ ...
    @%%%%%#*#****++++++++++=+==-=:-+@%@%@@@@%@@@@%.   
    @@%%%%#******+++++=+++==-=-%*@%@%@%*===@#++#%% ...
    %@%%%%#******++++==--:==@@@#*.=+#%%%*#%%@+**%@*+= 
    .@%%%%#%%#%%%###++*#%@@@@@@@@%@%%%@@@%#%@++*#-==*.
     @@%%@@@@@@@@#=-%@@@@@@@@@@@@@@@@%@@@%%%@+++==.-==
     @@@@@@@@@@@@@%@@@@@@+#@@@@@@@@@@@@@@%%%@+++*+::--
    .@@@@@@@@@@@@@@@@@@@@*=-@@@@@@@@@@@@@@%@#=+++++=-:
     -@@@@@@@@@@@@@@@@@@@*+===@@@@@@@@@@@%%-==+++*-=-+
    .. @@@@@@@@@@@@@@@@@%#+====+%@@@#@%=-==-==+++**+-.
      ..@@@@@@@@@@@@@@@@#+=======**=+==---::-==+++*=  
    ..  %@%@@@@@@@@@@@@%#*++====+=====++==---==+++++..
    .....%@@@@@@@@@#+#%****+=::-=:====++=+==+=+++++*..
      .. %%%#+*++==*###*+*#++==+==+===+++===+++++++*  
    ..  .:%%#**++==##%%%#@%#*=+#+*#%##*###+=+=+++++*..
      ..  %%##**+++***#%%%%%%##==:=++++++=%+===++++*  
    ..  ..@%%%##**#**#%@%*#***++=+==:-.:*=*+-++++++...
      ..  .%%%%###%**@%%%##***+-.:   ..+=-+==+++++*   
    ..  ...@%%%##%%*+#%*==:... .. .-==+---===++*** ...
    ..  ... %%%%*#**+=**=*=##++=-=+=====--==+****  ...
      ..  ...%%%%##*#++*#*#*++=-::--------+**+** ..   
    ..  ...  .@%%%%##*+**####***++-*+=--=*=+*+*..  ...
      ..  ...  .@%%%###**##*#####%#=-=-=-++**=.  ..   
    ..  ...  ..  .#@%###******+****+=-=*=*%#=  ..  ...
      ..  ...  ..  ..@@%###*#**+++*-==-=**#* ..  ..   
    ..  ...  ..  ..  ..@@@%###%+*+=#**+#*# ..  ..  ...
    ..  ...  ..  ..  ..  @@%%%#%**#*####.  ..  ..  ...
      ..  ...  ..  ..  ... @@%@%%%@-...  ..  ..  ..   
"


kanye_art_2="
    -----------:::-=+%@@%@%@@@@%%%@@%%-:--------------
    -------::::::#@@%@%%@@%@%%%%@@@%%%@@+:::::--------
    --::-::::::-%%%%@@%@%%%%%%%%@@@@@@@@@@=:::::::----
    ::::::::::#%@%%%%%#%%%%%#%%%%@@%@@@@@@@%:::::::--:
    :::::::::%@@#***==-------==-====++*##%@@@:::::::::
    :::::::::%%###==+=----:-=------==+*###%@@%::::::::
    ::::::::%%%**++===-------------==**##*#%%@%:::::::
    :::::::*@%**#*==+=------=------==++**###@@@-::::::
    ::.:...%@%*##*++=-----=====-=---=+++*#*#%@@#::::::
    .......%%%##*+==----::--------::-==+*###%@@%.....:
    .......%@%#%#%%##**+--:::::----+-++=#*###@@%......
    .......-@##@##***##%#+---=-=+#%#%%%%%%###@@+......
    ........@##+=+-#++#+*#*+--++**++=--=++###@@-......
    ........%#***#%*:%=##=+=::++=+%%@:+%#*+##@%.......
    .......:##*++*+:--+*+++-::-=*+#=-=+*#+++#%##......
    ........##+=---::---+==-::-=++=---====++###%......
    ........*#+=-:::::--++==-===++--:-:::--+####......
    ........*#+=-:::----+++-:::=++---:::-==+*#*-......
    ........*#*++-=:-:=+-:==---+==+=+-==-++**##.......
    ........*#*=+=---=--**#=+==***-=--==+++*##........
    ........##*++=-=++++*#%*%*%@=++=====+***##........
    ........:###+++++*+#+==+--*==%%*-+*++***#:........
    .........##**+++=%=-***#++#**=+=*=*****##.........
    ..........#***+++++#*=+::-++###*#+****##:.........
    ...........***++*==++*::-:::#*+=+***#*#-..........
    ............***+#++=++=%%##=+++=***###=...........
    ...........:#***#%***+****++##*#%#*##%#:..........
    .........:.+##***%*#+*=-+=*=+*#%#####%%-::........
    ..........:%#****%@%%####%##%%%%*####%%::::.......
    ..........:%#*****%%%%%%%%%%%%%#***##%%-..::......
    ..........:%#**+++**#%%%%%%%##******#%%::..::::...
    ...........#%**++++*****+*****+++***#%#-...:::::::
    ...........:%#*+++++*+********+****##%+-....::.::.
    ............%%**++++++++*+++++++****%#+......:::::
"

kanye_art_3="
..................................................
.......................-***+......................
..................:######*****#...................
................+####***++=++**##.................
...............+#####*****+++****+................
...............#%######***+++*****................
...............%%%#####**+++++++**+...............
...............%%%%######**##***%%%...............
...............#+%%*#***######=+#=%...............
...............##%%###*+=+*+*+=+**+...............
...............#*######*++*#*++++**...............
................=*######**++%##%***...............
..................######***#=:=#***...............
...................%%%%##*#**++***................
.....................#%%%#%#*#*#%:................
........................@%%%##%%-.................
...........................=@@*...................
..................................................

"

# Function to display help
show_help() {
    echo "Usage: kanyesay [options] [message]"
    echo "Options:"
    echo "  -W  Set wrap width (default from config or 40)"
    echo "  -t  Set thought bubble character(s) (default from config or '(@)')"
    echo "  -c  Custom message to display instead of a random quote"
    echo "  -C  Save current settings (-W, -t) to config file"
    echo "  -s  Start Kanye selection mode (TUI-style interface)"
    echo "  -i, --install  Install kanyesay globally with dependencies check"
    echo "  -h  Show this help message"
}

# Initialize config file with default values if it doesn't exist
initialize_config() {
    mkdir -p "$(dirname "$config_file")"
    if [ ! -f "$config_file" ]; then
        echo "wrap_width=$default_wrap_width" > "$config_file"
        echo "thought_bubble=$default_thought_bubble" >> "$config_file"
        echo "selected_kanye=$default_kanye" >> "$config_file"
    fi
}

# Load configuration from the config file
load_config() {
    source "$config_file"
    wrap_width=${wrap_width:-$default_wrap_width}
    thought_bubble=${thought_bubble:-$default_thought_bubble}
    selected_kanye=${selected_kanye:-$default_kanye}

    # Assign the selected Kanye art
    case "$selected_kanye" in
        1) kanye_art="$kanye_art_1" ;;
        2) kanye_art="$kanye_art_2" ;;
        3) kanye_art="$kanye_art_3" ;;
        *) kanye_art="$kanye_art_1" ;;  # Fallback to default
    esac
}

# Save current settings to config file
save_config() {
    echo "wrap_width=$wrap_width" > "$config_file"
    echo "thought_bubble=$thought_bubble" >> "$config_file"
    echo "selected_kanye=$selected_kanye" >> "$config_file"
    echo "Configuration saved to $config_file."
}

# Save the selected Kanye art to config
save_kanye_art() {
    selected_kanye=$1
    save_config
}

# Function for Kanye ASCII art selection mode
kanye_selection_mode() {
    echo "Choose your Kanye:"
    echo "1) $kanye_art_1   2) $kanye_art_2   3) $kanye_art_3"
    echo -n "Enter 1, 2, or 3 to select: "
    read -r choice

    if [[ "$choice" =~ ^[1-3]$ ]]; then
        save_kanye_art "$choice"
        echo "Kanye choice $choice saved."
    else
        echo "Invalid choice. Keeping the previous selection."
    fi

    exit 0
}

# Function to check dependencies
check_dependencies() {
    dependencies=("curl" "jq")
    missing_dependencies=()

    for dep in "${dependencies[@]}"; do
        if ! command -v "$dep" &> /dev/null; then
            missing_dependencies+=("$dep")
        fi
    done

    if [ ${#missing_dependencies[@]} -gt 0 ]; then
        echo "Missing dependencies: ${missing_dependencies[*]}"
        return 1
    else
        echo "All dependencies are satisfied."
        return 0
    fi
}

# Install dependencies based on package manager
install_dependencies() {
    if check_dependencies; then
        echo "No installation required. All dependencies are already installed."
        return
    fi

    if [ -f /etc/debian_version ]; then
        package_manager="apt"
    elif [ -f /etc/redhat-release ]; then
        package_manager="yum"
    elif command -v pacman &> /dev/null; then
        package_manager="pacman"
    else
        echo "Unsupported OS. Please install dependencies manually."
        exit 1
    fi

    echo "Using $package_manager to install dependencies. This may require sudo."
    for dep in "${missing_dependencies[@]}"; do
        case $package_manager in
            apt) sudo apt update && sudo apt install -y "$dep" ;;
            yum) sudo yum install -y "$dep" ;;
            pacman) sudo pacman -Sy --noconfirm "$dep" ;;
        esac
    done
}

# Install function
install_kanyesay() {
    echo "You are installing kanyesay globally. Continue?"
    echo "1) Continue"
    echo "2) Cancel"
    echo "3) Dependency check only"
    read -r choice

    case $choice in
        1)
            check_dependencies || install_dependencies
            echo "Installing kanyesay to /usr/local/bin..."
            sudo cp "$0" /usr/local/bin/kanyesay
            sudo chmod +x /usr/local/bin/kanyesay
            echo "kanyesay installed successfully!"
            ;;
        2)
            echo "Installation cancelled."
            exit 0
            ;;
        3)
            check_dependencies
            exit 0
            ;;
        *)
            echo "Invalid option. Exiting."
            exit 1
            ;;
    esac
}

# Parse options
initialize_config
load_config
while getopts "W:t:c:Chsi" opt; do
    case ${opt} in
        W ) wrap_width="$OPTARG" ;;
        t ) thought_bubble="$OPTARG" ;;
        c ) message="$OPTARG" ;;
        C ) use_config_save=true ;;  # Set flag to save config
        s ) kanye_selection_mode ;;  # Enter selection mode
        i ) install_kanyesay ;;  # Run install mode
        h ) show_help; exit 0 ;;
        \? ) show_help; exit 1 ;;
    esac
done

# Save to config if -C was used
if [ "$use_config_save" = true ]; then
    save_config
fi

# Fetch a random Kanye quote if no custom message
if [ -z "$message" ]; then
    if ! command -v curl &> /dev/null || ! command -v jq &> /dev/null; then
        echo "Error: curl and jq are required for fetching quotes."
        exit 1
    fi
    message=$(curl -s https://api.kanye.rest/ | jq -r '.quote')
fi

# Function to wrap text and calculate the longest line
wrap_text() {
    echo "$1" | fold -s -w "$wrap_width"
}

# Generate the speech bubble with dynamic width
bubble_content=$(wrap_text "$message")

# Find the maximum line length to adjust the top and bottom borders
max_length=$(echo "$bubble_content" | awk '{ print length }' | sort -nr | head -n 1)
bubble_top=$(printf "_%.0s" $(seq 1 $((max_length + 2))))
bubble_bottom=$(printf "‾%.0s" $(seq 1 $((max_length + 2))))

# Print the "kanyesay" output with dynamic borders and properly aligned sides
echo " $bubble_top"
echo "$bubble_content" | while read -r line; do
    printf "| %-*s |\n" "$max_length" "$line"
done
echo " $bubble_bottom"
echo "               $thought_bubble"
echo "                $thought_bubble"
echo "                 $thought_bubble"
echo "$kanye_art"
