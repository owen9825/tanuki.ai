tanuki.ai
======================

This site is based on @[mattvh](https://github.com/mattvh)'s [Solar Theme for Jekyll](https://github.com/mattvh/solar-theme-jekyll)

Installation
--------------
* Install [Ruby Virtual Environment](https://rvm.io/) so that the Ruby gems you install will be isolated from any of your other projects.
  * You'll need to change your gnome profile, so you might like to keep a separate profile launched with `gnome-terminal --window-with-profile=my_ruby_profile`
  * ```bash
    rvm install ruby-head
    rvm use ruby-head
    ```
* Install the `github-pages` gem to reproduce the environment used for hosting GitHub Pages: `gem install github-pages`
* Install [Jekyll](https://jekyllrb.com/docs/installation/) and all its dependencies.
* Ensure that Node.js exists in your system `PATH` as `node`: `which node`. If not, you will need to [create a link](https://github.com/nodejs/node-v0.x-archive/issues/3911) to `nodejs`
* Install [Bower](https://bower.io/): `sudo npm install -g bower`
* Install the [sitemap](https://github.com/jekyll/jekyll-sitemap) plugin: `gem install jekyll-sitemap`
* Configure [the S3 connector](https://github.com/laurilehmijoki/s3_website).

Running locally
--------------
```bash
bundle install
bower install
bundle exec jekyll build
bundle exec jekyll serve
```
* Visit (http://localhost:4000/)

Pushing changes
-----------------
* Change the URL in [_config.yml](/_config.yml)
* Rebuild (`bundle exec jekyll build`)
* Change the bucket in [s3_website.yml](/s3_website.yml)
* Push the changes to your bucket: `s3_website push`

Demo
-------

You can see this site running on [GitHub Pages.](owen9825.github.io/barfly.ai/)


License
---------

GPLv2 or higher
