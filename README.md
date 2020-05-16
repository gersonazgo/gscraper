# Gscraper
Small ruby wrapper around [Capybara](https://github.com/teamcapybara/capybara) to make it user-friendly for users new to ruby coding and web scraping.

## Installation
Installation requires a computer with ruby installed. Run `ruby -v` on your shell (terminal) to check if you have a valid ruby installation.

### Install Chromedriver
Chromedriver is required to get the scraper up and running. Get the latest version from [chromedriver website](https://chromedriver.storage.googleapis.com/index.html) and copy it to
`/usr/local/bin`. To make sure its working, reopen your shell (terminal) and type `which chromedriver`.

#### Mac Users Only
If you're on a mac, you can try running `ruby lib/install.rb`. That will copy a sample working chromedriver version to `/usr/local/bin` for you.

### Install Gems
The project uses a `Gemfile` to manage it's gem dependencies. This means you need to install the `bundler` gem and then run `bundle install`  

```
gem install bundler
bundle install
```

### Running
Run `sample.rb`, read it and then start creating your own files!
```
ruby sample.rb
```
