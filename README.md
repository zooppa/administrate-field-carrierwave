# Administrate::Field::Carrierwave

[![Code Climate](https://codeclimate.com/github/z-productions/administrate-field-carrierwave/badges/gpa.svg)](https://codeclimate.com/github/z-productions/administrate-field-carrierwave)

A plugin to upload and preview Carrierwave attachments in [Administrate].

## Usage

Add it to your `Gemfile`:

```ruby
gem 'administrate-field-carrierwave', '~> 0.1.0'
```

Run:

```bash
$ bundle install
```

Add to your `FooDashboard`:

```ruby
ATTRIBUTE_TYPES = {
  bar: Field::Carrierwave.with_options(image: :standard, multiple: true)
}.freeze
```
### Options

* `image` (default: `nil`): a [version] that will be displayed in an `<img>` element.
* `multiple` (default: `false`): allows uploading of multiple files. **ATTENTION 🚨**: [requires CarrierWave’s `master` branch](https://github.com/carrierwaveuploader/carrierwave#multiple-file-uploads). Uploaded files will replace the current ones – if present – and not add to them.

## About

`Administrate::Field::Carrierwave` is maintained by [z.productions].

[Administrate]: https://github.com/thoughtbot/administrate
[version]: https://github.com/carrierwaveuploader/carrierwave#adding-versions
[z.productions]: https://www.z.productions/
