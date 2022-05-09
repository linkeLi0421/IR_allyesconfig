; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/panfrost/panfrost_device.c_pt.bc'
source_filename = "../drivers/gpu/drm/panfrost/panfrost_device.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.panfrost_exception_info = type { ptr }
%struct.panfrost_device = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], [3 x ptr], i8, %struct.panfrost_features, ptr, %struct.spinlock, i32, i32, i32, %struct.list_head, ptr, [3 x [2 x ptr]], %struct.list_head, ptr, %struct.mutex, %struct.anon.98, %struct.mutex, %struct.list_head, %struct.shrinker, %struct.panfrost_devfreq }
%struct.panfrost_features = type { i16, i16, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32], [16 x i32], i32, i32, [2 x i32], [2 x i32] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.98 = type { ptr, %struct.work_struct, %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.panfrost_devfreq = type { ptr, ptr, %struct.devfreq_simple_ondemand_data, i8, i64, i64, i64, i32, %struct.spinlock }
%struct.devfreq_simple_ondemand_data = type { i32, i32 }
%struct.panfrost_compatible = type { i32, ptr, i32, ptr, ptr }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@panfrost_device_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&pfdev->sched_lock\00", [45 x i8] zeroinitializer }, align 32
@panfrost_device_init.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&pfdev->as_lock\00", [16 x i8] zeroinitializer }, align 32
@panfrost_device_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 210, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"clk init failed %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"panfrost_device_init\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/gpu/drm/panfrost/panfrost_device.c\00", [53 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@panfrost_device_init._entry_ptr = internal global ptr @panfrost_device_init._entry, section ".printk_index", align 4
@panfrost_device_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 217, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"devfreq init failed %d\0A\00", [40 x i8] zeroinitializer }, align 32
@panfrost_device_init._entry_ptr.10 = internal global ptr @panfrost_device_init._entry.8, section ".printk_index", align 4
@panfrost_device_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 230, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"reset init failed %d\0A\00", [42 x i8] zeroinitializer }, align 32
@panfrost_device_init._entry_ptr.13 = internal global ptr @panfrost_device_init._entry.11, section ".printk_index", align 4
@panfrost_exception_infos = internal constant { [240 x %struct.panfrost_exception_info], [224 x i8] } { [240 x %struct.panfrost_exception_info] [%struct.panfrost_exception_info { ptr @.str.46 }, %struct.panfrost_exception_info { ptr @.str.47 }, %struct.panfrost_exception_info { ptr @.str.48 }, %struct.panfrost_exception_info { ptr @.str.49 }, %struct.panfrost_exception_info { ptr @.str.50 }, %struct.panfrost_exception_info { ptr @.str.51 }, %struct.panfrost_exception_info { ptr @.str.52 }, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info { ptr @.str.53 }, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info { ptr @.str.54 }, %struct.panfrost_exception_info { ptr @.str.55 }, %struct.panfrost_exception_info { ptr @.str.56 }, %struct.panfrost_exception_info { ptr @.str.57 }, %struct.panfrost_exception_info { ptr @.str.58 }, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info { ptr @.str.59 }, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info { ptr @.str.60 }, %struct.panfrost_exception_info { ptr @.str.61 }, %struct.panfrost_exception_info { ptr @.str.62 }, %struct.panfrost_exception_info { ptr @.str.63 }, %struct.panfrost_exception_info { ptr @.str.64 }, %struct.panfrost_exception_info { ptr @.str.65 }, %struct.panfrost_exception_info { ptr @.str.66 }, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info { ptr @.str.67 }, %struct.panfrost_exception_info { ptr @.str.68 }, %struct.panfrost_exception_info { ptr @.str.69 }, %struct.panfrost_exception_info { ptr @.str.70 }, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info { ptr @.str.71 }, %struct.panfrost_exception_info { ptr @.str.72 }, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info { ptr @.str.73 }, %struct.panfrost_exception_info { ptr @.str.74 }, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info { ptr @.str.75 }, %struct.panfrost_exception_info { ptr @.str.76 }, %struct.panfrost_exception_info { ptr @.str.77 }, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info { ptr @.str.78 }, %struct.panfrost_exception_info { ptr @.str.79 }, %struct.panfrost_exception_info { ptr @.str.80 }, %struct.panfrost_exception_info { ptr @.str.81 }, %struct.panfrost_exception_info { ptr @.str.82 }, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info { ptr @.str.83 }, %struct.panfrost_exception_info { ptr @.str.84 }, %struct.panfrost_exception_info { ptr @.str.85 }, %struct.panfrost_exception_info { ptr @.str.86 }, %struct.panfrost_exception_info { ptr @.str.87 }, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info { ptr @.str.88 }, %struct.panfrost_exception_info { ptr @.str.89 }, %struct.panfrost_exception_info { ptr @.str.90 }, %struct.panfrost_exception_info { ptr @.str.91 }, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info { ptr @.str.92 }, %struct.panfrost_exception_info { ptr @.str.93 }, %struct.panfrost_exception_info { ptr @.str.94 }, %struct.panfrost_exception_info { ptr @.str.95 }, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info zeroinitializer, %struct.panfrost_exception_info { ptr @.str.96 }, %struct.panfrost_exception_info { ptr @.str.97 }, %struct.panfrost_exception_info { ptr @.str.98 }, %struct.panfrost_exception_info { ptr @.str.99 }, %struct.panfrost_exception_info { ptr @.str.100 }, %struct.panfrost_exception_info { ptr @.str.101 }, %struct.panfrost_exception_info { ptr @.str.102 }, %struct.panfrost_exception_info { ptr @.str.103 }, %struct.panfrost_exception_info { ptr @.str.104 }, %struct.panfrost_exception_info { ptr @.str.105 }, %struct.panfrost_exception_info { ptr @.str.106 }, %struct.panfrost_exception_info { ptr @.str.107 }, %struct.panfrost_exception_info { ptr @.str.108 }, %struct.panfrost_exception_info { ptr @.str.109 }, %struct.panfrost_exception_info { ptr @.str.110 }, %struct.panfrost_exception_info { ptr @.str.111 }], [224 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unknown exception type\00", [41 x i8] zeroinitializer }, align 32
@panfrost_clk_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.5, i32 42, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"get clock failed %ld\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"panfrost_clk_init\00", [46 x i8] zeroinitializer }, align 32
@panfrost_clk_init._entry_ptr = internal global ptr @panfrost_clk_init._entry, section ".printk_index", align 4
@panfrost_clk_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.5, i32 47, ptr @.str.19, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"clock rate = %lu\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@panfrost_clk_init._entry_ptr.20 = internal global ptr @panfrost_clk_init._entry.17, section ".printk_index", align 4
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bus\00", [28 x i8] zeroinitializer }, align 32
@panfrost_clk_init._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.16, ptr @.str.5, i32 56, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"get bus_clock failed %ld\0A\00", [38 x i8] zeroinitializer }, align 32
@panfrost_clk_init._entry_ptr.24 = internal global ptr @panfrost_clk_init._entry.22, section ".printk_index", align 4
@panfrost_clk_init._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.16, ptr @.str.5, i32 63, ptr @.str.19, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bus_clock rate = %lu\0A\00", [42 x i8] zeroinitializer }, align 32
@panfrost_clk_init._entry_ptr.27 = internal global ptr @panfrost_clk_init._entry.25, section ".printk_index", align 4
@panfrost_regulator_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.5, i32 103, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get regulators: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"panfrost_regulator_init\00", [40 x i8] zeroinitializer }, align 32
@panfrost_regulator_init._entry_ptr = internal global ptr @panfrost_regulator_init._entry, section ".printk_index", align 4
@panfrost_regulator_init._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.5, i32 110, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to enable regulators: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@panfrost_regulator_init._entry_ptr.32 = internal global ptr @panfrost_regulator_init._entry.30, section ".printk_index", align 4
@panfrost_reset_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.5, i32 23, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"get reset failed %ld\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"panfrost_reset_init\00", [44 x i8] zeroinitializer }, align 32
@panfrost_reset_init._entry_ptr = internal global ptr @panfrost_reset_init._entry, section ".printk_index", align 4
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"power-domains\00", [18 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"#power-domain-cells\00", [44 x i8] zeroinitializer }, align 32
@panfrost_pm_domain_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.5, i32 159, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Incorrect number of power domains: %d provided, %d needed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"panfrost_pm_domain_init\00", [40 x i8] zeroinitializer }, align 32
@panfrost_pm_domain_init._entry_ptr = internal global ptr @panfrost_pm_domain_init._entry, section ".printk_index", align 4
@.str.39 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Too many supplies in compatible structure.\0A\00", [52 x i8] zeroinitializer }, align 32
@panfrost_pm_domain_init._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.38, ptr @.str.5, i32 176, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to get pm-domain %s(%d): %d\0A\00", [60 x i8] zeroinitializer }, align 32
@panfrost_pm_domain_init._entry_ptr.42 = internal global ptr @panfrost_pm_domain_init._entry.40, section ".printk_index", align 4
@panfrost_pm_domain_init._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.38, ptr @.str.5, i32 185, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"adding device link failed!\0A\00", [36 x i8] zeroinitializer }, align 32
@panfrost_pm_domain_init._entry_ptr.45 = internal global ptr @panfrost_pm_domain_init._entry.43, section ".printk_index", align 4
@.str.46 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"OK\00", [29 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DONE\00", [27 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"INTERRUPTED\00", [20 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"STOPPED\00", [24 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TERMINATED\00", [21 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"KABOOM\00", [25 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"EUREKA\00", [25 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ACTIVE\00", [25 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"JOB_CONFIG_FAULT\00", [47 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"JOB_POWER_FAULT\00", [16 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"JOB_READ_FAULT\00", [17 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"JOB_WRITE_FAULT\00", [16 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"JOB_AFFINITY_FAULT\00", [45 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"JOB_BUS_FAULT\00", [18 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"INSTR_INVALID_PC\00", [47 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"INSTR_INVALID_ENC\00", [46 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"INSTR_TYPE_MISMATCH\00", [44 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"INSTR_OPERAND_FAULT\00", [44 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"INSTR_TLS_FAULT\00", [16 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"INSTR_BARRIER_FAULT\00", [44 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"INSTR_ALIGN_FAULT\00", [46 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DATA_INVALID_FAULT\00", [45 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TILE_RANGE_FAULT\00", [47 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ADDR_RANGE_FAULT\00", [47 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IMPRECISE_FAULT\00", [16 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"OOM\00", [28 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OOM_AFBC\00", [23 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UNKNOWN\00", [24 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DELAYED_BUS_FAULT\00", [46 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"GPU_SHAREABILITY_FAULT\00", [41 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SYS_SHAREABILITY_FAULT\00", [41 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"GPU_CACHEABILITY_FAULT\00", [41 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TRANSLATION_FAULT_0\00", [44 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TRANSLATION_FAULT_1\00", [44 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TRANSLATION_FAULT_2\00", [44 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TRANSLATION_FAULT_3\00", [44 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TRANSLATION_FAULT_4\00", [44 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"TRANSLATION_FAULT_IDENTITY\00", [37 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PERM_FAULT_0\00", [19 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PERM_FAULT_1\00", [19 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PERM_FAULT_2\00", [19 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PERM_FAULT_3\00", [19 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"TRANSTAB_BUS_FAULT_0\00", [43 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"TRANSTAB_BUS_FAULT_1\00", [43 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"TRANSTAB_BUS_FAULT_2\00", [43 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"TRANSTAB_BUS_FAULT_3\00", [43 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ACCESS_FLAG_0\00", [18 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ACCESS_FLAG_1\00", [18 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ACCESS_FLAG_2\00", [18 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ACCESS_FLAG_3\00", [18 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ADDR_SIZE_FAULT_IN0\00", [44 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ADDR_SIZE_FAULT_IN1\00", [44 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ADDR_SIZE_FAULT_IN2\00", [44 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ADDR_SIZE_FAULT_IN3\00", [44 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ADDR_SIZE_FAULT_OUT0\00", [43 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ADDR_SIZE_FAULT_OUT1\00", [43 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ADDR_SIZE_FAULT_OUT2\00", [43 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ADDR_SIZE_FAULT_OUT3\00", [43 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MEM_ATTR_FAULT_0\00", [47 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MEM_ATTR_FAULT_1\00", [47 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MEM_ATTR_FAULT_2\00", [47 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MEM_ATTR_FAULT_3\00", [47 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MEM_ATTR_NONCACHE_0\00", [44 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MEM_ATTR_NONCACHE_1\00", [44 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MEM_ATTR_NONCACHE_2\00", [44 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MEM_ATTR_NONCACHE_3\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 202, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 206, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 210, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 217, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 230, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant [25 x i8] c"panfrost_exception_infos\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 302, i32 45 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 375, i32 10 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 42, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 47, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 53, i32 55 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 55, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 63, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 102, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 110, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 23, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 146, i32 8 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 147, i32 8 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 157, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 163, i32 6 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 174, i32 4 }
@___asan_gen_.241 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 184, i32 4 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 303, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 304, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 305, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 306, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 307, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 308, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 309, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 310, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 311, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 312, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 313, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 314, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 315, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 316, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 317, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 318, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 319, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 320, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 321, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 322, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 323, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 324, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 325, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 326, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 327, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 328, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 329, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 330, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 331, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 332, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 333, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 334, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 335, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 336, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 337, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 338, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 339, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 340, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 341, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 342, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 343, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 344, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 345, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 346, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 347, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 348, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 349, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 350, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 351, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 352, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 353, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 354, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 355, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 356, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 357, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 358, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 359, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 360, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 361, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 362, i32 2 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 363, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 364, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 365, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 366, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 367, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.443 = private constant [46 x i8] c"../drivers/gpu/drm/panfrost/panfrost_device.c\00", align 1
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 368, i32 2 }
@llvm.compiler.used = appending global [124 x ptr] [ptr @panfrost_clk_init._entry, ptr @panfrost_clk_init._entry.17, ptr @panfrost_clk_init._entry.22, ptr @panfrost_clk_init._entry.25, ptr @panfrost_clk_init._entry_ptr, ptr @panfrost_clk_init._entry_ptr.20, ptr @panfrost_clk_init._entry_ptr.24, ptr @panfrost_clk_init._entry_ptr.27, ptr @panfrost_device_init._entry, ptr @panfrost_device_init._entry.11, ptr @panfrost_device_init._entry.8, ptr @panfrost_device_init._entry_ptr, ptr @panfrost_device_init._entry_ptr.10, ptr @panfrost_device_init._entry_ptr.13, ptr @panfrost_pm_domain_init._entry, ptr @panfrost_pm_domain_init._entry.40, ptr @panfrost_pm_domain_init._entry.43, ptr @panfrost_pm_domain_init._entry_ptr, ptr @panfrost_pm_domain_init._entry_ptr.42, ptr @panfrost_pm_domain_init._entry_ptr.45, ptr @panfrost_regulator_init._entry, ptr @panfrost_regulator_init._entry.30, ptr @panfrost_regulator_init._entry_ptr, ptr @panfrost_regulator_init._entry_ptr.32, ptr @panfrost_reset_init._entry, ptr @panfrost_reset_init._entry_ptr, ptr @panfrost_device_init.__key, ptr @.str, ptr @panfrost_device_init.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @panfrost_exception_infos, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111], section "llvm.metadata"
@0 = internal global [111 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panfrost_device_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panfrost_device_init.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panfrost_device_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panfrost_device_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panfrost_device_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panfrost_exception_infos to i32), i32 960, i32 1184, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panfrost_clk_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panfrost_clk_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panfrost_clk_init._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panfrost_clk_init._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panfrost_regulator_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panfrost_regulator_init._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panfrost_reset_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panfrost_pm_domain_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panfrost_pm_domain_init._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panfrost_pm_domain_init._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @panfrost_device_init(ptr noundef %pfdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sched_lock = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 22
  tail call void @__mutex_init(ptr noundef %sched_lock, ptr noundef nonnull @.str, ptr noundef nonnull @panfrost_device_init.__key) #6
  %scheduled_jobs = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 20
  %0 = ptrtoint ptr %scheduled_jobs to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %scheduled_jobs, ptr %scheduled_jobs, align 4
  %prev.i = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 20, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %scheduled_jobs, ptr %prev.i, align 4
  %as_lru_list = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 17
  %2 = ptrtoint ptr %as_lru_list to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %as_lru_list, ptr %as_lru_list, align 4
  %prev.i102 = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 17, i32 1
  %3 = ptrtoint ptr %prev.i102 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %as_lru_list, ptr %prev.i102, align 4
  %as_lock = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 13
  tail call void @__raw_spin_lock_init(ptr noundef %as_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @panfrost_device_init.__key.1, i16 noundef signext 3) #6
  %4 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pfdev, align 8
  %call.i = tail call ptr @devm_clk_get(ptr noundef %5, ptr noundef null) #6
  %clock.i = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 4
  %6 = ptrtoint ptr %clock.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %clock.i, align 8
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pfdev, align 8
  %9 = ptrtoint ptr %call.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.15, i32 noundef %9) #9
  %10 = ptrtoint ptr %clock.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clock.i, align 8
  %12 = ptrtoint ptr %11 to i32
  br label %panfrost_clk_init.exit

if.end.i:                                         ; preds = %entry
  %call9.i = tail call i32 @clk_get_rate(ptr noundef %call.i) #6
  %13 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pfdev, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str.18, i32 noundef %call9.i) #9
  %15 = ptrtoint ptr %clock.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clock.i, align 8
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.do.end7_crit_edge

if.end.i.do.end7_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7

if.end.i.i:                                       ; preds = %if.end.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end17.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %16) #6
  br label %do.end7

if.end17.i:                                       ; preds = %if.end.i.i
  %17 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pfdev, align 8
  %call19.i = tail call ptr @devm_clk_get_optional(ptr noundef %18, ptr noundef nonnull @.str.21) #6
  %bus_clock.i = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 5
  %19 = ptrtoint ptr %bus_clock.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call19.i, ptr %bus_clock.i, align 4
  %cmp.i72.i = icmp ugt ptr %call19.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i72.i, label %do.end25.i, label %if.end31.i

do.end25.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pfdev, align 8
  %22 = ptrtoint ptr %call19.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.23, i32 noundef %22) #9
  %23 = ptrtoint ptr %bus_clock.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bus_clock.i, align 4
  %25 = ptrtoint ptr %24 to i32
  br label %disable_clock.i

if.end31.i:                                       ; preds = %if.end17.i
  %tobool33.not.i = icmp eq ptr %call19.i, null
  br i1 %tobool33.not.i, label %if.end31.i.if.end_crit_edge, label %if.then34.i

if.end31.i.if.end_crit_edge:                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then34.i:                                      ; preds = %if.end31.i
  %call36.i = tail call i32 @clk_get_rate(ptr noundef nonnull %call19.i) #6
  %26 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pfdev, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %27, ptr noundef nonnull @.str.26, i32 noundef %call36.i) #9
  %28 = ptrtoint ptr %bus_clock.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus_clock.i, align 4
  %call42.i = tail call fastcc i32 @clk_prepare_enable(ptr noundef %29) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool43.not.i = icmp eq i32 %call42.i, 0
  br i1 %tobool43.not.i, label %if.then34.i.if.end_crit_edge, label %if.then34.i.disable_clock.i_crit_edge

if.then34.i.disable_clock.i_crit_edge:            ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_clock.i

if.then34.i.if.end_crit_edge:                     ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

disable_clock.i:                                  ; preds = %if.then34.i.disable_clock.i_crit_edge, %do.end25.i
  %err.0.i = phi i32 [ %25, %do.end25.i ], [ %call42.i, %if.then34.i.disable_clock.i_crit_edge ]
  %30 = ptrtoint ptr %clock.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %clock.i, align 8
  tail call void @clk_disable(ptr noundef %31) #6
  tail call void @clk_unprepare(ptr noundef %31) #6
  br label %panfrost_clk_init.exit

panfrost_clk_init.exit:                           ; preds = %disable_clock.i, %do.end.i
  %retval.0.i = phi i32 [ %12, %do.end.i ], [ %err.0.i, %disable_clock.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %panfrost_clk_init.exit.if.end_crit_edge, label %panfrost_clk_init.exit.do.end7_crit_edge

panfrost_clk_init.exit.do.end7_crit_edge:         ; preds = %panfrost_clk_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7

panfrost_clk_init.exit.if.end_crit_edge:          ; preds = %panfrost_clk_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end7:                                          ; preds = %panfrost_clk_init.exit.do.end7_crit_edge, %if.then3.i.i, %if.end.i.do.end7_crit_edge
  %retval.0.i140 = phi i32 [ %retval.0.i, %panfrost_clk_init.exit.do.end7_crit_edge ], [ %call.i.i, %if.end.i.do.end7_crit_edge ], [ %call1.i.i, %if.then3.i.i ]
  %32 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pfdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.3, i32 noundef %retval.0.i140) #9
  br label %cleanup

if.end:                                           ; preds = %panfrost_clk_init.exit.if.end_crit_edge, %if.then34.i.if.end_crit_edge, %if.end31.i.if.end_crit_edge
  %call8 = tail call i32 @panfrost_devfreq_init(ptr noundef %pfdev) #6
  %34 = zext i32 %call8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call8, label %do.end14 [
    i32 0, label %if.end17
    i32 -517, label %if.end.out_clk_crit_edge
  ]

if.end.out_clk_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_clk

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pfdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.9, i32 noundef %call8) #9
  br label %out_clk

if.end17:                                         ; preds = %if.end
  %opp_of_table_added = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 27, i32 3
  %37 = ptrtoint ptr %opp_of_table_added to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %opp_of_table_added, align 8, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool18.not = icmp eq i8 %38, 0
  br i1 %tobool18.not, label %if.then19, label %if.end17.if.end24_crit_edge

if.end17.if.end24_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then19:                                        ; preds = %if.end17
  %comp.i = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 12
  %39 = ptrtoint ptr %comp.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %comp.i, align 8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  %43 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %42, i32 12) #6
  %44 = extractvalue { i32, i1 } %43, 1
  br i1 %44, label %devm_kcalloc.exit.thread.i, label %devm_kcalloc.exit.i, !prof !221

devm_kcalloc.exit.thread.i:                       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  %regulators54.i = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 6
  %45 = ptrtoint ptr %regulators54.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %regulators54.i, align 8
  br label %out_devfreq

devm_kcalloc.exit.i:                              ; preds = %if.then19
  %46 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pfdev, align 8
  %48 = extractvalue { i32, i1 } %43, 0
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %47, i32 noundef %48, i32 noundef 3520) #6
  %regulators.i = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 6
  %49 = ptrtoint ptr %regulators.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call5.i.i.i, ptr %regulators.i, align 8
  %tobool.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i, label %devm_kcalloc.exit.i.out_devfreq_crit_edge, label %for.cond.preheader.i

devm_kcalloc.exit.i.out_devfreq_crit_edge:        ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_devfreq

for.cond.preheader.i:                             ; preds = %devm_kcalloc.exit.i
  %50 = ptrtoint ptr %comp.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %comp.i, align 8
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp56.i = icmp sgt i32 %53, 0
  br i1 %cmp56.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %54 = phi ptr [ %63, %for.body.i.for.body.i_crit_edge ], [ %51, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.057.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %supply_names.i = getelementptr inbounds %struct.panfrost_compatible, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %supply_names.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %supply_names.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %56, i32 %i.057.i
  %57 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx.i, align 4
  %59 = ptrtoint ptr %regulators.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regulators.i, align 8
  %arrayidx6.i = getelementptr %struct.regulator_bulk_data, ptr %60, i32 %i.057.i
  %61 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %58, ptr %arrayidx6.i, align 4
  %inc.i = add nuw nsw i32 %i.057.i, 1
  %62 = ptrtoint ptr %comp.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %comp.i, align 8
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 4
  %cmp.i = icmp slt i32 %inc.i, %65
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %.lcssa.i = phi i32 [ %53, %for.cond.preheader.i.for.end.i_crit_edge ], [ %65, %for.body.i.for.end.i_crit_edge ]
  %66 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pfdev, align 8
  %68 = ptrtoint ptr %regulators.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regulators.i, align 8
  %call11.i = tail call i32 @devm_regulator_bulk_get(ptr noundef %67, i32 noundef %.lcssa.i, ptr noundef %69) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %if.then13.i, label %if.end18.i

if.then13.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call11.i)
  %cmp14.not.i = icmp eq i32 %call11.i, -517
  br i1 %cmp14.not.i, label %if.then13.i.out_devfreq_crit_edge, label %do.end.i103

if.then13.i.out_devfreq_crit_edge:                ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_devfreq

do.end.i103:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #8
  %70 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pfdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.28, i32 noundef %call11.i) #9
  br label %out_devfreq

if.end18.i:                                       ; preds = %for.end.i
  %72 = ptrtoint ptr %comp.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %comp.i, align 8
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %73, align 4
  %76 = ptrtoint ptr %regulators.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regulators.i, align 8
  %call22.i = tail call i32 @regulator_bulk_enable(i32 noundef %75, ptr noundef %77) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp23.i = icmp slt i32 %call22.i, 0
  br i1 %cmp23.i, label %do.end27.i, label %if.end18.i.if.end24_crit_edge

if.end18.i.if.end24_crit_edge:                    ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

do.end27.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  %78 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pfdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.31, i32 noundef %call22.i) #9
  br label %out_devfreq

if.end24:                                         ; preds = %if.end18.i.if.end24_crit_edge, %if.end17.if.end24_crit_edge
  %80 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pfdev, align 8
  %call.i.i105 = tail call ptr @devm_reset_control_array_get(ptr noundef %81, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %rstc.i = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 7
  %82 = ptrtoint ptr %rstc.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call.i.i105, ptr %rstc.i, align 4
  %cmp.i.i106 = icmp ugt ptr %call.i.i105, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i106, label %do.end.i107, label %if.end.i109

do.end.i107:                                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %83 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pfdev, align 8
  %85 = ptrtoint ptr %call.i.i105 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.33, i32 noundef %85) #9
  %86 = ptrtoint ptr %rstc.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %rstc.i, align 4
  %88 = ptrtoint ptr %87 to i32
  br label %panfrost_reset_init.exit

if.end.i109:                                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i108 = tail call i32 @reset_control_deassert(ptr noundef %call.i.i105) #6
  br label %panfrost_reset_init.exit

panfrost_reset_init.exit:                         ; preds = %if.end.i109, %do.end.i107
  %retval.0.i110 = phi i32 [ %88, %do.end.i107 ], [ %call9.i108, %if.end.i109 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i110)
  %tobool26.not = icmp eq i32 %retval.0.i110, 0
  %89 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pfdev, align 8
  br i1 %tobool26.not, label %if.end32, label %do.end30

do.end30:                                         ; preds = %panfrost_reset_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull @.str.12, i32 noundef %retval.0.i110) #9
  br label %out_regulator

if.end32:                                         ; preds = %panfrost_reset_init.exit
  %of_node.i = getelementptr inbounds %struct.device, ptr %90, i32 0, i32 27
  %91 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %of_node.i, align 8
  %call.i111 = tail call i32 @of_count_phandle_with_args(ptr noundef %92, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i111)
  %cmp.i112 = icmp slt i32 %call.i111, 2
  br i1 %cmp.i112, label %land.lhs.true.i, label %if.end32.if.end.i114_crit_edge

if.end32.if.end.i114_crit_edge:                   ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i114

land.lhs.true.i:                                  ; preds = %if.end32
  %comp.i113 = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 12
  %93 = ptrtoint ptr %comp.i113 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %comp.i113, align 8
  %num_pm_domains.i = getelementptr inbounds %struct.panfrost_compatible, ptr %94, i32 0, i32 2
  %95 = ptrtoint ptr %num_pm_domains.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %num_pm_domains.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %96)
  %cmp1.i = icmp slt i32 %96, 2
  br i1 %cmp1.i, label %land.lhs.true.i.if.end36_crit_edge, label %land.lhs.true.i.if.end.i114_crit_edge

land.lhs.true.i.if.end.i114_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i114

land.lhs.true.i.if.end36_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.end.i114:                                      ; preds = %land.lhs.true.i.if.end.i114_crit_edge, %if.end32.if.end.i114_crit_edge
  %comp2.i = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 12
  %97 = ptrtoint ptr %comp2.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %comp2.i, align 8
  %num_pm_domains3.i = getelementptr inbounds %struct.panfrost_compatible, ptr %98, i32 0, i32 2
  %99 = ptrtoint ptr %num_pm_domains3.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %num_pm_domains3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i111, i32 %100)
  %cmp4.not.i = icmp eq i32 %call.i111, %100
  br i1 %cmp4.not.i, label %if.end9.i, label %do.end.i115

do.end.i115:                                      ; preds = %if.end.i114
  call void @__sanitizer_cov_trace_pc() #8
  %101 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pfdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %102, ptr noundef nonnull @.str.37, i32 noundef %call.i111, i32 noundef %100) #9
  br label %out_reset

if.end9.i:                                        ; preds = %if.end.i114
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i111)
  %cmp10.i = icmp ugt i32 %call.i111, 3
  br i1 %cmp10.i, label %do.end21.i, label %for.cond.preheader.i116, !prof !221

for.cond.preheader.i116:                          ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i111)
  %cmp37118.not.i = icmp eq i32 %call.i111, 0
  br i1 %cmp37118.not.i, label %for.cond.preheader.i116.if.end36_crit_edge, label %for.body.i120

for.cond.preheader.i116.if.end36_crit_edge:       ; preds = %for.cond.preheader.i116
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

do.end21.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 164, i32 noundef 9, ptr noundef nonnull @.str.39) #6
  br label %out_reset

for.body.i120:                                    ; preds = %for.cond.preheader.i116
  %103 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %pfdev, align 8
  %105 = ptrtoint ptr %comp2.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %comp2.i, align 8
  %pm_domain_names.i = getelementptr inbounds %struct.panfrost_compatible, ptr %106, i32 0, i32 3
  %107 = ptrtoint ptr %pm_domain_names.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %pm_domain_names.i, align 4
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %108, align 4
  %call40.i = tail call ptr @dev_pm_domain_attach_by_name(ptr noundef %104, ptr noundef %110) #6
  %arrayidx41.i = getelementptr %struct.panfrost_device, ptr %pfdev, i32 0, i32 8, i32 0
  %111 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %call40.i, ptr %arrayidx41.i, align 4
  %tobool.not.i.i118 = icmp eq ptr %call40.i, null
  %cmp.i.i119 = icmp ugt ptr %call40.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i118, %cmp.i.i119
  br i1 %spec.select.i.i, label %for.body.i120.panfrost_pm_domain_init.exit_crit_edge, label %if.end59.i

for.body.i120.panfrost_pm_domain_init.exit_crit_edge: ; preds = %for.body.i120
  call void @__sanitizer_cov_trace_pc() #8
  br label %panfrost_pm_domain_init.exit

if.end59.i:                                       ; preds = %for.body.i120
  %112 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %pfdev, align 8
  %call63.i = tail call ptr @device_link_add(ptr noundef %113, ptr noundef nonnull %call40.i, i32 noundef 13) #6
  %arrayidx64.i = getelementptr %struct.panfrost_device, ptr %pfdev, i32 0, i32 9, i32 0
  %114 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %call63.i, ptr %arrayidx64.i, align 4
  %tobool67.not.i = icmp eq ptr %call63.i, null
  br i1 %tobool67.not.i, label %if.end59.i.panfrost_pm_domain_init.exit.thread149_crit_edge, label %for.inc.i

if.end59.i.panfrost_pm_domain_init.exit.thread149_crit_edge: ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %panfrost_pm_domain_init.exit.thread149

panfrost_pm_domain_init.exit.thread149:           ; preds = %if.end59.i.2.panfrost_pm_domain_init.exit.thread149_crit_edge, %if.end59.i.1.panfrost_pm_domain_init.exit.thread149_crit_edge, %if.end59.i.panfrost_pm_domain_init.exit.thread149_crit_edge
  %arrayidx41.i.lcssa186 = phi ptr [ %arrayidx41.i, %if.end59.i.panfrost_pm_domain_init.exit.thread149_crit_edge ], [ %arrayidx41.i.1, %if.end59.i.1.panfrost_pm_domain_init.exit.thread149_crit_edge ], [ %arrayidx41.i.2, %if.end59.i.2.panfrost_pm_domain_init.exit.thread149_crit_edge ]
  %115 = ptrtoint ptr %arrayidx41.i.lcssa186 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %arrayidx41.i.lcssa186, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %116, ptr noundef nonnull @.str.44) #9
  tail call fastcc void @panfrost_pm_domain_fini(ptr noundef %pfdev) #6
  br label %out_reset

for.inc.i:                                        ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i111)
  %exitcond.not.i = icmp eq i32 %call.i111, 1
  br i1 %exitcond.not.i, label %for.inc.i.if.end36_crit_edge, label %for.body.i120.1

for.inc.i.if.end36_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

for.body.i120.1:                                  ; preds = %for.inc.i
  %117 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %pfdev, align 8
  %119 = ptrtoint ptr %comp2.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %comp2.i, align 8
  %pm_domain_names.i.1 = getelementptr inbounds %struct.panfrost_compatible, ptr %120, i32 0, i32 3
  %121 = ptrtoint ptr %pm_domain_names.i.1 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %pm_domain_names.i.1, align 4
  %arrayidx.i117.1 = getelementptr ptr, ptr %122, i32 1
  %123 = ptrtoint ptr %arrayidx.i117.1 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %arrayidx.i117.1, align 4
  %call40.i.1 = tail call ptr @dev_pm_domain_attach_by_name(ptr noundef %118, ptr noundef %124) #6
  %arrayidx41.i.1 = getelementptr %struct.panfrost_device, ptr %pfdev, i32 0, i32 8, i32 1
  %125 = ptrtoint ptr %arrayidx41.i.1 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %call40.i.1, ptr %arrayidx41.i.1, align 4
  %tobool.not.i.i118.1 = icmp eq ptr %call40.i.1, null
  %cmp.i.i119.1 = icmp ugt ptr %call40.i.1, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.1 = or i1 %tobool.not.i.i118.1, %cmp.i.i119.1
  br i1 %spec.select.i.i.1, label %for.body.i120.1.panfrost_pm_domain_init.exit_crit_edge, label %if.end59.i.1

for.body.i120.1.panfrost_pm_domain_init.exit_crit_edge: ; preds = %for.body.i120.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %panfrost_pm_domain_init.exit

if.end59.i.1:                                     ; preds = %for.body.i120.1
  %126 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %pfdev, align 8
  %call63.i.1 = tail call ptr @device_link_add(ptr noundef %127, ptr noundef nonnull %call40.i.1, i32 noundef 13) #6
  %arrayidx64.i.1 = getelementptr %struct.panfrost_device, ptr %pfdev, i32 0, i32 9, i32 1
  %128 = ptrtoint ptr %arrayidx64.i.1 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %call63.i.1, ptr %arrayidx64.i.1, align 4
  %tobool67.not.i.1 = icmp eq ptr %call63.i.1, null
  br i1 %tobool67.not.i.1, label %if.end59.i.1.panfrost_pm_domain_init.exit.thread149_crit_edge, label %for.inc.i.1

if.end59.i.1.panfrost_pm_domain_init.exit.thread149_crit_edge: ; preds = %if.end59.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %panfrost_pm_domain_init.exit.thread149

for.inc.i.1:                                      ; preds = %if.end59.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i111)
  %exitcond.not.i.1 = icmp eq i32 %call.i111, 2
  br i1 %exitcond.not.i.1, label %for.inc.i.1.if.end36_crit_edge, label %for.body.i120.2

for.inc.i.1.if.end36_crit_edge:                   ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

for.body.i120.2:                                  ; preds = %for.inc.i.1
  %129 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %pfdev, align 8
  %131 = ptrtoint ptr %comp2.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %comp2.i, align 8
  %pm_domain_names.i.2 = getelementptr inbounds %struct.panfrost_compatible, ptr %132, i32 0, i32 3
  %133 = ptrtoint ptr %pm_domain_names.i.2 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %pm_domain_names.i.2, align 4
  %arrayidx.i117.2 = getelementptr ptr, ptr %134, i32 2
  %135 = ptrtoint ptr %arrayidx.i117.2 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %arrayidx.i117.2, align 4
  %call40.i.2 = tail call ptr @dev_pm_domain_attach_by_name(ptr noundef %130, ptr noundef %136) #6
  %arrayidx41.i.2 = getelementptr %struct.panfrost_device, ptr %pfdev, i32 0, i32 8, i32 2
  %137 = ptrtoint ptr %arrayidx41.i.2 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %call40.i.2, ptr %arrayidx41.i.2, align 4
  %tobool.not.i.i118.2 = icmp eq ptr %call40.i.2, null
  %cmp.i.i119.2 = icmp ugt ptr %call40.i.2, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.2 = or i1 %tobool.not.i.i118.2, %cmp.i.i119.2
  br i1 %spec.select.i.i.2, label %for.body.i120.2.panfrost_pm_domain_init.exit_crit_edge, label %if.end59.i.2

for.body.i120.2.panfrost_pm_domain_init.exit_crit_edge: ; preds = %for.body.i120.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %panfrost_pm_domain_init.exit

if.end59.i.2:                                     ; preds = %for.body.i120.2
  %138 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %pfdev, align 8
  %call63.i.2 = tail call ptr @device_link_add(ptr noundef %139, ptr noundef nonnull %call40.i.2, i32 noundef 13) #6
  %arrayidx64.i.2 = getelementptr %struct.panfrost_device, ptr %pfdev, i32 0, i32 9, i32 2
  %140 = ptrtoint ptr %arrayidx64.i.2 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %call63.i.2, ptr %arrayidx64.i.2, align 4
  %tobool67.not.i.2 = icmp eq ptr %call63.i.2, null
  br i1 %tobool67.not.i.2, label %if.end59.i.2.panfrost_pm_domain_init.exit.thread149_crit_edge, label %if.end59.i.2.if.end36_crit_edge

if.end59.i.2.if.end36_crit_edge:                  ; preds = %if.end59.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.end59.i.2.panfrost_pm_domain_init.exit.thread149_crit_edge: ; preds = %if.end59.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %panfrost_pm_domain_init.exit.thread149

panfrost_pm_domain_init.exit:                     ; preds = %for.body.i120.2.panfrost_pm_domain_init.exit_crit_edge, %for.body.i120.1.panfrost_pm_domain_init.exit_crit_edge, %for.body.i120.panfrost_pm_domain_init.exit_crit_edge
  %i.0119.i.lcssa = phi i32 [ 0, %for.body.i120.panfrost_pm_domain_init.exit_crit_edge ], [ 1, %for.body.i120.1.panfrost_pm_domain_init.exit_crit_edge ], [ 2, %for.body.i120.2.panfrost_pm_domain_init.exit_crit_edge ]
  %call40.i.lcssa = phi ptr [ %call40.i, %for.body.i120.panfrost_pm_domain_init.exit_crit_edge ], [ %call40.i.1, %for.body.i120.1.panfrost_pm_domain_init.exit_crit_edge ], [ %call40.i.2, %for.body.i120.2.panfrost_pm_domain_init.exit_crit_edge ]
  %arrayidx41.i.lcssa = phi ptr [ %arrayidx41.i, %for.body.i120.panfrost_pm_domain_init.exit_crit_edge ], [ %arrayidx41.i.1, %for.body.i120.1.panfrost_pm_domain_init.exit_crit_edge ], [ %arrayidx41.i.2, %for.body.i120.2.panfrost_pm_domain_init.exit_crit_edge ]
  %tobool.not.i.i118.lcssa = phi i1 [ %tobool.not.i.i118, %for.body.i120.panfrost_pm_domain_init.exit_crit_edge ], [ %tobool.not.i.i118.1, %for.body.i120.1.panfrost_pm_domain_init.exit_crit_edge ], [ %tobool.not.i.i118.2, %for.body.i120.2.panfrost_pm_domain_init.exit_crit_edge ]
  %141 = ptrtoint ptr %call40.i.lcssa to i32
  %call48..i = select i1 %tobool.not.i.i118.lcssa, i32 -61, i32 %141
  %142 = ptrtoint ptr %arrayidx41.i.lcssa to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr null, ptr %arrayidx41.i.lcssa, align 4
  %143 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %pfdev, align 8
  %145 = ptrtoint ptr %comp2.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %comp2.i, align 8
  %pm_domain_names57.i = getelementptr inbounds %struct.panfrost_compatible, ptr %146, i32 0, i32 3
  %147 = ptrtoint ptr %pm_domain_names57.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %pm_domain_names57.i, align 4
  %arrayidx58.i = getelementptr ptr, ptr %148, i32 %i.0119.i.lcssa
  %149 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %arrayidx58.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %144, ptr noundef nonnull @.str.41, ptr noundef %150, i32 noundef %i.0119.i.lcssa, i32 noundef %call48..i) #9
  tail call fastcc void @panfrost_pm_domain_fini(ptr noundef %pfdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48..i)
  %tobool34.not = icmp eq i32 %call48..i, 0
  br i1 %tobool34.not, label %panfrost_pm_domain_init.exit.if.end36_crit_edge, label %panfrost_pm_domain_init.exit.out_reset_crit_edge

panfrost_pm_domain_init.exit.out_reset_crit_edge: ; preds = %panfrost_pm_domain_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_reset

panfrost_pm_domain_init.exit.if.end36_crit_edge:  ; preds = %panfrost_pm_domain_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.end36:                                         ; preds = %panfrost_pm_domain_init.exit.if.end36_crit_edge, %if.end59.i.2.if.end36_crit_edge, %for.inc.i.1.if.end36_crit_edge, %for.inc.i.if.end36_crit_edge, %for.cond.preheader.i116.if.end36_crit_edge, %land.lhs.true.i.if.end36_crit_edge
  %pdev = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 2
  %151 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %pdev, align 8
  %call37 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %152, i32 noundef 0) #6
  %iomem = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 3
  %153 = ptrtoint ptr %iomem to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %call37, ptr %iomem, align 4
  %cmp.i124 = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i124, label %if.then40, label %if.end43

if.then40:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %154 = ptrtoint ptr %call37 to i32
  br label %out_pm_domain

if.end43:                                         ; preds = %if.end36
  %call44 = tail call i32 @panfrost_gpu_init(ptr noundef %pfdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end43.out_pm_domain_crit_edge

if.end43.out_pm_domain_crit_edge:                 ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_pm_domain

if.end47:                                         ; preds = %if.end43
  %call48 = tail call i32 @panfrost_mmu_init(ptr noundef %pfdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.end47.out_gpu_crit_edge

if.end47.out_gpu_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_gpu

if.end51:                                         ; preds = %if.end47
  %call52 = tail call i32 @panfrost_job_init(ptr noundef %pfdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %if.end51.out_mmu_crit_edge

if.end51.out_mmu_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_mmu

if.end55:                                         ; preds = %if.end51
  %call56 = tail call i32 @panfrost_perfcnt_init(ptr noundef %pfdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end55.cleanup_crit_edge, label %out_job

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

out_job:                                          ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @panfrost_job_fini(ptr noundef %pfdev) #6
  br label %out_mmu

out_mmu:                                          ; preds = %out_job, %if.end51.out_mmu_crit_edge
  %err.0 = phi i32 [ %call52, %if.end51.out_mmu_crit_edge ], [ %call56, %out_job ]
  tail call void @panfrost_mmu_fini(ptr noundef %pfdev) #6
  br label %out_gpu

out_gpu:                                          ; preds = %out_mmu, %if.end47.out_gpu_crit_edge
  %err.1 = phi i32 [ %call48, %if.end47.out_gpu_crit_edge ], [ %err.0, %out_mmu ]
  tail call void @panfrost_gpu_fini(ptr noundef %pfdev) #6
  br label %out_pm_domain

out_pm_domain:                                    ; preds = %out_gpu, %if.end43.out_pm_domain_crit_edge, %if.then40
  %err.2 = phi i32 [ %154, %if.then40 ], [ %call44, %if.end43.out_pm_domain_crit_edge ], [ %err.1, %out_gpu ]
  tail call fastcc void @panfrost_pm_domain_fini(ptr noundef %pfdev)
  br label %out_reset

out_reset:                                        ; preds = %out_pm_domain, %panfrost_pm_domain_init.exit.out_reset_crit_edge, %panfrost_pm_domain_init.exit.thread149, %do.end21.i, %do.end.i115
  %err.3 = phi i32 [ %call48..i, %panfrost_pm_domain_init.exit.out_reset_crit_edge ], [ %err.2, %out_pm_domain ], [ -19, %panfrost_pm_domain_init.exit.thread149 ], [ -22, %do.end.i115 ], [ -22, %do.end21.i ]
  %155 = ptrtoint ptr %rstc.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %rstc.i, align 4
  %call.i126 = tail call i32 @reset_control_assert(ptr noundef %156) #6
  br label %out_regulator

out_regulator:                                    ; preds = %out_reset, %do.end30
  %err.4 = phi i32 [ %retval.0.i110, %do.end30 ], [ %err.3, %out_reset ]
  %regulators.i127 = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 6
  %157 = ptrtoint ptr %regulators.i127 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %regulators.i127, align 8
  %tobool.not.i128 = icmp eq ptr %158, null
  br i1 %tobool.not.i128, label %out_regulator.out_devfreq_crit_edge, label %if.end.i131

out_regulator.out_devfreq_crit_edge:              ; preds = %out_regulator
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_devfreq

if.end.i131:                                      ; preds = %out_regulator
  call void @__sanitizer_cov_trace_pc() #8
  %comp.i129 = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 12
  %159 = ptrtoint ptr %comp.i129 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %comp.i129, align 8
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %160, align 4
  %call.i130 = tail call i32 @regulator_bulk_disable(i32 noundef %162, ptr noundef nonnull %158) #6
  br label %out_devfreq

out_devfreq:                                      ; preds = %if.end.i131, %out_regulator.out_devfreq_crit_edge, %do.end27.i, %do.end.i103, %if.then13.i.out_devfreq_crit_edge, %devm_kcalloc.exit.i.out_devfreq_crit_edge, %devm_kcalloc.exit.thread.i
  %err.5 = phi i32 [ %err.4, %out_regulator.out_devfreq_crit_edge ], [ %err.4, %if.end.i131 ], [ -12, %devm_kcalloc.exit.thread.i ], [ -517, %if.then13.i.out_devfreq_crit_edge ], [ %call11.i, %do.end.i103 ], [ -12, %devm_kcalloc.exit.i.out_devfreq_crit_edge ], [ %call22.i, %do.end27.i ]
  tail call void @panfrost_devfreq_fini(ptr noundef %pfdev) #6
  br label %out_clk

out_clk:                                          ; preds = %out_devfreq, %do.end14, %if.end.out_clk_crit_edge
  %err.6 = phi i32 [ %call8, %do.end14 ], [ %err.5, %out_devfreq ], [ %call8, %if.end.out_clk_crit_edge ]
  %bus_clock.i132 = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 5
  %163 = ptrtoint ptr %bus_clock.i132 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %bus_clock.i132, align 4
  tail call void @clk_disable(ptr noundef %164) #6
  tail call void @clk_unprepare(ptr noundef %164) #6
  %165 = ptrtoint ptr %clock.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %clock.i, align 8
  tail call void @clk_disable(ptr noundef %166) #6
  tail call void @clk_unprepare(ptr noundef %166) #6
  br label %cleanup

cleanup:                                          ; preds = %out_clk, %if.end55.cleanup_crit_edge, %do.end7
  %retval.0 = phi i32 [ %retval.0.i140, %do.end7 ], [ %err.6, %out_clk ], [ 0, %if.end55.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @panfrost_devfreq_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @panfrost_gpu_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @panfrost_mmu_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @panfrost_job_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @panfrost_perfcnt_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_job_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_mmu_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_gpu_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @panfrost_pm_domain_fini(ptr nocapture noundef readonly %pfdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.panfrost_device, ptr %pfdev, i32 0, i32 8, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.for.end_crit_edge, label %if.end

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end:                                           ; preds = %entry
  %arrayidx1 = getelementptr %struct.panfrost_device, ptr %pfdev, i32 0, i32 9, i32 0
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx1, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @device_link_del(ptr noundef nonnull %3) #6
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void @dev_pm_domain_detach(ptr noundef %5, i1 noundef zeroext true) #6
  %arrayidx.1 = getelementptr %struct.panfrost_device, ptr %pfdev, i32 0, i32 8, i32 1
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %7, null
  br i1 %tobool.not.1, label %if.end6.for.end_crit_edge, label %if.end.1

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end.1:                                         ; preds = %if.end6
  %arrayidx1.1 = getelementptr %struct.panfrost_device, ptr %pfdev, i32 0, i32 9, i32 1
  %8 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx1.1, align 4
  %tobool2.not.1 = icmp eq ptr %9, null
  br i1 %tobool2.not.1, label %if.end.1.if.end6.1_crit_edge, label %if.then3.1

if.end.1.if.end6.1_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.1

if.then3.1:                                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @device_link_del(ptr noundef nonnull %9) #6
  br label %if.end6.1

if.end6.1:                                        ; preds = %if.then3.1, %if.end.1.if.end6.1_crit_edge
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.1, align 4
  tail call void @dev_pm_domain_detach(ptr noundef %11, i1 noundef zeroext true) #6
  %arrayidx.2 = getelementptr %struct.panfrost_device, ptr %pfdev, i32 0, i32 8, i32 2
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %13, null
  br i1 %tobool.not.2, label %if.end6.1.for.end_crit_edge, label %if.end.2

if.end6.1.for.end_crit_edge:                      ; preds = %if.end6.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end.2:                                         ; preds = %if.end6.1
  %arrayidx1.2 = getelementptr %struct.panfrost_device, ptr %pfdev, i32 0, i32 9, i32 2
  %14 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx1.2, align 4
  %tobool2.not.2 = icmp eq ptr %15, null
  br i1 %tobool2.not.2, label %if.end.2.if.end6.2_crit_edge, label %if.then3.2

if.end.2.if.end6.2_crit_edge:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.2

if.then3.2:                                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @device_link_del(ptr noundef nonnull %15) #6
  br label %if.end6.2

if.end6.2:                                        ; preds = %if.then3.2, %if.end.2.if.end6.2_crit_edge
  %16 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.2, align 4
  tail call void @dev_pm_domain_detach(ptr noundef %17, i1 noundef zeroext true) #6
  br label %for.end

for.end:                                          ; preds = %if.end6.2, %if.end6.1.for.end_crit_edge, %if.end6.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_devfreq_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @panfrost_device_fini(ptr noundef %pfdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @panfrost_perfcnt_fini(ptr noundef %pfdev) #6
  tail call void @panfrost_job_fini(ptr noundef %pfdev) #6
  tail call void @panfrost_mmu_fini(ptr noundef %pfdev) #6
  tail call void @panfrost_gpu_fini(ptr noundef %pfdev) #6
  tail call fastcc void @panfrost_pm_domain_fini(ptr noundef %pfdev)
  %rstc.i = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 7
  %0 = ptrtoint ptr %rstc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rstc.i, align 4
  %call.i = tail call i32 @reset_control_assert(ptr noundef %1) #6
  tail call void @panfrost_devfreq_fini(ptr noundef %pfdev) #6
  %regulators.i = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 6
  %2 = ptrtoint ptr %regulators.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regulators.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.panfrost_regulator_fini.exit_crit_edge, label %if.end.i

entry.panfrost_regulator_fini.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %panfrost_regulator_fini.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %comp.i = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 12
  %4 = ptrtoint ptr %comp.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %comp.i, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %call.i9 = tail call i32 @regulator_bulk_disable(i32 noundef %7, ptr noundef nonnull %3) #6
  br label %panfrost_regulator_fini.exit

panfrost_regulator_fini.exit:                     ; preds = %if.end.i, %entry.panfrost_regulator_fini.exit_crit_edge
  %bus_clock.i = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 5
  %8 = ptrtoint ptr %bus_clock.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus_clock.i, align 4
  tail call void @clk_disable(ptr noundef %9) #6
  tail call void @clk_unprepare(ptr noundef %9) #6
  %clock.i = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 4
  %10 = ptrtoint ptr %clock.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clock.i, align 8
  tail call void @clk_disable(ptr noundef %11) #6
  tail call void @clk_unprepare(ptr noundef %11) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_perfcnt_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @panfrost_exception_name(i32 noundef %exception_code) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 239, i32 %exception_code)
  %cmp = icmp ugt i32 %exception_code, 239
  br i1 %cmp, label %entry.do.end_crit_edge, label %lor.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %arrayidx = getelementptr [240 x %struct.panfrost_exception_info], ptr @panfrost_exception_infos, i32 0, i32 %exception_code
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %lor.rhs.do.end_crit_edge, label %lor.rhs.return_crit_edge, !prof !221

lor.rhs.return_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 374, i32 noundef 9, ptr noundef null) #6
  br label %return

return:                                           ; preds = %do.end, %lor.rhs.return_crit_edge
  %retval.0 = phi ptr [ @.str.14, %do.end ], [ %1, %lor.rhs.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @panfrost_exception_needs_reset(ptr nocapture noundef readnone %pfdev, i32 noundef %exception_code) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 false
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @panfrost_device_reset(ptr noundef %pfdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @panfrost_gpu_soft_reset(ptr noundef %pfdev) #6
  tail call void @panfrost_gpu_power_on(ptr noundef %pfdev) #6
  tail call void @panfrost_mmu_reset(ptr noundef %pfdev) #6
  tail call void @panfrost_job_enable_interrupts(ptr noundef %pfdev) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @panfrost_gpu_soft_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_gpu_power_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_mmu_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_job_enable_interrupts(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @panfrost_device_resume(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @panfrost_gpu_soft_reset(ptr noundef %1) #6
  tail call void @panfrost_gpu_power_on(ptr noundef %1) #6
  tail call void @panfrost_mmu_reset(ptr noundef %1) #6
  tail call void @panfrost_job_enable_interrupts(ptr noundef %1) #6
  tail call void @panfrost_devfreq_resume(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_devfreq_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @panfrost_device_suspend(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @panfrost_job_is_idle(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @panfrost_devfreq_suspend(ptr noundef %1) #6
  tail call void @panfrost_gpu_power_off(ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @panfrost_job_is_idle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_devfreq_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_gpu_power_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %clk) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_reset_control_array_get(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_count_phandle_with_args(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_domain_attach_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_link_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_link_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_domain_detach(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 111)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 111)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !26, !27, !28, !29, !31, !32, !33, !34, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57, !58, !60, !62, !64, !65, !66, !67, !69, !71, !72, !73, !75, !76, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209}
!llvm.module.flags = !{!211, !212, !213, !214, !215, !216, !217, !218}
!llvm.ident = !{!219}

!0 = !{ptr @panfrost_device_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 202, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @panfrost_device_init.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 206, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 210, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @panfrost_device_init._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @panfrost_device_init._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 217, i32 4}
!16 = !{ptr @panfrost_device_init._entry.8, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @panfrost_device_init._entry_ptr.10, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 230, i32 3}
!20 = !{ptr @panfrost_device_init._entry.11, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @panfrost_device_init._entry_ptr.13, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 375, i32 10}
!24 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 42, i32 3}
!26 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @panfrost_clk_init._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @panfrost_clk_init._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 47, i32 2}
!31 = !{ptr @.str.19, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @panfrost_clk_init._entry.17, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @panfrost_clk_init._entry_ptr.20, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.21, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 53, i32 55}
!36 = !{ptr @.str.23, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 55, i32 3}
!38 = !{ptr @panfrost_clk_init._entry.22, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @panfrost_clk_init._entry_ptr.24, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.26, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 63, i32 3}
!42 = !{ptr @panfrost_clk_init._entry.25, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @panfrost_clk_init._entry_ptr.27, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.28, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 102, i32 4}
!46 = !{ptr @.str.29, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @panfrost_regulator_init._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @panfrost_regulator_init._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.31, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 110, i32 3}
!51 = !{ptr @panfrost_regulator_init._entry.30, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @panfrost_regulator_init._entry_ptr.32, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.33, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 23, i32 3}
!55 = !{ptr @.str.34, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @panfrost_reset_init._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @panfrost_reset_init._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.35, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 146, i32 8}
!60 = !{ptr @.str.36, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 147, i32 8}
!62 = !{ptr @.str.37, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 157, i32 3}
!64 = !{ptr @.str.38, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @panfrost_pm_domain_init._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @panfrost_pm_domain_init._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.39, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 163, i32 6}
!69 = !{ptr @.str.41, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 174, i32 4}
!71 = !{ptr @panfrost_pm_domain_init._entry.40, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @panfrost_pm_domain_init._entry_ptr.42, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.44, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 184, i32 4}
!75 = !{ptr @panfrost_pm_domain_init._entry.43, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @panfrost_pm_domain_init._entry_ptr.45, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.46, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 303, i32 2}
!79 = !{ptr @.str.47, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 304, i32 2}
!81 = !{ptr @.str.48, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 305, i32 2}
!83 = !{ptr @.str.49, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 306, i32 2}
!85 = !{ptr @.str.50, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 307, i32 2}
!87 = !{ptr @.str.51, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 308, i32 2}
!89 = !{ptr @.str.52, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 309, i32 2}
!91 = !{ptr @.str.53, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 310, i32 2}
!93 = !{ptr @.str.54, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 311, i32 2}
!95 = !{ptr @.str.55, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 312, i32 2}
!97 = !{ptr @.str.56, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 313, i32 2}
!99 = !{ptr @.str.57, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 314, i32 2}
!101 = !{ptr @.str.58, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 315, i32 2}
!103 = !{ptr @.str.59, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 316, i32 2}
!105 = !{ptr @.str.60, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 317, i32 2}
!107 = !{ptr @.str.61, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 318, i32 2}
!109 = !{ptr @.str.62, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 319, i32 2}
!111 = !{ptr @.str.63, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 320, i32 2}
!113 = !{ptr @.str.64, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 321, i32 2}
!115 = !{ptr @.str.65, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 322, i32 2}
!117 = !{ptr @.str.66, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 323, i32 2}
!119 = !{ptr @.str.67, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 324, i32 2}
!121 = !{ptr @.str.68, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 325, i32 2}
!123 = !{ptr @.str.69, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 326, i32 2}
!125 = !{ptr @.str.70, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 327, i32 2}
!127 = !{ptr @.str.71, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 328, i32 2}
!129 = !{ptr @.str.72, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 329, i32 2}
!131 = !{ptr @.str.73, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 330, i32 2}
!133 = !{ptr @.str.74, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 331, i32 2}
!135 = !{ptr @.str.75, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 332, i32 2}
!137 = !{ptr @.str.76, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 333, i32 2}
!139 = !{ptr @.str.77, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 334, i32 2}
!141 = !{ptr @.str.78, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 335, i32 2}
!143 = !{ptr @.str.79, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 336, i32 2}
!145 = !{ptr @.str.80, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 337, i32 2}
!147 = !{ptr @.str.81, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 338, i32 2}
!149 = !{ptr @.str.82, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 339, i32 2}
!151 = !{ptr @.str.83, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 340, i32 2}
!153 = !{ptr @.str.84, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 341, i32 2}
!155 = !{ptr @.str.85, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 342, i32 2}
!157 = !{ptr @.str.86, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 343, i32 2}
!159 = !{ptr @.str.87, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 344, i32 2}
!161 = !{ptr @.str.88, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 345, i32 2}
!163 = !{ptr @.str.89, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 346, i32 2}
!165 = !{ptr @.str.90, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 347, i32 2}
!167 = !{ptr @.str.91, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 348, i32 2}
!169 = !{ptr @.str.92, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 349, i32 2}
!171 = !{ptr @.str.93, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 350, i32 2}
!173 = !{ptr @.str.94, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 351, i32 2}
!175 = !{ptr @.str.95, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 352, i32 2}
!177 = !{ptr @.str.96, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 353, i32 2}
!179 = !{ptr @.str.97, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 354, i32 2}
!181 = !{ptr @.str.98, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 355, i32 2}
!183 = !{ptr @.str.99, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 356, i32 2}
!185 = !{ptr @.str.100, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 357, i32 2}
!187 = !{ptr @.str.101, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 358, i32 2}
!189 = !{ptr @.str.102, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 359, i32 2}
!191 = !{ptr @.str.103, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 360, i32 2}
!193 = !{ptr @.str.104, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 361, i32 2}
!195 = !{ptr @.str.105, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 362, i32 2}
!197 = !{ptr @.str.106, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 363, i32 2}
!199 = !{ptr @.str.107, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 364, i32 2}
!201 = !{ptr @.str.108, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 365, i32 2}
!203 = !{ptr @.str.109, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 366, i32 2}
!205 = !{ptr @.str.110, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 367, i32 2}
!207 = !{ptr @.str.111, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 368, i32 2}
!209 = !{ptr @panfrost_exception_infos, !210, !"panfrost_exception_infos", i1 false, i1 false}
!210 = !{!"../drivers/gpu/drm/panfrost/panfrost_device.c", i32 302, i32 45}
!211 = !{i32 1, !"wchar_size", i32 2}
!212 = !{i32 1, !"min_enum_size", i32 4}
!213 = !{i32 8, !"branch-target-enforcement", i32 0}
!214 = !{i32 8, !"sign-return-address", i32 0}
!215 = !{i32 8, !"sign-return-address-all", i32 0}
!216 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!217 = !{i32 7, !"uwtable", i32 1}
!218 = !{i32 7, !"frame-pointer", i32 2}
!219 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!220 = !{i8 0, i8 2}
!221 = !{!"branch_weights", i32 1, i32 2000}
