# dotfiles (silos) :factory: 

## More or less up to date snapshots:

### laptop

![](https://user-images.githubusercontent.com/173738/231552755-e9e5b3af-e60d-49df-bb8d-014cf1421b7b.png)

### desktop

![](https://user-images.githubusercontent.com/173738/231703710-41a33dbb-ed36-413b-bdd0-70ea639f8340.png)

## Synopsis

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
