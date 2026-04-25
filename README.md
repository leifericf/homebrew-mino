# homebrew-mino

Homebrew tap for [mino](https://github.com/leifericf/mino), a tiny embeddable Lisp in pure ANSI C.

## Install

```
brew tap leifericf/mino
brew install mino
```

## How this tap is updated

Formulas in `Formula/` are kept in sync with `mino` releases by the
`promote-packages` workflow in the [`mino`](https://github.com/leifericf/mino)
repo. Each release of `mino` opens a PR here updating `Formula/mino.rb`
to point at the new release tarballs and SHA256 sums; PRs are reviewed
and merged manually.

## License

MIT
