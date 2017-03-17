# dotfiles (silos) :factory: 

![](https://cloud.githubusercontent.com/assets/173738/24065408/fe301ec2-0b6a-11e7-90e1-9ef41d0f0f11.png)

Every silo is make-driven stow package, contains deployable set of dotfiles per program (zsh, vim, etc.)

![](http://i.giphy.com/3o6MbhkWd6he1symgU.gif)

Don't use mine, make your own. Here's how:

## Prerequisites

 - GNU Make
 - GNU Stow
 - git
 
## Make targets (usage)

### When in doubt, use the [source](https://github.com/aerosol/dotfiles/blob/develop/Makefile).

#### fill: Pull existing sources and build a silo

```
$ make fill what=~/.config/nvim into=nvim
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
