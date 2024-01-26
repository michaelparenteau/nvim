# My Neovim config

I am adding this up here so I don't have to start over again.
I mean.. if I start over again it should be because I want to.

If you're into hacking around on code editors, and wanna check
out what my [Neovim](https://neovim.io/) config looks like,
then here you go.

---

Starter page when runing basic `nvim` command with no arguments in a shell:

<img width="1355" alt="image" src="https://github.com/michaelparenteau/nvim/assets/146460/b77299ad-2fb7-4514-bbaa-80e36e02ce56">

> The bus came by and I got on. That's when it all began. - [⚡️💀🌹](https://www.youtube.com/watch?v=ALNh0Hk09l4)

I have `m` aliased in my `.zshrc` to `alias m="nvim -c ':Telescope find_files'"`
-- so when I open a directory from your shell via `m .`, it launches Neovim
with [Telescope](https://github.com/folke/telescope.nvim) in focus, ready to
find a file in the project. I wanted to leverage some long-standing muscle memory
from my Textmate days. My code editor has changed over teh years, but my three key
alias has not :)

Here is what it looks like to open a project:

<img width="1355" alt="image" src="https://github.com/michaelparenteau/nvim/assets/146460/cd13ec73-9369-4f28-9f02-6030817300cd">

Some notable plugins in this config:

* [Whichkey](https://github.com/liuchengxu/vim-which-key) - interactive
  legend for command keybindings.
* [Hop](https://github.com/phaazon/hop.nvim) - maybe the greatest jump
  to visible text postion experience ever.
* [Telescope](https://github.com/folke/telescope.nvim) - fuzzyfinder
  with file preview.. not just file names.. works with `grep` and it
  is super fast.
* [Neogit](https://github.com/TimUntersberger/neogit) - Git interface.
  If you are familiar with Emacs [Magit](https://magit.vc/), then you
  will dig this.

There are other creature comforts baked in. Just look in the [pluginfile.lua](/lua/pluginfile.lua)
to see what is all in there. Honorable mentons are the
[Tokyonight](https://github.com/folke/tokyonight.nvim) colorscheme and
[zen-mode](https://github.com/folke/zen-mode.nvim) plugin. Plenty of
other stuff -- load it up and give it a whirl.

"One man gathers what another man spills." - [⚡️💀🌹](https://www.youtube.com/watch?v=z5b_awjAn7s)

You must leave now, take what you need, you think will last. But whatever you wish to keep,
you better grab it fast. - [Van covers Dylan](https://www.youtube.com/watch?v=jdb_3H-28dE) 

Have fun. Be kind.

---

## New to Neovim? Get started with this config.

If you are new to Neovim, I suggest that you go the [Neovim](https://neovim.io)
website and learn more there. I would also suggest looking at this collection of
[awesome-neovim](https://github.com/rockerBOO/awesome-neovim) plugins to explore
hacking on your own config, which is a great way to learn.

If you just want to play with this, here are a couple things to get started.

```
brew install neovim
```

This will install Neovim and give you the `nvim` command to launch the editor
in your shell. If you do this right after brew without setting up a config, it will
be a plain setup and there is much to be left desired from here, especially if you are
used to a more configured IDE. So let's make a config.

You can go out and find all sorts of already configured Neovim setups out there like
[Lazyvim](https://www.lazyvim.org/), [AstroNvim](https://astronvim.com/),
[LunarVim](https://www.lunarvim.org/), and some others... but that is not the purpose of
this repo. I wanted to make my own and learn. If you want to do the same then you should
know what's going on here.

When you run `nvim`, it will look for a `.config/nvim` directory in your home path with
an `init.lua` file. There are also setups for using vimscript and other ways... but I stuck
with lua.

You can create all of the above from scratch, but let's clone this repo.

If you have no `~/.config/` directory:

```
cd ~ 
mkdir .config
cd .config
git clone git@github.com:michaelparenteau/nvim.git
```

else:

```
cd ~/.config 
git clone git@github.com:michaelparenteau/nvim.git
```

Once this is all setup, you can run `nvim` in your shell and it should recognize this config.

To make it your own...

```
cd ~/.config/nvim
nvim .
```

And start hacking.

### Info about this config

#### nvim/init.lua

Neovim recognizes the `nvim` directory in its runtime PATH. So, the `/lua` folder inside 
it is where modules are placed. You can notice some stuff in the beginning of the file 
which are all setup and defaults for the editor. Lines 39 & 40 in `init.lua` require two
files:

* lazy-config.lua
* pluginfile.lua

Notice that the `lua/` path is ommitted. When you require modules, you can reference lua
files as modules without the root of the repo or the `lua` directory.

These two files are setup for plugin management.

#### lua/lazy-config.lua

This is a configuration file for [Lazy](https://github.com/folke/lazy.nvim) - a Neovim plugin
manager. There are other plugin managers you can look into, but I chose this for the user
interface.

Note: when you add a plugin, and its required setup.. you need to close the editor and restart
Neovim and Lazy will download/install the plugin. I have not configured auto sourcing, etc. yet.
I will though, because it is annoying when spending a bunch of time hacking on this in one
session.

#### lua/pluginfile.lua

This file is a plugin manifest, similar to how one might manage a package.json file or Gemfile.
Other than the `init.lua` file, this is where I spent a lot of time gardening, experimenting,
etc. All the plugins listed in the to of this file have been individually added. They all need
a `.setup()` call to run. When there is more than a single line `require('<plugin-name>').setup()` call,
I have created modules inside the `/lua/plugins/` folder and followed a `<plugin-name>-config.lua` naming
convention. Each plugin has some configuration that you can change, to however you like in these files.

After this setup, there are some single line default setups for some plugins and I might also,
when exploring a new plugin, do a larger configuration inline on the bottom of this file until 
I am convinced I want to keep it for a while and then will move it to a module in the `/plugins/` 
folder and require it above.

This is not *the* way.. just what I did to try and keep things tidy.

Note: all the plugins listed in the file are named as `<github-username/repo-name>`. This makes research /
finding docs super convenient. Someone shoudl write a plugin to command-click these because you can copy
all the strings and paste after github.com/ to find their READMEs.

### Suggestion for a beginner's journey starting with this config.

I would follow the above setup and then go and comment out all of the plugins in `pluginfile` 
and their related requres/setup calls.. don'f forget the call to the colorscheme in `init.lua`
on line 54... you might keep that there and the other colorschemes in the manifest and notice
the commented out colorschemes in there. You can start by investigating them and playing
around with their configs.

Then I would uncomment out plugins one-by-one and explore each of their functionality to see
how they work, if you like them, search out comparisons and figure out what you dig for your
own config. This is my favorite part about all this. You can make the editor however you like.

Hope you find this fun. [🕺](https://youtu.be/8lCMUkqpI7o)
