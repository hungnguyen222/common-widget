<cfparam name="args.id" 		default="" field="common_widget_timeline.id" />
<cfparam name="args.title" 		default="" field="common_widget_timeline.title" />
<cfparam name="args.link" 		default="" field="common_widget_timeline.link" />
<cfparam name="args.date" 		default="" field="common_widget_timeline.date" />
<cfparam name="args.content" 	default="" field="common_widget_timeline.content" />
<cfoutput>
	<li>
		<a target="_blank" href="#args.link#">#args.title#</a>
		<a href="#args.link#" class="float-right">#dateFormat(args.date, "dd-mm-yyyy")#</a>
		<p>#rendercontent("richeditor", args.content)#</p>
	</li>
</cfoutput>