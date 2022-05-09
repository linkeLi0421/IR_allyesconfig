; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/via/accel.c_pt.bc'
source_filename = "../drivers/video/fbdev/via/accel.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.78, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.78 = type { ptr }
%struct.viafb_par = type { i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.viafb_shared = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.tmds_setting_information, %struct.lvds_setting_information, %struct.lvds_setting_information, %struct.chip_information, i32, i32, ptr }
%struct.tmds_setting_information = type { i32, i32, i32, i32 }
%struct.lvds_setting_information = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.chip_information = type { i32, i32, i32, %struct.tmds_chip_information, %struct.lvds_chip_information, %struct.lvds_chip_information }
%struct.tmds_chip_information = type { i32, i32, i32, i32 }
%struct.lvds_chip_information = type { i32, i32, i32, i32 }
%struct.viafb_dev = type { ptr, i32, ptr, %struct.spinlock, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }

@viafb_setup_engine._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\014viafb_init_accel: ioremap failed, hardware acceleration disabled\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"viafb_setup_engine\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/video/fbdev/via/accel.c\00", [32 x i8] zeroinitializer }, align 32
@viafb_setup_engine._entry_ptr = internal global ptr @viafb_setup_engine._entry, section ".printk_index", align 4
@viafb_wait_engine_idle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 532, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013viafb_wait_engine_idle: not syncing\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"viafb_wait_engine_idle\00", [41 x i8] zeroinitializer }, align 32
@viafb_wait_engine_idle._entry_ptr = internal global ptr @viafb_wait_engine_idle._entry, section ".printk_index", align 4
@hw_bitblt_1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 48, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014hw_bitblt_1: Invalid operation: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hw_bitblt_1\00", [20 x i8] zeroinitializer }, align 32
@hw_bitblt_1._entry_ptr = internal global ptr @hw_bitblt_1._entry, section ".printk_index", align 4
@hw_bitblt_1._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 74, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014hw_bitblt_1: Invalid fill rop: %u\0A\00", [59 x i8] zeroinitializer }, align 32
@hw_bitblt_1._entry_ptr.9 = internal global ptr @hw_bitblt_1._entry.7, section ".printk_index", align 4
@hw_bitblt_1._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.2, i32 87, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014hw_bitblt_1: Unsupported source x/y %d %d\0A\00", [51 x i8] zeroinitializer }, align 32
@hw_bitblt_1._entry_ptr.12 = internal global ptr @hw_bitblt_1._entry.10, section ".printk_index", align 4
@hw_bitblt_1._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.6, ptr @.str.2, i32 96, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014hw_bitblt_1: Unsupported destination x/y %d %d\0A\00", [46 x i8] zeroinitializer }, align 32
@hw_bitblt_1._entry_ptr.15 = internal global ptr @hw_bitblt_1._entry.13, section ".printk_index", align 4
@hw_bitblt_1._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.6, ptr @.str.2, i32 104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014hw_bitblt_1: Unsupported width/height %d %d\0A\00", [49 x i8] zeroinitializer }, align 32
@hw_bitblt_1._entry_ptr.18 = internal global ptr @hw_bitblt_1._entry.16, section ".printk_index", align 4
@hw_bitblt_1._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.6, ptr @.str.2, i32 120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014hw_bitblt_1: Unsupported source address %X\0A\00", [50 x i8] zeroinitializer }, align 32
@hw_bitblt_1._entry_ptr.21 = internal global ptr @hw_bitblt_1._entry.19, section ".printk_index", align 4
@hw_bitblt_1._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.6, ptr @.str.2, i32 129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014hw_bitblt_1: Unsupported destination address %X\0A\00", [45 x i8] zeroinitializer }, align 32
@hw_bitblt_1._entry_ptr.24 = internal global ptr @hw_bitblt_1._entry.22, section ".printk_index", align 4
@hw_bitblt_1._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.6, ptr @.str.2, i32 141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014hw_bitblt_1: Unsupported pitch %X %X\0A\00", [56 x i8] zeroinitializer }, align 32
@hw_bitblt_1._entry_ptr.27 = internal global ptr @hw_bitblt_1._entry.25, section ".printk_index", align 4
@viafb_set_bpp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 31, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014viafb_set_bpp: Unsupported bpp %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"viafb_set_bpp\00", [18 x i8] zeroinitializer }, align 32
@viafb_set_bpp._entry_ptr = internal global ptr @viafb_set_bpp._entry, section ".printk_index", align 4
@hw_bitblt_2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014hw_bitblt_2: Invalid operation: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hw_bitblt_2\00", [20 x i8] zeroinitializer }, align 32
@hw_bitblt_2._entry_ptr = internal global ptr @hw_bitblt_2._entry, section ".printk_index", align 4
@hw_bitblt_2._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.2, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014hw_bitblt_2: Invalid fill rop: %u\0A\00", [59 x i8] zeroinitializer }, align 32
@hw_bitblt_2._entry_ptr.34 = internal global ptr @hw_bitblt_2._entry.32, section ".printk_index", align 4
@hw_bitblt_2._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.31, ptr @.str.2, i32 222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014hw_bitblt_2: Unsupported pitch %X %X\0A\00", [56 x i8] zeroinitializer }, align 32
@hw_bitblt_2._entry_ptr.37 = internal global ptr @hw_bitblt_2._entry.35, section ".printk_index", align 4
@hw_bitblt_2._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.31, ptr @.str.2, i32 230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014hw_bitblt_2: Unsupported width/height %d %d\0A\00", [49 x i8] zeroinitializer }, align 32
@hw_bitblt_2._entry_ptr.40 = internal global ptr @hw_bitblt_2._entry.38, section ".printk_index", align 4
@hw_bitblt_2._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.31, ptr @.str.2, i32 238, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014hw_bitblt_2: Unsupported destination x/y %d %d\0A\00", [46 x i8] zeroinitializer }, align 32
@hw_bitblt_2._entry_ptr.43 = internal global ptr @hw_bitblt_2._entry.41, section ".printk_index", align 4
@hw_bitblt_2._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.31, ptr @.str.2, i32 246, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014hw_bitblt_2: Unsupported destination address %X\0A\00", [45 x i8] zeroinitializer }, align 32
@hw_bitblt_2._entry_ptr.46 = internal global ptr @hw_bitblt_2._entry.44, section ".printk_index", align 4
@hw_bitblt_2._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.31, ptr @.str.2, i32 256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014hw_bitblt_2: Unsupported source x/y %d %d\0A\00", [51 x i8] zeroinitializer }, align 32
@hw_bitblt_2._entry_ptr.49 = internal global ptr @hw_bitblt_2._entry.47, section ".printk_index", align 4
@hw_bitblt_2._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.31, ptr @.str.2, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014hw_bitblt_2: Unsupported source address %X\0A\00", [50 x i8] zeroinitializer }, align 32
@hw_bitblt_2._entry_ptr.52 = internal global ptr @hw_bitblt_2._entry.50, section ".printk_index", align 4
@switch.table.viafb_setup_engine = internal constant { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @hw_bitblt_1, ptr @hw_bitblt_1, ptr @hw_bitblt_1, ptr @hw_bitblt_1, ptr @hw_bitblt_1, ptr @hw_bitblt_1, ptr @hw_bitblt_1, ptr @hw_bitblt_1, ptr @hw_bitblt_1, ptr @hw_bitblt_1, ptr @hw_bitblt_2, ptr @hw_bitblt_2, ptr @hw_bitblt_2], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 90, i64 240, i64 255]
@__sancov_gen_cov_switch_values.53 = internal global [5 x i64] [i64 3, i64 8, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.54 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 90, i64 240, i64 255]
@__sancov_gen_cov_switch_values.55 = internal global [5 x i64] [i64 3, i64 8, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.56 = internal global [7 x i64] [i64 5, i64 32, i64 8, i64 10, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.57 = internal global [7 x i64] [i64 5, i64 32, i64 8, i64 10, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 312, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 532, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 48, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 73, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 86, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 95, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 103, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 119, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 128, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 140, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 31, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 181, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 206, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 221, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 229, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 237, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 245, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 255, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.189 = private constant [35 x i8] c"../drivers/video/fbdev/via/accel.c\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 264, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant [32 x i8] c"switch.table.viafb_setup_engine\00", align 1
@llvm.compiler.used = appending global [64 x ptr] [ptr @hw_bitblt_1._entry, ptr @hw_bitblt_1._entry.10, ptr @hw_bitblt_1._entry.13, ptr @hw_bitblt_1._entry.16, ptr @hw_bitblt_1._entry.19, ptr @hw_bitblt_1._entry.22, ptr @hw_bitblt_1._entry.25, ptr @hw_bitblt_1._entry.7, ptr @hw_bitblt_1._entry_ptr, ptr @hw_bitblt_1._entry_ptr.12, ptr @hw_bitblt_1._entry_ptr.15, ptr @hw_bitblt_1._entry_ptr.18, ptr @hw_bitblt_1._entry_ptr.21, ptr @hw_bitblt_1._entry_ptr.24, ptr @hw_bitblt_1._entry_ptr.27, ptr @hw_bitblt_1._entry_ptr.9, ptr @hw_bitblt_2._entry, ptr @hw_bitblt_2._entry.32, ptr @hw_bitblt_2._entry.35, ptr @hw_bitblt_2._entry.38, ptr @hw_bitblt_2._entry.41, ptr @hw_bitblt_2._entry.44, ptr @hw_bitblt_2._entry.47, ptr @hw_bitblt_2._entry.50, ptr @hw_bitblt_2._entry_ptr, ptr @hw_bitblt_2._entry_ptr.34, ptr @hw_bitblt_2._entry_ptr.37, ptr @hw_bitblt_2._entry_ptr.40, ptr @hw_bitblt_2._entry_ptr.43, ptr @hw_bitblt_2._entry_ptr.46, ptr @hw_bitblt_2._entry_ptr.49, ptr @hw_bitblt_2._entry_ptr.52, ptr @viafb_set_bpp._entry, ptr @viafb_set_bpp._entry_ptr, ptr @viafb_setup_engine._entry, ptr @viafb_setup_engine._entry_ptr, ptr @viafb_wait_engine_idle._entry, ptr @viafb_wait_engine_idle._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @switch.table.viafb_setup_engine], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viafb_setup_engine._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viafb_wait_engine_idle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_bitblt_1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_bitblt_1._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_bitblt_1._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_bitblt_1._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_bitblt_1._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_bitblt_1._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_bitblt_1._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_bitblt_1._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viafb_set_bpp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_bitblt_2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_bitblt_2._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_bitblt_2._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_bitblt_2._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_bitblt_2._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_bitblt_2._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_bitblt_2._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_bitblt_2._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.viafb_setup_engine to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @viafb_setup_engine(ptr nocapture noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %shared = getelementptr inbounds %struct.viafb_par, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %shared to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shared, align 4
  %vdev = getelementptr inbounds %struct.viafb_shared, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdev, align 4
  %engine_mmio = getelementptr inbounds %struct.viafb_dev, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %engine_mmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %engine_mmio, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %chip_info = getelementptr inbounds %struct.viafb_shared, ptr %3, i32 0, i32 12
  %8 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chip_info, align 4
  %switch.tableidx = add i32 %9, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %switch.tableidx)
  %10 = icmp ult i32 %switch.tableidx, 13
  br i1 %10, label %switch.lookup, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [13 x ptr], ptr @switch.table.viafb_setup_engine, i32 0, i32 %switch.tableidx
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end.sw.epilog_crit_edge
  %.sink = phi ptr [ %switch.load, %switch.lookup ], [ null, %if.end.sw.epilog_crit_edge ]
  %hw_bitblt7 = getelementptr inbounds %struct.viafb_shared, ptr %3, i32 0, i32 15
  %12 = ptrtoint ptr %hw_bitblt7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %.sink, ptr %hw_bitblt7, align 4
  %fbmem_free = getelementptr inbounds %struct.viafb_par, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %fbmem_free to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fbmem_free, align 4
  %sub = add i32 %14, -8192
  store i32 %sub, ptr %fbmem_free, align 4
  %15 = ptrtoint ptr %shared to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %shared, align 4
  %cursor_vram_addr = getelementptr inbounds %struct.viafb_shared, ptr %16, i32 0, i32 13
  %17 = ptrtoint ptr %cursor_vram_addr to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub, ptr %cursor_vram_addr, align 4
  %fbmem_used = getelementptr inbounds %struct.viafb_par, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %fbmem_used to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fbmem_used, align 4
  %add = add i32 %19, 8192
  store i32 %add, ptr %fbmem_used, align 4
  %20 = load i32, ptr %fbmem_free, align 4
  %sub11 = add i32 %20, -262144
  store i32 %sub11, ptr %fbmem_free, align 4
  %21 = load ptr, ptr %shared, align 4
  %vq_vram_addr = getelementptr inbounds %struct.viafb_shared, ptr %21, i32 0, i32 14
  %22 = ptrtoint ptr %vq_vram_addr to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sub11, ptr %vq_vram_addr, align 4
  %23 = load i32, ptr %fbmem_used, align 4
  %add15 = add i32 %23, 262144
  store i32 %add15, ptr %fbmem_used, align 4
  %24 = load ptr, ptr %shared, align 4
  %vdev17 = getelementptr inbounds %struct.viafb_shared, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %vdev17 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vdev17, align 4
  %camera_fbmem_size = getelementptr inbounds %struct.viafb_dev, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %camera_fbmem_size to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1843200, ptr %camera_fbmem_size, align 4
  %28 = load ptr, ptr %shared, align 4
  %vdev19 = getelementptr inbounds %struct.viafb_shared, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %vdev19 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vdev19, align 4
  %camera_fbmem_size20 = getelementptr inbounds %struct.viafb_dev, ptr %30, i32 0, i32 8
  %31 = ptrtoint ptr %camera_fbmem_size20 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %camera_fbmem_size20, align 4
  %33 = load i32, ptr %fbmem_free, align 4
  %sub22 = sub i32 %33, %32
  store i32 %sub22, ptr %fbmem_free, align 4
  %34 = load ptr, ptr %vdev19, align 4
  %camera_fbmem_size25 = getelementptr inbounds %struct.viafb_dev, ptr %34, i32 0, i32 8
  %35 = ptrtoint ptr %camera_fbmem_size25 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %camera_fbmem_size25, align 4
  %37 = load i32, ptr %fbmem_used, align 4
  %add27 = add i32 %37, %36
  store i32 %add27, ptr %fbmem_used, align 4
  %38 = load ptr, ptr %vdev19, align 4
  %camera_fbmem_offset = getelementptr inbounds %struct.viafb_dev, ptr %38, i32 0, i32 7
  %39 = ptrtoint ptr %camera_fbmem_offset to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %sub22, ptr %camera_fbmem_offset, align 4
  tail call void @viafb_reset_engine(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_bitblt_1(ptr noundef %engine, i8 noundef zeroext %op, i32 noundef %width, i32 noundef %height, i8 noundef zeroext %dst_bpp, i32 noundef %dst_addr, i32 noundef %dst_pitch, i32 noundef %dst_x, i32 noundef %dst_y, ptr noundef readonly %src_mem, i32 noundef %src_addr, i32 noundef %src_pitch, i32 noundef %src_x, i32 noundef %src_y, i32 noundef %fg_color, i32 noundef %bg_color, i8 noundef zeroext %fill_rop) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i8 %op, -4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -3, i8 %0)
  %1 = icmp ult i8 %0, -3
  br i1 %1, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv3 = zext i8 %op to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %conv3) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %op)
  %cmp5.not = icmp eq i8 %op, 3
  %cmp5.not.not = xor i1 %cmp5.not, true
  %tobool7.not = icmp eq ptr %src_mem, null
  %or.cond324 = and i1 %tobool7.not, %cmp5.not.not
  call void @__sanitizer_cov_trace_cmp4(i32 %src_addr, i32 %dst_addr)
  %cmp9 = icmp eq i32 %src_addr, %dst_addr
  %or.cond325 = and i1 %or.cond324, %cmp9
  br i1 %or.cond325, label %if.then11, label %if.end.if.end27_crit_edge

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %src_x, i32 %dst_x)
  %cmp12 = icmp ult i32 %src_x, %dst_x
  %sub = add i32 %width, -1
  %ge_cmd.0 = select i1 %cmp12, i32 32768, i32 0
  %add = select i1 %cmp12, i32 %sub, i32 0
  %src_x.addr.0 = add i32 %add, %src_x
  %dst_x.addr.0 = add i32 %add, %dst_x
  call void @__sanitizer_cov_trace_cmp4(i32 %src_y, i32 %dst_y)
  %cmp18 = icmp ult i32 %src_y, %dst_y
  br i1 %cmp18, label %if.then20, label %if.then11.if.end27_crit_edge

if.then11.if.end27_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

if.then20:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  %or21 = or i32 %ge_cmd.0, 16384
  %sub22 = add i32 %height, -1
  %add23 = add i32 %sub22, %src_y
  %add25 = add i32 %sub22, %dst_y
  br label %if.end27

if.end27:                                         ; preds = %if.then20, %if.then11.if.end27_crit_edge, %if.end.if.end27_crit_edge
  %ge_cmd.1 = phi i32 [ %or21, %if.then20 ], [ %ge_cmd.0, %if.then11.if.end27_crit_edge ], [ 0, %if.end.if.end27_crit_edge ]
  %src_y.addr.0 = phi i32 [ %add23, %if.then20 ], [ %src_y, %if.then11.if.end27_crit_edge ], [ %src_y, %if.end.if.end27_crit_edge ]
  %src_x.addr.1 = phi i32 [ %src_x.addr.0, %if.then20 ], [ %src_x.addr.0, %if.then11.if.end27_crit_edge ], [ %src_x, %if.end.if.end27_crit_edge ]
  %dst_y.addr.0 = phi i32 [ %add25, %if.then20 ], [ %dst_y, %if.then11.if.end27_crit_edge ], [ %dst_y, %if.end.if.end27_crit_edge ]
  %dst_x.addr.1 = phi i32 [ %dst_x.addr.0, %if.then20 ], [ %dst_x.addr.0, %if.then11.if.end27_crit_edge ], [ %dst_x, %if.end.if.end27_crit_edge ]
  br i1 %cmp5.not, label %if.then31, label %if.end27.if.end39_crit_edge

if.end27.if.end39_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end39

if.then31:                                        ; preds = %if.end27
  %2 = zext i8 %fill_rop to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %fill_rop, label %do.end35 [
    i8 0, label %if.then31.if.end39_crit_edge
    i8 90, label %if.then31.if.end39_crit_edge338
    i8 -16, label %if.then31.if.end39_crit_edge339
    i8 -1, label %if.then31.if.end39_crit_edge340
  ]

if.then31.if.end39_crit_edge340:                  ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end39

if.then31.if.end39_crit_edge339:                  ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end39

if.then31.if.end39_crit_edge338:                  ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end39

if.then31.if.end39_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end39

do.end35:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #6
  %conv32 = zext i8 %fill_rop to i32
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %conv32) #7
  br label %cleanup

if.end39:                                         ; preds = %if.then31.if.end39_crit_edge, %if.then31.if.end39_crit_edge338, %if.then31.if.end39_crit_edge339, %if.then31.if.end39_crit_edge340, %if.end27.if.end39_crit_edge
  %add.ptr.i = getelementptr i8, ptr %engine, i32 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !92
  %4 = and i32 %3, -50528257
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #4
  %6 = zext i8 %dst_bpp to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.53)
  switch i8 %dst_bpp, label %viafb_set_bpp.exit [
    i8 8, label %if.end39.if.end43_crit_edge
    i8 16, label %sw.bb2.i
    i8 32, label %sw.bb4.i
  ]

if.end39.if.end43_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end43

sw.bb2.i:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  %or3.i = or i32 %5, 256
  br label %if.end43

sw.bb4.i:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  %or5.i = or i32 %5, 768
  br label %if.end43

viafb_set_bpp.exit:                               ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i = zext i8 %dst_bpp to i32
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %conv.i) #7
  br label %cleanup

if.end43:                                         ; preds = %sw.bb4.i, %sw.bb2.i, %if.end39.if.end43_crit_edge
  %gemode.0.i = phi i32 [ %or5.i, %sw.bb4.i ], [ %or3.i, %sw.bb2.i ], [ %5, %if.end39.if.end43_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !93
  tail call void @arm_heavy_mb() #4
  %7 = tail call i32 @llvm.bswap.i32(i32 %gemode.0.i) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %7) #4, !srcloc !94
  br i1 %cmp5.not, label %if.end43.if.end66_crit_edge, label %if.then47

if.end43.if.end66_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end66

if.then47:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %op)
  %cmp49 = icmp eq i8 %op, 2
  %cond = select i1 %cmp49, i32 -32768, i32 -4096
  %and = and i32 %src_x.addr.1, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool51.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %src_y.addr.0)
  %tobool54.not = icmp ult i32 %src_y.addr.0, 4096
  %or.cond326 = and i1 %tobool54.not, %tobool51.not
  br i1 %or.cond326, label %if.end61, label %do.end58

do.end58:                                         ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #6
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %src_x.addr.1, i32 noundef %src_y.addr.0) #7
  br label %cleanup

if.end61:                                         ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #6
  %shl = shl nuw nsw i32 %src_y.addr.0, 16
  %or62 = or i32 %src_x.addr.1, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !95
  tail call void @arm_heavy_mb() #4
  %8 = tail call i32 @llvm.bswap.i32(i32 %or62)
  %add.ptr = getelementptr i8, ptr %engine, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #4, !srcloc !94
  br label %if.end66

if.end66:                                         ; preds = %if.end61, %if.end43.if.end66_crit_edge
  %9 = or i32 %dst_x.addr.1, %dst_y.addr.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %9)
  %10 = icmp ult i32 %9, 4096
  br i1 %10, label %if.end78, label %do.end75

do.end75:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #6
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %dst_x.addr.1, i32 noundef %dst_y.addr.0) #7
  br label %cleanup

if.end78:                                         ; preds = %if.end66
  %shl79 = shl nuw nsw i32 %dst_y.addr.0, 16
  %or80 = or i32 %dst_x.addr.1, %shl79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !96
  tail call void @arm_heavy_mb() #4
  %11 = tail call i32 @llvm.bswap.i32(i32 %or80)
  %add.ptr84 = getelementptr i8, ptr %engine, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84, i32 %11) #4, !srcloc !94
  %sub85 = add i32 %width, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub85)
  %tobool87.not = icmp ult i32 %sub85, 4096
  br i1 %tobool87.not, label %lor.lhs.false88, label %if.end78.do.end95_crit_edge

if.end78.do.end95_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end95

lor.lhs.false88:                                  ; preds = %if.end78
  %sub89 = add i32 %height, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub89)
  %tobool91.not = icmp ult i32 %sub89, 4096
  br i1 %tobool91.not, label %if.end98, label %lor.lhs.false88.do.end95_crit_edge

lor.lhs.false88.do.end95_crit_edge:               ; preds = %lor.lhs.false88
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end95

do.end95:                                         ; preds = %lor.lhs.false88.do.end95_crit_edge, %if.end78.do.end95_crit_edge
  %call97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %width, i32 noundef %height) #7
  br label %cleanup

if.end98:                                         ; preds = %lor.lhs.false88
  %shl101 = shl nuw nsw i32 %sub89, 16
  %or102 = or i32 %shl101, %sub85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !97
  tail call void @arm_heavy_mb() #4
  %12 = tail call i32 @llvm.bswap.i32(i32 %or102)
  %add.ptr106 = getelementptr i8, ptr %engine, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr106, i32 %12) #4, !srcloc !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %op)
  %cmp108.not = icmp eq i8 %op, 1
  br i1 %cmp108.not, label %if.end98.if.end124_crit_edge, label %if.end115

if.end98.if.end124_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end124

if.end115:                                        ; preds = %if.end98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !98
  tail call void @arm_heavy_mb() #4
  %13 = tail call i32 @llvm.bswap.i32(i32 %fg_color)
  %add.ptr114 = getelementptr i8, ptr %engine, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr114, i32 %13) #4, !srcloc !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %op)
  %cmp117 = icmp eq i8 %op, 2
  br i1 %cmp117, label %do.body120, label %if.end115.if.end124_crit_edge

if.end115.if.end124_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end124

do.body120:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !99
  tail call void @arm_heavy_mb() #4
  %14 = tail call i32 @llvm.bswap.i32(i32 %bg_color)
  %add.ptr123 = getelementptr i8, ptr %engine, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr123, i32 %14) #4, !srcloc !94
  br label %if.end124

if.end124:                                        ; preds = %do.body120, %if.end115.if.end124_crit_edge, %if.end98.if.end124_crit_edge
  %cmp117334 = phi i1 [ true, %do.body120 ], [ false, %if.end115.if.end124_crit_edge ], [ false, %if.end98.if.end124_crit_edge ]
  br i1 %cmp5.not, label %if.end144, label %if.then128

if.then128:                                       ; preds = %if.end124
  %spec.select = select i1 %tobool7.not, i32 %src_addr, i32 0
  %and131 = and i32 %dst_addr, -536870905
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131)
  %tobool132.not = icmp eq i32 %and131, 0
  br i1 %tobool132.not, label %if.end144.thread, label %do.end136

do.end136:                                        ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #6
  %call138 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %spec.select) #7
  br label %cleanup

if.end144.thread:                                 ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #6
  %shr = lshr i32 %spec.select, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !100
  tail call void @arm_heavy_mb() #4
  %15 = tail call i32 @llvm.bswap.i32(i32 %shr)
  %add.ptr143 = getelementptr i8, ptr %engine, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr143, i32 %15) #4, !srcloc !94
  br label %if.end153

if.end144:                                        ; preds = %if.end124
  %.pre = and i32 %dst_addr, -536870905
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %phi.cmp = icmp eq i32 %.pre, 0
  br i1 %phi.cmp, label %if.end144.if.end153_crit_edge, label %do.end150

if.end144.if.end153_crit_edge:                    ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end153

do.end150:                                        ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #6
  %call152 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %dst_addr) #7
  br label %cleanup

if.end153:                                        ; preds = %if.end144.if.end153_crit_edge, %if.end144.thread
  %.src_pitch = phi i32 [ %src_pitch, %if.end144.thread ], [ 0, %if.end144.if.end153_crit_edge ]
  %shr154 = lshr i32 %dst_addr, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !101
  tail call void @arm_heavy_mb() #4
  %16 = tail call i32 @llvm.bswap.i32(i32 %shr154)
  %add.ptr158 = getelementptr i8, ptr %engine, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr158, i32 %16) #4, !srcloc !94
  %17 = or i32 %.src_pitch, %dst_pitch
  %18 = and i32 %17, -16377
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %if.end175, label %do.end172

do.end172:                                        ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #6
  %call174 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %.src_pitch, i32 noundef %dst_pitch) #7
  br label %cleanup

if.end175:                                        ; preds = %if.end153
  %shr176 = lshr i32 %.src_pitch, 3
  %shl178 = shl nuw nsw i32 %dst_pitch, 13
  %or177 = or i32 %shl178, %shr176
  %or179 = or i32 %or177, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !102
  tail call void @arm_heavy_mb() #4
  %20 = tail call i32 @llvm.bswap.i32(i32 %or179)
  %add.ptr183 = getelementptr i8, ptr %engine, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr183, i32 %20) #4, !srcloc !94
  br i1 %cmp5.not, label %if.then187, label %if.else193

if.then187:                                       ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #6
  %conv188 = zext i8 %fill_rop to i32
  %shl189 = shl nuw i32 %conv188, 24
  %or191 = or i32 %shl189, 8193
  %or192 = or i32 %ge_cmd.1, %or191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !103
  tail call void @arm_heavy_mb() #4
  %21 = tail call i32 @llvm.bswap.i32(i32 %or192)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %engine, i32 %21) #4, !srcloc !94
  br label %cleanup

if.else193:                                       ; preds = %if.end175
  %spec.select329.v = select i1 %tobool7.not, i32 -872415232, i32 -872415168
  %spec.select329 = or i32 %ge_cmd.1, %spec.select329.v
  br i1 %cmp117334, label %if.then202, label %if.else204

if.then202:                                       ; preds = %if.else193
  call void @__sanitizer_cov_trace_pc() #6
  %or203 = or i32 %spec.select329, 131330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !103
  tail call void @arm_heavy_mb() #4
  %22 = tail call i32 @llvm.bswap.i32(i32 %or203)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %engine, i32 %22) #4, !srcloc !94
  br label %lor.lhs.false214

if.else204:                                       ; preds = %if.else193
  call void @__sanitizer_cov_trace_pc() #6
  %or205 = or i32 %spec.select329, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !103
  tail call void @arm_heavy_mb() #4
  %23 = tail call i32 @llvm.bswap.i32(i32 %or205)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %engine, i32 %23) #4, !srcloc !94
  br label %lor.lhs.false214

lor.lhs.false214:                                 ; preds = %if.else204, %if.then202
  br i1 %tobool7.not, label %lor.lhs.false214.cleanup_crit_edge, label %if.end217

lor.lhs.false214.cleanup_crit_edge:               ; preds = %lor.lhs.false214
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end217:                                        ; preds = %lor.lhs.false214
  %mul = mul nuw nsw i32 %height, %width
  %24 = lshr i8 %dst_bpp, 3
  %25 = zext i8 %24 to i32
  %cond226 = select i1 %cmp117334, i32 1, i32 %25
  %mul227 = mul nuw nsw i32 %mul, %cond226
  %add228 = add nuw nsw i32 %mul227, 3
  %shr229 = lshr i32 %add228, 2
  %add.ptr235 = getelementptr i8, ptr %engine, i32 2097152
  br label %do.body232

do.body232:                                       ; preds = %do.body232.do.body232_crit_edge, %if.end217
  %i.0336 = phi i32 [ 0, %if.end217 ], [ %inc, %do.body232.do.body232_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !104
  tail call void @arm_heavy_mb() #4
  %arrayidx = getelementptr i32, ptr %src_mem, i32 %i.0336
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr235, i32 %28) #4, !srcloc !94
  %inc = add nuw nsw i32 %i.0336, 1
  %exitcond.not = icmp eq i32 %inc, %shr229
  br i1 %exitcond.not, label %do.body232.cleanup_crit_edge, label %do.body232.do.body232_crit_edge

do.body232.do.body232_crit_edge:                  ; preds = %do.body232
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body232

do.body232.cleanup_crit_edge:                     ; preds = %do.body232
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %do.body232.cleanup_crit_edge, %lor.lhs.false214.cleanup_crit_edge, %if.then187, %do.end172, %do.end150, %do.end136, %do.end95, %do.end75, %do.end58, %viafb_set_bpp.exit, %do.end35, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end35 ], [ -22, %do.end58 ], [ -22, %do.end75 ], [ -22, %do.end95 ], [ -22, %do.end136 ], [ -22, %do.end150 ], [ -22, %do.end172 ], [ -22, %viafb_set_bpp.exit ], [ 0, %if.then187 ], [ 0, %lor.lhs.false214.cleanup_crit_edge ], [ 0, %do.body232.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_bitblt_2(ptr noundef %engine, i8 noundef zeroext %op, i32 noundef %width, i32 noundef %height, i8 noundef zeroext %dst_bpp, i32 noundef %dst_addr, i32 noundef %dst_pitch, i32 noundef %dst_x, i32 noundef %dst_y, ptr noundef readonly %src_mem, i32 noundef %src_addr, i32 noundef %src_pitch, i32 noundef %src_x, i32 noundef %src_y, i32 noundef %fg_color, i32 noundef %bg_color, i8 noundef zeroext %fill_rop) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i8 %op, -4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -3, i8 %0)
  %1 = icmp ult i8 %0, -3
  br i1 %1, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv3 = zext i8 %op to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %conv3) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %op)
  %cmp5.not = icmp eq i8 %op, 3
  %cmp5.not.not = xor i1 %cmp5.not, true
  %tobool7.not = icmp eq ptr %src_mem, null
  %or.cond324 = and i1 %tobool7.not, %cmp5.not.not
  call void @__sanitizer_cov_trace_cmp4(i32 %src_addr, i32 %dst_addr)
  %cmp9 = icmp eq i32 %src_addr, %dst_addr
  %or.cond325 = and i1 %or.cond324, %cmp9
  br i1 %or.cond325, label %if.then11, label %if.end.if.end27_crit_edge

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %src_x, i32 %dst_x)
  %cmp12 = icmp ult i32 %src_x, %dst_x
  %sub = add i32 %width, -1
  %ge_cmd.0 = select i1 %cmp12, i32 32768, i32 0
  %add = select i1 %cmp12, i32 %sub, i32 0
  %src_x.addr.0 = add i32 %add, %src_x
  %dst_x.addr.0 = add i32 %add, %dst_x
  call void @__sanitizer_cov_trace_cmp4(i32 %src_y, i32 %dst_y)
  %cmp18 = icmp ult i32 %src_y, %dst_y
  br i1 %cmp18, label %if.then20, label %if.then11.if.end27_crit_edge

if.then11.if.end27_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

if.then20:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  %or21 = or i32 %ge_cmd.0, 16384
  %sub22 = add i32 %height, -1
  %add23 = add i32 %sub22, %src_y
  %add25 = add i32 %sub22, %dst_y
  br label %if.end27

if.end27:                                         ; preds = %if.then20, %if.then11.if.end27_crit_edge, %if.end.if.end27_crit_edge
  %ge_cmd.1 = phi i32 [ %or21, %if.then20 ], [ %ge_cmd.0, %if.then11.if.end27_crit_edge ], [ 0, %if.end.if.end27_crit_edge ]
  %src_y.addr.0 = phi i32 [ %add23, %if.then20 ], [ %src_y, %if.then11.if.end27_crit_edge ], [ %src_y, %if.end.if.end27_crit_edge ]
  %src_x.addr.1 = phi i32 [ %src_x.addr.0, %if.then20 ], [ %src_x.addr.0, %if.then11.if.end27_crit_edge ], [ %src_x, %if.end.if.end27_crit_edge ]
  %dst_y.addr.0 = phi i32 [ %add25, %if.then20 ], [ %dst_y, %if.then11.if.end27_crit_edge ], [ %dst_y, %if.end.if.end27_crit_edge ]
  %dst_x.addr.1 = phi i32 [ %dst_x.addr.0, %if.then20 ], [ %dst_x.addr.0, %if.then11.if.end27_crit_edge ], [ %dst_x, %if.end.if.end27_crit_edge ]
  br i1 %cmp5.not, label %if.then31, label %if.end27.if.end39_crit_edge

if.end27.if.end39_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end39

if.then31:                                        ; preds = %if.end27
  %2 = zext i8 %fill_rop to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.54)
  switch i8 %fill_rop, label %do.end35 [
    i8 0, label %if.then31.if.end39_crit_edge
    i8 90, label %if.then31.if.end39_crit_edge340
    i8 -16, label %if.then31.if.end39_crit_edge341
    i8 -1, label %if.then31.if.end39_crit_edge342
  ]

if.then31.if.end39_crit_edge342:                  ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end39

if.then31.if.end39_crit_edge341:                  ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end39

if.then31.if.end39_crit_edge340:                  ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end39

if.then31.if.end39_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end39

do.end35:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #6
  %conv32 = zext i8 %fill_rop to i32
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv32) #7
  br label %cleanup

if.end39:                                         ; preds = %if.then31.if.end39_crit_edge, %if.then31.if.end39_crit_edge340, %if.then31.if.end39_crit_edge341, %if.then31.if.end39_crit_edge342, %if.end27.if.end39_crit_edge
  %add.ptr.i = getelementptr i8, ptr %engine, i32 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !92
  %4 = and i32 %3, -50528257
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #4
  %6 = zext i8 %dst_bpp to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.55)
  switch i8 %dst_bpp, label %viafb_set_bpp.exit [
    i8 8, label %if.end39.if.end43_crit_edge
    i8 16, label %sw.bb2.i
    i8 32, label %sw.bb4.i
  ]

if.end39.if.end43_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end43

sw.bb2.i:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  %or3.i = or i32 %5, 256
  br label %if.end43

sw.bb4.i:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  %or5.i = or i32 %5, 768
  br label %if.end43

viafb_set_bpp.exit:                               ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i = zext i8 %dst_bpp to i32
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %conv.i) #7
  br label %cleanup

if.end43:                                         ; preds = %sw.bb4.i, %sw.bb2.i, %if.end39.if.end43_crit_edge
  %gemode.0.i = phi i32 [ %or5.i, %sw.bb4.i ], [ %or3.i, %sw.bb2.i ], [ %5, %if.end39.if.end43_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !93
  tail call void @arm_heavy_mb() #4
  %7 = tail call i32 @llvm.bswap.i32(i32 %gemode.0.i) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %7) #4, !srcloc !94
  %.src_pitch = select i1 %cmp5.not, i32 0, i32 %src_pitch
  %8 = or i32 %.src_pitch, %dst_pitch
  %9 = and i32 %8, -16377
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %if.end59, label %do.end56

do.end56:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #6
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %.src_pitch, i32 noundef %dst_pitch) #7
  br label %cleanup

if.end59:                                         ; preds = %if.end43
  %shr = lshr i32 %.src_pitch, 3
  %shl = shl nuw nsw i32 %dst_pitch, 13
  %or60 = or i32 %shr, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !105
  tail call void @arm_heavy_mb() #4
  %11 = tail call i32 @llvm.bswap.i32(i32 %or60)
  %add.ptr = getelementptr i8, ptr %engine, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %11) #4, !srcloc !94
  %sub64 = add i32 %width, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub64)
  %tobool66.not = icmp ult i32 %sub64, 4096
  br i1 %tobool66.not, label %lor.lhs.false67, label %if.end59.do.end74_crit_edge

if.end59.do.end74_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end74

lor.lhs.false67:                                  ; preds = %if.end59
  %sub68 = add i32 %height, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub68)
  %tobool70.not = icmp ult i32 %sub68, 4096
  br i1 %tobool70.not, label %if.end77, label %lor.lhs.false67.do.end74_crit_edge

lor.lhs.false67.do.end74_crit_edge:               ; preds = %lor.lhs.false67
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end74

do.end74:                                         ; preds = %lor.lhs.false67.do.end74_crit_edge, %if.end59.do.end74_crit_edge
  %call76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %width, i32 noundef %height) #7
  br label %cleanup

if.end77:                                         ; preds = %lor.lhs.false67
  %shl80 = shl nuw nsw i32 %sub68, 16
  %or81 = or i32 %shl80, %sub64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !106
  tail call void @arm_heavy_mb() #4
  %12 = tail call i32 @llvm.bswap.i32(i32 %or81)
  %add.ptr85 = getelementptr i8, ptr %engine, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr85, i32 %12) #4, !srcloc !94
  %13 = or i32 %dst_x.addr.1, %dst_y.addr.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %13)
  %14 = icmp ult i32 %13, 4096
  br i1 %14, label %if.end97, label %do.end94

do.end94:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #6
  %call96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %dst_x.addr.1, i32 noundef %dst_y.addr.0) #7
  br label %cleanup

if.end97:                                         ; preds = %if.end77
  %shl98 = shl nuw nsw i32 %dst_y.addr.0, 16
  %or99 = or i32 %dst_x.addr.1, %shl98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !107
  tail call void @arm_heavy_mb() #4
  %15 = tail call i32 @llvm.bswap.i32(i32 %or99)
  %add.ptr103 = getelementptr i8, ptr %engine, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr103, i32 %15) #4, !srcloc !94
  %and104 = and i32 %dst_addr, -536870905
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  br i1 %tobool105.not, label %if.end112, label %do.end109

do.end109:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #6
  %call111 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %dst_addr) #7
  br label %cleanup

if.end112:                                        ; preds = %if.end97
  %shr113 = lshr i32 %dst_addr, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !108
  tail call void @arm_heavy_mb() #4
  %16 = tail call i32 @llvm.bswap.i32(i32 %shr113)
  %add.ptr117 = getelementptr i8, ptr %engine, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr117, i32 %16) #4, !srcloc !94
  br i1 %cmp5.not, label %do.body164, label %if.then121

if.then121:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %op)
  %cmp123 = icmp eq i8 %op, 2
  %cond = select i1 %cmp123, i32 -32768, i32 -4096
  %and125 = and i32 %src_x.addr.1, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125)
  %tobool126.not = icmp eq i32 %and125, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %src_y.addr.0)
  %tobool129.not = icmp ult i32 %src_y.addr.0, 4096
  %or.cond328 = and i1 %tobool129.not, %tobool126.not
  br i1 %or.cond328, label %if.else168, label %do.end133

do.end133:                                        ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #6
  %call135 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %src_x.addr.1, i32 noundef %src_y.addr.0) #7
  br label %cleanup

do.body164:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !109
  tail call void @arm_heavy_mb() #4
  %17 = tail call i32 @llvm.bswap.i32(i32 %fg_color)
  %add.ptr167 = getelementptr i8, ptr %engine, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr167, i32 %17) #4, !srcloc !94
  %conv187 = zext i8 %fill_rop to i32
  %shl188 = shl nuw i32 %conv187, 24
  %or190 = or i32 %shl188, 8193
  %or191 = or i32 %ge_cmd.1, %or190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !110
  tail call void @arm_heavy_mb() #4
  %18 = tail call i32 @llvm.bswap.i32(i32 %or191)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %engine, i32 %18) #4, !srcloc !94
  br label %cleanup

if.else168:                                       ; preds = %if.then121
  %shl137 = shl nuw nsw i32 %src_y.addr.0, 16
  %or138 = or i32 %src_x.addr.1, %shl137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !111
  tail call void @arm_heavy_mb() #4
  %19 = tail call i32 @llvm.bswap.i32(i32 %or138)
  %add.ptr142 = getelementptr i8, ptr %engine, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr142, i32 %19) #4, !srcloc !94
  %phi.bo = lshr i32 %src_addr, 3
  %spec.select = select i1 %tobool7.not, i32 %phi.bo, i32 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !112
  tail call void @arm_heavy_mb() #4
  %20 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %add.ptr158 = getelementptr i8, ptr %engine, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr158, i32 %20) #4, !srcloc !94
  br i1 %cmp123, label %if.then201, label %if.else203

if.then201:                                       ; preds = %if.else168
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !113
  tail call void @arm_heavy_mb() #4
  %21 = tail call i32 @llvm.bswap.i32(i32 %fg_color)
  %add.ptr176 = getelementptr i8, ptr %engine, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr176, i32 %21) #4, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !114
  tail call void @arm_heavy_mb() #4
  %22 = tail call i32 @llvm.bswap.i32(i32 %bg_color)
  %add.ptr180 = getelementptr i8, ptr %engine, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr180, i32 %22) #4, !srcloc !94
  %spec.select330336 = select i1 %tobool7.not, i32 -872283902, i32 -872283838
  %or202 = or i32 %spec.select330336, %ge_cmd.1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !110
  tail call void @arm_heavy_mb() #4
  %23 = tail call i32 @llvm.bswap.i32(i32 %or202)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %engine, i32 %23) #4, !srcloc !94
  br label %lor.lhs.false213

if.else203:                                       ; preds = %if.else168
  call void @__sanitizer_cov_trace_pc() #6
  %spec.select330 = select i1 %tobool7.not, i32 -872415231, i32 -872415167
  %or204 = or i32 %spec.select330, %ge_cmd.1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !110
  tail call void @arm_heavy_mb() #4
  %24 = tail call i32 @llvm.bswap.i32(i32 %or204)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %engine, i32 %24) #4, !srcloc !94
  br label %lor.lhs.false213

lor.lhs.false213:                                 ; preds = %if.else203, %if.then201
  br i1 %tobool7.not, label %lor.lhs.false213.cleanup_crit_edge, label %if.end216

lor.lhs.false213.cleanup_crit_edge:               ; preds = %lor.lhs.false213
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end216:                                        ; preds = %lor.lhs.false213
  %mul = mul nuw nsw i32 %height, %width
  %25 = lshr i8 %dst_bpp, 3
  %narrow = select i1 %cmp123, i8 1, i8 %25
  %cond225 = zext i8 %narrow to i32
  %mul226 = mul nuw nsw i32 %mul, %cond225
  %add227 = add nuw nsw i32 %mul226, 3
  %shr228 = lshr i32 %add227, 2
  %add.ptr234 = getelementptr i8, ptr %engine, i32 2097152
  br label %do.body231

do.body231:                                       ; preds = %do.body231.do.body231_crit_edge, %if.end216
  %i.0339 = phi i32 [ 0, %if.end216 ], [ %inc, %do.body231.do.body231_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !115
  tail call void @arm_heavy_mb() #4
  %arrayidx = getelementptr i32, ptr %src_mem, i32 %i.0339
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr234, i32 %28) #4, !srcloc !94
  %inc = add nuw nsw i32 %i.0339, 1
  %exitcond.not = icmp eq i32 %inc, %shr228
  br i1 %exitcond.not, label %do.body231.cleanup_crit_edge, label %do.body231.do.body231_crit_edge

do.body231.do.body231_crit_edge:                  ; preds = %do.body231
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body231

do.body231.cleanup_crit_edge:                     ; preds = %do.body231
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %do.body231.cleanup_crit_edge, %lor.lhs.false213.cleanup_crit_edge, %do.body164, %do.end133, %do.end109, %do.end94, %do.end74, %do.end56, %viafb_set_bpp.exit, %do.end35, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end35 ], [ -22, %do.end56 ], [ -22, %do.end74 ], [ -22, %do.end94 ], [ -22, %do.end109 ], [ -22, %do.end133 ], [ -22, %viafb_set_bpp.exit ], [ 0, %do.body164 ], [ 0, %lor.lhs.false213.cleanup_crit_edge ], [ 0, %do.body231.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @viafb_reset_engine(ptr nocapture noundef readonly %viapar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %shared = getelementptr inbounds %struct.viafb_par, ptr %viapar, i32 0, i32 7
  %0 = ptrtoint ptr %shared to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %shared, align 4
  %vdev = getelementptr inbounds %struct.viafb_shared, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdev, align 4
  %engine_mmio = getelementptr inbounds %struct.viafb_dev, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %engine_mmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %engine_mmio, align 4
  %chip_info = getelementptr inbounds %struct.viafb_shared, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chip_info, align 4
  %twod_engine = getelementptr inbounds %struct.viafb_shared, ptr %1, i32 0, i32 12, i32 2
  %8 = ptrtoint ptr %twod_engine to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %twod_engine, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cond = icmp eq i32 %9, 2
  %. = select i1 %cond, i32 92, i32 64
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %i.0274 = phi i32 [ 0, %entry ], [ %add, %do.body.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !116
  tail call void @arm_heavy_mb() #4
  %add.ptr = getelementptr i8, ptr %5, i32 %i.0274
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #4, !srcloc !94
  %add = add nuw nsw i32 %i.0274, 4
  %cmp.not = icmp ugt i32 %add, %.
  br i1 %cmp.not, label %for.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

for.end:                                          ; preds = %do.body
  %10 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %7, label %do.body18 [
    i32 8, label %for.end.do.body5_crit_edge
    i32 10, label %for.end.do.body5_crit_edge275
    i32 11, label %for.end.do.body5_crit_edge276
    i32 12, label %for.end.do.body5_crit_edge277
    i32 13, label %for.end.do.body5_crit_edge278
  ]

for.end.do.body5_crit_edge278:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body5

for.end.do.body5_crit_edge277:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body5

for.end.do.body5_crit_edge276:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body5

for.end.do.body5_crit_edge275:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body5

for.end.do.body5_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body5

do.body5:                                         ; preds = %for.end.do.body5_crit_edge, %for.end.do.body5_crit_edge275, %for.end.do.body5_crit_edge276, %for.end.do.body5_crit_edge277, %for.end.do.body5_crit_edge278
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !117
  tail call void @arm_heavy_mb() #4
  %add.ptr8 = getelementptr i8, ptr %5, i32 1052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 4096) #4, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !118
  tail call void @arm_heavy_mb() #4
  %add.ptr12 = getelementptr i8, ptr %5, i32 1056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 2664) #4, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !119
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 2) #4, !srcloc !94
  br label %sw.epilog62

do.body18:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !120
  tail call void @arm_heavy_mb() #4
  %add.ptr21 = getelementptr i8, ptr %5, i32 1084
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 4096) #4, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !121
  tail call void @arm_heavy_mb() #4
  %add.ptr25 = getelementptr i8, ptr %5, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 0) #4, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !122
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 70267648) #4, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !123
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 96) #4, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !124
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 97) #4, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !125
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 98) #4, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !126
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 99) #4, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !127
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 100) #4, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !128
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 125) #4, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !129
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 766) #4, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !130
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 0) #4, !srcloc !94
  br label %sw.epilog62

sw.epilog62:                                      ; preds = %do.body18, %do.body5
  %11 = ptrtoint ptr %shared to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %shared, align 4
  %vq_vram_addr = getelementptr inbounds %struct.viafb_shared, ptr %12, i32 0, i32 14
  %13 = ptrtoint ptr %vq_vram_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vq_vram_addr, align 4
  %sub = add i32 %14, 262143
  %and = and i32 %14, 16777215
  %and67 = and i32 %sub, 16777215
  %shr = lshr i32 %14, 24
  %and71 = lshr i32 %sub, 16
  %shr72 = and i32 %and71, 65280
  %or70 = or i32 %shr72, %shr
  %15 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %7, label %do.body108 [
    i32 8, label %sw.epilog62.sw.bb74_crit_edge
    i32 10, label %sw.epilog62.sw.bb74_crit_edge279
    i32 11, label %sw.epilog62.sw.bb74_crit_edge280
    i32 12, label %sw.epilog62.sw.bb74_crit_edge281
    i32 13, label %sw.epilog62.sw.bb74_crit_edge282
  ]

sw.epilog62.sw.bb74_crit_edge282:                 ; preds = %sw.epilog62
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb74

sw.epilog62.sw.bb74_crit_edge281:                 ; preds = %sw.epilog62
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb74

sw.epilog62.sw.bb74_crit_edge280:                 ; preds = %sw.epilog62
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb74

sw.epilog62.sw.bb74_crit_edge279:                 ; preds = %sw.epilog62
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb74

sw.epilog62.sw.bb74_crit_edge:                    ; preds = %sw.epilog62
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb74

sw.bb74:                                          ; preds = %sw.epilog62.sw.bb74_crit_edge, %sw.epilog62.sw.bb74_crit_edge279, %sw.epilog62.sw.bb74_crit_edge280, %sw.epilog62.sw.bb74_crit_edge281, %sw.epilog62.sw.bb74_crit_edge282
  %or75 = or i32 %and, 1879048192
  %or76 = or i32 %and67, 1895825408
  %or77 = or i32 %or70, 1912602624
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !131
  tail call void @arm_heavy_mb() #4
  %add.ptr82 = getelementptr i8, ptr %5, i32 1052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82, i32 4096) #4, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !132
  tail call void @arm_heavy_mb() #4
  %16 = tail call i32 @llvm.bswap.i32(i32 %or77)
  %add.ptr86 = getelementptr i8, ptr %5, i32 1056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr86, i32 %16) #4, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !133
  tail call void @arm_heavy_mb() #4
  %17 = tail call i32 @llvm.bswap.i32(i32 %or75)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr86, i32 %17) #4, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !134
  tail call void @arm_heavy_mb() #4
  %18 = tail call i32 @llvm.bswap.i32(i32 %or76)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr86, i32 %18) #4, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !135
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr86, i32 8388723) #4, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !136
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr86, i32 17838196) #4, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !137
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr86, i32 0) #4, !srcloc !94
  br label %do.body189

do.body108:                                       ; preds = %sw.epilog62
  call void @__sanitizer_cov_trace_pc() #6
  %or73 = or i32 %or70, 1375731712
  %or68 = or i32 %and67, 1358954496
  %or = or i32 %and, 1342177280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !138
  tail call void @arm_heavy_mb() #4
  %add.ptr111 = getelementptr i8, ptr %5, i32 1084
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr111, i32 65024) #4, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !139
  tail call void @arm_heavy_mb() #4
  %add.ptr115 = getelementptr i8, ptr %5, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr115, i32 -33357816) #4, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !140
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr115, i32 2080505866) #4, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !141
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr115, i32 1610743819) #4, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !142
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr115, i32 1946288140) #4, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !143
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr115, i32 1677852685) #4, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !144
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr115, i32 14) #4, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !145
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr115, i32 536870927) #4, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !146
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr115, i32 2114060304) #4, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !147
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr115, i32 -33423343) #4, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !148
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr115, i32 1610616608) #4, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !149
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr115, i32 100663296) #4, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !150
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr115, i32 260833344) #4, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !151
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr115, i32 68) #4, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !152
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr115, i32 67897413) #4, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !153
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr115, i32 134512710) #4, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !154
  tail call void @arm_heavy_mb() #4
  %19 = tail call i32 @llvm.bswap.i32(i32 %or73)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr115, i32 %19) #4, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !155
  tail call void @arm_heavy_mb() #4
  %20 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr115, i32 %20) #4, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !156
  tail call void @arm_heavy_mb() #4
  %21 = tail call i32 @llvm.bswap.i32(i32 %or68)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr115, i32 %21) #4, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !157
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr115, i32 8388691) #4, !srcloc !94
  br label %do.body189

do.body189:                                       ; preds = %do.body108, %sw.bb74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !158
  tail call void @arm_heavy_mb() #4
  %22 = ptrtoint ptr %shared to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %shared, align 4
  %cursor_vram_addr = getelementptr inbounds %struct.viafb_shared, ptr %23, i32 0, i32 13
  %24 = ptrtoint ptr %cursor_vram_addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cursor_vram_addr, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %add.ptr193 = getelementptr i8, ptr %5, i32 720
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr193, i32 %26) #4, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !159
  tail call void @arm_heavy_mb() #4
  %add.ptr197 = getelementptr i8, ptr %5, i32 724
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr197, i32 0) #4, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !160
  tail call void @arm_heavy_mb() #4
  %add.ptr201 = getelementptr i8, ptr %5, i32 728
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr201, i32 0) #4, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !161
  tail call void @arm_heavy_mb() #4
  %add.ptr205 = getelementptr i8, ptr %5, i32 732
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr205, i32 0) #4, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !162
  tail call void @arm_heavy_mb() #4
  %add.ptr209 = getelementptr i8, ptr %5, i32 736
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr209, i32 0) #4, !srcloc !94
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @viafb_show_hw_cursor(ptr nocapture noundef readonly %info, i32 noundef %Status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %iga_path1 = getelementptr inbounds %struct.viafb_par, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %iga_path1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iga_path1, align 4
  %shared = getelementptr inbounds %struct.viafb_par, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %shared to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %shared, align 4
  %vdev = getelementptr inbounds %struct.viafb_shared, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vdev, align 4
  %engine_mmio = getelementptr inbounds %struct.viafb_dev, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %engine_mmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %engine_mmio, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 720
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !91
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !163
  %12 = zext i32 %Status to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %Status, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %or = or i32 %11, 1
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %and = and i32 %11, -2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb, %entry.sw.epilog_crit_edge
  %temp.0 = phi i32 [ %11, %entry.sw.epilog_crit_edge ], [ %and, %sw.bb3 ], [ %or, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cond = icmp eq i32 %3, 2
  %and7 = and i32 %temp.0, 2147483647
  %masksel = select i1 %cond, i32 -2147483648, i32 0
  %temp.1 = or i32 %and7, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !164
  tail call void @arm_heavy_mb() #4
  %13 = tail call i32 @llvm.bswap.i32(i32 %temp.1)
  %14 = ptrtoint ptr %shared to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %shared, align 4
  %vdev10 = getelementptr inbounds %struct.viafb_shared, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %vdev10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vdev10, align 4
  %engine_mmio11 = getelementptr inbounds %struct.viafb_dev, ptr %17, i32 0, i32 11
  %18 = ptrtoint ptr %engine_mmio11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %engine_mmio11, align 4
  %add.ptr12 = getelementptr i8, ptr %19, i32 720
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %13) #4, !srcloc !94
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @viafb_wait_engine_idle(ptr nocapture noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %shared = getelementptr inbounds %struct.viafb_par, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %shared to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shared, align 4
  %vdev = getelementptr inbounds %struct.viafb_shared, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdev, align 4
  %engine_mmio = getelementptr inbounds %struct.viafb_dev, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %engine_mmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %engine_mmio, align 4
  %twod_engine = getelementptr inbounds %struct.viafb_shared, ptr %3, i32 0, i32 12, i32 2
  %8 = ptrtoint ptr %twod_engine to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %twod_engine, align 4
  %.off = add i32 %9, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %entry.sw.epilog_crit_edge, label %while.cond.preheader

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

while.cond.preheader:                             ; preds = %entry
  %add.ptr = getelementptr i8, ptr %7, i32 1024
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !165
  %11 = and i32 %10, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not46 = icmp eq i32 %11, 0
  br i1 %tobool.not46, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.sw.epilog_crit_edge

while.cond.preheader.sw.epilog_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %loop.047 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  %inc = add nuw nsw i32 %loop.047, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !166
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #4, !srcloc !167
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !165
  %13 = and i32 %12, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777214, i32 %loop.047)
  %cmp = icmp ult i32 %loop.047, 16777214
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %while.body.while.body_crit_edge, label %while.body.sw.epilog_crit_edge

while.body.sw.epilog_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

sw.epilog:                                        ; preds = %while.body.sw.epilog_crit_edge, %while.cond.preheader.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %mask.0 = phi i32 [ 8179, %entry.sw.epilog_crit_edge ], [ 131, %while.cond.preheader.sw.epilog_crit_edge ], [ 131, %while.body.sw.epilog_crit_edge ]
  %loop.1 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ 0, %while.cond.preheader.sw.epilog_crit_edge ], [ %inc, %while.body.sw.epilog_crit_edge ]
  %add.ptr12 = getelementptr i8, ptr %7, i32 1024
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #4, !srcloc !91
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !168
  %and1648 = and i32 %15, %mask.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1648)
  %tobool17.not49 = icmp ne i32 %and1648, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %loop.1)
  %cmp1950 = icmp ult i32 %loop.1, 16777215
  %or.cond4551 = select i1 %tobool17.not49, i1 %cmp1950, i1 false
  br i1 %or.cond4551, label %sw.epilog.while.body21_crit_edge, label %sw.epilog.while.end32_crit_edge

sw.epilog.while.end32_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end32

sw.epilog.while.body21_crit_edge:                 ; preds = %sw.epilog
  br label %while.body21

while.body21:                                     ; preds = %while.body21.while.body21_crit_edge, %sw.epilog.while.body21_crit_edge
  %loop.252 = phi i32 [ %inc22, %while.body21.while.body21_crit_edge ], [ %loop.1, %sw.epilog.while.body21_crit_edge ]
  %inc22 = add nuw nsw i32 %loop.252, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !169
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #4, !srcloc !170
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #4, !srcloc !91
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !168
  %and16 = and i32 %17, %mask.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp ne i32 %and16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777214, i32 %loop.252)
  %cmp19 = icmp ult i32 %loop.252, 16777214
  %or.cond45 = select i1 %tobool17.not, i1 %cmp19, i1 false
  br i1 %or.cond45, label %while.body21.while.body21_crit_edge, label %while.body21.while.end32_crit_edge

while.body21.while.end32_crit_edge:               ; preds = %while.body21
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end32

while.body21.while.body21_crit_edge:              ; preds = %while.body21
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body21

while.end32:                                      ; preds = %while.body21.while.end32_crit_edge, %sw.epilog.while.end32_crit_edge
  %loop.2.lcssa = phi i32 [ %loop.1, %sw.epilog.while.end32_crit_edge ], [ %inc22, %while.body21.while.end32_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777214, i32 %loop.2.lcssa)
  %cmp33 = icmp ugt i32 %loop.2.lcssa, 16777214
  br i1 %cmp33, label %do.end36, label %while.end32.if.end_crit_edge

while.end32.if.end_crit_edge:                     ; preds = %while.end32
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end36:                                         ; preds = %while.end32
  call void @__sanitizer_cov_trace_pc() #6
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #7
  br label %if.end

if.end:                                           ; preds = %do.end36, %while.end32.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81}
!llvm.module.flags = !{!82, !83, !84, !85, !86, !87, !88, !89}
!llvm.ident = !{!90}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/via/accel.c", i32 312, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @viafb_setup_engine._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @viafb_setup_engine._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/via/accel.c", i32 532, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @viafb_wait_engine_idle._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @viafb_wait_engine_idle._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/video/fbdev/via/accel.c", i32 48, i32 3}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @hw_bitblt_1._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @hw_bitblt_1._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/video/fbdev/via/accel.c", i32 73, i32 4}
!18 = !{ptr @hw_bitblt_1._entry.7, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @hw_bitblt_1._entry_ptr.9, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/video/fbdev/via/accel.c", i32 86, i32 4}
!22 = !{ptr @hw_bitblt_1._entry.10, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @hw_bitblt_1._entry_ptr.12, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/video/fbdev/via/accel.c", i32 95, i32 3}
!26 = !{ptr @hw_bitblt_1._entry.13, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @hw_bitblt_1._entry_ptr.15, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/video/fbdev/via/accel.c", i32 103, i32 3}
!30 = !{ptr @hw_bitblt_1._entry.16, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @hw_bitblt_1._entry_ptr.18, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/video/fbdev/via/accel.c", i32 119, i32 4}
!34 = !{ptr @hw_bitblt_1._entry.19, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @hw_bitblt_1._entry_ptr.21, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.23, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/video/fbdev/via/accel.c", i32 128, i32 3}
!38 = !{ptr @hw_bitblt_1._entry.22, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @hw_bitblt_1._entry_ptr.24, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.26, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/video/fbdev/via/accel.c", i32 140, i32 3}
!42 = !{ptr @hw_bitblt_1._entry.25, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @hw_bitblt_1._entry_ptr.27, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.28, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/video/fbdev/via/accel.c", i32 31, i32 3}
!46 = !{ptr @.str.29, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @viafb_set_bpp._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @viafb_set_bpp._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.30, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/video/fbdev/via/accel.c", i32 181, i32 3}
!51 = !{ptr @.str.31, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @hw_bitblt_2._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @hw_bitblt_2._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.33, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/video/fbdev/via/accel.c", i32 206, i32 4}
!56 = !{ptr @hw_bitblt_2._entry.32, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @hw_bitblt_2._entry_ptr.34, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.36, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/video/fbdev/via/accel.c", i32 221, i32 3}
!60 = !{ptr @hw_bitblt_2._entry.35, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @hw_bitblt_2._entry_ptr.37, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.39, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/video/fbdev/via/accel.c", i32 229, i32 3}
!64 = !{ptr @hw_bitblt_2._entry.38, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @hw_bitblt_2._entry_ptr.40, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.42, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/video/fbdev/via/accel.c", i32 237, i32 3}
!68 = !{ptr @hw_bitblt_2._entry.41, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @hw_bitblt_2._entry_ptr.43, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.45, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/video/fbdev/via/accel.c", i32 245, i32 3}
!72 = !{ptr @hw_bitblt_2._entry.44, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @hw_bitblt_2._entry_ptr.46, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.48, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/video/fbdev/via/accel.c", i32 255, i32 4}
!76 = !{ptr @hw_bitblt_2._entry.47, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @hw_bitblt_2._entry_ptr.49, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.51, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/video/fbdev/via/accel.c", i32 264, i32 4}
!80 = !{ptr @hw_bitblt_2._entry.50, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @hw_bitblt_2._entry_ptr.52, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{i32 1, !"wchar_size", i32 2}
!83 = !{i32 1, !"min_enum_size", i32 4}
!84 = !{i32 8, !"branch-target-enforcement", i32 0}
!85 = !{i32 8, !"sign-return-address", i32 0}
!86 = !{i32 8, !"sign-return-address-all", i32 0}
!87 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!88 = !{i32 7, !"uwtable", i32 1}
!89 = !{i32 7, !"frame-pointer", i32 2}
!90 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!91 = !{i64 704334}
!92 = !{i64 2156302445}
!93 = !{i64 2156304190}
!94 = !{i64 703916}
!95 = !{i64 2156309229}
!96 = !{i64 2156311234}
!97 = !{i64 2156317285}
!98 = !{i64 2156317673}
!99 = !{i64 2156318076}
!100 = !{i64 2156320063}
!101 = !{i64 2156322067}
!102 = !{i64 2156323994}
!103 = !{i64 2156324375}
!104 = !{i64 2156324782}
!105 = !{i64 2156329769}
!106 = !{i64 2156331759}
!107 = !{i64 2156333765}
!108 = !{i64 2156335769}
!109 = !{i64 2156340113}
!110 = !{i64 2156341313}
!111 = !{i64 2156337755}
!112 = !{i64 2156339725}
!113 = !{i64 2156340516}
!114 = !{i64 2156340917}
!115 = !{i64 2156341720}
!116 = !{i64 2156344468}
!117 = !{i64 2156344874}
!118 = !{i64 2156345291}
!119 = !{i64 2156345708}
!120 = !{i64 2156346125}
!121 = !{i64 2156346542}
!122 = !{i64 2156346959}
!123 = !{i64 2156347376}
!124 = !{i64 2156347793}
!125 = !{i64 2156348210}
!126 = !{i64 2156348627}
!127 = !{i64 2156349044}
!128 = !{i64 2156349461}
!129 = !{i64 2156349878}
!130 = !{i64 2156350295}
!131 = !{i64 2156350752}
!132 = !{i64 2156351166}
!133 = !{i64 2156351576}
!134 = !{i64 2156351999}
!135 = !{i64 2156352412}
!136 = !{i64 2156352817}
!137 = !{i64 2156353234}
!138 = !{i64 2156353651}
!139 = !{i64 2156354068}
!140 = !{i64 2156354485}
!141 = !{i64 2156354902}
!142 = !{i64 2156355319}
!143 = !{i64 2156355736}
!144 = !{i64 2156356153}
!145 = !{i64 2156356570}
!146 = !{i64 2156356987}
!147 = !{i64 2156357404}
!148 = !{i64 2156357821}
!149 = !{i64 2156358238}
!150 = !{i64 2156358655}
!151 = !{i64 2156359072}
!152 = !{i64 2156359489}
!153 = !{i64 2156359906}
!154 = !{i64 2156360320}
!155 = !{i64 2156360730}
!156 = !{i64 2156361153}
!157 = !{i64 2156361566}
!158 = !{i64 2156361993}
!159 = !{i64 2156362469}
!160 = !{i64 2156362858}
!161 = !{i64 2156363247}
!162 = !{i64 2156363636}
!163 = !{i64 2156364396}
!164 = !{i64 2156364649}
!165 = !{i64 2156365364}
!166 = !{i64 2156365659}
!167 = !{i64 2156365501}
!168 = !{i64 2156366172}
!169 = !{i64 2156366456}
!170 = !{i64 2156366298}
