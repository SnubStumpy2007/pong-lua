return {
  version = "1.10",
  luaversion = "5.1",
  tiledversion = "1.11.0",
  class = "",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 31,
  height = 20,
  tilewidth = 32,
  tileheight = 32,
  nextlayerid = 5,
  nextobjectid = 11,
  properties = {},
  tilesets = {
    {
      name = "fancy-court",
      firstgid = 1,
      class = "",
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      columns = 25,
      image = "fancy-court.png",
      imagewidth = 800,
      imageheight = 600,
      objectalignment = "unspecified",
      tilerendersize = "tile",
      fillmode = "stretch",
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 32,
        height = 32
      },
      properties = {},
      wangsets = {},
      tilecount = 450,
      tiles = {}
    }
  },
  layers = {
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 31,
      height = 20,
      id = 1,
      name = "Court",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 163, 84, 84, 109, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84,
        84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 163, 84, 84, 109, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84,
        84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 163, 84, 84, 109, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84,
        84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 163, 84, 84, 109, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84,
        84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 163, 109, 84, 109, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84,
        84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 163, 109, 84, 109, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84,
        84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 163, 84, 84, 109, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84,
        84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 163, 84, 84, 109, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84,
        84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 163, 84, 109, 109, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84,
        84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 109, 163, 109, 109, 109, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84,
        84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 109, 163, 109, 109, 109, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84,
        84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 109, 163, 109, 109, 109, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84,
        84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 109, 163, 109, 84, 109, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84,
        84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 163, 84, 84, 109, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84,
        84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 163, 84, 109, 109, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84,
        84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 163, 84, 109, 109, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84,
        84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 163, 84, 109, 109, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84,
        84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 163, 84, 84, 109, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84,
        84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 163, 84, 84, 109, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84,
        84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 163, 84, 84, 109, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 2,
      name = "Walls",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 3,
          name = "",
          type = "",
          shape = "rectangle",
          x = 8,
          y = 608,
          width = 976,
          height = 24,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 4,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2,
          y = -17,
          width = 976,
          height = 20,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 3,
      name = "p1Goal",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 8,
          name = "",
          type = "",
          shape = "rectangle",
          x = -30,
          y = -6,
          width = 22,
          height = 642,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 4,
      name = "cpuGoal",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 9,
          name = "",
          type = "",
          shape = "rectangle",
          x = 814,
          y = 8,
          width = 14,
          height = 596,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
