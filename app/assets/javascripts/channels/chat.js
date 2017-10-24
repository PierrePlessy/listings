/*
 * decaffeinate suggestions:
 * DS102: Remove unnecessary code created because of implicit returns
 * Full docs: https://github.com/decaffeinate/decaffeinate/blob/master/docs/suggestions.md
 */
App.chat = App.cable.subscriptions.create("ChatChannel", {
  connected() {},
    // Called when the subscription is ready for use on the server

  disconnected() {},
    // Called when the subscription has been terminated by the server

  received(data) {
    // Called when there's incoming data on the websocket for this channel
    $("[data-is='chat']").val(data.message + '\n');
  },

  speak(message) {
    return this.perform('speak', {message});
  }
}
);
