---

<p align="center"><img alt="Astro" src="https://user-images.githubusercontent.com/61242573/122398959-acfaa800-cf7a-11eb-88b8-16bb065b72a0.png"></p>

<h1 align="center">Astro tmux theme</h1>

<h4 align="center">A clean, elegant tmux theme, representing the minimalistic idea of the universe.</h4>
<h4 align="center">The theme consists of 23, carefully selected colors.</h4>

<p align="center">
<img alt="GitHub release (latest by date)" src="https://img.shields.io/github/v/tag/XXCoreRangerX/astro-tmux?color=%2328293D&logo=github&logoColor=%23ECEFF4&style=flat-square&colorA=1B1C1E">

<img alt="GitHub last commit" src="https://img.shields.io/github/last-commit/xxcorerangerx/astro-tmux?color=%2328293D&logo=github&logoColor=%23ECEFF4&style=flat-square&colorA=1B1C1E">
</p>

<p align="center"><img alt="Astro for tmux" src="https://user-images.githubusercontent.com/61242573/122642997-7dc87000-d10d-11eb-9f62-7e0e51117ada.png"></p>

---

## Installation
The easiest installation can be done using [tpm](https://github.com/tmux-plugins/tpm), however you can use any other plug manager, or install manually.

### Installing using tpm
1. Add the following to `.tmux.conf`:
```tmux
# List of plugins
set -g @plugin 'tmux-plugins/tpm'

# Package settings (optional)
# set -g @astro_tmux_no_patched_font "1"

# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
run '~/.tmux/plugins/tpm/tpm'
```

2. Next, press `prefix` + <kbd>I</kbd> to fetch and install the plugin.

### Installing using Git
1. Clone the repository to any location, e.g. `~/.tmux/themes/`:
```console
git clone https://github.com/XXCoreRangerX/astro-tmux
```
2. Add the following line to the bottom of `.tmux.conf`:
```tmux
run-shell "~/.tmux/themes/astro-tmux/astro.tmux"
```
3. Reload tmux configuration
```console
tmux source-file ~/.tmux.conf
```

### Installing without using Git
1. [Download](https://github.com/xxcorerangerx/astro-tmux/archive/master.zip) the repository zip file and extract it to any location, e.g. `~/.tmux/themes/`:
2. Add the following line to the bottom of `.tmux.conf`:
```tmux
run-shell "~/.tmux/themes/astro-tmux/astro.tmux"
```
3. Reload tmux configuration
```console
tmux source-file ~/.tmux.conf
```

<br>


## Configuration
Optionally, you can type `set -g @astro_tmux_no_patched_font "1"` in `.tmux.conf` to toggle no patched font statusbar in astro-tmux.

<p align="center"><img alt="Astro for tmux" src="https://user-images.githubusercontent.com/61242573/122643725-bec28380-d111-11eb-8feb-f2c8f43ca589.png"></p>
<p align="center"><i>astro-tmux default statusbar</i></p>

<br>

<p align="center"><img alt="Astro for tmux" src="https://user-images.githubusercontent.com/61242573/122643732-cbdf7280-d111-11eb-8d11-83e9abfc9b97.png"></p>
<p align="center"><i>astro-tmux no patched font statusbar</i></p>

---

## About
Created by [XXCoreRangerX](https://github.com/XXCoreRangerX) (mail@xxcore.pl)

## License
This project is licensed under the [MIT license](https://github.com/xxcorerangerx/astro-tmux/blob/master/LICENSE).
