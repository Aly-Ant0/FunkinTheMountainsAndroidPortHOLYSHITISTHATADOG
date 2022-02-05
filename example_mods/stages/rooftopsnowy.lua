function onCreate()
	-- background shit
	makeLuaSprite('rooftop/bg2', 'rooftop/bg2', -120, -50);
	setScrollFactor('rooftop/bg2', 0.1, 0.1);
	
--	makeLuaSprite('stage', 'stagefront', -650, 600);
--	setScrollFactor('stagefront', 0.9, 0.9);
--	scaleObject('stagefront', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('rooftop/high/thing', 'rooftop/high/thing', -220, 480);
		setScrollFactor('rooftop/high/thing', 0.4, 0.4);
	--	scaleObject('rooftop/high/thing', 1.1, 1.1);
		
		makeLuaSprite('rooftop/Houses', 'rooftop/Houses', -120, 550);
		setScrollFactor('rooftop/Houses', 1, 1);
	--	scaleObject('stagelight_right', 1.1, 1.1);
	--	setProperty('stagelight_right.flipX', true); --mirror sprite horizontally

	--	makeLuaSprite('stagecurtains', 'stagecurtains', -500, -300);
	--	setScrollFactor('stagecurtains', 1.3, 1.3);
	--	scaleObject('stagecurtains', 0.9, 0.9);
	end

	addLuaSprite('rooftop/bg2', false);
	addLuaSprite('rooftop/high/thing', false);
	addLuaSprite('rooftop/Houses', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end