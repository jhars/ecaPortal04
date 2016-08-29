$ ->
  $(document).on 'change', '#districts_select', (evt) ->
    $.ajax 'update_schools',
      type: 'GET'
      dataType: 'script'
      data: {
        district_id: $("#districts_select option:selected").val()
      }
      error: (jqXHR, textStatus, errorThrown) ->
        console.log("AJAX Error: #{textStatus}")
      success: (data, textStatus, jqXHR) ->
        console.log("Dynamic District select OK!")