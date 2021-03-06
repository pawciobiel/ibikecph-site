# Holds references to all the important models and collections for a given
# instance of the app. Also contains the route (model attribute `route`) as a
# compressed string, see OSRM API documentation.

class IBikeCPH.Models.Search extends Backbone.Model

	initialize: ->
		@waypoints    	= new IBikeCPH.Collections.Waypoints
		@instructions 	= new IBikeCPH.Collections.Instructions
		@summary      	= new IBikeCPH.Models.Summary
		@profile		= 'standard'
		
	reset: ->
		@waypoints.reset()
		@instructions.reset()
		@summary.reset()
		@set 'route', ''
		@profile			= 'standard'
		