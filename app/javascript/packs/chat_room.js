(function() {
  App.chat_room = App.cable.subscriptions.create("ChatRoomChannel", {
    connected: function() {},
    disconnected: function() {},
    received: function(data) {},
    speak: function() {
      return this.perform('speak');
    }
  });

}).call(this);


