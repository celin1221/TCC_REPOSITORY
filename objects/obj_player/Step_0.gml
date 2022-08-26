script_execute(state);

if(alarm[1]<=0){
	estamina+=1;
}

estamina = clamp(estamina, 0, max_estamina);