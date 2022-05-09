; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/therm/temp.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/therm/temp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.nvkm_therm_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.132, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.132 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }

@nvkm_therm_sensor_event.thresholds = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], [16 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fanboost\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"downclock\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"critical\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"shutdown\00", [23 x i8] zeroinitializer }, align 32
@nvkm_therm_sensor_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 97, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s: temperature (%i C) went below the '%s' threshold\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nvkm_therm_sensor_event\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/therm/temp.c\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nvkm_therm_sensor_event._entry_ptr = internal global ptr @nvkm_therm_sensor_event._entry, section ".printk_index", align 4
@nvkm_therm_sensor_event._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 100, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: temperature (%i C) hit the '%s' threshold\0A\00", [49 x i8] zeroinitializer }, align 32
@nvkm_therm_sensor_event._entry_ptr.11 = internal global ptr @nvkm_therm_sensor_event._entry.9, section ".printk_index", align 4
@nvkm_therm_sensor_event.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"(work_completion)(work)\00", [40 x i8] zeroinitializer }, align 32
@nvkm_therm_program_alarms_polling._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.6, i32 206, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s: programmed thresholds [ %d(%d), %d(%d), %d(%d), %d(%d) ]\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"nvkm_therm_program_alarms_polling\00", [62 x i8] zeroinitializer }, align 32
@nvkm_therm_program_alarms_polling._entry_ptr = internal global ptr @nvkm_therm_program_alarms_polling._entry, section ".printk_index", align 4
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@nvkm_therm_sensor_preinit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.6, i32 235, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: internal sensor: %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nvkm_therm_sensor_preinit\00", [38 x i8] zeroinitializer }, align 32
@nvkm_therm_sensor_preinit._entry_ptr = internal global ptr @nvkm_therm_sensor_preinit._entry, section ".printk_index", align 4
@nvkm_therm_sensor_ctor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.6, i32 249, ptr @.str.21, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: nvbios_therm_sensor_parse failed\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nvkm_therm_sensor_ctor\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@nvkm_therm_sensor_ctor._entry_ptr = internal global ptr @nvkm_therm_sensor_ctor._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.22 = private unnamed_addr constant [11 x i8] c"thresholds\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 86, i32 28 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 87, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 87, i32 15 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 87, i32 28 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 87, i32 40 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 95, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 99, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 124, i32 5 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 197, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 230, i32 29 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 233, i32 18 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 235, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.101 = private constant [52 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/therm/temp.c\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 249, i32 3 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @nvkm_therm_program_alarms_polling._entry, ptr @nvkm_therm_program_alarms_polling._entry_ptr, ptr @nvkm_therm_sensor_ctor._entry, ptr @nvkm_therm_sensor_ctor._entry_ptr, ptr @nvkm_therm_sensor_event._entry, ptr @nvkm_therm_sensor_event._entry.9, ptr @nvkm_therm_sensor_event._entry_ptr, ptr @nvkm_therm_sensor_event._entry_ptr.11, ptr @nvkm_therm_sensor_preinit._entry, ptr @nvkm_therm_sensor_preinit._entry_ptr, ptr @nvkm_therm_sensor_event.thresholds, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @nvkm_therm_sensor_event.__key, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_therm_sensor_event.thresholds to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_therm_sensor_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_therm_sensor_event._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_therm_sensor_event.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_therm_program_alarms_polling._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_therm_sensor_preinit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_therm_sensor_ctor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @nvkm_therm_sensor_set_threshold_state(ptr nocapture noundef writeonly %therm, i32 noundef %thrs, i32 noundef %st) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.nvkm_therm, ptr %therm, i32 0, i32 10, i32 2, i32 %thrs
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %st, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @nvkm_therm_sensor_get_threshold_state(ptr nocapture noundef readonly %therm, i32 noundef %thrs) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.nvkm_therm, ptr %therm, i32 0, i32 10, i32 2, i32 %thrs
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_therm_sensor_event(ptr noundef %therm, i32 noundef %thrs, i32 noundef %dir) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %therm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %therm, align 8
  %temp_get = getelementptr inbounds %struct.nvkm_therm_func, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %temp_get to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %temp_get, align 4
  %call = tail call i32 %3(ptr noundef %therm) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %thrs)
  %cmp2 = icmp ugt i32 %thrs, 3
  br i1 %cmp2, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %debug = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp5 = icmp ugt i32 %5, 2
  br i1 %cmp5, label %if.end27.sink.split, label %if.end.if.end27_crit_edge

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.end27.sink.split:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %cmp3 = icmp eq i32 %dir, 0
  %.str.4..str.10 = select i1 %cmp3, ptr @.str.4, ptr @.str.10
  %device19 = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %device19 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device19, align 4
  %dev20 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev20, align 8
  %name21 = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 1, i32 4
  %arrayidx23 = getelementptr [4 x ptr], ptr @nvkm_therm_sensor_event.thresholds, i32 0, i32 %thrs
  %10 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx23, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull %.str.4..str.10, ptr noundef %name21, i32 noundef %call, ptr noundef %11) #10
  br label %if.end27

if.end27:                                         ; preds = %if.end27.sink.split, %if.end.if.end27_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp28 = icmp eq i32 %dir, 1
  %12 = zext i32 %thrs to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %thrs, label %if.end27.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb33
    i32 2, label %sw.bb40
    i32 3, label %sw.bb48
  ]

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end27
  br i1 %cmp28, label %if.then29, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then29:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %call30 = tail call i32 @nvkm_therm_fan_set(ptr noundef %therm, i1 noundef zeroext true, i32 noundef 100) #7
  %call31 = tail call i32 @nvkm_therm_fan_mode(ptr noundef %therm, i32 noundef 2) #7
  br label %cleanup

sw.bb33:                                          ; preds = %if.end27
  %emergency = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 11
  %13 = ptrtoint ptr %emergency to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %emergency, align 8
  %tobool34.not = icmp eq ptr %14, null
  br i1 %tobool34.not, label %sw.bb33.cleanup_crit_edge, label %if.then35

sw.bb33.cleanup_crit_edge:                        ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then35:                                        ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %14(ptr noundef %therm, i1 noundef zeroext %cmp28) #7
  br label %cleanup

sw.bb40:                                          ; preds = %if.end27
  %pause = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 11, i32 1
  %15 = ptrtoint ptr %pause to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pause, align 4
  %tobool42.not = icmp eq ptr %16, null
  br i1 %tobool42.not, label %sw.bb40.cleanup_crit_edge, label %if.then43

sw.bb40.cleanup_crit_edge:                        ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then43:                                        ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %16(ptr noundef %therm, i1 noundef zeroext %cmp28) #7
  br label %cleanup

sw.bb48:                                          ; preds = %if.end27
  br i1 %cmp28, label %if.then50, label %sw.bb48.cleanup_crit_edge

sw.bb48.cleanup_crit_edge:                        ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then50:                                        ; preds = %sw.bb48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 2592, i32 noundef 44) #11
  %tobool52.not = icmp eq ptr %call7.i, null
  br i1 %tobool52.not, label %if.then50.cleanup_crit_edge, label %do.body54

if.then50.cleanup_crit_edge:                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body54:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__init_work(ptr noundef nonnull %call7.i, i32 noundef 0) #7
  %18 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -64, ptr %call7.i, align 8
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.12, ptr noundef nonnull @nvkm_therm_sensor_event.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry55 = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 1
  %19 = ptrtoint ptr %entry55 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %entry55, ptr %entry55, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %entry55, ptr %prev.i, align 8
  %func56 = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 2
  %21 = ptrtoint ptr %func56 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @nv_poweroff_work, ptr %func56, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %22 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %22, ptr noundef nonnull %call7.i) #7
  br label %cleanup

cleanup:                                          ; preds = %do.body54, %if.then50.cleanup_crit_edge, %sw.bb48.cleanup_crit_edge, %if.then43, %sw.bb40.cleanup_crit_edge, %if.then35, %sw.bb33.cleanup_crit_edge, %if.then29, %sw.bb.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_therm_fan_set(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_therm_fan_mode(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv_poweroff_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @orderly_poweroff(i1 noundef zeroext true) #7
  tail call void @kfree(ptr noundef %work) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_therm_program_alarms_polling(ptr noundef %therm) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %debug = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 1, i32 5
  %0 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp ugt i32 %1, 3
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %device = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 1, i32 4
  %thrs_fan_boost = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 8, i32 5
  %6 = ptrtoint ptr %thrs_fan_boost to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %thrs_fan_boost, align 1
  %conv = zext i8 %7 to i32
  %hysteresis = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 8, i32 5, i32 1
  %8 = ptrtoint ptr %hysteresis to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %hysteresis, align 1
  %conv3 = zext i8 %9 to i32
  %thrs_down_clock = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 8, i32 6
  %10 = ptrtoint ptr %thrs_down_clock to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %thrs_down_clock, align 1
  %conv5 = zext i8 %11 to i32
  %hysteresis7 = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 8, i32 6, i32 1
  %12 = ptrtoint ptr %hysteresis7 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %hysteresis7, align 1
  %conv8 = zext i8 %13 to i32
  %thrs_critical = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 8, i32 7
  %14 = ptrtoint ptr %thrs_critical to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %thrs_critical, align 1
  %conv10 = zext i8 %15 to i32
  %hysteresis12 = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 8, i32 7, i32 1
  %16 = ptrtoint ptr %hysteresis12 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %hysteresis12, align 1
  %conv13 = zext i8 %17 to i32
  %thrs_shutdown = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 8, i32 8
  %18 = ptrtoint ptr %thrs_shutdown to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %thrs_shutdown, align 1
  %conv15 = zext i8 %19 to i32
  %hysteresis17 = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 8, i32 8, i32 1
  %20 = ptrtoint ptr %hysteresis17 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %hysteresis17, align 1
  %conv18 = zext i8 %21 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.13, ptr noundef %name, i32 noundef %conv, i32 noundef %conv3, i32 noundef %conv5, i32 noundef %conv8, i32 noundef %conv10, i32 noundef %conv13, i32 noundef %conv15, i32 noundef %conv18) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %therm_poll_alarm = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 10, i32 1
  tail call void @alarm_timer_callback(ptr noundef %therm_poll_alarm)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @alarm_timer_callback(ptr noundef %alarm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %alarm, i32 -224
  %device = getelementptr i8, ptr %alarm, i32 -216
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %timer = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %timer, align 8
  %sensor3 = getelementptr i8, ptr %alarm, i32 -48
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sensor3) #7
  %thrs_fan_boost = getelementptr i8, ptr %alarm, i32 -67
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 8
  %temp_get.i = getelementptr inbounds %struct.nvkm_therm_func, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %temp_get.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %temp_get.i, align 4
  %call.i = tail call i32 %7(ptr noundef %add.ptr) #7
  %arrayidx.i.i = getelementptr i8, ptr %alarm, i32 32
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  %10 = ptrtoint ptr %thrs_fan_boost to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %thrs_fan_boost, align 1
  %conv.i = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %conv.i)
  %cmp.not.i = icmp sge i32 %call.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp4.i = icmp eq i32 %9, 0
  %or.cond.i = select i1 %cmp.not.i, i1 %cmp4.i, i1 false
  br i1 %or.cond.i, label %entry.if.end16.i_crit_edge, label %if.else.i

entry.if.end16.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i

if.else.i:                                        ; preds = %entry
  %hysteresis.i = getelementptr i8, ptr %alarm, i32 -66
  %12 = ptrtoint ptr %hysteresis.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %hysteresis.i, align 1
  %conv8.i = zext i8 %13 to i32
  %sub.i = sub nsw i32 %conv.i, %conv8.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %sub.i)
  %cmp9.not.i = icmp sle i32 %call.i, %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp12.i = icmp eq i32 %9, 1
  %or.cond30.i = select i1 %cmp9.not.i, i1 %cmp12.i, i1 false
  br i1 %or.cond30.i, label %if.else.i.if.end16.i_crit_edge, label %if.else.i.nvkm_therm_threshold_hyst_polling.exit_crit_edge

if.else.i.nvkm_therm_threshold_hyst_polling.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nvkm_therm_threshold_hyst_polling.exit

if.else.i.if.end16.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.else.i.if.end16.i_crit_edge, %entry.if.end16.i_crit_edge
  %new_state.0.i = phi i32 [ 1, %entry.if.end16.i_crit_edge ], [ 0, %if.else.i.if.end16.i_crit_edge ]
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %new_state.0.i, ptr %arrayidx.i.i, align 4
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr, align 8
  %temp_get.i76 = getelementptr inbounds %struct.nvkm_therm_func, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %temp_get.i76 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %temp_get.i76, align 4
  %call.i77 = tail call i32 %18(ptr noundef %add.ptr) #7
  %debug.i = getelementptr i8, ptr %alarm, i32 -188
  %19 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp5.i = icmp ugt i32 %20, 2
  br i1 %cmp5.i, label %if.end27.sink.split.i, label %if.end16.i.if.end27.i_crit_edge

if.end16.i.if.end27.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27.i

if.end27.sink.split.i:                            ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  %.str.4..str.10.i = select i1 %or.cond.i, ptr @.str.10, ptr @.str.4
  %21 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device, align 4
  %dev20.i = getelementptr inbounds %struct.nvkm_device, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %dev20.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev20.i, align 8
  %name21.i = getelementptr i8, ptr %alarm, i32 -204
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull %.str.4..str.10.i, ptr noundef %name21.i, i32 noundef %call.i77, ptr noundef nonnull @.str) #10
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.end27.sink.split.i, %if.end16.i.if.end27.i_crit_edge
  br i1 %or.cond.i, label %if.then29.i, label %if.end27.i.nvkm_therm_threshold_hyst_polling.exit_crit_edge

if.end27.i.nvkm_therm_threshold_hyst_polling.exit_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nvkm_therm_threshold_hyst_polling.exit

if.then29.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  %call30.i = tail call i32 @nvkm_therm_fan_set(ptr noundef %add.ptr, i1 noundef zeroext true, i32 noundef 100) #7
  %call31.i = tail call i32 @nvkm_therm_fan_mode(ptr noundef %add.ptr, i32 noundef 2) #7
  br label %nvkm_therm_threshold_hyst_polling.exit

nvkm_therm_threshold_hyst_polling.exit:           ; preds = %if.then29.i, %if.end27.i.nvkm_therm_threshold_hyst_polling.exit_crit_edge, %if.else.i.nvkm_therm_threshold_hyst_polling.exit_crit_edge
  %thrs_down_clock = getelementptr i8, ptr %alarm, i32 -65
  %25 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr, align 8
  %temp_get.i25 = getelementptr inbounds %struct.nvkm_therm_func, ptr %26, i32 0, i32 7
  %27 = ptrtoint ptr %temp_get.i25 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %temp_get.i25, align 4
  %call.i26 = tail call i32 %28(ptr noundef %add.ptr) #7
  %arrayidx.i.i27 = getelementptr i8, ptr %alarm, i32 36
  %29 = ptrtoint ptr %arrayidx.i.i27 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i.i27, align 4
  %31 = ptrtoint ptr %thrs_down_clock to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %thrs_down_clock, align 1
  %conv.i28 = zext i8 %32 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i26, i32 %conv.i28)
  %cmp.not.i29 = icmp sge i32 %call.i26, %conv.i28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp4.i30 = icmp eq i32 %30, 0
  %or.cond.i31 = select i1 %cmp.not.i29, i1 %cmp4.i30, i1 false
  br i1 %or.cond.i31, label %nvkm_therm_threshold_hyst_polling.exit.if.end16.i40_crit_edge, label %if.else.i38

nvkm_therm_threshold_hyst_polling.exit.if.end16.i40_crit_edge: ; preds = %nvkm_therm_threshold_hyst_polling.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i40

if.else.i38:                                      ; preds = %nvkm_therm_threshold_hyst_polling.exit
  %hysteresis.i32 = getelementptr i8, ptr %alarm, i32 -64
  %33 = ptrtoint ptr %hysteresis.i32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %hysteresis.i32, align 1
  %conv8.i33 = zext i8 %34 to i32
  %sub.i34 = sub nsw i32 %conv.i28, %conv8.i33
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i26, i32 %sub.i34)
  %cmp9.not.i35 = icmp sle i32 %call.i26, %sub.i34
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp12.i36 = icmp eq i32 %30, 1
  %or.cond30.i37 = select i1 %cmp9.not.i35, i1 %cmp12.i36, i1 false
  br i1 %or.cond30.i37, label %if.else.i38.if.end16.i40_crit_edge, label %if.else.i38.nvkm_therm_threshold_hyst_polling.exit41_crit_edge

if.else.i38.nvkm_therm_threshold_hyst_polling.exit41_crit_edge: ; preds = %if.else.i38
  call void @__sanitizer_cov_trace_pc() #9
  br label %nvkm_therm_threshold_hyst_polling.exit41

if.else.i38.if.end16.i40_crit_edge:               ; preds = %if.else.i38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i40

if.end16.i40:                                     ; preds = %if.else.i38.if.end16.i40_crit_edge, %nvkm_therm_threshold_hyst_polling.exit.if.end16.i40_crit_edge
  %new_state.0.i39 = phi i32 [ 1, %nvkm_therm_threshold_hyst_polling.exit.if.end16.i40_crit_edge ], [ 0, %if.else.i38.if.end16.i40_crit_edge ]
  %35 = ptrtoint ptr %arrayidx.i.i27 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %new_state.0.i39, ptr %arrayidx.i.i27, align 4
  %36 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr, align 8
  %temp_get.i78 = getelementptr inbounds %struct.nvkm_therm_func, ptr %37, i32 0, i32 7
  %38 = ptrtoint ptr %temp_get.i78 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %temp_get.i78, align 4
  %call.i79 = tail call i32 %39(ptr noundef %add.ptr) #7
  %debug.i80 = getelementptr i8, ptr %alarm, i32 -188
  %40 = ptrtoint ptr %debug.i80 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %debug.i80, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %41)
  %cmp5.i81 = icmp ugt i32 %41, 2
  br i1 %cmp5.i81, label %if.end27.sink.split.i87, label %if.end16.i40.if.end27.i89_crit_edge

if.end16.i40.if.end27.i89_crit_edge:              ; preds = %if.end16.i40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27.i89

if.end27.sink.split.i87:                          ; preds = %if.end16.i40
  call void @__sanitizer_cov_trace_pc() #9
  %.str.4..str.10.i83 = select i1 %or.cond.i31, ptr @.str.10, ptr @.str.4
  %42 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %device, align 4
  %dev20.i85 = getelementptr inbounds %struct.nvkm_device, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %dev20.i85 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev20.i85, align 8
  %name21.i86 = getelementptr i8, ptr %alarm, i32 -204
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %45, ptr noundef nonnull %.str.4..str.10.i83, ptr noundef %name21.i86, i32 noundef %call.i79, ptr noundef nonnull @.str.1) #10
  br label %if.end27.i89

if.end27.i89:                                     ; preds = %if.end27.sink.split.i87, %if.end16.i40.if.end27.i89_crit_edge
  %emergency.i = getelementptr i8, ptr %alarm, i32 48
  %46 = ptrtoint ptr %emergency.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %emergency.i, align 8
  %tobool34.not.i = icmp eq ptr %47, null
  br i1 %tobool34.not.i, label %if.end27.i89.nvkm_therm_threshold_hyst_polling.exit41_crit_edge, label %if.then35.i

if.end27.i89.nvkm_therm_threshold_hyst_polling.exit41_crit_edge: ; preds = %if.end27.i89
  call void @__sanitizer_cov_trace_pc() #9
  br label %nvkm_therm_threshold_hyst_polling.exit41

if.then35.i:                                      ; preds = %if.end27.i89
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %47(ptr noundef %add.ptr, i1 noundef zeroext %or.cond.i31) #7
  br label %nvkm_therm_threshold_hyst_polling.exit41

nvkm_therm_threshold_hyst_polling.exit41:         ; preds = %if.then35.i, %if.end27.i89.nvkm_therm_threshold_hyst_polling.exit41_crit_edge, %if.else.i38.nvkm_therm_threshold_hyst_polling.exit41_crit_edge
  %thrs_critical = getelementptr i8, ptr %alarm, i32 -63
  %48 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %add.ptr, align 8
  %temp_get.i42 = getelementptr inbounds %struct.nvkm_therm_func, ptr %49, i32 0, i32 7
  %50 = ptrtoint ptr %temp_get.i42 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %temp_get.i42, align 4
  %call.i43 = tail call i32 %51(ptr noundef %add.ptr) #7
  %arrayidx.i.i44 = getelementptr i8, ptr %alarm, i32 40
  %52 = ptrtoint ptr %arrayidx.i.i44 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.i.i44, align 4
  %54 = ptrtoint ptr %thrs_critical to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %thrs_critical, align 1
  %conv.i45 = zext i8 %55 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i43, i32 %conv.i45)
  %cmp.not.i46 = icmp sge i32 %call.i43, %conv.i45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp4.i47 = icmp eq i32 %53, 0
  %or.cond.i48 = select i1 %cmp.not.i46, i1 %cmp4.i47, i1 false
  br i1 %or.cond.i48, label %nvkm_therm_threshold_hyst_polling.exit41.if.end16.i57_crit_edge, label %if.else.i55

nvkm_therm_threshold_hyst_polling.exit41.if.end16.i57_crit_edge: ; preds = %nvkm_therm_threshold_hyst_polling.exit41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i57

if.else.i55:                                      ; preds = %nvkm_therm_threshold_hyst_polling.exit41
  %hysteresis.i49 = getelementptr i8, ptr %alarm, i32 -62
  %56 = ptrtoint ptr %hysteresis.i49 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %hysteresis.i49, align 1
  %conv8.i50 = zext i8 %57 to i32
  %sub.i51 = sub nsw i32 %conv.i45, %conv8.i50
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i43, i32 %sub.i51)
  %cmp9.not.i52 = icmp sle i32 %call.i43, %sub.i51
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %53)
  %cmp12.i53 = icmp eq i32 %53, 1
  %or.cond30.i54 = select i1 %cmp9.not.i52, i1 %cmp12.i53, i1 false
  br i1 %or.cond30.i54, label %if.else.i55.if.end16.i57_crit_edge, label %if.else.i55.nvkm_therm_threshold_hyst_polling.exit58_crit_edge

if.else.i55.nvkm_therm_threshold_hyst_polling.exit58_crit_edge: ; preds = %if.else.i55
  call void @__sanitizer_cov_trace_pc() #9
  br label %nvkm_therm_threshold_hyst_polling.exit58

if.else.i55.if.end16.i57_crit_edge:               ; preds = %if.else.i55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i57

if.end16.i57:                                     ; preds = %if.else.i55.if.end16.i57_crit_edge, %nvkm_therm_threshold_hyst_polling.exit41.if.end16.i57_crit_edge
  %new_state.0.i56 = phi i32 [ 1, %nvkm_therm_threshold_hyst_polling.exit41.if.end16.i57_crit_edge ], [ 0, %if.else.i55.if.end16.i57_crit_edge ]
  %58 = ptrtoint ptr %arrayidx.i.i44 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %new_state.0.i56, ptr %arrayidx.i.i44, align 4
  %59 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %add.ptr, align 8
  %temp_get.i91 = getelementptr inbounds %struct.nvkm_therm_func, ptr %60, i32 0, i32 7
  %61 = ptrtoint ptr %temp_get.i91 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %temp_get.i91, align 4
  %call.i92 = tail call i32 %62(ptr noundef %add.ptr) #7
  %debug.i93 = getelementptr i8, ptr %alarm, i32 -188
  %63 = ptrtoint ptr %debug.i93 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %debug.i93, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %64)
  %cmp5.i94 = icmp ugt i32 %64, 2
  br i1 %cmp5.i94, label %if.end27.sink.split.i100, label %if.end16.i57.if.end27.i102_crit_edge

if.end16.i57.if.end27.i102_crit_edge:             ; preds = %if.end16.i57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27.i102

if.end27.sink.split.i100:                         ; preds = %if.end16.i57
  call void @__sanitizer_cov_trace_pc() #9
  %.str.4..str.10.i96 = select i1 %or.cond.i48, ptr @.str.10, ptr @.str.4
  %65 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %device, align 4
  %dev20.i98 = getelementptr inbounds %struct.nvkm_device, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %dev20.i98 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev20.i98, align 8
  %name21.i99 = getelementptr i8, ptr %alarm, i32 -204
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %68, ptr noundef nonnull %.str.4..str.10.i96, ptr noundef %name21.i99, i32 noundef %call.i92, ptr noundef nonnull @.str.2) #10
  br label %if.end27.i102

if.end27.i102:                                    ; preds = %if.end27.sink.split.i100, %if.end16.i57.if.end27.i102_crit_edge
  %pause.i = getelementptr i8, ptr %alarm, i32 52
  %69 = ptrtoint ptr %pause.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pause.i, align 4
  %tobool42.not.i = icmp eq ptr %70, null
  br i1 %tobool42.not.i, label %if.end27.i102.nvkm_therm_threshold_hyst_polling.exit58_crit_edge, label %if.then43.i

if.end27.i102.nvkm_therm_threshold_hyst_polling.exit58_crit_edge: ; preds = %if.end27.i102
  call void @__sanitizer_cov_trace_pc() #9
  br label %nvkm_therm_threshold_hyst_polling.exit58

if.then43.i:                                      ; preds = %if.end27.i102
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %70(ptr noundef %add.ptr, i1 noundef zeroext %or.cond.i48) #7
  br label %nvkm_therm_threshold_hyst_polling.exit58

nvkm_therm_threshold_hyst_polling.exit58:         ; preds = %if.then43.i, %if.end27.i102.nvkm_therm_threshold_hyst_polling.exit58_crit_edge, %if.else.i55.nvkm_therm_threshold_hyst_polling.exit58_crit_edge
  %thrs_shutdown = getelementptr i8, ptr %alarm, i32 -61
  %71 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %add.ptr, align 8
  %temp_get.i59 = getelementptr inbounds %struct.nvkm_therm_func, ptr %72, i32 0, i32 7
  %73 = ptrtoint ptr %temp_get.i59 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %temp_get.i59, align 4
  %call.i60 = tail call i32 %74(ptr noundef %add.ptr) #7
  %arrayidx.i.i61 = getelementptr i8, ptr %alarm, i32 44
  %75 = ptrtoint ptr %arrayidx.i.i61 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx.i.i61, align 4
  %77 = ptrtoint ptr %thrs_shutdown to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %thrs_shutdown, align 1
  %conv.i62 = zext i8 %78 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i60, i32 %conv.i62)
  %cmp.not.i63 = icmp sge i32 %call.i60, %conv.i62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp4.i64 = icmp eq i32 %76, 0
  %or.cond.i65 = select i1 %cmp.not.i63, i1 %cmp4.i64, i1 false
  br i1 %or.cond.i65, label %nvkm_therm_threshold_hyst_polling.exit58.if.end16.i74_crit_edge, label %if.else.i72

nvkm_therm_threshold_hyst_polling.exit58.if.end16.i74_crit_edge: ; preds = %nvkm_therm_threshold_hyst_polling.exit58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i74

if.else.i72:                                      ; preds = %nvkm_therm_threshold_hyst_polling.exit58
  %hysteresis.i66 = getelementptr i8, ptr %alarm, i32 -60
  %79 = ptrtoint ptr %hysteresis.i66 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %hysteresis.i66, align 1
  %conv8.i67 = zext i8 %80 to i32
  %sub.i68 = sub nsw i32 %conv.i62, %conv8.i67
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i60, i32 %sub.i68)
  %cmp9.not.i69 = icmp sle i32 %call.i60, %sub.i68
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %76)
  %cmp12.i70 = icmp eq i32 %76, 1
  %or.cond30.i71 = select i1 %cmp9.not.i69, i1 %cmp12.i70, i1 false
  br i1 %or.cond30.i71, label %if.else.i72.if.end16.i74_crit_edge, label %if.else.i72.nvkm_therm_threshold_hyst_polling.exit75_crit_edge

if.else.i72.nvkm_therm_threshold_hyst_polling.exit75_crit_edge: ; preds = %if.else.i72
  call void @__sanitizer_cov_trace_pc() #9
  br label %nvkm_therm_threshold_hyst_polling.exit75

if.else.i72.if.end16.i74_crit_edge:               ; preds = %if.else.i72
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i74

if.end16.i74:                                     ; preds = %if.else.i72.if.end16.i74_crit_edge, %nvkm_therm_threshold_hyst_polling.exit58.if.end16.i74_crit_edge
  %new_state.0.i73 = phi i32 [ 1, %nvkm_therm_threshold_hyst_polling.exit58.if.end16.i74_crit_edge ], [ 0, %if.else.i72.if.end16.i74_crit_edge ]
  %81 = ptrtoint ptr %arrayidx.i.i61 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %new_state.0.i73, ptr %arrayidx.i.i61, align 4
  tail call void @nvkm_therm_sensor_event(ptr noundef %add.ptr, i32 noundef 3, i32 noundef %new_state.0.i73) #7
  br label %nvkm_therm_threshold_hyst_polling.exit75

nvkm_therm_threshold_hyst_polling.exit75:         ; preds = %if.end16.i74, %if.else.i72.nvkm_therm_threshold_hyst_polling.exit75_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sensor3, i32 noundef %call4) #7
  %82 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %add.ptr, align 8
  %temp_get = getelementptr inbounds %struct.nvkm_therm_func, ptr %83, i32 0, i32 7
  %84 = ptrtoint ptr %temp_get to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %temp_get, align 4
  %call9 = tail call i32 %85(ptr noundef %add.ptr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9)
  %cmp10 = icmp sgt i32 %call9, -1
  br i1 %cmp10, label %if.then, label %nvkm_therm_threshold_hyst_polling.exit75.if.end_crit_edge

nvkm_therm_threshold_hyst_polling.exit75.if.end_crit_edge: ; preds = %nvkm_therm_threshold_hyst_polling.exit75
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %nvkm_therm_threshold_hyst_polling.exit75
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @nvkm_timer_alarm(ptr noundef %3, i32 noundef 1000000000, ptr noundef %alarm) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %nvkm_therm_threshold_hyst_polling.exit75.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_therm_sensor_init(ptr noundef %therm) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %therm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %therm, align 8
  %program_alarms = getelementptr inbounds %struct.nvkm_therm_func, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %program_alarms to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %program_alarms, align 4
  tail call void %3(ptr noundef %therm) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_therm_sensor_fini(ptr noundef %therm, i1 noundef zeroext %suspend) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %suspend, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %device = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %timer = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %timer, align 8
  %therm_poll_alarm = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 10, i32 1
  tail call void @nvkm_timer_alarm(ptr noundef %3, i32 noundef 0, ptr noundef %therm_poll_alarm) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_alarm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_therm_sensor_preinit(ptr noundef %therm) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %therm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %therm, align 8
  %temp_get = getelementptr inbounds %struct.nvkm_therm_func, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %temp_get to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %temp_get, align 4
  %call = tail call i32 %3(ptr noundef %therm) #7
  %debug = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp1 = icmp ugt i32 %5, 3
  br i1 %cmp1, label %do.end, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  %spec.select = select i1 %cmp, ptr @.str.16, ptr @.str.15
  %device = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.17, ptr noundef %name, ptr noundef nonnull %spec.select) #10
  br label %if.end4

if.end4:                                          ; preds = %do.end, %entry.if.end4_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_therm_sensor_ctor(ptr noundef %therm) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %bios2 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %bios2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios2, align 8
  %therm_poll_alarm = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 10, i32 1
  %4 = ptrtoint ptr %therm_poll_alarm to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %therm_poll_alarm, ptr %therm_poll_alarm, align 4
  %prev.i.i = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 10, i32 1, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %therm_poll_alarm, ptr %prev.i.i, align 4
  %func1.i = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 10, i32 1, i32 3
  %6 = ptrtoint ptr %func1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @alarm_timer_callback, ptr %func1.i, align 8
  %offset_constant.i = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 8, i32 4
  %7 = ptrtoint ptr %offset_constant.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %offset_constant.i, align 4
  %thrs_fan_boost.i = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 8, i32 5
  %8 = ptrtoint ptr %thrs_fan_boost.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 90, ptr %thrs_fan_boost.i, align 1
  %hysteresis.i = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 8, i32 5, i32 1
  %9 = ptrtoint ptr %hysteresis.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 3, ptr %hysteresis.i, align 1
  %thrs_down_clock.i = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 8, i32 6
  %10 = ptrtoint ptr %thrs_down_clock.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 95, ptr %thrs_down_clock.i, align 1
  %hysteresis8.i = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 8, i32 6, i32 1
  %11 = ptrtoint ptr %hysteresis8.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 3, ptr %hysteresis8.i, align 1
  %thrs_critical.i = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 8, i32 7
  %12 = ptrtoint ptr %thrs_critical.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 105, ptr %thrs_critical.i, align 1
  %hysteresis13.i = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 8, i32 7, i32 1
  %13 = ptrtoint ptr %hysteresis13.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 5, ptr %hysteresis13.i, align 1
  %thrs_shutdown.i = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 8, i32 8
  %14 = ptrtoint ptr %thrs_shutdown.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -121, ptr %thrs_shutdown.i, align 1
  %hysteresis18.i = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 8, i32 8, i32 1
  %15 = ptrtoint ptr %hysteresis18.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 5, ptr %hysteresis18.i, align 1
  %bios_sensor = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 8
  %call = tail call i32 @nvbios_therm_sensor_parse(ptr noundef %3, i32 noundef 0, ptr noundef %bios_sensor) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %do.body

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

do.body:                                          ; preds = %entry
  %debug = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 1, i32 5
  %16 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.not = icmp eq i32 %17, 0
  br i1 %cmp.not, label %do.body.if.end8_crit_edge, label %do.end

do.body.if.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.19, ptr noundef %name) #10
  br label %if.end8

if.end8:                                          ; preds = %do.end, %do.body.if.end8_crit_edge, %entry.if.end8_crit_edge
  %22 = ptrtoint ptr %hysteresis.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %hysteresis.i, align 1
  %24 = tail call i8 @llvm.umax.i8(i8 %23, i8 2) #7
  %25 = ptrtoint ptr %hysteresis.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %hysteresis.i, align 1
  %26 = ptrtoint ptr %hysteresis8.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %hysteresis8.i, align 1
  %28 = tail call i8 @llvm.umax.i8(i8 %27, i8 2) #7
  %29 = ptrtoint ptr %hysteresis8.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %hysteresis8.i, align 1
  %30 = ptrtoint ptr %hysteresis13.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %hysteresis13.i, align 1
  %32 = tail call i8 @llvm.umax.i8(i8 %31, i8 2) #7
  %33 = ptrtoint ptr %hysteresis13.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %hysteresis13.i, align 1
  %34 = ptrtoint ptr %hysteresis18.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %hysteresis18.i, align 1
  %36 = tail call i8 @llvm.umax.i8(i8 %35, i8 2) #7
  %37 = ptrtoint ptr %hysteresis18.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %hysteresis18.i, align 1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_therm_sensor_parse(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @orderly_poweroff(i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !21, !22, !24, !25, !27, !28, !29, !30, !32, !34, !36, !37, !38, !39, !41, !42, !43, !44}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/therm/temp.c", i32 87, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/therm/temp.c", i32 87, i32 15}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/therm/temp.c", i32 87, i32 28}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/therm/temp.c", i32 87, i32 40}
!8 = !{ptr @nvkm_therm_sensor_event.thresholds, !9, !"thresholds", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/therm/temp.c", i32 86, i32 28}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/therm/temp.c", i32 95, i32 3}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @nvkm_therm_sensor_event._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @nvkm_therm_sensor_event._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/therm/temp.c", i32 99, i32 3}
!20 = !{ptr @nvkm_therm_sensor_event._entry.9, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @nvkm_therm_sensor_event._entry_ptr.11, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @nvkm_therm_sensor_event.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/therm/temp.c", i32 124, i32 5}
!24 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/therm/temp.c", i32 197, i32 2}
!27 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @nvkm_therm_program_alarms_polling._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @nvkm_therm_program_alarms_polling._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/therm/temp.c", i32 230, i32 29}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/therm/temp.c", i32 233, i32 18}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/therm/temp.c", i32 235, i32 2}
!36 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @nvkm_therm_sensor_preinit._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @nvkm_therm_sensor_preinit._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/therm/temp.c", i32 249, i32 3}
!41 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @nvkm_therm_sensor_ctor._entry, !40, !"_entry", i1 false, i1 false}
!44 = !{ptr @nvkm_therm_sensor_ctor._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
