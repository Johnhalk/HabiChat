App.messages = App.cable.subscriptions.create('MessagesChannel', {
  received: function(data) {
    $("#messages").removeClass('hidden');
    $("#messages").addClass('chat-left');
    return $('#messages').append(this.renderMessage(data));
  },

  renderMessage: function(data) {
    return "<p class='chat-right'> <b>" + data.user + ": </b>" + data.message + "</p>";
  }
});
