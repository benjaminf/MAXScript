bf_controllerListOP (struct) functions:
---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------
	actLayerByName() || actLayerByName objs:selection names:#("Anim","anim") pos:true rot:true
	-----------------------------------------------------------------------------------------
		
		Struct :
		---------
			bf_controllerListOP
		
		Synopsis:
		----------
			Activates layer(s) based on name(s).
		
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
			Adds ctrl list(s) on object(s).
					
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
			Activates layer(s) based on index.
					
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
			Adds a new layer(s) on #obj(s).
					
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
			Changes ctrl(s) weight(s).
				
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
	renameLayer() || renameLayer objs:selection layer:1 newName:"bfLayernew" pos:false rot:false
	-----------------------------------------------------------------------------------------
					
		Struct :
		---------
			bf_controllerListOP
				
		Synopsis:
		----------
			Renames layer(s).
				
		Optional Args:
		--------------
			objs      -> arrayOfObjects to work with.           (default: selectionSet) # array
			layer     -> working layer.                         (default: 1) # integer
			newName   -> new name.                              (default: "bfLayernew") # string
			pos       -> works on position.                     (default: false) # boolean.
			rot       -> works on rotation.                     (default: false) # boolean.
						
		Infos:
		-------
			Pos - Rot are set to false.
			
			
		
--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
	deleteLayer() || deleteLayer objs:selection layer:1 pos:false rot:false warning:false 
	-----------------------------------------------------------------------------------------
					
		Struct :
		---------
			bf_controllerListOP
				
		Synopsis:
		----------
			Deletes layer(s).
				
		Optional Args:
		--------------
			objs      -> arrayOfObjects to work with.           (default: selectionSet) # array
			layer     -> working layer.                         (default: 1) # integer
			pos       -> works on position.                     (default: false) # boolean.
			rot       -> works on rotation.                     (default: false) # boolean.
			warning   -> delete layer(s) w/o warnings.			(default: false) #boolean.
						
		Infos:
		-------
			Pos - Rot are set to false.
			
			
		
		
--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------