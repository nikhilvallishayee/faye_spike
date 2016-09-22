$(function() {
  var faye = new Faye.Client('http://localhost:9292/faye');
  faye.subscribe("/performance", function(data) {
    document.getElementById("myTable").insertRow(-1).innerHTML = '<td>'+data['Service-Quality']+'</td><td>'+data['Average-Response-Time']+'</td><td>'+data['Maximum-Response-Time']+'</td><td>'+data['Run-Time']+'</td><td>'+data['Generated-Time']+'</td>';
  });
});