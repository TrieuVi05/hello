(function($, window){
  function fillFormFromRow($row){
    var tds = $row.find('td');
    // assume columns: 0=choose,1=ID,2=FirstName,3=LastName,4=Mark
    var id = $.trim(tds.eq(1).text());
    var first = $.trim(tds.eq(2).text());
    var last = $.trim(tds.eq(3).text());
    var mark = $.trim(tds.eq(4).text());
    $('input[name="id"]').val(id);
    $('input[name="firstName"]').val(first);
    $('input[name="lastName"]').val(last);
    $('input[name="mark"]').val(mark);
  }

  function clearForm(){
    $('input[name="id"]').val('');
    $('input[name="firstName"]').val('');
    $('input[name="lastName"]').val('');
    $('input[name="mark"]').val('');
  }

  function getSelectedRow(){
    var $radio = $('table').find('input[type=radio]:checked');
    if($radio.length === 0) return null;
    return $radio.closest('tr');
  }

  function submitWithAction(action){
    $('#action').val(action);
    var $form = $('form').first();
    if($form.length) $form.submit();
  }

  $(function(){
    // when a radio is changed, fill the form
    $(document).on('change', 'table input[type=radio]', function(){
      var $tr = $(this).closest('tr');
      fillFormFromRow($tr);
    });

    // button handlers
    $(document).on('click', '#btnAdd', function(){
      if(window.LbsValidate && !window.LbsValidate.validateForm()) return;
      submitWithAction('add');
    });
    $(document).on('click', '#btnUpdate', function(){
      var $row = getSelectedRow();
      if(!$row){ window.LbsModalMessage.showMessage('warning','Warning:','Please choose a row to update'); return; }
      if(window.LbsValidate && !window.LbsValidate.validateForm()) return;
      submitWithAction('update');
    });
    $(document).on('click', '#btnDelete', function(){
      var $row = getSelectedRow();
      if(!$row){ window.LbsModalMessage.showMessage('warning','Warning:','Please choose a row to delete'); return; }
      if(!confirm('Are you sure you want to delete the selected user?')) return;
      submitWithAction('delete');
    });

    // auto-fill if a radio already checked on load
    var $checked = $('table').find('input[type=radio]:checked');
    if($checked.length) $checked.trigger('change');
  });

  window.LbsGeneral = {
    fillFormFromRow: fillFormFromRow,
    clearForm: clearForm,
    getSelectedRow: getSelectedRow,
    submitWithAction: submitWithAction
  };
})(jQuery, window);
