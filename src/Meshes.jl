# ------------------------------------------------------------------
# Licensed under the MIT License. See LICENSE in the project root.
# ------------------------------------------------------------------

module Meshes

using StaticArrays
using IterTools
using LinearAlgebra

using Base: @propagate_inbounds

import Base: +, -

include("vectors.jl")
include("matrices.jl")
include("points.jl")
include("geometries.jl")
include("connectivities.jl")
include("viewtypes.jl")
include("meshes.jl")
include("boundingboxes.jl")

# points
export Point, Point2, Point3, Point2f, Point3f
export coordtype, coordinates

# vectors
export Vec, Vec2, Vec3, Vec2f, Vec3f
export vunit, vfill

# geometries
export Geometry
export coordtype

# primitives
export Primitive
export Box, Ball, Sphere, Cylinder
export center, radius, height, sides, volume

# polytopes
export Polytope
export Segment, Triangle, Quadrangle
export Pyramid, Tetrahedron, Hexahedron
export vertices

# chains
export Chain

# connectivities
export Connectivity

# meshes
export Mesh
export elements, volume

# TODO: review these
export LineFace, NgonFace
export AbstractFace, TriangleFace, QuadFace, TetrahedronFace
export FaceView, TupleView
export connect, decompose, faces, convert_simplex
export before, during, overlaps, finishes

# bounding boxes
export boundingbox

end # module
