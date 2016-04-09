// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery-ui
//= require jquery.turbolinks
//= require autocomplete-rails
//= require turbolinks
//= require bootstrap.min
//= require ie-emulation-modes-warning
//= require ie10-viewport-bug-workaround
//= require turbolinks
//= require star-rating
//= require_tree .


$(function() {
    $(".ckbox").change( function() {
        $.post($("#formid").attr("action"), $("#formid").serialize(), null, "script");
        return false;
    });

    console.log("xxx");

    $(".textvalue").keyup(function() {
        $.post($("#formid").attr("action"), $("#formid").serialize(), null, "script");
        return false;
    });

    $("#sortid").change(function() {
        $.post($("#formid").attr("action"), $("#formid").serialize(), null, "script");
        return false;
    });

    $("#submit").click( function() {
    //$("#pname").keyup(function() {
        $.post($("#filterform").attr("action"), $("#filterform").serialize(), null, "script");
        return false;
    //});
    });


});




