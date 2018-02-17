-- rounded cubes

minetest .register_node( 'rounded_cubes:rounded_cube',
  {
    drop  = 'rounded_cubes:rounded_cube',
    description = 'Rounded Cube',

    drawtype = 'mesh',
    mesh = 'rounded_cube.obj',

    tiles = { 'rounded_cube.png' },

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

-- http://www.nathansalapat.com/minetest/b3d4minetest-08

    tiles  = { -- thanks NathanS21
      'cylindrical_cube_top.png', -- top
      'cylindrical_cube_top.png', -- bottom
      'cylindrical_cube_side.png', -- left
      'cylindrical_cube_side.png', -- right
      'cylindrical_cube_side.png', -- back
      'cylindrical_cube_side.png', -- front
    }, -- tiles

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

