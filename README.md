This is based off [The Primeagen's video 0 to LSP](https://www.youtube.com/watch?v=w7i4amO_zaE).
I've added a bit more stuff to it as well but thats the bulk of it.

# Reinstalling

If I've accidentally fucked up and need to redo everything, instructions:

- Install git

- Install homebrew (read the message carefully as will need to do some other
stuff for it)

- Brew install neovim (to get latest version)

- Install packer

- Run the command:

`Sudo apt-get install build-essential`

- Create / go to ~/.config and run:

`git clone https://github.com/LiamHughDevine/Neovim.git`

- Rename this to nvim

- Go into lua/LHD/packer.lua and run:

`:so`

`:PackerSync`

(You may need to run PackerSync twice).

- Install a nerdfont for lualine (Currently using DroidSans)

- May even need to download Node JS to get Pyright working

## Raspberry Pi

For my raspberry pi, homebrew did not work so instead, what works is:

`sudo apt install snapd`

`sudo snap install --classic nvim`

Not sure if this is necessary but if you cannot get neovim working after
restarting terminal, the download location is a bit weird so you will need to go
into .bashrc and add:

`export PATH="$PATH:/snap/bin"`
