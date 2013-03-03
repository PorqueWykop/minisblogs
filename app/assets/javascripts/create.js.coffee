$(document).ready -> 
  $('a#displayWeaponForm').click (event) ->
    $('div#newWeapon').show()
    $('a#displayWeaponForm').hide() 
    event.preventDefault()