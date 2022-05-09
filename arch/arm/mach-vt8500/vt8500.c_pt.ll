; ModuleID = '/llk/IR_all_yes/arch/arm/mach-vt8500/vt8500.c_pt.bc'
source_filename = "../arch/arm/mach-vt8500/vt8500.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.machine_desc = type { i32, ptr, i32, ptr, i32, i32, i32, i32, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.map_desc = type { i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }

@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VIA/Wondermedia SoC (Device Tree Support)\00", [54 x i8] zeroinitializer }, align 32
@vt8500_dt_compat = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr null], [40 x i8] zeroinitializer }, align 32
@__mach_desc_WMT_DT = internal constant %struct.machine_desc { i32 -1, ptr @.str, i32 0, ptr @vt8500_dt_compat, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vt8500_map_io, ptr null, ptr null, ptr null, ptr @vt8500_init, ptr null, ptr null, ptr @vt8500_restart }, section ".arch.info.init", align 4
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"via,vt8500\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"wm,wm8650\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"wm,wm8505\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"wm,wm8750\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"wm,wm8850\00", [22 x i8] zeroinitializer }, align 32
@vt8500_io_desc = internal global [1 x %struct.map_desc] [%struct.map_desc { i32 -134217728, i32 884736, i32 3735552, i32 0 }], section ".init.data", align 4
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"via,vt8500-fb\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"via,vt8500-gpio\00", [16 x i8] zeroinitializer }, align 32
@vt8500_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 78, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: of_iomap(gpio_mux) failed\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vt8500_init\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"arch/arm/mach-vt8500/vt8500.c\00", [34 x i8] zeroinitializer }, align 32
@vt8500_init._entry_ptr = internal global ptr @vt8500_init._entry, section ".printk_index", align 4
@vt8500_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.10, i32 85, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: ioremap(legacy_gpio_mux) failed\0A\00", [57 x i8] zeroinitializer }, align 32
@vt8500_init._entry_ptr.13 = internal global ptr @vt8500_init._entry.11, section ".printk_index", align 4
@vt8500_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.9, ptr @.str.10, i32 92, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: Could not remap GPIO mux\0A\00", [32 x i8] zeroinitializer }, align 32
@vt8500_init._entry_ptr.16 = internal global ptr @vt8500_init._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wm,wm8505-fb\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wm,wm8505-gpio\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wm,wm8650-gpio\00", [17 x i8] zeroinitializer }, align 32
@vt8500_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vt8500_init._entry_ptr.21 = internal global ptr @vt8500_init._entry.20, section ".printk_index", align 4
@vt8500_init._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.10, i32 117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vt8500_init._entry_ptr.23 = internal global ptr @vt8500_init._entry.22, section ".printk_index", align 4
@vt8500_init._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.9, ptr @.str.10, i32 124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vt8500_init._entry_ptr.25 = internal global ptr @vt8500_init._entry.24, section ".printk_index", align 4
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"via,vt8500-pmc\00", [17 x i8] zeroinitializer }, align 32
@pmc_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@vt8500_init._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.9, ptr @.str.10, i32 135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s:of_iomap(pmc) failed\0A\00", [37 x i8] zeroinitializer }, align 32
@vt8500_init._entry_ptr.29 = internal global ptr @vt8500_init._entry.27, section ".printk_index", align 4
@vt8500_init._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.9, ptr @.str.10, i32 141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s:ioremap(power_off) failed\0A\00", [32 x i8] zeroinitializer }, align 32
@vt8500_init._entry_ptr.32 = internal global ptr @vt8500_init._entry.30, section ".printk_index", align 4
@pm_power_off = external dso_local local_unnamed_addr global ptr, align 4
@vt8500_init._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.9, ptr @.str.10, i32 146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\013%s: PMC Hibernation register could not be remapped, not enabling power off!\0A\00", [49 x i8] zeroinitializer }, align 32
@vt8500_init._entry_ptr.35 = internal global ptr @vt8500_init._entry.33, section ".printk_index", align 4
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 158, i32 1 }
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"vt8500_dt_compat\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 149, i32 27 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 150, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 151, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 152, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 153, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 154, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 70, i32 43 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 72, i32 44 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 77, i32 5 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 84, i32 5 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 92, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 99, i32 43 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 101, i32 44 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 104, i32 8 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 109, i32 5 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 116, i32 5 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 124, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 130, i32 43 }
@___asan_gen_.108 = private unnamed_addr constant [9 x i8] c"pmc_base\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 31, i32 22 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 135, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 141, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.126 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.127 = private constant [33 x i8] c"../arch/arm/mach-vt8500/vt8500.c\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 146, i32 3 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @__mach_desc_WMT_DT, ptr @vt8500_init._entry, ptr @vt8500_init._entry.11, ptr @vt8500_init._entry.14, ptr @vt8500_init._entry.20, ptr @vt8500_init._entry.22, ptr @vt8500_init._entry.24, ptr @vt8500_init._entry.27, ptr @vt8500_init._entry.30, ptr @vt8500_init._entry.33, ptr @vt8500_init._entry_ptr, ptr @vt8500_init._entry_ptr.13, ptr @vt8500_init._entry_ptr.16, ptr @vt8500_init._entry_ptr.21, ptr @vt8500_init._entry_ptr.23, ptr @vt8500_init._entry_ptr.25, ptr @vt8500_init._entry_ptr.29, ptr @vt8500_init._entry_ptr.32, ptr @vt8500_init._entry_ptr.35, ptr @.str, ptr @vt8500_dt_compat, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.26, ptr @pmc_base, ptr @.str.28, ptr @.str.31, ptr @.str.34], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8500_dt_compat to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8500_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8500_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8500_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8500_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8500_init._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8500_init._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmc_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8500_init._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8500_init._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8500_init._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vt8500_map_io() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @iotable_init(ptr noundef nonnull @vt8500_io_desc, i32 noundef 1) #4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vt8500_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.6) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end34_crit_edge, label %if.then

entry.if.end34_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34

if.then:                                          ; preds = %entry
  %call1 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.7) #4
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then
  %call4 = tail call ptr @of_iomap(ptr noundef nonnull %call1, i32 noundef 0) #4
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end17.thread147, label %if.end17

if.end17.thread147:                               ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #7
  tail call void @of_node_put(ptr noundef nonnull %call1) #4
  br label %do.end30

if.else:                                          ; preds = %if.then
  %call8 = tail call ptr @ioremap(i32 noundef -669974528, i32 noundef 4096) #4
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end17.thread, label %if.else.do.body20_crit_edge

if.else.do.body20_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body20

if.end17.thread:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.9) #7
  br label %do.end30

if.end17:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @of_node_put(ptr noundef nonnull %call1) #4
  br label %do.body20

do.body20:                                        ; preds = %if.end17, %if.else.do.body20_crit_edge
  %gpio_base.0146 = phi ptr [ %call4, %if.end17 ], [ %call8, %if.else.do.body20_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !75
  tail call void @arm_heavy_mb() #4
  %add.ptr = getelementptr i8, ptr %gpio_base.0146, i32 512
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !77
  %1 = or i32 %0, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #4, !srcloc !78
  tail call void @iounmap(ptr noundef nonnull %gpio_base.0146) #4
  br label %if.end33

do.end30:                                         ; preds = %if.end17.thread, %if.end17.thread147
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.9) #7
  br label %if.end33

if.end33:                                         ; preds = %do.end30, %do.body20
  tail call void @of_node_put(ptr noundef nonnull %call) #4
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %entry.if.end34_crit_edge
  %call35 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.17) #4
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %if.end34.if.end85_crit_edge, label %if.then37

if.end34.if.end85_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end85

if.then37:                                        ; preds = %if.end34
  %call38 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.18) #4
  %tobool39.not = icmp eq ptr %call38, null
  br i1 %tobool39.not, label %if.end42, label %if.then37.if.then44_crit_edge

if.then37.if.then44_crit_edge:                    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then44

if.end42:                                         ; preds = %if.then37
  %call41 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.19) #4
  %tobool43.not = icmp eq ptr %call41, null
  br i1 %tobool43.not, label %if.else54, label %if.end42.if.then44_crit_edge

if.end42.if.then44_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then44

if.then44:                                        ; preds = %if.end42.if.then44_crit_edge, %if.then37.if.then44_crit_edge
  %np.0151 = phi ptr [ %call41, %if.end42.if.then44_crit_edge ], [ %call38, %if.then37.if.then44_crit_edge ]
  %call45 = tail call ptr @of_iomap(ptr noundef nonnull %np.0151, i32 noundef 0) #4
  %tobool46.not = icmp eq ptr %call45, null
  br i1 %tobool46.not, label %if.end64.thread158, label %if.end64

if.end64.thread158:                               ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #6
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #7
  tail call void @of_node_put(ptr noundef nonnull %np.0151) #4
  br label %do.end81

if.else54:                                        ; preds = %if.end42
  %call55 = tail call ptr @ioremap(i32 noundef -669974528, i32 noundef 4096) #4
  %tobool56.not = icmp eq ptr %call55, null
  br i1 %tobool56.not, label %if.end64.thread, label %if.else54.do.body67_crit_edge

if.else54.do.body67_crit_edge:                    ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body67

if.end64.thread:                                  ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #6
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.9) #7
  br label %do.end81

if.end64:                                         ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @of_node_put(ptr noundef nonnull %np.0151) #4
  br label %do.body67

do.body67:                                        ; preds = %if.end64, %if.else54.do.body67_crit_edge
  %gpio_base.1157 = phi ptr [ %call45, %if.end64 ], [ %call55, %if.else54.do.body67_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !79
  tail call void @arm_heavy_mb() #4
  %add.ptr72 = getelementptr i8, ptr %gpio_base.1157, i32 512
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr72) #4, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !80
  %3 = or i32 %2, 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr72, i32 %3) #4, !srcloc !78
  tail call void @iounmap(ptr noundef nonnull %gpio_base.1157) #4
  br label %if.end84

do.end81:                                         ; preds = %if.end64.thread, %if.end64.thread158
  %call83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.9) #7
  br label %if.end84

if.end84:                                         ; preds = %do.end81, %do.body67
  tail call void @of_node_put(ptr noundef nonnull %call35) #4
  br label %if.end85

if.end85:                                         ; preds = %if.end84, %if.end34.if.end85_crit_edge
  %call86 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.26) #4
  %tobool87.not = icmp eq ptr %call86, null
  br i1 %tobool87.not, label %if.else98, label %if.then88

if.then88:                                        ; preds = %if.end85
  %call89 = tail call ptr @of_iomap(ptr noundef nonnull %call86, i32 noundef 0) #4
  store ptr %call89, ptr @pmc_base, align 4
  %tobool90.not = icmp eq ptr %call89, null
  br i1 %tobool90.not, label %do.end94, label %if.then88.if.end97_crit_edge

if.then88.if.end97_crit_edge:                     ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end97

do.end94:                                         ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #6
  %call96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.9) #7
  br label %if.end97

if.end97:                                         ; preds = %do.end94, %if.then88.if.end97_crit_edge
  tail call void @of_node_put(ptr noundef nonnull %call86) #4
  br label %if.end108

if.else98:                                        ; preds = %if.end85
  %call99 = tail call ptr @ioremap(i32 noundef -669843456, i32 noundef 4096) #4
  store ptr %call99, ptr @pmc_base, align 4
  %tobool100.not = icmp eq ptr %call99, null
  br i1 %tobool100.not, label %do.end104, label %if.else98.if.then110_crit_edge

if.else98.if.then110_crit_edge:                   ; preds = %if.else98
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then110

do.end104:                                        ; preds = %if.else98
  call void @__sanitizer_cov_trace_pc() #6
  %call106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.9) #7
  br label %if.end108

if.end108:                                        ; preds = %do.end104, %if.end97
  %.pr = load ptr, ptr @pmc_base, align 4
  %tobool109.not = icmp eq ptr %.pr, null
  br i1 %tobool109.not, label %do.end114, label %if.end108.if.then110_crit_edge

if.end108.if.then110_crit_edge:                   ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then110

if.then110:                                       ; preds = %if.end108.if.then110_crit_edge, %if.else98.if.then110_crit_edge
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @pm_power_off to i32))
  store ptr @vt8500_power_off, ptr @pm_power_off, align 4
  br label %if.end117

do.end114:                                        ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #6
  %call116 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.9) #7
  br label %if.end117

if.end117:                                        ; preds = %do.end114, %if.then110
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vt8500_restart(i32 noundef %mode, ptr nocapture noundef readnone %cmd) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @pmc_base, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !81
  tail call void @arm_heavy_mb() #4
  %1 = load ptr, ptr @pmc_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #4, !srcloc !78
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iotable_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vt8500_power_off() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #4, !srcloc !82
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #4, !srcloc !83
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @trace_hardirqs_off() #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !84
  tail call void @arm_heavy_mb() #4
  %1 = load ptr, ptr @pmc_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 18
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 1280) #4, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c0, 4", "r"(i32 0) #4, !srcloc !86
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !39, !41, !43, !44, !46, !47, !49, !50, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-vt8500/vt8500.c", i32 158, i32 1}
!2 = !{ptr @__mach_desc_WMT_DT, !1, !"__mach_desc_WMT_DT", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../arch/arm/mach-vt8500/vt8500.c", i32 150, i32 2}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../arch/arm/mach-vt8500/vt8500.c", i32 151, i32 2}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../arch/arm/mach-vt8500/vt8500.c", i32 152, i32 2}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../arch/arm/mach-vt8500/vt8500.c", i32 153, i32 2}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../arch/arm/mach-vt8500/vt8500.c", i32 154, i32 2}
!13 = !{ptr @vt8500_dt_compat, !14, !"vt8500_dt_compat", i1 false, i1 false}
!14 = !{!"../arch/arm/mach-vt8500/vt8500.c", i32 149, i32 27}
!15 = !{ptr @vt8500_io_desc, !16, !"vt8500_io_desc", i1 false, i1 false}
!16 = !{!"../arch/arm/mach-vt8500/vt8500.c", i32 39, i32 24}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../arch/arm/mach-vt8500/vt8500.c", i32 70, i32 43}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../arch/arm/mach-vt8500/vt8500.c", i32 72, i32 44}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../arch/arm/mach-vt8500/vt8500.c", i32 77, i32 5}
!23 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @vt8500_init._entry, !22, !"_entry", i1 false, i1 false}
!26 = !{ptr @vt8500_init._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../arch/arm/mach-vt8500/vt8500.c", i32 84, i32 5}
!29 = !{ptr @vt8500_init._entry.11, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @vt8500_init._entry_ptr.13, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../arch/arm/mach-vt8500/vt8500.c", i32 92, i32 4}
!33 = !{ptr @vt8500_init._entry.14, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @vt8500_init._entry_ptr.16, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../arch/arm/mach-vt8500/vt8500.c", i32 99, i32 43}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../arch/arm/mach-vt8500/vt8500.c", i32 101, i32 44}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../arch/arm/mach-vt8500/vt8500.c", i32 104, i32 8}
!41 = !{ptr @vt8500_init._entry.20, !42, !"_entry", i1 false, i1 false}
!42 = !{!"../arch/arm/mach-vt8500/vt8500.c", i32 109, i32 5}
!43 = !{ptr @vt8500_init._entry_ptr.21, !42, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @vt8500_init._entry.22, !45, !"_entry", i1 false, i1 false}
!45 = !{!"../arch/arm/mach-vt8500/vt8500.c", i32 116, i32 5}
!46 = !{ptr @vt8500_init._entry_ptr.23, !45, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @vt8500_init._entry.24, !48, !"_entry", i1 false, i1 false}
!48 = !{!"../arch/arm/mach-vt8500/vt8500.c", i32 124, i32 4}
!49 = !{ptr @vt8500_init._entry_ptr.25, !48, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../arch/arm/mach-vt8500/vt8500.c", i32 130, i32 43}
!52 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../arch/arm/mach-vt8500/vt8500.c", i32 135, i32 4}
!54 = !{ptr @vt8500_init._entry.27, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @vt8500_init._entry_ptr.29, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.31, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../arch/arm/mach-vt8500/vt8500.c", i32 141, i32 4}
!58 = !{ptr @vt8500_init._entry.30, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @vt8500_init._entry_ptr.32, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.34, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../arch/arm/mach-vt8500/vt8500.c", i32 146, i32 3}
!62 = !{ptr @vt8500_init._entry.33, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @vt8500_init._entry_ptr.35, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @pmc_base, !65, !"pmc_base", i1 false, i1 false}
!65 = !{!"../arch/arm/mach-vt8500/vt8500.c", i32 31, i32 22}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!75 = !{i64 2152849623}
!76 = !{i64 687341}
!77 = !{i64 2152850526}
!78 = !{i64 686923}
!79 = !{i64 2152856450}
!80 = !{i64 2152857379}
!81 = !{i64 2152843637}
!82 = !{i64 830413}
!83 = !{i64 828116}
!84 = !{i64 2152844993}
!85 = !{i64 686303}
!86 = !{i64 1262}
