# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"

pin "popper", to: 'popper.js', preload: true
pin "bootstrap", to: 'bootstrap.min.js', preload: true
pin "i18next", to: "https://unpkg.com/i18next@23.12.1/dist/esm/i18next.js"

pin "zod", to: "https://cdn.skypack.dev/zod"
pin_all_from "app/javascript/localize", under: "localize"
