; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/therm/base.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/therm/base.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_subdev_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nvkm_therm_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_therm = type { ptr, %struct.nvkm_subdev, %struct.nvkm_alarm, %struct.spinlock, ptr, i32, i32, i32, %struct.nvbios_therm_sensor, ptr, %struct.anon.133, %struct.anon.134, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_alarm = type { %struct.list_head, %struct.list_head, i64, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvbios_therm_sensor = type { i16, i16, i16, i16, i8, %struct.nvbios_therm_threshold, %struct.nvbios_therm_threshold, %struct.nvbios_therm_threshold, %struct.nvbios_therm_threshold }
%struct.nvbios_therm_threshold = type { i8, i8 }
%struct.anon.133 = type { %struct.spinlock, %struct.nvkm_alarm, [4 x i32] }
%struct.anon.134 = type { ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.132, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.132 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_fan = type { ptr, ptr, %struct.nvbios_therm_fan, %struct.nvbios_perf_fan, %struct.nvkm_alarm, %struct.spinlock, i32, ptr, ptr, %struct.dcb_gpio_func }
%struct.nvbios_therm_fan = type { i32, i32, i8, i8, i16, i16, i32, [10 x %struct.nvbios_therm_trip_point], i8, i8, i8 }
%struct.nvbios_therm_trip_point = type { i32, i32, i32 }
%struct.nvbios_perf_fan = type { i32 }
%struct.dcb_gpio_func = type { i8, i8, [2 x i8], i8 }

@nvkm_therm_cstate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 169, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: default fan speed -> %d%%\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nvkm_therm_cstate\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/therm/base.c\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nvkm_therm_cstate._entry_ptr = internal global ptr @nvkm_therm_cstate._entry, section ".printk_index", align 4
@nvkm_therm_fan_mode.name = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.5, ptr @.str.6, ptr @.str.7], [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"manual\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"automatic\00", [22 x i8] zeroinitializer }, align 32
@nvkm_therm_fan_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 209, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: fan management: %s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nvkm_therm_fan_mode\00", [44 x i8] zeroinitializer }, align 32
@nvkm_therm_fan_mode._entry_ptr = internal global ptr @nvkm_therm_fan_mode._entry, section ".printk_index", align 4
@nvkm_therm_clkgate_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 310, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: Enabling clockgating\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nvkm_therm_clkgate_enable\00", [38 x i8] zeroinitializer }, align 32
@nvkm_therm_clkgate_enable._entry_ptr = internal global ptr @nvkm_therm_clkgate_enable._entry, section ".printk_index", align 4
@nvkm_therm_clkgate_fini._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 322, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Preparing clockgating for %s\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nvkm_therm_clkgate_fini\00", [40 x i8] zeroinitializer }, align 32
@nvkm_therm_clkgate_fini._entry_ptr = internal global ptr @nvkm_therm_clkgate_fini._entry, section ".printk_index", align 4
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"suspend\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fini\00", [27 x i8] zeroinitializer }, align 32
@nvkm_therm = internal constant { %struct.nvkm_subdev_func, [36 x i8] } { %struct.nvkm_subdev_func { ptr @nvkm_therm_dtor, ptr null, ptr @nvkm_therm_oneinit, ptr null, ptr @nvkm_therm_init, ptr @nvkm_therm_fini, ptr @nvkm_therm_intr }, [36 x i8] zeroinitializer }, align 32
@nvkm_therm_ctor.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&therm->lock\00", [19 x i8] zeroinitializer }, align 32
@nvkm_therm_ctor.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"&therm->sensor.alarm_program_lock\00", [62 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"NvPmEnableGating\00", [47 x i8] zeroinitializer }, align 32
@nvkm_therm_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 158, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: FAN target request: %d%%\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nvkm_therm_update\00", [46 x i8] zeroinitializer }, align 32
@nvkm_therm_update._entry_ptr = internal global ptr @nvkm_therm_update._entry, section ".printk_index", align 4
@nvkm_therm_clkgate_oneinit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 332, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: Clockgating enabled\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nvkm_therm_clkgate_oneinit\00", [37 x i8] zeroinitializer }, align 32
@nvkm_therm_clkgate_oneinit._entry_ptr = internal global ptr @nvkm_therm_clkgate_oneinit._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.24 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.25 = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 1, i64 2, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17]
@__sancov_gen_cov_switch_values.26 = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 1, i64 2, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17]
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 169, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 189, i32 21 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 190, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 191, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 192, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 209, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 309, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 320, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant [11 x i8] c"nvkm_therm\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 415, i32 1 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 431, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 432, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 441, i32 7 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 158, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.124 = private constant [52 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/therm/base.c\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 332, i32 2 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @nvkm_therm_clkgate_enable._entry, ptr @nvkm_therm_clkgate_enable._entry_ptr, ptr @nvkm_therm_clkgate_fini._entry, ptr @nvkm_therm_clkgate_fini._entry_ptr, ptr @nvkm_therm_clkgate_oneinit._entry, ptr @nvkm_therm_clkgate_oneinit._entry_ptr, ptr @nvkm_therm_cstate._entry, ptr @nvkm_therm_cstate._entry_ptr, ptr @nvkm_therm_fan_mode._entry, ptr @nvkm_therm_fan_mode._entry_ptr, ptr @nvkm_therm_update._entry, ptr @nvkm_therm_update._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @nvkm_therm_fan_mode.name, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @nvkm_therm, ptr @nvkm_therm_ctor.__key, ptr @.str.16, ptr @nvkm_therm_ctor.__key.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_therm_cstate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_therm_fan_mode.name to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_therm_fan_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_therm_clkgate_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_therm_clkgate_fini._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_therm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_therm_ctor.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_therm_ctor.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_therm_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_therm_clkgate_oneinit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_therm_temp_get(ptr noundef %therm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %therm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %therm, align 8
  %temp_get = getelementptr inbounds %struct.nvkm_therm_func, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %temp_get to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %temp_get, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 %3(ptr noundef %therm) #6
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_therm_cstate(ptr noundef %therm, i32 noundef %fan, i32 noundef %dir) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %tobool.not = icmp eq i32 %dir, 0
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %lor.lhs.false

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %cmp = icmp slt i32 %dir, 0
  %cstate = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 6
  %0 = ptrtoint ptr %cstate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cstate, align 4
  br i1 %cmp, label %land.lhs.true, label %land.lhs.true5

land.lhs.true:                                    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %fan)
  %cmp2 = icmp sgt i32 %1, %fan
  br i1 %cmp2, label %land.lhs.true.do.body_crit_edge, label %land.lhs.true.if.end14_crit_edge

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

land.lhs.true5:                                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %fan)
  %cmp7 = icmp slt i32 %1, %fan
  br i1 %cmp7, label %land.lhs.true5.do.body_crit_edge, label %land.lhs.true5.if.end14_crit_edge

land.lhs.true5.if.end14_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

land.lhs.true5.do.body_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %land.lhs.true5.do.body_crit_edge, %land.lhs.true.do.body_crit_edge, %entry.do.body_crit_edge
  %debug = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 1, i32 5
  %2 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp8 = icmp ugt i32 %3, 3
  br i1 %cmp8, label %do.end, label %do.body.if.end_crit_edge

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %device = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %fan) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body.if.end_crit_edge
  %cstate13 = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 6
  %8 = ptrtoint ptr %cstate13 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %fan, ptr %cstate13, align 4
  tail call fastcc void @nvkm_therm_update(ptr noundef %therm, i32 noundef -1)
  br label %if.end14

if.end14:                                         ; preds = %if.end, %land.lhs.true5.if.end14_crit_edge, %land.lhs.true.if.end14_crit_edge
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvkm_therm_update(ptr noundef %therm, i32 noundef %mode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %timer = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %timer, align 8
  %lock = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp6 = icmp slt i32 %mode, 0
  br i1 %cmp6, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mode8 = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 5
  %4 = ptrtoint ptr %mode8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode8, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mode.addr.0 = phi i32 [ %5, %if.then ], [ %mode, %entry.if.end_crit_edge ]
  %mode9 = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 5
  %6 = ptrtoint ptr %mode9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %mode.addr.0, ptr %mode9, align 8
  %7 = zext i32 %mode.addr.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mode.addr.0, label %if.end31.thread115 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb15
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %alarm = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 2
  tail call void @nvkm_timer_alarm(ptr noundef %3, i32 noundef 0, ptr noundef %alarm) #6
  %call10 = tail call i32 @nvkm_therm_fan_get(ptr noundef %therm) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  %spec.select = select i1 %cmp11, i32 100, i32 %call10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #6
  br label %do.body36

sw.bb15:                                          ; preds = %if.end
  %fan = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 9
  %8 = ptrtoint ptr %fan to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fan, align 8
  %fan_mode = getelementptr inbounds %struct.nvkm_fan, ptr %9, i32 0, i32 2, i32 6
  %10 = ptrtoint ptr %fan_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fan_mode, align 8
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %11, label %sw.bb15.if.then29_crit_edge [
    i32 0, label %sw.bb16
    i32 1, label %sw.bb18
    i32 2, label %sw.bb20
  ]

sw.bb15.if.then29_crit_edge:                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then29

sw.bb16:                                          ; preds = %sw.bb15
  %trip1.i = getelementptr inbounds %struct.nvkm_fan, ptr %9, i32 0, i32 2, i32 7
  %last_trip2.i = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 4
  %13 = ptrtoint ptr %last_trip2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %last_trip2.i, align 4
  %15 = ptrtoint ptr %therm to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %therm, align 8
  %temp_get.i = getelementptr inbounds %struct.nvkm_therm_func, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %temp_get.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %temp_get.i, align 4
  %call.i = tail call i32 %18(ptr noundef %therm) #6
  %19 = ptrtoint ptr %fan to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fan, align 8
  %nr_fan_trip.i = getelementptr inbounds %struct.nvkm_fan, ptr %20, i32 0, i32 2, i32 8
  %21 = ptrtoint ptr %nr_fan_trip.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %nr_fan_trip.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp55.not.i = icmp eq i8 %22, 0
  br i1 %cmp55.not.i, label %sw.bb16.for.end.i_crit_edge, label %for.body.lr.ph.i

sw.bb16.for.end.i_crit_edge:                      ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %sw.bb16
  %conv8.i = and i32 %call.i, 255
  %wide.trip.count.i = zext i8 %22 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %indvars.iv.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ]
  %cur_trip.056.i = phi ptr [ null, %for.body.lr.ph.i ], [ %spec.select.i, %for.body.i.for.body.i_crit_edge ]
  %temp9.i = getelementptr %struct.nvbios_therm_trip_point, ptr %trip1.i, i32 %indvars.iv.i, i32 1
  %23 = ptrtoint ptr %temp9.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %temp9.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv8.i, i32 %24)
  %cmp10.not.i = icmp slt i32 %conv8.i, %24
  %arrayidx.i = getelementptr %struct.nvbios_therm_trip_point, ptr %trip1.i, i32 %indvars.iv.i
  %spec.select.i = select i1 %cmp10.not.i, ptr %cur_trip.056.i, ptr %arrayidx.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %sw.bb16.for.end.i_crit_edge
  %cur_trip.0.lcssa.i = phi ptr [ null, %sw.bb16.for.end.i_crit_edge ], [ %spec.select.i, %for.body.i.for.end.i_crit_edge ]
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %for.end.i.if.end24.i_crit_edge, label %land.lhs.true.i

for.end.i.if.end24.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24.i

land.lhs.true.i:                                  ; preds = %for.end.i
  %conv14.i = and i32 %call.i, 255
  %temp15.i = getelementptr inbounds %struct.nvbios_therm_trip_point, ptr %14, i32 0, i32 1
  %25 = ptrtoint ptr %temp15.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %temp15.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv14.i, i32 %26)
  %cmp16.not.i = icmp sgt i32 %conv14.i, %26
  br i1 %cmp16.not.i, label %land.lhs.true.i.if.end24.i_crit_edge, label %land.lhs.true18.i

land.lhs.true.i.if.end24.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24.i

land.lhs.true18.i:                                ; preds = %land.lhs.true.i
  %hysteresis.i = getelementptr inbounds %struct.nvbios_therm_trip_point, ptr %14, i32 0, i32 2
  %27 = ptrtoint ptr %hysteresis.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %hysteresis.i, align 4
  %sub.i = sub i32 %26, %28
  call void @__sanitizer_cov_trace_cmp4(i32 %conv14.i, i32 %sub.i)
  %cmp21.i = icmp sgt i32 %conv14.i, %sub.i
  br i1 %cmp21.i, label %land.lhs.true18.i.if.then26.i_crit_edge, label %land.lhs.true18.i.if.end24.i_crit_edge

land.lhs.true18.i.if.end24.i_crit_edge:           ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24.i

land.lhs.true18.i.if.then26.i_crit_edge:          ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26.i

if.end24.i:                                       ; preds = %land.lhs.true18.i.if.end24.i_crit_edge, %land.lhs.true.i.if.end24.i_crit_edge, %for.end.i.if.end24.i_crit_edge
  %tobool25.not.i = icmp eq ptr %cur_trip.0.lcssa.i, null
  br i1 %tobool25.not.i, label %if.end24.i.nvkm_therm_update_trip.exit_crit_edge, label %if.end24.i.if.then26.i_crit_edge

if.end24.i.if.then26.i_crit_edge:                 ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26.i

if.end24.i.nvkm_therm_update_trip.exit_crit_edge: ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvkm_therm_update_trip.exit

if.then26.i:                                      ; preds = %if.end24.i.if.then26.i_crit_edge, %land.lhs.true18.i.if.then26.i_crit_edge
  %cur_trip.254.i = phi ptr [ %cur_trip.0.lcssa.i, %if.end24.i.if.then26.i_crit_edge ], [ %14, %land.lhs.true18.i.if.then26.i_crit_edge ]
  %29 = ptrtoint ptr %cur_trip.254.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cur_trip.254.i, align 4
  %phi.cast.i = and i32 %30, 65535
  br label %nvkm_therm_update_trip.exit

nvkm_therm_update_trip.exit:                      ; preds = %if.then26.i, %if.end24.i.nvkm_therm_update_trip.exit_crit_edge
  %storemerge.i = phi ptr [ %cur_trip.254.i, %if.then26.i ], [ null, %if.end24.i.nvkm_therm_update_trip.exit_crit_edge ]
  %duty.0.i = phi i32 [ %phi.cast.i, %if.then26.i ], [ 0, %if.end24.i.nvkm_therm_update_trip.exit_crit_edge ]
  %31 = ptrtoint ptr %last_trip2.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %storemerge.i, ptr %last_trip2.i, align 4
  br label %if.then29

sw.bb18:                                          ; preds = %sw.bb15
  %linear_min_temp.i = getelementptr inbounds %struct.nvkm_fan, ptr %9, i32 0, i32 2, i32 9
  %32 = ptrtoint ptr %linear_min_temp.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %linear_min_temp.i, align 1
  %linear_max_temp.i = getelementptr inbounds %struct.nvkm_fan, ptr %9, i32 0, i32 2, i32 10
  %34 = ptrtoint ptr %linear_max_temp.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %linear_max_temp.i, align 2
  %36 = ptrtoint ptr %therm to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %therm, align 8
  %temp_get.i.i = getelementptr inbounds %struct.nvkm_therm_func, ptr %37, i32 0, i32 7
  %38 = ptrtoint ptr %temp_get.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %temp_get.i.i, align 4
  %call.i.i = tail call i32 %39(ptr noundef %therm) #6
  %conv1.i.i = and i32 %call.i.i, 255
  %conv2.i.i = zext i8 %33 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i.i, i32 %conv2.i.i)
  %cmp.i.i = icmp ult i32 %conv1.i.i, %conv2.i.i
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %fan to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fan, align 8
  %min_duty.i.i = getelementptr inbounds %struct.nvkm_fan, ptr %41, i32 0, i32 2, i32 2
  %42 = ptrtoint ptr %min_duty.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %min_duty.i.i, align 8
  %conv4.i.i = zext i8 %43 to i32
  br label %if.then29

if.else.i.i:                                      ; preds = %sw.bb18
  %conv6.i.i = zext i8 %35 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i.i, i32 %conv6.i.i)
  %cmp7.i.i = icmp ugt i32 %conv1.i.i, %conv6.i.i
  br i1 %cmp7.i.i, label %if.then9.i.i, label %if.end13.i.i

if.then9.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %fan to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fan, align 8
  %max_duty.i.i = getelementptr inbounds %struct.nvkm_fan, ptr %45, i32 0, i32 2, i32 3
  %46 = ptrtoint ptr %max_duty.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %max_duty.i.i, align 1
  %conv12.i.i = zext i8 %47 to i32
  br label %if.then29

if.end13.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i = sub nsw i32 %conv1.i.i, %conv2.i.i
  %48 = ptrtoint ptr %fan to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fan, align 8
  %max_duty19.i.i = getelementptr inbounds %struct.nvkm_fan, ptr %49, i32 0, i32 2, i32 3
  %50 = ptrtoint ptr %max_duty19.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %max_duty19.i.i, align 1
  %conv20.i.i = zext i8 %51 to i32
  %min_duty23.i.i = getelementptr inbounds %struct.nvkm_fan, ptr %49, i32 0, i32 2, i32 2
  %52 = ptrtoint ptr %min_duty23.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %min_duty23.i.i, align 8
  %conv24.i.i = zext i8 %53 to i32
  %sub25.i.i = sub nsw i32 %conv20.i.i, %conv24.i.i
  %mul.i.i = mul nsw i32 %sub25.i.i, %sub.i.i
  %sub30.i.i = sub nsw i32 %conv6.i.i, %conv2.i.i
  %conv31.i.i = and i32 %mul.i.i, 65535
  %div.i.i = sdiv i32 %conv31.i.i, %sub30.i.i
  %add.i.i = add nsw i32 %div.i.i, %conv24.i.i
  %conv39.i.i = and i32 %add.i.i, 65535
  br label %if.then29

sw.bb20:                                          ; preds = %sw.bb15
  %cstate = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 6
  %54 = ptrtoint ptr %cstate to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cstate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not = icmp eq i32 %55, 0
  br i1 %tobool.not, label %if.else, label %sw.bb20.if.end31_crit_edge

sw.bb20.if.end31_crit_edge:                       ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.else:                                          ; preds = %sw.bb20
  %thrs_fan_boost.i = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 8, i32 5
  %56 = ptrtoint ptr %thrs_fan_boost.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %thrs_fan_boost.i, align 1
  %58 = ptrtoint ptr %therm to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %therm, align 8
  %temp_get.i.i76 = getelementptr inbounds %struct.nvkm_therm_func, ptr %59, i32 0, i32 7
  %60 = ptrtoint ptr %temp_get.i.i76 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %temp_get.i.i76, align 4
  %call.i.i77 = tail call i32 %61(ptr noundef %therm) #6
  %conv1.i.i78 = and i32 %call.i.i77, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %conv1.i.i78)
  %cmp.i.i79 = icmp ult i32 %conv1.i.i78, 30
  br i1 %cmp.i.i79, label %if.then.i.i82, label %if.else.i.i85

if.then.i.i82:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %62 = ptrtoint ptr %fan to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %fan, align 8
  %min_duty.i.i80 = getelementptr inbounds %struct.nvkm_fan, ptr %63, i32 0, i32 2, i32 2
  %64 = ptrtoint ptr %min_duty.i.i80 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %min_duty.i.i80, align 8
  %conv4.i.i81 = zext i8 %65 to i32
  br label %if.then29

if.else.i.i85:                                    ; preds = %if.else
  %conv6.i.i83 = zext i8 %57 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i.i78, i32 %conv6.i.i83)
  %cmp7.i.i84 = icmp ugt i32 %conv1.i.i78, %conv6.i.i83
  br i1 %cmp7.i.i84, label %if.then9.i.i88, label %if.end13.i.i101

if.then9.i.i88:                                   ; preds = %if.else.i.i85
  call void @__sanitizer_cov_trace_pc() #8
  %66 = ptrtoint ptr %fan to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %fan, align 8
  %max_duty.i.i86 = getelementptr inbounds %struct.nvkm_fan, ptr %67, i32 0, i32 2, i32 3
  %68 = ptrtoint ptr %max_duty.i.i86 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %max_duty.i.i86, align 1
  %conv12.i.i87 = zext i8 %69 to i32
  br label %if.then29

if.end13.i.i101:                                  ; preds = %if.else.i.i85
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i89 = add nuw nsw i32 %conv1.i.i78, 65506
  %70 = ptrtoint ptr %fan to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %fan, align 8
  %max_duty19.i.i90 = getelementptr inbounds %struct.nvkm_fan, ptr %71, i32 0, i32 2, i32 3
  %72 = ptrtoint ptr %max_duty19.i.i90 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %max_duty19.i.i90, align 1
  %conv20.i.i91 = zext i8 %73 to i32
  %min_duty23.i.i92 = getelementptr inbounds %struct.nvkm_fan, ptr %71, i32 0, i32 2, i32 2
  %74 = ptrtoint ptr %min_duty23.i.i92 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %min_duty23.i.i92, align 8
  %conv24.i.i93 = zext i8 %75 to i32
  %sub25.i.i94 = sub nsw i32 %conv20.i.i91, %conv24.i.i93
  %mul.i.i95 = mul nsw i32 %sub25.i.i94, %sub.i.i89
  %sub30.i.i96 = add nsw i32 %conv6.i.i83, -30
  %conv31.i.i97 = and i32 %mul.i.i95, 65535
  %div.i.i98 = sdiv i32 %conv31.i.i97, %sub30.i.i96
  %add.i.i99 = add nsw i32 %div.i.i98, %conv24.i.i93
  %conv39.i.i100 = and i32 %add.i.i99, 65535
  br label %if.then29

if.end31.thread115:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %alarm26 = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 2
  tail call void @nvkm_timer_alarm(ptr noundef %3, i32 noundef 0, ptr noundef %alarm26) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #6
  br label %if.end49

if.then29:                                        ; preds = %if.end13.i.i101, %if.then9.i.i88, %if.then.i.i82, %if.end13.i.i, %if.then9.i.i, %if.then.i.i, %nvkm_therm_update_trip.exit, %sw.bb15.if.then29_crit_edge
  %duty.1.ph = phi i32 [ %conv39.i.i100, %if.end13.i.i101 ], [ %conv12.i.i87, %if.then9.i.i88 ], [ %conv4.i.i81, %if.then.i.i82 ], [ %conv39.i.i, %if.end13.i.i ], [ %conv12.i.i, %if.then9.i.i ], [ %conv4.i.i, %if.then.i.i ], [ %duty.0.i, %nvkm_therm_update_trip.exit ], [ -1, %sw.bb15.if.then29_crit_edge ]
  %alarm30 = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 2
  tail call void @nvkm_timer_alarm(ptr noundef %3, i32 noundef 1000000000, ptr noundef %alarm30) #6
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %sw.bb20.if.end31_crit_edge
  %duty.1108 = phi i32 [ %duty.1.ph, %if.then29 ], [ %55, %sw.bb20.if.end31_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %duty.1108)
  %cmp33 = icmp sgt i32 %duty.1108, -1
  br i1 %cmp33, label %if.end31.do.body36_crit_edge, label %if.end31.if.end49_crit_edge

if.end31.if.end49_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

if.end31.do.body36_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body36

do.body36:                                        ; preds = %if.end31.do.body36_crit_edge, %sw.bb
  %immd.0.off0106114 = phi i1 [ true, %sw.bb ], [ false, %if.end31.do.body36_crit_edge ]
  %duty.1108113 = phi i32 [ %spec.select, %sw.bb ], [ %duty.1108, %if.end31.do.body36_crit_edge ]
  %debug = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 1, i32 5
  %76 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %77)
  %cmp37 = icmp ugt i32 %77, 3
  br i1 %cmp37, label %do.end42, label %do.body36.if.end44_crit_edge

do.body36.if.end44_crit_edge:                     ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

do.end42:                                         ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #8
  %78 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %81, ptr noundef nonnull @.str.20, ptr noundef %name, i32 noundef %duty.1108113) #9
  br label %if.end44

if.end44:                                         ; preds = %do.end42, %do.body36.if.end44_crit_edge
  %call48 = tail call i32 @nvkm_therm_fan_set(ptr noundef %therm, i1 noundef zeroext %immd.0.off0106114, i32 noundef %duty.1108113) #6
  br label %if.end49

if.end49:                                         ; preds = %if.end44, %if.end31.if.end49_crit_edge, %if.end31.thread115
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_therm_fan_mode(ptr noundef %therm, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode)
  %cmp = icmp ugt i32 %mode, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cond = icmp eq i32 %mode, 0
  br i1 %cond, label %lor.lhs.false.if.end9_crit_edge, label %land.lhs.true

lor.lhs.false.if.end9_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call = tail call zeroext i1 @nvkm_pmu_fan_controlled(ptr noundef %1) #6
  br i1 %call, label %land.lhs.true.cleanup_crit_edge, label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode)
  %cmp4 = icmp eq i32 %mode, 2
  br i1 %cmp4, label %land.lhs.true5, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

land.lhs.true5:                                   ; preds = %if.end
  %2 = ptrtoint ptr %therm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %therm, align 8
  %temp_get = getelementptr inbounds %struct.nvkm_therm_func, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %temp_get to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %temp_get, align 4
  %call6 = tail call i32 %5(ptr noundef %therm) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %land.lhs.true5.cleanup_crit_edge, label %land.lhs.true5.if.end9_crit_edge

land.lhs.true5.if.end9_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

land.lhs.true5.cleanup_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %land.lhs.true5.if.end9_crit_edge, %if.end.if.end9_crit_edge, %lor.lhs.false.if.end9_crit_edge
  %mode10 = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 5
  %6 = ptrtoint ptr %mode10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode10, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %mode)
  %cmp11 = icmp eq i32 %7, %mode
  br i1 %cmp11, label %if.end9.cleanup_crit_edge, label %do.body

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %if.end9
  %debug = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 1, i32 5
  %8 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp14 = icmp ugt i32 %9, 3
  br i1 %cmp14, label %do.end, label %do.body.if.end18_crit_edge

do.body.if.end18_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device2, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 1, i32 4
  %arrayidx = getelementptr [3 x ptr], ptr @nvkm_therm_fan_mode.name, i32 0, i32 %mode
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str.8, ptr noundef %name, ptr noundef %15) #9
  br label %if.end18

if.end18:                                         ; preds = %do.end, %do.body.if.end18_crit_edge
  tail call fastcc void @nvkm_therm_update(ptr noundef %therm, i32 noundef %mode)
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end9.cleanup_crit_edge, %land.lhs.true5.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end18 ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true5.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvkm_pmu_fan_controlled(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @nvkm_therm_attr_get(ptr nocapture noundef readonly %therm, i32 noundef %type) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %type, label %entry.return_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb5
    i32 10, label %sw.bb6
    i32 11, label %sw.bb8
    i32 12, label %sw.bb12
    i32 13, label %sw.bb16
    i32 14, label %sw.bb21
    i32 15, label %sw.bb25
    i32 16, label %sw.bb30
    i32 17, label %sw.bb34
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %fan = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 9
  %1 = ptrtoint ptr %fan to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fan, align 8
  %min_duty = getelementptr inbounds %struct.nvkm_fan, ptr %2, i32 0, i32 2, i32 2
  %3 = ptrtoint ptr %min_duty to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %min_duty, align 8
  %conv = zext i8 %4 to i32
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %fan2 = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 9
  %5 = ptrtoint ptr %fan2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fan2, align 8
  %max_duty = getelementptr inbounds %struct.nvkm_fan, ptr %6, i32 0, i32 2, i32 3
  %7 = ptrtoint ptr %max_duty to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %max_duty, align 1
  %conv4 = zext i8 %8 to i32
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mode = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 5
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mode, align 8
  br label %return

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %thrs_fan_boost = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 8, i32 5
  %11 = ptrtoint ptr %thrs_fan_boost to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %thrs_fan_boost, align 1
  %conv7 = zext i8 %12 to i32
  br label %return

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %hysteresis = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 8, i32 5, i32 1
  %13 = ptrtoint ptr %hysteresis to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %hysteresis, align 1
  %conv11 = zext i8 %14 to i32
  br label %return

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %thrs_down_clock = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 8, i32 6
  %15 = ptrtoint ptr %thrs_down_clock to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %thrs_down_clock, align 1
  %conv15 = zext i8 %16 to i32
  br label %return

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %hysteresis19 = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 8, i32 6, i32 1
  %17 = ptrtoint ptr %hysteresis19 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %hysteresis19, align 1
  %conv20 = zext i8 %18 to i32
  br label %return

sw.bb21:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %thrs_critical = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 8, i32 7
  %19 = ptrtoint ptr %thrs_critical to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %thrs_critical, align 1
  %conv24 = zext i8 %20 to i32
  br label %return

sw.bb25:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %hysteresis28 = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 8, i32 7, i32 1
  %21 = ptrtoint ptr %hysteresis28 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %hysteresis28, align 1
  %conv29 = zext i8 %22 to i32
  br label %return

sw.bb30:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %thrs_shutdown = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 8, i32 8
  %23 = ptrtoint ptr %thrs_shutdown to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %thrs_shutdown, align 1
  %conv33 = zext i8 %24 to i32
  br label %return

sw.bb34:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %hysteresis37 = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 8, i32 8, i32 1
  %25 = ptrtoint ptr %hysteresis37 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %hysteresis37, align 1
  %conv38 = zext i8 %26 to i32
  br label %return

return:                                           ; preds = %sw.bb34, %sw.bb30, %sw.bb25, %sw.bb21, %sw.bb16, %sw.bb12, %sw.bb8, %sw.bb6, %sw.bb5, %sw.bb1, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %conv38, %sw.bb34 ], [ %conv33, %sw.bb30 ], [ %conv29, %sw.bb25 ], [ %conv24, %sw.bb21 ], [ %conv20, %sw.bb16 ], [ %conv15, %sw.bb12 ], [ %conv11, %sw.bb8 ], [ %conv7, %sw.bb6 ], [ %10, %sw.bb5 ], [ %conv4, %sw.bb1 ], [ %conv, %sw.bb ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_therm_attr_set(ptr noundef %therm, i32 noundef %type, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %type, label %entry.return_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb12
    i32 2, label %sw.bb33
    i32 10, label %sw.bb34
    i32 11, label %sw.bb36
    i32 12, label %sw.bb42
    i32 13, label %sw.bb48
    i32 14, label %sw.bb55
    i32 15, label %sw.bb61
    i32 16, label %sw.bb68
    i32 17, label %sw.bb74
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = tail call i32 @llvm.smax.i32(i32 %value, i32 0)
  %fan = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 9
  %2 = ptrtoint ptr %fan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fan, align 8
  %max_duty = getelementptr inbounds %struct.nvkm_fan, ptr %3, i32 0, i32 2, i32 3
  %4 = ptrtoint ptr %max_duty to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %max_duty, align 1
  %conv = zext i8 %5 to i32
  %6 = tail call i32 @llvm.umin.i32(i32 %1, i32 %conv)
  %conv9 = trunc i32 %6 to i8
  %min_duty = getelementptr inbounds %struct.nvkm_fan, ptr %3, i32 0, i32 2, i32 2
  %7 = ptrtoint ptr %min_duty to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv9, ptr %min_duty, align 8
  br label %return

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = tail call i32 @llvm.smax.i32(i32 %value, i32 0)
  %fan17 = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 9
  %9 = ptrtoint ptr %fan17 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fan17, align 8
  %min_duty19 = getelementptr inbounds %struct.nvkm_fan, ptr %10, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %min_duty19 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %min_duty19, align 8
  %conv20 = zext i8 %12 to i32
  %13 = tail call i32 @llvm.umax.i32(i32 %8, i32 %conv20)
  %conv29 = trunc i32 %13 to i8
  %max_duty32 = getelementptr inbounds %struct.nvkm_fan, ptr %10, i32 0, i32 2, i32 3
  %14 = ptrtoint ptr %max_duty32 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv29, ptr %max_duty32, align 1
  br label %return

sw.bb33:                                          ; preds = %entry
  %device2.i = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %device2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %device2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %value)
  %cmp.i = icmp ugt i32 %value, 2
  br i1 %cmp.i, label %sw.bb33.return_crit_edge, label %lor.lhs.false.i

sw.bb33.return_crit_edge:                         ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

lor.lhs.false.i:                                  ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %cond.i = icmp eq i32 %value, 0
  br i1 %cond.i, label %lor.lhs.false.i.if.end9.i_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.if.end9.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call.i = tail call zeroext i1 @nvkm_pmu_fan_controlled(ptr noundef %16) #6
  br i1 %call.i, label %land.lhs.true.i.return_crit_edge, label %if.end.i

land.lhs.true.i.return_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %value)
  %cmp4.i = icmp eq i32 %value, 2
  br i1 %cmp4.i, label %land.lhs.true5.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i

land.lhs.true5.i:                                 ; preds = %if.end.i
  %17 = ptrtoint ptr %therm to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %therm, align 8
  %temp_get.i = getelementptr inbounds %struct.nvkm_therm_func, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %temp_get.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %temp_get.i, align 4
  %call6.i = tail call i32 %20(ptr noundef %therm) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %land.lhs.true5.i.return_crit_edge, label %land.lhs.true5.i.if.end9.i_crit_edge

land.lhs.true5.i.if.end9.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i

land.lhs.true5.i.return_crit_edge:                ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end9.i:                                        ; preds = %land.lhs.true5.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge, %lor.lhs.false.i.if.end9.i_crit_edge
  %mode10.i = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 5
  %21 = ptrtoint ptr %mode10.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mode10.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %value)
  %cmp11.i = icmp eq i32 %22, %value
  br i1 %cmp11.i, label %if.end9.i.return_crit_edge, label %do.body.i

if.end9.i.return_crit_edge:                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.body.i:                                        ; preds = %if.end9.i
  %debug.i = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 1, i32 5
  %23 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %24)
  %cmp14.i = icmp ugt i32 %24, 3
  br i1 %cmp14.i, label %do.end.i, label %do.body.i.if.end18.i_crit_edge

do.body.i.if.end18.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %device2.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device2.i, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i, align 8
  %name.i = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 1, i32 4
  %arrayidx.i = getelementptr [3 x ptr], ptr @nvkm_therm_fan_mode.name, i32 0, i32 %value
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %28, ptr noundef nonnull @.str.8, ptr noundef %name.i, ptr noundef %30) #9
  br label %if.end18.i

if.end18.i:                                       ; preds = %do.end.i, %do.body.i.if.end18.i_crit_edge
  tail call fastcc void @nvkm_therm_update(ptr noundef %therm, i32 noundef %value) #6
  br label %return

sw.bb34:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv35 = trunc i32 %value to i8
  %thrs_fan_boost = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 8, i32 5
  %31 = ptrtoint ptr %thrs_fan_boost to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv35, ptr %thrs_fan_boost, align 1
  %32 = ptrtoint ptr %therm to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %therm, align 8
  %program_alarms = getelementptr inbounds %struct.nvkm_therm_func, ptr %33, i32 0, i32 9
  %34 = ptrtoint ptr %program_alarms to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %program_alarms, align 4
  tail call void %35(ptr noundef %therm) #6
  br label %return

sw.bb36:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv37 = trunc i32 %value to i8
  %hysteresis = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 8, i32 5, i32 1
  %36 = ptrtoint ptr %hysteresis to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv37, ptr %hysteresis, align 1
  %37 = ptrtoint ptr %therm to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %therm, align 8
  %program_alarms41 = getelementptr inbounds %struct.nvkm_therm_func, ptr %38, i32 0, i32 9
  %39 = ptrtoint ptr %program_alarms41 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %program_alarms41, align 4
  tail call void %40(ptr noundef %therm) #6
  br label %return

sw.bb42:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv43 = trunc i32 %value to i8
  %thrs_down_clock = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 8, i32 6
  %41 = ptrtoint ptr %thrs_down_clock to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv43, ptr %thrs_down_clock, align 1
  %42 = ptrtoint ptr %therm to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %therm, align 8
  %program_alarms47 = getelementptr inbounds %struct.nvkm_therm_func, ptr %43, i32 0, i32 9
  %44 = ptrtoint ptr %program_alarms47 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %program_alarms47, align 4
  tail call void %45(ptr noundef %therm) #6
  br label %return

sw.bb48:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv49 = trunc i32 %value to i8
  %hysteresis52 = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 8, i32 6, i32 1
  %46 = ptrtoint ptr %hysteresis52 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv49, ptr %hysteresis52, align 1
  %47 = ptrtoint ptr %therm to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %therm, align 8
  %program_alarms54 = getelementptr inbounds %struct.nvkm_therm_func, ptr %48, i32 0, i32 9
  %49 = ptrtoint ptr %program_alarms54 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %program_alarms54, align 4
  tail call void %50(ptr noundef %therm) #6
  br label %return

sw.bb55:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv56 = trunc i32 %value to i8
  %thrs_critical = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 8, i32 7
  %51 = ptrtoint ptr %thrs_critical to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv56, ptr %thrs_critical, align 1
  %52 = ptrtoint ptr %therm to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %therm, align 8
  %program_alarms60 = getelementptr inbounds %struct.nvkm_therm_func, ptr %53, i32 0, i32 9
  %54 = ptrtoint ptr %program_alarms60 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %program_alarms60, align 4
  tail call void %55(ptr noundef %therm) #6
  br label %return

sw.bb61:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv62 = trunc i32 %value to i8
  %hysteresis65 = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 8, i32 7, i32 1
  %56 = ptrtoint ptr %hysteresis65 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv62, ptr %hysteresis65, align 1
  %57 = ptrtoint ptr %therm to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %therm, align 8
  %program_alarms67 = getelementptr inbounds %struct.nvkm_therm_func, ptr %58, i32 0, i32 9
  %59 = ptrtoint ptr %program_alarms67 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %program_alarms67, align 4
  tail call void %60(ptr noundef %therm) #6
  br label %return

sw.bb68:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv69 = trunc i32 %value to i8
  %thrs_shutdown = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 8, i32 8
  %61 = ptrtoint ptr %thrs_shutdown to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv69, ptr %thrs_shutdown, align 1
  %62 = ptrtoint ptr %therm to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %therm, align 8
  %program_alarms73 = getelementptr inbounds %struct.nvkm_therm_func, ptr %63, i32 0, i32 9
  %64 = ptrtoint ptr %program_alarms73 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %program_alarms73, align 4
  tail call void %65(ptr noundef %therm) #6
  br label %return

sw.bb74:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv75 = trunc i32 %value to i8
  %hysteresis78 = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 8, i32 8, i32 1
  %66 = ptrtoint ptr %hysteresis78 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv75, ptr %hysteresis78, align 1
  %67 = ptrtoint ptr %therm to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %therm, align 8
  %program_alarms80 = getelementptr inbounds %struct.nvkm_therm_func, ptr %68, i32 0, i32 9
  %69 = ptrtoint ptr %program_alarms80 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %program_alarms80, align 4
  tail call void %70(ptr noundef %therm) #6
  br label %return

return:                                           ; preds = %sw.bb74, %sw.bb68, %sw.bb61, %sw.bb55, %sw.bb48, %sw.bb42, %sw.bb36, %sw.bb34, %if.end18.i, %if.end9.i.return_crit_edge, %land.lhs.true5.i.return_crit_edge, %land.lhs.true.i.return_crit_edge, %sw.bb33.return_crit_edge, %sw.bb12, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb74 ], [ 0, %sw.bb68 ], [ 0, %sw.bb61 ], [ 0, %sw.bb55 ], [ 0, %sw.bb48 ], [ 0, %sw.bb42 ], [ 0, %sw.bb36 ], [ 0, %sw.bb34 ], [ 0, %sw.bb12 ], [ 0, %sw.bb ], [ -22, %entry.return_crit_edge ], [ 0, %if.end18.i ], [ -22, %land.lhs.true.i.return_crit_edge ], [ -22, %sw.bb33.return_crit_edge ], [ -22, %land.lhs.true5.i.return_crit_edge ], [ 0, %if.end9.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_therm_clkgate_enable(ptr noundef %therm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %therm, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %therm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %therm, align 8
  %clkgate_enable = getelementptr inbounds %struct.nvkm_therm_func, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %clkgate_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clkgate_enable, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.return_crit_edge, label %lor.lhs.false2

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %clkgating_enabled = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 17
  %4 = ptrtoint ptr %clkgating_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %clkgating_enabled, align 4, !range !62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %lor.lhs.false2.return_crit_edge, label %do.body

lor.lhs.false2.return_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.body:                                          ; preds = %lor.lhs.false2
  %debug = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 1, i32 5
  %6 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp = icmp ugt i32 %7, 3
  br i1 %cmp, label %do.end, label %do.body.if.end6_crit_edge

do.body.if.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %device = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %11, ptr noundef nonnull @.str.10, ptr noundef %name) #9
  br label %if.end6

if.end6:                                          ; preds = %do.end, %do.body.if.end6_crit_edge
  %12 = ptrtoint ptr %therm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %therm, align 8
  %clkgate_enable10 = getelementptr inbounds %struct.nvkm_therm_func, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %clkgate_enable10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clkgate_enable10, align 4
  tail call void %15(ptr noundef nonnull %therm) #6
  br label %return

return:                                           ; preds = %if.end6, %lor.lhs.false2.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_therm_clkgate_fini(ptr noundef %therm, i1 noundef zeroext %suspend) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %therm, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %therm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %therm, align 8
  %clkgate_fini = getelementptr inbounds %struct.nvkm_therm_func, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %clkgate_fini to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clkgate_fini, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.return_crit_edge, label %lor.lhs.false2

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %clkgating_enabled = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 17
  %4 = ptrtoint ptr %clkgating_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %clkgating_enabled, align 4, !range !62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %lor.lhs.false2.return_crit_edge, label %do.body

lor.lhs.false2.return_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.body:                                          ; preds = %lor.lhs.false2
  %debug = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 1, i32 5
  %6 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp = icmp ugt i32 %7, 3
  br i1 %cmp, label %do.end, label %do.body.if.end7_crit_edge

do.body.if.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %device = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 1, i32 4
  %cond = select i1 %suspend, ptr @.str.14, ptr @.str.15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %11, ptr noundef nonnull @.str.12, ptr noundef %name, ptr noundef nonnull %cond) #9
  br label %if.end7

if.end7:                                          ; preds = %do.end, %do.body.if.end7_crit_edge
  %12 = ptrtoint ptr %therm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %therm, align 8
  %clkgate_fini11 = getelementptr inbounds %struct.nvkm_therm_func, ptr %13, i32 0, i32 12
  %14 = ptrtoint ptr %clkgate_fini11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clkgate_fini11, align 4
  tail call void %15(ptr noundef nonnull %therm, i1 noundef zeroext %suspend) #6
  br label %return

return:                                           ; preds = %if.end7, %lor.lhs.false2.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_therm_clkgate_init(ptr noundef %therm, ptr noundef %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %therm, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %therm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %therm, align 8
  %clkgate_init = getelementptr inbounds %struct.nvkm_therm_func, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %clkgate_init to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clkgate_init, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.return_crit_edge, label %lor.lhs.false2

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %clkgating_enabled = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 17
  %4 = ptrtoint ptr %clkgating_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %clkgating_enabled, align 4, !range !62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %lor.lhs.false2.return_crit_edge, label %if.end

lor.lhs.false2.return_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %3(ptr noundef nonnull %therm, ptr noundef %p) #6
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false2.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_therm_ctor(ptr noundef %therm, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %func) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %subdev = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 1
  tail call void @nvkm_subdev_ctor(ptr noundef nonnull @nvkm_therm, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %subdev) #6
  %0 = ptrtoint ptr %therm to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %func, ptr %therm, align 8
  %alarm = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 2
  %1 = ptrtoint ptr %alarm to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %alarm, ptr %alarm, align 4
  %prev.i.i = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 2, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %alarm, ptr %prev.i.i, align 4
  %func1.i = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 2, i32 3
  %3 = ptrtoint ptr %func1.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @nvkm_therm_alarm, ptr %func1.i, align 8
  %lock = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.16, ptr noundef nonnull @nvkm_therm_ctor.__key, i16 noundef signext 3) #6
  %sensor = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 10
  tail call void @__raw_spin_lock_init(ptr noundef %sensor, ptr noundef nonnull @.str.18, ptr noundef nonnull @nvkm_therm_ctor.__key.17, i16 noundef signext 3) #6
  %fan_get = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 13
  %4 = ptrtoint ptr %fan_get to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @nvkm_therm_fan_user_get, ptr %fan_get, align 4
  %fan_set = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 14
  %5 = ptrtoint ptr %fan_set to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @nvkm_therm_fan_user_set, ptr %fan_set, align 8
  %attr_get = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 15
  %6 = ptrtoint ptr %attr_get to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @nvkm_therm_attr_get, ptr %attr_get, align 4
  %attr_set = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 16
  %7 = ptrtoint ptr %attr_set to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @nvkm_therm_attr_set, ptr %attr_set, align 8
  %suspend = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 7
  %8 = ptrtoint ptr %suspend to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %suspend, align 8
  %mode = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 5
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %mode, align 8
  %cfgopt = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 6
  %10 = ptrtoint ptr %cfgopt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cfgopt, align 4
  %call5 = tail call zeroext i1 @nvkm_boolopt(ptr noundef %11, ptr noundef nonnull @.str.19, i1 noundef zeroext false) #6
  %clkgating_enabled = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 17
  %frombool = zext i1 %call5 to i8
  %12 = ptrtoint ptr %clkgating_enabled to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %frombool, ptr %clkgating_enabled, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_subdev_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvkm_therm_alarm(ptr noundef %alarm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %alarm, i32 -56
  tail call fastcc void @nvkm_therm_update(ptr noundef %add.ptr, i32 noundef -1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_therm_fan_user_get(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_therm_fan_user_set(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvkm_boolopt(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_therm_new_(ptr noundef %func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %ptherm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 304) #10
  %1 = ptrtoint ptr %ptherm to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %ptherm, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %subdev.i = getelementptr inbounds %struct.nvkm_therm, ptr %call7.i.i, i32 0, i32 1
  tail call void @nvkm_subdev_ctor(ptr noundef nonnull @nvkm_therm, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %subdev.i) #6
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %func, ptr %call7.i.i, align 8
  %alarm.i = getelementptr inbounds %struct.nvkm_therm, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %alarm.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %alarm.i, ptr %alarm.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.nvkm_therm, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %alarm.i, ptr %prev.i.i.i, align 4
  %func1.i.i = getelementptr inbounds %struct.nvkm_therm, ptr %call7.i.i, i32 0, i32 2, i32 3
  %5 = ptrtoint ptr %func1.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @nvkm_therm_alarm, ptr %func1.i.i, align 8
  %lock.i = getelementptr inbounds %struct.nvkm_therm, ptr %call7.i.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @nvkm_therm_ctor.__key, i16 noundef signext 3) #6
  %sensor.i = getelementptr inbounds %struct.nvkm_therm, ptr %call7.i.i, i32 0, i32 10
  tail call void @__raw_spin_lock_init(ptr noundef %sensor.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @nvkm_therm_ctor.__key.17, i16 noundef signext 3) #6
  %fan_get.i = getelementptr inbounds %struct.nvkm_therm, ptr %call7.i.i, i32 0, i32 13
  %6 = ptrtoint ptr %fan_get.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @nvkm_therm_fan_user_get, ptr %fan_get.i, align 4
  %fan_set.i = getelementptr inbounds %struct.nvkm_therm, ptr %call7.i.i, i32 0, i32 14
  %7 = ptrtoint ptr %fan_set.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @nvkm_therm_fan_user_set, ptr %fan_set.i, align 8
  %attr_get.i = getelementptr inbounds %struct.nvkm_therm, ptr %call7.i.i, i32 0, i32 15
  %8 = ptrtoint ptr %attr_get.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @nvkm_therm_attr_get, ptr %attr_get.i, align 4
  %attr_set.i = getelementptr inbounds %struct.nvkm_therm, ptr %call7.i.i, i32 0, i32 16
  %9 = ptrtoint ptr %attr_set.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @nvkm_therm_attr_set, ptr %attr_set.i, align 8
  %suspend.i = getelementptr inbounds %struct.nvkm_therm, ptr %call7.i.i, i32 0, i32 7
  %10 = ptrtoint ptr %suspend.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %suspend.i, align 8
  %mode.i = getelementptr inbounds %struct.nvkm_therm, ptr %call7.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %mode.i, align 8
  %cfgopt.i = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 6
  %12 = ptrtoint ptr %cfgopt.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cfgopt.i, align 4
  %call5.i = tail call zeroext i1 @nvkm_boolopt(ptr noundef %13, ptr noundef nonnull @.str.19, i1 noundef zeroext false) #6
  %clkgating_enabled.i = getelementptr inbounds %struct.nvkm_therm, ptr %call7.i.i, i32 0, i32 17
  %frombool.i = zext i1 %call5.i to i8
  %14 = ptrtoint ptr %clkgating_enabled.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %frombool.i, ptr %clkgating_enabled.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_alarm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_therm_fan_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_therm_fan_set(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nvkm_therm_dtor(ptr noundef readonly %subdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %subdev, i32 -4
  %fan = getelementptr i8, ptr %subdev, i32 164
  %0 = ptrtoint ptr %fan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fan, align 8
  tail call void @kfree(ptr noundef %1) #6
  ret ptr %add.ptr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_therm_oneinit(ptr noundef %subdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %subdev, i32 -4
  %call = tail call i32 @nvkm_therm_sensor_ctor(ptr noundef %add.ptr) #6
  tail call void @nvkm_therm_ic_ctor(ptr noundef %add.ptr) #6
  %call1 = tail call i32 @nvkm_therm_fan_ctor(ptr noundef %add.ptr) #6
  %device2.i = getelementptr i8, ptr %subdev, i32 4
  %0 = ptrtoint ptr %device2.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2.i, align 4
  %call.i = tail call zeroext i1 @nvkm_pmu_fan_controlled(ptr noundef %1) #6
  br i1 %call.i, label %entry.nvkm_therm_fan_mode.exit_crit_edge, label %if.end.i

entry.nvkm_therm_fan_mode.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvkm_therm_fan_mode.exit

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %temp_get.i = getelementptr inbounds %struct.nvkm_therm_func, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %temp_get.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %temp_get.i, align 4
  %call6.i = tail call i32 %5(ptr noundef %add.ptr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %if.end.i.nvkm_therm_fan_mode.exit_crit_edge, label %if.end9.i

if.end.i.nvkm_therm_fan_mode.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvkm_therm_fan_mode.exit

if.end9.i:                                        ; preds = %if.end.i
  %mode10.i = getelementptr i8, ptr %subdev, i32 132
  %6 = ptrtoint ptr %mode10.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode10.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp11.i = icmp eq i32 %7, 2
  br i1 %cmp11.i, label %if.end9.i.nvkm_therm_fan_mode.exit_crit_edge, label %do.body.i

if.end9.i.nvkm_therm_fan_mode.exit_crit_edge:     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvkm_therm_fan_mode.exit

do.body.i:                                        ; preds = %if.end9.i
  %debug.i = getelementptr i8, ptr %subdev, i32 32
  %8 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp14.i = icmp ugt i32 %9, 3
  br i1 %cmp14.i, label %do.end.i, label %do.body.i.if.end18.i_crit_edge

do.body.i.if.end18.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %device2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device2.i, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 8
  %name.i = getelementptr i8, ptr %subdev, i32 16
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str.8, ptr noundef %name.i, ptr noundef nonnull @.str.7) #9
  br label %if.end18.i

if.end18.i:                                       ; preds = %do.end.i, %do.body.i.if.end18.i_crit_edge
  tail call fastcc void @nvkm_therm_update(ptr noundef %add.ptr, i32 noundef 2) #6
  br label %nvkm_therm_fan_mode.exit

nvkm_therm_fan_mode.exit:                         ; preds = %if.end18.i, %if.end9.i.nvkm_therm_fan_mode.exit_crit_edge, %if.end.i.nvkm_therm_fan_mode.exit_crit_edge, %entry.nvkm_therm_fan_mode.exit_crit_edge
  tail call void @nvkm_therm_sensor_preinit(ptr noundef %add.ptr) #6
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr, align 8
  %clkgate_enable.i = getelementptr inbounds %struct.nvkm_therm_func, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %clkgate_enable.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clkgate_enable.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %nvkm_therm_fan_mode.exit.nvkm_therm_clkgate_oneinit.exit_crit_edge, label %lor.lhs.false.i

nvkm_therm_fan_mode.exit.nvkm_therm_clkgate_oneinit.exit_crit_edge: ; preds = %nvkm_therm_fan_mode.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvkm_therm_clkgate_oneinit.exit

lor.lhs.false.i:                                  ; preds = %nvkm_therm_fan_mode.exit
  %clkgating_enabled.i = getelementptr i8, ptr %subdev, i32 296
  %18 = ptrtoint ptr %clkgating_enabled.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %clkgating_enabled.i, align 4, !range !62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool1.not.i = icmp eq i8 %19, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.nvkm_therm_clkgate_oneinit.exit_crit_edge, label %do.body.i9

lor.lhs.false.i.nvkm_therm_clkgate_oneinit.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvkm_therm_clkgate_oneinit.exit

do.body.i9:                                       ; preds = %lor.lhs.false.i
  %debug.i8 = getelementptr i8, ptr %subdev, i32 32
  %20 = ptrtoint ptr %debug.i8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %debug.i8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp.i = icmp ugt i32 %21, 2
  br i1 %cmp.i, label %do.end.i12, label %do.body.i9.nvkm_therm_clkgate_oneinit.exit_crit_edge

do.body.i9.nvkm_therm_clkgate_oneinit.exit_crit_edge: ; preds = %do.body.i9
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvkm_therm_clkgate_oneinit.exit

do.end.i12:                                       ; preds = %do.body.i9
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %device2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %device2.i, align 4
  %dev.i10 = getelementptr inbounds %struct.nvkm_device, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %dev.i10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i10, align 8
  %name.i11 = getelementptr i8, ptr %subdev, i32 16
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %25, ptr noundef nonnull @.str.22, ptr noundef %name.i11) #9
  br label %nvkm_therm_clkgate_oneinit.exit

nvkm_therm_clkgate_oneinit.exit:                  ; preds = %do.end.i12, %do.body.i9.nvkm_therm_clkgate_oneinit.exit_crit_edge, %lor.lhs.false.i.nvkm_therm_clkgate_oneinit.exit_crit_edge, %nvkm_therm_fan_mode.exit.nvkm_therm_clkgate_oneinit.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_therm_init(ptr noundef %subdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %subdev, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %3(ptr noundef %add.ptr) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %suspend = getelementptr i8, ptr %subdev, i32 140
  %4 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %suspend, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp = icmp sgt i32 %5, -1
  br i1 %cmp, label %if.then3, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp5.not = icmp eq i32 %5, 0
  br i1 %cmp5.not, label %lor.lhs.false.i.thread, label %if.end7

lor.lhs.false.i.thread:                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %device2.i24 = getelementptr i8, ptr %subdev, i32 4
  br label %if.end9.i

if.end7:                                          ; preds = %if.then3
  %fan = getelementptr i8, ptr %subdev, i32 164
  %6 = ptrtoint ptr %fan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fan, align 8
  %percent = getelementptr inbounds %struct.nvkm_fan, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %percent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %percent, align 4
  %call = tail call i32 @nvkm_therm_fan_set(ptr noundef %add.ptr, i1 noundef zeroext true, i32 noundef %9) #6
  %10 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load i32, ptr %suspend, align 8
  %device2.i = getelementptr i8, ptr %subdev, i32 4
  %11 = ptrtoint ptr %device2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %device2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %cmp.i = icmp ugt i32 %.pr, 2
  br i1 %cmp.i, label %if.end7.if.end10_crit_edge, label %lor.lhs.false.i

if.end7.if.end10_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

lor.lhs.false.i:                                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cond.i = icmp eq i32 %.pr, 0
  br i1 %cond.i, label %lor.lhs.false.i.if.end9.i_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.if.end9.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call.i = tail call zeroext i1 @nvkm_pmu_fan_controlled(ptr noundef %12) #6
  br i1 %call.i, label %land.lhs.true.i.if.end10_crit_edge, label %if.end.i

land.lhs.true.i.if.end10_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %cmp4.i = icmp eq i32 %.pr, 2
  br i1 %cmp4.i, label %land.lhs.true5.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i

land.lhs.true5.i:                                 ; preds = %if.end.i
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 8
  %temp_get.i = getelementptr inbounds %struct.nvkm_therm_func, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %temp_get.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %temp_get.i, align 4
  %call6.i = tail call i32 %16(ptr noundef %add.ptr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %land.lhs.true5.i.if.end10_crit_edge, label %land.lhs.true5.i.if.end9.i_crit_edge

land.lhs.true5.i.if.end9.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i

land.lhs.true5.i.if.end10_crit_edge:              ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.end9.i:                                        ; preds = %land.lhs.true5.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge, %lor.lhs.false.i.if.end9.i_crit_edge, %lor.lhs.false.i.thread
  %17 = phi i32 [ 0, %lor.lhs.false.i.thread ], [ 2, %land.lhs.true5.i.if.end9.i_crit_edge ], [ 1, %if.end.i.if.end9.i_crit_edge ], [ 0, %lor.lhs.false.i.if.end9.i_crit_edge ]
  %device2.i2629 = phi ptr [ %device2.i24, %lor.lhs.false.i.thread ], [ %device2.i, %land.lhs.true5.i.if.end9.i_crit_edge ], [ %device2.i, %if.end.i.if.end9.i_crit_edge ], [ %device2.i, %lor.lhs.false.i.if.end9.i_crit_edge ]
  %mode10.i = getelementptr i8, ptr %subdev, i32 132
  %18 = ptrtoint ptr %mode10.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mode10.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %17)
  %cmp11.i = icmp eq i32 %19, %17
  br i1 %cmp11.i, label %if.end9.i.if.end10_crit_edge, label %do.body.i

if.end9.i.if.end10_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

do.body.i:                                        ; preds = %if.end9.i
  %debug.i = getelementptr i8, ptr %subdev, i32 32
  %20 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %21)
  %cmp14.i = icmp ugt i32 %21, 3
  br i1 %cmp14.i, label %do.end.i, label %do.body.i.if.end18.i_crit_edge

do.body.i.if.end18.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %device2.i2629 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %device2.i2629, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 8
  %name.i = getelementptr i8, ptr %subdev, i32 16
  %arrayidx.i = getelementptr [3 x ptr], ptr @nvkm_therm_fan_mode.name, i32 0, i32 %17
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %25, ptr noundef nonnull @.str.8, ptr noundef %name.i, ptr noundef %27) #9
  br label %if.end18.i

if.end18.i:                                       ; preds = %do.end.i, %do.body.i.if.end18.i_crit_edge
  tail call fastcc void @nvkm_therm_update(ptr noundef %add.ptr, i32 noundef %17) #6
  br label %if.end10

if.end10:                                         ; preds = %if.end18.i, %if.end9.i.if.end10_crit_edge, %land.lhs.true5.i.if.end10_crit_edge, %land.lhs.true.i.if.end10_crit_edge, %if.end7.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %call11 = tail call i32 @nvkm_therm_sensor_init(ptr noundef %add.ptr) #6
  %call12 = tail call i32 @nvkm_therm_fan_init(ptr noundef %add.ptr) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_therm_fini(ptr noundef %subdev, i1 noundef zeroext %suspend) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %subdev, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %fini = getelementptr inbounds %struct.nvkm_therm_func, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %fini to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fini, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %3(ptr noundef %add.ptr) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = tail call i32 @nvkm_therm_fan_fini(ptr noundef %add.ptr, i1 noundef zeroext %suspend) #6
  %call5 = tail call i32 @nvkm_therm_sensor_fini(ptr noundef %add.ptr, i1 noundef zeroext %suspend) #6
  br i1 %suspend, label %if.then7, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %mode = getelementptr i8, ptr %subdev, i32 132
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 8
  %suspend8 = getelementptr i8, ptr %subdev, i32 140
  %6 = ptrtoint ptr %suspend8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %suspend8, align 8
  store i32 0, ptr %mode, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end.if.end10_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvkm_therm_intr(ptr noundef %subdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %subdev, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %intr = getelementptr inbounds %struct.nvkm_therm_func, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %intr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intr, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %3(ptr noundef %add.ptr) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_therm_sensor_ctor(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_therm_ic_ctor(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_therm_fan_ctor(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_therm_sensor_preinit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_therm_sensor_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_therm_fan_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_therm_fan_fini(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_therm_sensor_fini(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !16, !18, !19, !20, !21, !23, !24, !25, !26, !28, !29, !30, !31, !32, !33, !35, !36, !38, !39, !41, !43, !44, !45, !46, !48, !50, !51, !52}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/therm/base.c", i32 169, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nvkm_therm_cstate._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @nvkm_therm_cstate._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/therm/base.c", i32 190, i32 3}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/therm/base.c", i32 191, i32 3}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/therm/base.c", i32 192, i32 3}
!14 = !{ptr @nvkm_therm_fan_mode.name, !15, !"name", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/therm/base.c", i32 189, i32 21}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/therm/base.c", i32 209, i32 2}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @nvkm_therm_fan_mode._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @nvkm_therm_fan_mode._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/therm/base.c", i32 309, i32 2}
!23 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @nvkm_therm_clkgate_enable._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @nvkm_therm_clkgate_enable._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/therm/base.c", i32 320, i32 2}
!28 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @nvkm_therm_clkgate_fini._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @nvkm_therm_clkgate_fini._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @nvkm_therm_ctor.__key, !34, !"__key", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/therm/base.c", i32 431, i32 2}
!35 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @nvkm_therm_ctor.__key.17, !37, !"__key", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/therm/base.c", i32 432, i32 2}
!38 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/therm/base.c", i32 441, i32 7}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/therm/base.c", i32 158, i32 3}
!43 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @nvkm_therm_update._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @nvkm_therm_update._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @nvkm_therm, !47, !"nvkm_therm", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/therm/base.c", i32 415, i32 1}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/therm/base.c", i32 332, i32 2}
!50 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @nvkm_therm_clkgate_oneinit._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @nvkm_therm_clkgate_oneinit._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{i8 0, i8 2}
