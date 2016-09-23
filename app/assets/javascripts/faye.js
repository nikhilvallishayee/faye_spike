$(function() {
  var faye = new Faye.Client('http://localhost:9292/faye');
  faye.subscribe("/performance", function(data) {
    document.getElementById("myTable").insertRow(-1).innerHTML = '<td>'+data["result"]['Service-Quality']+'</td><td>'+data["result"]['Average-Response-Time']+'</td><td>'+data["result"]['Maximum-Response-Time']+'</td><td>'+data["result"]['Run-Time']+'</td><td>'+data["ENV"]+'</td><td>'+data["TYPE"]+'</td><td>'+data['Generated-Time']+'</td>';
  });
});