function widget:GetInfo()
  return {
    name      = "ATI pointsize Fail",
    desc      = "ATI pointsize Fail",
    author    = "Masure",
    date      = "2010 Sept 14",
    license   = "GNU GPL, v2 or later",
    layer     = 1,     --  after the normal widgets
    enabled   = false  --  loaded by default?
  }
end

local GL_POINTS   = GL.POINTS

local glBeginEnd  = gl.BeginEnd
local glColor     = gl.Color
local glPointSize = gl.PointSize
local glVertex    = gl.Vertex

function widget:DrawScreen()
   glPointSize(10)
   glColor({1,1,0} )
   glBeginEnd(GL_POINTS, glVertex, 100, 100)
end

