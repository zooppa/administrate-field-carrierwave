# Administrate::Field::Carrierwave

[![Build status](https://github.com/zooppa/administrate-field-carrierwave/actions/workflows/build.yml/badge.svg)](https://github.com/zooppa/administrate-field-carrierwave/actions/workflows/build.yml) [![Code Climate](https://codeclimate.com/github/zooppa/administrate-field-carrierwave/badges/gpa.svg)](https://codeclimate.com/github/zooppa/administrate-field-carrierwave)

A plugin to upload and preview Carrierwave attachments in [Administrate].

---

### IMPORTANT NOTICE

**This gem is not actively maintained anymore**.

If you’re interested in taking over and steward the project moving forward, please get in touch.

---

## Usage

Add it to your `Gemfile`:

```ruby
gem 'administrate-field-carrierwave', '~> 0.6.0'
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
    remove: false,
    remote_url: false
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

- `image` (default: `nil`): a [version] that will be displayed in an `<img>` element.
- `multiple` (default: `false`): allows uploading of multiple files. **ATTENTION 🚨**: [requires CarrierWave’s `master` branch](https://github.com/carrierwaveuploader/carrierwave#multiple-file-uploads). Uploaded files will replace the current ones – if present – and not add to them.
- `remove` (default: `false`): allow to remove previously uploaded files. **ATTENTION 🚨** extend [`permitted_attributes`](https://github.com/thoughtbot/administrate/issues/990#issuecomment-339066788) by `remove_FIELD`
- `remote_url` (default: `false`): allow uploading files from a remote location. **ATTENTION 🚨** extend [`permitted_attributes`](https://github.com/thoughtbot/administrate/issues/990#issuecomment-339066788) by `remote_FIELD_url`

## About

`Administrate::Field::Carrierwave` is maintained by [Zooppa].

See also the list of [contributors](https://github.com/zooppa/administrate-field-carrierwave/contributors) who participated in this project.

[administrate]: https://github.com/thoughtbot/administrate
[version]: https://github.com/carrierwaveuploader/carrierwave#adding-versions
[zooppa]: https://www.zooppa.com/
