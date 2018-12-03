<cfparam name="args.title" 		default = "">
<cfparam name="args.timelines" 	default = "">
<style>
	ul.timeline {
		list-style-type: none;
		position: relative;
	}
	ul.timeline:before {
		content: ' ';
		background: #d4d9df;
		display: inline-block;
		position: absolute;
		left: 29px;
		width: 2px;
		height: 100%;
		z-index: 400;
	}
	ul.timeline > li {
		margin: 20px 0;
		padding-left: 20px;
	}
	ul.timeline > li:before {
		content: ' ';
		background: white;
		display: inline-block;
		position: absolute;
		border-radius: 50%;
		border: 3px solid #22c0e8;
		left: 20px;
		width: 20px;
		height: 20px;
		z-index: 400;
	}
</style>
<cfoutput>
	
	<h4>#args.title#</h4>
	<ul class="timeline">
		#renderView( view="/widgets/timeline/_timeline"
			, presideObject = "common_widget_timeline"
			, filter        = "common_widget_timeline.id IN (:common_widget_timeline.id)"
			, filterParams  = { "common_widget_timeline.id" = listToArray( args.timelines ) }
			, orderBy       = "common_widget_timeline.date DESC"
		)#
	</ul>

</cfoutput>