-- rounded cubes

minetest .register_node( 'rounded_cubes:rounded_cube',
  {
    drop  = 'rounded_cubes:rounded_cube',
    description = 'Rounded Cube',
    drawtype = 'mesh',

    mesh = 'rounded_cube.obj',
    tiles = { 'rounded_cube.png' },
    inventory_image = minetest .inventorycube('rounded_cube.png'),

    light_source = 4,
    paramtype = 'light',
    groups = {snappy=1, choppy=2, oddly_breakable_by_hand=2},

    selection_box = {
      type = 'fixed',
      fixed = {
        {-0.475, -0.475, -0.475,  0.475, 0.475, 0.475 },
      }, -- fixed
    }, -- selection_box

  } -- rounded_cube
) -- register_node

