# copy_cart_drop_down
How to copy OpenCart Default Mini Cart Drop Down.

Below are the thek to copy Mini Cart Drop Down in OpenCart.
I have attached modified and created file along with readme.

*Note : Version of OpenCart 1.5.6.4 used

1:- Go to Root Directory of Open Cart (My Root Directory is os)

2:- Copy 2 Files in 2 different Folder
    a) Save this "os/catalog/controller/module/cart.php" as ocart.php in same folder
       Scroll to bottom you will find below code and change cart.tpl with ocart.tpl
   	if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/ocart.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/ocart.tpl';
		} else {
			$this->template = 'default/template/module/ocart.tpl';
		}

    b) Save this "os/catalog/catalog/view/theme/default/template/module/cart.tpl" as ocart.tpl in same folder
       Modify Below this in ocart.tpl file
       i) <div id="cart" class="">  to <div id="bidcart" class="">
       ii) <div class="content top-cart-content"> to   <div class="content top-bidcart-content">
       
3:- Open file "os/catalog/controller/common/header.php". Scroll to bottom you will find below code
    $this->children = array( 'module/language', 'module/currency', 'module/cart' );
    Add another ocart.php controller here
    $this->children = array( 'module/language', 'module/currency', 'module/cart', 'module/ocart' );

4:- Open file "catalog/view/theme/default/template/common/header.tpl". Scroll to bottom you will find below code
           <div class="top-cart-contain">
            <div class="mini-cart"> 
            <?php echo $cart; ?>
            </div>
            <div id="ajaxconfig_info" style="display:none"> <a href="#/"></a>
            <input value="" type="hidden">
            <input id="enable_module" value="1" type="hidden">
            <input class="effect_to_cart" value="1" type="hidden">
            <input class="title_shopping_cart" value="Go to shopping cart" type="hidden">
            </div>
            </div>  
            
    Below this code page this code
    
              <div class="top-bidcart-contain" style="margin-top: -100px;">
              <div class="mini-cart"> 
              <?php echo $bidcart; ?>
              </div>
              <div id="ajaxconfig_info" style="display:none"> <a href="#/"></a>
              <input value="" type="hidden">
              <input id="enable_module" value="1" type="hidden">
              <input class="effect_to_cart" value="1" type="hidden">
              <input class="title_shopping_cart" value="Go to shopping cart" type="hidden">
              </div>
              </div>

5:- Open File "/catalog/view/theme/default/js/cart.js" and add below code 
        function slideEffectAjax1() {
          $('.top-ocart-contain').mouseenter(function() { 
                $(this).find(".top-ocart-content").stop(true, true).slideDown();
            });
    
            $('.top-ocart-contain').mouseleave(function() {
                $(this).find(".top-ocart-content").stop(true, true).slideUp();
            });
        }
    
    Add another function document.ready
        $(document).ready(function(){
              slideEffectAjax();
              slideEffectAjax1();
         });  
     
6:- Open File "/catalog/view/theme/default/js/common.js" and add below code
    	/* Ajax BidCart */
    	$('#ocart > .heading a').live('mouseover', function() { 
    		$('#ocart').addClass('active');
    		
    		$('#ocart').load('index.php?route=module/ocart #ocart > *');
    		
    		$('#ocart').live('mouseleave', function() {
    			$(this).removeClass('active');
    		});
    	});
    
7:- Open File "/catalog/view/theme/default/stylesheet/stylesheet.css" and add below code
    a) nav #cart .content { ..... } copy same style to nav #ocart .content { ...... }
    b) nav #cart.active .content { ..... } copy same style to nav #ocart.active .content { .....} 

8:- Open File "/catalog/view/theme/default/stylesheet/style.css" and create same style for
    top-ocart-contain and top-ocart-content.
     Example :- See Below Style 
            .top-cart-contain .price {
            	color: #ff0000;
            	font-weight: bold;
            	text-transform: uppercase;
            }
            .top-ocart-contain .price {
            	color: #ff0000;
            	font-weight: bold;
            	text-transform: uppercase;
            }
     Do with for all top-cart-contain and top-cart-content

