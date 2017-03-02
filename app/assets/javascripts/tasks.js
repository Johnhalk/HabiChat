$().ready(function(){
     $('[rel="tooltip"]').tooltip();

});

function rotateCard(btn){
     var $card = $(btn).closest('#footer');
     console.log($card);
     if($card.hasClass('hover')){
         $card.removeClass('hover');
     } else {
         $card.addClass('hover');
     }
 }
