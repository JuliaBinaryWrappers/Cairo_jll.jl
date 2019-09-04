# Autogenerated wrapper script for Cairo_jll for arm-linux-gnueabihf
export libcairo

using Pixman_jll
using libpng_jll
using Fontconfig_jll
using FreeType2_jll
using Bzip2_jll
using X11_jll
using LZO_jll
using Zlib_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"

# Relative path to `libcairo`
const libcairo_splitpath = ["lib", "libcairo-script-interpreter.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libcairo_path = ""

# libcairo-specific global declaration
# This will be filled out by __init__()
libcairo_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libcairo = "libcairo-script-interpreter.so.2"


"""
Open all libraries
"""
function __init__()
    global prefix = abspath(joinpath(@__DIR__, ".."))

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    append!.(Ref(PATH_list), (Pixman_jll.PATH_list, libpng_jll.PATH_list, Fontconfig_jll.PATH_list, FreeType2_jll.PATH_list, Bzip2_jll.PATH_list, X11_jll.PATH_list, LZO_jll.PATH_list, Zlib_jll.PATH_list,))
    append!.(Ref(LIBPATH_list), (Pixman_jll.LIBPATH_list, libpng_jll.LIBPATH_list, Fontconfig_jll.LIBPATH_list, FreeType2_jll.LIBPATH_list, Bzip2_jll.LIBPATH_list, X11_jll.LIBPATH_list, LZO_jll.LIBPATH_list, Zlib_jll.LIBPATH_list,))

    global libcairo_path = abspath(joinpath(artifact"Cairo", libcairo_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libcairo_handle = dlopen(libcairo_path)
    push!(LIBPATH_list, dirname(libcairo_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(LIBPATH_list, ':')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

