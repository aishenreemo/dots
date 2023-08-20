<div align="center">
    <h1><i><samp>dots</samp></i></h1>
</div>

![](preview.png)

## <samp>installation</samp>
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

## <samp>installing my old configuration</samp>
> Just perform a `git checkout <COMMIT_HASH>` then follow the instructions on `readme` after cloning the repository.

Here's a list of my archived old configurations.
1. I am, We are. [1e732ef](https://github.com/aishenreemo/dots/tree/1e732ef954dbd08ffe519d8f11ac1a0596d500d9).
2. Bocchi the Rock [ba19d3f](https://github.com/aishenreemo/dots/tree/ba19d3fc0e2dbaa752db99e845eea98ebf14c4ad).
3. Tuyudots v3 [db8d830](https://github.com/aishenreemo/dots/tree/db8d83053b5d02dc80ba933cc9417e98ed4d1054).
4. Tuyudots ft. Bus-chan [aca10b8](https://github.com/aishenreemo/dots/tree/aca10b83db5cbdf545f2f0e738a347d2a0358489).
5. Tuyu with themes [cbe76cc](https://github.com/aishenreemo/dots/tree/cbe76cc88a14ee0d4a1256bc95919396c5461a12).

## <samp>acknowledgements</samp>

- [janleigh](https://github.com/janleigh) (colorscheme)
- [t_oo_r_oo](https://www.instagram.com/t_oo_r_oo/) (wallpaper)
