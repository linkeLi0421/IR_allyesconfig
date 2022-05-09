; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/board-generic.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/board-generic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.machine_desc = type { i32, ptr, i32, ptr, i32, i32, i32, i32, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.smp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.tag_header = type { i32, i32 }
%struct.tag = type { %struct.tag_header, %union.anon.78 }
%union.anon.78 = type { %struct.tag_videolfb }
%struct.tag_videolfb = type { i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }

@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Generic OMAP2420 (Flattened Device Tree)\00", [55 x i8] zeroinitializer }, align 32
@omap242x_boards_compat = internal constant [2 x ptr] [ptr @.str.15, ptr null], section ".init.rodata", align 4
@__mach_desc_OMAP242X_DT = internal constant %struct.machine_desc { i32 -1, ptr @.str, i32 0, ptr @omap242x_boards_compat, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap_reserve, ptr @omap242x_map_io, ptr @omap2420_init_early, ptr null, ptr @omap_init_time_of, ptr @omap_generic_init, ptr null, ptr null, ptr @omap2xxx_restart }, section ".arch.info.init", align 4
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Generic OMAP2430 (Flattened Device Tree)\00", [55 x i8] zeroinitializer }, align 32
@omap243x_boards_compat = internal constant [2 x ptr] [ptr @.str.16, ptr null], section ".init.rodata", align 4
@__mach_desc_OMAP243X_DT = internal constant %struct.machine_desc { i32 -1, ptr @.str.1, i32 0, ptr @omap243x_boards_compat, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap_reserve, ptr @omap243x_map_io, ptr @omap2430_init_early, ptr null, ptr @omap_init_time_of, ptr @omap_generic_init, ptr null, ptr null, ptr @omap2xxx_restart }, section ".arch.info.init", align 4
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Nokia RX-51 board\00", [46 x i8] zeroinitializer }, align 32
@n900_boards_compat = internal constant [2 x ptr] [ptr @.str.17, ptr null], section ".init.rodata", align 4
@__mach_desc_OMAP3_N900_DT = internal constant %struct.machine_desc { i32 -1, ptr @.str.2, i32 0, ptr @n900_boards_compat, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rx51_reserve, ptr @omap3_map_io, ptr @omap3430_init_early, ptr null, ptr @omap_init_time_of, ptr @omap_generic_init, ptr @omap3_init_late, ptr null, ptr @omap3xxx_restart }, section ".arch.info.init", align 4
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Generic OMAP3 (Flattened Device Tree)\00", [58 x i8] zeroinitializer }, align 32
@omap3_boards_compat = internal constant [3 x ptr] [ptr @.str.18, ptr @.str.19, ptr null], section ".init.rodata", align 4
@__mach_desc_OMAP3_DT = internal constant %struct.machine_desc { i32 -1, ptr @.str.3, i32 0, ptr @omap3_boards_compat, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap_reserve, ptr @omap3_map_io, ptr @omap3430_init_early, ptr null, ptr @omap_init_time_of, ptr @omap_generic_init, ptr @omap3_init_late, ptr null, ptr @omap3xxx_restart }, section ".arch.info.init", align 4
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Generic OMAP36xx (Flattened Device Tree)\00", [55 x i8] zeroinitializer }, align 32
@omap36xx_boards_compat = internal constant [3 x ptr] [ptr @.str.20, ptr @.str.21, ptr null], section ".init.rodata", align 4
@__mach_desc_OMAP36XX_DT = internal constant %struct.machine_desc { i32 -1, ptr @.str.4, i32 0, ptr @omap36xx_boards_compat, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap_reserve, ptr @omap3_map_io, ptr @omap3630_init_early, ptr null, ptr @omap_init_time_of, ptr @omap_generic_init, ptr @omap3_init_late, ptr null, ptr @omap3xxx_restart }, section ".arch.info.init", align 4
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Generic OMAP3-GP (Flattened Device Tree)\00", [55 x i8] zeroinitializer }, align 32
@omap3_gp_boards_compat = internal constant [3 x ptr] [ptr @.str.22, ptr @.str.23, ptr null], section ".init.rodata", align 4
@__mach_desc_OMAP3_GP_DT = internal constant %struct.machine_desc { i32 -1, ptr @.str.5, i32 0, ptr @omap3_gp_boards_compat, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap_reserve, ptr @omap3_map_io, ptr @omap3430_init_early, ptr null, ptr @omap_init_time_of, ptr @omap_generic_init, ptr @omap3_init_late, ptr null, ptr @omap3xxx_restart }, section ".arch.info.init", align 4
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Generic AM3517 (Flattened Device Tree)\00", [57 x i8] zeroinitializer }, align 32
@am3517_boards_compat = internal constant [2 x ptr] [ptr @.str.24, ptr null], section ".init.rodata", align 4
@__mach_desc_AM3517_DT = internal constant %struct.machine_desc { i32 -1, ptr @.str.6, i32 0, ptr @am3517_boards_compat, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap_reserve, ptr @omap3_map_io, ptr @am35xx_init_early, ptr null, ptr @omap_init_time_of, ptr @omap_generic_init, ptr @omap3_init_late, ptr null, ptr @omap3xxx_restart }, section ".arch.info.init", align 4
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Generic ti814x (Flattened Device Tree)\00", [57 x i8] zeroinitializer }, align 32
@ti814x_boards_compat = internal constant [3 x ptr] [ptr @.str.25, ptr @.str.26, ptr null], section ".init.rodata", align 4
@__mach_desc_TI814X_DT = internal constant %struct.machine_desc { i32 -1, ptr @.str.7, i32 0, ptr @ti814x_boards_compat, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap_reserve, ptr @ti81xx_map_io, ptr @ti814x_init_early, ptr null, ptr @omap_init_time_of, ptr @omap_generic_init, ptr @ti81xx_init_late, ptr null, ptr @ti81xx_restart }, section ".arch.info.init", align 4
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Generic ti816x (Flattened Device Tree)\00", [57 x i8] zeroinitializer }, align 32
@ti816x_boards_compat = internal constant [3 x ptr] [ptr @.str.27, ptr @.str.28, ptr null], section ".init.rodata", align 4
@__mach_desc_TI816X_DT = internal constant %struct.machine_desc { i32 -1, ptr @.str.8, i32 0, ptr @ti816x_boards_compat, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap_reserve, ptr @ti81xx_map_io, ptr @ti816x_init_early, ptr null, ptr @omap_init_time_of, ptr @omap_generic_init, ptr @ti81xx_init_late, ptr null, ptr @ti81xx_restart }, section ".arch.info.init", align 4
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Generic AM33XX (Flattened Device Tree)\00", [57 x i8] zeroinitializer }, align 32
@am33xx_boards_compat = internal constant [2 x ptr] [ptr @.str.29, ptr null], section ".init.rodata", align 4
@__mach_desc_AM33XX_DT = internal constant %struct.machine_desc { i32 -1, ptr @.str.9, i32 0, ptr @am33xx_boards_compat, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap_reserve, ptr @am33xx_map_io, ptr @am33xx_init_early, ptr null, ptr @omap_init_time_of, ptr @omap_generic_init, ptr @am33xx_init_late, ptr null, ptr @am33xx_restart }, section ".arch.info.init", align 4
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Generic OMAP4 (Flattened Device Tree)\00", [58 x i8] zeroinitializer }, align 32
@omap4_boards_compat = internal constant [4 x ptr] [ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr null], section ".init.rodata", align 4
@omap4_smp_ops = external dso_local constant %struct.smp_operations, align 4
@__mach_desc_OMAP4_DT = internal constant %struct.machine_desc { i32 -1, ptr @.str.10, i32 0, ptr @omap4_boards_compat, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 809500672, i32 -811597825, ptr @omap4_l2c310_write_sec, ptr @omap4_smp_ops, ptr null, ptr null, ptr null, ptr null, ptr @omap_reserve, ptr @omap4_map_io, ptr @omap4430_init_early, ptr @omap_gic_of_init, ptr @omap_init_time_of, ptr @omap_generic_init, ptr @omap4430_init_late, ptr null, ptr @omap44xx_restart }, section ".arch.info.init", align 4
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Generic OMAP5 (Flattened Device Tree)\00", [58 x i8] zeroinitializer }, align 32
@omap5_boards_compat = internal constant [4 x ptr] [ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr null], section ".init.rodata", align 4
@__mach_desc_OMAP5_DT = internal constant %struct.machine_desc { i32 -1, ptr @.str.11, i32 0, ptr @omap5_boards_compat, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, ptr null, ptr @omap4_smp_ops, ptr null, ptr null, ptr null, ptr null, ptr @omap_reserve, ptr @omap5_map_io, ptr @omap5_init_early, ptr @omap_gic_of_init, ptr @omap5_realtime_timer_init, ptr @omap_generic_init, ptr @omap5_init_late, ptr null, ptr @omap44xx_restart }, section ".arch.info.init", align 4
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Generic AM43 (Flattened Device Tree)\00", [59 x i8] zeroinitializer }, align 32
@am43_boards_compat = internal constant [3 x ptr] [ptr @.str.36, ptr @.str.37, ptr null], section ".init.rodata", align 4
@__mach_desc_AM43_DT = internal constant %struct.machine_desc { i32 -1, ptr @.str.12, i32 0, ptr @am43_boards_compat, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 809500672, i32 -811597825, ptr @omap4_l2c310_write_sec, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @am33xx_map_io, ptr @am43xx_init_early, ptr @omap_gic_of_init, ptr @omap_init_time_of, ptr @omap_generic_init, ptr @am43xx_init_late, ptr null, ptr @omap44xx_restart }, section ".arch.info.init", align 4
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Generic DRA74X (Flattened Device Tree)\00", [57 x i8] zeroinitializer }, align 32
@dra74x_boards_compat = internal constant [6 x ptr] [ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr null], section ".init.rodata", align 4
@__mach_desc_DRA74X_DT = internal constant %struct.machine_desc { i32 -1, ptr @.str.13, i32 0, ptr @dra74x_boards_compat, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, ptr null, ptr @omap4_smp_ops, ptr null, ptr null, ptr null, ptr null, ptr @omap_reserve, ptr @dra7xx_map_io, ptr @dra7xx_init_early, ptr @omap_gic_of_init, ptr @omap5_realtime_timer_init, ptr @omap_generic_init, ptr @dra7xx_init_late, ptr null, ptr @omap44xx_restart }, section ".arch.info.init", align 4
@.str.14 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Generic DRA72X (Flattened Device Tree)\00", [57 x i8] zeroinitializer }, align 32
@dra72x_boards_compat = internal constant [5 x ptr] [ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr null], section ".init.rodata", align 4
@__mach_desc_DRA72X_DT = internal constant %struct.machine_desc { i32 -1, ptr @.str.14, i32 0, ptr @dra72x_boards_compat, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap_reserve, ptr @dra7xx_map_io, ptr @dra7xx_init_early, ptr @omap_gic_of_init, ptr @omap5_realtime_timer_init, ptr @omap_generic_init, ptr @dra7xx_init_late, ptr null, ptr @omap44xx_restart }, section ".arch.info.init", align 4
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ti,omap2420\00", [20 x i8] zeroinitializer }, align 32
@omap_dt_match_table = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"simple-bus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap-infra\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ti,omap2430\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nokia,omap3-n900\00", [47 x i8] zeroinitializer }, align 32
@system_rev = external dso_local local_unnamed_addr global i32, align 4
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ti,omap3430\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ti,omap3\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ti,omap3630\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ti,omap36xx\00", [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ti,omap3-beagle\00", [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"timll,omap3-devkit8000\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ti,am3517\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ti,dm8148\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ti,dm814\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ti,dm8168\00", [22 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ti,dm816\00", [23 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ti,am33xx\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ti,omap4460\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ti,omap4430\00", [20 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ti,omap4\00", [23 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ti,omap5432\00", [20 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ti,omap5430\00", [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ti,omap5\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ti,am4372\00", [22 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ti,am43\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ti,dra762\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ti,am5728\00", [22 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ti,am5726\00", [22 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ti,dra742\00", [22 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ti,dra7\00", [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ti,am5718\00", [22 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ti,am5716\00", [22 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ti,dra722\00", [22 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ti,dra718\00", [22 x i8] zeroinitializer }, align 32
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 55, i32 1 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 72, i32 1 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 118, i32 1 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 136, i32 1 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 153, i32 1 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 170, i32 1 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 186, i32 1 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 205, i32 1 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 222, i32 1 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 240, i32 1 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 260, i32 1 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 285, i32 1 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 309, i32 1 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 334, i32 1 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 358, i32 1 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 51, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 68, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 86, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 131, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 132, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 148, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 149, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 165, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 166, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 182, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 200, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 201, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 217, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 218, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 236, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 254, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 255, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 256, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 279, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 280, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 281, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 304, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 305, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 326, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 327, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 328, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 329, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 330, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 351, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 352, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 353, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.186 = private constant [39 x i8] c"../arch/arm/mach-omap2/board-generic.c\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 354, i32 2 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @__mach_desc_AM33XX_DT, ptr @__mach_desc_AM3517_DT, ptr @__mach_desc_AM43_DT, ptr @__mach_desc_DRA72X_DT, ptr @__mach_desc_DRA74X_DT, ptr @__mach_desc_OMAP242X_DT, ptr @__mach_desc_OMAP243X_DT, ptr @__mach_desc_OMAP36XX_DT, ptr @__mach_desc_OMAP3_DT, ptr @__mach_desc_OMAP3_GP_DT, ptr @__mach_desc_OMAP3_N900_DT, ptr @__mach_desc_OMAP4_DT, ptr @__mach_desc_OMAP5_DT, ptr @__mach_desc_TI814X_DT, ptr @__mach_desc_TI816X_DT, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_reserve() #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @omap242x_map_io() #1 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap2420_init_early() #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @omap_init_time_of() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @omap_clk_init() #3
  tail call void @timer_probe() #3
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @omap_generic_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @pdata_quirks_init(ptr noundef nonnull @omap_dt_match_table) #3
  tail call void @omap_soc_device_init() #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap2xxx_restart(i32 noundef, ptr noundef) #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @omap243x_map_io() #1 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap2430_init_early() #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rx51_reserve() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @save_atags(ptr noundef nonnull inttoptr (i32 -1073741568 to ptr)) #3
  call void @__asan_load4_noabort(i32 -1073741564)
  %0 = load i32, ptr inttoptr (i32 -1073741564 to ptr), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1413545985, i32 %0)
  %cmp.not.i = icmp eq i32 %0, 1413545985
  br i1 %cmp.not.i, label %for.cond.preheader.i, label %entry.rx51_set_system_rev.exit_crit_edge

entry.rx51_set_system_rev.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %rx51_set_system_rev.exit

for.cond.preheader.i:                             ; preds = %entry
  call void @__asan_load4_noabort(i32 -1073741568)
  %1 = load i32, ptr inttoptr (i32 -1073741568 to ptr), align 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not2.i = icmp eq i32 %1, 0
  br i1 %tobool.not2.i, label %for.cond.preheader.i.rx51_set_system_rev.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.rx51_set_system_rev.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %rx51_set_system_rev.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %2 = phi i32 [ %8, %for.inc.i.for.body.i_crit_edge ], [ %1, %for.cond.preheader.i.for.body.i_crit_edge ]
  %tag.03.i = phi ptr [ %add.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ inttoptr (i32 -1073741568 to ptr), %for.cond.preheader.i.for.body.i_crit_edge ]
  %tag4.i = getelementptr inbounds %struct.tag_header, ptr %tag.03.i, i32 0, i32 1
  %3 = ptrtoint ptr %tag4.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tag4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1413545991, i32 %4)
  %cmp5.i = icmp eq i32 %4, 1413545991
  br i1 %cmp5.i, label %if.then6.i, label %for.inc.i

if.then6.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %u.i = getelementptr inbounds %struct.tag, ptr %tag.03.i, i32 0, i32 1
  %5 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %u.i, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @system_rev to i32))
  store i32 %6, ptr @system_rev, align 4
  br label %rx51_set_system_rev.exit

for.inc.i:                                        ; preds = %for.body.i
  %add.ptr.i = getelementptr i32, ptr %tag.03.i, i32 %2
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i, align 4
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %for.inc.i.rx51_set_system_rev.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.inc.i.rx51_set_system_rev.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %rx51_set_system_rev.exit

rx51_set_system_rev.exit:                         ; preds = %for.inc.i.rx51_set_system_rev.exit_crit_edge, %if.then6.i, %for.cond.preheader.i.rx51_set_system_rev.exit_crit_edge, %entry.rx51_set_system_rev.exit_crit_edge
  tail call void @omap_reserve() #3
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @omap3_map_io() #1 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3430_init_early() #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3_init_late() #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3xxx_restart(i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3630_init_early() #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @am35xx_init_early() #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @ti81xx_map_io() #1 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ti814x_init_early() #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ti81xx_init_late() #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ti81xx_restart(i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ti816x_init_early() #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @am33xx_map_io() #1 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @am33xx_init_early() #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @am33xx_init_late() #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @am33xx_restart(i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap4_l2c310_write_sec(i32 noundef, i32 noundef) #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @omap4_map_io() #1 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap4430_init_early() #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_gic_of_init() #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap4430_init_late() #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap44xx_restart(i32 noundef, ptr noundef) #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @omap5_map_io() #1 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap5_init_early() #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap5_realtime_timer_init() #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap5_init_late() #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @am43xx_init_early() #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @am43xx_init_late() #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dra7xx_map_io() #1 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dra7xx_init_early() #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dra7xx_init_late() #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_clk_init() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @timer_probe() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pdata_quirks_init(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_soc_device_init() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @save_atags(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !14, !15, !17, !18, !20, !21, !23, !24, !26, !27, !29, !30, !32, !33, !35, !36, !38, !39, !41, !42, !44, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139}
!llvm.module.flags = !{!141, !142, !143, !144, !145, !146, !147, !148}
!llvm.ident = !{!149}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/board-generic.c", i32 55, i32 1}
!2 = !{ptr @__mach_desc_OMAP242X_DT, !1, !"__mach_desc_OMAP242X_DT", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../arch/arm/mach-omap2/board-generic.c", i32 72, i32 1}
!5 = !{ptr @__mach_desc_OMAP243X_DT, !4, !"__mach_desc_OMAP243X_DT", i1 false, i1 false}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-omap2/board-generic.c", i32 118, i32 1}
!8 = !{ptr @__mach_desc_OMAP3_N900_DT, !7, !"__mach_desc_OMAP3_N900_DT", i1 false, i1 false}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../arch/arm/mach-omap2/board-generic.c", i32 136, i32 1}
!11 = !{ptr @__mach_desc_OMAP3_DT, !10, !"__mach_desc_OMAP3_DT", i1 false, i1 false}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-omap2/board-generic.c", i32 153, i32 1}
!14 = !{ptr @__mach_desc_OMAP36XX_DT, !13, !"__mach_desc_OMAP36XX_DT", i1 false, i1 false}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../arch/arm/mach-omap2/board-generic.c", i32 170, i32 1}
!17 = !{ptr @__mach_desc_OMAP3_GP_DT, !16, !"__mach_desc_OMAP3_GP_DT", i1 false, i1 false}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../arch/arm/mach-omap2/board-generic.c", i32 186, i32 1}
!20 = !{ptr @__mach_desc_AM3517_DT, !19, !"__mach_desc_AM3517_DT", i1 false, i1 false}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../arch/arm/mach-omap2/board-generic.c", i32 205, i32 1}
!23 = !{ptr @__mach_desc_TI814X_DT, !22, !"__mach_desc_TI814X_DT", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../arch/arm/mach-omap2/board-generic.c", i32 222, i32 1}
!26 = !{ptr @__mach_desc_TI816X_DT, !25, !"__mach_desc_TI816X_DT", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../arch/arm/mach-omap2/board-generic.c", i32 240, i32 1}
!29 = !{ptr @__mach_desc_AM33XX_DT, !28, !"__mach_desc_AM33XX_DT", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../arch/arm/mach-omap2/board-generic.c", i32 260, i32 1}
!32 = !{ptr @__mach_desc_OMAP4_DT, !31, !"__mach_desc_OMAP4_DT", i1 false, i1 false}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../arch/arm/mach-omap2/board-generic.c", i32 285, i32 1}
!35 = !{ptr @__mach_desc_OMAP5_DT, !34, !"__mach_desc_OMAP5_DT", i1 false, i1 false}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../arch/arm/mach-omap2/board-generic.c", i32 309, i32 1}
!38 = !{ptr @__mach_desc_AM43_DT, !37, !"__mach_desc_AM43_DT", i1 false, i1 false}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../arch/arm/mach-omap2/board-generic.c", i32 334, i32 1}
!41 = !{ptr @__mach_desc_DRA74X_DT, !40, !"__mach_desc_DRA74X_DT", i1 false, i1 false}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../arch/arm/mach-omap2/board-generic.c", i32 358, i32 1}
!44 = !{ptr @__mach_desc_DRA72X_DT, !43, !"__mach_desc_DRA72X_DT", i1 false, i1 false}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../arch/arm/mach-omap2/board-generic.c", i32 51, i32 2}
!47 = !{ptr @omap242x_boards_compat, !48, !"omap242x_boards_compat", i1 false, i1 false}
!48 = !{!"../arch/arm/mach-omap2/board-generic.c", i32 50, i32 26}
!49 = !{ptr @omap_dt_match_table, !50, !"omap_dt_match_table", i1 false, i1 false}
!50 = !{!"../arch/arm/mach-omap2/board-generic.c", i32 23, i32 34}
!51 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../arch/arm/mach-omap2/board-generic.c", i32 68, i32 2}
!53 = !{ptr @omap243x_boards_compat, !54, !"omap243x_boards_compat", i1 false, i1 false}
!54 = !{!"../arch/arm/mach-omap2/board-generic.c", i32 67, i32 26}
!55 = !{ptr @.str.17, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../arch/arm/mach-omap2/board-generic.c", i32 86, i32 2}
!57 = !{ptr @n900_boards_compat, !58, !"n900_boards_compat", i1 false, i1 false}
!58 = !{!"../arch/arm/mach-omap2/board-generic.c", i32 85, i32 26}
!59 = !{ptr @.str.18, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../arch/arm/mach-omap2/board-generic.c", i32 131, i32 2}
!61 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../arch/arm/mach-omap2/board-generic.c", i32 132, i32 2}
!63 = !{ptr @omap3_boards_compat, !64, !"omap3_boards_compat", i1 false, i1 false}
!64 = !{!"../arch/arm/mach-omap2/board-generic.c", i32 130, i32 26}
!65 = !{ptr @.str.20, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../arch/arm/mach-omap2/board-generic.c", i32 148, i32 2}
!67 = !{ptr @.str.21, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../arch/arm/mach-omap2/board-generic.c", i32 149, i32 2}
!69 = !{ptr @omap36xx_boards_compat, !70, !"omap36xx_boards_compat", i1 false, i1 false}
!70 = !{!"../arch/arm/mach-omap2/board-generic.c", i32 147, i32 26}
!71 = !{ptr @.str.22, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../arch/arm/mach-omap2/board-generic.c", i32 165, i32 2}
!73 = !{ptr @.str.23, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../arch/arm/mach-omap2/board-generic.c", i32 166, i32 2}
!75 = !{ptr @omap3_gp_boards_compat, !76, !"omap3_gp_boards_compat", i1 false, i1 false}
!76 = !{!"../arch/arm/mach-omap2/board-generic.c", i32 164, i32 26}
!77 = !{ptr @.str.24, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../arch/arm/mach-omap2/board-generic.c", i32 182, i32 2}
!79 = !{ptr @am3517_boards_compat, !80, !"am3517_boards_compat", i1 false, i1 false}
!80 = !{!"../arch/arm/mach-omap2/board-generic.c", i32 181, i32 26}
!81 = !{ptr @.str.25, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../arch/arm/mach-omap2/board-generic.c", i32 200, i32 2}
!83 = !{ptr @.str.26, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../arch/arm/mach-omap2/board-generic.c", i32 201, i32 2}
!85 = !{ptr @ti814x_boards_compat, !86, !"ti814x_boards_compat", i1 false, i1 false}
!86 = !{!"../arch/arm/mach-omap2/board-generic.c", i32 199, i32 26}
!87 = !{ptr @.str.27, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../arch/arm/mach-omap2/board-generic.c", i32 217, i32 2}
!89 = !{ptr @.str.28, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../arch/arm/mach-omap2/board-generic.c", i32 218, i32 2}
!91 = !{ptr @ti816x_boards_compat, !92, !"ti816x_boards_compat", i1 false, i1 false}
!92 = !{!"../arch/arm/mach-omap2/board-generic.c", i32 216, i32 26}
!93 = !{ptr @.str.29, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../arch/arm/mach-omap2/board-generic.c", i32 236, i32 2}
!95 = !{ptr @am33xx_boards_compat, !96, !"am33xx_boards_compat", i1 false, i1 false}
!96 = !{!"../arch/arm/mach-omap2/board-generic.c", i32 235, i32 26}
!97 = !{ptr @.str.30, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../arch/arm/mach-omap2/board-generic.c", i32 254, i32 2}
!99 = !{ptr @.str.31, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../arch/arm/mach-omap2/board-generic.c", i32 255, i32 2}
!101 = !{ptr @.str.32, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../arch/arm/mach-omap2/board-generic.c", i32 256, i32 2}
!103 = !{ptr @omap4_boards_compat, !104, !"omap4_boards_compat", i1 false, i1 false}
!104 = !{!"../arch/arm/mach-omap2/board-generic.c", i32 253, i32 26}
!105 = !{ptr @.str.33, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../arch/arm/mach-omap2/board-generic.c", i32 279, i32 2}
!107 = !{ptr @.str.34, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../arch/arm/mach-omap2/board-generic.c", i32 280, i32 2}
!109 = !{ptr @.str.35, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../arch/arm/mach-omap2/board-generic.c", i32 281, i32 2}
!111 = !{ptr @omap5_boards_compat, !112, !"omap5_boards_compat", i1 false, i1 false}
!112 = !{!"../arch/arm/mach-omap2/board-generic.c", i32 278, i32 26}
!113 = !{ptr @.str.36, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../arch/arm/mach-omap2/board-generic.c", i32 304, i32 2}
!115 = !{ptr @.str.37, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../arch/arm/mach-omap2/board-generic.c", i32 305, i32 2}
!117 = !{ptr @am43_boards_compat, !118, !"am43_boards_compat", i1 false, i1 false}
!118 = !{!"../arch/arm/mach-omap2/board-generic.c", i32 303, i32 26}
!119 = !{ptr @.str.38, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../arch/arm/mach-omap2/board-generic.c", i32 326, i32 2}
!121 = !{ptr @.str.39, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../arch/arm/mach-omap2/board-generic.c", i32 327, i32 2}
!123 = !{ptr @.str.40, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../arch/arm/mach-omap2/board-generic.c", i32 328, i32 2}
!125 = !{ptr @.str.41, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../arch/arm/mach-omap2/board-generic.c", i32 329, i32 2}
!127 = !{ptr @.str.42, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../arch/arm/mach-omap2/board-generic.c", i32 330, i32 2}
!129 = !{ptr @dra74x_boards_compat, !130, !"dra74x_boards_compat", i1 false, i1 false}
!130 = !{!"../arch/arm/mach-omap2/board-generic.c", i32 325, i32 26}
!131 = !{ptr @.str.43, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../arch/arm/mach-omap2/board-generic.c", i32 351, i32 2}
!133 = !{ptr @.str.44, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../arch/arm/mach-omap2/board-generic.c", i32 352, i32 2}
!135 = !{ptr @.str.45, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../arch/arm/mach-omap2/board-generic.c", i32 353, i32 2}
!137 = !{ptr @.str.46, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../arch/arm/mach-omap2/board-generic.c", i32 354, i32 2}
!139 = !{ptr @dra72x_boards_compat, !140, !"dra72x_boards_compat", i1 false, i1 false}
!140 = !{!"../arch/arm/mach-omap2/board-generic.c", i32 350, i32 26}
!141 = !{i32 1, !"wchar_size", i32 2}
!142 = !{i32 1, !"min_enum_size", i32 4}
!143 = !{i32 8, !"branch-target-enforcement", i32 0}
!144 = !{i32 8, !"sign-return-address", i32 0}
!145 = !{i32 8, !"sign-return-address-all", i32 0}
!146 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!147 = !{i32 7, !"uwtable", i32 1}
!148 = !{i32 7, !"frame-pointer", i32 2}
!149 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
