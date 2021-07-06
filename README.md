# Remermaid

Simple shellscript to hotreload mermaid files in your image viewer of choice.

# How to use

```sh
$ remermaid foo.mmd
```

- 1st parameter: file to watch
- 2nd parameter(optional, default eog): image viewer

# Dependencies

- [inotify-tools](https://archlinux.org/packages/community/x86_64/inotify-tools/)
- [mermaid-cli](https://github.com/mermaid-js/mermaid-cli)
