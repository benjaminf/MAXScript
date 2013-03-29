Functions:
---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------
	actLayerByName() || actLayerByName objs:selection names:#("Anim","anim") pos:true rot:true
	-----------------------------------------------------------------------------------------
		
		Struct :
		---------
			bf_controllerListOP
		
		Synopsis:
		----------
			Activate layers based on names.
		
		Optional Args:
		--------------
			objs  -> arrayOfObjects to work with.           (default: selectionSet) # array
			names -> layers based on this array of strings. (default: "anim","Anim") # array
			pos   -> works on position.                     (default: true) # boolean.
			rot   -> works on rotation.                     (default: true) # boolean.
			
		Infos:
		-------
			Safe to use with any object.
			
			
			
			
			
-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------
	addCtrlList() || addCtrlList objs:selection pos:true rot:true
	-----------------------------------------------------------------------------------------
					
		Struct :
		---------
			bf_controllerListOP
					
		Synopsis:
		----------
			Add ctrl lists on objects.
					
		Optional Args:
		--------------
			objs  -> arrayOfObjects to work with.           (default: selectionSet) # array
			pos   -> works on position.                     (default: true) # boolean.
			rot   -> works on rotation.                     (default: true) # boolean.
						
		Infos:
		-------
			Safe to use with any object. (Will not add sub-lists.)
	
			
	
	

-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------
	actLayer() || actLayer objs:selection layer:1 pos:true rot:true
	-----------------------------------------------------------------------------------------
					
		Struct :
		---------
			bf_controllerListOP
					
		Synopsis:
		----------
			Activate layers based on index.
					
		Optional Args:
		--------------
			objs  -> arrayOfObjects to work with.           (default: selectionSet) # array
			layer -> layer to activate.                     (default: 1) # integer.
			pos   -> works on position.                     (default: true) # boolean.
			rot   -> works on rotation.                     (default: true) # boolean.
						
		Infos:
		-------
			Safe to use with any object.
	
			
			
			
---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------
	addLayer() || addLayer objs:selection layerName:"bfLayer" pos:true rot:true act:false
	-----------------------------------------------------------------------------------------
					
		Struct :
		---------
			bf_controllerListOP
					
		Synopsis:
		----------
			Add a new layer on #objs.
					
		Optional Args:
		--------------
			objs      -> arrayOfObjects to work with.           (default: selectionSet) # array
			layerName -> new layer name.                        (default: "bfLayer") # string
			pos       -> works on position.                     (default: true) # boolean.
			rot       -> works on rotation.                     (default: true) # boolean.
			act       -> activates layer.                       (default: false) # boolean.
						
		Infos:
		-------
			Safe to use with any object. ( Lists will be added if needed. )

			
			
		
--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
	changeWeight() || changeWeight objs:selection layer:1 W:100.0 pos:false rot:false
	-----------------------------------------------------------------------------------------
					
		Struct :
		---------
			bf_controllerListOP
				
		Synopsis:
		----------
			Changes ctrls weights.
				
		Optional Args:
		--------------
			objs      -> arrayOfObjects to work with.           (default: selectionSet) # array
			layer     -> working layer.                         (default: 1) # integer
			W         -> new weight.                            (default: 100.0) # float
			pos       -> works on position.                     (default: false) # boolean.
			rot       -> works on rotation.                     (default: false) # boolean.
						
		Infos:
		-------
			Pos - Rot are set to false.
			
			
		
--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------