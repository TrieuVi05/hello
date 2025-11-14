(function(window){
  function isInteger(value){
    return /^\d+$/.test(String(value));
  }

  function validateForm(){
    var id = $.trim($('input[name="id"]').val());
    var first = $.trim($('input[name="firstName"]').val());
    var last = $.trim($('input[name="lastName"]').val());
    var mark = $.trim($('input[name="mark"]').val());

    if(id === ''){ window.LbsModalMessage.showMessage('warning','Validation:','ID is required'); return false; }
    if(!isInteger(id)){ window.LbsModalMessage.showMessage('warning','Validation:','ID must be an integer'); return false; }
    if(first === ''){ window.LbsModalMessage.showMessage('warning','Validation:','First Name is required'); return false; }
    if(last === ''){ window.LbsModalMessage.showMessage('warning','Validation:','Last Name is required'); return false; }
    if(mark === ''){ window.LbsModalMessage.showMessage('warning','Validation:','Mark is required'); return false; }
    if(!/^\d+$/.test(mark)){ window.LbsModalMessage.showMessage('warning','Validation:','Mark must be a number'); return false; }
    return true;
  }

  window.LbsValidate = { validateForm: validateForm };
})(window);
