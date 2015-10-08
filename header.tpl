<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
<meta charset="UTF-8" />
<title><?php echo $title; ?></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/stylesheet.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/styles.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/font-awesome.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/slider.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/multiseller.css" />
<?php 
$this->language->load('module/magikdefault');
if($this->config->get('magikdefault_layout_responsive') == 1) { ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/responsive.css" />
<?php } ?>
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<link href='//fonts.googleapis.com/css?family=<?php echo str_replace(' ', '+', $this->config->get('magikdefault_fonts_transform')); ?>:200,300,400,500,600,700,800' rel='stylesheet' type='text/css'>

<script type="text/javascript" src="catalog/view/theme/default/js/common.js"></script>
<script type="text/javascript" src="catalog/view/theme/default/js/mob-nav.js"></script>
<script type="text/javascript" src="catalog/view/theme/default/js/banner.js"></script>
<script type="text/javascript" src="catalog/view/theme/default/js/home-tabs.js"></script>
<script type="text/javascript" src="catalog/view/theme/default/js/cloud-zoom.js"></script>
<script type="text/javascript" src="catalog/view/theme/default/js/testimonial.js"></script>
<script type="text/javascript" src="catalog/view/theme/default/js/products-slider.js"></script>




<?php if($this->config->get('footer_scroll_totop') == 1) { ?>   
<script type="text/javascript" src="catalog/view/theme/default/js/totop.js"></script>
<?php } ?>

<script type="text/javascript" src="catalog/view/theme/default/js/fancybox/jquery.fancybox.js"></script>
<link type="text/css" rel="stylesheet" href="catalog/view/theme/default/js/fancybox/jquery.fancybox.css">
<?php foreach ($scripts as $script) { ?>

<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
<script type="text/javascript">
 $(document).ready(function($){
    var template ="<?php echo $this->config->get('config_template')?>";
    if(template.indexOf("home2") > -1){
     //alert("hi");
    }
    else
    {
      $(".magik-slideshow2").hide();
    }
    $(".button-grid").click(function(e) {
        $(".category-products ul.products-grid").fadeIn();
        $(".category-products ol.products-list").fadeOut();
        $(this).addClass('button-active');
        $('.button-list').removeClass('button-active');
        e.preventDefault();
    });
    $(".button-list").click(function(e) {
        $(".category-products ul.products-grid").fadeOut();
        $(".category-products ol.products-list").fadeIn();
        $(this).addClass('button-active');
        $('.button-grid').removeClass('button-active');
        e.preventDefault(); 
    })
});
</script>
<?php if($this->config->get('magikdefault_layout_pdisplay')=="grid") { ?> 
        <script type="text/javascript">
        $(document).ready(function($){
          $(".category-products ul.products-grid").fadeIn();
          $(".category-products ol.products-list").fadeOut();
          $('.button-grid').addClass('button-active');
          $('.button-list').removeClass('button-active');
        });
        </script> 
<?php } else {  ?> 
        <script type="text/javascript">
        $(document).ready(function($){
          $(".category-products ul.products-grid").fadeOut();
          $(".category-products ol.products-list").fadeIn();
          $('.button-grid').removeClass('button-active');
          $('.button-list').addClass('button-active');
        });
        </script>
<?php } ?>    

<?php if ($stores) { ?>
<script type="text/javascript"><!--
$(document).ready(function() {
    <?php foreach ($stores as $store) { ?>
    $('body').prepend('<iframe src="<?php echo $store; ?>" style="display: none;"></iframe>');
    <?php } ?>
});
//--></script>
<?php } ?>
<?php echo $google_analytics; ?>
<style type="text/css">
/*  update google Font */
header .welcome-msg,.toplinks,.mini-cart .basket a,.top-cart-content .block-subtitle,.mini-cart .actions .btn-checkout,.mini-cart .actions .view-cart,.mini-cart .actions .view-cart:hover,.mini-cart .button.btn-checkout,#nav .nav-custom-link .header-nav-dropdown-wrapper p,#nav > li > a,.grid12-4 h3,grid12-4 p,a.btn-button-st,#nav .nav-custom-link .header-nav-dropdown-wrapper h4.heading,.totals h3,.cart-collaterals .col2-set h3,.page-title h1, .page-title h2,.products-grid .item .item-inner .item-info .info-inner .item-title a,.email-friend a,.button, .btn, .button-inverse, .button-vote, .sidebar .button, .sidebar .btn, .dropdown .dropdown-menu .button, .buttons-set .back-link a, .scrolltop, .button-tabs li a,.block .block-title,.side-nav-categories .block-title,.cat-img-title .cat-heading,.products-list .product-name a,.products-grid .actions button.button.btn-cart span,a.button.detail-bnt span,.product-view .new-label,.product-view .sale-label,.product-view .product-name h1,.product-view .short-description h2,.product-view .product-shop .add-to-links .link-wishlist,.product-view .product-shop .add-to-box .add-to-cart label,.product-view .product-shop .product-options-bottom .add-to-cart label,#customer-reviews .page-title h2,.tab-box .activeLink a,.tab-box a,.tab-box a:hover,.availability, .product-brand,.add-to-cart label,.add-to-links span,.one-page-checkout .step-title .number,.one-page-checkout .active .step-title h3,.one-page-checkout .step-title h3,.one-page-checkout .active .step-title,.checkout-progress li,.page-title_multi h2,#wishlist-table .product-name,.login_page strong,#shopping-cart-table .product-name,#store-messages .message strong,footer h4,.our-features-box .feature-box,.new_title h2,.new-label,.sale-label,.related-block .block-title,.up-sell-slider .block-title,.popular-block .block-title,.right-side-content h2,a.button.view-all,.blog-title h2,.latest-news ul li h2,.latest-news a,.blog-l a.info,.newsletter-sign-box h3,.phone .phone-box strong,.pro-recommend .products-grid .actions button.button.btn-cart span,.pro-recommend .new_title h2,.pro-recommend a.button.detail-bnt span,.newsletter-wrap input[type="text"],.newsletter-wrap button.subscribe,.fur-des p,.jcarousel-skin-tango5 ul.products-grid li.item a.thumb span.quick-view span,.category-products ul.products-grid li.item a.thumb span.quick-view span,.jcarousel-skin-tango4 ul.products-grid li.item a.thumb span.quick-view span,.testimonials_RC .quote-box q,.what-cs > h2,.what-cs > h2 span,.what-cs .item .inner .jda,#mc_embed_signup,#mc_embed_signup label,.checkout-heading,.tp-caption.ExtraLargeTitle,.tp-caption.LargeTitle,.tp-caption.Title,.tp-caption.TitleOrange,#menu ul.navmenu .menutop h2,ul.topnav li a,ul.topnav ul li a,.os-phrases h2
{  font-family: '<?php echo $this->config->get('magikdefault_fonts_transform'); ?>',  sans-serif;   } 

/* sale label */
.new-label {background:<?php echo $this->config->get('magikdefault_label_color'); ?>}

/*Main color section */

<?php if($this->config->get('magikdefault_body_bg')==1) { ?>
body {background:<?php echo $this->config->get('magikdefault_color_body_bg'); ?> } <?php } ?>

<?php if($this->config->get('magikdefault_body_font')==1) { ?>
body {color:<?php echo $this->config->get('magikdefault_color_body_color'); ?> } <?php } ?>

<?php if($this->config->get('magikdefault_body_link')==1) { ?>
a,a:visited {color:<?php echo $this->config->get('magikdefault_color_link'); ?>} <?php } ?>

<?php if($this->config->get('magikdefault_body_linkhover')==1) { ?>
a:hover {color:<?php echo $this->config->get('magikdefault_color_linkhover'); ?>} <?php } ?>

/* header color section */ 
<?php if($this->config->get('magikdefault_header_background')==1) { ?>
header { background-color: <?php echo $this->config->get('magikdefault_header_bg'); ?>;} <?php } ?>

<?php if($this->config->get('magikdefault_header_link_option')==1) { ?>
header .toplinks div.links div a{color:<?php echo $this->config->get('magikdefault_header_link'); ?>;} <?php } ?>

<?php if($this->config->get('magikdefault_header_linkhover_option')==1) { ?>
header .toplinks div.links div a:hover{color:<?php echo $this->config->get('magikdefault_header_linkhover'); ?>;} <?php } ?>

<?php if($this->config->get('magikdefault_header_currencylang_option')==1) { ?>
.language-box .language-switcher,.currency-box .currency-switcher{color:<?php echo $this->config->get('magikdefault_currencylang'); ?>;} <?php } ?>

/*Top Menu */
/*background*/
<?php if($this->config->get('magikdefault_topmenubg_option')==1) { ?>
nav { background:<?php echo $this->config->get('magikdefault_topmenu_bg'); ?> } <?php } ?>
/*main menu links*/
<?php if($this->config->get('magikdefault_topmenulink_option')==1) { ?>
#nav > li > a{ color:<?php echo $this->config->get('magikdefault_topmenu_link'); ?>; } <?php } ?>
/*main menu link hover*/
<?php if($this->config->get('magikdefault_topmenulinkhover_option')==1) { ?>
#nav > li > a:hover:nth-child(1), #nav > li > a.active:nth-child(1){color:<?php echo $this->config->get('magikdefault_topmenu_linkhover'); ?>} <?php } ?>
/*sub menu link color*/
<?php if($this->config->get('magikdefault_topmenusublink_option')==1) { ?>
#nav ul.level0 > li > a{color:<?php echo $this->config->get('magikdefault_topmenu_sublink'); ?>} <?php } ?>
/*sub links hover*/
<?php if($this->config->get('magikdefault_topmenusublinkhover_option')==1) { ?>
#nav ul li a:hover{color:<?php echo $this->config->get('magikdefault_topmenu_sublinkhover'); ?> } <?php } ?> 
/*buttons*/
<?php if($this->config->get('magikdefault_buttonbg_option')==1) { ?>
button.button{background-color:<?php echo $this->config->get('magikdefault_button_bg'); ?> } <?php } ?>

<?php if($this->config->get('magikdefault_buttonhoverbg_option')==1) { ?>
button.button:hover{background-color: <?php echo $this->config->get('magikdefault_button_hoverbg'); ?>} <?php } ?>

/*price*/
<?php if($this->config->get('magikdefault_regularprice_option')==1) { ?>
.regular-price .price{ color:<?php echo $this->config->get('magikdefault_regularprice'); ?> } <?php } ?>

<?php if($this->config->get('magikdefault_oldprice_option')==1) { ?>
.old-price .price{ color:<?php echo $this->config->get('magikdefault_oldprice'); ?> } <?php } ?>

<?php if($this->config->get('magikdefault_newprice_option')==1) { ?>
.special-price .price{ color:<?php echo $this->config->get('magikdefault_newprice'); ?> } <?php } ?>

/*footer*/
<?php if($this->config->get('magikdefault_footerbg_option')==1) { ?>
footer{background:<?php echo $this->config->get('magikdefault_footer_bg'); ?> } <?php } ?>

<?php if($this->config->get('magikdefault_footerlink_option')==1) { ?>
footer .footer-column a,footer .footer-column a:before{color: <?php echo $this->config->get('magikdefault_color_footerlinks'); ?>} 
<?php } ?>

<?php if($this->config->get('magikdefault_footerlinkhover_option')==1) { ?>
footer .footer-column a:hover{color: <?php echo $this->config->get('magikdefault_color_footerlinkshover'); ?>} <?php } ?>

<?php if($this->config->get('magikdefault_powered_option')==1) { ?>
footer .coppyright p{color: <?php echo $this->config->get('magikdefault_color_powered'); ?>} <?php } ?>

</style>
</head>
<body class="cms-index-index cms-home-page">
<div id="container">
<header>
  <div class="top-links">
    <div class="inner">


        <!-- BEGIN BLOCK LANGUAGE -->
        <div class="language-box">
        <?php echo $language; ?>
        </div>
        <!-- BEGIN BLOCK CURRENCY -->
        <div class="currency-box">
        <?php echo $currency; ?>
        </div>
        <!--currency-box-->
        <?php if (!$logged) { ?>
        <p class="welcome-msg"><?php echo $text_welcome; ?></p>
        <?php } else { ?>
        <p class="welcome-msg"><?php echo $text_logged; ?></p>
        <?php } ?>       
      
      <!--top-left-->
         
      <div class="toplinks">
        <div class="links">
<?php if ($this->MsLoader->MsSeller->getStatus($this->customer->getId()) == MsSeller::STATUS_ACTIVE) { ?>
<div class="myaccount">
            <a title="My Account" href="<?php echo $account; ?>"><span><?php echo $text_account; ?></span></a>
          </div>

<?php } else { ?>

          <div class="myaccount">
            <a title="My Account" href="<?php echo $account; ?>"><span><?php echo $text_account; ?></span></a>
          </div>
<?php if ($logged) { ?>
   <div class="Members">
          <a title="Members" href="<?php echo $members; ?>"><span>Members</span></a>  
          </div>

   <div class="basket">
          <a title="My Basket" href="<?php echo $basket; ?>"><span>Family Cart</span></a>  
          </div>
   <div class="Bidlist">
          <a title="My Bidlist" href="<?php echo $mybidlist; ?>"><span>Bid Cart</span></a>  
          </div>
   <div class="mybid">
          <a title="My Bid" href="<?php echo $mybid; ?>"><span>My Bid</span></a>  
          </div>





<?php } ?>

          <div class="wishlist">
          <a title="My Wishlist" href="<?php echo $wishlist; ?>"><span>My Wishlist</span></a>  
          </div>
          <div class="check">
            <a title="Checkout" href="<?php echo $checkout; ?>"><span><?php echo $text_checkout; ?></span></a>
          </div>
<?php } ?>
          <div class="login">
          <?php if (!$logged) { ?>
          <a href="<?php echo HTTP_SERVER . 'index.php?route=account/login'; ?>"><span>Log In</span></a>
         
          <?php }  else { ?>
          <a href="<?php echo HTTP_SERVER . 'index.php?route=account/logout'; ?>"><span>Log Out</span></a>
          <?php } ?>
          </div>
        </div>
        <!--links-->
      </div>

      <!--toplinks-->
    </div>
    <!--inner-->
  </div>
  <div class="header" id="header">



 
      
      


    <?php   if ($logo) { ?>
      <div class="logo"><a href="<?php echo $home; ?>" title="<?php echo $name; ?>"><img src="<?php echo $logo; ?>" alt="<?php echo $name; ?>"></a>        
      </div>
      <?php }?>
    
<?php if ($this->MsLoader->MsSeller->getStatus($this->customer->getId()) == MsSeller::STATUS_ACTIVE) { ?>

<?php }else{ ?>
      <!-- serch box -->
<div class="search-box">
     <!-- <div class="button-search"></div> -->
  <!--     <input type="text" name="search" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" class="searchbox" id="search"/>    
      <button  type="submit" title="search" id="submit-button" class="button-common search-btn-bg"><span class="searchIconNew">&nbsp;</span></button> -->

     
                <select name="category_id" class="cate-dropdown">
          <option value="0"><?php echo $text_category; ?></option>
          <?php foreach ($categories as $category_1) { ?>
          <?php if ($category_1['category_id'] == $category_id) { ?>
          <option value="<?php echo $category_1['category_id']; ?>" selected="selected"><?php echo $category_1['name']; ?></option>
          <?php } else { ?>
          <option value="<?php echo $category_1['category_id']; ?>"><?php echo $category_1['name']; ?></option>
          <?php } ?>
          <?php foreach ($category_1['children'] as $category_2) { ?>
          <?php if ($category_2['category_id'] == $category_id) { ?>
          <option value="<?php echo $category_2['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
          <?php } else { ?>
          <option value="<?php echo $category_2['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
          <?php } ?>
          <?php foreach ($category_2['children'] as $category_3) { ?>
          <?php if ($category_3['category_id'] == $category_id) { ?>
          <option value="<?php echo $category_3['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
          <?php } else { ?>
          <option value="<?php echo $category_3['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
          <?php } ?>
          <?php } ?>
          <?php } ?>
          <?php } ?>
        </select>
        <?php if ($search) { ?>
        <input id="search" type="text" name="search" value="<?php echo $search; ?>" class="searchbox" maxlength="128" />
        <?php } else { ?>
        <input id="search" type="text" name="search" value="<?php echo $search; ?>" class="input-text" onclick="this.value = '';" onkeydown="this.style.color = '000000'" style="color: #999;" />
        <?php } ?>
        <button type="button" id="submit-button" class="search-btn-bg button-search" > <img src="image/search-icon.png" /> </button>
        <!-- span><?php echo $text_search; ?></span --> 

      

    </div>

<?php } ?>
        
     


  </div>
</header>

<nav class="">
<div class="nav-inner">
  <div id="menu" class="hidden-desktop">
  
    <ul class="navmenu">
      <li>
        <div class="menutop">
          <div class="toggle"> <span class="icon-bar">&nbsp;</span> <span class="icon-bar">&nbsp;</span> <span class="icon-bar">&nbsp;</span></div>
          <h2>Menu</h2>
        </div>
        <ul style="display:none;" class="submenu">
          <li>
            <ul class="topnav">
              <?php foreach ($categories as $category) { ?>
                <li class="level0 level-top parent"><a class="level-top" href="<?php echo $category['href']; ?>">
                  <span><?php echo $category['name']; ?></span></a>
                  <?php if ($category['children']) { ?>
          
                    <?php for ($i = 0; $i < count($category['children']);) { ?>
                    <ul class="level0">
                      <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
                      <?php for (; $i < $j; $i++) { ?>
                      <?php if (isset($category['children'][$i])) { ?>
                      <li class="level1"><a href="<?php echo $category['children'][$i]['href']; ?>"><span><?php echo $category['children'][$i]['name']; ?></span></a></li>
                      <?php } ?>
                      <?php } ?>
                    </ul>
                    <?php } ?>
              
                <?php } ?>
                </li>
                <?php } ?>           
            </ul>

          </li>
        </ul>
      </li>
    </ul>  

  </div>

    <script type="text/javascript">
jQuery(document).ready(function() {
jQuery('.toggle').click(function() {
if (jQuery('.submenu').is(":hidden"))
{
jQuery('.submenu').slideDown("fast");
} else {
jQuery('.submenu').slideUp("fast");
}
return false;
});
});

/*Phone Menu*/
jQuery(document).ready(function() {
jQuery(".topnav").accordion({
accordion:false,
speed: 300,
closedSign: '+',
openedSign: '-'
});
});
</script>
<?php 
if(isset($this->request->get['path'])) {
    $path = $this->request->get['path'];
    $cats = explode('_', $path);
    $cat_id = $cats[0];
} 
else{
  $cat_id = 0;
}

?>
    
<?php 
$result = $this->db->query("SELECT * FROM `" . DB_PREFIX . "extension` WHERE `code` = 'custom_block_inside_menu'");
if($result->num_rows) { 
$this->load->model('setting/setting');
$custom_block_inside_menu=$this->model_setting_setting->getSetting('custom_block_inside_menu');
}
else {
  $custom_block_inside_menu=0;
}
?>
<?php $stores = array();
$this->load->model('setting/store');
$stores = $this->model_setting_store->getStores();?> 
    

<?php if ($this->MsLoader->MsSeller->getStatus($this->customer->getId()) == MsSeller::STATUS_ACTIVE) { ?>
    <ul id="nav">

<li class="level1 nav-6-1 parent item"><a href="<?php echo $home; ?>"><?php echo $text_home; ?></a></li>
<li class="level1 nav-6-1 parent item"><a href="<?php echo $product_list; ?>">Products</a></li>
<li class="level1 nav-6-1 parent item"><a href="<?php echo $subscribe; ?>">Subscribe</a></li>
</ul>

<?php }else{?>
    <?php if ($categories) { ?>

    <ul id="nav">
    <?php if($this->config->get('magikdefault_tophome')==1){ ?>
<li class="active level0 level-top parent drop-menu" id="tab_home"><a class="level-top" href="<?php echo $home;?>"><span>Home</span></a>

<?php if($this->config->get('magikdefault_tophome_store_link')==1) { ?>
<ul style="display: none;" class="level1">
<?php foreach ($stores as $store) { ?>
<li class="level1 parent"><a href="<?php echo $store['url']?>"><span><?php echo $store['name']?></span></a></li>
<?php }?>
</ul><?php } ?>

</li><?php }?>

    <?php foreach ($categories as $category) { ?>
    <li class="level0 level-top parent <?php if($category['category_id']==$cat_id) {echo 'active'; }?>">

<?php if($category['category_id']==$cat_id) {?>
<script>jQuery("#tab_home").removeClass('active');
</script>
<?php }?>

      <a href="<?php echo $category['href']; ?>">
      <span><?php echo $category['name']; ?></span>  </a>
      <?php if ($category['children']) { ?>
      <div style="left: 0px; display: none;" class="level0-wrapper dropdown-6col">
      
<?php    for($b=0;$b<=count($custom_block_inside_menu['custom_block_inside_menu_module']);$b++){
if(isset($custom_block_inside_menu['custom_block_inside_menu_module'][$b]['category_id']) && $custom_block_inside_menu['custom_block_inside_menu_module'][$b]['category_id']==$category['category_id'] && $custom_block_inside_menu['custom_block_inside_menu_module'][$b]['position']=='top' && $custom_block_inside_menu['custom_block_inside_menu_module'][$b]['status']==1){
echo html_entity_decode($custom_block_inside_menu['custom_block_inside_menu_module'][$b]['content']);
}
}?>


      <div class="level0-wrapper2">
      <div class="nav-block nav-block-center">
      <?php for ($i = 0; $i < count($category['children']);) { ?>
      
      <ul class="level0">
      <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
      <?php for (; $i < $j; $i++) { ?>
      <?php if (isset($category['children'][$i])) { ?>
      <li class="level1 nav-6-1 parent item"><a href="<?php echo $category['children'][$i]['href']; ?>"><span><?php echo $category['children'][$i]['name']; ?></span></a>
        <?php //print_r($category['children'][$i]['children']);?>
<?php if(count($category['children'][$i]['children']) )
  {?>
        <ul class="level1">

          <?php for($m=0;$m<count($category['children'][$i]['children']);$m++){
            ?>
          <li class="level2 nav-6-1-1"><a href="<?php echo $category['children'][$i]['children'][$m]['href'];?>"><span><?php echo $category['children'][$i]['children'][$m]['name']?></span></a></li>


  <?php  }?>
  </ul>
  <?php }?>
      </li>
      <?php } ?>
      <?php } ?>
      </ul>
      
      <?php } ?>
      
      </div>
      </div>
      <?php    for($b=0;$b<=count($custom_block_inside_menu['custom_block_inside_menu_module']);$b++){
if(isset($custom_block_inside_menu['custom_block_inside_menu_module'][$b]['category_id']) && $custom_block_inside_menu['custom_block_inside_menu_module'][$b]['category_id']==$category['category_id'] && $custom_block_inside_menu['custom_block_inside_menu_module'][$b]['position']=='bottom' && $custom_block_inside_menu['custom_block_inside_menu_module'][$b]['status']==1){
echo html_entity_decode($custom_block_inside_menu['custom_block_inside_menu_module'][$b]['content']);
}
}?>
      </div>  
      <?php } ?>
    </li>
    <?php } ?>
    <?php if($this->config->get('magikdefault_menubar_customblock') == 1)
    {

     echo '<li class="nav-custom-link level0 level-top parent"><a class="level-top"><span>'.$this->config->get('magikdefault_menubar_customblock_title').'</span></a><div class="level0-wrapper custom-menu" style="display:none;"><div class="header-nav-dropdown-wrapper clearer">'.html_entity_decode($this->config->get('magikdefault_menubar_customblock_content')).'</div></div></li>';

    }
    ?>
    </ul>

    <?php } ?>

<?php } ?>

</div>


  <script type="text/javascript">
        //<![CDATA[

            jQuery(function($) {
                $("#nav > li").hover(function() {
                    var el = $(this).find(".level0-wrapper");
                    el.hide();
                    el.css("left", "0");
                    el.stop(true, true).delay(150).fadeIn(300, "easeOutCubic");
                }, function() {
                    $(this).find(".level0-wrapper").stop(true, true).delay(300).fadeOut(300, "easeInCubic");
                });
            });

            var isTouchDevice = ('ontouchstart' in window) || (navigator.msMaxTouchPoints > 0);
            jQuery(window).on("load", function() {

                if (isTouchDevice)
                {
                    jQuery('#nav a.level-top').click(function(e) {
                        $t = jQuery(this);
                        $parent = $t.parent();
                        if ($parent.hasClass('parent'))
                        {
                            if ( !$t.hasClass('menu-ready'))
                            {                    
                                jQuery('#nav a.level-top').removeClass('menu-ready');
                                $t.addClass('menu-ready');
                                return false;
                            }
                            else
                            {
                                $t.removeClass('menu-ready');
                            }
                        }
                    });
                }

            }); //end: on load

        //]]>
        </script>
  <script type="text/javascript">
//<![CDATA[
    jQuery(document).ready(function(){
        var scrolled = false;
        jQuery("#nav li.level0.drop-menu").mouseover(function(){
            if(jQuery(window).width() >= 740){
                jQuery(this).children('ul.level1').fadeIn(100);
            }
            return false;
        }).mouseleave(function(){
            if(jQuery(window).width() >= 740){
                jQuery(this).children('ul.level1').fadeOut(100);
            }
            return false;
        });
        jQuery("#nav li.level0.drop-menu li").mouseover(function(){
            if(jQuery(window).width() >= 740){
                jQuery(this).children('ul').css({top:0,left:"165px"});
                var offset = jQuery(this).offset();
                if(offset && (jQuery(window).width() < offset.left+325)){
                    jQuery(this).children('ul').removeClass("right-sub");
                    jQuery(this).children('ul').addClass("left-sub");
                    jQuery(this).children('ul').css({top:0,left:"-167px"});
                } else {
                    jQuery(this).children('ul').removeClass("left-sub");
                    jQuery(this).children('ul').addClass("right-sub");
                }
                jQuery(this).children('ul').fadeIn(100);
            }
        }).mouseleave(function(){
            if(jQuery(window).width() >= 740){
                jQuery(this).children('ul').fadeOut(100);
            }
        });
        

    });
//]]>
</script>
<?php if ($this->MsLoader->MsSeller->getStatus($this->customer->getId()) == MsSeller::STATUS_ACTIVE) { ?>

<?php }else{ ?>
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
<br /> 
<div class="top-ocart-contain">
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
<?php } ?>
</nav>

<script type="text/javascript">
    
$(window).scroll(function() {
    if ($(this).scrollTop() > 1){  
        $('nav').addClass("sticky");
    }
    else{
        $('nav').removeClass("sticky");
    }
});
</script>



<?php if ($error) { ?>
    
    <div class="warning"><?php echo $error ?><img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>
    
<?php } ?>
<div id="notification"></div>
