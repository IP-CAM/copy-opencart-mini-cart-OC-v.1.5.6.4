	/* Ajax oCart */
	$('#ocart > .heading a').live('mouseover', function() { 
		$('#ocart').addClass('active');
		
		$('#ocart').load('index.php?route=module/ocart #ocart > *');
		
		$('#ocart').live('mouseleave', function() {
			$(this).removeClass('active');
		});
	});
