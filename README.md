# Github action: Box install

This GitHub Action runs a `box install` command to install dependencies for a `box.json` file.

## Usage in Github actions workflow

Insert the action as a step in your workflow:

```yml
# .github/workflows/package.yml
# you may wish to trigger this for other specifics, this is an example
steps:
  - name: Install box dependencies
    uses: pixl8/github-action-box-install@v2
    with:
      boxjson_dir: /subdir
      production: true
      verbose: true
      force: true
```

## Inputs

### `boxjson_dir`

The subdirectory in your project where your `box.json` file lives. The default is to use the root folder.

### `production`

Whether or not to set the `production` flag when installing. Default is `false`.

### `verbose`

Whether or not to set the `verbose` flag when installing. Default is `false`.

### `force`

Whether or not to set the `force` flag when installing. Default is `false`.

## License

This project is licensed under the GPLv2 License - see the [LICENSE.txt](https://github.com/pixl8/github-action-box-install/blob/stable/LICENSE.txt) file for details.

## Authors

The project is maintained by [The Pixl8 Group](https://www.pixl8.co.uk). The lead developer is [Dominic Watson](https://github.com/DominicWatson).

## Code of conduct

We are a small, friendly and professional community. For the eradication of doubt, we publish a simple
 [code of conduct](https://github.com/pixl8/github-action-box-install/blob/stable/CODE_OF_CONDUCT.md) and expect all contributors, users and passers-by to observe it.
