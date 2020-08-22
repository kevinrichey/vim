
I've been using Vim as my personal code and note taking editor for about 15 years or so.  I lost count.  I remember a coworker friend at SunGard Financial Services (two jobs ago) recommending GVim for [Windows]. GVim is a nice introduction to using Vim because many of the most common commands are accesible through a GUI menu. As I gradually learned to use the Vim command and input modes, I stopped using the menus. 

After all that time, I am still far from an expert Vim user, and I'm constantly learning more. Vim has a very steep learning curve, and it's so huge that I'll never know everything about it. 

This project is my Vim configuration for C programming and personal wiki. I have the project cloned directly into my .vim/ folder, so I I just commit and push my changes to keep them in sync on GitHub. 

# General Setup

I prefer to stick with a plain and delicious vanilla Vim setup. Which means I don't use very many ~~mods~~ plugins. There are a couple reasons for this: when it comes to coding for fun, I'm a DIY-er because I enjoy it. Actually, that might be the only reason. Good e'nuf fer me!

## vimrc

Let's take a peek in my [vimrc](.https://github.com/kevinrichey/vim/blob/master/vimrc). 

Tabs
: The One True Correct and Only Indentation Method. If you use spaces, good for you! Consider tabs, though. I used spaces for a long time, until I got sick of them. I indent with four columns per level and use spaces for alignment. 

Status Line
: I customized my status line to like like this:
: `buff# filename [+] [RO][Preview][file-type][Quickfix]     [char hex] @offset (col,line) #lines`

Line Numbering
: I started using relative line numbering recently. This makes navigation MUCH easier. Vim displays line numbers relative to your current position up and down. When I want to go up to the line "Let's take a peek in my vimrc", I just type 10k, and POOF! I'm there. I know it's 10 lines up because the relative line numbers tell me so.

Searching
: I turned off case-sensitive search because I'm lazy.

File Browsing
: One of the few plugins I use is Netrw because it's already included with Vim. I set it up to vertical split on the left, remove the annying banner, and expand sub-folders interactively. Elsewhere, I also setup my *leader*f combo to quickly open the file browser.

Font
: Inconsolata is an excellent open-source alternative to Microsoft's Consolas font. I set font size to 16 cause my eyes are not as good as they used to be. Be nice to your eyes. 

Hot Keys
: Space is my leader. It's right there under my thumb all the time. I setup Windows-style cut/copy/paste keys because old happits just won't go away. Leader-t opens the terminal in a new window, leader-f opens the file browser, leader-PgUp/PgDn/Del flips through the buffers, leader + and - resizes my window.

.vimlocal
: Finally, I load a .vimlocal file from the current directory. .vimlocal is a nifty way to put project-specific settings in a local directory. 

## Colors

There are lots of fancy colorschemes out there. As a vanilla DIY'er, and because I prefer simpler color schemes, I rolled my own in colors/kevin.vim. I stay close to black background and white text, with a few colors to improve readability. C types and control flow keywords get highlighted to make code structure clear. Comments are subdued. Literals stand out loud because you should use static constants instead. Parenthesis matching is turned on to easily catch mis-matched delimeters. 

# Footnotes

## Windows
Yeah, I know. My professional career has been entirely on Windows. It's not that bad. That's why I prefer Linux development in my free time.

