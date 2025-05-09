## My personal collection of dotfiles

The longer I work as a software engineer, the more I realize the benefit of having a special setup for different tools we use throughout the day ready at your fingertips. Especially when switching between devices often
(e.g. work laptop, private laptop, different Raspberry Pis, etc.) the continuous work to re-setup everything becomes really tedious.... So this is my start to collecting these configuration files!

Obviously, this is merely a starting point and will hopefully grow soonish into a more advanced and seasoned selection of my personal configurations ;)
Since I just got started with using *vim*, the contained `.vimrc` is also more of a playground currently than a stable config. Let's see how this evolves!

## Content

- `.vimrc`: Configuration for *vim*; currently without plugins or updated key bindings
- `.vim/`: Directory containing plugins, custom additions to the spell check dictionary, etc.
  - the `indentline` plugin located in `/pack/` was originally obtained from
    [GitHub](https://github.com/Yggdroot/indentLine)
  - since it is no longer maintained (archived in 2023), all git-related content was removed
- `.printPath`: prints the `$PATH` variable one entry per line
- `.print_format`: minimal example for a function that prints text in a predefined colour; can be sourced in bash scripts
- `keyboards/`: Directory containing everything related to my mechanical keyboards (notes, information, VIA configurations, etc.)
- `windowsterminal/settings.json`: Configuration for the Windows Terminal app from the Microsoft store

## Installation and Usage

After checking out the project, Vim plugins need to be installed by opening Vim and running
`:PlugInstall` once to download the plugins. They should be available after restart.

