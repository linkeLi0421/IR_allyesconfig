; ModuleID = '/llk/IR_all_yes/drivers/soc/imx/soc-imx.c_pt.bc'
source_filename = "../drivers/soc/imx/soc-imx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_soc_imx__183_214_imx_soc_device_init6 = internal global ptr @imx_soc_device_init, section ".initcall6.init", align 4
@__mxc_cpu_type = external dso_local local_unnamed_addr global i32, align 4
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fsl,ls1021a\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Freescale i.MX\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"/\00", [30 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"model\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"i.MX1\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"i.MX21\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"i.MX25\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"i.MX27\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"i.MX31\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"i.MX35\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"i.MX50\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fsl,imx51-iim\00", [18 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"i.MX51\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fsl,imx53-iim\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"i.MX53\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fsl,imx6sl-ocotp\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i.MX6SL\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fsl,imx6q-ocotp\00", [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i.MX6DL\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fsl,imx6sx-ocotp\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i.MX6SX\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"i.MX6Q\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fsl,imx6ul-ocotp\00", [47 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i.MX6UL\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fsl,imx6ull-ocotp\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i.MX6ULL\00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i.MX6ULZ\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fsl,imx6sll-ocotp\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i.MX6SLL\00", [23 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fsl,imx7d-ocotp\00", [16 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"i.MX7D\00", [25 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fsl,imx7ulp-ocotp\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i.MX7ULP\00", [23 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fsl,vf610-ocotp\00", [16 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VF500\00", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VF510\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VF600\00", [26 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VF610\00", [26 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@imx_soc_device_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.41, i32 152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: failed to find %s regmap!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"imx_soc_device_init\00", [44 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/soc/imx/soc-imx.c\00", [38 x i8] zeroinitializer }, align 32
@imx_soc_device_init._entry_ptr = internal global ptr @imx_soc_device_init._entry, section ".printk_index", align 4
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%d.%d\00", [26 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%016llX\00", [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [25 x i64] [i64 23, i64 32, i64 1, i64 21, i64 25, i64 27, i64 31, i64 35, i64 50, i64 51, i64 53, i64 96, i64 97, i64 98, i64 99, i64 100, i64 101, i64 103, i64 107, i64 114, i64 255, i64 1280, i64 1296, i64 1536, i64 1552]
@__sancov_gen_cov_switch_values.44 = internal global [5 x i64] [i64 3, i64 32, i64 51, i64 53, i64 255]
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 43, i32 31 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 50, i32 25 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 52, i32 30 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 53, i32 38 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 60, i32 12 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 63, i32 12 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 66, i32 12 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 69, i32 12 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 72, i32 12 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 75, i32 12 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 78, i32 12 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 81, i32 18 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 82, i32 12 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 85, i32 18 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 86, i32 12 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 89, i32 18 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 90, i32 12 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 93, i32 18 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 94, i32 12 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 97, i32 18 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 98, i32 12 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 102, i32 12 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 105, i32 18 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 106, i32 12 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 109, i32 18 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 110, i32 12 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 114, i32 12 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 117, i32 18 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 118, i32 12 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 121, i32 18 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 122, i32 12 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 125, i32 18 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 126, i32 12 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 129, i32 18 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 130, i32 12 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 134, i32 12 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 138, i32 12 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 142, i32 12 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 145, i32 12 }
@___asan_gen_.162 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 152, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 184, i32 49 }
@___asan_gen_.177 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.178 = private constant [29 x i8] c"../drivers/soc/imx/soc-imx.c\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 192, i32 54 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__initcall__kmod_soc_imx__183_214_imx_soc_device_init6, ptr @imx_soc_device_init._entry, ptr @imx_soc_device_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_soc_device_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_soc_device_init() #0 section ".init.text" align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !99
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__mxc_cpu_type to i32))
  %1 = load i32, ptr @__mxc_cpu_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 28) #8
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %family = getelementptr inbounds %struct.soc_device_attribute, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %family to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.1, ptr %family, align 4
  %call.i = tail call ptr @of_find_node_opts_by_path(ptr noundef nonnull @.str.2, ptr noundef null) #5
  %call9 = tail call i32 @of_property_read_string(ptr noundef %call.i, ptr noundef nonnull @.str.3, ptr noundef nonnull %call7.i.i) #5
  tail call void @of_node_put(ptr noundef %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end7.free_soc_crit_edge

if.end7.free_soc_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_soc

if.end12:                                         ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__mxc_cpu_type to i32))
  %4 = load i32, ptr @__mxc_cpu_type, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %sw.default [
    i32 1, label %if.end12.if.end43.thread_crit_edge
    i32 21, label %sw.bb13
    i32 25, label %sw.bb14
    i32 27, label %sw.bb15
    i32 31, label %sw.bb16
    i32 35, label %sw.bb17
    i32 50, label %sw.bb18
    i32 51, label %if.end12.if.then37_crit_edge
    i32 53, label %sw.bb20
    i32 96, label %sw.bb21
    i32 97, label %sw.bb22
    i32 98, label %sw.bb23
    i32 99, label %sw.bb24
    i32 100, label %sw.bb25
    i32 101, label %sw.bb26
    i32 107, label %sw.bb27
    i32 103, label %sw.bb28
    i32 114, label %sw.bb29
    i32 255, label %sw.bb30
    i32 1280, label %sw.bb31
    i32 1296, label %sw.bb32
    i32 1536, label %sw.bb33
    i32 1552, label %sw.bb34
  ]

if.end12.if.then37_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then37

if.end12.if.end43.thread_crit_edge:               ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43.thread

sw.bb13:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43.thread

sw.bb14:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43.thread

sw.bb15:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43.thread

sw.bb16:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43.thread

sw.bb17:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43.thread

sw.bb18:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43.thread

sw.bb20:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then37

sw.bb21:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then37

sw.bb22:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then37

sw.bb23:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then37

sw.bb24:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then37

sw.bb25:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then37

sw.bb26:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then37

sw.bb27:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then37

sw.bb28:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then37

sw.bb29:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then37

sw.bb30:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then37

sw.bb31:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then37

sw.bb32:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then37

sw.bb33:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then37

sw.bb34:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then37

sw.default:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43.thread

if.end43.thread:                                  ; preds = %sw.default, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %if.end12.if.end43.thread_crit_edge
  %soc_id.0 = phi ptr [ @.str.38, %sw.default ], [ @.str.10, %sw.bb18 ], [ @.str.9, %sw.bb17 ], [ @.str.8, %sw.bb16 ], [ @.str.7, %sw.bb15 ], [ @.str.6, %sw.bb14 ], [ @.str.5, %sw.bb13 ], [ @.str.4, %if.end12.if.end43.thread_crit_edge ]
  %soc_id35 = getelementptr inbounds %struct.soc_device_attribute, ptr %call7.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %soc_id35 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %soc_id.0, ptr %soc_id35, align 8
  br label %if.end82

if.then37:                                        ; preds = %sw.bb34, %sw.bb33, %sw.bb32, %sw.bb31, %sw.bb30, %sw.bb29, %sw.bb28, %sw.bb27, %sw.bb26, %sw.bb25, %sw.bb24, %sw.bb23, %sw.bb22, %sw.bb21, %sw.bb20, %if.end12.if.then37_crit_edge
  %ocotp_compat.0.ph = phi ptr [ @.str.13, %sw.bb20 ], [ @.str.15, %sw.bb21 ], [ @.str.17, %sw.bb22 ], [ @.str.19, %sw.bb23 ], [ @.str.17, %sw.bb24 ], [ @.str.22, %sw.bb25 ], [ @.str.24, %sw.bb26 ], [ @.str.24, %sw.bb27 ], [ @.str.27, %sw.bb28 ], [ @.str.29, %sw.bb29 ], [ @.str.31, %sw.bb30 ], [ @.str.33, %sw.bb31 ], [ @.str.33, %sw.bb32 ], [ @.str.33, %sw.bb33 ], [ @.str.33, %sw.bb34 ], [ @.str.11, %if.end12.if.then37_crit_edge ]
  %soc_id.0.ph = phi ptr [ @.str.14, %sw.bb20 ], [ @.str.16, %sw.bb21 ], [ @.str.18, %sw.bb22 ], [ @.str.20, %sw.bb23 ], [ @.str.21, %sw.bb24 ], [ @.str.23, %sw.bb25 ], [ @.str.25, %sw.bb26 ], [ @.str.26, %sw.bb27 ], [ @.str.28, %sw.bb28 ], [ @.str.30, %sw.bb29 ], [ @.str.32, %sw.bb30 ], [ @.str.34, %sw.bb31 ], [ @.str.35, %sw.bb32 ], [ @.str.36, %sw.bb33 ], [ @.str.37, %sw.bb34 ], [ @.str.12, %if.end12.if.then37_crit_edge ]
  %soc_id35155 = getelementptr inbounds %struct.soc_device_attribute, ptr %call7.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %soc_id35155 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %soc_id.0.ph, ptr %soc_id35155, align 8
  %call38 = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull %ocotp_compat.0.ph) #5
  %cmp.i = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end43.thread163, label %if.end43

if.end43.thread163:                               ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #7
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, ptr noundef nonnull %ocotp_compat.0.ph) #9
  br label %if.end82

if.end43:                                         ; preds = %if.then37
  %tobool.not.i = icmp eq ptr %call38, null
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.end43.if.end82_crit_edge, label %if.then45

if.end43.if.end82_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end82

if.then45:                                        ; preds = %if.end43
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__mxc_cpu_type to i32))
  %8 = load i32, ptr @__mxc_cpu_type, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %8, label %if.else73 [
    i32 255, label %if.then46
    i32 51, label %if.then45.for.body.preheader_crit_edge
    i32 53, label %if.then45.for.body.preheader_crit_edge166
  ]

if.then45.for.body.preheader_crit_edge166:        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.preheader

if.then45.for.body.preheader_crit_edge:           ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then45.for.body.preheader_crit_edge, %if.then45.for.body.preheader_crit_edge166
  br label %for.body

if.then46:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #7
  %call47 = call i32 @regmap_read(ptr noundef nonnull %call38, i32 noundef 1248, ptr noundef nonnull %val) #5
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %call48 = call i32 @regmap_read(ptr noundef nonnull %call38, i32 noundef 1232, ptr noundef nonnull %val) #5
  %12 = shl i32 %11, 16
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %and49 = and i32 %14, 65535
  %or149 = or i32 %and49, %12
  %or = zext i32 %or149 to i64
  %call51 = call i32 @regmap_read(ptr noundef nonnull %call38, i32 noundef 1216, ptr noundef nonnull %val) #5
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  %call56 = call i32 @regmap_read(ptr noundef nonnull %call38, i32 noundef 1200, ptr noundef nonnull %val) #5
  %17 = shl nuw i64 %or, 32
  %18 = shl i32 %16, 16
  %19 = zext i32 %18 to i64
  %shl57 = or i64 %17, %19
  %20 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val, align 4
  %and58 = and i32 %21, 65535
  %conv59 = zext i32 %and58 to i64
  %or60 = or i64 %shl57, %conv59
  br label %if.end82

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0162 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %soc_uid.0161 = phi i64 [ %or72, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %mul = shl i32 %i.0162, 2
  %add = add nuw nsw i32 %mul, 2080
  %call68 = call i32 @regmap_read(ptr noundef %call38, i32 noundef %add, ptr noundef nonnull %val) #5
  %shl69 = shl i64 %soc_uid.0161, 8
  %22 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val, align 4
  %and70 = and i32 %23, 255
  %conv71 = zext i32 %and70 to i64
  %or72 = or i64 %shl69, %conv71
  %inc = add nuw nsw i32 %i.0162, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.body.if.end82_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.if.end82_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end82

if.else73:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #7
  %call74 = call i32 @regmap_read(ptr noundef nonnull %call38, i32 noundef 1056, ptr noundef nonnull %val) #5
  %24 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val, align 4
  %conv75 = zext i32 %25 to i64
  %call76 = call i32 @regmap_read(ptr noundef nonnull %call38, i32 noundef 1040, ptr noundef nonnull %val) #5
  %shl77 = shl nuw i64 %conv75, 32
  %26 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val, align 4
  %conv78 = zext i32 %27 to i64
  %or79 = or i64 %shl77, %conv78
  br label %if.end82

if.end82:                                         ; preds = %if.else73, %for.body.if.end82_crit_edge, %if.then46, %if.end43.if.end82_crit_edge, %if.end43.thread163, %if.end43.thread
  %soc_uid.1 = phi i64 [ 0, %if.end43.if.end82_crit_edge ], [ %or60, %if.then46 ], [ %or79, %if.else73 ], [ 0, %if.end43.thread ], [ 0, %if.end43.thread163 ], [ %or72, %for.body.if.end82_crit_edge ]
  %call83 = call i32 @imx_get_soc_revision() #5
  %shr = lshr i32 %call83, 4
  %and84 = and i32 %shr, 15
  %call85 = call i32 @imx_get_soc_revision() #5
  %and86 = and i32 %call85, 15
  %call87 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.42, i32 noundef %and84, i32 noundef %and86) #5
  %revision = getelementptr inbounds %struct.soc_device_attribute, ptr %call7.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %revision to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call87, ptr %revision, align 8
  %tobool89.not = icmp eq ptr %call87, null
  br i1 %tobool89.not, label %if.end82.free_soc_crit_edge, label %if.end91

if.end82.free_soc_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_soc

if.end91:                                         ; preds = %if.end82
  %call92 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.43, i64 noundef %soc_uid.1) #5
  %serial_number = getelementptr inbounds %struct.soc_device_attribute, ptr %call7.i.i, i32 0, i32 3
  %29 = ptrtoint ptr %serial_number to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call92, ptr %serial_number, align 4
  %tobool94.not = icmp eq ptr %call92, null
  br i1 %tobool94.not, label %if.end91.free_rev_crit_edge, label %if.end96

if.end91.free_rev_crit_edge:                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_rev

if.end96:                                         ; preds = %if.end91
  %call97 = call ptr @soc_device_register(ptr noundef nonnull %call7.i.i) #5
  %cmp.i151 = icmp ugt ptr %call97, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i151, label %if.then99, label %if.end96.cleanup_crit_edge

if.end96.cleanup_crit_edge:                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then99:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %call97 to i32
  %31 = ptrtoint ptr %serial_number to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %serial_number, align 4
  call void @kfree(ptr noundef %32) #5
  br label %free_rev

free_rev:                                         ; preds = %if.then99, %if.end91.free_rev_crit_edge
  %ret.0 = phi i32 [ %30, %if.then99 ], [ -12, %if.end91.free_rev_crit_edge ]
  %33 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %revision, align 8
  call void @kfree(ptr noundef %34) #5
  br label %free_soc

free_soc:                                         ; preds = %free_rev, %if.end82.free_soc_crit_edge, %if.end7.free_soc_crit_edge
  %ret.1 = phi i32 [ %call9, %if.end7.free_soc_crit_edge ], [ %ret.0, %free_rev ], [ -12, %if.end82.free_soc_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %free_soc, %if.end96.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %free_soc ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -12, %if.end3.cleanup_crit_edge ], [ 0, %if.end96.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_get_soc_revision() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_opts_by_path(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !83, !84, !85, !86, !88}
!llvm.module.flags = !{!90, !91, !92, !93, !94, !95, !96, !97}
!llvm.ident = !{!98}

!0 = !{ptr @__initcall__kmod_soc_imx__183_214_imx_soc_device_init6, !1, !"__initcall__kmod_soc_imx__183_214_imx_soc_device_init6", i1 false, i1 false}
!1 = !{!"../drivers/soc/imx/soc-imx.c", i32 214, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/soc/imx/soc-imx.c", i32 43, i32 31}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/soc/imx/soc-imx.c", i32 50, i32 25}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/soc/imx/soc-imx.c", i32 52, i32 30}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/soc/imx/soc-imx.c", i32 53, i32 38}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/soc/imx/soc-imx.c", i32 60, i32 12}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/soc/imx/soc-imx.c", i32 63, i32 12}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/soc/imx/soc-imx.c", i32 66, i32 12}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/soc/imx/soc-imx.c", i32 69, i32 12}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/soc/imx/soc-imx.c", i32 72, i32 12}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/soc/imx/soc-imx.c", i32 75, i32 12}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/soc/imx/soc-imx.c", i32 78, i32 12}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/soc/imx/soc-imx.c", i32 81, i32 18}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/soc/imx/soc-imx.c", i32 82, i32 12}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/soc/imx/soc-imx.c", i32 85, i32 18}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/soc/imx/soc-imx.c", i32 86, i32 12}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/soc/imx/soc-imx.c", i32 89, i32 18}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/soc/imx/soc-imx.c", i32 90, i32 12}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/soc/imx/soc-imx.c", i32 93, i32 18}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/soc/imx/soc-imx.c", i32 94, i32 12}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/soc/imx/soc-imx.c", i32 97, i32 18}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/soc/imx/soc-imx.c", i32 98, i32 12}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/soc/imx/soc-imx.c", i32 102, i32 12}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/soc/imx/soc-imx.c", i32 105, i32 18}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/soc/imx/soc-imx.c", i32 106, i32 12}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/soc/imx/soc-imx.c", i32 109, i32 18}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/soc/imx/soc-imx.c", i32 110, i32 12}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/soc/imx/soc-imx.c", i32 114, i32 12}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/soc/imx/soc-imx.c", i32 117, i32 18}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/soc/imx/soc-imx.c", i32 118, i32 12}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/soc/imx/soc-imx.c", i32 121, i32 18}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/soc/imx/soc-imx.c", i32 122, i32 12}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/soc/imx/soc-imx.c", i32 125, i32 18}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/soc/imx/soc-imx.c", i32 126, i32 12}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/soc/imx/soc-imx.c", i32 129, i32 18}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/soc/imx/soc-imx.c", i32 130, i32 12}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/soc/imx/soc-imx.c", i32 134, i32 12}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/soc/imx/soc-imx.c", i32 138, i32 12}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/soc/imx/soc-imx.c", i32 142, i32 12}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/soc/imx/soc-imx.c", i32 145, i32 12}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/soc/imx/soc-imx.c", i32 152, i32 4}
!82 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @imx_soc_device_init._entry, !81, !"_entry", i1 false, i1 false}
!85 = !{ptr @imx_soc_device_init._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/soc/imx/soc-imx.c", i32 184, i32 49}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/soc/imx/soc-imx.c", i32 192, i32 54}
!90 = !{i32 1, !"wchar_size", i32 2}
!91 = !{i32 1, !"min_enum_size", i32 4}
!92 = !{i32 8, !"branch-target-enforcement", i32 0}
!93 = !{i32 8, !"sign-return-address", i32 0}
!94 = !{i32 8, !"sign-return-address-all", i32 0}
!95 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!96 = !{i32 7, !"uwtable", i32 1}
!97 = !{i32 7, !"frame-pointer", i32 2}
!98 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!99 = !{!"auto-init"}
