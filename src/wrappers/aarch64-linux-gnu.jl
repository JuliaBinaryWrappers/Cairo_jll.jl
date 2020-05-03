# Autogenerated wrapper script for Cairo_jll for aarch64-linux-gnu
export libcairo_script_interpreter, libcairo, libcairo_gobject

using Glib_jll
using Pixman_jll
using libpng_jll
using Fontconfig_jll
using FreeType2_jll
using Bzip2_jll
using Xorg_libXext_jll
using Xorg_libXrender_jll
using LZO_jll
using Zlib_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"

# Relative path to `libcairo_script_interpreter`
const libcairo_script_interpreter_splitpath = ["lib", "libcairo-script-interpreter.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libcairo_script_interpreter_path = ""

# libcairo_script_interpreter-specific global declaration
# This will be filled out by __init__()
libcairo_script_interpreter_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libcairo_script_interpreter = "libcairo-script-interpreter.so.2"


# Relative path to `libcairo`
const libcairo_splitpath = ["lib", "libcairo.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libcairo_path = ""

# libcairo-specific global declaration
# This will be filled out by __init__()
libcairo_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libcairo = "libcairo.so.2"


# Relative path to `libcairo_gobject`
const libcairo_gobject_splitpath = ["lib", "libcairo-gobject.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libcairo_gobject_path = ""

# libcairo_gobject-specific global declaration
# This will be filled out by __init__()
libcairo_gobject_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libcairo_gobject = "libcairo-gobject.so.2"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"Cairo")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # We first need to add to LIBPATH_list the libraries provided by Julia
    append!(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)])
    # From the list of our dependencies, generate a tuple of all the PATH and LIBPATH lists,
    # then append them to our own.
    foreach(p -> append!(PATH_list, p), (Glib_jll.PATH_list, Pixman_jll.PATH_list, libpng_jll.PATH_list, Fontconfig_jll.PATH_list, FreeType2_jll.PATH_list, Bzip2_jll.PATH_list, Xorg_libXext_jll.PATH_list, Xorg_libXrender_jll.PATH_list, LZO_jll.PATH_list, Zlib_jll.PATH_list,))
    foreach(p -> append!(LIBPATH_list, p), (Glib_jll.LIBPATH_list, Pixman_jll.LIBPATH_list, libpng_jll.LIBPATH_list, Fontconfig_jll.LIBPATH_list, FreeType2_jll.LIBPATH_list, Bzip2_jll.LIBPATH_list, Xorg_libXext_jll.LIBPATH_list, Xorg_libXrender_jll.LIBPATH_list, LZO_jll.LIBPATH_list, Zlib_jll.LIBPATH_list,))

    global libcairo_script_interpreter_path = normpath(joinpath(artifact_dir, libcairo_script_interpreter_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libcairo_script_interpreter_handle = dlopen(libcairo_script_interpreter_path)
    push!(LIBPATH_list, dirname(libcairo_script_interpreter_path))

    global libcairo_path = normpath(joinpath(artifact_dir, libcairo_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libcairo_handle = dlopen(libcairo_path)
    push!(LIBPATH_list, dirname(libcairo_path))

    global libcairo_gobject_path = normpath(joinpath(artifact_dir, libcairo_gobject_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libcairo_gobject_handle = dlopen(libcairo_gobject_path)
    push!(LIBPATH_list, dirname(libcairo_gobject_path))

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

