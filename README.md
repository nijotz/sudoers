# Sudoers Cookbook

The default `/etc/sudoers` file created on installation of the package includes
the directive:

    #includedir /etc/sudoers.d

This will cause sudo to read and parse any files in the `/etc/sudoers.d` directory
that do not end in '~' or contain a '.' character.

Note that all files in this directory should be mode 0440.

## Attributes
* `node['sudoers_d']` = array of files to create inside `/etc/sudoers.d/`.

## Usage
Here's an example of adding a NOPASSWD to an admin group named `adm`. It will
create a file called `/etc/sudoers.d/admins`.

```ruby
name 'example'
description ''

override_attributes(
    ...,
    'sudo' => {
        'sudoers_d' => {
            'admins' => {
                '%adm ALL=(ALL) NOPASSWD:ALL'
            }
        }
    },
    ...,
)

run_list(
    '..., recipe[cop_sudoers::default], ...'
)
```
