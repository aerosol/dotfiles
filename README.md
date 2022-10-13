# dotfiles (silos) :factory: 

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

#### slurp: Pull existing sources, build a silo, unload it and save

```
$ make slurp what=~/.config/nvim into=nvim/.config silo=nvim
```


![](http://i.giphy.com/3o6MbhkWd6he1symgU.gif)
