$(document).ready(function(){
  // save comment to database
  $(document).on('click', '#submit_btn', function(){
    var name = $('#start_date').val();
    var comment = $('#end_date').val();
    $.ajax({
      url: 'manage.php',
      type: 'POST',
      data: {
        'save': 1,
        'start_date': start_date,
        'end_date': end_date,
      },
      success: function(response){
        $('#start_date').val('');
        $('#end_date').val('');
        $('#display_area').append(response);
      }
    });
  });
}