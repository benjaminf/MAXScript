
struct bf_controllerListOP (
		
	function help =
	(
		format "bf :: Controller List Operator Help \n"
		format "For specific help, use `struct.functionName help:true`.\n"
		format "----------------------------------------------------\n"
		format "Functions :\n"
		format "bf_posList objs:selection help:false\n"
		format "bf_rotList objs:selection\n"
		format "bf_actLayerPos objs:selection layer:1\n"
		format "bf_actLayerRot objs:selection layer:1\n"
		format "bf_addLayer objs:selection layerName:\"bfLayer\" pos:true rot:true act:false\n"
		format "bf_changeWeight objs:selection layer:1 W:100 pos:false rot:false\n"
		format "bf_renameLayer objs:selection layer:1 newName:\"bfLayernew\" pos:false rot:false\n"
		format "bf_deleteLayer objs:selection layer:1 pos:false rot:false warning:false \n"
		format "----------------------------------------------------\n"
	)

,function actLayerByName objs:selection names:#("Anim","anim") pos:true rot:true = 
(
	if (objs.count>0 and names.count>0)then
	(
		
	if (pos)then
		(
			for i=1 to objs.count do (		-- All objs
				try (subAnimCount=objs[i].controller.position.controller.count)catch() -- NB Layers
					
						for o=1 to subAnimCount do ( -- Objs sub anims layers
							try(
								subAnimName=objs[i].controller.position.controller[o].name
								
								good=false
								
								for u=1 to names.count do (
								
									if (good)then(break)
									
									if (subAnimName == names[u]) then
									(
										objs[i].controller.position.controller.setActive o
										good=true
									)
								)
							)catch()
					)
			)
		)
		if (rot)then
		(
			for i=1 to objs.count do (		-- All objs
				try (subAnimCount=objs[i].controller.rotation.controller.count)catch() -- NB Layers
					
						for o=1 to subAnimCount do ( -- Objs sub anims layers
							try(
								subAnimName=objs[i].controller.rotation.controller[o].name
								
								good=false
								
								for u=1 to names.count do (
								
									if (good)then(break)
									
									if (subAnimName == names[u]) then
									(
										objs[i].controller.rotation.controller.setActive o
										good=true
									)
								)
							)catch()
					)
			)
		)
	)
)	
	
,function addCtrlList objs:selection pos:true rot:true = 
(
	if(objs.count>0)then
	(
	
		if (pos)then
		(
			for i=1 to objs.count do
					(
						layerCount=0
						try (layerCount=objs[i].position.controller.count)catch()
						if (layerCount>0)then()else
						(
							objs[i].controller.position.controller = Position_List()
						)
					)
		)
		
		if (rot)then
		(
			for i=1 to objs.count do
				(
						layerCount=0
						try (layerCount=objs[i].rotation.controller.count)catch()
						if (layerCount>0)then()else
						(
							objs[i].controller.rotation.controller = Rotation_List()
						)
				)
		)
		return true
	)
	else (return false)
)





--Position/Roation List Activation
-- actLayerPos objs layer
-- actLayerRot objs layer
,function actLayer objs:selection layer:1 pos:true rot:true =
(
	if (objs.count>0 and layer>0)then
	(
	
		if (pos)then
		(
			for i=1 to objs.count do 
			(
				try(objs[i].pos.controller.setActive layer) catch()
			)
		)
		if (rot)then
		(
			for i=1 to objs.count do 
			(
				try(objs[i].rotation.controller.setActive layer) catch()
			)	
		)
		return true
	)
	else(return false)
)

-- ADD NEW Controller into the list POS/ROT SAFE ! 100% Safe
-- addLayer objs=#(objects) layerName="name" pos=true rot=true act=activate true
,function addLayer objs:selection layerName:"bfLayer" pos:true rot:true act:false = 
(
		if (objs.count > 0 and layerName!="") then
		(
			for i=1 to objs.count do
			(
				if (pos) then
				(
					layerCount=0
					try (layerCount=objs[i].position.controller.count)catch()
					if (layerCount>0)then
					(
						objs[i].pos.controller.available.controller = Position_XYZ()
						objs[i].pos.controller.setName (layerCount+1) layerName
					)
					else
					(
						objs[i].controller.position.controller = Position_List()
						objs[i].pos.controller.available.controller = Position_XYZ()
						
						layerCount=objs[i].position.controller.count
						objs[i].pos.controller.setName layerCount layerName
					)
					if (act)then
					(
						try	(
							layerCount=objs[i].position.controller.count
							objs[i].pos.controller.setActive layerCount
						)
						catch()
					)
				)
				
				
				
				if (rot) then
				(
					layerCount=0
					try (layerCount=objs[i].rotation.controller.count)catch()
					if (layerCount>0)then
					(
						objs[i].rotation.controller.available.controller = Euler_XYZ()
						objs[i].rotation.controller.setName (layerCount+1) layerName
					)
					else
					(
						objs[i].controller.rotation.controller = Rotation_List()
						objs[i].rotation.controller.available.controller = Euler_XYZ()
						
						layerCount=objs[i].rotation.controller.count
						objs[i].rotation.controller.setName layerCount layerName
					)
					if (act)then
					(
						try	(
							layerCount=objs[i].rotation.controller.count
							objs[i].rotation.controller.setActive layerCount
						)
						catch()
					)
				)
				
			)
			return true
		)
		return false
)

-- CHANGE Weights SAFE
-- changeWeight objs=#(objects) layer=1 W=weight pos=true rot=true
,function changeWeight objs:selection layer:1 W:100.0 pos:false rot:false = 
(
	if (objs.count!=0) then
		(
				for i=1 to objs.count do
				(
					if(pos)then
					(
						try (
							objs[i].pos.controller.weight[layer]=W
						)
						catch()
					)
					if(rot)then
					(
						try (
							objs[i].rotation.controller.weight[layer]=W
						)
						catch()
					)
				)
				return true
		)
		return false
)

-- RENAME Layer SAFE
--  bf_renameLayer oobjs=#(objects) layer=1 newName pos=true rot=true
,function renameLayer objs:selection layer:1 newName:"bfLayernew" pos:false rot:false  = (
	
	if(objs.count>0 and layer>0 and newName!="" and (pos or rot)) then
	(
		if(pos)then
		(
			try (
				objs[i].position.controller.setName layer newName
			)
			catch()
		)
		if(rot)then
		(
			try (
				objs[i].rotation.controller.setName layer newName
			)
			catch()
		)
		return true
	)
	return false
)

-- DELETE Layer SAFE
--  bf_deleteLayer oobjs=#(objects) layer=1 pos=true rot=true warning=FALSE
,function deleteLayer objs:selection layer:1 pos:false rot:false warning:false = (
		if (objs.count>0 and layer>0 and (pos or rot)) then
		(
			local question="+ This will delete/break every keys/links related to the layer "+(layer as string)+" +"
			if (warning and (queryBox question  beep:true title:"::: WARNING :::"))then
			(
				for i=1 to objs.count do
				(
					try (
							objs[i].rotation.controller.delete layer)
						catch()
					try (
							objs[i].position.controller.delete layer)
					catch()
			)
		)
			else
			(
				for i=1 to objs.count do
				(
					try (
							objs[i].rotation.controller.delete layer)
						catch()
					try (
							objs[i].position.controller.delete layer)
					catch()
			)
		)
	return true	
	)
	return false
)
)
/*-----------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------*/