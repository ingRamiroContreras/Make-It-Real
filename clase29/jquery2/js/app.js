console.log("Hola")
changeColors = function(id, classColor){
  $(`div`).removeClass()
  $(`#${id}`).addClass(classColor)
}

startsemaphore = function(){
  changeColors(1, "red" )
  id = 1
  console.log(this)
  color = ["yellow","blue","red"]
  this.interval = setInterval(function(){
    changeColors(id, color[id - 1] )
    id++
    id = id == 4 ? 1 : id
  }, 1000)
}
$(document).ready(function(){
  
  $("div").click(function(){
    $("#4").removeClass();
    if ($(this).attr('id') == 1) {
      $("#4").addClass("red");
    }else if ($(this).attr('id') == 2) {
      $("#4").addClass("yellow");
    }else{
      $("#4").addClass("blue");
    }
  });

  $( "html" ).mousemove(function( event ) {
    var pageCoords = "( " + event.pageX + ", " + event.pageY + " )";
    var clientCoords = "( " + event.clientX + ", " + event.clientY + " )";
 /*    $( "span:first" ).text( "( event.pageX, event.pageY ) : " + pageCoords );
    $( "span:last" ).text( "( event.clientX, event.clientY ) : " + clientCoords ); */
    $("#4").offset({left:event.pageX + 10,top:event.pageY + 10});
  });


});
