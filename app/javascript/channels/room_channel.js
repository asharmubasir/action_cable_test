import consumer from "./consumer"

consumer.subscriptions.create("RoomChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
    console.log('connected')
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    // Called when there's incoming data on the websocket for this channel

    if(data.type == 'comment'){
      $('#comments').append('<div class="message"> ' + data.msg + '</div>')
    }else{
      $('#message').append('<div class="message"> ' + data.msg + '</div>')
    }

  }
});

let submit_messages;

$(document).on('turbolinks:load', function () {
  submit_messages('#message_content')
  submit_messages('#comment_content')
})

submit_messages = function (target) {
  $(target).on('keydown', function (event) {
    if (event.keyCode == 13) {
      $('input').click()
      event.target.value = ''
      event.preventDefault()
    }
  })
}
