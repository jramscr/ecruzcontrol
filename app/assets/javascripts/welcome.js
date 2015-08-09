$(document).ready(function(){
  var inputs = $('#new_services_request').find('input.required');
  var textareas = $('#new_services_request').find('textarea.required');
  var requiredFields = $(inputs).add($(textareas));

  $('.submit-services-request').attr('disabled', true);

  function validatePhone(txtPhone) {
    var a = document.getElementById(txtPhone).value;
    var filter = /^[0-9-+]+$/;
    var lenghtFilter = /^(\d{8})?$/;
    if (filter.test(a) && lenghtFilter.test(a)) {
      return true;
    }
    else {
      $('.submit-services-request').attr('disabled', true);
      return false;
    }
  }

  function openModal(){
    $('#myModal').removeClass('hide');
    $('#myModal').modal({ show: true });
  }

  function validateNonEmptyField(currentInput){
    $(requiredFields).each(function(index,value){
      if( $(currentInput).val().length === 0 || $(value).val() == "")
        $('.submit-services-request').attr('disabled', true);
      else
        $('.submit-services-request').attr('disabled', false);
    });
  }

  $('.close-modal-button').click(function(){
    $('#new_services_request').find('input.form-control').each(function(index, value){
      $(value).val('');
    });

    $('#new_services_request').find('textarea.form-control').each(function(index, value){
      $(value).val('');
    });
  });

  $('#services_request_phone').blur(function(e) {
    if (validatePhone('services_request_phone')) {
      $('#services_request_phone').css('background-color', '#ACF1CD');
    }
    else {
      $('#services_request_phone').css('background-color', '#ECAAAA');
    }
  });

  $('.submit-services-request').click(function(){
    openModal();
  });

  $(requiredFields).each(function(index, value){
    $(value).keyup(function(){
      validateNonEmptyField(value);
    });
  });

})
