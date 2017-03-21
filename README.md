# Symfony 3 + PuPHPet
A Vagrant VM compatible for Symfony 3+.

### Before running `vagrant up`
* Change `synced_folder` > `source` to desired directory. It is recommended that this directory is outside the vagrant directory.
* Add the entry `192.168.59.101  symfony.dev` to /etc/hosts. This may require administrator privileges.

### When `vagrant up` is completed.
* From the vagrant directory, run `vagrant ssh` to access the guest VM.
* Change directory to `/var/www`.
* Run `composer create-project symfony/framework-standard-edition symfony` to install symfony. Make sure the the symfony directory is empty before running composer.
* When symfony is installed, open up a web browser, type in `symfony.dev`. Enjoy!

### Things to note
* Symfony is set (via nginx) in development mode with debug set to true.
* For macOS users having problems deleting files from the guest directory `/var/www/symfony`, just run `ls -lR` on the host's source directory. Should also do the same when `composer update` fails with directories not deleting.
