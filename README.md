# Administrate::Field::Carrierwave

[![Code Climate](https://codeclimate.com/github/z-productions/administrate-field-carrierwave/badges/gpa.svg)](https://codeclimate.com/github/z-productions/administrate-field-carrierwave)

A plugin to upload and preview Carrierwave attachments in [Administrate].

## Usage

Add it to your `Gemfile`:

```ruby
gem 'administrate-field-carrierwave', '~> 0.0.3'
```

Run:

```bash
$ bundle install
```

Add to your `FooDashboard`:

```ruby
ATTRIBUTE_TYPES = {
  bar: Field::Carrierwave.with_options(image: :standard)
}.freeze
```
### Options

* `image` (default: `nil`): a [version] that will be displayed in an `<img>` element.

## About

`Administrate::Field::Carrierwave` is maintained by [z.productions].

[Administrate]: https://github.com/thoughtbot/administrate
[version]: https://github.com/carrierwaveuploader/carrierwave#adding-versions
[z.productions]: https://www.z.productions/
