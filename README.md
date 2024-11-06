# kanyesay

`kanyesay` is a fun, configurable command-line program that displays Kanye West quotes in an ASCII art speech bubble with various customizations. You can fetch random Kanye quotes from an API, customize the wrap width, change the thought bubble character, select different ASCII representations of Kanye, and even install the program globally.

## Features

- Fetches random Kanye West quotes from [kanye.rest API](https://api.kanye.rest).
- Customizable speech bubble wrap width.
- Choose different ASCII art styles for Kanye.
- Persistent configurations saved in `~/.config/kanyesay/config.conf`.
- Installation option to make `kanyesay` accessible globally.

## Installation

You can install `kanyesay` globally on your system:

```bash
./kanyesay.sh --install
```

This will prompt you with three options:

1. **Continue** - Checks for dependencies, installs them if necessary, and installs `kanyesay` to `/usr/local/bin`.
2. **Cancel** - Exits without installing.
3. **Dependency Check Only** - Checks for dependencies but does not install the program globally.

## Usage

```bash
kanyesay [options] [message]
```

### Options

- `-W <width>` : Set the wrap width for the speech bubble (default: 40).
- `-t <character(s)>` : Set custom thought bubble characters (default: `(@)`).
- `-c <message>` : Display a custom message instead of a random Kanye quote.
- `-C` : Save the current settings (`-W`, `-t`) to the config file as the new defaults.
- `-s` : Kanye selection mode, which allows you to choose from three ASCII art versions of Kanye West.
- `-i` or `--install` : Install `kanyesay` globally.
- `-h` : Show help information.

### Examples

1. **Display a Kanye quote with a custom wrap width:**

   ```bash
   kanyesay -W 50
   ```

2. **Display a custom message with a unique thought bubble:**

   ```bash
   kanyesay -c "Stay humble, stay hungry." -t "(o)"
   ```

3. **Save the current settings as new defaults:**

   ```bash
   kanyesay -W 60 -t "(*)" -C
   ```

4. **Choose a Kanye ASCII art style:**

   ```bash
   kanyesay -s
   ```

   Select from three mini versions of Kanye ASCII art. Your choice will be saved in the config file.

5. **Check dependencies only (for installation):**

   ```bash
   kanyesay -i
   ```

## Configuration File

The configuration file is located at `~/.config/kanyesay/config.conf`. It stores your preferred wrap width, thought bubble characters, and selected Kanye ASCII art style.

Example config file:

```ini
wrap_width=50
thought_bubble="(@)"
selected_kanye=1
```

## Requirements

- `curl`
- `jq`

If these dependencies are not installed, `kanyesay` can install them for you during the global installation process.

