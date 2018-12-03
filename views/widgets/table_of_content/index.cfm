<cfparam name="args.contens" default="" />
<style>
    .content img {
        max-width: 100%;
    }
   
</style>
<cfoutput>
		#renderView( view="/widgets/table_of_content/_content", args=args )#
</cfoutput>