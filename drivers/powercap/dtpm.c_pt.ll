; ModuleID = '/llk/IR_all_yes/drivers/powercap/dtpm.c_pt.bc'
source_filename = "../drivers/powercap/dtpm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.powercap_zone_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.powercap_zone_constraint_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dtpm = type { %struct.powercap_zone, ptr, %struct.list_head, %struct.list_head, ptr, i32, i64, i64, i64, i32 }
%struct.powercap_zone = type { i32, ptr, ptr, ptr, %struct.device, i32, %struct.idr, ptr, ptr, ptr, i32, %struct.attribute_group, [2 x ptr], i8, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.dtpm_ops = type { ptr, ptr, ptr, ptr }

@dtpm_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @dtpm_lock, i64 52), ptr getelementptr (i8, ptr @dtpm_lock, i64 52) }, ptr @dtpm_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@root = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@pct = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@dtpm_unregister.__UNIQUE_ID_ddebug191 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 96, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dtpm\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dtpm_unregister\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/powercap/dtpm.c\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unregistered dtpm node '%s'\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"dtpm: Unregistered dtpm node '%s'\0A\00", [61 x i8] zeroinitializer }, align 32
@zone_ops = internal global { %struct.powercap_zone_ops, [32 x i8] } { %struct.powercap_zone_ops { ptr null, ptr null, ptr null, ptr @get_max_power_range_uw, ptr @get_power_uw, ptr null, ptr null, ptr @dtpm_release_zone }, [32 x i8] zeroinitializer }, align 32
@constraint_ops = internal global { %struct.powercap_zone_constraint_ops, [60 x i8] } { %struct.powercap_zone_constraint_ops { ptr @set_power_limit_uw, ptr @get_power_limit_uw, ptr @set_time_window_us, ptr @get_time_window_us, ptr @get_max_power_uw, ptr null, ptr null, ptr null, ptr @get_constraint_name }, [60 x i8] zeroinitializer }, align 32
@dtpm_register.__UNIQUE_ID_ddebug192 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 114, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dtpm_register\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Registered dtpm node '%s' / %llu-%llu uW, \0A\00", [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"dtpm: Registered dtpm node '%s' / %llu-%llu uW, \0A\00", [46 x i8] zeroinitializer }, align 32
@__initcall__kmod_dtpm__193_474_init_dtpm7 = internal global ptr @init_dtpm, section ".initcall7.init", align 4
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dtpm_lock.wait_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dtpm_lock\00", [22 x i8] zeroinitializer }, align 32
@__dtpm_update_power._entry = internal constant %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 142, ptr null, ptr null }, align 1
@.str.10 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013dtpm: Failed to update power for '%s': %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__dtpm_update_power\00", [44 x i8] zeroinitializer }, align 32
@__dtpm_update_power._entry_ptr = internal global ptr @__dtpm_update_power._entry, section ".printk_index", align 4
@__dtpm_rebalance_weight.__UNIQUE_ID_ddebug183 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 25, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"__dtpm_rebalance_weight\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Setting weight '%d' for '%s'\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"dtpm: Setting weight '%d' for '%s'\0A\00", [60 x i8] zeroinitializer }, align 32
@set_power_limit_uw.__UNIQUE_ID_ddebug190 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 80, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"set_power_limit_uw\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: power limit: %llu uW, power max: %llu uW\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"dtpm: %s: power limit: %llu uW, power max: %llu uW\0A\00", [44 x i8] zeroinitializer }, align 32
@__set_power_limit_uw.__UNIQUE_ID_ddebug184 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 64, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"__set_power_limit_uw\00", [43 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Setting power limit for '%s': %llu uW\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"dtpm: Setting power limit for '%s': %llu uW\0A\00", [51 x i8] zeroinitializer }, align 32
@__set_power_limit_uw.__UNIQUE_ID_ddebug185 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 72, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Instantaneous\00", [18 x i8] zeroinitializer }, align 32
@init_dtpm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 468, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013dtpm: Failed to register control type\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"init_dtpm\00", [22 x i8] zeroinitializer }, align 32
@init_dtpm._entry_ptr = internal global ptr @init_dtpm._entry, section ".printk_index", align 4
@___asan_gen_.24 = private unnamed_addr constant [10 x i8] c"dtpm_lock\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 35, i32 21 }
@___asan_gen_.30 = private unnamed_addr constant [4 x i8] c"pct\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 34, i32 38 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 385, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [9 x i8] c"zone_ops\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 353, i32 33 }
@___asan_gen_.51 = private unnamed_addr constant [15 x i8] c"constraint_ops\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 344, i32 44 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 456, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 33, i32 8 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 141, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 99, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 320, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 257, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 30, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.112 = private constant [27 x i8] c"../drivers/powercap/dtpm.c\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 468, i32 3 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__dtpm_update_power._entry, ptr @__dtpm_update_power._entry_ptr, ptr @__initcall__kmod_dtpm__193_474_init_dtpm7, ptr @init_dtpm._entry, ptr @init_dtpm._entry_ptr, ptr @dtpm_lock, ptr @root, ptr @pct, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @zone_ops, ptr @constraint_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtpm_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @root to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pct to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zone_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @constraint_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_dtpm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dtpm_update_power(ptr noundef %dtpm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @dtpm_lock, i32 noundef 0) #9
  %parent.0.in15.i.i = getelementptr inbounds %struct.dtpm, ptr %dtpm, i32 0, i32 1
  %0 = ptrtoint ptr %parent.0.in15.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %parent.016.i.i = load ptr, ptr %parent.0.in15.i.i, align 8
  %tobool.not17.i.i = icmp eq ptr %parent.016.i.i, null
  br i1 %tobool.not17.i.i, label %entry.__dtpm_sub_power.exit.i_crit_edge, label %while.body.lr.ph.i.i

entry.__dtpm_sub_power.exit.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__dtpm_sub_power.exit.i

while.body.lr.ph.i.i:                             ; preds = %entry
  %power_min.i.i = getelementptr inbounds %struct.dtpm, ptr %dtpm, i32 0, i32 8
  %power_max.i.i = getelementptr inbounds %struct.dtpm, ptr %dtpm, i32 0, i32 7
  %power_limit.i.i = getelementptr inbounds %struct.dtpm, ptr %dtpm, i32 0, i32 6
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %parent.018.i.i = phi ptr [ %parent.016.i.i, %while.body.lr.ph.i.i ], [ %parent.0.i.i, %while.body.i.i.while.body.i.i_crit_edge ]
  %1 = ptrtoint ptr %power_min.i.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %power_min.i.i, align 8
  %power_min2.i.i = getelementptr inbounds %struct.dtpm, ptr %parent.018.i.i, i32 0, i32 8
  %3 = ptrtoint ptr %power_min2.i.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %power_min2.i.i, align 8
  %sub.i.i = sub i64 %4, %2
  store i64 %sub.i.i, ptr %power_min2.i.i, align 8
  %5 = ptrtoint ptr %power_max.i.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %power_max.i.i, align 8
  %power_max3.i.i = getelementptr inbounds %struct.dtpm, ptr %parent.018.i.i, i32 0, i32 7
  %7 = ptrtoint ptr %power_max3.i.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %power_max3.i.i, align 8
  %sub4.i.i = sub i64 %8, %6
  store i64 %sub4.i.i, ptr %power_max3.i.i, align 8
  %9 = ptrtoint ptr %power_limit.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %power_limit.i.i, align 8
  %power_limit5.i.i = getelementptr inbounds %struct.dtpm, ptr %parent.018.i.i, i32 0, i32 6
  %11 = ptrtoint ptr %power_limit5.i.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %power_limit5.i.i, align 8
  %sub6.i.i = sub i64 %12, %10
  store i64 %sub6.i.i, ptr %power_limit5.i.i, align 8
  %parent.0.in.i.i = getelementptr inbounds %struct.dtpm, ptr %parent.018.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %parent.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %parent.0.i.i = load ptr, ptr %parent.0.in.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %parent.0.i.i, null
  br i1 %tobool.not.i.i, label %while.body.i.i.__dtpm_sub_power.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

while.body.i.i.__dtpm_sub_power.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__dtpm_sub_power.exit.i

__dtpm_sub_power.exit.i:                          ; preds = %while.body.i.i.__dtpm_sub_power.exit.i_crit_edge, %entry.__dtpm_sub_power.exit.i_crit_edge
  %ops.i = getelementptr inbounds %struct.dtpm, ptr %dtpm, i32 0, i32 4
  %14 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i, align 4
  %update_power_uw.i = getelementptr inbounds %struct.dtpm_ops, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %update_power_uw.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %update_power_uw.i, align 4
  %call.i = tail call i32 %17(ptr noundef %dtpm) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %__dtpm_sub_power.exit.i.if.end.i_crit_edge, label %do.end.i

__dtpm_sub_power.exit.i.if.end.i_crit_edge:       ; preds = %__dtpm_sub_power.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %__dtpm_sub_power.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %name.i = getelementptr inbounds %struct.powercap_zone, ptr %dtpm, i32 0, i32 1
  %18 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name.i, align 4
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %19, i32 noundef %call.i) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %__dtpm_sub_power.exit.i.if.end.i_crit_edge
  %flags.i = getelementptr inbounds %struct.dtpm, ptr %dtpm, i32 0, i32 5
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool3.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end.i.if.end5.i_crit_edge

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %power_max.i = getelementptr inbounds %struct.dtpm, ptr %dtpm, i32 0, i32 7
  %22 = ptrtoint ptr %power_max.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %power_max.i, align 8
  %power_limit.i = getelementptr inbounds %struct.dtpm, ptr %dtpm, i32 0, i32 6
  %24 = ptrtoint ptr %power_limit.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %power_limit.i, align 8
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then4.i, %if.end.i.if.end5.i_crit_edge
  %25 = ptrtoint ptr %parent.0.in15.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %parent.016.i19.i = load ptr, ptr %parent.0.in15.i.i, align 8
  %tobool.not17.i20.i = icmp eq ptr %parent.016.i19.i, null
  br i1 %tobool.not17.i20.i, label %if.end5.i.__dtpm_add_power.exit.i_crit_edge, label %while.body.lr.ph.i24.i

if.end5.i.__dtpm_add_power.exit.i_crit_edge:      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__dtpm_add_power.exit.i

while.body.lr.ph.i24.i:                           ; preds = %if.end5.i
  %power_min.i21.i = getelementptr inbounds %struct.dtpm, ptr %dtpm, i32 0, i32 8
  %power_max.i22.i = getelementptr inbounds %struct.dtpm, ptr %dtpm, i32 0, i32 7
  %power_limit.i23.i = getelementptr inbounds %struct.dtpm, ptr %dtpm, i32 0, i32 6
  br label %while.body.i32.i

while.body.i32.i:                                 ; preds = %while.body.i32.i.while.body.i32.i_crit_edge, %while.body.lr.ph.i24.i
  %parent.018.i25.i = phi ptr [ %parent.016.i19.i, %while.body.lr.ph.i24.i ], [ %parent.0.i30.i, %while.body.i32.i.while.body.i32.i_crit_edge ]
  %26 = ptrtoint ptr %power_min.i21.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %power_min.i21.i, align 8
  %power_min2.i26.i = getelementptr inbounds %struct.dtpm, ptr %parent.018.i25.i, i32 0, i32 8
  %28 = ptrtoint ptr %power_min2.i26.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %power_min2.i26.i, align 8
  %add.i.i = add i64 %29, %27
  store i64 %add.i.i, ptr %power_min2.i26.i, align 8
  %30 = ptrtoint ptr %power_max.i22.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %power_max.i22.i, align 8
  %power_max3.i27.i = getelementptr inbounds %struct.dtpm, ptr %parent.018.i25.i, i32 0, i32 7
  %32 = ptrtoint ptr %power_max3.i27.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %power_max3.i27.i, align 8
  %add4.i.i = add i64 %33, %31
  store i64 %add4.i.i, ptr %power_max3.i27.i, align 8
  %34 = ptrtoint ptr %power_limit.i23.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %power_limit.i23.i, align 8
  %power_limit5.i28.i = getelementptr inbounds %struct.dtpm, ptr %parent.018.i25.i, i32 0, i32 6
  %36 = ptrtoint ptr %power_limit5.i28.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %power_limit5.i28.i, align 8
  %add6.i.i = add i64 %37, %35
  store i64 %add6.i.i, ptr %power_limit5.i28.i, align 8
  %parent.0.in.i29.i = getelementptr inbounds %struct.dtpm, ptr %parent.018.i25.i, i32 0, i32 1
  %38 = ptrtoint ptr %parent.0.in.i29.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %parent.0.i30.i = load ptr, ptr %parent.0.in.i29.i, align 8
  %tobool.not.i31.i = icmp eq ptr %parent.0.i30.i, null
  br i1 %tobool.not.i31.i, label %while.body.i32.i.__dtpm_add_power.exit.i_crit_edge, label %while.body.i32.i.while.body.i32.i_crit_edge

while.body.i32.i.while.body.i32.i_crit_edge:      ; preds = %while.body.i32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i32.i

while.body.i32.i.__dtpm_add_power.exit.i_crit_edge: ; preds = %while.body.i32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__dtpm_add_power.exit.i

__dtpm_add_power.exit.i:                          ; preds = %while.body.i32.i.__dtpm_add_power.exit.i_crit_edge, %if.end5.i.__dtpm_add_power.exit.i_crit_edge
  %39 = load ptr, ptr @root, align 4
  %tobool6.not.i = icmp eq ptr %39, null
  br i1 %tobool6.not.i, label %__dtpm_add_power.exit.i.__dtpm_update_power.exit_crit_edge, label %if.then7.i

__dtpm_add_power.exit.i.__dtpm_update_power.exit_crit_edge: ; preds = %__dtpm_add_power.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__dtpm_update_power.exit

if.then7.i:                                       ; preds = %__dtpm_add_power.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @__dtpm_rebalance_weight(ptr noundef nonnull %39) #9
  br label %__dtpm_update_power.exit

__dtpm_update_power.exit:                         ; preds = %if.then7.i, %__dtpm_add_power.exit.i.__dtpm_update_power.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @dtpm_lock) #9
  ret i32 %call.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dtpm_release_zone(ptr noundef %pcz) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent1 = getelementptr inbounds %struct.dtpm, ptr %pcz, i32 0, i32 1
  %0 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent1, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @dtpm_lock, i32 noundef 0) #9
  %children = getelementptr inbounds %struct.dtpm, ptr %pcz, i32 0, i32 3
  %2 = ptrtoint ptr %children to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %children, align 4
  %cmp.i.not = icmp eq ptr %3, %children
  br i1 %cmp.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef nonnull @dtpm_lock) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then4:                                         ; preds = %if.end
  %sibling = getelementptr inbounds %struct.dtpm, ptr %pcz, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %sibling) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then4.list_del.exit_crit_edge

if.then4.list_del.exit_crit_edge:                 ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.dtpm, ptr %pcz, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %sibling to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sibling, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then4.list_del.exit_crit_edge
  %10 = ptrtoint ptr %sibling to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %sibling, align 4
  %prev.i = getelementptr inbounds %struct.dtpm, ptr %pcz, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %if.end5

if.end5:                                          ; preds = %list_del.exit, %if.end.if.end5_crit_edge
  %12 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %parent.016.i = load ptr, ptr %parent1, align 8
  %tobool.not17.i = icmp eq ptr %parent.016.i, null
  br i1 %tobool.not17.i, label %if.end5.__dtpm_sub_power.exit_crit_edge, label %while.body.lr.ph.i

if.end5.__dtpm_sub_power.exit_crit_edge:          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %__dtpm_sub_power.exit

while.body.lr.ph.i:                               ; preds = %if.end5
  %power_min.i = getelementptr inbounds %struct.dtpm, ptr %pcz, i32 0, i32 8
  %power_max.i = getelementptr inbounds %struct.dtpm, ptr %pcz, i32 0, i32 7
  %power_limit.i = getelementptr inbounds %struct.dtpm, ptr %pcz, i32 0, i32 6
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %parent.018.i = phi ptr [ %parent.016.i, %while.body.lr.ph.i ], [ %parent.0.i, %while.body.i.while.body.i_crit_edge ]
  %13 = ptrtoint ptr %power_min.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %power_min.i, align 8
  %power_min2.i = getelementptr inbounds %struct.dtpm, ptr %parent.018.i, i32 0, i32 8
  %15 = ptrtoint ptr %power_min2.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %power_min2.i, align 8
  %sub.i = sub i64 %16, %14
  store i64 %sub.i, ptr %power_min2.i, align 8
  %17 = ptrtoint ptr %power_max.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %power_max.i, align 8
  %power_max3.i = getelementptr inbounds %struct.dtpm, ptr %parent.018.i, i32 0, i32 7
  %19 = ptrtoint ptr %power_max3.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %power_max3.i, align 8
  %sub4.i = sub i64 %20, %18
  store i64 %sub4.i, ptr %power_max3.i, align 8
  %21 = ptrtoint ptr %power_limit.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %power_limit.i, align 8
  %power_limit5.i = getelementptr inbounds %struct.dtpm, ptr %parent.018.i, i32 0, i32 6
  %23 = ptrtoint ptr %power_limit5.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %power_limit5.i, align 8
  %sub6.i = sub i64 %24, %22
  store i64 %sub6.i, ptr %power_limit5.i, align 8
  %parent.0.in.i = getelementptr inbounds %struct.dtpm, ptr %parent.018.i, i32 0, i32 1
  %25 = ptrtoint ptr %parent.0.in.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %parent.0.i = load ptr, ptr %parent.0.in.i, align 8
  %tobool.not.i = icmp eq ptr %parent.0.i, null
  br i1 %tobool.not.i, label %while.body.i.__dtpm_sub_power.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.__dtpm_sub_power.exit_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__dtpm_sub_power.exit

__dtpm_sub_power.exit:                            ; preds = %while.body.i.__dtpm_sub_power.exit_crit_edge, %if.end5.__dtpm_sub_power.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @dtpm_lock) #9
  %ops = getelementptr inbounds %struct.dtpm, ptr %pcz, i32 0, i32 4
  %26 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops, align 4
  %tobool6.not = icmp eq ptr %27, null
  br i1 %tobool6.not, label %__dtpm_sub_power.exit.if.end9_crit_edge, label %if.then7

__dtpm_sub_power.exit.if.end9_crit_edge:          ; preds = %__dtpm_sub_power.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then7:                                         ; preds = %__dtpm_sub_power.exit
  call void @__sanitizer_cov_trace_pc() #11
  %release = getelementptr inbounds %struct.dtpm_ops, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %release, align 4
  tail call void %29(ptr noundef %pcz) #9
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %__dtpm_sub_power.exit.if.end9_crit_edge
  %30 = load ptr, ptr @root, align 4
  %cmp = icmp eq ptr %30, %pcz
  br i1 %cmp, label %if.then10, label %if.end9.if.end11_crit_edge

if.end9.if.end11_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then10:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  store ptr null, ptr @root, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end9.if.end11_crit_edge
  tail call void @kfree(ptr noundef %pcz) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -16, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dtpm_init(ptr noundef %dtpm, ptr noundef %ops) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dtpm, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %children = getelementptr inbounds %struct.dtpm, ptr %dtpm, i32 0, i32 3
  %0 = ptrtoint ptr %children to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %children, ptr %children, align 4
  %prev.i = getelementptr inbounds %struct.dtpm, ptr %dtpm, i32 0, i32 3, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %children, ptr %prev.i, align 4
  %sibling = getelementptr inbounds %struct.dtpm, ptr %dtpm, i32 0, i32 2
  %2 = ptrtoint ptr %sibling to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %sibling, ptr %sibling, align 4
  %prev.i6 = getelementptr inbounds %struct.dtpm, ptr %dtpm, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %prev.i6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %sibling, ptr %prev.i6, align 4
  %weight = getelementptr inbounds %struct.dtpm, ptr %dtpm, i32 0, i32 9
  %4 = ptrtoint ptr %weight to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1024, ptr %weight, align 8
  %ops1 = getelementptr inbounds %struct.dtpm, ptr %dtpm, i32 0, i32 4
  %5 = ptrtoint ptr %ops1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ops, ptr %ops1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dtpm_unregister(ptr noundef %dtpm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @pct, align 4
  %call = tail call i32 @powercap_unregister_zone(ptr noundef %0, ptr noundef %dtpm) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dtpm_unregister.__UNIQUE_ID_ddebug191, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dtpm_unregister, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !66

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.powercap_zone, ptr %dtpm, i32 0, i32 1
  %1 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dtpm_unregister.__UNIQUE_ID_ddebug191, ptr noundef nonnull @.str.4, ptr noundef %2) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @powercap_unregister_zone(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dtpm_register(ptr noundef %name, ptr noundef %dtpm, ptr noundef %parent) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @pct, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @root, align 4
  %tobool1.not = icmp ne ptr %1, null
  %tobool2.not = icmp eq ptr %parent, null
  %or.cond = and i1 %tobool2.not, %tobool1.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %or.cond90 = or i1 %tobool2.not, %tobool1.not
  br i1 %or.cond90, label %if.end9, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  br i1 %tobool2.not, label %if.end14, label %land.lhs.true11

land.lhs.true11:                                  ; preds = %if.end9
  %ops = getelementptr inbounds %struct.dtpm, ptr %parent, i32 0, i32 4
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %tobool12.not = icmp ne ptr %3, null
  %tobool15.not = icmp eq ptr %dtpm, null
  %or.cond91 = or i1 %tobool15.not, %tobool12.not
  br i1 %or.cond91, label %land.lhs.true11.cleanup_crit_edge, label %land.lhs.true11.if.end17_crit_edge

land.lhs.true11.if.end17_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

land.lhs.true11.cleanup_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %tobool15.not.old = icmp eq ptr %dtpm, null
  br i1 %tobool15.not.old, label %if.end14.cleanup_crit_edge, label %if.end14.if.end17_crit_edge

if.end14.if.end17_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %if.end14.if.end17_crit_edge, %land.lhs.true11.if.end17_crit_edge
  %ops18 = getelementptr inbounds %struct.dtpm, ptr %dtpm, i32 0, i32 4
  %4 = ptrtoint ptr %ops18 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops18, align 4
  %tobool19.not = icmp eq ptr %5, null
  br i1 %tobool19.not, label %if.end17.if.end33_crit_edge, label %land.lhs.true20

if.end17.if.end33_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

land.lhs.true20:                                  ; preds = %if.end17
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool22.not = icmp eq ptr %7, null
  br i1 %tobool22.not, label %land.lhs.true20.cleanup_crit_edge, label %land.lhs.true23

land.lhs.true20.cleanup_crit_edge:                ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true23:                                  ; preds = %land.lhs.true20
  %get_power_uw = getelementptr inbounds %struct.dtpm_ops, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %get_power_uw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_power_uw, align 4
  %tobool25.not = icmp eq ptr %9, null
  br i1 %tobool25.not, label %land.lhs.true23.cleanup_crit_edge, label %land.lhs.true26

land.lhs.true23.cleanup_crit_edge:                ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true26:                                  ; preds = %land.lhs.true23
  %update_power_uw = getelementptr inbounds %struct.dtpm_ops, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %update_power_uw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %update_power_uw, align 4
  %tobool28.not = icmp eq ptr %11, null
  br i1 %tobool28.not, label %land.lhs.true26.cleanup_crit_edge, label %land.lhs.true29

land.lhs.true26.cleanup_crit_edge:                ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true29:                                  ; preds = %land.lhs.true26
  %release = getelementptr inbounds %struct.dtpm_ops, ptr %5, i32 0, i32 3
  %12 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %release, align 4
  %tobool31.not = icmp eq ptr %13, null
  br i1 %tobool31.not, label %land.lhs.true29.cleanup_crit_edge, label %land.lhs.true29.if.end33_crit_edge

land.lhs.true29.if.end33_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

land.lhs.true29.cleanup_crit_edge:                ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end33:                                         ; preds = %land.lhs.true29.if.end33_crit_edge, %if.end17.if.end33_crit_edge
  %call = tail call ptr @powercap_register_zone(ptr noundef nonnull %dtpm, ptr noundef nonnull %0, ptr noundef %name, ptr noundef %parent, ptr noundef nonnull @zone_ops, i32 noundef 1, ptr noundef nonnull @constraint_ops) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %call to i32
  br label %cleanup

if.end39:                                         ; preds = %if.end33
  tail call void @mutex_lock_nested(ptr noundef nonnull @dtpm_lock, i32 noundef 0) #9
  br i1 %tobool2.not, label %if.else, label %if.then41

if.then41:                                        ; preds = %if.end39
  %sibling = getelementptr inbounds %struct.dtpm, ptr %dtpm, i32 0, i32 2
  %children = getelementptr inbounds %struct.dtpm, ptr %parent, i32 0, i32 3
  %prev.i = getelementptr inbounds %struct.dtpm, ptr %parent, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %sibling, ptr noundef %16, ptr noundef %children) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then41.list_add_tail.exit_crit_edge

if.then41.list_add_tail.exit_crit_edge:           ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %sibling, ptr %prev.i, align 4
  %18 = ptrtoint ptr %sibling to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %children, ptr %sibling, align 4
  %prev3.i.i = getelementptr inbounds %struct.dtpm, ptr %dtpm, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %sibling, ptr %16, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then41.list_add_tail.exit_crit_edge
  %parent42 = getelementptr inbounds %struct.dtpm, ptr %dtpm, i32 0, i32 1
  %21 = ptrtoint ptr %parent42 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %parent, ptr %parent42, align 8
  br label %if.end43

if.else:                                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %dtpm, ptr @root, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.else, %list_add_tail.exit
  %22 = ptrtoint ptr %ops18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops18, align 4
  %tobool45.not = icmp eq ptr %23, null
  br i1 %tobool45.not, label %if.end43.do.body_crit_edge, label %land.lhs.true46

if.end43.do.body_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

land.lhs.true46:                                  ; preds = %if.end43
  %update_power_uw48 = getelementptr inbounds %struct.dtpm_ops, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %update_power_uw48 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %update_power_uw48, align 4
  %call49 = tail call i32 %25(ptr noundef nonnull %dtpm) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.then51, label %land.lhs.true46.do.body_crit_edge

land.lhs.true46.do.body_crit_edge:                ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then51:                                        ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @__dtpm_add_power(ptr noundef nonnull %dtpm)
  %power_max = getelementptr inbounds %struct.dtpm, ptr %dtpm, i32 0, i32 7
  %26 = ptrtoint ptr %power_max to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %power_max, align 8
  %power_limit = getelementptr inbounds %struct.dtpm, ptr %dtpm, i32 0, i32 6
  %28 = ptrtoint ptr %power_limit to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %power_limit, align 8
  br label %do.body

do.body:                                          ; preds = %if.then51, %land.lhs.true46.do.body_crit_edge, %if.end43.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dtpm_register.__UNIQUE_ID_ddebug192, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dtpm_register, %if.then57)) #9
          to label %do.end [label %if.then57], !srcloc !66

if.then57:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %name59 = getelementptr inbounds %struct.powercap_zone, ptr %dtpm, i32 0, i32 1
  %29 = ptrtoint ptr %name59 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %name59, align 4
  %power_min = getelementptr inbounds %struct.dtpm, ptr %dtpm, i32 0, i32 8
  %31 = ptrtoint ptr %power_min to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %power_min, align 8
  %power_max60 = getelementptr inbounds %struct.dtpm, ptr %dtpm, i32 0, i32 7
  %33 = ptrtoint ptr %power_max60 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %power_max60, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dtpm_register.__UNIQUE_ID_ddebug192, ptr noundef nonnull @.str.7, ptr noundef %30, i64 noundef %32, i64 noundef %34) #9
  br label %do.end

do.end:                                           ; preds = %if.then57, %do.body
  tail call void @mutex_unlock(ptr noundef nonnull @dtpm_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then37, %land.lhs.true29.cleanup_crit_edge, %land.lhs.true26.cleanup_crit_edge, %land.lhs.true23.cleanup_crit_edge, %land.lhs.true20.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %land.lhs.true11.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %14, %if.then37 ], [ 0, %do.end ], [ -11, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ -22, %land.lhs.true11.cleanup_crit_edge ], [ -22, %if.end14.cleanup_crit_edge ], [ -22, %land.lhs.true29.cleanup_crit_edge ], [ -22, %land.lhs.true26.cleanup_crit_edge ], [ -22, %land.lhs.true23.cleanup_crit_edge ], [ -22, %land.lhs.true20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @powercap_register_zone(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__dtpm_add_power(ptr nocapture noundef readonly %dtpm) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.0.in15 = getelementptr inbounds %struct.dtpm, ptr %dtpm, i32 0, i32 1
  %0 = ptrtoint ptr %parent.0.in15 to i32
  call void @__asan_load4_noabort(i32 %0)
  %parent.016 = load ptr, ptr %parent.0.in15, align 8
  %tobool.not17 = icmp eq ptr %parent.016, null
  br i1 %tobool.not17, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %power_min = getelementptr inbounds %struct.dtpm, ptr %dtpm, i32 0, i32 8
  %power_max = getelementptr inbounds %struct.dtpm, ptr %dtpm, i32 0, i32 7
  %power_limit = getelementptr inbounds %struct.dtpm, ptr %dtpm, i32 0, i32 6
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %parent.018 = phi ptr [ %parent.016, %while.body.lr.ph ], [ %parent.0, %while.body.while.body_crit_edge ]
  %1 = ptrtoint ptr %power_min to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %power_min, align 8
  %power_min2 = getelementptr inbounds %struct.dtpm, ptr %parent.018, i32 0, i32 8
  %3 = ptrtoint ptr %power_min2 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %power_min2, align 8
  %add = add i64 %4, %2
  store i64 %add, ptr %power_min2, align 8
  %5 = ptrtoint ptr %power_max to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %power_max, align 8
  %power_max3 = getelementptr inbounds %struct.dtpm, ptr %parent.018, i32 0, i32 7
  %7 = ptrtoint ptr %power_max3 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %power_max3, align 8
  %add4 = add i64 %8, %6
  store i64 %add4, ptr %power_max3, align 8
  %9 = ptrtoint ptr %power_limit to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %power_limit, align 8
  %power_limit5 = getelementptr inbounds %struct.dtpm, ptr %parent.018, i32 0, i32 6
  %11 = ptrtoint ptr %power_limit5 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %power_limit5, align 8
  %add6 = add i64 %12, %10
  store i64 %add6, ptr %power_limit5, align 8
  %parent.0.in = getelementptr inbounds %struct.dtpm, ptr %parent.018, i32 0, i32 1
  %13 = ptrtoint ptr %parent.0.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %parent.0 = load ptr, ptr %parent.0.in, align 8
  %tobool.not = icmp eq ptr %parent.0, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_dtpm() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @powercap_register_control_type(ptr noundef null, ptr noundef nonnull @.str, ptr noundef null) #9
  store ptr %call, ptr @pct, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #12
  %0 = load ptr, ptr @pct, align 4
  %1 = ptrtoint ptr %0 to i32
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %1, %do.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__dtpm_rebalance_weight(ptr noundef readonly %dtpm) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %children = getelementptr inbounds %struct.dtpm, ptr %dtpm, i32 0, i32 3
  %0 = ptrtoint ptr %children to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn26 = load ptr, ptr %children, align 4
  %cmp.not28 = icmp eq ptr %.pn26, %children
  br i1 %cmp.not28, label %entry.for.end_crit_edge, label %do.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

do.body.lr.ph:                                    ; preds = %entry
  %power_max = getelementptr inbounds %struct.dtpm, ptr %dtpm, i32 0, i32 7
  br label %do.body

do.body:                                          ; preds = %do.end.do.body_crit_edge, %do.body.lr.ph
  %.pn29 = phi ptr [ %.pn26, %do.body.lr.ph ], [ %.pn, %do.end.do.body_crit_edge ]
  %child.030 = getelementptr i8, ptr %.pn29, i32 -1068
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__dtpm_rebalance_weight.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__dtpm_rebalance_weight, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !66

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %weight = getelementptr i8, ptr %.pn29, i32 52
  %1 = ptrtoint ptr %weight to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %weight, align 8
  %name = getelementptr i8, ptr %.pn29, i32 -1064
  %3 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__dtpm_rebalance_weight.__UNIQUE_ID_ddebug183, ptr noundef nonnull @.str.14, i32 noundef %2, ptr noundef %4) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %5 = ptrtoint ptr %power_max to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %power_max, align 8
  %power_max7 = getelementptr i8, ptr %.pn29, i32 36
  %7 = ptrtoint ptr %power_max7 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %power_max7, align 8
  %mul = shl i64 %8, 10
  %div24 = lshr i64 %6, 1
  %add = add i64 %mul, %div24
  %call8 = tail call i64 @div64_u64(i64 noundef %add, i64 noundef %6) #9
  %conv = trunc i64 %call8 to i32
  %weight9 = getelementptr i8, ptr %.pn29, i32 52
  %9 = ptrtoint ptr %weight9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv, ptr %weight9, align 8
  tail call fastcc void @__dtpm_rebalance_weight(ptr noundef %child.030)
  %10 = ptrtoint ptr %.pn29 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load ptr, ptr %.pn29, align 4
  %cmp.not = icmp eq ptr %.pn, %children
  br i1 %cmp.not, label %do.end.for.end_crit_edge, label %do.end.do.body_crit_edge

do.end.do.body_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %do.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_max_power_range_uw(ptr nocapture noundef readonly %pcz, ptr nocapture noundef writeonly %max_power_uw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @dtpm_lock, i32 noundef 0) #9
  %power_max = getelementptr inbounds %struct.dtpm, ptr %pcz, i32 0, i32 7
  %0 = ptrtoint ptr %power_max to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %power_max, align 8
  %power_min = getelementptr inbounds %struct.dtpm, ptr %pcz, i32 0, i32 8
  %2 = ptrtoint ptr %power_min to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %power_min, align 8
  %sub = sub i64 %1, %3
  %4 = ptrtoint ptr %max_power_uw to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %sub, ptr %max_power_uw, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @dtpm_lock) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_power_uw(ptr noundef %pcz, ptr nocapture noundef %power_uw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @dtpm_lock, i32 noundef 0) #9
  tail call fastcc void @__get_power_uw(ptr noundef %pcz, ptr noundef %power_uw)
  tail call void @mutex_unlock(ptr noundef nonnull @dtpm_lock) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__get_power_uw(ptr noundef %dtpm, ptr nocapture noundef %power_uw) unnamed_addr #0 align 64 {
entry:
  %power = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %power) #9
  %0 = ptrtoint ptr %power to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %power, align 8, !annotation !67
  %ops = getelementptr inbounds %struct.dtpm, ptr %dtpm, i32 0, i32 4
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %get_power_uw = getelementptr inbounds %struct.dtpm_ops, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %get_power_uw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %get_power_uw, align 4
  %call = tail call i64 %4(ptr noundef %dtpm) #9
  %5 = ptrtoint ptr %power_uw to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %call, ptr %power_uw, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %power_uw to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %power_uw, align 8
  %children = getelementptr inbounds %struct.dtpm, ptr %dtpm, i32 0, i32 3
  %7 = ptrtoint ptr %children to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn1 = load ptr, ptr %children, align 4
  %cmp.not2 = icmp eq ptr %.pn1, %children
  br i1 %cmp.not2, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn3 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn1, %if.end.for.body_crit_edge ]
  %child.0 = getelementptr i8, ptr %.pn3, i32 -1068
  call fastcc void @__get_power_uw(ptr noundef %child.0, ptr noundef nonnull %power)
  %8 = ptrtoint ptr %power to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %power, align 8
  %10 = ptrtoint ptr %power_uw to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %power_uw, align 8
  %add = add i64 %11, %9
  store i64 %add, ptr %power_uw, align 8
  %12 = ptrtoint ptr %.pn3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn = load ptr, ptr %.pn3, align 4
  %cmp.not = icmp eq ptr %.pn, %children
  br i1 %cmp.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %power) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_power_limit_uw(ptr noundef %pcz, i32 noundef %cid, i64 noundef %power_limit) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @dtpm_lock, i32 noundef 0) #9
  %power_min = getelementptr inbounds %struct.dtpm, ptr %pcz, i32 0, i32 8
  %0 = ptrtoint ptr %power_min to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %power_min, align 8
  %2 = tail call i64 @llvm.umax.i64(i64 %1, i64 %power_limit)
  %power_max = getelementptr inbounds %struct.dtpm, ptr %pcz, i32 0, i32 7
  %3 = ptrtoint ptr %power_max to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %power_max, align 8
  %5 = tail call i64 @llvm.umin.i64(i64 %2, i64 %4)
  tail call fastcc void @__set_power_limit_uw(ptr noundef %pcz, i64 noundef %5)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_power_limit_uw.__UNIQUE_ID_ddebug190, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_power_limit_uw, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !66

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.powercap_zone, ptr %pcz, i32 0, i32 1
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  %power_limit12 = getelementptr inbounds %struct.dtpm, ptr %pcz, i32 0, i32 6
  %8 = ptrtoint ptr %power_limit12 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %power_limit12, align 8
  %10 = ptrtoint ptr %power_max to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %power_max, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @set_power_limit_uw.__UNIQUE_ID_ddebug190, ptr noundef nonnull @.str.17, ptr noundef %7, i64 noundef %9, i64 noundef %11) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @mutex_unlock(ptr noundef nonnull @dtpm_lock) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_power_limit_uw(ptr nocapture noundef readonly %pcz, i32 noundef %cid, ptr nocapture noundef writeonly %power_limit) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @dtpm_lock, i32 noundef 0) #9
  %power_limit1.i = getelementptr inbounds %struct.dtpm, ptr %pcz, i32 0, i32 6
  %0 = ptrtoint ptr %power_limit1.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %power_limit1.i, align 8
  %2 = ptrtoint ptr %power_limit to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %power_limit, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @dtpm_lock) #9
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @set_time_window_us(ptr nocapture noundef readnone %pcz, i32 noundef %cid, i64 noundef %window) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -38
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @get_time_window_us(ptr nocapture noundef readnone %pcz, i32 noundef %cid, ptr nocapture noundef readnone %window) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -38
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_max_power_uw(ptr nocapture noundef readonly %pcz, i32 noundef %id, ptr nocapture noundef writeonly %max_power) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @dtpm_lock, i32 noundef 0) #9
  %power_max = getelementptr inbounds %struct.dtpm, ptr %pcz, i32 0, i32 7
  %0 = ptrtoint ptr %power_max to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %power_max, align 8
  %2 = ptrtoint ptr %max_power to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %max_power, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @dtpm_lock) #9
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @get_constraint_name(ptr nocapture noundef readnone %pcz, i32 noundef %cid) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @.str.21
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__set_power_limit_uw(ptr noundef %dtpm, i64 noundef %power_limit) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %power_max = getelementptr inbounds %struct.dtpm, ptr %dtpm, i32 0, i32 7
  %0 = ptrtoint ptr %power_max to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %power_max, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %power_limit)
  %cmp = icmp eq i64 %1, %power_limit
  %flags = getelementptr inbounds %struct.dtpm, ptr %dtpm, i32 0, i32 5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #9
  br label %do.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #9
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__set_power_limit_uw.__UNIQUE_ID_ddebug184, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__set_power_limit_uw, %if.then4)) #9
          to label %do.end [label %if.then4], !srcloc !66

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.powercap_zone, ptr %dtpm, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__set_power_limit_uw.__UNIQUE_ID_ddebug184, ptr noundef nonnull @.str.20, ptr noundef %3, i64 noundef %power_limit) #9
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %ops = getelementptr inbounds %struct.dtpm, ptr %dtpm, i32 0, i32 4
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %if.else11, label %if.then7

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call9 = tail call i64 %7(ptr noundef %dtpm, i64 noundef %power_limit) #9
  %power_limit10 = getelementptr inbounds %struct.dtpm, ptr %dtpm, i32 0, i32 6
  %8 = ptrtoint ptr %power_limit10 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %call9, ptr %power_limit10, align 8
  br label %if.end259

if.else11:                                        ; preds = %do.end
  %power_limit12 = getelementptr inbounds %struct.dtpm, ptr %dtpm, i32 0, i32 6
  %9 = ptrtoint ptr %power_limit12 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %power_limit12, align 8
  %children = getelementptr inbounds %struct.dtpm, ptr %dtpm, i32 0, i32 3
  %10 = ptrtoint ptr %children to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn8 = load ptr, ptr %children, align 4
  %cmp15.not10 = icmp eq ptr %.pn8, %children
  br i1 %cmp15.not10, label %if.else11.if.end259_crit_edge, label %for.body.lr.ph

if.else11.if.end259_crit_edge:                    ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end259

for.body.lr.ph:                                   ; preds = %if.else11
  %power_min = getelementptr inbounds %struct.dtpm, ptr %dtpm, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %do.end243.for.body_crit_edge, %for.body.lr.ph
  %.pn11 = phi ptr [ %.pn8, %for.body.lr.ph ], [ %.pn, %do.end243.for.body_crit_edge ]
  %child.012 = getelementptr i8, ptr %.pn11, i32 -1068
  %11 = ptrtoint ptr %power_max to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %power_max, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %power_limit)
  %cmp19 = icmp eq i64 %12, %power_limit
  br i1 %cmp19, label %if.then20, label %if.else22

if.then20:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %power_max21 = getelementptr i8, ptr %.pn11, i32 36
  %13 = ptrtoint ptr %power_max21 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %power_max21, align 8
  br label %do.body226

if.else22:                                        ; preds = %for.body
  %15 = ptrtoint ptr %power_min to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %power_min, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %power_limit)
  %cmp23 = icmp eq i64 %16, %power_limit
  br i1 %cmp23, label %if.then24, label %if.else26

if.then24:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #11
  %power_min25 = getelementptr i8, ptr %.pn11, i32 44
  %17 = ptrtoint ptr %power_min25 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %power_min25, align 8
  br label %do.body226

if.else26:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #11
  %weight = getelementptr i8, ptr %.pn11, i32 52
  %19 = ptrtoint ptr %weight to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %weight, align 8
  %conv = sext i32 %20 to i64
  %mul = mul i64 %conv, %power_limit
  %add = add i64 %mul, 512
  %shr = lshr i64 %add, 10
  br label %do.body226

do.body226:                                       ; preds = %if.else26, %if.then24, %if.then20
  %power.0 = phi i64 [ %14, %if.then20 ], [ %18, %if.then24 ], [ %shr, %if.else26 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__set_power_limit_uw.__UNIQUE_ID_ddebug185, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__set_power_limit_uw, %if.then238)) #9
          to label %do.end243 [label %if.then238], !srcloc !66

if.then238:                                       ; preds = %do.body226
  call void @__sanitizer_cov_trace_pc() #11
  %name240 = getelementptr i8, ptr %.pn11, i32 -1064
  %21 = ptrtoint ptr %name240 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %name240, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__set_power_limit_uw.__UNIQUE_ID_ddebug185, ptr noundef nonnull @.str.20, ptr noundef %22, i64 noundef %power.0) #9
  br label %do.end243

do.end243:                                        ; preds = %if.then238, %do.body226
  tail call fastcc void @__set_power_limit_uw(ptr noundef %child.012, i64 noundef %power.0)
  %power_limit1.i = getelementptr i8, ptr %.pn11, i32 28
  %23 = ptrtoint ptr %power_limit1.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %power_limit1.i, align 8
  %25 = ptrtoint ptr %power_limit12 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %power_limit12, align 8
  %add253 = add i64 %26, %24
  store i64 %add253, ptr %power_limit12, align 8
  %27 = ptrtoint ptr %.pn11 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn = load ptr, ptr %.pn11, align 4
  %cmp15.not = icmp eq ptr %.pn, %children
  br i1 %cmp15.not, label %do.end243.if.end259_crit_edge, label %do.end243.for.body_crit_edge

do.end243.for.body_crit_edge:                     ; preds = %do.end243
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.end243.if.end259_crit_edge:                    ; preds = %do.end243
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end259

if.end259:                                        ; preds = %do.end243.if.end259_crit_edge, %if.else11.if.end259_crit_edge, %if.then7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @powercap_register_control_type(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !12, !14, !16, !18, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !32, !34, !36, !38, !39, !40, !41, !43, !44, !45, !46, !48, !50, !52, !54, !55, !56}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/powercap/dtpm.c", i32 385, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @dtpm_unregister.__UNIQUE_ID_ddebug191, !1, !"__UNIQUE_ID_ddebug191", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/powercap/dtpm.c", i32 456, i32 2}
!9 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @dtpm_register.__UNIQUE_ID_ddebug192, !8, !"__UNIQUE_ID_ddebug192", i1 false, i1 false}
!11 = !{ptr @.str.7, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__initcall__kmod_dtpm__193_474_init_dtpm7, !13, !"__initcall__kmod_dtpm__193_474_init_dtpm7", i1 false, i1 false}
!13 = !{!"../drivers/powercap/dtpm.c", i32 474, i32 1}
!14 = !{ptr @pct, !15, !"pct", i1 false, i1 false}
!15 = !{!"../drivers/powercap/dtpm.c", i32 34, i32 38}
!16 = !{ptr @root, !17, !"root", i1 false, i1 false}
!17 = !{!"../drivers/powercap/dtpm.c", i32 35, i32 21}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/powercap/dtpm.c", i32 33, i32 8}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @dtpm_lock, !19, !"dtpm_lock", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/powercap/dtpm.c", i32 141, i32 3}
!24 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @__dtpm_update_power._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @__dtpm_update_power._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/powercap/dtpm.c", i32 99, i32 3}
!29 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @__dtpm_rebalance_weight.__UNIQUE_ID_ddebug183, !28, !"__UNIQUE_ID_ddebug183", i1 false, i1 false}
!31 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @zone_ops, !33, !"zone_ops", i1 false, i1 false}
!33 = !{!"../drivers/powercap/dtpm.c", i32 353, i32 33}
!34 = !{ptr @constraint_ops, !35, !"constraint_ops", i1 false, i1 false}
!35 = !{!"../drivers/powercap/dtpm.c", i32 344, i32 44}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/powercap/dtpm.c", i32 320, i32 2}
!38 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @set_power_limit_uw.__UNIQUE_ID_ddebug190, !37, !"__UNIQUE_ID_ddebug190", i1 false, i1 false}
!40 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/powercap/dtpm.c", i32 257, i32 2}
!43 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @__set_power_limit_uw.__UNIQUE_ID_ddebug184, !42, !"__UNIQUE_ID_ddebug184", i1 false, i1 false}
!45 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @__set_power_limit_uw.__UNIQUE_ID_ddebug185, !47, !"__UNIQUE_ID_ddebug185", i1 false, i1 false}
!47 = !{!"../drivers/powercap/dtpm.c", i32 287, i32 4}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/powercap/dtpm.c", i32 30, i32 2}
!50 = distinct !{null, !51, !"constraint_name", i1 false, i1 false}
!51 = !{!"../drivers/powercap/dtpm.c", i32 29, i32 20}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/powercap/dtpm.c", i32 468, i32 3}
!54 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @init_dtpm._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @init_dtpm._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{i64 2148300697, i64 2148300702, i64 2148300715, i64 2148300759, i64 2148300793, i64 2148300814}
!67 = !{!"auto-init"}
