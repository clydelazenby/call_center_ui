// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require ("bootstrap-sass")
require("channels")



// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

document.addEventListener('turbolinks:load', function() {
	username = '';
	$('.sidebar-form').keyup(function(event) {
		if (event.keyCode == 13 && !event.shiftKey)
		{
			username = event.target.value
          $('.username').append(username)
          $('#username').val(username)
          $('.username').removeClass('d-none')
          $('.sidebar-form').addClass('d-none')
          $('#message').removeAttr("disabled")
          $('#message').focus()
		}
	})

	$('#chat-form').bind('ajax:success', function(data) {
		$('#chatlisting').append(data.detail[0].username + ': ' + data.detail[0].message + '<br/>');
	});
});

$(document).ready(function () {

    $('.num').click(function () {
        var num = $(this);
        var text = $.trim(num.find('.txt').clone().children().remove().end().text());
        var telNumber = $('#telNumber');
        $(telNumber).val(telNumber.val() + text);
    });

});