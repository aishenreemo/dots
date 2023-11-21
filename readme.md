# dots
> A well-tailored working environment isn't just a luxury – it's a key ingredient for boosting productivity.

Hello! These are my dotfiles, AKA how I personalize my computer.

![](preview.png)

My Linux journey began in 2022, and as a programmer, it was a delightful experience.
Using the Linux landscape, I swiftly adopted a mindset of honing in on what truly counts. 

## software
- [Arch Linux](https://archlinux.org/): Operating System
- [X11](https://en.wikipedia.org/wiki/X_Window_System): Window System
- [i3-gaps](https://github.com/Airblader/i3): Window Manager
- [polybar](https://github.com/polybar/polybar): Status Bar
- [dunst](https://github.com/dunst-project/dunst): Notification Daemon 
- [picom](https://github.com/yshui/picom): Compositor
- [neovim](https://neovim.io/): Text Editor
- [alacritty](https://github.com/alacritty/alacritty): Terminal
- [rofi](https://github.com/davatorium/rofi): Application Launcher

## fonts
Fonts that are included in this repository. `etc/fonts`
- [Hack](https://github.com/source-foundry/Hack)
- [Material Design Icons](https://github.com/google/material-design-icons)

## icons (cursor)
Icons that are included in this repository. `etc/icons`
- [Bibata](https://github.com/ful1e5/Bibata_Cursor)

## installation

### automatic
If you want to install everything then run the script `install.sh`. Take note that it will override existing configurations and only recommend on a freshly installed OS. You still have to install required dependencies with a package manager.


### manual
1. Clone the repository using `git`.
    ```sh
    git clone https://github.com/aishenreemo/dots
    ```

2. Install dependencies.

    <details>
    <summary>Arch Linux (and other Arch-based distributions)</summary>

    - install an AUR helper `paru`. 
        ```sh
        git clone https://aur.archlinux.org/paru-bin.git
        cd paru-bin && makepkg -si && cd ..
        ```

    - install dependencies (just install what you need lol). 
        ```sh
        paru -S --needed \
            xorg-xinit xorg-server xorg-xsetroot \
            i3-gaps picom xdg-utils xorg-xrdb hsetroot \
            alacritty zsh rofi polybar xcb-util-xrm \
            dunst libnotify tesseract-data-eng gpick maim light \
            cmus peaclock cava unimatrix tmux # bin/music-player dependencies
        ```

    - install `oh-my-zsh` framework if you're using zsh. 
        ```sh
        sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
        ```
    </details>

3. Initialize directories.
    ```sh
    mkdir -p ~/.config/
    mkdir -p ~/.cache/
    mkdir -p ~/.local/bin/
    mkdir -p ~/.local/share/fonts
    mkdir -p ~/.local/share/icons
    ```

4. Copy configuration files to their respective paths.

    - Move to `dots` directory
        ```sh
        cd dots
        ```

    - Fonts
        ```sh
        cp -r ./etc/fonts/* ~/.local/share/fonts
        fc-cache -v
        ```

        <details>
        <summary>expand</summary>

        ```sh
        cp "./etc/fonts/MaterialIcons-Regular.ttf"      ~/.local/share/fonts
        cp "./etc/fonts/Iosevka Nerd Font Complete.ttf" ~/.local/share/fonts
        cp -r "./etc/fonts/Hack"                        ~/.local/share/fonts
        fc-cache -v
        ```
        </details>

    - Icons
        ```sh
        cp -r ./etc/icons/* ~/.local/share/icons
        ```

        <details>
        <summary>expand</summary>

        ```sh
        cp -r ./etc/icons/Bibata-Modern-Classic/ ~/.local/share/icons/
        ```
        </details>

    - Configuration files
        ```sh
        cp -r ./cfg/* ~/.config
        ```

        <details>
        <summary>expand</summary>

        ```sh
        cp ./cfg/picom.conf   ~/.config
        cp -r ./cfg/alacritty ~/.config
        cp -r ./cfg/dunst     ~/.config
        cp -r ./cfg/i3        ~/.config # requires xresources
        cp -r ./cfg/polybar   ~/.config # requires xresources
        cp -r ./cfg/rofi      ~/.config
        ```
        </details>


    - Binaries
        ```sh
        cp ./bin/* ~/.local/bin
        ```

        <details>
        <summary>expand</summary>

        ```sh
        cp ./bin/clrs         ~/.local/bin
        cp ./bin/colorblocks  ~/.local/bin
        cp ./bin/imgtotxt     ~/.local/bin
        cp ./bin/sus          ~/.local/bin
        cp ./bin/music-player ~/.local/bin
        ```
        </details>

    - Misc
        > yeet ur display manager if you have one :knife:

        ```sh
        cp ./etc/misc/.zshrc ~
        cp ./etc/misc/.xinitrc ~
        cp ./etc/misc/.Xresources ~
        ```

5. Reboot, login then run `startx`.

## old configurations
Here's a list of my archived old configurations.
1. [`1e732ef`](https://github.com/aishenreemo/dots/tree/1e732ef954dbd08ffe519d8f11ac1a0596d500d9) I am, We are.
2. [`ba19d3f`](https://github.com/aishenreemo/dots/tree/ba19d3fc0e2dbaa752db99e845eea98ebf14c4ad) Bocchi the Rock.
3. [`db8d830`](https://github.com/aishenreemo/dots/tree/db8d83053b5d02dc80ba933cc9417e98ed4d1054) Tuyudots v3.
4. [`aca10b8`](https://github.com/aishenreemo/dots/tree/aca10b83db5cbdf545f2f0e738a347d2a0358489) Tuyudots ft. Bus-chan .
5. [`cbe76cc`](https://github.com/aishenreemo/dots/tree/cbe76cc88a14ee0d4a1256bc95919396c5461a12) Tuyu with themes.

## acknowledgements
- [janleigh](https://github.com/janleigh) (colorscheme)
- [t_oo_r_oo](https://www.instagram.com/t_oo_r_oo/) (wallpaper)
