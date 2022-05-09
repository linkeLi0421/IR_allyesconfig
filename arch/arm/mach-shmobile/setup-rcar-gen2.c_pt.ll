; ModuleID = '/llk/IR_all_yes/arch/arm/mach-shmobile/setup-rcar-gen2.c_pt.bc'
source_filename = "../arch/arm/mach-shmobile/setup-rcar-gen2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.machine_desc = type { i32, ptr, i32, ptr, i32, i32, i32, i32, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.psci_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.memory_reserve_config = type { i64, i64, i64 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Generic R-Car Gen2 (Flattened Device Tree)\00", [53 x i8] zeroinitializer }, align 32
@rcar_gen2_boards_compat_dt = internal constant [6 x ptr] [ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr null], section ".init.rodata", align 4
@__mach_desc_RCAR_GEN2_DT = internal constant %struct.machine_desc { i32 -1, ptr @.str, i32 0, ptr @rcar_gen2_boards_compat_dt, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rcar_gen2_reserve, ptr null, ptr null, ptr null, ptr @rcar_gen2_timer_init, ptr null, ptr @shmobile_init_late, ptr null, ptr null }, section ".arch.info.init", align 4
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Generic RZ/G1 (Flattened Device Tree)\00", [58 x i8] zeroinitializer }, align 32
@rz_g1_boards_compat_dt = internal constant [6 x ptr] [ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.11, ptr @.str.12, ptr null], section ".init.rodata", align 4
@__mach_desc_RZ_G1_DT = internal constant %struct.machine_desc { i32 -1, ptr @.str.1, i32 0, ptr @rz_g1_boards_compat_dt, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rcar_gen2_reserve, ptr null, ptr null, ptr null, ptr @rcar_gen2_timer_init, ptr null, ptr @shmobile_init_late, ptr null, ptr null }, section ".arch.info.init", align 4
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"renesas,r8a7790\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"renesas,r8a7791\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"renesas,r8a7792\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"renesas,r8a7793\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"renesas,r8a7794\00", [16 x i8] zeroinitializer }, align 32
@rcar_gen2_reserve.rcar_gen2_dma_contiguous = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"device_type\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"memory\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"linux,usable-memory\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@dt_root_addr_cells = external dso_local local_unnamed_addr global i32, section ".init.data", align 4
@dt_root_size_cells = external dso_local local_unnamed_addr global i32, section ".init.data", align 4
@psci_ops = external dso_local local_unnamed_addr global %struct.psci_operations, align 4
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"renesas,r8a7745\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"renesas,r8a77470\00", [47 x i8] zeroinitializer }, align 32
@cpg_matches = internal constant [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7742-cpg-mssr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @.str.16 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7743-cpg-mssr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @.str.16 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7744-cpg-mssr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @.str.16 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7790-cpg-mssr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @.str.16 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7791-cpg-mssr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @.str.16 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7793-cpg-mssr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @.str.16 }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clock-names\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"clocks\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"extal\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"renesas,r8a7742\00", [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"renesas,r8a7743\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"renesas,r8a7744\00", [16 x i8] zeroinitializer }, align 32
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 205, i32 1 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 221, i32 1 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 197, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 198, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 199, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 200, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 201, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant [25 x i8] c"rcar_gen2_dma_contiguous\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 188, i32 22 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 134, i32 47 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 141, i32 35 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 144, i32 34 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 146, i32 35 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 84, i32 31 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 85, i32 31 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 48, i32 39 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 49, i32 32 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 54, i32 30 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 27, i32 54 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 213, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 214, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.81 = private constant [44 x i8] c"../arch/arm/mach-shmobile/setup-rcar-gen2.c\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 215, i32 2 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__mach_desc_RCAR_GEN2_DT, ptr @__mach_desc_RZ_G1_DT, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @rcar_gen2_reserve.rcar_gen2_dma_contiguous, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gen2_reserve.rcar_gen2_dma_contiguous to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rcar_gen2_reserve() #0 section ".init.text" align 64 {
entry:
  %mrc = alloca %struct.memory_reserve_config, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %mrc) #7
  %0 = getelementptr inbounds %struct.memory_reserve_config, ptr %mrc, i32 0, i32 1
  %1 = getelementptr inbounds %struct.memory_reserve_config, ptr %mrc, i32 0, i32 2
  %2 = getelementptr inbounds i8, ptr %mrc, i32 8
  %3 = call ptr @memset(ptr %2, i32 0, i32 16)
  %4 = ptrtoint ptr %mrc to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 268435456, ptr %mrc, align 8
  %call = call i32 @of_scan_flat_dt(ptr noundef nonnull @rcar_gen2_scan_mem, ptr noundef nonnull %mrc) #7
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %tobool.not = icmp eq i64 %6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %0, align 8
  %conv = trunc i64 %8 to i32
  %conv2 = trunc i64 %6 to i32
  %call3 = call zeroext i1 @memblock_is_region_memory(i32 noundef %conv, i32 noundef %conv2) #7
  br i1 %call3, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %1, align 8
  %conv6 = trunc i64 %10 to i32
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %0, align 8
  %conv8 = trunc i64 %12 to i32
  %call9 = call i32 @dma_contiguous_reserve_area(i32 noundef %conv6, i32 noundef %conv8, i32 noundef 0, ptr noundef nonnull @rcar_gen2_reserve.rcar_gen2_dma_contiguous, i1 noundef zeroext true) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mrc) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rcar_gen2_timer_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.psci_operations, ptr @psci_ops, i32 0, i32 3) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.psci_operations, ptr @psci_ops, i32 0, i32 3), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end4, label %entry.skip_update_crit_edge

entry.skip_update_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %skip_update

if.end4:                                          ; preds = %entry
  tail call void @secure_cntvoff_init() #7
  %call = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %lor.lhs.false, label %if.end4.if.end16_crit_edge

if.end4.if.end16_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

lor.lhs.false:                                    ; preds = %if.end4
  %call6 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %lor.lhs.false8, label %lor.lhs.false.if.end16_crit_edge

lor.lhs.false.if.end16_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %call9 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %lor.lhs.false11, label %lor.lhs.false8.if.end16_crit_edge

lor.lhs.false8.if.end16_crit_edge:                ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

lor.lhs.false11:                                  ; preds = %lor.lhs.false8
  %call12 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.else, label %lor.lhs.false11.if.end16_crit_edge

lor.lhs.false11.if.end16_crit_edge:               ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.else:                                          ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = tail call fastcc i32 @get_extal_freq() #11
  %div36 = lshr i32 %call15, 1
  br label %if.end16

if.end16:                                         ; preds = %if.else, %lor.lhs.false11.if.end16_crit_edge, %lor.lhs.false8.if.end16_crit_edge, %lor.lhs.false.if.end16_crit_edge, %if.end4.if.end16_crit_edge
  %freq.0 = phi i32 [ %div36, %if.else ], [ 32500000, %lor.lhs.false11.if.end16_crit_edge ], [ 32500000, %lor.lhs.false8.if.end16_crit_edge ], [ 32500000, %lor.lhs.false.if.end16_crit_edge ], [ 32500000, %if.end4.if.end16_crit_edge ]
  %call17 = tail call ptr @ioremap(i32 noundef -435683328, i32 noundef 4096) #7
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %call17) #7, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp19 = icmp eq i32 %2, 0
  br i1 %cmp19, label %if.end16.if.then26_crit_edge, label %lor.lhs.false21

if.end16.if.then26_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then26

lor.lhs.false21:                                  ; preds = %if.end16
  %add.ptr22 = getelementptr i8, ptr %call17, i32 32
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #7, !srcloc !59
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %freq.0)
  %cmp24.not = icmp eq i32 %4, %freq.0
  br i1 %cmp24.not, label %lor.lhs.false21.if.end29_crit_edge, label %lor.lhs.false21.if.then26_crit_edge

lor.lhs.false21.if.then26_crit_edge:              ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then26

lor.lhs.false21.if.end29_crit_edge:               ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then26:                                        ; preds = %lor.lhs.false21.if.then26_crit_edge, %if.end16.if.then26_crit_edge
  %add.ptr27 = getelementptr i8, ptr %call17, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %5 = tail call i32 @llvm.bswap.i32(i32 %freq.0) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %5) #7, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c14, c0, 0", "r"(i32 %freq.0) #7, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %call17, i32 16777216) #7, !srcloc !62
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %lor.lhs.false21.if.end29_crit_edge
  tail call void @iounmap(ptr noundef %call17) #7
  br label %skip_update

skip_update:                                      ; preds = %if.end29, %entry.skip_update_crit_edge
  tail call void @of_clk_init(ptr noundef null) #7
  tail call void @timer_probe() #7
  ret void
}

; Function Attrs: cold inlinehint nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @shmobile_init_late() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @shmobile_suspend_init() #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_scan_flat_dt(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_gen2_scan_mem(i32 noundef %node, ptr nocapture noundef readnone %uname, i32 noundef %depth, ptr nocapture noundef %data) #0 section ".init.text" align 64 {
entry:
  %reg = alloca ptr, align 4
  %l = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_get_flat_dt_prop(i32 noundef %node, ptr noundef nonnull @.str.7, ptr noundef null) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %l) #7
  %0 = ptrtoint ptr %l to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %l, align 4, !annotation !64
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup34_crit_edge, label %lor.lhs.false

entry.cleanup34_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup34

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @strcmp(ptr noundef nonnull %call, ptr noundef nonnull dereferenceable(7) @.str.8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %lor.lhs.false.cleanup34_crit_edge

lor.lhs.false.cleanup34_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup34

if.end:                                           ; preds = %lor.lhs.false
  %call2 = call ptr @of_get_flat_dt_prop(i32 noundef %node, ptr noundef nonnull @.str.9, ptr noundef nonnull %l) #7
  %1 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %reg, align 4
  %cmp3 = icmp eq ptr %call2, null
  br i1 %cmp3, label %if.end6, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.end6:                                          ; preds = %if.end
  %call5 = call ptr @of_get_flat_dt_prop(i32 noundef %node, ptr noundef nonnull @.str.10, ptr noundef nonnull %l) #7
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call5, ptr %reg, align 4
  %cmp7 = icmp eq ptr %call5, null
  br i1 %cmp7, label %if.end6.cleanup34_crit_edge, label %if.end6.if.end9_crit_edge

if.end6.if.end9_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.end6.cleanup34_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup34

if.end9:                                          ; preds = %if.end6.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %3 = phi ptr [ %call5, %if.end6.if.end9_crit_edge ], [ %call2, %if.end.if.end9_crit_edge ]
  %4 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %l, align 4
  %div57 = lshr i32 %5, 2
  %add.ptr = getelementptr i32, ptr %3, i32 %div57
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg, align 4
  %sub.ptr.rhs.cast59 = ptrtoint ptr %7 to i32
  %sub.ptr.sub60 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast59
  %sub.ptr.div61 = ashr exact i32 %sub.ptr.sub60, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dt_root_addr_cells to i32))
  %8 = load i32, ptr @dt_root_addr_cells, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dt_root_size_cells to i32))
  %9 = load i32, ptr @dt_root_size_cells, align 4
  %add62 = add i32 %9, %8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div61, i32 %add62)
  %cmp10.not63 = icmp slt i32 %sub.ptr.div61, %add62
  br i1 %cmp10.not63, label %if.end9.cleanup34_crit_edge, label %while.body.lr.ph

if.end9.cleanup34_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup34

while.body.lr.ph:                                 ; preds = %if.end9
  %base23 = getelementptr inbounds %struct.memory_reserve_config, ptr %data, i32 0, i32 1
  %size32 = getelementptr inbounds %struct.memory_reserve_config, ptr %data, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %10 = phi i32 [ %8, %while.body.lr.ph ], [ %20, %cleanup.while.body_crit_edge ]
  %call11 = call i64 @dt_mem_next_cell(i32 noundef %10, ptr noundef nonnull %reg) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dt_root_size_cells to i32))
  %11 = load i32, ptr @dt_root_size_cells, align 4
  %call12 = call i64 @dt_mem_next_cell(i32 noundef %11, ptr noundef nonnull %reg) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %call11)
  %cmp13 = icmp ugt i64 %call11, 4294967295
  br i1 %cmp13, label %while.body.cleanup_crit_edge, label %if.end15

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %while.body
  %add16 = add i64 %call12, %call11
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %add16)
  %cmp17 = icmp ugt i64 %add16, 4294967295
  %sub = sub nuw nsw i64 4294967296, %call11
  %spec.select = select i1 %cmp17, i64 %sub, i64 %call12
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %data, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %spec.select, i64 %13)
  %cmp20 = icmp ult i64 %spec.select, %13
  br i1 %cmp20, label %if.end15.cleanup_crit_edge, label %if.end22

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22:                                         ; preds = %if.end15
  %14 = ptrtoint ptr %base23 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %base23, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call11, i64 %15)
  %cmp24 = icmp ult i64 %call11, %15
  br i1 %cmp24, label %if.end22.cleanup_crit_edge, label %if.end26

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %add27 = add i64 %spec.select, %call11
  %sub29 = sub i64 %add27, %13
  %16 = ptrtoint ptr %base23 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %sub29, ptr %base23, align 8
  %17 = ptrtoint ptr %size32 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %13, ptr %size32, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end22.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %while.body.cleanup_crit_edge
  %18 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg, align 4
  %sub.ptr.rhs.cast = ptrtoint ptr %19 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dt_root_addr_cells to i32))
  %20 = load i32, ptr @dt_root_addr_cells, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dt_root_size_cells to i32))
  %21 = load i32, ptr @dt_root_size_cells, align 4
  %add = add i32 %21, %20
  %cmp10.not = icmp slt i32 %sub.ptr.div, %add
  br i1 %cmp10.not, label %cleanup.cleanup34_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

cleanup.cleanup34_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup34

cleanup34:                                        ; preds = %cleanup.cleanup34_crit_edge, %if.end9.cleanup34_crit_edge, %if.end6.cleanup34_crit_edge, %lor.lhs.false.cleanup34_crit_edge, %entry.cleanup34_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %l) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @memblock_is_region_memory(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @dma_contiguous_reserve_area(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4 section ".init.text"

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_flat_dt_prop(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dt_mem_next_cell(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @secure_cntvoff_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_extal_freq() unnamed_addr #0 section ".init.text" align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  %match = alloca ptr, align 4
  %freq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %match) #7
  %0 = ptrtoint ptr %match to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %match, align 4, !annotation !64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %freq) #7
  %1 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 20000000, ptr %freq, align 4
  %call = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @cpg_matches, ptr noundef nonnull %match) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %match, align 4
  %data = getelementptr inbounds %struct.of_device_id, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.end.if.end5_crit_edge, label %if.then2

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = call i32 @of_property_match_string(ptr noundef nonnull %call, ptr noundef nonnull @.str.13, ptr noundef nonnull %5) #7
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  %idx.0 = phi i32 [ %call4, %if.then2 ], [ 0, %if.end.if.end5_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #7
  %6 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %call, ptr noundef nonnull @.str.14, ptr noundef null, i32 noundef 0, i32 noundef %idx.0, ptr noundef nonnull %args.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  br label %cleanup.sink.split

of_parse_phandle.exit:                            ; preds = %if.end5
  %7 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  call void @of_node_put(ptr noundef nonnull %call) #7
  %tobool7.not = icmp eq ptr %8, null
  br i1 %tobool7.not, label %of_parse_phandle.exit.cleanup_crit_edge, label %if.end9

of_parse_phandle.exit.cleanup_crit_edge:          ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %8, ptr noundef nonnull @.str.15, ptr noundef nonnull %freq, i32 noundef 1, i32 noundef 0) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end9, %of_parse_phandle.exit.thread
  %call.sink = phi ptr [ %call, %of_parse_phandle.exit.thread ], [ %8, %if.end9 ]
  call void @of_node_put(ptr noundef nonnull %call.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %of_parse_phandle.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %9 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %9)
  %retval.0 = load i32, ptr %freq, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %freq) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %match) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @timer_probe() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @shmobile_suspend_init() local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold inlinehint nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { cold }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-shmobile/setup-rcar-gen2.c", i32 205, i32 1}
!2 = !{ptr @__mach_desc_RCAR_GEN2_DT, !1, !"__mach_desc_RCAR_GEN2_DT", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../arch/arm/mach-shmobile/setup-rcar-gen2.c", i32 221, i32 1}
!5 = !{ptr @__mach_desc_RZ_G1_DT, !4, !"__mach_desc_RZ_G1_DT", i1 false, i1 false}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-shmobile/setup-rcar-gen2.c", i32 197, i32 2}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-shmobile/setup-rcar-gen2.c", i32 198, i32 2}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-shmobile/setup-rcar-gen2.c", i32 199, i32 2}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-shmobile/setup-rcar-gen2.c", i32 200, i32 2}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../arch/arm/mach-shmobile/setup-rcar-gen2.c", i32 201, i32 2}
!16 = !{ptr @rcar_gen2_boards_compat_dt, !17, !"rcar_gen2_boards_compat_dt", i1 false, i1 false}
!17 = !{!"../arch/arm/mach-shmobile/setup-rcar-gen2.c", i32 196, i32 27}
!18 = !{ptr @rcar_gen2_reserve.rcar_gen2_dma_contiguous, !19, !"rcar_gen2_dma_contiguous", i1 false, i1 false}
!19 = !{!"../arch/arm/mach-shmobile/setup-rcar-gen2.c", i32 188, i32 22}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../arch/arm/mach-shmobile/setup-rcar-gen2.c", i32 134, i32 47}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../arch/arm/mach-shmobile/setup-rcar-gen2.c", i32 141, i32 35}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../arch/arm/mach-shmobile/setup-rcar-gen2.c", i32 144, i32 34}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../arch/arm/mach-shmobile/setup-rcar-gen2.c", i32 146, i32 35}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../arch/arm/mach-shmobile/setup-rcar-gen2.c", i32 84, i32 31}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../arch/arm/mach-shmobile/setup-rcar-gen2.c", i32 85, i32 31}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../arch/arm/mach-shmobile/setup-rcar-gen2.c", i32 48, i32 39}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../arch/arm/mach-shmobile/setup-rcar-gen2.c", i32 49, i32 32}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../arch/arm/mach-shmobile/setup-rcar-gen2.c", i32 54, i32 30}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../arch/arm/mach-shmobile/setup-rcar-gen2.c", i32 27, i32 54}
!40 = !{ptr @cpg_matches, !41, !"cpg_matches", i1 false, i1 false}
!41 = !{!"../arch/arm/mach-shmobile/setup-rcar-gen2.c", i32 26, i32 34}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../arch/arm/mach-shmobile/setup-rcar-gen2.c", i32 213, i32 2}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../arch/arm/mach-shmobile/setup-rcar-gen2.c", i32 214, i32 2}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../arch/arm/mach-shmobile/setup-rcar-gen2.c", i32 215, i32 2}
!48 = !{ptr @rz_g1_boards_compat_dt, !49, !"rz_g1_boards_compat_dt", i1 false, i1 false}
!49 = !{!"../arch/arm/mach-shmobile/setup-rcar-gen2.c", i32 212, i32 27}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{i64 3978628}
!60 = !{i64 2151511487}
!61 = !{i64 2151512842}
!62 = !{i64 3978210}
!63 = !{i64 3206}
!64 = !{!"auto-init"}
