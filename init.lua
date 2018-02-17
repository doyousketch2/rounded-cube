-- rounded cubes

minetest .register_node( 'rounded_cubes:rounded_cube',
  {
    drop  = 'rounded_cubes:rounded_cube',
    description = 'Rounded Cube',

    drawtype = 'mesh',
    mesh = 'rounded_cube.obj',

    tiles = { 'rounded_cube.png' },

    light_source = 1,
    paramtype = 'light',

    groups = {snappy=1, choppy=2, oddly_breakable_by_hand=2},
    inventory_image = minetest .inventorycube('rounded_cube.png'),

    selection_box = {
      type = 'fixed',
      fixed = {
        {-0.475, -0.475, -0.475,  0.475, 0.475, 0.475 },
      }, -- fixed
    }, -- selection_box

  } -- rounded_cube
) -- register_node

--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

minetest .register_node( 'rounded_cubes:cylindrical_cube',
  {
    drop  = 'rounded_cubes:cylindrical_cube',
    description = 'Cylindrical Cube',

    drawtype = 'mesh',
    mesh = 'cylindrical_cube.obj',

    tiles  = {
      'cylindrical_cube.png', -- top
      'cylindrical_cube.png', -- bottom
      'rounded_cube.png', -- left
      'rounded_cube.png', -- right
      'rounded_cube.png', -- back
      'rounded_cube.png', -- front
    }, -- tiles

    light_source = 1,
    paramtype = 'light',

    groups = {snappy=1, choppy=2, oddly_breakable_by_hand=2},
    inventory_image = minetest .inventorycube('cylindrical_cube.png', 'rounded_cube.png', 'rounded_cube.png'),

    selection_box = {
      type = 'fixed',
      fixed = {
        {-0.475, -0.5, -0.475,  0.475, 0.5, 0.475 },
      }, -- fixed
    }, -- selection_box

  } -- rounded_cube
) -- register_node

