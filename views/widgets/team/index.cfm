<cfparam name="args.teams" default="">

<style>
    .common-widget-team-image img {
        border-radius: 50%;
    }
    .common-widget-team-image .images-container {
        width: 200px;
		position: relative !important;
    }
	.common-widget-team-image img.icon {
		position: absolute;
		top: 0;
		right: 15px;
	}
	.common-widget-team-image, .common-widget-team-name, .common-widget-team-position {
		margin-bottom: 10px;
	}
</style>

<cfoutput>
		#renderView( view="/widgets/team/_team", args=args )#
</cfoutput>