if (act = 0){
	
	if (distance_to_object(obj_player) < 30){
		dialog = instance_create_depth(x,y,-1000,obj_talkbox)
		dialog.txt = "Ok Bulb Boy, change those bulbs please."
		dialog.snd = snd_man2;
		act++
	}
}
if (act = 1){
	if (obj_darkness.alpha <=0.01)and (distance_to_object(obj_player) < 30){
		dialog = instance_create_depth(x,y,-1000,obj_talkbox)
		dialog.txt = "Wow that was quick. Ok Bulb Boy, could you please turn on the TV for me?"
		dialog.snd = snd_man3;
		act++
	}else{	
	}
}

if (act = 2)and (global.has_seen_tv_ad = true){
	act ++
	alarm[0] = 40 // delay
}
if (act = 4){
	x = obj_tv.x-50
	y = obj_tv.y-12
	sprite_index = spr_father_excited
	dialog = instance_create_depth(x,y,-1000,obj_talkbox)
	dialog.txt = "Wowza! I need to get my hands on the new Bulb Man 3000. Bulb Boy, go wait outside for the trade in."
	dialog.snd = snd_man4;
	act++
}

//animate talking
if audio_is_playing(snd_man1)or audio_is_playing(snd_man2) or audio_is_playing(snd_man3) or audio_is_playing(snd_man4){
		image_speed= 1
}else{
		image_speed = 0	
}

