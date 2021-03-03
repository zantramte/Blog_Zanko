// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

require("@rails/ujs").start()
require("@rails/activestorage").start()
require("turbolinks").start()
require("channels")
require("bootstrap")
require("moment/locale/sl")
require("tempusdominus-boostrap-4")

// CSS
import 'scss/site'
// JS
import('js/site')
// Images
const images = require.context('../images', true)
const imagePath = (name) => images(name, true)

import "@fortawesome/fontawesome-free/js/all";

Rails.start()
Turbolinks.start()
ActiveStorage.start()
