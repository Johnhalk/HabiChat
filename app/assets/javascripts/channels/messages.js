App.messages = App.cable.subscriptions.create('MessagesChannel', {
  received: function(data) {
    $("#messages").removeClass('hidden');
    $("#messages").addClass('chat-left');
    return $('#messages').append(this.renderMessage(data));
  },

  renderMessage: function(data) {
    if (data.user == current_user) {
      return "<p class='chat-right'> <b>" + data.user + ": </b>" + data.message + "</p>"; }
    else {
      return "<p class='chat-left'> <b>" + data.user + ": </b>" + data.message + "</p>";
      }
  }
});
