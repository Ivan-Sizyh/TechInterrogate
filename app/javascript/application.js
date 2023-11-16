import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "@hotwired/turbo-rails"
import "./controllers"

import 'bootstrap/js/dist/dropdown'
import 'bootstrap/js/dist/collapse'

Rails.start()
Turbolinks.start()
ActiveStorage.start()
