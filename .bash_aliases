# Programs
alias neovim="~/appimages/nvim.appimage"
alias nvim="neovim"
alias vim="neovim"
alias neomatt="bash ~/neomatt/neomatt.bash"
alias midi_hk="/home/tomazella/midi-hotkey/target/release/midi_hk"

# Edits
alias editbashrc="vim ~/.bashrc"
# alias editalacritty="vim ~/.config/alacritty/alacritty.yml"
alias editkitty="vim ~/.config/kitty/kitty.conf"
alias editneofetch="vim ~/.config/neofetch/config.conf"
alias editaliases="vim ~/.bash_aliases"
alias editvim="vim ~/.config/nvim/lua/tomazella/remap.lua"
alias edittmux="vim ~/.tmux.conf"
alias editdotfiles="vim ~/dotenv/setup-symlinks.bash"

# Easy runs
alias drumsnow="ttymidi -s /dev/ttyUSB0 -b 115200 -v"
alias reloadterminal="source ~/.bashrc"
alias reloadvim="source ~/.config/nvim/init.vim"
alias syncdotfiles="~/dotenvs/setup-dotfiles.bash"
alias playrpg="nvim ~/rpg"
alias dndbook="open ~/rpg/dnd/players-handbook.pdf"
alias ordembook="open ~/rpg/ordem/livro.pdf"
alias playdnd="dndbook; playrpg"
alias playordem="ordembook; playrpg"
alias playlucio="ordembook; open ~/rpg/casos-perdidos/lucio/ficha.pdf; ~/rpg/casos-perdidos/lucio"
alias veadotube="sudo ~/veadotube/veadotube\ mini.x86_64"
alias playdrums="ttymidi -v -b 115200 --name DRUMS -s /dev/ttyUSB0"
alias playdrums1="ttymidi -v -b 115200 --name DRUMS -s /dev/ttyUSB1"
alias keybordhck="xmodmap -e \"keycode 66 = a\""
alias runmidiconvert="midi_hk --config ~/.midi_hk/config.json"
alias playfarmer="cd /home/tomazella/.steam/debian-installation/steamapps/compatdata/2060160/pfx/drive_c/users/steamuser/AppData/LocalLow/TheFarmerWasReplaced/TheFarmerWasReplaced/Saves/main"

# Convenience
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias b="cd ../"
alias bb="cd ../../"
alias bbb="cd ../../../"
alias bbbb="cd ../../../../"
alias he="cd ~"

# Programs
function godot() {
    (nohup ~/godot/Godot $1) &
}
alias clonehero="(nohup ~/Games/clone-hero/clonehero) &"

alias tomcatStart="sudo systemctl start tomcat"
alias tomcatStatus="sudo systemctl status tomcat"
alias mysqlStart="sudo systemctl start mysql.service"
alias mysqlStatus="sudo systemctl status mysql.service"
alias postgreStart="sudo systemctl start postgresql.service"
alias postgreStatus="sudo systemctl status postgresql.service"
alias postgres="sudo -u postgres psql"

alias pentaho="sudo /opt/pentaho/client-tools/data-integration/spoon.sh"
