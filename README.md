# require_helpers.cr

Requiring with relative paths is brittle and often hard to read. Rather than
typing this:

    require "../../my/file"

You can do this

    require_src "my/file"

## Installation


Add this to your application's `shard.yml`:

```yaml
dependencies:
  require_helpers:
    github: paulcsmith/require_helpers.cr
```


## Usage


Add this to your project to require the helper macros.

```crystal
require "require_helpers"
```

Then you can use these macros in your project.

* `require_src` for requiring a file in your project's `src` directory.
* `require_spec` for requiring a file in your project's `src` directory.
* `require_wd` for requiring a file from your project's current working directory. `require_src` and `require_spec` use this macro under the hood.

## Contributing

1. Fork it ( https://github.com/paulcsmith/require_helpers/cr/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [paulcsmith](https://github.com/paulcsmith) Paul Smith - creator, maintainer
