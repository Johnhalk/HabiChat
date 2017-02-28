$().ready(function(){
     $('[rel="tooltip"]').tooltip();

});

function rotateCard(btn){
     var $card = $(btn).closest('.card-deck');
     console.log($card);
     if($card.hasClass('hover')){
         $card.removeClass('hover');
     } else {
         $card.addClass('hover');
     }
 }
