/// @description stop pecking
sprite_index = chicken_walk
path_start(chicken_path, 0.7, path_action_continue, false)
alarm[0] = random_range(4 *room_speed, 10 * room_speed)