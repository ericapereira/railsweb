// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .
//= require jquery3
//= require jquery_ujs
//= require_tree .

/*if(bod.classList.contains("expand-content")){
bod.classList.remove("expand-content");
  bod.classList.add("expand-content-show");
}
else{
  bod.classList.remove("expand-content-show");
  bod.classList.add("expand-content");
}
*/
function main(index) {
    var bod = document.getElementsByClassName('expand-content-show')[index];
    var button_div = document.getElementById('expand_' +index);
    if(bod.style.display=='none'){
      bod.style.display='flex';
      button_div.innerHTML = "hide";
      /*if(button_div){
        button_div.innerHTML = "hide";
      }*/
    }
    else{
      bod.style.display='none';
      button_div.innerHTML = "expand";
    }

  }

  // debugger;
