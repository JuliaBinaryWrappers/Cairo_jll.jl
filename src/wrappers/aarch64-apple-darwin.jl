# Autogenerated wrapper script for Cairo_jll for aarch64-apple-darwin
export libcairo, libcairo_gobject, libcairo_script_interpreter

using Glib_jll
using Pixman_jll
using libpng_jll
using Fontconfig_jll
using FreeType2_jll
using Bzip2_jll
using Zlib_jll
JLLWrappers.@generate_wrapper_header("Cairo")
JLLWrappers.@declare_library_product(libcairo, "@rpath/libcairo.2.dylib")
JLLWrappers.@declare_library_product(libcairo_gobject, "@rpath/libcairo-gobject.2.dylib")
JLLWrappers.@declare_library_product(libcairo_script_interpreter, "@rpath/libcairo-script-interpreter.2.dylib")
function __init__()
    JLLWrappers.@generate_init_header(Glib_jll, Pixman_jll, libpng_jll, Fontconfig_jll, FreeType2_jll, Bzip2_jll, Zlib_jll)
    JLLWrappers.@init_library_product(
        libcairo,
        "lib/libcairo.2.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libcairo_gobject,
        "lib/libcairo-gobject.2.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libcairo_script_interpreter,
        "lib/libcairo-script-interpreter.2.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
