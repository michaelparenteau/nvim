# My Neovim config

I am adding this up here so I don't have to start over again.
I mean.. if I start over again it will be becaus I want to.

If you are into hacking around with code editors, and wanna
check out what my [Neovim](https://neovim.io/) config looks
like, then here you go. 

---

Starter page when runing basic `nvim` command in shell:

<img width="1292" alt="image" src="https://github.com/michaelparenteau/nvim/assets/146460/21ec84ef-1311-45f9-9279-35a0e64f98cf">

I have `m` aliased in my `.zshrc` -- `alias m="nvim -c ':Telescope find_files'"`
-- so when I open a directory from your shell via `m .`, it launches Neovim in
with [Telescope](https://github.com/folke/telescope.nvim) ready to find a file
in the project. This is some leftover muscle memory from my Textmate days.
The editor has changed over teh years, but my three key alias has not :)

Here is what it looks like to open a project:

<img width="1292" alt="image" src="https://github.com/michaelparenteau/nvim/assets/146460/6797a63e-fefc-45f8-9189-15581134455f">

Some notable plugins:

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

Remember - "One man gathers what another man spills."

You must leave now, take what you need, you think will last. But
whatever you wish to keep, you better grab it fast. 

Have fun. Be kind. 
