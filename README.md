# allioli

Read the 1914 Allioli Vulgata-Translation directly in your terminal!

Code largely based off of [https://github.com/bontibon/kjv.git](https://github.com/bontibon/kjv.git). Luke Smith ([lukesmith.xyz](https://lukesmith.xyz/)) brought my attention to this software via a video of his.

## Usage

```
    usage: ./allioli [flags] [reference...]

      -l      list books
      -W      no line wrap
      -h      show help

      Reference types:
          <Book>
              Individual book
          <Book>:<Chapter>
              Individual chapter of a book
          <Book>:<Chapter>:<Verse>[,<Verse>]...
              Individual verse(s) of a specific chapter of a book
          <Book>:<Chapter>-<Chapter>
              Range of chapters in a book
          <Book>:<Chapter>:<Verse>-<Verse>
              Range of verses in a book chapter
          <Book>:<Chapter>:<Verse>-<Chapter>:<Verse>
              Range of chapters and verses in a book

          /<Search>
              All verses that match a pattern
          <Book>/<Search>
              All verses in a book that match a pattern
          <Book>:<Chapter>/<Search>
              All verses in a chapter of a book that match a pattern
```

## Install

### From Source

allioli can be built by cloning the repository and then running make:

```bash
    git clone https://github.com/AlexBocken/allioli.git
    cd allioli
    sudo make install
```

### AUR

if you're running an arch-based distro you can get bibel from the AUR.
so for example using yay, it's a simple

```bash
    yay -S allioli
```


## Similar projects

My work, as already stated, is mostly based on the source code of [Bontibon's kjv](https://github.com/bontibon/kjv).
Similar projects in different variations can be found:

- My implementation of the Catholic Einheitsübersetzung with footnotes and introductions: https://github.com/AlexBocken/bibel
- Bontibon's original kjv: https://github.com/bontibon/kjv
- Luke's fork with added Apocrypha: https://github.com/LukeSmithxyz/kjv
- Luke's latin version: https://github.com/LukeSmithxyz/vul
- Luke's old greek version: https://github.com/LukeSmithxyz/grb

## License

Public domain
