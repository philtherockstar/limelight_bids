# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready -> 
  $('.bid_room_item_quantity').change ->
    qty = $(@).val()
    id = $(@).attr('id').match(/.*_(\d*_\d*_\d*)/)[1]
    rental_price = $("#bid_rooms_item_rental_price_" + id).val()
    $("#bid_rooms_item_total_" + id).text(qty * rental_price)
    calc_total()
  $('.bid_room_item_rental_price').change ->
    rental_price = $(@).val()
    id = $(@).attr('id').match(/.*_(\d*_\d*_\d*)/)[1]
    qty = $("#bid_rooms_item_quantity_" + id).val()
    $("#bid_rooms_item_total_" + id).text(qty * rental_price)
    calc_total()
  calc_total = () ->
    sum = 0
    $('.bid_room_item_total').each (index,element)=>
      sum += parseFloat($(element).text())
    $(".total_rental_cost").text(sum)
    $(".weekly_rental_cost").text(sum/4)
  calc_total()

  $('.add_item_to_rooms').click (e) -> 
    e.preventDefault()
    room_id = $(@).data("room-id")
    room_number = $(@).data("room-number")
    last_row_number=$(".room_"+room_id+"_"+room_number+":last").data("row-number")
    new_row_number=last_row_number+1
    newrow = """
              <div id='row_#{room_id}_#{room_number}_#{new_row_number}' class='table_row room_#{room_id}_#{room_number}' data-room-id='#{room_id}' data-room-number='#{room_number}' data-row-number='#{new_row_number}'>
                <div class='table_cell'>
                  <input class='bid_room_item' id='bid_rooms_item_#{room_id}_#{room_number}_#{new_row_number}' name='bid_rooms_item[0][1][6]' size='20' type='text' placeholder='Enter New Item:' data-room-id='#{room_id}' data-room-number='#{room_number}' data-row-number='#{new_row_number}'>
                </div>
                <div class='table_cell'>
                  <input class='bid_room_item_quantity' id='bid_rooms_item_quantity_#{room_id}_#{room_number}_#{new_row_number}' name='bid_rooms_item_quantity[0][1][6]' size='3' type='text' value='1'>
                </div>
                <div class='table_cell'>
                  <input class='bid_room_item_rental_price' id='bid_rooms_item_rental_price_#{room_id}_#{room_number}_#{new_row_number}' name='bid_rooms_item_rental_price[0][1][6]' size='3' type='text' value='0'>
                </div>
                <div class='table_cell bid_room_item_total' id='bid_rooms_item_total_#{room_id}_#{room_number}_#{new_row_number}'>
                  0
                </div>
              </div>
    """
    $("#row_" + room_id + "_" + room_number + "_" + last_row_number).after(newrow)
    $('#bid_rooms_item_' + room_id + "_" + room_number + "_" + new_row_number).autocomplete(
      minLength: 2
      source: '/item(:json)',
      select: (event,ui) -> 
        room_id=$(@).data('room-id')
        room_number=$(@).data('room-number')
        row_number=$(@).data('row-number')
        $('#bid_rooms_item_'+room_id+'_'+room_number+'_'+row_number).val(ui.item.name)
        $('#bid_rooms_item_rental_price_'+room_id+'_'+room_number+'_'+row_number).val(ui.item.rental_price)
        qty_name="bid_rooms_item_quantity[" + room_id + "][" + room_number + "][" + ui.item.id + "]" 
        $('#bid_rooms_item_quantity_'+room_id+'_'+room_number+'_'+row_number).attr('name',qty_name)
        rental_name="bid_rooms_item_rental_price[" + room_id + "][" + room_number + "][" +  ui.item.id + "]" 
        $('#bid_rooms_item_rental_price_'+room_id+'_'+room_number+'_'+row_number).attr('name',rental_name)
        qty = $('#bid_rooms_item_quantity_'+room_id+'_'+room_number+'_'+row_number).val()
        $('#bid_rooms_item_total_'+room_id+'_'+room_number+'_'+row_number).text(ui.item.rental_price * qty )
        calc_total()
        false
      ).data('ui-autocomplete')._renderItem = ( ul, item ) ->
        $( "<li>" )
          .data( "item.autocomplete", item)
          .append( item.name )
          .appendTo( ul )
    $('.bid_room_item_quantity').change ->
      qty = $(@).val()
      id = $(@).attr('id').match(/.*_(\d*_\d*_\d*)/)[1]
      console.log(id)
      rental_price = $("#bid_rooms_item_rental_price_" + id).val()
      console.log(rental_price)
      $("#bid_rooms_item_total_" + id).text(qty * rental_price)
      calc_total()
    $('.bid_room_item_rental_price').change ->
      rental_price = $(@).val()
      id = $(@).attr('id').match(/.*_(\d*_\d*_\d*)/)[1]
      qty = $("#bid_rooms_item_quantity_" + id).val()
      $("#bid_rooms_item_total_" + id).text(qty * rental_price)
      calc_total()

#    select: (event,ui) -> 
#      room_id=$(@).data('room-id')
#      room_number=$(@).data('room-number')
#      row_number=$(@).data('row-number')
#      $('#bid_rooms_item_'+room_id+'_'+room_number+'_'+row_number).val(ui.item.name)
#      $('#bid_rooms_item_rental_price_'+room_id+'_'+room_number+'_'+row_number).val(ui.item.rental_price)
#      qty = $('#bid_rooms_item_quantity_'+room_id+'_'+room_number+'_'+row_number).val()
#      $('#bid_rooms_item_total_'+room_id+'_'+room_number+'_'+row_number).text(ui.item.rental_price * qty )
#      calc_total()
#      false
#  ).data('ui-autocomplete')._renderItem = ( ul, item ) ->
#    $( "<li>" )
#      .data( "item.autocomplete", item)
#      .append( item.name )
#      .appendTo( ul )
    
   
    #console.log("in render item with item.name="+item.name)

##    id = $(@).attr('id')
##    room_id = $(@).attr('id').match(/button_room_(\d*)_.*/)[1]
##    room_number = $(@).attr('id').match(/button_room_\d*_(\d*)_.*/)[1]

# instead of getting the tri_id this way, let's find the last 

##    tri_id = $(@).attr('id').match(/button_room_\d*_\d*_(\d*)/)[1]
##    cla = $("#row_" + room_id + "_" + room_number + "_" + tri_id).attr('class')
##    newrow = """
##              <div class='table_row'>
##                <div class='table_cell'>
##                  <input class='bid_room_item' id='bid_rooms_item_1_13' name='bid_rooms_item[0][1][6]' size='20' type='text' placeholder='Enter New Item:'>
##                </div>
##                <div class='table_cell'>
##                  <input class='bid_room_item_quantity' id='bid_rooms_item_quantity_1_13' name='bid_rooms_item_quantity[0][1][6]' size='3' type='text' value='1'>
##                </div>
##                <div class='table_cell'>
##                  <input class='bid_room_item_rental_price' id='bid_rooms_item_rental_price_1_13' name='bid_rooms_item_rental_price[0][1][6]' size='3' type='text' value='0'>
##                </div>
##                <div class='table_cell bid_room_item_total' id='bid_rooms_item_total_1_13'>
##                  0
##                </div>
##              </div>
##             """
##    $("#row_" + room_id + "_" + room_number + "_" + tri_id).after(newrow)
##    $('.bid_room_item').autocomplete(
##      minLength: 2
##      source: '/item(:json)',
##      select: (event,ui) -> 
##        $('#bid_rooms_item_1_13').val(ui.item.name)
##        $('#bid_rooms_item_rental_price_1_13').val(ui.item.rental_price)
##        qty = $('#bid_rooms_item_quantity_1_13').val()
##        $('#bid_rooms_item_total_1_13').text(ui.item.rental_price * qty )
##        calc_total()
##        false
##    ).data('ui-autocomplete')._renderItem = ( ul, item ) ->
##      $( "<li>" )
##        .data( "item.autocomplete", item)
##        .append( item.name )
##        .appendTo( ul )

      #select: (event,ui) ->
      #  item = ui.item
      #open: -> $(this).autocomplete('widget').css('z-index',9999)
    #.attr( "data-value", item.value )
#      select: (event,ui) ->
#        $('#bid_rooms_item_1_13').val(ui.item.name)
#        $('#bid_rooms_item_rental_price_1_13').val(ui.item.rental_price)
#        return false
#          .data( "autocomplete" )._renderItem = ( ul, item ) ->
#            alert(item)
#            return $( "<li></li>" )
#            .data( "item.autocomplete", item )
#            .append( "<a>" + item.item.name + "</a>" )
#            .appendTo( ul )
#
      #source: ['Table End', 'Table Coffee','Table Console']
