//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require_tree 





$(document).ready(function() {
 $( "#datepicker2" ).datepicker({ changeYear: true, changeMonth: true, yearRange: '1950:2000'});
 $( "#datepicker" ).datepicker({ changeYear: true, changeMonth: true, yearRange: '2012:2015'});
 $( "#datepicker3" ).datepicker({ changeYear: true, changeMonth: true, yearRange: '2012:2015'});
});
