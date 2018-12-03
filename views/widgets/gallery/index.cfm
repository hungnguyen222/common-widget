<cfparam name="args.images" default="">
<style>
	.grid-item {
  		margin-bottom: 10px;
	}
</style>
<cfoutput>
		<div class="grid">
			<div class="grid-item"></div>
			<cfloop list="#args.images#" index="item">
				<div class="grid-item grid-item--width2">#renderAsset( assetId=item ,args={ derivative="masonry"} )#</div>
			</cfloop>
		</div>
</cfoutput>
<cfsavecontent variable="js"><cfoutput>
<cfinclude template="masonry.pkgd.min.js">
<cfinclude template="imagesloaded.pkgd.min.js">
	// init Masonry
	var grid = document.querySelector('.grid');

	var msnry = new Masonry( grid, {
		itemSelector: '.grid-item'
		, columnWidth: 260
		, gutter: 10
	});

	imagesLoaded( grid ).on( 'progress', function() {
		// layout Masonry after each image loads
		msnry.layout();
	});
</cfoutput></cfsavecontent>
<cfset event.includeInlineJs( js ) />