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

  function openModal(){
    $('#myModal').removeClass('hide');
    $('#myModal').modal({ show: true });
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

})
