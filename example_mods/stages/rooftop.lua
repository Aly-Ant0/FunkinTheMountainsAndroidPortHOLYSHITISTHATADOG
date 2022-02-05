function onCreate()
	-- background shit
	makeLuaSprite('rooftop/bg', 'rooftop/bg', -120, -50);
	setScrollFactor('rooftop/bg', 0.1, 0.1);
	
--	makeLuaSprite('stage', 'stagefront', -650, 600);
--	setScrollFactor('stagefront', 0.9, 0.9);
--	scaleObject('stagefront', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('rooftop/high/thing', 'rooftop/high/thing', -220, 480);
		setScrollFactor('rooftop/high/thing', 0.4, 0.4);
	--	scaleObject('rooftop/high/thing', 1.1, 1.1);
		
		makeLuaSprite('rooftop/House', 'rooftop/House', -120, 550);
		setScrollFactor('rooftop/House', 1, 1);
	--	scaleObject('stagelight_right', 1.1, 1.1);
	--	setProperty('stagelight_right.flipX', true); --mirror sprite horizontally

		makeLuaSprite('rooftop/high/Snow', 'rooftop/high/Snow', 0, 0);
		setScrollFactor('rooftop/high/Snow', 0, 0);
		scaleObject('rooftop/high/Snow', 0, 0);
	end

	addLuaSprite('rooftop/bg', false);
	addLuaSprite('rooftop/high/thing', false);
	addLuaSprite('rooftop/House', false);
	addLuaSprite('rooftop/high/Snow', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end