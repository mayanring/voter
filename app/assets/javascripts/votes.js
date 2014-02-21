// Immediately Invoked Function Expression
(function($, document, undefined) {

  // DOM Ready Callback
  $(document).ready(function() {

    // Submit Event binding and callback
    $('#new_vote').on('submit', function(e) {
      var _this = $(this);

      e.preventDefault();

      // AJAX request
      $.ajax({
        url: '/votes',
        method: 'POST',
        dataType: 'json',
        data: _this.serialize(),

        // AJAX Callback function
        success: function(data) {
          // Patch up my page
          _this.hide();

          $('<div>')
            .addClass('result')
            .html('ID: ' + data.id + '<br />' + 'Response: ' + data.response )
            .prependTo('body');
        }
      });
    });

  });
})(jQuery, document);
