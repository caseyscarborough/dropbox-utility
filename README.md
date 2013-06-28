# Dropbox Utility

This application is a simple command-line RubyGem utility for interacting with Dropbox. The application is in the
beginning stages of development, and more features are planned.

The current features are listed below:

* Display user information
* Upload single files
* List directory contents
* Store authentication
* Delete authentication


## Usage

The following is the usage instructions for the application.

```
Usage: dropbox-utility [options]
    -i, --info                       Displays user information
    -u, --upload FILENAME            Specifies filename to upload
    -l, --list [PATH]                Lists contents of PATH specified
                                     Uses root directory if PATH not given.
    -d                               Removes authentication file. Will require
                                     re-authentication on next application start
```


## Installation


If you'd like to use the application, you can install it by running the following command from the command
line on your machine.
```
gem install dropbox-utility
```

After the installation, you can then run the application from anywhere in the command line:

```
dropbox-utility [options]
```

If you'd like to contribute, you can begin by cloning the repository or
[downloading the zip archive](https://github.com/caseyscarborough/dropbox-utility/archive/master.zip) and
extracting it.

For the application to work, you must add your Dropbox Developer application key and secret to the file located at
<code>lib/dropbox-utility/config.rb</code>, as well as the save location for your configuration file, shown below.
```ruby
APP_KEY = 'your-app-key'
APP_SECRET = 'your-app-secret'
ACCESS_TYPE = :dropbox
AUTH_FILE = Dir.home + '/.dropbox-utility'
```

If you do not have an application key and secret, you can begin by going to [https://www.dropbox.com/developers/apps](https://www.dropbox.com/developers/apps)
and creating an app.

After completing this, run <code>bundle install</code> and then the executable file located in the <code>bin</code> directory.

```
$ bundle install
$ ruby bin/dropbox-utility [options]
```

The first time you run the application, you will need to authenticate the application by clicking 'Allow' in
the browser window that appears. After that, your session will be saved in your user directory in a file named
<code>.dropbox-utility</code>.

## To-do

* Add more features.
* Possibly refactor to be more intuitive.
* Add tests using Rspec.
* Create documentation.


## Contributing

Please feel free to contribute to the application by following the steps below:

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
