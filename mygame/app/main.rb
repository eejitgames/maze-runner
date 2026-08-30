module DisplayConfig
  SCREEN_WIDTH = 84
  SCREEN_HEIGHT = 48
  MAP_WIDTH = 21
  MAP_HEIGHT = 10
  CELL_SIZE = 4
  WALL_THICKNESS = 1

  COLORS = {
    background: { r: 43, g: 63, b: 9 },
    playfield: { r: 43, g: 63, b: 9 },
    wall: { r: 155, g: 199, b: 0 }
  }

  PLAYFIELD_SPRITE = {
    x: 0,
    y: 0,
    w: SCREEN_WIDTH,
    h: SCREEN_HEIGHT,
    path: :solid,
    **COLORS[:playfield]
  }
end

module PlayerConfig
  PLAYER_WIDTH = 8
  PLAYER_HEIGHT = 9
  PLAYER_HIT_WIDTH = 8
  PLAYER_HIT_HEIGHT = 11
  PLAYER_HIT_FRAME_COUNT = 4
  PLAYER_SPRITE_PATHS = [
    "sprites/player_0.png",
    "sprites/player_1.png",
    "sprites/player_2.png",
    "sprites/player_3.png"
  ]
  PLAYER_HIT_SPRITE_PATHS = [
    "sprites/player_hit_0.png",
    "sprites/player_hit_1.png",
    "sprites/player_hit_2.png",
    "sprites/player_hit_3.png"
  ]
  PLAYER_SHOOT_SPRITE_PATHS = {
    n: "sprites/player_shoot_n.png",
    ne: "sprites/player_shoot_ne.png",
    e: "sprites/player_shoot_e.png",
    se: "sprites/player_shoot_se.png",
    s: "sprites/player_shoot_s.png",
    sw: "sprites/player_shoot_sw.png",
    w: "sprites/player_shoot_w.png",
    nw: "sprites/player_shoot_nw.png"
  }
  PLAYER_SHOOT_PIXEL_PATHS = PLAYER_SHOOT_SPRITE_PATHS.values.uniq
  PLAYER_START_X = 6
  PLAYER_START_Y = 19
  PLAYER_LIFE_MAX = 5
  PLAYER_MOVE_TICKS = 3
  PLAYER_MOVE_REPEAT_TICKS = PLAYER_MOVE_TICKS
  PLAYER_ANIMATION_TICKS = 9
  PLAYER_SHOOT_STANDING_TICKS = PLAYER_ANIMATION_TICKS
  PLAYER_HIT_FRAME_TICKS = 6
  PLAYER_HIT_CYCLES = 5
  PLAYER_DEATH_TICKS = PLAYER_HIT_FRAME_TICKS * PLAYER_HIT_FRAME_COUNT *
                       PLAYER_HIT_CYCLES
end

module ProjectileConfig
  PLAYER_SHOOT_TICKS = 20
  PLAYER_SHOOT_COOLDOWN_TICKS = 10
  PLAYER_BULLET_STEP_TICKS = 2
  PLAYER_BULLET_LIMIT = 1
  ROBOT_BULLET_WIDTH = 2
  ROBOT_BULLET_HEIGHT = 2
  ROBOT_BULLET_STEP_TICKS = 5
  ROBOT_BULLET_FIRE_STOP_TICKS = 10
  ROBOT_SHOOT_VERTICAL_X_RANGE = [-2, 5]
  ROBOT_SHOOT_HORIZONTAL_Y_RANGE = [-4, 6]
  ROBOT_SHOOT_DIAGONAL_Y_MINUS_X_RANGE = [-10, 5]
  PLAYER_BULLET_OFFSETS = {
    n: [6, 8], ne: [7, 8], e: [8, 4], se: [7, 1],
    s: [6, 1], sw: [-1, 1], w: [-2, 4], nw: [-1, 8]
  }
  PLAYER_BULLET_SPRITE_PATHS = {
    n: "sprites/bullet_up_down.png",
    ne: "sprites/bullet_ne_sw.png",
    e: "sprites/bullet_left_right.png",
    se: "sprites/bullet_nw_se.png",
    s: "sprites/bullet_up_down.png",
    sw: "sprites/bullet_ne_sw.png",
    w: "sprites/bullet_left_right.png",
    nw: "sprites/bullet_nw_se.png"
  }
  PLAYER_BULLET_PIXEL_PATHS = PLAYER_BULLET_SPRITE_PATHS.values.uniq
  PLAYER_SHOOT_VELOCITIES = {
    n: [0, 1], ne: [1, 1], e: [1, 0], se: [1, -1],
    s: [0, -1], sw: [-1, -1], w: [-1, 0], nw: [-1, 1]
  }
  ROBOT_BULLET_OFFSETS = {
    n: [3, 8], ne: [7, 7], e: [8, 3], se: [7, -1],
    s: [3, -2], sw: [-1, -1], w: [-2, 3], nw: [-1, 7]
  }
end

module RobotConfig
  ROBOT_DIFFICULTY_TABLE = [
    { score: 0,     bullet_limit: 0, fire_wait: 960 },
    { score: 300,   bullet_limit: 1, fire_wait: 960 },
    { score: 1500,  bullet_limit: 2, fire_wait: 240 },
    { score: 3000,  bullet_limit: 3, fire_wait: 120 },
    { score: 4500,  bullet_limit: 4, fire_wait: 120 },
    { score: 6000,  bullet_limit: 5, fire_wait: 180 },
    { score: 9000,  bullet_limit: 1, fire_wait: 720 },
    { score: 10000, bullet_limit: 1, fire_wait: 540 },
    { score: 11000, bullet_limit: 2, fire_wait: 420 },
    { score: 13000, bullet_limit: 3, fire_wait: 300 },
    { score: 15000, bullet_limit: 4, fire_wait: 240 },
    { score: 17000, bullet_limit: 5, fire_wait: 180 },
    { score: 19000, bullet_limit: 5, fire_wait: 120 }
  ]
  ROBOT_WIDTH = 8
  ROBOT_HEIGHT = 8
  ROBOT_STAND_FRAME_COUNT = 6
  ROBOT_ANIMATION_TICKS = 12
  ROBOT_AI_TICKS = 5
  ROBOT_MOVE_TICKS_INITIAL = 30
  ROBOT_MOVE_TICKS_MIN = 5
  ROBOT_PLAYER_Y_OFFSET = 0
  ROBOT_IQ_PROBE_OFFSETS = [[-1, -1], [8, -1], [8, 8], [-1, 8]]
  ROBOT_EXPLOSION_WIDTH = 16
  ROBOT_EXPLOSION_HEIGHT = 18
  ROBOT_EXPLOSION_FRAME_TICKS = 6
  ROBOT_EXPLOSION_FRAME_COUNT = 4
  ROBOT_EXPLOSION_OFFSET_X = -4
  ROBOT_EXPLOSION_OFFSET_Y = -5
  ROBOT_SPRITE_PATHS = [
    "sprites/robot_stand_0.png",
    "sprites/robot_stand_1.png",
    "sprites/robot_stand_2.png",
    "sprites/robot_stand_3.png",
    "sprites/robot_stand_4.png",
    "sprites/robot_stand_5.png"
  ]
  ROBOT_MOVE_LEFT_SPRITE_PATHS = [
    "sprites/robot_move_left_0.png",
    "sprites/robot_move_left_1.png"
  ]
  ROBOT_MOVE_RIGHT_SPRITE_PATHS = [
    "sprites/robot_move_right_0.png",
    "sprites/robot_move_right_1.png"
  ]
  ROBOT_MOVE_DOWN_SPRITE_PATHS = [
    "sprites/robot_move_down_0.png",
    "sprites/robot_move_down_1.png"
  ]
  ROBOT_MOVE_UP_SPRITE_PATHS = [
    "sprites/robot_move_up_0.png",
    "sprites/robot_move_up_1.png"
  ]
  ROBOT_PIXEL_PATHS = ROBOT_SPRITE_PATHS + ROBOT_MOVE_LEFT_SPRITE_PATHS +
                      ROBOT_MOVE_RIGHT_SPRITE_PATHS + ROBOT_MOVE_DOWN_SPRITE_PATHS +
                      ROBOT_MOVE_UP_SPRITE_PATHS
  ROBOT_EXPLOSION_SPRITE_PATHS = [
    "sprites/robot_explode_0.png",
    "sprites/robot_explode_1.png",
    "sprites/robot_explode_2.png",
    "sprites/robot_explode_3.png"
  ]
  ROBOT_SPAWN_ATTEMPT_COUNT = 11
  ROBOT_SPAWN_THRESHOLD_INITIAL = 0x60
  ROBOT_SPAWN_THRESHOLD_INCREMENT = 0x60
  ROBOT_SOURCE_WIDTH = 256
  ROBOT_SOURCE_HEIGHT = 224
  ROBOT_SPAWN_BASES = [
    [206, 150], [160, 150], [64, 150], [12, 150],
    [158, 80], [112, 80], [64, 80],
    [206, 12], [160, 12], [64, 12], [12, 12]
  ]
  ROBOT_SPAWN_Y_RANGES = {
    150 => [32, 40],
    80 => [14, 26],
    12 => [2, 9]
  }
  ROBOT_FORBIDDEN_SECTIONS = [
    { x: 33, y: 31, w: 16, h: 17 },
    { x: 33, y: 0, w: 16, h: 16 },
    { x: 0, y: 16, w: 17, h: 15 },
    { x: 65, y: 16, w: 19, h: 15 }
  ]
  ROBOT_ZONE_X_BOUNDS = [0, 17, 33, 49, 65, DisplayConfig::SCREEN_WIDTH]
  ROBOT_ZONE_Y_BOUNDS = [0, 16, 31, DisplayConfig::SCREEN_HEIGHT]
  ROBOT_ZONE_MAP_X_BOUNDS = [0, 4, 8, 12, 16, DisplayConfig::MAP_WIDTH]
  ROBOT_ZONE_MAP_Y_BOUNDS = [0, 3, 6, DisplayConfig::MAP_HEIGHT]
end

module RoomConfig
  ROOM_TRANSITION_TICKS = 110
  ROOM_TRANSITION_PAUSE_TICKS = 20
  ROOM_TRANSITION_TOTAL_TICKS = ROOM_TRANSITION_TICKS +
                                ROOM_TRANSITION_PAUSE_TICKS
  MAP_ROW_Y = [1, 6, 11, 16, 21, 26, 31, 36, 41, 46]
  ROOM_NUMBER_LIMIT = 0x10000
  WALL_WIDTH = 3
  WALL_HEIGHT = 2
  PILLARS = [
    [4, 6], [8, 6], [12, 6], [16, 6],
    [4, 3], [8, 3], [12, 3], [16, 3]
  ]
  DIRECTIONS = [:north, :south, :east, :west]
end

module GameConfig
  ROBOT_DESTROY_SCORE = 50
  ROOM_CLEAR_SCORE_PER_ROBOT = 10
  INITIAL_HUMANOIDS = 3
  EXTRA_HUMANOID_INTERVAL = 5000
  HIGH_SCORE_FILE_PATH = 'data/high_score.txt'
  SOUND_EFFECTS = {
    bullet: ['sounds/bullet.ogg', 0.3, 1.0, 0],
    robot_explosion: ['sounds/hit.ogg', 0.3, 1.0, 1],
    extra_life: ['sounds/life.ogg', 0.2, 1.0, 2],
    player_zapped: ['sounds/zapped.ogg', 0.2, 0.8, 3],
    game_over: ['sounds/you-lost.ogg', 0.3, 1.0, 4]
  }
  GAME_OVER_RESTART_DELAY_TICKS = 60
end

module HudConfig
  HUD_FONT_PATH = "fonts/04b_03.ttf"
  HUD_LABEL_SIZE = 8
  PLAYER_LIFE_SPRITE_PATH = "sprites/player_life.png"
  PLAYER_LIFE_WIDTH = 7
  PLAYER_LIFE_HEIGHT = 9
  PLAYER_LIFE_GAP = 1
  SCORE_LABEL_X = 3
  SCORE_LABEL_Y = 9
  SCORE_PANEL_PADDING = 2
  SCORE_PANEL_X = 1
  SCORE_PANEL_Y = 2
  SCORE_PANEL_HEIGHT = 7
  SCORE_BORDER_X = 1
  SCORE_BORDER_Y = 1
  SCORE_BORDER_HEIGHT = 9
  GAME_OVER_PANEL_RECT = {
    x: 8, y: 16, w: 69, h: 16, path: :solid,
    **DisplayConfig::COLORS[:background]
  }
  GAME_OVER_BORDER_RECT = {
    x: 8, y: 16, w: 69, h: 16,
    **DisplayConfig::COLORS[:wall]
  }
  TITLE_SCREEN_BORDER_RECT = {
    x: 7, y: 4, w: 70, h: 41,
    **DisplayConfig::COLORS[:wall]
  }
end

module OttoBehavior
  OTTO_ANIMATION_TICKS = 5
  OTTO_MOVE_TICKS = 5
  OTTO_DIRECTION_TICKS = 4
  OTTO_VERTICAL_TARGET_OFFSET = -8
  OTTO_TIMER_UNIT_TICKS = 40
  OTTO_CHASE_DELAY_TICKS = OTTO_TIMER_UNIT_TICKS

  def reset_otto_spawn
    # The ROM delays Otto by ROBOT_SPEED + RSAVED + RBOLTS. Its timer job uses
    # $28 (40) frame ticks per unit; robot movement has a separate cadence.
    @otto_active = false
    @otto_spawn_countdown_ticks =
      ((@otto_robot_speed_units + @room_robot_count + @robot_bullet_limit) *
      OTTO_TIMER_UNIT_TICKS * 3).idiv(2)
    # ROM clamps the start vector only when the player is near a horizontal
    # edge, or above the top threshold: $18/$E6 become 8/74 and $A0 becomes 32
    # in the 84 x 48 playfield.
    @otto_x = @player_x < 8 ? 1 : @player_x
    @otto_x = 81 if @player_x >= 74
    @otto_y = @player_y >= 37 ? 32 : @player_y
    @otto_spawn_frame = 0
    @otto_bouncing = false
    @otto_bounce_frame = 0
    @otto_bounce_direction = 1
    @otto_animation_ticks = 0
    @otto_chase_delay_ticks = OTTO_CHASE_DELAY_TICKS
    @otto_move_ticks = 0
    @otto_direction_ticks = 0
    @otto_velocity_x = 0
    @otto_velocity_y = 0
  end

  def update_otto
    unless @otto_active
      if @otto_spawn_countdown_ticks > 0
        @otto_spawn_countdown_ticks -= 1
      else
        @otto_active = true
      end
      return
    end

    # The ROM advances Otto's pattern pointer with the same repeating vector
    # timer used for movement. Spawn frame 6 and bounce frame 0 are identical,
    # so the first bounce frame after the spawn sequence is frame 1.
    @otto_animation_ticks += 1
    if @otto_animation_ticks >= OTTO_ANIMATION_TICKS
      @otto_animation_ticks = 0
      if @otto_bouncing
        @otto_bounce_frame += @otto_bounce_direction
        last_frame = @otto_bounce_paths.length - 1
        if @otto_bounce_frame >= last_frame
          @otto_bounce_direction = -1
        elsif @otto_bounce_frame <= 0
          @otto_bounce_direction = 1
        end
      elsif @otto_spawn_frame < @otto_spawn_paths.length - 1
        @otto_spawn_frame += 1
      else
        @otto_bouncing = true
        @otto_bounce_frame = 1
      end
    end

    # Otto animates in place briefly before his chase job first selects a
    # direction. Once moving, the ROM retargets both axes every four ticks.
    if @otto_chase_delay_ticks > 0
      @otto_chase_delay_ticks -= 1
      return
    end
    return unless @otto_bouncing

    if @otto_direction_ticks <= 0
      @otto_velocity_x = (@player_x + 1 - @otto_x) <=> 0
      target_y = @player_y + OTTO_VERTICAL_TARGET_OFFSET
      @otto_velocity_y = (target_y - @otto_y) <=> 0
      @otto_direction_ticks = OTTO_DIRECTION_TICKS
    end
    @otto_direction_ticks -= 1

    @otto_move_ticks += 1
    return if @otto_move_ticks < OTTO_MOVE_TICKS

    @otto_move_ticks = 0
    # Otto deliberately has no wall or screen-boundary collision. The ROM
    # applies his signed velocity directly so he phases through the maze.
    @otto_x += @otto_velocity_x
    @otto_y += @otto_velocity_y
  end

  def otto_sprite_path
    if @otto_bouncing
      @otto_bounce_paths[@otto_bounce_frame]
    else
      @otto_spawn_paths[@otto_spawn_frame]
    end
  end

  def update_otto_collisions
    return unless @otto_active

    # Contact uses only opaque pixels from the currently displayed spawn or
    # bounce frame. Robot explosions use the normal scoring/bonus path.
    otto_sprite = @otto_pixel_data[otto_sprite_path]
    @room_layout[:robots].each do |robot|
      next if robot[:exploding]

      robot_sprite = @robot_pixel_data[robot_sprite_path(robot)]
      if otto_pixels_overlap? otto_sprite, robot[:x], robot[:y],
                              robot_sprite, false
        start_robot_explosion robot
      end
    end

    return if @player_death_active

    player_sprite = player_collision_sprite
    player_flipped = !@player_shooting && @player_facing == :left
    if otto_pixels_overlap? otto_sprite, @player_x, @player_y,
                            player_sprite, player_flipped
      start_player_death
    end
  end

  def otto_pixels_overlap? otto_sprite, target_x, target_y,
                           target_sprite, target_flipped
    return false unless otto_sprite && target_sprite
    return false if @otto_x + otto_sprite[:w] <= target_x
    return false if @otto_x >= target_x + target_sprite[:w]
    return false if @otto_y + otto_sprite[:h] <= target_y
    return false if @otto_y >= target_y + target_sprite[:h]

    target_width = target_sprite[:w]
    target_height = target_sprite[:h]
    target_lookup = target_sprite[:opaque_lookup]
    otto_sprite[:opaque_pixels].each do |pixel|
      target_pixel_x = @otto_x + pixel[0] - target_x
      target_pixel_y = @otto_y + pixel[1] - target_y
      next if target_pixel_x < 0 || target_pixel_x >= target_width
      next if target_pixel_y < 0 || target_pixel_y >= target_height

      target_pixel_x = target_width - target_pixel_x - 1 if target_flipped
      return true if target_lookup[target_pixel_y * target_width + target_pixel_x]
    end

    false
  end
end

module RoomNavigationBehavior
  def room_seed room_x, room_y
    # Pack the signed room coordinates into the same 16-bit layout used by the
    # deterministic room generator: y occupies the high byte and x the low.
    # Pack the y byte high and the x byte low.
    (((room_y & 0xff) << 8) | (room_x & 0xff)) & 0xffff
  end

  def next_random seed
    # This is the room generator's 16-bit linear recurrence. Mask every result
    # so subsequent direction selection stays within 16 bits.
    (7 * seed + 0x3153) & 0xffff
  end

  def opposite_direction direction
    case direction
    when :north then :south
    when :south then :north
    when :east then :west
    when :west then :east
    end
  end

  def direction_delta direction
    # These deltas define the room coordinate reached by each visible exit.
    # Room-coordinate north/south intentionally run opposite screen y.
    case direction
    when :north then [0, -1]
    when :south then [0, 1]
    when :east then [1, 0]
    when :west then [-1, 0]
    end
  end
end

module ProjectileBehavior
  include DisplayConfig
  include ProjectileConfig
  include RobotConfig
  def discard_finished_robot_bullets
    @robot_bullets.reject! { |bullet| bullet[:hit] || bullet[:expired] }
  end

  def robot_bullet_hits_player? bullet
    player_sprite = player_collision_sprite
    bullet_sprite = @bullet_pixel_data[bullet[:path]]
    return false unless player_sprite && bullet_sprite

    player_width = player_sprite[:w]
    player_height = player_sprite[:h]
    return false if bullet[:x] + bullet[:w] <= @player_x
    return false if bullet[:x] >= @player_x + player_width
    return false if bullet[:y] + bullet[:h] <= @player_y
    return false if bullet[:y] >= @player_y + player_height

    player_lookup = player_sprite[:opaque_lookup]
    bullet_sprite[:opaque_pixels].each do |pixel|
      bullet_x = bullet[:x] + pixel[0]
      bullet_y = bullet[:y] + pixel[1]
      player_pixel_x = if @player_shooting || @player_facing != :left
                         bullet_x - @player_x
                       else
                         player_width - (bullet_x - @player_x) - 1
                       end
      player_pixel_y = bullet_y - @player_y
      next if player_pixel_x < 0 || player_pixel_x >= player_width
      next if player_pixel_y < 0 || player_pixel_y >= player_height

      if player_lookup[player_pixel_y * player_width + player_pixel_x]
        start_player_death
        return true
      end
    end
    false
  end

  def discard_finished_player_bullets
    removed_bullet = false
    @player_bullets.reject! do |bullet|
      finished = bullet[:hit] || bullet[:expired]
      removed_bullet = true if finished
      finished
    end
    @player_shoot_cooldown_ticks = PLAYER_SHOOT_COOLDOWN_TICKS if removed_bullet
  end

  # Both projectile sources use the same opaque-pixel robot hit test.
  def bullet_collides_with_robot? bullet, robot
    # Reject the common non-overlapping case before the opaque-pixel pass.
    return false if bullet[:x] + bullet[:w] <= robot[:x]
    return false if bullet[:x] >= robot[:x] + ROBOT_WIDTH
    return false if bullet[:y] + bullet[:h] <= robot[:y]
    return false if bullet[:y] >= robot[:y] + ROBOT_HEIGHT

    bullet_sprite = @bullet_pixel_data[bullet[:path]]
    robot_sprite = @robot_pixel_data[robot_sprite_path(robot)]
    robot_width = robot_sprite[:w]
    robot_height = robot_sprite[:h]
    robot_lookup = robot_sprite[:opaque_lookup]

    bullet_sprite[:opaque_pixels].each do |bullet_pixel|
      robot_x = bullet[:x] + bullet_pixel[0] - robot[:x]
      robot_y = bullet[:y] + bullet_pixel[1] - robot[:y]
      next if robot_x < 0 || robot_x >= robot_width
      next if robot_y < 0 || robot_y >= robot_height

      return true if robot_lookup[robot_y * robot_width + robot_x]
    end
    false
  end

  def bullet_out_of_bounds? bullet
    bullet[:x] + bullet[:w] <= 0 || bullet[:x] >= SCREEN_WIDTH ||
      bullet[:y] + bullet[:h] <= 0 || bullet[:y] >= SCREEN_HEIGHT
  end

  def bullet_hits_wall? bullet, bullet_x = bullet[:x], bullet_y = bullet[:y]
    sprite = @bullet_pixel_data[bullet[:path]]
    wall_pixels = @room_layout[:wall_pixels]
    sprite[:opaque_pixels].each do |pixel|
      pixel_left = bullet_x + pixel[0]
      pixel_bottom = bullet_y + pixel[1]
      return true if wall_pixel? wall_pixels, pixel_left, pixel_bottom
    end

    false
  end

  def update_player_bullets
    return if @player_bullets.empty?

    @player_bullets.each do |bullet|
      if bullet_hits_wall? bullet
        bullet[:expired] = true
        next
      end

      bullet[:movement_ticks] += 1
      next if bullet[:movement_ticks] < @player_bullet_step_ticks

      bullet[:movement_ticks] = 0
      next_x = bullet[:x] + bullet[:velocity_x]
      next_y = bullet[:y] + bullet[:velocity_y]
      if bullet_hits_wall? bullet, next_x, next_y
        bullet[:expired] = true
      else
        bullet[:x] = next_x
        bullet[:y] = next_y
        bullet[:hit] = true if bullet_hits_robot? bullet
      end
      bullet[:expired] = true if bullet_out_of_bounds? bullet
    end
    discard_finished_player_bullets
  end

  def update_robot_bullets
    return if @robot_bullets.empty?

    @robot_bullets.each do |bullet|
      if bullet_hits_wall? bullet
        bullet[:expired] = true
        next
      end

      bullet[:movement_ticks] += 1
      next if bullet[:movement_ticks] < @robot_bullet_step_ticks

      bullet[:movement_ticks] = 0
      next_x = bullet[:x] + bullet[:velocity_x]
      next_y = bullet[:y] + bullet[:velocity_y]
      if bullet_hits_wall? bullet, next_x, next_y
        bullet[:expired] = true
        next
      end

      bullet[:x] = next_x
      bullet[:y] = next_y
      if robot_bullet_hits_player? bullet
        bullet[:hit] = true
      elsif bullet_hits_robot? bullet
        bullet[:hit] = true
      end
      bullet[:expired] = true if bullet_out_of_bounds? bullet
    end

    discard_finished_robot_bullets
  end
end

module SpritePixelCacheBehavior
  def load_sprite_pixel_data paths
    pixel_data = {}
    paths.each do |path|
      pixel_data[path] = cache_opaque_pixels DR.get_pixels path
    end
    pixel_data
  end

  def cache_opaque_pixels sprite
    # DR.get_pixels is top-down ABGR data. Cache only opaque bottom-up
    # coordinates and lookups so collision does not scan source pixels.
    opaque_pixels = []
    opaque_lookup = Array.new(sprite[:w] * sprite[:h], false)
    sprite[:pixels].each_with_index do |pixel, index|
      next if (pixel >> 24) & 0xff == 0

      source_x = index % sprite[:w]
      source_y = sprite[:h] - index.idiv(sprite[:w]) - 1
      opaque_pixels << [source_x, source_y]
      opaque_lookup[source_y * sprite[:w] + source_x] = true
    end
    sprite[:opaque_pixels] = opaque_pixels
    sprite[:opaque_lookup] = opaque_lookup
    sprite[:pixels] = nil
    sprite
  end
end

module RobotMovementBehavior
  include DisplayConfig
  include RobotConfig
  def update_robots
    robots = @room_layout[:robots]
    return if robots.empty?

    robots.each do |robot|
      if robot[:exploding]
        update_robot_explosion robot
        next
      end

      robot[:fire_cooldown_ticks] -= 1 if robot[:fire_cooldown_ticks] > 0
      update_robot_direction robot

      if robot[:movement_stop_ticks] > 0
        update_robot_stop robot
        next
      end

      if robot[:velocity_x] == 0 && robot[:velocity_y] == 0
        update_robot_standing robot
      else
        update_robot_movement robot
      end
    end

    # Do not remove an exploding robot while iterating over the live list.
    # The completed explosion is discarded after all robot updates finish.
    robots.reject! { |robot| robot[:explosion_finished] }
  end

  def update_robot_direction robot
    return if robot[:movement_stop_ticks] > 0

    robot[:ai_ticks] -= 1
    return unless robot[:ai_ticks] <= 0

    robot[:ai_ticks] = ROBOT_AI_TICKS
    requested_x = (@player_x - robot[:x]) <=> 0
    requested_y = (@player_y + ROBOT_PLAYER_Y_OFFSET - robot[:y]) <=> 0
    desired_velocity_x, desired_velocity_y =
      if requested_x == 0 && requested_y == 0
        [0, 0]
      else
        robot_iq_velocity robot, requested_x, requested_y
      end
    was_moving = robot[:velocity_x] != 0 || robot[:velocity_y] != 0
    direction_changed = desired_velocity_x != robot[:desired_velocity_x] ||
                        desired_velocity_y != robot[:desired_velocity_y]
    robot[:desired_velocity_x] = desired_velocity_x
    robot[:desired_velocity_y] = desired_velocity_y

    if direction_changed
      robot[:movement_start_ticks] = 0
      robot[:move_ticks] = 0
      if was_moving
        # Keep the final directional sprite visible for one normal frame
        # before the eye returns to the matching standing frame.
        robot[:velocity_x] = 0
        robot[:velocity_y] = 0
        robot[:movement_stop_ticks] = ROBOT_ANIMATION_TICKS
        robot[:movement_animation_active] = true
      else
        begin_robot_standing_scan robot
      end
    end

    # Every AI decision may attempt a shot. Recharge remains per robot.
    attempt_robot_fire robot
  end

  def update_robot_stop robot
    robot[:movement_stop_ticks] -= 1
    return unless robot[:movement_stop_ticks] == 0

    robot[:movement_animation_active] = false
    robot[:standing_frame] = robot_standing_frame_for_velocity(
      robot[:last_movement_velocity_x], robot[:last_movement_velocity_y]
    ) || robot[:standing_frame]
    robot[:standing_frame_ticks] = 0
    begin_robot_standing_scan robot
  end

  def begin_robot_standing_scan robot
    if robot[:desired_velocity_x] == 0 && robot[:desired_velocity_y] == 0
      robot[:standing_scan_frames] = 0
    else
      # Count completed frame advances, rather than wall-clock ticks, so
      # every new direction visibly receives a complete 0..5 eye sweep.
      robot[:standing_scan_frames] = ROBOT_STAND_FRAME_COUNT
    end
  end

  def update_robot_standing robot
    if robot[:movement_start_ticks] > 0
      robot[:movement_start_ticks] -= 1
      if robot[:movement_start_ticks] == 0
        robot[:velocity_x] = robot[:desired_velocity_x]
        robot[:velocity_y] = robot[:desired_velocity_y]
        robot[:move_ticks] = @robot_move_ticks
        update_robot_movement robot
      end
      return
    end

    robot[:standing_frame_ticks] += 1
    if robot[:standing_frame_ticks] >= ROBOT_ANIMATION_TICKS
      robot[:standing_frame_ticks] = 0
      robot[:standing_frame] = (robot[:standing_frame] + 1) % ROBOT_STAND_FRAME_COUNT
      robot[:standing_scan_frames] -= 1 if robot[:standing_scan_frames] > 0
    end

    return if robot[:standing_scan_frames] > 0
    return if robot[:desired_velocity_x] == 0 && robot[:desired_velocity_y] == 0
    return unless robot_ready_to_move?(robot) && robot[:standing_frame_ticks] == 0

    # The correct eye frame has just begun. Keep it visible for its normal
    # duration before taking the first step in the newly chosen direction.
    robot[:movement_start_ticks] = ROBOT_ANIMATION_TICKS
  end

  def update_robot_movement robot
    robot[:move_ticks] += 1
    return if robot[:move_ticks] < @robot_move_ticks

    robot[:move_ticks] = 0
    velocity_x = robot[:velocity_x]
    velocity_y = robot[:velocity_y]
    return if velocity_x == 0 && velocity_y == 0

    next_x = robot[:x] + velocity_x
    next_y = robot[:y] + velocity_y
    colliding_robots = robot_collides_with_other_robots robot, next_x, next_y
    if robot_collides_with_wall?(robot, next_x, next_y) || !colliding_robots.empty?
      start_robot_explosion robot
      colliding_robots.each { |colliding_robot| start_robot_explosion colliding_robot }
      return
    end

    robot[:x] = next_x
    robot[:y] = next_y
    robot[:movement_animation_active] = true
    robot[:last_movement_velocity_x] = velocity_x
    robot[:last_movement_velocity_y] = velocity_y
    if velocity_x < 0
      robot[:move_left_frame] = (robot[:move_left_frame] + 1) % 2
    elsif velocity_x > 0
      robot[:move_right_frame] = (robot[:move_right_frame] + 1) % 2
    elsif velocity_y < 0
      robot[:move_down_frame] = (robot[:move_down_frame] + 1) % 2
    elsif velocity_y > 0
      robot[:move_up_frame] = (robot[:move_up_frame] + 1) % 2
    end
  end

  def robot_ready_to_move? robot
    desired_velocity_x = robot[:desired_velocity_x]
    desired_velocity_y = robot[:desired_velocity_y]
    return false if desired_velocity_x == 0 && desired_velocity_y == 0

    # Diagonal movement uses the horizontal-facing animation, so the two
    # left diagonals wait for stand_2 and the two right diagonals wait for
    # stand_4 as well.
    target_frame = robot_standing_frame_for_velocity desired_velocity_x,
                                                      desired_velocity_y
    robot[:standing_frame] == target_frame
  end

  def robot_standing_frame_for_velocity velocity_x, velocity_y
    if velocity_x < 0
      2
    elsif velocity_x > 0
      4
    elsif velocity_y < 0
      0
    elsif velocity_y > 0
      3
    end
  end

  def robot_iq_velocity robot, requested_x, requested_y
    # Check the four points outside the robot footprint. Each point
    # determines the zone ahead of that side; the robot center is not used.
    zone_walls = @room_layout[:robot_zone_walls]
    lower_left = zone_walls[robot_zone_index(
      robot[:x] + ROBOT_IQ_PROBE_OFFSETS[0][0],
      robot[:y] + ROBOT_IQ_PROBE_OFFSETS[0][1]
    )]
    lower_right = zone_walls[robot_zone_index(
      robot[:x] + ROBOT_IQ_PROBE_OFFSETS[1][0],
      robot[:y] + ROBOT_IQ_PROBE_OFFSETS[1][1]
    )]
    upper_right = zone_walls[robot_zone_index(
      robot[:x] + ROBOT_IQ_PROBE_OFFSETS[2][0],
      robot[:y] + ROBOT_IQ_PROBE_OFFSETS[2][1]
    )]
    upper_left = zone_walls[robot_zone_index(
      robot[:x] + ROBOT_IQ_PROBE_OFFSETS[3][0],
      robot[:y] + ROBOT_IQ_PROBE_OFFSETS[3][1]
    )]

    # Use the far-side pair to test the boundary the robot is about to
    # cross. This keeps the check in the robot's current zone.
    blocked_horizontal = if requested_x > 0
                           ((lower_left | upper_left) & 0x02) != 0
                         elsif requested_x < 0
                           ((lower_right | upper_right) & 0x01) != 0
                         else
                           false
                         end
    blocked_vertical = if requested_y > 0
                         ((lower_right | lower_left) & 0x04) != 0
                       elsif requested_y < 0
                         ((upper_right | upper_left) & 0x08) != 0
                       else
                         false
                       end

    [blocked_horizontal ? 0 : requested_x,
     blocked_vertical ? 0 : requested_y]
  end

  def robot_zone_index x, y
    x = x.clamp(0, SCREEN_WIDTH - 1)
    y = y.clamp(0, SCREEN_HEIGHT - 1)
    zone_column = if x < ROBOT_ZONE_X_BOUNDS[1]
                    0
                  elsif x < ROBOT_ZONE_X_BOUNDS[2]
                    1
                  elsif x < ROBOT_ZONE_X_BOUNDS[3]
                    2
                  elsif x < ROBOT_ZONE_X_BOUNDS[4]
                    3
                  else
                    4
                  end
    zone_row = if y < ROBOT_ZONE_Y_BOUNDS[1]
                 0
               elsif y < ROBOT_ZONE_Y_BOUNDS[2]
                 1
               else
                 2
               end

    zone_row * 5 + zone_column
  end
end
module PlayerCombatBehavior
  include ProjectileConfig
  include GameConfig
  def player_fire_pressed?
    inputs.keyboard.key_held.space ||
      inputs.keyboard.key_held.shift ||
      inputs.keyboard.key_held.z ||
      inputs.keyboard.key_held.x
  end

  def player_fire_started?
    inputs.keyboard.key_down.space ||
      inputs.keyboard.key_down.shift ||
      inputs.keyboard.key_down.z ||
      inputs.keyboard.key_down.x
  end

  def start_player_shoot horizontal, vertical
    direction = player_shoot_direction(horizontal, vertical)
    @player_shooting = true
    @player_shoot_ticks = PLAYER_SHOOT_TICKS
    @player_shoot_direction = direction
    @player_standing_hold_ticks = 0
    fire_player_bullet
    clear_player_input
    @player_moving = false
  end

  def fire_player_bullet
    play_game_sound SOUND_EFFECTS[:bullet]
    offset_x, offset_y = PLAYER_BULLET_OFFSETS[@player_shoot_direction]
    velocity_x, velocity_y = PLAYER_SHOOT_VELOCITIES[@player_shoot_direction]
    bullet = {
      x: @player_x + offset_x,
      y: @player_y + offset_y,
      w: 2,
      h: 2,
      path: PLAYER_BULLET_SPRITE_PATHS[@player_shoot_direction],
      velocity_x: velocity_x,
      velocity_y: velocity_y,
      movement_ticks: 0
    }
    @player_bullets << bullet
    # Check the muzzle position too, before the next tick advances the bullet.
    # This preserves pixel-perfect contact even when a robot is immediately
    # adjacent to the player.
    bullet[:hit] = true if bullet_hits_robot? bullet
    bullet[:expired] = true if bullet_hits_wall? bullet
    discard_finished_player_bullets
  end

  def player_shoot_direction horizontal, vertical
    if horizontal < 0
      return :nw if vertical > 0
      return :sw if vertical < 0

      return :w
    end
    if horizontal > 0
      return :ne if vertical > 0
      return :se if vertical < 0

      return :e
    end
    return :n if vertical > 0
    return :s if vertical < 0

    nil
  end

end
module GameLoopBehavior
  include PlayerConfig
  include ProjectileConfig
  include RobotConfig
  include RoomConfig
  include GameConfig
  def reset
    # DR.reset preserves Main instance variables, so clear only the launch
    # marker and keep the session high score for the title screen.
    @game_initialized = false
  end

  def start
    # Room state is kept in explicit Main instance variables rather than
    # args.state. Room generation builds cached render primitives and a pixel
    # map for collision detection.
    first_start = !@game_initialized
    @game_initialized = true
    saved_high_score = DR.read_file HIGH_SCORE_FILE_PATH
    @high_score = saved_high_score ? saved_high_score.to_i : 0
    @score = 0
    @humanoids = INITIAL_HUMANOIDS
    @next_extra_humanoid_score = EXTRA_HUMANOID_INTERVAL
    @game_over = false
    @new_high_score = false
    @score_panel_sprite = nil
    @score_border = nil
    @title_screen = first_start
    @game_over_restart_ticks = 0
    refresh_difficulty
    @player_bullet_step_ticks = PLAYER_BULLET_STEP_TICKS
    @robot_bullet_step_ticks = ROBOT_BULLET_STEP_TICKS
    @bullet_speed_reduced = false
    @robot_bullets = []
    audio[:game_sound] = nil
    # DR.reset restores DragonRuby's launch-time RNG seed. Reseeding when a
    # game is created prevents a reset from repeating the same first room.
    DR.set_rng (Time.now.to_f * 100).to_i
    room_number = rand ROOM_NUMBER_LIMIT
    @room_x = room_number & 0xff
    @room_y = (room_number >> 8) & 0xff
    # The starting room has no blocked return door. Later rooms store the side
    # that leads back to the room just left; this is separate from the seed.
    @room_blocked_exit = nil
    # Each room advances this BCD threshold before robot spawn attempts.
    @robot_spawn_threshold = ROBOT_SPAWN_THRESHOLD_INITIAL
    @robot_move_ticks = ROBOT_MOVE_TICKS_INITIAL
    # The ROM initializes ROBOT_SPEED to 5 and reduces it as the first room is
    # created, so Otto's independent first-room timer uses 4.
    @otto_robot_speed_units = 4
    @room_layout = generate_room @room_x, @room_y, @room_blocked_exit,
                                 @robot_spawn_threshold, @robot_move_ticks
    @robot_spawn_threshold = @room_layout[:spawn_threshold]
    @robot_move_ticks = @room_layout[:robot_move_ticks]
    @room_robot_count = @room_layout[:robots].length
    @room_clear_bonus_awarded = false
    @room_clear_bonus = nil
    @player_pixel_data = PLAYER_SPRITE_PATHS.map do |path|
      cache_opaque_pixels DR.get_pixels path
    end
    @player_shoot_pixel_data = load_sprite_pixel_data PLAYER_SHOOT_PIXEL_PATHS
    @robot_pixel_data = load_sprite_pixel_data ROBOT_PIXEL_PATHS
    @bullet_pixel_data = load_sprite_pixel_data PLAYER_BULLET_PIXEL_PATHS
    # ROM patterns enter through the seven spawn frames, then loop through the
    # six 8 x 22 bounce canvases. Spawn frame 6 and bounce frame 0 align.
    @otto_spawn_paths = [
      "sprites/otto_spawn_0.png",
      "sprites/otto_spawn_1.png",
      "sprites/otto_spawn_2.png",
      "sprites/otto_spawn_3.png",
      "sprites/otto_spawn_4.png",
      "sprites/otto_spawn_5.png",
      "sprites/otto_spawn_6.png"
    ]
    @otto_bounce_paths = [
      "sprites/otto_bounce_0.png",
      "sprites/otto_bounce_1.png",
      "sprites/otto_bounce_2.png",
      "sprites/otto_bounce_3.png",
      "sprites/otto_bounce_4.png",
      "sprites/otto_bounce_5.png"
    ]
    @otto_pixel_data = load_sprite_pixel_data(
      @otto_spawn_paths + @otto_bounce_paths
    )

    # New lives use the same fixed spawn coordinates as the first room.
    @player_x = PLAYER_START_X
    @player_y = PLAYER_START_Y
    @player_facing = :right
    @player_frame = 0
    @player_animation_ticks = 0
    clear_player_input
    @player_moving = false
    @player_animation_release_ticks = 0
    @player_standing_hold_ticks = 0
    @player_shooting = false
    @player_shoot_ticks = 0
    @player_shoot_cooldown_ticks = 0
    @player_shoot_direction = :e
    @player_bullets = []
    clear_room_transition
    # Death is mutually exclusive with room transitions. The player starts a
    # frozen hit animation at the exact impact position.
    @player_death_active = false
    @player_death_ticks = 0
    @player_death_frame = 0
    @player_death_x = nil
    @player_death_y = nil
    @player_death_facing = nil
    @player_respawn_pending = false
    reset_otto_spawn
  end

  def tick
    # Capture these flags before updating. If a transition or death finishes
    # during this tick, input stays locked until the following tick and the
    # newly committed room is rendered in its clean arrival state.
    if @title_screen
      if inputs.keyboard.key_down.r && inputs.keyboard.key_held.h
        @high_score = 0
        DR.write_file HIGH_SCORE_FILE_PATH, '0'
        draw_title_screen
      elsif player_fire_started?
        @title_screen = false
        draw_scene
      else
        draw_title_screen
      end
      return
    end
    if @game_over
      @game_over_restart_ticks -= 1 if @game_over_restart_ticks > 0
      if @game_over_restart_ticks <= 0 && player_fire_started?
        start
        @title_screen = true
      end
      if @title_screen
        draw_title_screen
      else
        draw_scene
      end
      return
    end
    @player_shoot_cooldown_ticks -= 1 if @player_shoot_cooldown_ticks > 0
    respawning = @player_respawn_pending
    start_new_room_after_death if respawning
    transitioning = @room_transition_active
    dying = @player_death_active
    update_room_transition unless dying
    if dying || transitioning
      update_robot_explosions
    else
      update_robots unless respawning
      update_otto unless respawning
    end
    update_player_bullets unless transitioning || dying || respawning
    update_player_death if dying
    update_player unless transitioning || dying || respawning
    update_robot_bullets unless transitioning || dying || respawning
    resolve_bullet_collisions unless transitioning || dying || respawning
    update_player_robot_collisions unless transitioning || respawning ||
                                         @room_transition_active || dying
    update_otto_collisions unless transitioning || respawning ||
                                  @room_transition_active || dying
    draw_scene
  end

end

module GameLifecycleBehavior
  include PlayerConfig
  include RobotConfig
  include GameConfig
  def refresh_difficulty
    selected_profile = ROBOT_DIFFICULTY_TABLE[0]
    ROBOT_DIFFICULTY_TABLE.each do |profile|
      break if profile[:score] > @score

      selected_profile = profile
    end
    @robot_bullet_limit = selected_profile[:bullet_limit]
    @robot_fire_wait_ticks = selected_profile[:fire_wait]
  end

  def play_game_sound sound
    current_sound = audio[:game_sound]
    return if current_sound && current_sound[:priority] > sound[3]

    # Assigning the same channel replaces the previous sound immediately.
    audio[:game_sound] = {
      input: sound[0], gain: sound[1], pitch: sound[2], priority: sound[3],
      paused: false, looping: false
    }
  end

  def add_score points
    @score += points
    while @score >= @next_extra_humanoid_score
      if @humanoids < PLAYER_LIFE_MAX
        @humanoids += 1
        play_game_sound SOUND_EFFECTS[:extra_life]
      end
      @next_extra_humanoid_score += EXTRA_HUMANOID_INTERVAL
    end
    refresh_difficulty
  end

  def award_room_clear_bonus
    return if @room_clear_bonus_awarded

    @room_clear_bonus_awarded = true
    @room_clear_bonus = @room_robot_count * ROOM_CLEAR_SCORE_PER_ROBOT
    add_score @room_clear_bonus
  end

end
module RobotCombatBehavior
  include ProjectileConfig
  include RobotConfig
  include GameConfig
  def update_robot_explosions
    robots = @room_layout[:robots]
    return if robots.empty?

    robots.each do |robot|
      update_robot_explosion robot if robot[:exploding]
    end
    robots.reject! { |robot| robot[:explosion_finished] }
  end

  def attempt_robot_fire robot
    return if @robot_bullet_limit <= 0
    return if @robot_bullets.length >= @robot_bullet_limit
    return if robot[:fire_cooldown_ticks] > 0

    delta_x = @player_x - robot[:x]
    delta_y = @player_y + ROBOT_PLAYER_Y_OFFSET - robot[:y]
    direction = robot_fire_direction delta_x, delta_y
    return unless direction

    offset_x, offset_y = ROBOT_BULLET_OFFSETS[direction]
    velocity_x, velocity_y = PLAYER_SHOOT_VELOCITIES[direction]
    @robot_bullets << {
      x: robot[:x] + offset_x,
      y: robot[:y] + offset_y,
      w: ROBOT_BULLET_WIDTH,
      h: ROBOT_BULLET_HEIGHT,
      path: PLAYER_BULLET_SPRITE_PATHS[direction],
      velocity_x: velocity_x,
      velocity_y: velocity_y,
      movement_ticks: 0
    }
    play_game_sound SOUND_EFFECTS[:bullet]
    robot[:fire_cooldown_ticks] = @robot_fire_wait_ticks
    robot[:velocity_x] = 0
    robot[:velocity_y] = 0
    robot[:movement_start_ticks] = 0
    robot[:movement_stop_ticks] = ROBOT_BULLET_FIRE_STOP_TICKS
    robot[:movement_animation_active] = false
    robot[:standing_scan_frames] = 0
  end

  def robot_fire_direction delta_x, delta_y
    direction_x = delta_x <=> 0
    direction_y = delta_y <=> 0
    return nil if direction_x == 0 && direction_y == 0

    vertical_range = ROBOT_SHOOT_VERTICAL_X_RANGE
    if delta_x >= vertical_range[0] && delta_x <= vertical_range[1]
      return player_shoot_direction 0, direction_y
    end

    horizontal_range = ROBOT_SHOOT_HORIZONTAL_Y_RANGE
    if delta_y >= horizontal_range[0] && delta_y <= horizontal_range[1]
      return player_shoot_direction direction_x, 0
    end

    difference = delta_y.abs - delta_x.abs
    diagonal_range = ROBOT_SHOOT_DIAGONAL_Y_MINUS_X_RANGE
    return nil if difference < diagonal_range[0] || difference >= diagonal_range[1]

    player_shoot_direction direction_x, direction_y
  end

  def start_robot_explosion robot
    return if robot[:exploding]

    # Freeze the robot at its impact origin. The larger explosion sprite is
    # positioned relative to this unchanged 8 x 8 origin while it animates.
    play_game_sound SOUND_EFFECTS[:robot_explosion]
    robot[:exploding] = true
    robot[:explosion_ticks] = 0
    robot[:explosion_frame] = 0
    robot[:explosion_finished] = false
    robot[:velocity_x] = 0
    robot[:velocity_y] = 0
    @otto_spawn_countdown_ticks += 2 * OttoBehavior::OTTO_TIMER_UNIT_TICKS unless @otto_active
    add_score ROBOT_DESTROY_SCORE
    award_room_clear_bonus unless @room_layout[:robots].any? { |other_robot| !other_robot[:exploding] }
  end

  def update_robot_explosion robot
    robot[:explosion_ticks] += 1
    explosion_ticks = ROBOT_EXPLOSION_FRAME_TICKS * ROBOT_EXPLOSION_FRAME_COUNT
    if robot[:explosion_ticks] >= explosion_ticks
      robot[:explosion_finished] = true
      return
    end

    robot[:explosion_frame] =
      robot[:explosion_ticks].idiv ROBOT_EXPLOSION_FRAME_TICKS
  end

end
module PlayerInputBehavior
  include PlayerConfig
  include ProjectileConfig
  def clear_player_input
    @player_move_ticks = 0
    @player_pending_horizontal = 0
    @player_pending_vertical = 0
    @player_input_active = false
    @player_input_horizontal = 0
    @player_input_vertical = 0
    @player_repeat_ticks = nil
  end

  def hold_player_standing
    @player_frame = 0
    @player_animation_ticks = 0
    @player_animation_release_ticks = 0
    @player_moving = false
  end

  def update_player
    # inputs.left_right and inputs.up_down combine keyboard, controller, and
    # other DragonRuby directional sources into -1, 0, or 1 values.
    horizontal = inputs.left_right
    vertical = inputs.up_down

    if horizontal < 0
      @player_facing = :left
    elsif horizontal > 0
      @player_facing = :right
    end
    if @player_shooting
      @player_shoot_ticks -= 1
      @player_shooting = false if @player_shoot_ticks <= 0
      # The direction used to fire is consumed by the shot. Do not let it
      # become a movement input on the tick the firing pose ends.
      unless @player_shooting
        hold_player_standing
        @player_standing_hold_ticks = PLAYER_SHOOT_STANDING_TICKS
      end
      return
    end

    fire_pressed = player_fire_pressed?
    directional_input = horizontal != 0 || vertical != 0
    if fire_pressed
      if directional_input && @player_bullets.length < PLAYER_BULLET_LIMIT &&
         @player_shoot_cooldown_ticks <= 0
        start_player_shoot horizontal, vertical
      else
        hold_player_standing
      end

      # Firing has priority over movement for the entire time the fire key is
      # held, including while an active bullet uses the available slot.
      return
    end

    if @player_standing_hold_ticks > 0
      if directional_input
        # Movement is allowed to interrupt the post-fire standing hold.
        @player_standing_hold_ticks = 0
      else
        @player_standing_hold_ticks -= 1
        hold_player_standing
        return
      end
    end

    moving = horizontal != 0 || vertical != 0
    update_player_position horizontal, vertical
    return if @room_transition_active || @player_death_active

    # Animation is updated after movement. The second collision check is
    # intentional: a changed animation frame can expose a different opaque
    # pixel that reaches a wall even when the player's position is unchanged.
    update_player_animation moving
    if player_collides_with_wall? @player_x, @player_y, @player_frame,
                                 @player_facing
      start_player_death
      return
    end

    @player_moving = moving
  end

end

module CombatCollisionBehavior
  include RobotConfig
  def resolve_bullet_collisions
    return if @player_bullets.empty? || @robot_bullets.empty?

    @player_bullets.each do |player_bullet|
      next if player_bullet[:hit] || player_bullet[:expired]

      @robot_bullets.each do |robot_bullet|
        # A bullet marked hit earlier this tick still occupies its impact
        # position, so it can destroy an overlapping opposing bullet too.
        next if robot_bullet[:expired]
        next unless bullets_overlap? player_bullet, robot_bullet

        player_bullet[:hit] = true
        robot_bullet[:hit] = true
        break
      end
    end

    # Remove both projectiles only after the nested iteration has completed.
    discard_finished_player_bullets
    discard_finished_robot_bullets
  end

  def bullets_overlap? first_bullet, second_bullet
    # Reject non-overlapping bounds before comparing the cached opaque pixels.
    return false if first_bullet[:x] + first_bullet[:w] <= second_bullet[:x]
    return false if first_bullet[:x] >= second_bullet[:x] + second_bullet[:w]
    return false if first_bullet[:y] + first_bullet[:h] <= second_bullet[:y]
    return false if first_bullet[:y] >= second_bullet[:y] + second_bullet[:h]

    first_sprite = @bullet_pixel_data[first_bullet[:path]]
    second_sprite = @bullet_pixel_data[second_bullet[:path]]
    return false unless first_sprite && second_sprite

    second_width = second_sprite[:w]
    second_height = second_sprite[:h]
    second_lookup = second_sprite[:opaque_lookup]
    first_sprite[:opaque_pixels].each do |first_pixel|
      second_x = first_bullet[:x] + first_pixel[0] - second_bullet[:x]
      second_y = first_bullet[:y] + first_pixel[1] - second_bullet[:y]
      next if second_x < 0 || second_x >= second_width
      next if second_y < 0 || second_y >= second_height

      return true if second_lookup[second_y * second_width + second_x]
    end

    false
  end

  def update_player_robot_collisions
    # Check after both actors update so this catches a player entering a robot
    # and a robot stepping into the player's current pixel footprint.
    @room_layout[:robots].each do |robot|
      next if robot[:exploding]
      next unless player_pixels_overlap_robot? robot

      start_robot_explosion robot
      # A wall collision may already have started this animation this tick;
      # preserve that captured impact position while still exploding the robot.
      start_player_death unless @player_death_active
      return
    end
  end

  def player_pixels_overlap_robot? robot
    player_sprite = player_collision_sprite
    robot_sprite = @robot_pixel_data[robot_sprite_path(robot)]
    return false unless player_sprite && robot_sprite

    player_width = player_sprite[:w]
    player_height = player_sprite[:h]
    return false if @player_x + player_width <= robot[:x]
    return false if @player_x >= robot[:x] + ROBOT_WIDTH
    return false if @player_y + player_height <= robot[:y]
    return false if @player_y >= robot[:y] + ROBOT_HEIGHT

    robot_lookup = robot_sprite[:opaque_lookup]
    player_sprite[:opaque_pixels].each do |pixel|
      player_pixel_x = if @player_shooting || @player_facing != :left
                         pixel[0]
                       else
                         player_width - pixel[0] - 1
                       end
      world_x = @player_x + player_pixel_x
      world_y = @player_y + pixel[1]
      robot_x = world_x - robot[:x]
      robot_y = world_y - robot[:y]
      next if robot_x < 0 || robot_x >= robot_sprite[:w]
      next if robot_y < 0 || robot_y >= robot_sprite[:h]

      return true if robot_lookup[robot_y * robot_sprite[:w] + robot_x]
    end

    false
  end

  def bullet_hits_robot? bullet
    # Otto is intentionally absent: Berzerk projectiles cannot damage him.
    @room_layout[:robots].each do |robot|
      next if robot[:exploding]
      next unless bullet_collides_with_robot? bullet, robot

      start_robot_explosion robot
      return true
    end
    false
  end

end

module PlayerMovementBehavior
  include DisplayConfig
  include PlayerConfig
  def update_player_position horizontal, vertical
    # A pending movement is separate from the live key state. This lets a tap
    # finish its queued one-pixel move after release without treating the tap
    # as a held key on the following movement boundary.
    @room_transition_happened = false

    input_active = horizontal != 0 || vertical != 0
    input_changed = horizontal != @player_input_horizontal ||
                    vertical != @player_input_vertical

    if input_active
      if !@player_input_active || input_changed
        # A new press, or a direction change, queues one movement immediately.
        @player_pending_horizontal = horizontal
        @player_pending_vertical = vertical
        @player_repeat_ticks = nil
      elsif @player_repeat_ticks
        # A held key can repeat only after its first movement has been consumed
        # and the repeat interval has elapsed.
        @player_repeat_ticks += 1
        if @player_repeat_ticks >= PLAYER_MOVE_REPEAT_TICKS
          @player_pending_horizontal = horizontal
          @player_pending_vertical = vertical
          @player_repeat_ticks = 0
        end
      end
    else
      # Do not clear pending movement here: a released tap may still be waiting
      # for the next movement boundary. Only the held/repeat state is cleared.
      @player_repeat_ticks = nil
    end

    @player_input_active = input_active
    @player_input_horizontal = horizontal
    @player_input_vertical = vertical

    @player_move_ticks += 1
    if @player_move_ticks >= PLAYER_MOVE_TICKS
      next_x = @player_x + @player_pending_horizontal
      next_y = @player_y + @player_pending_vertical
      @player_move_ticks = 0
      pending_movement = @player_pending_horizontal != 0 ||
                         @player_pending_vertical != 0

      # Test the proposed position before assigning it. A collision is fatal,
      # rather than a solid obstacle: start_player_death freezes the player at
      # the current position and starts the captured-position hit animation.
      if pending_movement
        if player_collides_with_wall? next_x, next_y, @player_frame, @player_facing
          start_player_death
          return
        end
      end

      if pending_movement
        @player_x = next_x
        @player_y = next_y
        @player_repeat_ticks = 0 if input_active
      end
      @player_pending_horizontal = 0
      @player_pending_vertical = 0
      transition_room_if_needed
    end

    # Do not clamp a player that has entered an open exit. The transition code
    # needs the out-of-bounds coordinate to determine when the room changes.
    unless @room_transition_happened
      @player_x = @player_x.clamp(0, SCREEN_WIDTH - PLAYER_WIDTH)
      @player_y = @player_y.clamp(0, SCREEN_HEIGHT - PLAYER_HEIGHT)
    end
  end

  def update_player_animation moving
    # Frame 0 is the standing pose. Frames 1 through 3 are the walking cycle;
    # PLAYER_ANIMATION_TICKS controls how long each walking frame is shown.
    unless moving
      if @player_animation_release_ticks > 0
        @player_animation_release_ticks -= 1
        return
      end

      @player_frame = 0
      @player_animation_ticks = 0
      return
    end

    # Keep the current walking frame alive for the remainder of its normal
    # frame duration if the input is released before another movement update.
    @player_animation_release_ticks = PLAYER_ANIMATION_TICKS - 1

    if !@player_moving
      @player_frame = 1
      @player_animation_ticks = 0
    else
      @player_animation_ticks += 1
      if @player_animation_ticks >= PLAYER_ANIMATION_TICKS
        @player_frame = @player_frame % 3 + 1
        @player_animation_ticks = 0
      end
    end
  end

end

module RoomTransitionBehavior
  include DisplayConfig
  include PlayerConfig
  include RoomConfig
  def side_exit_open?
    @player_y > 16 && @player_y < 23
  end

  def vertical_exit_open?
    @player_x > 32 && @player_x < 43
  end

  def clear_room_transition
    @room_transition_happened = false
    @room_transition_active = false
    @room_transition_direction = nil
    @room_transition_ticks = 0
    @room_transition_distance = nil
    @room_transition_blocked_exit = nil
    @room_transition_room_x = nil
    @room_transition_room_y = nil
    @room_transition_room_layout = nil
    @room_transition_player_x = nil
    @room_transition_player_y = nil
    @room_transition_player_frame = nil
    @room_transition_player_animation_ticks = nil
    @room_transition_player_moving = nil
    @room_transition_player_facing = nil
    @room_transition_next_player_x = nil
    @room_transition_next_player_y = nil
  end

  def update_room_transition
    return unless @room_transition_active

    @room_transition_ticks += 1
    if @room_transition_ticks >= ROOM_TRANSITION_TICKS &&
       !@room_transition_room_layout
      @room_transition_room_layout = generate_room @room_transition_room_x,
                                                   @room_transition_room_y,
                                                   @room_transition_blocked_exit,
                                                   @robot_spawn_threshold,
                                                   @robot_move_ticks
    end
    finish_room_transition if @room_transition_ticks >= ROOM_TRANSITION_TOTAL_TICKS
  end

  def transition_room_if_needed
    # The player must cross the screen edge and be aligned with a doorway.
    # Side exits use the current y range 17..22; vertical exits use the
    # current x range 33..42. These ranges intentionally do not use the full
    # sprite box because the visible doorways are narrower than the room.
    if @player_x < 0
      if side_exit_open?
        transition_room :west
        return
      else
        @player_x = 0
      end
    elsif @player_x > SCREEN_WIDTH - PLAYER_WIDTH - 1
      if side_exit_open?
        transition_room :east
        return
      else
        @player_x = SCREEN_WIDTH - PLAYER_WIDTH
      end
    end

    # South is triggered once y is below zero. North is triggered at the
    # current upper threshold of SCREEN_HEIGHT - PLAYER_HEIGHT - 1, one pixel
    # before the sprite fully leaves the logical screen. The exact thresholds
    # must remain coordinated with the doorway drawing and spawn positions.
    if @player_y < 1
      if vertical_exit_open?
        transition_room :south
      else
        @player_y = 0
      end
    elsif @player_y > SCREEN_HEIGHT - PLAYER_HEIGHT - 1
      if vertical_exit_open?
        transition_room :north
      else
        @player_y = SCREEN_HEIGHT - PLAYER_HEIGHT
      end
    end
  end

  def transition_room direction
    # Do not replace the current room immediately. Capture the old room and
    # player state, keep only the destination coordinates for now, and let
    # draw_scene keep rendering the captured room during the slide and pause.
    @player_bullets.clear
    @robot_bullets.clear
    delta = direction_delta direction
    @room_transition_direction = direction
    @room_transition_ticks = 0
    @room_transition_active = true
    @room_transition_distance = if direction == :north || direction == :south
                                  SCREEN_HEIGHT + 1
                                else
                                  SCREEN_WIDTH + 1
                                end
    if @otto_active
      otto_sprite = @otto_pixel_data[otto_sprite_path]
      required_distance = case direction
                          when :north
                            @otto_y + otto_sprite[:h] + 1
                          when :south
                            SCREEN_HEIGHT - @otto_y + 1
                          when :east
                            @otto_x + otto_sprite[:w] + 1
                          when :west
                            SCREEN_WIDTH - @otto_x + 1
                          end
      if required_distance > @room_transition_distance
        @room_transition_distance = required_distance
      end
    end
    @room_transition_room_x = @room_x + delta[0]
    @room_transition_room_y = @room_y + delta[1]
    # The destination blocks the doorway opposite the exit just used. This
    # room-local blocker is committed only after the transition completes.
    @room_transition_blocked_exit = opposite_direction direction
    @room_transition_player_x = @player_x
    @room_transition_player_y = @player_y
    @room_transition_player_frame = @player_frame
    @room_transition_player_animation_ticks = @player_animation_ticks
    @room_transition_player_moving = @player_moving
    @room_transition_player_facing = @player_facing
    @room_transition_next_player_x = @player_x
    @room_transition_next_player_y = @player_y
    @room_transition_happened = true

    # These are the first visible coordinates in the destination room. The
    # unused axis remains aligned with the player's current position.
    case direction
    when :west
      @room_transition_next_player_x = SCREEN_WIDTH - PLAYER_WIDTH - 2
    when :east
      @room_transition_next_player_x = 1
    when :south
      @room_transition_next_player_y = SCREEN_HEIGHT - PLAYER_HEIGHT - 2
    when :north
      @room_transition_next_player_y = 2
    end
  end

  def finish_room_transition
    # Commit the pending room only after the old room has travelled completely
    # off-screen and the transition pause has elapsed.
    @room_x = @room_transition_room_x
    @room_y = @room_transition_room_y
    @room_blocked_exit = @room_transition_blocked_exit
    @room_layout = @room_transition_room_layout
    @robot_spawn_threshold = @room_layout[:spawn_threshold]
    @robot_move_ticks = @room_layout[:robot_move_ticks]
    @otto_robot_speed_units -= 1 if @otto_robot_speed_units > 1
    @room_robot_count = @room_layout[:robots].length
    @room_clear_bonus_awarded = false
    @room_clear_bonus = nil
    @robot_bullets.clear
    if @score >= 9000 && !@bullet_speed_reduced
      @player_bullet_step_ticks -= 1
      @robot_bullet_step_ticks -= 1
      @bullet_speed_reduced = true
    end
    # Give the player one full recharge interval to orient before the new
    # room's robots can fire. The timer belongs to each robot independently.
    @room_layout[:robots].each do |robot|
      robot[:fire_cooldown_ticks] = @robot_fire_wait_ticks
    end
    @player_x = @room_transition_next_player_x
    @player_y = @room_transition_next_player_y
    @player_frame = @room_transition_player_frame
    @player_animation_ticks = @room_transition_player_animation_ticks
    @player_moving = @room_transition_player_moving
    @player_facing = @room_transition_player_facing
    reset_otto_spawn
    clear_player_input
    clear_room_transition
  end

end

module PlayerDeathBehavior
  include DisplayConfig
  include PlayerConfig
  include RoomConfig
  include GameConfig
  include HudConfig
  def random_death_room
    # Pick a different 16-bit room after a death.
    room_number = rand ROOM_NUMBER_LIMIT
    current_room_number = room_seed @room_x, @room_y
    room_number = (room_number + 1) & 0xffff if room_number == current_room_number
    [room_number & 0xff, (room_number >> 8) & 0xff]
  end

  def start_player_death
    return if @player_death_active || @game_over

    # A wall hit is fatal. Capture the exact impact position and facing so the
    # hit animation cannot move with later state changes. The hit sprite is
    # one pixel lower than this captured player position when drawn.
    play_game_sound SOUND_EFFECTS[:player_zapped]
    @humanoids -= 1
    @player_death_active = true
    @player_death_ticks = 0
    @player_death_frame = 0
    @player_death_x = @player_x
    @player_death_y = @player_y
    @player_death_facing = @player_facing
    clear_player_input
    @player_moving = false
    @player_shooting = false
    @player_shoot_ticks = 0
    @player_bullets.clear
  end

  def update_player_death
    return unless @player_death_active

    # Hold each hit frame for PLAYER_HIT_FRAME_TICKS. The modulo wraps the
    # four-frame animation at the end of each pass; the total duration ends
    # after PLAYER_HIT_CYCLES complete passes.
    @player_death_ticks += 1
    if @player_death_ticks >= PLAYER_DEATH_TICKS
      # End the hit animation first. The current tick draws no player; room
      # regeneration is deferred until the next tick while the player is
      # already invisible.
      @player_death_active = false
      if @humanoids > 0
        @player_respawn_pending = true
      else
        play_game_sound SOUND_EFFECTS[:game_over]
        @game_over = true
        score_width, = DR.calcstringbox @score.to_s,
                                        size_px: HUD_LABEL_SIZE,
                                        font: HUD_FONT_PATH
        panel_width = score_width + SCORE_PANEL_PADDING * 2 - 1
        @score_panel_sprite = {
          x: SCORE_PANEL_X,
          y: SCORE_PANEL_Y,
          w: panel_width,
          h: SCORE_PANEL_HEIGHT,
          path: :solid,
          **COLORS[:background]
        }
        @score_border = {
          x: SCORE_BORDER_X,
          y: SCORE_BORDER_Y,
          w: panel_width,
          h: SCORE_BORDER_HEIGHT,
          **COLORS[:wall]
        }
        if @score > @high_score
          @high_score = @score
          DR.write_file HIGH_SCORE_FILE_PATH, @high_score.to_s
          @new_high_score = true
        end
        @game_over_restart_ticks = GAME_OVER_RESTART_DELAY_TICKS
      end
      return
    end

    @player_death_frame = (@player_death_ticks.idiv PLAYER_HIT_FRAME_TICKS) %
                          PLAYER_HIT_FRAME_COUNT
  end

  def start_new_room_after_death
    # A lost life starts a fresh RNG-selected room and uses the first room's
    # fixed player spawn coordinates.
    @room_x, @room_y = random_death_room
    @room_blocked_exit = nil
    @room_layout = generate_room @room_x, @room_y,
                                 @room_blocked_exit,
                                 @robot_spawn_threshold, @robot_move_ticks
    @robot_spawn_threshold = @room_layout[:spawn_threshold]
    @robot_move_ticks = @room_layout[:robot_move_ticks]
    @otto_robot_speed_units -= 1 if @otto_robot_speed_units > 1
    @room_robot_count = @room_layout[:robots].length
    @room_clear_bonus_awarded = false
    @room_clear_bonus = nil
    @robot_bullets.clear
    refresh_difficulty
    if @score >= 9000 && !@bullet_speed_reduced
      @player_bullet_step_ticks -= 1
      @robot_bullet_step_ticks -= 1
      @bullet_speed_reduced = true
    end
    @room_layout[:robots].each do |robot|
      robot[:fire_cooldown_ticks] = @robot_fire_wait_ticks
    end
    @player_x = PLAYER_START_X
    @player_y = PLAYER_START_Y
    @player_frame = 0
    @player_animation_ticks = 0
    clear_player_input
    @player_moving = false
    @player_animation_release_ticks = 0
    @player_shooting = false
    @player_shoot_ticks = 0
    @player_bullets.clear
    @room_transition_happened = false
    @player_death_active = false
    @player_death_ticks = 0
    @player_death_frame = 0
    @player_death_x = nil
    @player_death_y = nil
    @player_death_facing = nil
    @player_respawn_pending = false
    reset_otto_spawn
  end

end

module CollisionGeometryBehavior
  include DisplayConfig
  include PlayerConfig
  include RobotConfig
  def player_collision_sprite
    if @player_shooting
      @player_shoot_pixel_data[PLAYER_SHOOT_SPRITE_PATHS[@player_shoot_direction]]
    else
      @player_pixel_data[@player_frame]
    end
  end

  def robot_collides_with_wall? robot, robot_x, robot_y
    # This is pixel-perfect collision. Only opaque pixels from the robot's
    # currently displayed sprite can trigger a lethal wall impact.
    sprite = @robot_pixel_data[robot_sprite_path(robot)]
    wall_pixels = @room_layout[:wall_pixels]

    sprite[:opaque_pixels].each do |pixel|
      world_x = robot_x + pixel[0]
      world_y = robot_y + pixel[1]
      return true if wall_pixel? wall_pixels, world_x, world_y
    end

    false
  end

  def robot_collides_with_other_robots robot, robot_x, robot_y
    # Return every contacted robot so a single movement can trigger explosions
    # for the moving robot and all robots whose opaque pixels it touches.
    colliding_robots = []
    @room_layout[:robots].each do |other_robot|
      next if other_robot.equal? robot
      next if other_robot[:exploding]
      if robot_pixels_overlap? robot, robot_x, robot_y, other_robot
        colliding_robots << other_robot
      end
    end

    colliding_robots
  end

  def robot_pixels_overlap? robot, robot_x, robot_y, other_robot
    # The AABB test keeps the more expensive opaque-pixel lookup limited to
    # robots whose 8 x 8 footprints can actually touch.
    return false if robot_x + ROBOT_WIDTH <= other_robot[:x]
    return false if robot_x >= other_robot[:x] + ROBOT_WIDTH
    return false if robot_y + ROBOT_HEIGHT <= other_robot[:y]
    return false if robot_y >= other_robot[:y] + ROBOT_HEIGHT

    sprite = @robot_pixel_data[robot_sprite_path(robot)]
    other_sprite = @robot_pixel_data[robot_sprite_path(other_robot)]
    pixels = sprite[:opaque_pixels]
    other_lookup = other_sprite[:opaque_lookup]
    other_width = other_sprite[:w]
    other_height = other_sprite[:h]

    pixels.each do |pixel|
      world_x = robot_x + pixel[0]
      world_y = robot_y + pixel[1]
      other_x = world_x - other_robot[:x]
      other_y = world_y - other_robot[:y]
      next if other_x < 0 || other_x >= other_width
      next if other_y < 0 || other_y >= other_height

      return true if other_lookup[other_y * other_width + other_x]
    end

    false
  end

  def player_collides_with_wall? player_x, player_y, frame, facing
    # This is pixel-perfect collision, not rectangle collision. Cached opaque
    # source pixels are tested against the room's 84 x 48 wall-pixel map.
    sprite = @player_pixel_data[frame]
    wall_pixels = @room_layout[:wall_pixels]

    sprite[:opaque_pixels].each do |pixel|
      # Horizontal facing is a render flip, so mirror the source x coordinate
      # for collision as well. Pixel y coordinates were cached bottom-up.
      player_pixel_x = facing == :left ? sprite[:w] - pixel[0] - 1 : pixel[0]
      world_x = player_x + player_pixel_x
      world_y = player_y + pixel[1]
      return true if wall_pixel? wall_pixels, world_x, world_y
    end

    false
  end

  def wall_pixel? wall_pixels, x, y
    # Pixels outside the playfield are not walls. This is important for exit
    # detection: a player may temporarily move beyond the room edge before the
    # doorway rules decide whether to begin a room transition.
    return false if x < 0 || x >= SCREEN_WIDTH
    return false if y < 0 || y >= SCREEN_HEIGHT

    wall_row = wall_pixels[y]
    return false unless wall_row

    wall_row[x]
  end

end

module SceneRenderBehavior
  include DisplayConfig
  include PlayerConfig
  include RoomConfig
  include HudConfig
  def draw_scene
    # The playfield/background is fixed. During a transition only the old
    # room's walls, robots, and captured player are translated; the destination
    # room is not rendered until finish_room_transition commits it.
    outputs.background_color = COLORS[:background]
    outputs.sprites << PLAYFIELD_SPRITE

    if @room_transition_active
      offset = room_transition_offset
      wall_sprites = @room_layout[:wall_sprites]
      draw_walls wall_sprites, offset[0], offset[1]
      draw_robots @room_layout[:robots], offset[0], offset[1]
      if @otto_active
        path = otto_sprite_path
        outputs.sprites << {
          x: @otto_x + offset[0],
          y: @otto_y + offset[1],
          w: @otto_pixel_data[path][:w],
          h: @otto_pixel_data[path][:h],
          path: path
        }
      end
      draw_player @room_transition_player_x + offset[0],
                  @room_transition_player_y + offset[1],
                  @room_transition_player_frame,
                  @room_transition_player_facing
    else
      wall_sprites = @room_layout[:wall_sprites]
      draw_walls wall_sprites, 0, 0
      draw_robots @room_layout[:robots], 0, 0
      if @otto_active
        path = otto_sprite_path
        outputs.sprites << {
          x: @otto_x,
          y: @otto_y,
          w: @otto_pixel_data[path][:w],
          h: @otto_pixel_data[path][:h],
          path: path
        }
      end
      unless @player_respawn_pending || @game_over
        if @player_death_active
          # Hit sprites are 8 x 11 rather than the normal 8 x 9 player sprites.
          # Their origin is one pixel below the captured player origin so the
          # extra height grows downward as specified by the hit artwork.
          draw_player_hit @player_death_x,
                          @player_death_y - 1,
                          @player_death_frame,
                          @player_death_facing
        else
          if @player_shooting
            draw_player_shoot @player_x, @player_y, @player_shoot_direction
          else
            draw_player @player_x, @player_y, @player_frame, @player_facing
          end
          # Bullet hashes already contain the complete sprite primitive.
          outputs.sprites << @player_bullets
          outputs.sprites << @robot_bullets
        end
      end
    end
    draw_hud
    draw_game_over if @game_over
  end

  def draw_title_screen
    outputs.background_color = COLORS[:background]
    outputs.sprites << PLAYFIELD_SPRITE
    title_labels = [
      ['MAZE RUNNER', 41],
      ['High Score', 31],
      [@high_score.to_s, 22],
      ['Fire to Start', 13]
    ]
    outputs.borders << TITLE_SCREEN_BORDER_RECT
    outputs.labels << title_labels.map do |text, y|
      {
        x: SCREEN_WIDTH.idiv(2),
        y: y,
        text: text,
        font: HUD_FONT_PATH,
        size_px: HUD_LABEL_SIZE,
        alignment_enum: 1,
        r: 155, g: 199, b: 0
      }
    end
  end

  def room_transition_offset
    # The distance is captured when the transition begins. It moves the room
    # at least one pixel beyond the viewport and extends farther only when
    # needed to carry Otto's frozen sprite completely out of sight.
    transition_ticks = @room_transition_ticks.clamp(0, ROOM_TRANSITION_TICKS)
    distance = @room_transition_distance

    case @room_transition_direction
    # DragonRuby's y coordinate increases upward. Northward player travel
    # therefore moves the old room downward, and vice versa.
    when :north
      [0, -(distance * transition_ticks).idiv(ROOM_TRANSITION_TICKS)]
    when :south
      [0, (distance * transition_ticks).idiv(ROOM_TRANSITION_TICKS)]
    when :east
      [-(distance * transition_ticks).idiv(ROOM_TRANSITION_TICKS), 0]
    when :west
      [(distance * transition_ticks).idiv(ROOM_TRANSITION_TICKS), 0]
    else
      [0, 0]
    end
  end

  def draw_player x, y, frame, facing
    # The caller supplies either live coordinates or captured transition
    # coordinates. The sprite itself remains the same 8 x 9 logical asset.
    outputs.sprites << {
      x: x,
      y: y,
      w: PLAYER_WIDTH,
      h: PLAYER_HEIGHT,
      path: PLAYER_SPRITE_PATHS[frame],
      flip_horizontally: facing == :left
    }
  end

  def draw_player_shoot x, y, direction
    outputs.sprites << {
      x: x,
      y: y,
      w: PLAYER_WIDTH,
      h: PLAYER_HEIGHT,
      path: PLAYER_SHOOT_SPRITE_PATHS[direction]
    }
  end

end

module HudRenderBehavior
  include DisplayConfig
  include HudConfig
  def draw_hud
    if @game_over
      outputs.sprites << @score_panel_sprite
      outputs.borders << @score_border
    end
    outputs.labels << {
      x: SCORE_LABEL_X,
      y: SCORE_LABEL_Y,
      text: @score,
      font: HUD_FONT_PATH,
      size_px: HUD_LABEL_SIZE,
      r: 155, g: 199, b: 0
    }
    if @room_clear_bonus
      outputs.labels << {
        x: SCREEN_WIDTH.idiv(2) + 4,
        y: 9,
        text: "BONUS:#{@room_clear_bonus}",
        font: HUD_FONT_PATH,
        size_px: HUD_LABEL_SIZE,
        alignment_enum: 1,
        r: 155, g: 199, b: 0
      }
    end
    draw_humanoid_lives
  end

  def draw_humanoid_lives
    remaining_lives = @humanoids - 1
    return if remaining_lives <= 0

    spacing = PLAYER_LIFE_WIDTH + PLAYER_LIFE_GAP - 2
    total_width = remaining_lives * spacing - PLAYER_LIFE_GAP + 4
    first_x = SCREEN_WIDTH - total_width
    outputs.sprites << remaining_lives.times.map do |index|
      {
        x: first_x + index * spacing,
        y: 0,
        w: PLAYER_LIFE_WIDTH,
        h: PLAYER_LIFE_HEIGHT,
        path: PLAYER_LIFE_SPRITE_PATH
      }
    end
  end

  def draw_game_over
    outputs.sprites << GAME_OVER_PANEL_RECT
    outputs.borders << GAME_OVER_BORDER_RECT
    outputs.labels << {
      x: 21,
      y: @new_high_score ? 31 : 31 - 4,
      text: "GAME OVER",
      font: HUD_FONT_PATH,
      size_px: HUD_LABEL_SIZE,
      r: 155, g: 199, b: 0
    }
    if @new_high_score
      outputs.labels << {
        x: 10,
        y: 24,
        text: "NEW HIGH SCORE",
        font: HUD_FONT_PATH,
        size_px: HUD_LABEL_SIZE,
        r: 155, g: 199, b: 0
      }
    end
  end

end

module ActorRenderBehavior
  include PlayerConfig
  include RobotConfig

  def draw_robots robots, offset_x, offset_y
    # Robot positions are stored in Nokia screen coordinates. During a room
    # transition they travel with the old room, just like its walls and player.
    # An exploding robot keeps its origin and switches to the larger 16 x 18
    # blast sprite until update_robot_explosion removes it.
    return if robots.empty?

    outputs.sprites << robots.map do |robot|
      if robot[:exploding]
        path = ROBOT_EXPLOSION_SPRITE_PATHS[robot[:explosion_frame]]
        {
          x: robot[:x] + offset_x + ROBOT_EXPLOSION_OFFSET_X,
          y: robot[:y] + offset_y + ROBOT_EXPLOSION_OFFSET_Y,
          w: ROBOT_EXPLOSION_WIDTH,
          h: ROBOT_EXPLOSION_HEIGHT,
          path: path
        }
      else
        path = robot_sprite_path robot
        {
          x: robot[:x] + offset_x,
          y: robot[:y] + offset_y,
          w: ROBOT_WIDTH,
          h: ROBOT_HEIGHT,
          path: path
        }
      end
    end
  end

  def robot_sprite_path robot
    velocity_x = robot[:velocity_x]
    velocity_y = robot[:velocity_y]
    if robot[:movement_animation_active] && velocity_x == 0 && velocity_y == 0
      velocity_x = robot[:last_movement_velocity_x]
      velocity_y = robot[:last_movement_velocity_y]
    end
    if robot[:movement_animation_active] && velocity_x < 0
      ROBOT_MOVE_LEFT_SPRITE_PATHS[robot[:move_left_frame]]
    elsif robot[:movement_animation_active] && velocity_x > 0
      ROBOT_MOVE_RIGHT_SPRITE_PATHS[robot[:move_right_frame]]
    elsif robot[:movement_animation_active] && velocity_y < 0
      ROBOT_MOVE_DOWN_SPRITE_PATHS[robot[:move_down_frame]]
    elsif robot[:movement_animation_active] && velocity_y > 0
      ROBOT_MOVE_UP_SPRITE_PATHS[robot[:move_up_frame]]
    else
      ROBOT_SPRITE_PATHS[robot[:standing_frame]]
    end
  end

  def draw_player_hit x, y, frame, facing
    # The hit animation has its own 8 x 11 assets and is rendered at the
    # captured impact position, one pixel lower than the normal player origin.
    outputs.sprites << {
      x: x,
      y: y,
      w: PLAYER_HIT_WIDTH,
      h: PLAYER_HIT_HEIGHT,
      path: PLAYER_HIT_SPRITE_PATHS[frame],
      flip_horizontally: facing == :left
    }
  end

  def draw_walls wall_sprites, offset_x, offset_y
    # Normal room rendering reuses the cached wall primitives. A transition
    # needs translated copies, while the stationary case can be bulk-added
    # without rebuilding any geometry or hashes.
    if offset_x == 0 && offset_y == 0
      outputs.sprites << wall_sprites
      return
    end

    outputs.sprites << wall_sprites.map do |wall|
      wall.merge(x: wall[:x] + offset_x, y: wall[:y] + offset_y)
    end
  end

end
module WallDataBehavior
  include DisplayConfig
  include RoomConfig
  def build_wall_data walls
  wall_sprites = []
  wall_pixels = Array.new(SCREEN_HEIGHT) { Array.new(SCREEN_WIDTH, false) }
  walls.each_with_index do |row, map_y|
    row.each_with_index do |is_wall, map_x|
      next unless is_wall

      color = COLORS[:wall]
      cell_x = map_x * CELL_SIZE
      base_cell_y = MAP_ROW_Y[map_y]
      cell_y = base_cell_y
      pixel_x = cell_x + 1

      wall_sprites << {
        x: pixel_x,
        y: cell_y,
        w: WALL_THICKNESS,
        h: WALL_THICKNESS,
        path: :solid,
        **color
      }
      wall_pixels[cell_y][pixel_x] = true

      if wall_at?(walls, map_x + 1, map_y)
        wall_sprites << {
          x: pixel_x,
          y: cell_y,
          w: CELL_SIZE + WALL_THICKNESS,
          h: WALL_THICKNESS,
          path: :solid,
          **color
        }
        (CELL_SIZE + WALL_THICKNESS).times do |index|
          wall_pixels[cell_y][pixel_x + index] = true
        end
      end

      if wall_at?(walls, map_x, map_y + 1)
        vertical_height = MAP_ROW_Y[map_y + 1] - base_cell_y + WALL_THICKNESS
        wall_sprites << {
          x: pixel_x,
          y: cell_y,
          w: WALL_THICKNESS,
          h: vertical_height,
          path: :solid,
          **color
        }
        vertical_height.times do |index|
          wall_pixels[cell_y + index][pixel_x] = true
        end
      end
    end
  end

  { sprites: wall_sprites, pixels: wall_pixels }
  end

  def wall_at? walls, map_x, map_y
  # Map lookups outside the 21 x 10 lattice are empty. This lets the
  # connection loops safely inspect neighboring cells at the borders.
  return false if map_x < 0 || map_x >= MAP_WIDTH
  return false if map_y < 0 || map_y >= MAP_HEIGHT

  walls[map_y][map_x]
  end
end

module RoomGenerationBehavior
  include DisplayConfig
  include RobotConfig
  include RoomConfig
  def generate_room room_x, room_y, blocked_exit = nil,
                 spawn_threshold = ROBOT_SPAWN_THRESHOLD_INITIAL,
                 robot_move_ticks = ROBOT_MOVE_TICKS_INITIAL
  # Room generation is deterministic: the coordinate becomes the 16-bit
  # seed, the base borders and doorway are installed, each pillar adds a
  # generated arm, and an optional blocked_exit closes the return doorway.
  # The returned layout contains cached wall geometry, the wall_pixels map,
  # the coarse robot IQ wall grid, and the robots spawned from the RNG state
  # left by maze generation.
  walls = Array.new(MAP_HEIGHT) { Array.new(MAP_WIDTH, false) }
  draw_base_room walls
  add_blocked_exit walls, blocked_exit if blocked_exit

  seed = room_seed(room_x, room_y)

  # One setup advance follows the room-coordinate seed, then each pillar
  # consumes a direction value followed by a second setup value.
  seed = next_random seed

  PILLARS.each do |pillar_x, pillar_y|
    seed = next_random seed
    direction = DIRECTIONS[(seed >> 8) & 3]
    draw_pillar_wall walls, pillar_x, pillar_y, direction
    seed = next_random seed
  end

  wall_data = build_wall_data walls
  wall_pixels = wall_data[:pixels]
  wall_sprites = wall_data[:sprites]
  robot_zone_walls = build_robot_zone_walls walls
  robot_open_map = build_robot_open_map wall_pixels
  robot_state = spawn_robots seed, spawn_threshold, robot_open_map,
                               robot_move_ticks

  {
    wall_pixels: wall_pixels,
    wall_sprites: wall_sprites,
    robot_zone_walls: robot_zone_walls,
    robots: robot_state[:robots],
    spawn_threshold: robot_state[:spawn_threshold],
    robot_move_ticks: robot_state[:robot_move_ticks]
  }
  end

end

module RobotPlacementBehavior
  include DisplayConfig
  include RobotConfig
  def robot_spawn_timer_phase spawn_index, timer_length
    # Spread movement and AI timers across deterministic spawn slots.
    (spawn_index * timer_length).idiv ROBOT_SPAWN_ATTEMPT_COUNT
  end

  def spawn_robots seed, spawn_threshold, robot_open_map, robot_move_ticks
  # Advance the BCD spawn threshold, then test eleven deterministic slots
  # against the high byte of the room RNG state.
  room_spawn_threshold = next_robot_spawn_threshold spawn_threshold
  room_robot_move_ticks = [robot_move_ticks - 2, ROBOT_MOVE_TICKS_MIN].max
  robot_positions = []

  ROBOT_SPAWN_ATTEMPT_COUNT.times do |index|
    base_x, base_y = ROBOT_SPAWN_BASES[index]
    seed = next_random seed
    next if (seed >> 8) < room_spawn_threshold

    seed = next_random seed
    source_x = base_x + ((seed >> 8) & 0x1f)
    seed = next_random seed
    source_y = base_y + ((seed >> 8) & 0x1f)
    candidate = {
      x: (source_x * SCREEN_WIDTH).idiv(ROBOT_SOURCE_WIDTH),
      y: (source_y * SCREEN_HEIGHT).idiv(ROBOT_SOURCE_HEIGHT)
    }
    position = find_open_robot_position(
      candidate,
      robot_open_map,
      ROBOT_SPAWN_Y_RANGES[base_y],
      robot_positions
    )
    if position
      position[:spawn_index] = index
      robot_positions << position
    end
  end

  if robot_positions.empty?
    # Guarantee one robot using the same placement checks as normal spawns.
    fallback_position = find_open_robot_position(
      { x: 21, y: 24 },
      robot_open_map,
      [0, SCREEN_HEIGHT - ROBOT_HEIGHT],
      robot_positions
    )
    if fallback_position
      fallback_position[:spawn_index] = 0
      robot_positions << fallback_position
    end
  end

  robots = robot_positions.map do |position|
    index = position[:spawn_index]
    frame = index % 2
    {
      x: position[:x],
      y: position[:y],
      move_ticks: robot_spawn_timer_phase(index, room_robot_move_ticks),
      ai_ticks: robot_spawn_timer_phase(index, ROBOT_AI_TICKS),
      velocity_x: 0,
      velocity_y: 0,
      last_movement_velocity_x: 0,
      last_movement_velocity_y: 0,
      desired_velocity_x: 0,
      desired_velocity_y: 0,
      standing_scan_frames: 0,
      movement_start_ticks: 0,
      movement_stop_ticks: 0,
      fire_cooldown_ticks: 0,
      standing_frame: index % ROBOT_STAND_FRAME_COUNT,
      standing_frame_ticks: 0,
      movement_animation_active: false,
      exploding: false,
      explosion_ticks: 0,
      explosion_frame: 0,
      explosion_finished: false,
      move_left_frame: frame,
      move_right_frame: frame,
      move_down_frame: frame,
      move_up_frame: frame
    }
  end

  {
    robots: robots,
    spawn_threshold: room_spawn_threshold,
    robot_move_ticks: room_robot_move_ticks
  }
  end

  def find_open_robot_position candidate, robot_open_map, y_range, occupied_positions
  # Find the nearest valid origin within the candidate's vertical band.
  max_x = SCREEN_WIDTH - ROBOT_WIDTH
  min_y = y_range[0]
  max_y = y_range[1]
  nearest_position = nil
  nearest_distance = nil

  min_y.upto(max_y) do |y|
    0.upto(max_x) do |x|
      next unless robot_open_map[y][x]
      next if robot_in_forbidden_section? x, y
      next if robot_overlaps_existing? x, y, occupied_positions

      distance = (x - candidate[:x]).abs + (y - candidate[:y]).abs
      next if nearest_distance && distance >= nearest_distance

      nearest_position = { x: x, y: y }
      nearest_distance = distance
    end
  end

  nearest_position
  end

  def robot_in_forbidden_section? x, y
  # Test the complete 8 x 8 footprint, not just its origin, so a robot cannot
  # straddle an entrance section boundary.
  ROBOT_FORBIDDEN_SECTIONS.any? do |section|
    x < section[:x] + section[:w] &&
      x + ROBOT_WIDTH > section[:x] &&
      y < section[:y] + section[:h] &&
      y + ROBOT_HEIGHT > section[:y]
  end
  end

  def robot_overlaps_existing? x, y, occupied_positions
  # Robots may touch at their edges, but their 8 x 8 occupied areas must not
  # share a pixel. Only already-accepted robots are checked, making spawn
  # order deterministic.
  occupied_positions.any? do |robot|
    x < robot[:x] + ROBOT_WIDTH &&
      x + ROBOT_WIDTH > robot[:x] &&
      y < robot[:y] + ROBOT_HEIGHT &&
      y + ROBOT_HEIGHT > robot[:y]
  end
  end

  def next_robot_spawn_threshold threshold
    # Convert BCD to decimal, add 60, wrap at 100, and pack back into BCD.
    decimal_threshold = (threshold >> 4) * 10 + (threshold & 0x0f)
    decimal_increment = (ROBOT_SPAWN_THRESHOLD_INCREMENT >> 4) * 10 +
                        (ROBOT_SPAWN_THRESHOLD_INCREMENT & 0x0f)
    decimal_threshold = (decimal_threshold + decimal_increment) % 100
    (decimal_threshold / 10) * 16 + decimal_threshold % 10
  end

end

module RobotZoneMapBehavior
  include DisplayConfig
  include RobotConfig
  include RoomConfig
  def build_robot_open_map wall_pixels
  # Build the valid 8 x 8 robot-origin map once per room. Spawn attempts then
  # perform inexpensive boolean lookups instead of repeating 64-pixel wall
  # scans for every robot candidate.
  max_x = SCREEN_WIDTH - ROBOT_WIDTH
  max_y = SCREEN_HEIGHT - ROBOT_HEIGHT
  open_map = Array.new(max_y + 1) { Array.new(max_x + 1, false) }

  0.upto(max_y) do |y|
    0.upto(max_x) do |x|
      open_map[y][x] = robot_fits_in_wall_map? wall_pixels, x, y
    end
  end

  open_map
  end

  def build_robot_zone_walls walls
  # Convert the logical 21 x 10 maze into 15 coarse edge-attribute zones.
  # This intentionally uses wall cells rather than rendered
  # pixels: IQ reads topology, while robot_collides_with_wall? handles the
  # final opaque-pixel wall impact after movement.
  zone_walls = []
  3.times do |zone_row|
    map_y_start = ROBOT_ZONE_MAP_Y_BOUNDS[zone_row]
    map_y_end = ROBOT_ZONE_MAP_Y_BOUNDS[zone_row + 1] - 1
    5.times do |zone_column|
      map_x_start = ROBOT_ZONE_MAP_X_BOUNDS[zone_column]
      map_x_end = if zone_column == 4
                    MAP_WIDTH - 1
                  else
                    ROBOT_ZONE_MAP_X_BOUNDS[zone_column + 1]
                  end
      map_y_top = if zone_row == 2
                    MAP_HEIGHT - 1
                  else
                    ROBOT_ZONE_MAP_Y_BOUNDS[zone_row + 1]
                  end
      attributes = 0
      attributes |= 0x01 if robot_zone_vertical_wall? walls,
                                                        map_x_start,
                                                        map_y_start,
                                                        map_y_end,
                                                        WALL_HEIGHT
      attributes |= 0x02 if robot_zone_vertical_wall? walls,
                                                        map_x_end,
                                                        map_y_start,
                                                        map_y_end,
                                                        WALL_HEIGHT
      attributes |= 0x04 if robot_zone_horizontal_wall? walls,
                                                          map_y_top,
                                                          map_x_start,
                                                          map_x_end,
                                                          WALL_WIDTH
      attributes |= 0x08 if robot_zone_horizontal_wall? walls,
                                                          ROBOT_ZONE_MAP_Y_BOUNDS[zone_row],
                                                          map_x_start,
                                                          map_x_end,
                                                          WALL_WIDTH
      zone_walls << attributes
    end
  end

  zone_walls
  end

  def robot_zone_vertical_wall? walls, map_x, map_y_start, map_y_end, minimum_run
  run_length = 0
  map_y_start.upto(map_y_end) do |map_y|
    if walls[map_y][map_x]
      run_length += 1
      return true if run_length >= minimum_run
    else
      run_length = 0
    end
  end

  false
  end

  def robot_zone_horizontal_wall? walls, map_y, map_x_start, map_x_end, minimum_run
  run_length = 0
  map_x_start.upto(map_x_end) do |map_x|
    if walls[map_y][map_x]
      run_length += 1
      return true if run_length >= minimum_run
    else
      run_length = 0
    end
  end

  false
  end

  def robot_fits_in_wall_map? wall_pixels, x, y
  return false if x < 0 || y < 0
  return false if x > SCREEN_WIDTH - ROBOT_WIDTH
  return false if y > SCREEN_HEIGHT - ROBOT_HEIGHT

  ROBOT_HEIGHT.times do |offset_y|
    row = wall_pixels[y + offset_y]
    ROBOT_WIDTH.times do |offset_x|
      return false if row[x + offset_x]
    end
  end

  true
  end

end

module RoomGeometryBehavior
  include DisplayConfig
  include RoomConfig
  def draw_base_room walls
  # The base room is an outline with a three-cell top/bottom doorway and a
  # two-cell left/right doorway. These skipped map cells are the openings
  # that the coordinate-based exit predicates accept.
  # Top and bottom borders have a three-cell central doorway: x 9, 10, 11.
  MAP_WIDTH.times do |map_x|
    next if map_x >= 9 && map_x <= 11

    walls[0][map_x] = true
    walls[MAP_HEIGHT - 1][map_x] = true
  end

  # Side borders have a two-cell doorway: y 4, 5.
  MAP_HEIGHT.times do |map_y|
    next if map_y >= 4 && map_y <= 5

    walls[map_y][0] = true
    walls[map_y][MAP_WIDTH - 1] = true
  end

  PILLARS.each do |pillar_x, pillar_y|
    walls[pillar_y][pillar_x] = true
  end
  end

  def add_blocked_exit walls, direction
  # A room entered from one direction blocks the opposite doorway. The
  # blocked cells are added before wall_pixels is built, so they are both
  # rendered and deadly through the normal pixel-collision path.
  case direction
  when :west
    walls[4][0] = true
    walls[5][0] = true
  when :east
    walls[4][MAP_WIDTH - 1] = true
    walls[5][MAP_WIDTH - 1] = true
  when :south
    3.times { |index| walls[0][9 + index] = true }
  when :north
    3.times { |index| walls[MAP_HEIGHT - 1][9 + index] = true }
  end
  end

  def draw_pillar_wall walls, pillar_x, pillar_y, direction
  # PILLARS identifies each center. The generated direction extends that
  # center by WALL_HEIGHT cells vertically or WALL_WIDTH cells horizontally.
  walls[pillar_y][pillar_x] = true

  case direction
  when :north
    WALL_HEIGHT.times { |index| walls[pillar_y + index + 1][pillar_x] = true }
  when :south
    WALL_HEIGHT.times { |index| walls[pillar_y - index - 1][pillar_x] = true }
  when :east
    WALL_WIDTH.times { |index| walls[pillar_y][pillar_x + index + 1] = true }
  when :west
    WALL_WIDTH.times { |index| walls[pillar_y][pillar_x - index - 1] = true }
  end
  end
end

module Main
  include OttoBehavior
  include RoomNavigationBehavior
  include ProjectileBehavior
  include SpritePixelCacheBehavior
  include RobotMovementBehavior
  include PlayerCombatBehavior
  include GameLoopBehavior
  include GameLifecycleBehavior
  include RobotCombatBehavior
  include PlayerInputBehavior
  include CombatCollisionBehavior
  include PlayerMovementBehavior
  include RoomTransitionBehavior
  include PlayerDeathBehavior
  include CollisionGeometryBehavior
  include SceneRenderBehavior
  include HudRenderBehavior
  include ActorRenderBehavior
  include WallDataBehavior
  include RoomGenerationBehavior
  include RobotPlacementBehavior
  include RobotZoneMapBehavior
  include RoomGeometryBehavior
end

DR.disable_framerate_warning!
DR.reset
