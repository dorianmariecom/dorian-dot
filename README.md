# `dorian-dot`

Symlink tracked dotfiles into your home directory.

## Install

```bash
gem install dorian-dot
```

Also included in the aggregate gem:

```bash
gem install dorian
```

## Usage

```bash
dot [dotfiles-repo]
```

Run `dot -h` for generated option details and `dot -v` for the installed version.

## Notes

- Defaults to the current directory. Reads `.dotignore` patterns from the dotfiles repo when present.
- Existing home files or symlinks at target paths are deleted before new symlinks are created.

## Examples

### Link a dotfiles repo

```bash
dot ~/src/dotfiles
```
