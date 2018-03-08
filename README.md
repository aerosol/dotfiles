# dotfiles (silos) :factory: 

![](https://user-images.githubusercontent.com/173738/33239280-9555ef52-d29e-11e7-9892-f16c353f9cc1.png)

Every silo is make-driven stow package, contains deployable set of dotfiles per program (zsh, vim, etc.)

## Prerequisites

 - GNU Make
 - GNU Stow
 - git
 
## Make targets (usage)

### When in doubt, use the [source](https://github.com/aerosol/dotfiles/blob/develop/Makefile).

#### fill: Pull existing sources and build a silo

```
$ make fill what=~/.config/nvim into=nvim/.config
```

#### save: Commit changes after hacking on a silo

```
$ make save silo=nvim
```

#### unload: Deploy existing silo to a clean $HOME

```
$ make unload silo=nvim
```

#### withdraw: Retract a silo, get clean $HOME again

```
$ make withdraw silo=nvim
```

![](http://i.giphy.com/3o6MbhkWd6he1symgU.gif)
