#= require active_admin/base

#$ ->
#  $(document).on 'change', '#countries_select', (evt) ->
#    $.ajax 'update_students',
#      type: 'GET'
#      dataType: 'script'
#      data: {
#        country_id: $("#countries_select option:selected").val()
#      }
#      error: (jqXHR, textStatus, errorThrown) ->
#        console.log("AJAX Error: #{textStatus}")
#      success: (data, textStatus, jqXHR) ->
#        console.log("Dynamic country select OK!")
#
#$("#cities_select").empty()
#  .append("<%= escape_javascript(render(:partial => @cities)) %>")