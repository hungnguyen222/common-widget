component {

	public void function configure( required struct config ) {
            var conf         = arguments.config;
            var settings     = conf.settings            ?: {};
            var assetManager = settings.assetManager    ?: {};
            var derivatives  = assetManager.derivatives ?: {};

            derivatives.table_of_content = {
                  permissions = "inherit"
                  , transformations = [
                        { method="Resize", args={ width=300, height=200, maintainaspectratio=true } }
                  ]
            };
            derivatives.card = {
                  permissions = "inherit"
                  , transformations = [
                        { method="Resize", args={ width=286, height=180, maintainaspectratio=true } }
                  ]
            };
            derivatives.square200 = {
                  permissions = "inherit"
                  , transformations = [
                        { method="Resize", args={ width=200, height=200, maintainaspectratio=true } }
                  ]
            };
            derivatives.square50 = {
                  permissions = "inherit"
                  , transformations = [
                        { method="Resize", args={ width=50, height=50, maintainaspectratio=true } }
                  ]
            };

            derivatives.masonry = {
                  permissions = "inherit"
                  , transformations = [
                        { method="Resize", args={ width=260, maintainaspectratio=true } }
                  ]
            };
	}

}