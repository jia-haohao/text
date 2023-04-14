import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

import "bootstrap";
import '../stylesheets/styles';
import './scripts';
// import '../stylesheets/users';
// import '../stylesheets/styles';
// import '../stylesheets/sample';

Rails.start()
Turbolinks.start()
ActiveStorage.start()
