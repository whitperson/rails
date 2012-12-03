$(function(){

  $('#enqueue').click(push_data);
  $('#dequeue').click(pop_data);

});

function push_data()
{
  $.ajax({
    type: "POST",
    url: "/enqueue",
    data: { color: $('#color').val() }
  }).done(function(msg) {
    show_colors(msg.data);
  });
}

function pop_data()
{
  $.ajax({
    type: "POST",
    url: "/dequeue"
  }).done(function(msg) {
    show_colors(msg.data);
  });
}

function show_colors(colors)
{
  $('#colors').empty();

  for(var i = 0; i < colors.length; i++)
  {
    var color = $('<div>');
    color.addClass('color');
    color.css('background-color', colors[i]);
    $('#colors').prepend(color);
  }
}