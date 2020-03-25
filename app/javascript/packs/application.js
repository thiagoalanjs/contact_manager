// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//= require jquery
//= require bootstrap-sprockets
//= require jasny-bootstrap.min
//= require jquery_ujs
//= require turbolinks
//= require jquery-ui/core
//= require jquery-ui/widget
//= require jquery-ui/position
//= require jquery-ui/widgets/autocomplete
//= require jquery-ui/widgets/menu
//= require_tree .

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


$(function() {
    $('#term').autocomplete({
        source: "/contacts/autocomplete",
        minLength: 3,
        select: function (event, ui) {
            $('#term').val(ui.item.value);
            $(this).closest('form').submit();
        }
    });
});

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
