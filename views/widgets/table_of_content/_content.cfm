<cfoutput>
    <div class="row" id="common-widget-table-of-content">
        <cfloop index="i" from="1" to="#args.contentList.recordCount#">
           
                <div class="col-md-4 col-sm-6 col-xs-12">
                    <div class="content">
                        #renderAsset( assetId=args.contentList["image"][i], args={ derivative="table_of_content", alt="#args.contentList['title'][i]#" } )#
                    </div>
                    <div class="content">
                        <a
                            <cfif len(args.contentList['link'][i])>
                                href="#args.contentList['link'][i]#"
                            </cfif>
                        >
                            <h4>#args.contentList["title"][i]#</h4>
                        </a>
                    </div>
                    <div class="content">#args.contentList["teaser"][i]#</div>
                </div>
            
        </cfloop>
    </div>
</cfoutput>