// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require bootstrap
//= require bootstrap-sprockets


var ids
var ready
ready = (function() {
    ids = [];
    $("#buttons a").click(function() {
        var id = $(this).attr("id");
        $("#pages div").css("display", "none");
        $("#pages div#" + id + "").css("display", "block");
    });

    $("#FoodCategories a").click(function() {
        var id = $(this).attr("id");
        //$("#food").html("hello" + id)
        FoodCategories(id);
    });
     $("#submit a").click(function() {
         var id = $(this).attr("id");
        jQuery.each( ids, function( i, val ){
                jQuery.ajax({
                    type: "POST",
                    url: "orders/create",
                    data: val, id
                  
                });
        });
        window.location = "/orders/index"
    });
    $(document).off('click').on('click', '#food a', function(){
        var name= $(this).attr("text");
        var id= $(this).attr("id");
        $("#currentOrder").append(getOrdertableHTML(name, id));
     
    });
    //FoodCategories();
    
    $('.dropdown-toggle').dropdown(); 

});

$(document).ready(ready);
$(document).on('page:load', ready);

function FoodCategories(id) {
    var divpath =  $("#food");
    divpath.empty();
    $.get('/orders/foods', {category_id: id},function(data) {
            data.forEach(function(foodcat) {
                divpath.append(getFoodbuttonHtml(foodcat));
            });
    });
}

function getFoodbuttonHtml(foodcat){
    var html = '<a href="#" id=' + foodcat.id + ' text="' + foodcat.name + '">' + '<button class="btn btn-info">' + foodcat.name +'</button></a>';
    return html;
}

function getOrdertableHTML(name, id){
    var html = '<label for=' + id +'>' + name + '</label>' +'</br>';
    ids.push(id);
    return html;
}
