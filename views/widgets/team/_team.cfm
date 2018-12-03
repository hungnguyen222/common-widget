<cfparam name="args.teamQry" default="" />

<cfoutput>
    <div class="common-widget-team">
        <cfloop index="i" from="1" to="#args.teamQry.recordCount#">
            <cfif (i-1) % 4 == 0><div class="row"></cfif>
                <div class="col" align="center">
                    <a href="#args.teamQry['link'][i]#">
                        <div class="common-widget-team-image">
                            <div class="images-container">
                                #renderAsset( assetId=args.teamQry["image"][i], args={ derivative="square200", alt="#args.teamQry["name"][i]#" } )#
                                #renderAsset( assetId=args.teamQry["icon"][i], args={ derivative="square50", alt="#args.teamQry["name"][i]#", class="icon" } )#
                            </div>
                        </div>
                    </a>
                    <div class="common-widget-team-name"><h5>#args.teamQry["name"][i]#</h5></div>
                    <div class="common-widget-team-position">#args.teamQry["position"][i]#</div>
                </div>
            <cfif (i-1) % 4 == 3></div></cfif>
        </cfloop>
    </div>
</cfoutput>