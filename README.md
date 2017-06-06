# Administrate::Field::Carrierwave

[![Code Climate](https://codeclimate.com/github/zooppa/administrate-field-carrierwave/badges/gpa.svg)](https://codeclimate.com/github/zooppa/administrate-field-carrierwave)

A plugin to upload and preview Carrierwave attachments in [Administrate].

## Usage

Add it to your `Gemfile`:

```ruby
gem 'administrate-field-carrierwave', '~> 0.2.0'
```

Run:

```bash
$ bundle install
```

Add to your `FooDashboard`:

```ruby
ATTRIBUTE_TYPES = {
  bar: Field::Carrierwave.with_options(
    image: :standard,
    multiple: true,
    image_on_index: true
  )
}.freeze
```

To handle multiple asset uploads, the attribute must point to an empty array in a hash:

```ruby
# If multiple: true
def permitted_attributes
  super - [:bar] + [{ bar: [] }]
end
```

### Options

* `image` (default: `nil`): a [version] that will be displayed in an `<img>` element.
* `image_on_index` (default: `false`): whether or not to show the image itself on the index list view. The default behavior (when false) is to display a "View" link that opens the image in a new tab/window when clicked.
* `multiple` (default: `false`): allows uploading of multiple files. **ATTENTION 🚨**: [requires CarrierWave’s `master` branch](https://github.com/carrierwaveuploader/carrierwave#multiple-file-uploads). Uploaded files will replace the current ones – if present – and not add to them.

## About

`Administrate::Field::Carrierwave` is maintained by [z.productions].

See also the list of [contributors](https://github.com/zooppa/administrate-field-carrierwave/contributors) who participated in this project.

[Administrate]: https://github.com/thoughtbot/administrate
[version]: https://github.com/carrierwaveuploader/carrierwave#adding-versions
[z.productions]: https://www.z.productions/
