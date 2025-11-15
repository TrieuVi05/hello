(function(window){
  function showMessage(type, title, message){
    var id = 'lbs-modal-message';
    var el = document.getElementById(id);
    if(!el){
      el = document.createElement('div');
      el.id = id;
      el.style.position = 'fixed';
      el.style.top = '20px';
      el.style.right = '20px';
      el.style.zIndex = 99999;
      document.body.appendChild(el);
    }
    var color = '#5bc0de';
    if(type === 'success') color = '#5cb85c';
    if(type === 'danger') color = '#d9534f';
    if(type === 'warning') color = '#f0ad4e';
    var msg = document.createElement('div');
    msg.style.background = color;
    msg.style.color = '#fff';
    msg.style.padding = '10px 14px';
    msg.style.marginTop = '8px';
    msg.style.borderRadius = '3px';
    msg.style.boxShadow = '0 2px 6px rgba(0,0,0,0.15)';
    msg.innerHTML = '<strong>' + (title||'') + '</strong> ' + (message||'');
    el.appendChild(msg);
    setTimeout(function(){
      msg.style.transition = 'opacity 0.4s ease';
      msg.style.opacity = '0';
      setTimeout(function(){ el.removeChild(msg); }, 450);
    }, 3000);
  }
  window.LbsModalMessage = { showMessage: showMessage };
})(window);
