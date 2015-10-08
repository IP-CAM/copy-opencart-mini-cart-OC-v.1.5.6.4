<div id="ocart" class=""> 
  <div class="heading basket dropdown-toggle">
    
    <a href="<?php echo $cart ?>"><i class="icon-cart"></i>

      <div class="cart-box"><span class="title"><?php echo $heading_title; ?></span><span id="cart-total"><?php echo $text_items; ?></span></div></a>
    </div>
  <div class="content top-ocart-content">
    
    <?php if ($products || $vouchers) { ?>
    <div class="block-subtitle">Recently added item(s)</div>
    <div class="mini-cart-info">
      <table>
        <?php foreach ($products as $product) { ?>
        <tr>
          <td class="image"><?php if ($product['thumb']) { ?>
            <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
            <?php } ?></td>
          <td class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
			<?php
				$this->load->language('multiseller/multiseller');


		$seller = $this->MsLoader->MsSeller->getSeller($this->MsLoader->MsProduct->getSellerIds($product['pid'], $product['bid_id']));	

			if ($seller) {
					echo "<span class='ms-by-seller'>" . $this->language->get('ms_by') . " <a href='". $this->url->link('seller/catalog-seller/profile', 'seller_id=' . $seller['seller_id']) ."'>{$seller['ms.nickname']}</a>";
				}
			?>
            <div>
              <?php foreach ($product['option'] as $option) { ?>
              - <small><?php echo $option['name']; ?> <?php echo $option['value']; ?></small><br />
              <?php } ?>
              <?php if ($product['recurring']): ?>
              - <small><?php echo $text_payment_profile ?> <?php echo $product['profile']; ?></small><br />
              <?php endif; ?>
            </div></td>
          <td class="quantity">x&nbsp;<?php echo $product['quantity']; ?></td>
          <td class="total"><?php echo $product['total']; ?></td>
          <td class="remove"><img src="catalog/view/theme/default/image/remove-small.png" alt="<?php echo $button_remove; ?>" title="<?php echo $button_remove; ?>" onclick="(getURLVar('route') == 'checkout/cart' || getURLVar('route') == 'checkout/checkout') ? location = 'index.php?route=checkout/cart&remove=<?php echo $product['key']; ?>' : $('#cart').load('index.php?route=module/cart&remove=<?php echo $product['key']; ?>' + ' #cart > *');" /></td>
        </tr>
        <?php } ?>
        <?php foreach ($vouchers as $voucher) { ?>
        <tr>
          <td class="image"></td>
          <td class="name"><?php echo $voucher['description']; ?></td>
          <td class="quantity">x&nbsp;1</td>
          <td class="total"><?php echo $voucher['amount']; ?></td>
          <td class="remove"><img src="catalog/view/theme/default/image/remove-small.png" alt="<?php echo $button_remove; ?>" title="<?php echo $button_remove; ?>" onclick="(getURLVar('route') == 'checkout/cart' || getURLVar('route') == 'checkout/checkout') ? location = 'index.php?route=checkout/cart&remove=<?php echo $voucher['key']; ?>' : $('#cart').load('index.php?route=module/cart&remove=<?php echo $voucher['key']; ?>' + ' #cart > *');" /></td>
        </tr>
        <?php } ?>
      </table>
    </div>
    <div class="mini-cart-total top-subtotal">
      <table>
        <?php foreach ($totals as $total) { ?>
        <tr>
          <td class="left"><b><?php echo $total['title']; ?>:</b></td>
          <td class="right"><?php echo $total['text']; ?></td>
        </tr>
        <?php } ?>
      </table>
    </div>
    <div class="checkout actions"><a class="view-cart" href="<?php echo $cart; ?>"><?php echo $text_cart; ?></a>  <a class="btn-checkout" href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></div>
    
<!-- <div class="actions">
              <button type="button" class=""><span>Checkout</span></button>
              <button type="button" class=""><span>View Cart</span></button>
            </div> -->


    <?php } else { ?>
    <div class="empty"><?php echo $text_empty; ?></div>
    <?php } ?>
  </div>
</div>
