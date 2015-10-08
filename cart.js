function deleteCartInCheckoutPage(){ 

    $(".checkout-cart-index a.btn-remove2,.checkout-cart-index a.btn-remove").click(function(event) {
        event.preventDefault();
               if(!confirm(confirm_content)){
            return false;
        }
   
        
    });
   
    return false;
}
function slideEffectAjax() {
      $('.top-cart-contain').mouseenter(function() { 
            $(this).find(".top-cart-content").stop(true, true).slideDown();
        });

        $('.top-cart-contain').mouseleave(function() {
            $(this).find(".top-cart-content").stop(true, true).slideUp();
        });
}
function deleteCartInSidebar() {

    if(is_checkout_page>0) return false;
    $('#cart-sidebar a.btn-remove, #mini_cart_block a.btn-remove').each(function(){});
}  

$(document).ready(function(){
    slideEffectAjax();
    slideEffectAjax1();
});


function slideEffectAjax1() {
      $('.top-bidcart-contain').mouseenter(function() { 
            $(this).find(".top-bidcart-content").stop(true, true).slideDown();
        });

        $('.top-bidcart-contain').mouseleave(function() {
            $(this).find(".top-bidcart-content").stop(true, true).slideUp();
        });
}


/*-------- End Cart js -------------------*/
