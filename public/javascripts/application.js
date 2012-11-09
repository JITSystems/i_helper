$(function() {
  var faye = new Faye.Client('http://5.46.199.142:9292/faye');
  faye.subscribe("/messages/new", function(data) {
    eval(data);
  });
});

