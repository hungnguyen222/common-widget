<cfparam name="args.tabsQry">

<cfoutput>
    <cfif args.tabsQry.recordCount>
        <ul class="nav nav-tabs" role="tablist">
            <cfloop index="i" from="1" to="#args.tabsQry.recordCount#">
                <li class="nav-item">
                    <a class="nav-link #(i==1)?'active':''#" id="#args.tabsQry['id'][i]#-tab" data-toggle="tab" href="##div#args.tabsQry['id'][i]#" role="tab">#args.tabsQry['tab'][i]#</a>
                </li>
            </cfloop>
        </ul>
        <div class="tab-content">
            <cfloop index="i" from="1" to="#args.tabsQry.recordCount#">
                <div class="tab-pane fade #(i==1)?'show active':''#" id="div#args.tabsQry['id'][i]#" role="tabpanel">#rendercontent("richeditor", args.tabsQry['content'][i])#</div>
            </cfloop>
        </div>
    </cfif>
    
</cfoutput>