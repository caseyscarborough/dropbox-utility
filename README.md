# Dropbox Utility

This application is a simple command-line utility for interacting with Dropbox. The application is in the
beginning stages of development, and more features are planned.

The current features are listed below:

* Display user information
* Upload single files

## Usage

The following is the usage instructions for the application.

```
Usage: dropbox-utility [options]
    -i, --info                       Displays user information
    -u, --upload FILENAME            Specifies filename to upload
```

## Installation

Until the application gets uploaded as a gem, you can begin by cloning the repository or downloading and
extracting.

For the application to work, you must add your Dropbox Developer application key and secret to the file located at
<code>lib/dropbox-utility/config.rb</code>, as well as the save location for your configuration file, shown below.
```ruby
APP_KEY = 'your-app-key'
APP_SECRET = 'your-app-secret'
ACCESS_TYPE = :dropbox
AUTH_FILE = '/Users/Casey/.dropbox-utility'
```

If you do not have an application key and secret, you can begin by going to [https://www.dropbox.com/developers/apps](https://www.dropbox.com/developers/apps)
and creating an app.

After completing this, run <code>bundle install</code> and then the executable file located in the <code>bin</code> directory.

```
$ bundle install
$ ruby bin/dropbox-utility
```


## To-do

* Add more features.
* Determine best way to save configuration file for cross-platform integration.

## Contributing

Please feel free to contribute to the application by following the steps below:

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
