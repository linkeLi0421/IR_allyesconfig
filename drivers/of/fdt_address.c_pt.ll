; ModuleID = '/llk/IR_all_yes/drivers/of/fdt_address.c_pt.bc'
source_filename = "../drivers/of/fdt_address.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }

@initial_boot_params = external dso_local local_unnamed_addr global ptr, align 4
@fdt_translate_address.__UNIQUE_ID_ddebug105 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 43, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fdt_address\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fdt_translate_address\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/of/fdt_address.c\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"** translation for device %s **\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"OF: fdt: ** translation for device %s **\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@fdt_translate_address._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013OF: fdt: warning: device tree node '%s' has no address.\0A\00", [37 x i8] zeroinitializer }, align 32
@fdt_translate_address._entry_ptr = internal global ptr @fdt_translate_address._entry, section ".printk_index", align 4
@fdt_translate_address._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013OF: fdt: Bad cell count for %s\0A\00", [62 x i8] zeroinitializer }, align 32
@fdt_translate_address._entry_ptr.9 = internal global ptr @fdt_translate_address._entry.7, section ".printk_index", align 4
@fdt_translate_address.__UNIQUE_ID_ddebug106 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.10, i8 0, i8 49, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bus (na=%d, ns=%d) on %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"OF: fdt: bus (na=%d, ns=%d) on %s\0A\00", [61 x i8] zeroinitializer }, align 32
@fdt_translate_address.__UNIQUE_ID_ddebug107 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.13, i8 0, i8 52, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"reached root node\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"OF: fdt: reached root node\0A\00", [36 x i8] zeroinitializer }, align 32
@fdt_translate_address._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fdt_translate_address._entry_ptr.16 = internal global ptr @fdt_translate_address._entry.15, section ".printk_index", align 4
@fdt_translate_address.__UNIQUE_ID_ddebug108 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.17, i8 0, i8 56, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"parent bus (na=%d, ns=%d) on %s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"OF: fdt: parent bus (na=%d, ns=%d) on %s\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ranges\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"#address-cells\00", [17 x i8] zeroinitializer }, align 32
@dt_root_addr_cells = external dso_local local_unnamed_addr global i32, section ".init.data", align 4
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"#size-cells\00", [20 x i8] zeroinitializer }, align 32
@dt_root_size_cells = external dso_local local_unnamed_addr global i32, section ".init.data", align 4
@fdt_bus_default_map.__UNIQUE_ID_ddebug100 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 0, i8 20, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fdt_bus_default_map\00", [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"default map, cp=%llx, s=%llx, da=%llx\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"OF: fdt: default map, cp=%llx, s=%llx, da=%llx\0A\00", [48 x i8] zeroinitializer }, align 32
@fdt_translate_one.__UNIQUE_ID_ddebug101 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.27, i8 0, i8 31, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fdt_translate_one\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"empty ranges, 1:1 translation\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"OF: fdt: empty ranges, 1:1 translation\0A\00", [56 x i8] zeroinitializer }, align 32
@fdt_translate_one.__UNIQUE_ID_ddebug102 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.29, i8 0, i8 32, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"walking ranges...\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"OF: fdt: walking ranges...\0A\00", [36 x i8] zeroinitializer }, align 32
@fdt_translate_one.__UNIQUE_ID_ddebug103 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.31, i8 0, i8 35, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"not found !\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"OF: fdt: not found !\0A\00", [42 x i8] zeroinitializer }, align 32
@fdt_translate_one.__UNIQUE_ID_ddebug104 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.34, i8 0, i8 36, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"with offset: %llx\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"OF: fdt: with offset: %llx\0A\00", [36 x i8] zeroinitializer }, align 32
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 172, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 175, i32 39 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 177, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 191, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 197, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 209, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 218, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 223, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 228, i32 25 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 54, i32 42 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 62, i32 42 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 79, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 125, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 129, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 140, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.130 = private constant [28 x i8] c"../drivers/of/fdt_address.c\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 147, i32 2 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @fdt_translate_address._entry, ptr @fdt_translate_address._entry.15, ptr @fdt_translate_address._entry.7, ptr @fdt_translate_address._entry_ptr, ptr @fdt_translate_address._entry_ptr.16, ptr @fdt_translate_address._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.35], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdt_translate_address._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdt_translate_address._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdt_translate_address._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i64 @of_flat_dt_translate_address(i32 noundef %node) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @initial_boot_params to i32))
  %0 = load ptr, ptr @initial_boot_params, align 4
  %call = tail call fastcc i64 @fdt_translate_address(ptr noundef %0, i32 noundef %node) #8
  ret i64 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @fdt_translate_address(ptr noundef %blob, i32 noundef %node_offset) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %len = alloca i32, align 4
  %addr = alloca [4 x i32], align 4
  %na = alloca i32, align 4
  %ns = alloca i32, align 4
  %pna = alloca i32, align 4
  %pns = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #5
  %0 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %len, align 4, !annotation !77
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %addr) #5
  %1 = call ptr @memset(ptr %addr, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %na) #5
  %2 = ptrtoint ptr %na to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %na, align 4, !annotation !77
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ns) #5
  %3 = ptrtoint ptr %ns to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %ns, align 4, !annotation !77
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pna) #5
  %4 = ptrtoint ptr %pna to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %pna, align 4, !annotation !77
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pns) #5
  %5 = ptrtoint ptr %pns to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %pns, align 4, !annotation !77
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fdt_translate_address.__UNIQUE_ID_ddebug105, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fdt_translate_address, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !78

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = tail call ptr @fdt_get_name(ptr noundef %blob, i32 noundef %node_offset, ptr noundef null) #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fdt_translate_address.__UNIQUE_ID_ddebug105, ptr noundef nonnull @.str.4, ptr noundef %call3) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = call ptr @fdt_getprop(ptr noundef %blob, i32 noundef %node_offset, ptr noundef nonnull @.str.5, ptr noundef nonnull %len) #5
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end.bail.sink.split_crit_edge, label %if.end13

do.end.bail.sink.split_crit_edge:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %bail.sink.split

if.end13:                                         ; preds = %do.end
  %call14 = call i32 @fdt_parent_offset(ptr noundef %blob, i32 noundef %node_offset) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp = icmp slt i32 %call14, 0
  br i1 %cmp, label %if.end13.bail_crit_edge, label %if.end16

if.end13.bail_crit_edge:                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %bail

if.end16:                                         ; preds = %if.end13
  call fastcc void @fdt_bus_default_count_cells(ptr noundef %blob, i32 noundef %call14, ptr noundef nonnull %na, ptr noundef nonnull %ns)
  %6 = ptrtoint ptr %na to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %na, align 4
  %8 = add i32 %7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %9 = icmp ult i32 %8, 4
  br i1 %9, label %land.lhs.true19, label %if.end16.bail.sink.split_crit_edge

if.end16.bail.sink.split_crit_edge:               ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %bail.sink.split

land.lhs.true19:                                  ; preds = %if.end16
  %10 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ns, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp20 = icmp sgt i32 %11, 0
  br i1 %cmp20, label %if.end28, label %land.lhs.true19.bail.sink.split_crit_edge

land.lhs.true19.bail.sink.split_crit_edge:        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #7
  br label %bail.sink.split

if.end28:                                         ; preds = %land.lhs.true19
  %mul = shl nuw nsw i32 %7, 2
  %12 = call ptr @memcpy(ptr %addr, ptr %call4, i32 %mul)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fdt_translate_address.__UNIQUE_ID_ddebug106, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fdt_translate_address, %if.then41)) #5
          to label %do.end45 [label %if.then41], !srcloc !78

if.then41:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %na to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %na, align 4
  %15 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ns, align 4
  %call42 = call ptr @fdt_get_name(ptr noundef %blob, i32 noundef %call14, ptr noundef null) #5
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fdt_translate_address.__UNIQUE_ID_ddebug106, ptr noundef nonnull @.str.11, i32 noundef %14, i32 noundef %16, ptr noundef %call42) #5
  br label %do.end45

do.end45:                                         ; preds = %if.then41, %if.end28
  %call47152 = call i32 @fdt_parent_offset(ptr noundef %blob, i32 noundef %call14) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47152)
  %cmp48153 = icmp slt i32 %call47152, 0
  br i1 %cmp48153, label %do.end45.do.body50_crit_edge, label %do.end45.if.end68_crit_edge

do.end45.if.end68_crit_edge:                      ; preds = %do.end45
  br label %if.end68

do.end45.do.body50_crit_edge:                     ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body50

do.body50:                                        ; preds = %if.end104.do.body50_crit_edge, %do.end45.do.body50_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fdt_translate_address.__UNIQUE_ID_ddebug107, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fdt_translate_address, %if.then62)) #5
          to label %do.end65 [label %if.then62], !srcloc !78

if.then62:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fdt_translate_address.__UNIQUE_ID_ddebug107, ptr noundef nonnull @.str.14) #5
  br label %do.end65

do.end65:                                         ; preds = %if.then62, %do.body50
  %17 = ptrtoint ptr %na to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %na, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not3.i = icmp eq i32 %18, 0
  br i1 %tobool.not3.i, label %do.end65.bail_crit_edge, label %do.end65.for.body.i_crit_edge

do.end65.for.body.i_crit_edge:                    ; preds = %do.end65
  br label %for.body.i

do.end65.bail_crit_edge:                          ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #7
  br label %bail

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end65.for.body.i_crit_edge
  %r.06.i = phi i64 [ %or.i, %for.body.i.for.body.i_crit_edge ], [ 0, %do.end65.for.body.i_crit_edge ]
  %size.addr.05.i = phi i32 [ %dec.i, %for.body.i.for.body.i_crit_edge ], [ %18, %do.end65.for.body.i_crit_edge ]
  %cell.addr.04.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %addr, %do.end65.for.body.i_crit_edge ]
  %dec.i = add i32 %size.addr.05.i, -1
  %shl.i = shl i64 %r.06.i, 32
  %19 = ptrtoint ptr %cell.addr.04.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cell.addr.04.i, align 4
  %conv.i = zext i32 %20 to i64
  %or.i = or i64 %shl.i, %conv.i
  %incdec.ptr.i = getelementptr i32, ptr %cell.addr.04.i, i32 1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %for.body.i.bail_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.bail_crit_edge:                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bail

if.end68:                                         ; preds = %if.end104.if.end68_crit_edge, %do.end45.if.end68_crit_edge
  %call47155 = phi i32 [ %call47, %if.end104.if.end68_crit_edge ], [ %call47152, %do.end45.if.end68_crit_edge ]
  %parent.0154 = phi i32 [ %call47155, %if.end104.if.end68_crit_edge ], [ %call14, %do.end45.if.end68_crit_edge ]
  call fastcc void @fdt_bus_default_count_cells(ptr noundef %blob, i32 noundef %call47155, ptr noundef nonnull %pna, ptr noundef nonnull %pns)
  %21 = ptrtoint ptr %pna to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pna, align 4
  %23 = add i32 %22, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %23)
  %24 = icmp ult i32 %23, 4
  br i1 %24, label %land.lhs.true73, label %if.end68.bail.sink.split_crit_edge

if.end68.bail.sink.split_crit_edge:               ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  br label %bail.sink.split

land.lhs.true73:                                  ; preds = %if.end68
  %25 = ptrtoint ptr %pns to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pns, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp74 = icmp sgt i32 %26, 0
  br i1 %cmp74, label %do.body83, label %land.lhs.true73.bail.sink.split_crit_edge

land.lhs.true73.bail.sink.split_crit_edge:        ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #7
  br label %bail.sink.split

do.body83:                                        ; preds = %land.lhs.true73
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fdt_translate_address.__UNIQUE_ID_ddebug108, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fdt_translate_address, %if.then95)) #5
          to label %do.end99 [label %if.then95], !srcloc !78

if.then95:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %pna to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pna, align 4
  %29 = ptrtoint ptr %pns to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pns, align 4
  %call96 = call ptr @fdt_get_name(ptr noundef %blob, i32 noundef %call47155, ptr noundef null) #5
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fdt_translate_address.__UNIQUE_ID_ddebug108, ptr noundef nonnull @.str.18, i32 noundef %28, i32 noundef %30, ptr noundef %call96) #5
  br label %do.end99

do.end99:                                         ; preds = %if.then95, %do.body83
  %31 = ptrtoint ptr %na to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %na, align 4
  %33 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ns, align 4
  %35 = ptrtoint ptr %pna to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pna, align 4
  %call101 = call fastcc i32 @fdt_translate_one(ptr noundef %blob, i32 noundef %parent.0154, ptr noundef nonnull %addr, i32 noundef %32, i32 noundef %34, i32 noundef %36) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end104, label %do.end99.bail_crit_edge

do.end99.bail_crit_edge:                          ; preds = %do.end99
  call void @__sanitizer_cov_trace_pc() #7
  br label %bail

if.end104:                                        ; preds = %do.end99
  %37 = ptrtoint ptr %pna to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pna, align 4
  %39 = ptrtoint ptr %na to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %na, align 4
  %40 = ptrtoint ptr %pns to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pns, align 4
  %42 = ptrtoint ptr %ns to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %ns, align 4
  %call47 = call i32 @fdt_parent_offset(ptr noundef %blob, i32 noundef %call47155) #5
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %if.end104.do.body50_crit_edge, label %if.end104.if.end68_crit_edge

if.end104.if.end68_crit_edge:                     ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end68

if.end104.do.body50_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body50

bail.sink.split:                                  ; preds = %land.lhs.true73.bail.sink.split_crit_edge, %if.end68.bail.sink.split_crit_edge, %land.lhs.true19.bail.sink.split_crit_edge, %if.end16.bail.sink.split_crit_edge, %do.end.bail.sink.split_crit_edge
  %parent.0154.lcssa.sink = phi i32 [ %node_offset, %do.end.bail.sink.split_crit_edge ], [ %node_offset, %if.end16.bail.sink.split_crit_edge ], [ %node_offset, %land.lhs.true19.bail.sink.split_crit_edge ], [ %parent.0154, %if.end68.bail.sink.split_crit_edge ], [ %parent.0154, %land.lhs.true73.bail.sink.split_crit_edge ]
  %.str.8.sink = phi ptr [ @.str.6, %do.end.bail.sink.split_crit_edge ], [ @.str.8, %if.end16.bail.sink.split_crit_edge ], [ @.str.8, %land.lhs.true19.bail.sink.split_crit_edge ], [ @.str.8, %if.end68.bail.sink.split_crit_edge ], [ @.str.8, %land.lhs.true73.bail.sink.split_crit_edge ]
  %call80 = call ptr @fdt_get_name(ptr noundef %blob, i32 noundef %parent.0154.lcssa.sink, ptr noundef null) #5
  %call81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.8.sink, ptr noundef %call80) #9
  br label %bail

bail:                                             ; preds = %bail.sink.split, %do.end99.bail_crit_edge, %for.body.i.bail_crit_edge, %do.end65.bail_crit_edge, %if.end13.bail_crit_edge
  %result.0 = phi i64 [ -1, %if.end13.bail_crit_edge ], [ 0, %do.end65.bail_crit_edge ], [ -1, %bail.sink.split ], [ %or.i, %for.body.i.bail_crit_edge ], [ -1, %do.end99.bail_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pns) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pna) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ns) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %na) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %addr) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #5
  ret i64 %result.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fdt_get_name(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fdt_getprop(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_parent_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fdt_translate_one(ptr noundef %blob, i32 noundef %parent, ptr nocapture noundef %addr, i32 noundef %na, i32 noundef %ns, i32 noundef %pna) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %rlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rlen) #5
  %0 = ptrtoint ptr %rlen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rlen, align 4, !annotation !77
  %call = call ptr @fdt_getprop(ptr noundef %blob, i32 noundef %parent, ptr noundef nonnull @.str.19, ptr noundef nonnull %rlen) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %rlen to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %rlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then1, label %do.body10

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %na)
  %tobool.not3.i = icmp eq i32 %na, 0
  br i1 %tobool.not3.i, label %if.then1.of_read_number.exit_crit_edge, label %if.then1.for.body.i_crit_edge

if.then1.for.body.i_crit_edge:                    ; preds = %if.then1
  br label %for.body.i

if.then1.of_read_number.exit_crit_edge:           ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #7
  br label %of_read_number.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then1.for.body.i_crit_edge
  %r.06.i = phi i64 [ %or.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then1.for.body.i_crit_edge ]
  %size.addr.05.i = phi i32 [ %dec.i, %for.body.i.for.body.i_crit_edge ], [ %na, %if.then1.for.body.i_crit_edge ]
  %cell.addr.04.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %addr, %if.then1.for.body.i_crit_edge ]
  %dec.i = add i32 %size.addr.05.i, -1
  %shl.i = shl i64 %r.06.i, 32
  %3 = ptrtoint ptr %cell.addr.04.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cell.addr.04.i, align 4
  %conv.i = zext i32 %4 to i64
  %or.i = or i64 %shl.i, %conv.i
  %incdec.ptr.i = getelementptr i32, ptr %cell.addr.04.i, i32 1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %for.body.i.of_read_number.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.of_read_number.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %of_read_number.exit

of_read_number.exit:                              ; preds = %for.body.i.of_read_number.exit_crit_edge, %if.then1.of_read_number.exit_crit_edge
  %r.0.lcssa.i = phi i64 [ 0, %if.then1.of_read_number.exit_crit_edge ], [ %or.i, %for.body.i.of_read_number.exit_crit_edge ]
  %mul = shl i32 %pna, 2
  %5 = call ptr @memset(ptr %addr, i32 0, i32 %mul)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fdt_translate_one.__UNIQUE_ID_ddebug101, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fdt_translate_one, %if.then7)) #5
          to label %finish [label %if.then7], !srcloc !78

if.then7:                                         ; preds = %of_read_number.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fdt_translate_one.__UNIQUE_ID_ddebug101, ptr noundef nonnull @.str.28) #5
  br label %finish

do.body10:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fdt_translate_one.__UNIQUE_ID_ddebug102, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fdt_translate_one, %if.then22)) #5
          to label %do.end25 [label %if.then22], !srcloc !78

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fdt_translate_one.__UNIQUE_ID_ddebug102, ptr noundef nonnull @.str.30) #5
  br label %do.end25

do.end25:                                         ; preds = %if.then22, %do.body10
  %6 = ptrtoint ptr %rlen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rlen, align 4
  %div = sdiv i32 %7, 4
  store i32 %div, ptr %rlen, align 4
  %add = add i32 %ns, %na
  %add26 = add i32 %add, %pna
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %add26)
  %cmp27.not17 = icmp slt i32 %div, %add26
  br i1 %cmp27.not17, label %do.end25.do.body34_crit_edge, label %do.end25.for.body_crit_edge

do.end25.for.body_crit_edge:                      ; preds = %do.end25
  br label %for.body

do.end25.do.body34_crit_edge:                     ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body34

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end25.for.body_crit_edge
  %ranges.018 = phi ptr [ %add.ptr, %for.inc.for.body_crit_edge ], [ %call, %do.end25.for.body_crit_edge ]
  %call28 = call fastcc i64 @fdt_bus_default_map(ptr noundef %addr, ptr noundef %ranges.018, i32 noundef %na, i32 noundef %ns, i32 noundef %pna)
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call28)
  %cmp29.not = icmp eq i64 %call28, -1
  br i1 %cmp29.not, label %for.inc, label %if.end50

for.inc:                                          ; preds = %for.body
  %8 = ptrtoint ptr %rlen to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rlen, align 4
  %sub = sub i32 %9, %add26
  store i32 %sub, ptr %rlen, align 4
  %add.ptr = getelementptr i32, ptr %ranges.018, i32 %add26
  %cmp27.not = icmp slt i32 %sub, %add26
  br i1 %cmp27.not, label %for.inc.do.body34_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.do.body34_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body34

do.body34:                                        ; preds = %for.inc.do.body34_crit_edge, %do.end25.do.body34_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fdt_translate_one.__UNIQUE_ID_ddebug103, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fdt_translate_one, %if.then46)) #5
          to label %cleanup [label %if.then46], !srcloc !78

if.then46:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fdt_translate_one.__UNIQUE_ID_ddebug103, ptr noundef nonnull @.str.32) #5
  br label %cleanup

if.end50:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr51 = getelementptr i32, ptr %ranges.018, i32 %na
  %mul52 = shl i32 %pna, 2
  %10 = call ptr @memcpy(ptr %addr, ptr %add.ptr51, i32 %mul52)
  br label %finish

finish:                                           ; preds = %if.end50, %if.then7, %of_read_number.exit
  %offset.2 = phi i64 [ %r.0.lcssa.i, %if.then7 ], [ %call28, %if.end50 ], [ %r.0.lcssa.i, %of_read_number.exit ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fdt_translate_one.__UNIQUE_ID_ddebug104, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fdt_translate_one, %if.then65)) #5
          to label %do.end68 [label %if.then65], !srcloc !78

if.then65:                                        ; preds = %finish
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fdt_translate_one.__UNIQUE_ID_ddebug104, ptr noundef nonnull @.str.35, i64 noundef %offset.2) #5
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %finish
  %call69 = call fastcc i32 @fdt_bus_default_translate(ptr noundef %addr, i64 noundef %offset.2, i32 noundef %pna)
  br label %cleanup

cleanup:                                          ; preds = %do.end68, %if.then46, %do.body34, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call69, %do.end68 ], [ 1, %entry.cleanup_crit_edge ], [ 1, %if.then46 ], [ 1, %do.body34 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rlen) #5
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fdt_bus_default_count_cells(ptr noundef %blob, i32 noundef %parentoffset, ptr noundef writeonly %addrc, ptr noundef writeonly %sizec) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %addrc, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call ptr @fdt_getprop(ptr noundef %blob, i32 noundef %parentoffset, ptr noundef nonnull @.str.21, ptr noundef null) #5
  %tobool1.not = icmp eq ptr %call, null
  %dt_root_addr_cells.call = select i1 %tobool1.not, ptr @dt_root_addr_cells, ptr %call
  %0 = ptrtoint ptr %dt_root_addr_cells.call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dt_root_addr_cells.call, align 4
  %2 = ptrtoint ptr %addrc to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %addrc, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then, %entry.if.end4_crit_edge
  %tobool5.not = icmp eq ptr %sizec, null
  br i1 %tobool5.not, label %if.end4.if.end13_crit_edge, label %if.then6

if.end4.if.end13_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %call7 = tail call ptr @fdt_getprop(ptr noundef %blob, i32 noundef %parentoffset, ptr noundef nonnull @.str.22, ptr noundef null) #5
  %tobool8.not = icmp eq ptr %call7, null
  %dt_root_size_cells.call7 = select i1 %tobool8.not, ptr @dt_root_size_cells, ptr %call7
  %3 = ptrtoint ptr %dt_root_size_cells.call7 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dt_root_size_cells.call7, align 4
  %5 = ptrtoint ptr %sizec to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %sizec, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then6, %if.end4.if.end13_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @fdt_bus_default_map(ptr nocapture noundef readonly %addr, ptr nocapture noundef readonly %range, i32 noundef %na, i32 noundef %ns, i32 noundef %pna) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %na)
  %tobool.not3.i = icmp eq i32 %na, 0
  br i1 %tobool.not3.i, label %entry.of_read_number.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.of_read_number.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %of_read_number.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %r.06.i = phi i64 [ %or.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %size.addr.05.i = phi i32 [ %dec.i, %for.body.i.for.body.i_crit_edge ], [ %na, %entry.for.body.i_crit_edge ]
  %cell.addr.04.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %range, %entry.for.body.i_crit_edge ]
  %dec.i = add i32 %size.addr.05.i, -1
  %shl.i = shl i64 %r.06.i, 32
  %0 = ptrtoint ptr %cell.addr.04.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cell.addr.04.i, align 4
  %conv.i = zext i32 %1 to i64
  %or.i = or i64 %shl.i, %conv.i
  %incdec.ptr.i = getelementptr i32, ptr %cell.addr.04.i, i32 1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %for.body.i.of_read_number.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.of_read_number.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %of_read_number.exit

of_read_number.exit:                              ; preds = %for.body.i.of_read_number.exit_crit_edge, %entry.of_read_number.exit_crit_edge
  %r.0.lcssa.i = phi i64 [ 0, %entry.of_read_number.exit_crit_edge ], [ %or.i, %for.body.i.of_read_number.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ns)
  %tobool.not3.i22 = icmp eq i32 %ns, 0
  br i1 %tobool.not3.i22, label %of_read_number.exit.of_read_number.exit34_crit_edge, label %for.body.i32.preheader

of_read_number.exit.of_read_number.exit34_crit_edge: ; preds = %of_read_number.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %of_read_number.exit34

for.body.i32.preheader:                           ; preds = %of_read_number.exit
  %add.ptr = getelementptr i32, ptr %range, i32 %na
  %add.ptr1 = getelementptr i32, ptr %add.ptr, i32 %pna
  br label %for.body.i32

for.body.i32:                                     ; preds = %for.body.i32.for.body.i32_crit_edge, %for.body.i32.preheader
  %r.06.i23 = phi i64 [ %or.i29, %for.body.i32.for.body.i32_crit_edge ], [ 0, %for.body.i32.preheader ]
  %size.addr.05.i24 = phi i32 [ %dec.i26, %for.body.i32.for.body.i32_crit_edge ], [ %ns, %for.body.i32.preheader ]
  %cell.addr.04.i25 = phi ptr [ %incdec.ptr.i30, %for.body.i32.for.body.i32_crit_edge ], [ %add.ptr1, %for.body.i32.preheader ]
  %dec.i26 = add i32 %size.addr.05.i24, -1
  %shl.i27 = shl i64 %r.06.i23, 32
  %2 = ptrtoint ptr %cell.addr.04.i25 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cell.addr.04.i25, align 4
  %conv.i28 = zext i32 %3 to i64
  %or.i29 = or i64 %shl.i27, %conv.i28
  %incdec.ptr.i30 = getelementptr i32, ptr %cell.addr.04.i25, i32 1
  %tobool.not.i31 = icmp eq i32 %dec.i26, 0
  br i1 %tobool.not.i31, label %for.body.i32.of_read_number.exit34_crit_edge, label %for.body.i32.for.body.i32_crit_edge

for.body.i32.for.body.i32_crit_edge:              ; preds = %for.body.i32
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i32

for.body.i32.of_read_number.exit34_crit_edge:     ; preds = %for.body.i32
  call void @__sanitizer_cov_trace_pc() #7
  br label %of_read_number.exit34

of_read_number.exit34:                            ; preds = %for.body.i32.of_read_number.exit34_crit_edge, %of_read_number.exit.of_read_number.exit34_crit_edge
  %r.0.lcssa.i33 = phi i64 [ 0, %of_read_number.exit.of_read_number.exit34_crit_edge ], [ %or.i29, %for.body.i32.of_read_number.exit34_crit_edge ]
  br i1 %tobool.not3.i, label %of_read_number.exit34.of_read_number.exit47_crit_edge, label %of_read_number.exit34.for.body.i45_crit_edge

of_read_number.exit34.for.body.i45_crit_edge:     ; preds = %of_read_number.exit34
  br label %for.body.i45

of_read_number.exit34.of_read_number.exit47_crit_edge: ; preds = %of_read_number.exit34
  call void @__sanitizer_cov_trace_pc() #7
  br label %of_read_number.exit47

for.body.i45:                                     ; preds = %for.body.i45.for.body.i45_crit_edge, %of_read_number.exit34.for.body.i45_crit_edge
  %r.06.i36 = phi i64 [ %or.i42, %for.body.i45.for.body.i45_crit_edge ], [ 0, %of_read_number.exit34.for.body.i45_crit_edge ]
  %size.addr.05.i37 = phi i32 [ %dec.i39, %for.body.i45.for.body.i45_crit_edge ], [ %na, %of_read_number.exit34.for.body.i45_crit_edge ]
  %cell.addr.04.i38 = phi ptr [ %incdec.ptr.i43, %for.body.i45.for.body.i45_crit_edge ], [ %addr, %of_read_number.exit34.for.body.i45_crit_edge ]
  %dec.i39 = add i32 %size.addr.05.i37, -1
  %shl.i40 = shl i64 %r.06.i36, 32
  %4 = ptrtoint ptr %cell.addr.04.i38 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cell.addr.04.i38, align 4
  %conv.i41 = zext i32 %5 to i64
  %or.i42 = or i64 %shl.i40, %conv.i41
  %incdec.ptr.i43 = getelementptr i32, ptr %cell.addr.04.i38, i32 1
  %tobool.not.i44 = icmp eq i32 %dec.i39, 0
  br i1 %tobool.not.i44, label %for.body.i45.of_read_number.exit47_crit_edge, label %for.body.i45.for.body.i45_crit_edge

for.body.i45.for.body.i45_crit_edge:              ; preds = %for.body.i45
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i45

for.body.i45.of_read_number.exit47_crit_edge:     ; preds = %for.body.i45
  call void @__sanitizer_cov_trace_pc() #7
  br label %of_read_number.exit47

of_read_number.exit47:                            ; preds = %for.body.i45.of_read_number.exit47_crit_edge, %of_read_number.exit34.of_read_number.exit47_crit_edge
  %r.0.lcssa.i46 = phi i64 [ 0, %of_read_number.exit34.of_read_number.exit47_crit_edge ], [ %or.i42, %for.body.i45.of_read_number.exit47_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fdt_bus_default_map.__UNIQUE_ID_ddebug100, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fdt_bus_default_map, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !78

if.then:                                          ; preds = %of_read_number.exit47
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fdt_bus_default_map.__UNIQUE_ID_ddebug100, ptr noundef nonnull @.str.25, i64 noundef %r.0.lcssa.i, i64 noundef %r.0.lcssa.i33, i64 noundef %r.0.lcssa.i46) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %of_read_number.exit47
  call void @__sanitizer_cov_trace_cmp8(i64 %r.0.lcssa.i46, i64 %r.0.lcssa.i)
  %cmp = icmp uge i64 %r.0.lcssa.i46, %r.0.lcssa.i
  %add = add i64 %r.0.lcssa.i33, %r.0.lcssa.i
  call void @__sanitizer_cov_trace_cmp8(i64 %r.0.lcssa.i46, i64 %add)
  %cmp7.not = icmp ult i64 %r.0.lcssa.i46, %add
  %or.cond = select i1 %cmp, i1 %cmp7.not, i1 false
  %sub = sub i64 %r.0.lcssa.i46, %r.0.lcssa.i
  %retval.0 = select i1 %or.cond, i64 %sub, i64 -1
  ret i64 %retval.0
}

; Function Attrs: cold nofree nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fdt_bus_default_translate(ptr nocapture noundef %addr, i64 noundef %offset, i32 noundef %na) unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %na)
  %tobool.not3.i = icmp eq i32 %na, 0
  br i1 %tobool.not3.i, label %of_read_number.exit.thread, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

of_read_number.exit.thread:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %extract.t = trunc i64 %offset to i32
  br label %if.end

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %r.06.i = phi i64 [ %or.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %size.addr.05.i = phi i32 [ %dec.i, %for.body.i.for.body.i_crit_edge ], [ %na, %entry.for.body.i_crit_edge ]
  %cell.addr.04.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %addr, %entry.for.body.i_crit_edge ]
  %dec.i = add i32 %size.addr.05.i, -1
  %shl.i = shl i64 %r.06.i, 32
  %0 = ptrtoint ptr %cell.addr.04.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cell.addr.04.i, align 4
  %conv.i = zext i32 %1 to i64
  %or.i = or i64 %shl.i, %conv.i
  %incdec.ptr.i = getelementptr i32, ptr %cell.addr.04.i, i32 1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %of_read_number.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

of_read_number.exit:                              ; preds = %for.body.i
  %mul = shl i32 %na, 2
  %2 = call ptr @memset(ptr %addr, i32 0, i32 %mul)
  %add = add i64 %or.i, %offset
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %na)
  %cmp = icmp sgt i32 %na, 1
  %extract.t19 = trunc i64 %add to i32
  br i1 %cmp, label %if.then, label %of_read_number.exit.if.end_crit_edge

of_read_number.exit.if.end_crit_edge:             ; preds = %of_read_number.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %of_read_number.exit
  call void @__sanitizer_cov_trace_pc() #7
  %shr = lshr i64 %add, 32
  %conv = trunc i64 %shr to i32
  %sub = add nsw i32 %na, -2
  %arrayidx = getelementptr i32, ptr %addr, i32 %sub
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv, ptr %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %of_read_number.exit.if.end_crit_edge, %of_read_number.exit.thread
  %add17.off0 = phi i32 [ %extract.t, %of_read_number.exit.thread ], [ %extract.t19, %if.then ], [ %extract.t19, %of_read_number.exit.if.end_crit_edge ]
  %sub2 = add i32 %na, -1
  %arrayidx3 = getelementptr i32, ptr %addr, i32 %sub2
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add17.off0, ptr %arrayidx3, align 4
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nofree nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !25, !26, !27, !29, !30, !32, !33, !34, !36, !38, !40, !42, !44, !46, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !66, !67}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/of/fdt_address.c", i32 172, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @fdt_translate_address.__UNIQUE_ID_ddebug105, !1, !"__UNIQUE_ID_ddebug105", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/of/fdt_address.c", i32 175, i32 39}
!9 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/of/fdt_address.c", i32 177, i32 3}
!11 = !{ptr @fdt_translate_address._entry, !10, !"_entry", i1 false, i1 false}
!12 = !{ptr @fdt_translate_address._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/of/fdt_address.c", i32 191, i32 3}
!15 = !{ptr @fdt_translate_address._entry.7, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @fdt_translate_address._entry_ptr.9, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/of/fdt_address.c", i32 197, i32 2}
!19 = !{ptr @fdt_translate_address.__UNIQUE_ID_ddebug106, !18, !"__UNIQUE_ID_ddebug106", i1 false, i1 false}
!20 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/of/fdt_address.c", i32 199, i32 15}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/of/fdt_address.c", i32 209, i32 4}
!25 = !{ptr @fdt_translate_address.__UNIQUE_ID_ddebug107, !24, !"__UNIQUE_ID_ddebug107", i1 false, i1 false}
!26 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @fdt_translate_address._entry.15, !28, !"_entry", i1 false, i1 false}
!28 = !{!"../drivers/of/fdt_address.c", i32 218, i32 4}
!29 = !{ptr @fdt_translate_address._entry_ptr.16, !28, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/of/fdt_address.c", i32 223, i32 3}
!32 = !{ptr @fdt_translate_address.__UNIQUE_ID_ddebug108, !31, !"__UNIQUE_ID_ddebug108", i1 false, i1 false}
!33 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/of/fdt_address.c", i32 228, i32 25}
!36 = distinct !{null, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/of/fdt_address.c", i32 236, i32 16}
!38 = distinct !{null, !39, !"of_busses", i1 false, i1 false}
!39 = !{!"../drivers/of/fdt_address.c", i32 100, i32 28}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/of/fdt_address.c", i32 54, i32 42}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/of/fdt_address.c", i32 62, i32 42}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/of/fdt_address.c", i32 79, i32 2}
!46 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @fdt_bus_default_map.__UNIQUE_ID_ddebug100, !45, !"__UNIQUE_ID_ddebug100", i1 false, i1 false}
!48 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/of/fdt_address.c", i32 125, i32 3}
!51 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @fdt_translate_one.__UNIQUE_ID_ddebug101, !50, !"__UNIQUE_ID_ddebug101", i1 false, i1 false}
!53 = !{ptr @.str.28, !50, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/of/fdt_address.c", i32 129, i32 2}
!56 = !{ptr @fdt_translate_one.__UNIQUE_ID_ddebug102, !55, !"__UNIQUE_ID_ddebug102", i1 false, i1 false}
!57 = !{ptr @.str.30, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/of/fdt_address.c", i32 140, i32 3}
!60 = !{ptr @fdt_translate_one.__UNIQUE_ID_ddebug103, !59, !"__UNIQUE_ID_ddebug103", i1 false, i1 false}
!61 = !{ptr @.str.32, !59, !"<string literal>", i1 false, i1 false}
!62 = distinct !{null, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/of/fdt_address.c", i32 146, i32 15}
!64 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/of/fdt_address.c", i32 147, i32 2}
!66 = !{ptr @fdt_translate_one.__UNIQUE_ID_ddebug104, !65, !"__UNIQUE_ID_ddebug104", i1 false, i1 false}
!67 = !{ptr @.str.35, !65, !"<string literal>", i1 false, i1 false}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{!"auto-init"}
!78 = !{i64 2148695903, i64 2148695908, i64 2148695921, i64 2148695965, i64 2148695999, i64 2148696020}
