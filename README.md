# Readme

Try it out

```bash
rbenv shell 3.3.6
bundle install
bundle exec i18n export -c config/i18n-js.yml --require ./lib/services/translation_placeholder_service.rb
rails dartsass:build
bin/dev 
```
