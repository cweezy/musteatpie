# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/



refreshPrice = (event) ->
  gon.totalPrice = 0.0
  pieRows = $('.pie-order-field')
  pieRows.each (_, row) ->
    pies = gon.current_pies
    $row = $(row)
    pieId = parseInt $row.find('.pie-select').val(), 10
    quant = parseInt $row.find('.pie-quantity').val(), 10
    selectedPie = (p for p in pies when p.id is pieId)[0]
    price = parseFloat(selectedPie.price)
    gon.totalPrice += (price * quant)
  $('.total-price-val').text gon.totalPrice

onAddPie = (event) ->
  refreshPrice()
  $('.pie-select').bind('change', refreshPrice)
  $('.pie-quantity').bind('change', refreshPrice)

startUp = ->
  $('#order_pickup_datetime').datepicker()
  $('.add-pie-link').click(onAddPie)

jQuery ->
  startUp()
