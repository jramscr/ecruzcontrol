$(document).ready(function(){

  function validatePhone(txtPhone) {
    var a = document.getElementById(txtPhone).value;
    var filter = /^[0-9-+]+$/;
    var lenghtFilter = /^(\d{8})?$/;
    if (filter.test(a) && lenghtFilter.test(a)) {
      return true;
    }
    else {
      return false;
    }
  }

  function validatePhoneLenght(txtPhone) {
    var value = $(txtPhone).val()
    if (value.lenght == 8)
      return true
    else
      return false
  }

  $('#services_request_phone').blur(function(e) {
    if (validatePhone('services_request_phone')) {
      $('#services_request_phone').css('background-color', '#ACF1CD');
    }
    else {
      $('#services_request_phone').css('background-color', '#ECAAAA');
    }
  });


})
