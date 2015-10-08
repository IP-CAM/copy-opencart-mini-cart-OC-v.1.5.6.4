
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/ocart.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/ocart.tpl';
		} else {
			$this->template = 'default/template/module/ocart.tpl';
		}


