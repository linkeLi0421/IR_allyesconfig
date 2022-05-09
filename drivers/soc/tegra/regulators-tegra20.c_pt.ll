; ModuleID = '/llk/IR_all_yes/drivers/soc/tegra/regulators-tegra20.c_pt.bc'
source_filename = "../drivers/soc/tegra/regulators-tegra20.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tegra_regulator_coupler = type { %struct.regulator_coupler, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, i32, i32, i8, i8, i8, i8 }
%struct.regulator_coupler = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tegra_sku_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.regulation_constraints = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }

@__initcall__kmod_regulators_tegra20__325_560_tegra_regulator_coupler_init3 = internal global ptr @tegra_regulator_coupler_init, section ".initcall3.init", align 4
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nvidia,tegra20\00", [17 x i8] zeroinitializer }, align 32
@tegra20_coupler = internal global { %struct.tegra_regulator_coupler, [60 x i8] } { %struct.tegra_regulator_coupler { %struct.regulator_coupler { %struct.list_head zeroinitializer, ptr @tegra20_regulator_attach, ptr @tegra20_regulator_detach, ptr @tegra20_regulator_balance_voltage }, ptr null, ptr null, ptr null, %struct.notifier_block { ptr @tegra20_regulator_reboot, ptr null, i32 0 }, %struct.notifier_block { ptr @tegra20_regulator_suspend, ptr null, i32 0 }, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/soc/tegra/regulators-tegra20.c\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"nvidia,tegra-core-regulator\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nvidia,tegra-rtc-regulator\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nvidia,tegra-cpu-regulator\00", [37 x i8] zeroinitializer }, align 32
@tegra20_regulator_detach.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@system_state = external dso_local local_unnamed_addr global i32, align 4
@tegra20_regulator_balance_voltage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.1, i32 355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013tegra voltage-coupler: regulators are not coupled properly\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"tegra20_regulator_balance_voltage\00", [62 x i8] zeroinitializer }, align 32
@tegra20_regulator_balance_voltage._entry_ptr = internal global ptr @tegra20_regulator_balance_voltage._entry, section ".printk_index", align 4
@tegra20_regulator_balance_voltage._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.1, i32 370, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013tegra voltage-coupler: changing %s voltage not permitted\0A\00", [36 x i8] zeroinitializer }, align 32
@tegra20_regulator_balance_voltage._entry_ptr.9 = internal global ptr @tegra20_regulator_balance_voltage._entry.7, section ".printk_index", align 4
@tegra_sku_info = external dso_local local_unnamed_addr global %struct.tegra_sku_info, align 4
@tegra20_core_rtc_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.1, i32 189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013tegra voltage-coupler: core-cpu voltage constraint violated: %d %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tegra20_core_rtc_update\00", [40 x i8] zeroinitializer }, align 32
@tegra20_core_rtc_update._entry_ptr = internal global ptr @tegra20_core_rtc_update._entry, section ".printk_index", align 4
@tegra20_core_rtc_update._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.1, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013tegra voltage-coupler: rtc-cpu voltage constraint violated: %d %d\0A\00", [59 x i8] zeroinitializer }, align 32
@tegra20_core_rtc_update._entry_ptr.14 = internal global ptr @tegra20_core_rtc_update._entry.12, section ".printk_index", align 4
@tegra20_core_rtc_update._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.1, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013tegra voltage-coupler: core-rtc voltage constraint violated: %d %d\0A\00", [58 x i8] zeroinitializer }, align 32
@tegra20_core_rtc_update._entry_ptr.17 = internal global ptr @tegra20_core_rtc_update._entry.15, section ".printk_index", align 4
@tegra20_core_rtc_max_spread.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@tegra20_core_rtc_max_spread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.1, i32 108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\013tegra voltage-coupler: rtc-core max-spread is undefined in device-tree\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tegra20_core_rtc_max_spread\00", [36 x i8] zeroinitializer }, align 32
@tegra20_core_rtc_max_spread._entry_ptr = internal global ptr @tegra20_core_rtc_max_spread._entry, section ".printk_index", align 4
@tegra20_core_limit.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@tegra20_core_limit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.1, i32 63, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016tegra voltage-coupler: voltage state synced\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tegra20_core_limit\00", [45 x i8] zeroinitializer }, align 32
@tegra20_core_limit._entry_ptr = internal global ptr @tegra20_core_limit._entry, section ".printk_index", align 4
@tegra20_core_limit._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.1, i32 87, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016tegra voltage-coupler: core voltage initialized to %duV\0A\00", [37 x i8] zeroinitializer }, align 32
@tegra20_core_limit._entry_ptr.24 = internal global ptr @tegra20_core_limit._entry.22, section ".printk_index", align 4
@tegra20_regulator_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.1, i32 427, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013tegra voltage-coupler: failed to prepare regulators: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tegra20_regulator_suspend\00", [38 x i8] zeroinitializer }, align 32
@tegra20_regulator_suspend._entry_ptr = internal global ptr @tegra20_regulator_suspend._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 549, i32 32 }
@___asan_gen_.30 = private unnamed_addr constant [16 x i8] c"tegra20_coupler\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 535, i32 39 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 553, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 483, i32 32 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 489, i32 32 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 495, i32 32 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 355, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 370, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 188, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 196, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 200, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 108, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 63, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 87, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.112 = private constant [42 x i8] c"../drivers/soc/tegra/regulators-tegra20.c\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 427, i32 3 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__initcall__kmod_regulators_tegra20__325_560_tegra_regulator_coupler_init3, ptr @tegra20_core_limit._entry, ptr @tegra20_core_limit._entry.22, ptr @tegra20_core_limit._entry_ptr, ptr @tegra20_core_limit._entry_ptr.24, ptr @tegra20_core_rtc_max_spread._entry, ptr @tegra20_core_rtc_max_spread._entry_ptr, ptr @tegra20_core_rtc_update._entry, ptr @tegra20_core_rtc_update._entry.12, ptr @tegra20_core_rtc_update._entry.15, ptr @tegra20_core_rtc_update._entry_ptr, ptr @tegra20_core_rtc_update._entry_ptr.14, ptr @tegra20_core_rtc_update._entry_ptr.17, ptr @tegra20_regulator_balance_voltage._entry, ptr @tegra20_regulator_balance_voltage._entry.7, ptr @tegra20_regulator_balance_voltage._entry_ptr, ptr @tegra20_regulator_balance_voltage._entry_ptr.9, ptr @tegra20_regulator_suspend._entry, ptr @tegra20_regulator_suspend._entry_ptr, ptr @.str, ptr @tegra20_coupler, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_coupler to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_regulator_balance_voltage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_regulator_balance_voltage._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_core_rtc_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_core_rtc_update._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_core_rtc_update._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_core_rtc_max_spread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_core_limit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_core_limit._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_regulator_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_regulator_coupler_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @register_reboot_notifier(ptr noundef getelementptr inbounds (%struct.tegra_regulator_coupler, ptr @tegra20_coupler, i32 0, i32 4)) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.if.end17_crit_edge, label %do.end, !prof !68

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 553, i32 noundef 9, ptr noundef null) #6
  br label %if.end17

if.end17:                                         ; preds = %do.end, %if.end.if.end17_crit_edge
  %call24 = tail call i32 @register_pm_notifier(ptr noundef getelementptr inbounds (%struct.tegra_regulator_coupler, ptr @tegra20_coupler, i32 0, i32 5)) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool26.not = icmp eq i32 %call24, 0
  br i1 %tobool26.not, label %if.end17.if.end48_crit_edge, label %do.end42, !prof !68

if.end17.if.end48_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

do.end42:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 556, i32 noundef 9, ptr noundef null) #6
  br label %if.end48

if.end48:                                         ; preds = %do.end42, %if.end17.if.end48_crit_edge
  %call56 = tail call i32 @regulator_coupler_register(ptr noundef nonnull @tegra20_coupler) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call56, %if.end48 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_reboot_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pm_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_coupler_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra20_regulator_attach(ptr nocapture noundef %coupler, ptr noundef %rdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 13, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef null) #6
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %core_rdev = getelementptr inbounds %struct.tegra_regulator_coupler, ptr %coupler, i32 0, i32 1
  %2 = ptrtoint ptr %core_rdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core_rdev, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %land.lhs.true.cleanup.sink.split_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true.cleanup.sink.split_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call.i26 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef null) #6
  %tobool.i27.not = icmp eq ptr %call.i26, null
  br i1 %tobool.i27.not, label %if.end.if.end8_crit_edge, label %land.lhs.true4

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

land.lhs.true4:                                   ; preds = %if.end
  %rtc_rdev = getelementptr inbounds %struct.tegra_regulator_coupler, ptr %coupler, i32 0, i32 3
  %4 = ptrtoint ptr %rtc_rdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rtc_rdev, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %land.lhs.true4.cleanup.sink.split_crit_edge, label %land.lhs.true4.if.end8_crit_edge

land.lhs.true4.if.end8_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

land.lhs.true4.cleanup.sink.split_crit_edge:      ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end8:                                          ; preds = %land.lhs.true4.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %call.i28 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef null) #6
  %tobool.i29.not = icmp eq ptr %call.i28, null
  br i1 %tobool.i29.not, label %if.end8.cleanup_crit_edge, label %land.lhs.true10

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true10:                                  ; preds = %if.end8
  %cpu_rdev = getelementptr inbounds %struct.tegra_regulator_coupler, ptr %coupler, i32 0, i32 2
  %6 = ptrtoint ptr %cpu_rdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cpu_rdev, align 4
  %tobool11.not = icmp eq ptr %7, null
  br i1 %tobool11.not, label %land.lhs.true10.cleanup.sink.split_crit_edge, label %land.lhs.true10.cleanup_crit_edge

land.lhs.true10.cleanup_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true10.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %land.lhs.true10.cleanup.sink.split_crit_edge, %land.lhs.true4.cleanup.sink.split_crit_edge, %land.lhs.true.cleanup.sink.split_crit_edge
  %cpu_rdev.sink = phi ptr [ %core_rdev, %land.lhs.true.cleanup.sink.split_crit_edge ], [ %rtc_rdev, %land.lhs.true4.cleanup.sink.split_crit_edge ], [ %cpu_rdev, %land.lhs.true10.cleanup.sink.split_crit_edge ]
  %8 = ptrtoint ptr %cpu_rdev.sink to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %rdev, ptr %cpu_rdev.sink, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true10.cleanup_crit_edge, %if.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %land.lhs.true10.cleanup_crit_edge ], [ -22, %if.end8.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra20_regulator_detach(ptr nocapture noundef %coupler, ptr noundef readnone %rdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_state to i32))
  %0 = load i32, ptr @system_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %0)
  %cmp = icmp ugt i32 %0, 3
  br i1 %cmp, label %land.rhs, label %if.end37

land.rhs:                                         ; preds = %entry
  %.b59 = load i1, ptr @tegra20_regulator_detach.__already_done, align 1
  br i1 %.b59, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !68

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @tegra20_regulator_detach.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 514, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end37:                                         ; preds = %entry
  %core_rdev = getelementptr inbounds %struct.tegra_regulator_coupler, ptr %coupler, i32 0, i32 1
  %1 = ptrtoint ptr %core_rdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %core_rdev, align 4
  %cmp38 = icmp eq ptr %2, %rdev
  br i1 %cmp38, label %if.then39, label %if.end41

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %core_rdev to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %core_rdev, align 4
  br label %cleanup

if.end41:                                         ; preds = %if.end37
  %rtc_rdev = getelementptr inbounds %struct.tegra_regulator_coupler, ptr %coupler, i32 0, i32 3
  %4 = ptrtoint ptr %rtc_rdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rtc_rdev, align 4
  %cmp42 = icmp eq ptr %5, %rdev
  br i1 %cmp42, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %rtc_rdev to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %rtc_rdev, align 4
  br label %cleanup

if.end45:                                         ; preds = %if.end41
  %cpu_rdev = getelementptr inbounds %struct.tegra_regulator_coupler, ptr %coupler, i32 0, i32 2
  %7 = ptrtoint ptr %cpu_rdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cpu_rdev, align 4
  %cmp46 = icmp eq ptr %8, %rdev
  br i1 %cmp46, label %if.then47, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then47:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %cpu_rdev to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %cpu_rdev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then47, %if.end45.cleanup_crit_edge, %if.then43, %if.then39, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then39 ], [ 0, %if.then43 ], [ 0, %if.then47 ], [ -1, %if.then ], [ -22, %if.end45.cleanup_crit_edge ], [ -1, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra20_regulator_balance_voltage(ptr noundef %coupler, ptr noundef readnone %rdev, i32 noundef %state) #3 align 64 {
entry:
  %cpu_min_uV_consumers.i = alloca i32, align 4
  %cpu_max_uV.i = alloca i32, align 4
  %cpu_min_uV.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %core_rdev1 = getelementptr inbounds %struct.tegra_regulator_coupler, ptr %coupler, i32 0, i32 1
  %0 = ptrtoint ptr %core_rdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core_rdev1, align 4
  %cpu_rdev2 = getelementptr inbounds %struct.tegra_regulator_coupler, ptr %coupler, i32 0, i32 2
  %2 = ptrtoint ptr %cpu_rdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpu_rdev2, align 4
  %rtc_rdev3 = getelementptr inbounds %struct.tegra_regulator_coupler, ptr %coupler, i32 0, i32 3
  %4 = ptrtoint ptr %rtc_rdev3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rtc_rdev3, align 4
  %cmp.not = icmp eq ptr %1, %rdev
  %cmp4.not = icmp eq ptr %3, %rdev
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp4.not
  %cmp6.not = icmp eq ptr %5, %rdev
  %or.cond62 = select i1 %or.cond, i1 true, i1 %cmp6.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %cmp7.not = icmp eq i32 %state, 0
  %or.cond63 = and i1 %cmp7.not, %or.cond62
  br i1 %or.cond63, label %do.end11, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #9
  br label %cleanup

do.end11:                                         ; preds = %entry
  %sys_reboot_mode_req = getelementptr inbounds %struct.tegra_regulator_coupler, ptr %coupler, i32 0, i32 8
  %6 = ptrtoint ptr %sys_reboot_mode_req to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load volatile i8, ptr %sys_reboot_mode_req, align 4, !range !69
  %sys_reboot_mode = getelementptr inbounds %struct.tegra_regulator_coupler, ptr %coupler, i32 0, i32 9
  %8 = ptrtoint ptr %sys_reboot_mode to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %sys_reboot_mode, align 1
  %sys_suspend_mode_req = getelementptr inbounds %struct.tegra_regulator_coupler, ptr %coupler, i32 0, i32 10
  %9 = ptrtoint ptr %sys_suspend_mode_req to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load volatile i8, ptr %sys_suspend_mode_req, align 2, !range !69
  %sys_suspend_mode = getelementptr inbounds %struct.tegra_regulator_coupler, ptr %coupler, i32 0, i32 11
  %11 = ptrtoint ptr %sys_suspend_mode to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %sys_suspend_mode, align 1
  br i1 %cmp4.not, label %if.then24, label %if.end26

if.then24:                                        ; preds = %do.end11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cpu_min_uV_consumers.i) #6
  %12 = ptrtoint ptr %cpu_min_uV_consumers.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %cpu_min_uV_consumers.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cpu_max_uV.i) #6
  %13 = ptrtoint ptr %cpu_max_uV.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2147483647, ptr %cpu_max_uV.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cpu_min_uV.i) #6
  %14 = ptrtoint ptr %cpu_min_uV.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %cpu_min_uV.i, align 4
  %call.i = call i32 @regulator_check_voltage(ptr noundef %rdev, ptr noundef nonnull %cpu_min_uV.i, ptr noundef nonnull %cpu_max_uV.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then24.tegra20_cpu_voltage_update.exit_crit_edge

if.then24.tegra20_cpu_voltage_update.exit_crit_edge: ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  br label %tegra20_cpu_voltage_update.exit

if.end.i:                                         ; preds = %if.then24
  %call1.i = call i32 @regulator_check_consumers(ptr noundef %rdev, ptr noundef nonnull %cpu_min_uV.i, ptr noundef nonnull %cpu_max_uV.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.tegra20_cpu_voltage_update.exit_crit_edge

if.end.i.tegra20_cpu_voltage_update.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tegra20_cpu_voltage_update.exit

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = call i32 @regulator_check_consumers(ptr noundef %rdev, ptr noundef nonnull %cpu_min_uV_consumers.i, ptr noundef nonnull %cpu_max_uV.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end4.i.tegra20_cpu_voltage_update.exit_crit_edge

if.end4.i.tegra20_cpu_voltage_update.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tegra20_cpu_voltage_update.exit

if.end8.i:                                        ; preds = %if.end4.i
  %call9.i = call i32 @regulator_get_voltage_rdev(ptr noundef %rdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp.i = icmp slt i32 %call9.i, 0
  br i1 %cmp.i, label %if.end8.i.tegra20_cpu_voltage_update.exit_crit_edge, label %if.end11.i

if.end8.i.tegra20_cpu_voltage_update.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tegra20_cpu_voltage_update.exit

if.end11.i:                                       ; preds = %if.end8.i
  %cpu_min_uV12.i = getelementptr inbounds %struct.tegra_regulator_coupler, ptr %coupler, i32 0, i32 7
  %15 = ptrtoint ptr %cpu_min_uV12.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu_min_uV12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool13.not.i = icmp eq i32 %16, 0
  br i1 %tobool13.not.i, label %if.then14.i, label %if.end11.i.if.end16.i_crit_edge

if.end11.i.if.end16.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.i

if.then14.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %cpu_min_uV12.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call9.i, ptr %cpu_min_uV12.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then14.i, %if.end11.i.if.end16.i_crit_edge
  %18 = ptrtoint ptr %cpu_min_uV_consumers.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cpu_min_uV_consumers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool17.not.i = icmp eq i32 %19, 0
  br i1 %tobool17.not.i, label %if.then18.i, label %if.end16.i.if.end19.i_crit_edge

if.end16.i.if.end19.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.i

if.then18.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %cpu_min_uV.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call9.i, ptr %cpu_min_uV.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then18.i, %if.end16.i.if.end19.i_crit_edge
  %21 = ptrtoint ptr %sys_reboot_mode to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %sys_reboot_mode, align 1, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool20.not.i = icmp eq i8 %22, 0
  br i1 %tobool20.not.i, label %if.end19.i.if.end24.i_crit_edge, label %if.then21.i

if.end19.i.if.end24.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24.i

if.then21.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %cpu_min_uV.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cpu_min_uV.i, align 4
  %25 = ptrtoint ptr %cpu_min_uV12.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cpu_min_uV12.i, align 4
  %27 = call i32 @llvm.smax.i32(i32 %24, i32 %26) #6
  %28 = ptrtoint ptr %cpu_min_uV.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %cpu_min_uV.i, align 4
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then21.i, %if.end19.i.if.end24.i_crit_edge
  %29 = ptrtoint ptr %sys_suspend_mode to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %sys_suspend_mode, align 1, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool25.not.i = icmp eq i8 %30, 0
  br i1 %tobool25.not.i, label %if.end24.i.if.end40.i_crit_edge, label %if.then26.i

if.end24.i.if.end40.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40.i

if.then26.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 6) to i32))
  %31 = load i32, ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %switch.selectcmp.i.i = icmp eq i32 %31, 1
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 1025000, i32 1125000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %switch.selectcmp2.i.i = icmp eq i32 %31, 0
  %switch.select3.i.i = select i1 %switch.selectcmp2.i.i, i32 1100000, i32 %switch.select.i.i
  %32 = ptrtoint ptr %cpu_min_uV.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cpu_min_uV.i, align 4
  %34 = call i32 @llvm.smax.i32(i32 %switch.select3.i.i, i32 %33) #6
  %35 = ptrtoint ptr %cpu_max_uV.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cpu_max_uV.i, align 4
  %37 = call i32 @llvm.smin.i32(i32 %34, i32 %36) #6
  %38 = ptrtoint ptr %cpu_min_uV.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %cpu_min_uV.i, align 4
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then26.i, %if.end24.i.if.end40.i_crit_edge
  %39 = ptrtoint ptr %cpu_min_uV.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cpu_min_uV.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %call9.i)
  %cmp41.i = icmp sgt i32 %40, %call9.i
  br i1 %cmp41.i, label %if.then42.i, label %if.else.i

if.then42.i:                                      ; preds = %if.end40.i
  %call43.i = call fastcc i32 @tegra20_core_rtc_update(ptr noundef %coupler, ptr noundef %1, ptr noundef %5, i32 noundef %call9.i, i32 noundef %40) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %tobool44.not.i = icmp eq i32 %call43.i, 0
  br i1 %tobool44.not.i, label %if.end46.i, label %if.then42.i.tegra20_cpu_voltage_update.exit_crit_edge

if.then42.i.tegra20_cpu_voltage_update.exit_crit_edge: ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tegra20_cpu_voltage_update.exit

if.end46.i:                                       ; preds = %if.then42.i
  %41 = ptrtoint ptr %cpu_min_uV.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cpu_min_uV.i, align 4
  %43 = ptrtoint ptr %cpu_max_uV.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cpu_max_uV.i, align 4
  %call47.i = call i32 @regulator_set_voltage_rdev(ptr noundef %rdev, i32 noundef %42, i32 noundef %44, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i, label %if.end46.i.if.end62.i_crit_edge, label %if.end46.i.tegra20_cpu_voltage_update.exit_crit_edge

if.end46.i.tegra20_cpu_voltage_update.exit_crit_edge: ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tegra20_cpu_voltage_update.exit

if.end46.i.if.end62.i_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62.i

if.else.i:                                        ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %call9.i)
  %cmp51.i = icmp slt i32 %40, %call9.i
  br i1 %cmp51.i, label %if.then52.i, label %if.else.i.if.end62.i_crit_edge

if.else.i.if.end62.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62.i

if.then52.i:                                      ; preds = %if.else.i
  %45 = ptrtoint ptr %cpu_max_uV.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cpu_max_uV.i, align 4
  %call53.i = call i32 @regulator_set_voltage_rdev(ptr noundef %rdev, i32 noundef %40, i32 noundef %46, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %tobool54.not.i = icmp eq i32 %call53.i, 0
  br i1 %tobool54.not.i, label %if.end56.i, label %if.then52.i.tegra20_cpu_voltage_update.exit_crit_edge

if.then52.i.tegra20_cpu_voltage_update.exit_crit_edge: ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tegra20_cpu_voltage_update.exit

if.end56.i:                                       ; preds = %if.then52.i
  %47 = ptrtoint ptr %cpu_min_uV.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cpu_min_uV.i, align 4
  %call57.i = call fastcc i32 @tegra20_core_rtc_update(ptr noundef %coupler, ptr noundef %1, ptr noundef %5, i32 noundef %call9.i, i32 noundef %48) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %tobool58.not.i = icmp eq i32 %call57.i, 0
  br i1 %tobool58.not.i, label %if.end56.i.if.end62.i_crit_edge, label %if.end56.i.tegra20_cpu_voltage_update.exit_crit_edge

if.end56.i.tegra20_cpu_voltage_update.exit_crit_edge: ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tegra20_cpu_voltage_update.exit

if.end56.i.if.end62.i_crit_edge:                  ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62.i

if.end62.i:                                       ; preds = %if.end56.i.if.end62.i_crit_edge, %if.else.i.if.end62.i_crit_edge, %if.end46.i.if.end62.i_crit_edge
  br label %tegra20_cpu_voltage_update.exit

tegra20_cpu_voltage_update.exit:                  ; preds = %if.end62.i, %if.end56.i.tegra20_cpu_voltage_update.exit_crit_edge, %if.then52.i.tegra20_cpu_voltage_update.exit_crit_edge, %if.end46.i.tegra20_cpu_voltage_update.exit_crit_edge, %if.then42.i.tegra20_cpu_voltage_update.exit_crit_edge, %if.end8.i.tegra20_cpu_voltage_update.exit_crit_edge, %if.end4.i.tegra20_cpu_voltage_update.exit_crit_edge, %if.end.i.tegra20_cpu_voltage_update.exit_crit_edge, %if.then24.tegra20_cpu_voltage_update.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end62.i ], [ %call.i, %if.then24.tegra20_cpu_voltage_update.exit_crit_edge ], [ %call1.i, %if.end.i.tegra20_cpu_voltage_update.exit_crit_edge ], [ %call5.i, %if.end4.i.tegra20_cpu_voltage_update.exit_crit_edge ], [ %call9.i, %if.end8.i.tegra20_cpu_voltage_update.exit_crit_edge ], [ %call43.i, %if.then42.i.tegra20_cpu_voltage_update.exit_crit_edge ], [ %call47.i, %if.end46.i.tegra20_cpu_voltage_update.exit_crit_edge ], [ %call53.i, %if.then52.i.tegra20_cpu_voltage_update.exit_crit_edge ], [ %call57.i, %if.end56.i.tegra20_cpu_voltage_update.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cpu_min_uV.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cpu_max_uV.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cpu_min_uV_consumers.i) #6
  br label %cleanup

if.end26:                                         ; preds = %do.end11
  br i1 %cmp.not, label %if.then28, label %do.end33

if.then28:                                        ; preds = %if.end26
  %call.i64 = tail call i32 @regulator_get_voltage_rdev(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64)
  %cmp.i65 = icmp slt i32 %call.i64, 0
  br i1 %cmp.i65, label %if.then28.cleanup_crit_edge, label %if.end.i67

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i67:                                       ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i66 = tail call fastcc i32 @tegra20_core_rtc_update(ptr noundef %coupler, ptr noundef %rdev, ptr noundef %5, i32 noundef %call.i64, i32 noundef %call.i64) #6
  br label %cleanup

do.end33:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %call35 = tail call ptr @rdev_get_name(ptr noundef %5) #6
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %call35) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end33, %if.end.i67, %if.then28.cleanup_crit_edge, %tegra20_cpu_voltage_update.exit, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %retval.0.i, %tegra20_cpu_voltage_update.exit ], [ -1, %do.end33 ], [ %call1.i66, %if.end.i67 ], [ %call.i64, %if.then28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra20_regulator_reboot(ptr noundef %notifier, i32 noundef %event, ptr nocapture noundef readnone %cmd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %event)
  %cmp.not = icmp eq i32 %event, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %core_rdev.i = getelementptr i8, ptr %notifier, i32 -12
  %0 = ptrtoint ptr %core_rdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core_rdev.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %lor.lhs.false.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end
  %rtc_rdev.i = getelementptr i8, ptr %notifier, i32 -4
  %2 = ptrtoint ptr %rtc_rdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rtc_rdev.i, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %cpu_rdev.i = getelementptr i8, ptr %notifier, i32 -8
  %4 = ptrtoint ptr %cpu_rdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cpu_rdev.i, align 4
  %tobool3.not.i = icmp eq ptr %5, null
  br i1 %tobool3.not.i, label %lor.lhs.false2.i.cleanup_crit_edge, label %do.body5.i

lor.lhs.false2.i.cleanup_crit_edge:               ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body5.i:                                       ; preds = %lor.lhs.false2.i
  %sys_reboot_mode_req.i = getelementptr i8, ptr %notifier, i32 32
  %6 = ptrtoint ptr %sys_reboot_mode_req.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store volatile i8 1, ptr %sys_reboot_mode_req.i, align 4
  %call.i = tail call i32 @regulator_sync_voltage_rdev(ptr noundef nonnull %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool11.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %do.body5.i.tegra20_regulator_prepare_reboot.exit_crit_edge

do.body5.i.tegra20_regulator_prepare_reboot.exit_crit_edge: ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tegra20_regulator_prepare_reboot.exit

if.end13.i:                                       ; preds = %do.body5.i
  %7 = ptrtoint ptr %core_rdev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %core_rdev.i, align 4
  %call15.i = tail call i32 @regulator_sync_voltage_rdev(ptr noundef %8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %do.body23.i, label %if.end13.i.tegra20_regulator_prepare_reboot.exit_crit_edge

if.end13.i.tegra20_regulator_prepare_reboot.exit_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tegra20_regulator_prepare_reboot.exit

do.body23.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %sys_reboot_mode_req.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store volatile i8 1, ptr %sys_reboot_mode_req.i, align 4
  br label %cleanup

tegra20_regulator_prepare_reboot.exit:            ; preds = %if.end13.i.tegra20_regulator_prepare_reboot.exit_crit_edge, %do.body5.i.tegra20_regulator_prepare_reboot.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %do.body5.i.tegra20_regulator_prepare_reboot.exit_crit_edge ], [ %call15.i, %if.end13.i.tegra20_regulator_prepare_reboot.exit_crit_edge ]
  %sub.i = sub i32 1, %retval.0.i
  %or.i = or i32 %sub.i, 32768
  br label %cleanup

cleanup:                                          ; preds = %tegra20_regulator_prepare_reboot.exit, %do.body23.i, %lor.lhs.false2.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %or.i, %tegra20_regulator_prepare_reboot.exit ], [ 1, %do.body23.i ], [ 1, %lor.lhs.false2.i.cleanup_crit_edge ], [ 1, %lor.lhs.false.i.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra20_regulator_suspend(ptr noundef %notifier, i32 noundef %mode, ptr nocapture noundef readnone %arg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mode, label %entry.sw.epilog.thread_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 5, label %entry.sw.bb_crit_edge48
    i32 3, label %entry.sw.bb_crit_edge49
    i32 2, label %entry.sw.bb1_crit_edge
    i32 6, label %entry.sw.bb1_crit_edge50
    i32 4, label %entry.sw.bb1_crit_edge51
  ]

entry.sw.bb1_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

entry.sw.bb1_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

entry.sw.bb_crit_edge49:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge48:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.epilog.thread_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.thread

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge48, %entry.sw.bb_crit_edge49
  %core_rdev.i = getelementptr i8, ptr %notifier, i32 -24
  %1 = ptrtoint ptr %core_rdev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %core_rdev.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %sw.bb.sw.epilog.thread_crit_edge, label %lor.lhs.false.i

sw.bb.sw.epilog.thread_crit_edge:                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.thread

lor.lhs.false.i:                                  ; preds = %sw.bb
  %rtc_rdev.i = getelementptr i8, ptr %notifier, i32 -16
  %3 = ptrtoint ptr %rtc_rdev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rtc_rdev.i, align 4
  %tobool1.not.i = icmp eq ptr %4, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.sw.epilog.thread_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.sw.epilog.thread_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.thread

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %cpu_rdev.i = getelementptr i8, ptr %notifier, i32 -20
  %5 = ptrtoint ptr %cpu_rdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cpu_rdev.i, align 4
  %tobool3.not.i = icmp eq ptr %6, null
  br i1 %tobool3.not.i, label %lor.lhs.false2.i.sw.epilog.thread_crit_edge, label %do.body5.i

lor.lhs.false2.i.sw.epilog.thread_crit_edge:      ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.thread

do.body5.i:                                       ; preds = %lor.lhs.false2.i
  %sys_suspend_mode_req.i = getelementptr i8, ptr %notifier, i32 22
  %7 = ptrtoint ptr %sys_suspend_mode_req.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store volatile i8 1, ptr %sys_suspend_mode_req.i, align 2
  %call.i = tail call i32 @regulator_sync_voltage_rdev(ptr noundef nonnull %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool13.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool13.not.i, label %do.body5.i.sw.epilog_crit_edge, label %do.body5.i.sw.epilog.thread.sink.split_crit_edge

do.body5.i.sw.epilog.thread.sink.split_crit_edge: ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.thread.sink.split

do.body5.i.sw.epilog_crit_edge:                   ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge50, %entry.sw.bb1_crit_edge51
  %core_rdev.i9 = getelementptr i8, ptr %notifier, i32 -24
  %8 = ptrtoint ptr %core_rdev.i9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %core_rdev.i9, align 4
  %tobool.not.i10 = icmp eq ptr %9, null
  br i1 %tobool.not.i10, label %sw.bb1.sw.epilog.thread_crit_edge, label %lor.lhs.false.i13

sw.bb1.sw.epilog.thread_crit_edge:                ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.thread

lor.lhs.false.i13:                                ; preds = %sw.bb1
  %rtc_rdev.i11 = getelementptr i8, ptr %notifier, i32 -16
  %10 = ptrtoint ptr %rtc_rdev.i11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rtc_rdev.i11, align 4
  %tobool1.not.i12 = icmp eq ptr %11, null
  br i1 %tobool1.not.i12, label %lor.lhs.false.i13.sw.epilog.thread_crit_edge, label %lor.lhs.false2.i16

lor.lhs.false.i13.sw.epilog.thread_crit_edge:     ; preds = %lor.lhs.false.i13
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.thread

lor.lhs.false2.i16:                               ; preds = %lor.lhs.false.i13
  %cpu_rdev.i14 = getelementptr i8, ptr %notifier, i32 -20
  %12 = ptrtoint ptr %cpu_rdev.i14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cpu_rdev.i14, align 4
  %tobool3.not.i15 = icmp eq ptr %13, null
  br i1 %tobool3.not.i15, label %lor.lhs.false2.i16.sw.epilog.thread_crit_edge, label %do.body5.i20

lor.lhs.false2.i16.sw.epilog.thread_crit_edge:    ; preds = %lor.lhs.false2.i16
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.thread

do.body5.i20:                                     ; preds = %lor.lhs.false2.i16
  %sys_suspend_mode_req.i17 = getelementptr i8, ptr %notifier, i32 22
  %14 = ptrtoint ptr %sys_suspend_mode_req.i17 to i32
  call void @__asan_store1_noabort(i32 %14)
  store volatile i8 0, ptr %sys_suspend_mode_req.i17, align 2
  %call.i18 = tail call i32 @regulator_sync_voltage_rdev(ptr noundef nonnull %13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18)
  %tobool13.not.i19 = icmp eq i32 %call.i18, 0
  br i1 %tobool13.not.i19, label %do.body5.i20.sw.epilog_crit_edge, label %do.body5.i20.sw.epilog.thread.sink.split_crit_edge

do.body5.i20.sw.epilog.thread.sink.split_crit_edge: ; preds = %do.body5.i20
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.thread.sink.split

do.body5.i20.sw.epilog_crit_edge:                 ; preds = %do.body5.i20
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body5.i20.sw.epilog_crit_edge, %do.body5.i.sw.epilog_crit_edge
  %core_rdev.i9.sink = phi ptr [ %core_rdev.i, %do.body5.i.sw.epilog_crit_edge ], [ %core_rdev.i9, %do.body5.i20.sw.epilog_crit_edge ]
  %15 = ptrtoint ptr %core_rdev.i9.sink to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %core_rdev.i9.sink, align 4
  %call17.i21 = tail call i32 @regulator_sync_voltage_rdev(ptr noundef %16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i21)
  %tobool.not = icmp eq i32 %call17.i21, 0
  br i1 %tobool.not, label %sw.epilog.sw.epilog.thread_crit_edge, label %sw.epilog.sw.epilog.thread.sink.split_crit_edge

sw.epilog.sw.epilog.thread.sink.split_crit_edge:  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.thread.sink.split

sw.epilog.sw.epilog.thread_crit_edge:             ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.thread

sw.epilog.thread.sink.split:                      ; preds = %sw.epilog.sw.epilog.thread.sink.split_crit_edge, %do.body5.i20.sw.epilog.thread.sink.split_crit_edge, %do.body5.i.sw.epilog.thread.sink.split_crit_edge
  %ret.0.ph.sink47 = phi i32 [ %call17.i21, %sw.epilog.sw.epilog.thread.sink.split_crit_edge ], [ %call.i18, %do.body5.i20.sw.epilog.thread.sink.split_crit_edge ], [ %call.i, %do.body5.i.sw.epilog.thread.sink.split_crit_edge ]
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %ret.0.ph.sink47) #9
  %sub.i = sub i32 1, %ret.0.ph.sink47
  %or.i = or i32 %sub.i, 32768
  br label %sw.epilog.thread

sw.epilog.thread:                                 ; preds = %sw.epilog.thread.sink.split, %sw.epilog.sw.epilog.thread_crit_edge, %lor.lhs.false2.i16.sw.epilog.thread_crit_edge, %lor.lhs.false.i13.sw.epilog.thread_crit_edge, %sw.bb1.sw.epilog.thread_crit_edge, %lor.lhs.false2.i.sw.epilog.thread_crit_edge, %lor.lhs.false.i.sw.epilog.thread_crit_edge, %sw.bb.sw.epilog.thread_crit_edge, %entry.sw.epilog.thread_crit_edge
  %17 = phi i32 [ 1, %sw.epilog.sw.epilog.thread_crit_edge ], [ 1, %entry.sw.epilog.thread_crit_edge ], [ 1, %lor.lhs.false2.i.sw.epilog.thread_crit_edge ], [ 1, %lor.lhs.false.i.sw.epilog.thread_crit_edge ], [ 1, %sw.bb.sw.epilog.thread_crit_edge ], [ 1, %lor.lhs.false2.i16.sw.epilog.thread_crit_edge ], [ 1, %lor.lhs.false.i13.sw.epilog.thread_crit_edge ], [ 1, %sw.bb1.sw.epilog.thread_crit_edge ], [ %or.i, %sw.epilog.thread.sink.split ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_check_voltage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_check_consumers(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_rdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra20_core_rtc_update(ptr nocapture noundef %tegra, ptr noundef %core_rdev, ptr noundef %rtc_rdev, i32 noundef %cpu_uV, i32 noundef %cpu_min_uV) unnamed_addr #3 align 64 {
entry:
  %core_min_uV.i = alloca i32, align 4
  %core_max_uV.i = alloca i32, align 4
  %core_min_uV = alloca i32, align 4
  %core_max_uV = alloca i32, align 4
  %rtc_min_uV = alloca i32, align 4
  %rtc_max_uV = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %core_min_uV) #6
  %0 = ptrtoint ptr %core_min_uV to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %core_min_uV, align 4, !annotation !70
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %core_max_uV) #6
  %1 = ptrtoint ptr %core_max_uV to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2147483647, ptr %core_max_uV, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rtc_min_uV) #6
  %2 = ptrtoint ptr %rtc_min_uV to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %rtc_min_uV, align 4, !annotation !70
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rtc_max_uV) #6
  %3 = ptrtoint ptr %rtc_max_uV to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2147483647, ptr %rtc_max_uV, align 4
  %n_coupled.i = getelementptr inbounds %struct.regulator_dev, ptr %core_rdev, i32 0, i32 7, i32 3
  %4 = ptrtoint ptr %n_coupled.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_coupled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp29.i = icmp ugt i32 %5, 1
  br i1 %cmp29.i, label %for.body.lr.ph.i, label %entry.land.end.i_crit_edge

entry.land.end.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end.i

for.body.lr.ph.i:                                 ; preds = %entry
  %coupling_desc.i = getelementptr inbounds %struct.regulator_dev, ptr %core_rdev, i32 0, i32 7
  %constraints.i = getelementptr inbounds %struct.regulator_dev, ptr %core_rdev, i32 0, i32 14
  %6 = ptrtoint ptr %constraints.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %constraints.i, align 8
  %max_spread1.i = getelementptr inbounds %struct.regulation_constraints, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %max_spread1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %max_spread1.i, align 4
  %10 = ptrtoint ptr %coupling_desc.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %coupling_desc.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.030.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %for.cond.i.land.end.i_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.cond.i.land.end.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.030.i = phi i32 [ 1, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %sub.i = add i32 %i.030.i, -1
  %arrayidx.i = getelementptr i32, ptr %9, i32 %sub.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %arrayidx2.i = getelementptr ptr, ptr %11, i32 %i.030.i
  %14 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx2.i, align 4
  %cmp3.i = icmp ne ptr %15, %rtc_rdev
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  %or.cond.i = select i1 %cmp3.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond.i, label %for.cond.i, label %for.body.i.tegra20_core_rtc_max_spread.exit_crit_edge

for.body.i.tegra20_core_rtc_max_spread.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tegra20_core_rtc_max_spread.exit

land.end.i:                                       ; preds = %for.cond.i.land.end.i_crit_edge, %entry.land.end.i_crit_edge
  %.b28.i = load i1, ptr @tegra20_core_rtc_max_spread.__already_done, align 1
  br i1 %.b28.i, label %land.end.i.tegra20_core_rtc_max_spread.exit_crit_edge, label %if.then9.i, !prof !68

land.end.i.tegra20_core_rtc_max_spread.exit_crit_edge: ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tegra20_core_rtc_max_spread.exit

if.then9.i:                                       ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @tegra20_core_rtc_max_spread.__already_done, align 1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #9
  br label %tegra20_core_rtc_max_spread.exit

tegra20_core_rtc_max_spread.exit:                 ; preds = %if.then9.i, %land.end.i.tegra20_core_rtc_max_spread.exit_crit_edge, %for.body.i.tegra20_core_rtc_max_spread.exit_crit_edge
  %retval.0.i = phi i32 [ 150000, %if.then9.i ], [ 150000, %land.end.i.tegra20_core_rtc_max_spread.exit_crit_edge ], [ %13, %for.body.i.tegra20_core_rtc_max_spread.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %core_min_uV.i) #6
  %16 = ptrtoint ptr %core_min_uV.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %core_min_uV.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %core_max_uV.i) #6
  %call.i262 = tail call zeroext i1 @tegra_pmc_core_domain_state_synced() #6
  br i1 %call.i262, label %land.lhs.true.i, label %tegra20_core_rtc_max_spread.exit.if.end15.i_crit_edge

tegra20_core_rtc_max_spread.exit.if.end15.i_crit_edge: ; preds = %tegra20_core_rtc_max_spread.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.i

land.lhs.true.i:                                  ; preds = %tegra20_core_rtc_max_spread.exit
  %sys_reboot_mode.i = getelementptr inbounds %struct.tegra_regulator_coupler, ptr %tegra, i32 0, i32 9
  %17 = ptrtoint ptr %sys_reboot_mode.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %sys_reboot_mode.i, align 1, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i263 = icmp eq i8 %18, 0
  br i1 %tobool.not.i263, label %land.end.i264, label %land.lhs.true.i.if.end15.i_crit_edge

land.lhs.true.i.if.end15.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.i

land.end.i264:                                    ; preds = %land.lhs.true.i
  %.b53.i = load i1, ptr @tegra20_core_limit.__already_done, align 1
  br i1 %.b53.i, label %land.end.i264.tegra20_core_limit.exit.thread_crit_edge, label %if.then6.i, !prof !68

land.end.i264.tegra20_core_limit.exit.thread_crit_edge: ; preds = %land.end.i264
  call void @__sanitizer_cov_trace_pc() #8
  br label %tegra20_core_limit.exit.thread

if.then6.i:                                       ; preds = %land.end.i264
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @tegra20_core_limit.__already_done, align 1
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #9
  br label %tegra20_core_limit.exit.thread

if.end15.i:                                       ; preds = %land.lhs.true.i.if.end15.i_crit_edge, %tegra20_core_rtc_max_spread.exit.if.end15.i_crit_edge
  %core_min_uV16.i = getelementptr inbounds %struct.tegra_regulator_coupler, ptr %tegra, i32 0, i32 6
  %19 = ptrtoint ptr %core_min_uV16.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %core_min_uV16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i = icmp sgt i32 %20, 0
  br i1 %cmp.i, label %if.end15.i.tegra20_core_limit.exit.thread_crit_edge, label %if.end19.i

if.end15.i.tegra20_core_limit.exit.thread_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tegra20_core_limit.exit.thread

if.end19.i:                                       ; preds = %if.end15.i
  %call20.i = tail call i32 @regulator_get_voltage_rdev(ptr noundef %core_rdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %cmp21.i = icmp slt i32 %call20.i, 0
  br i1 %cmp21.i, label %tegra20_core_limit.exit.thread268, label %if.end23.i

tegra20_core_limit.exit.thread268:                ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %core_max_uV.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %core_min_uV.i) #6
  br label %cleanup

if.end23.i:                                       ; preds = %if.end19.i
  %21 = tail call i32 @llvm.umax.i32(i32 %call20.i, i32 1200000) #6
  %22 = ptrtoint ptr %core_max_uV.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %core_max_uV.i, align 4
  %call26.i = call i32 @regulator_check_voltage(ptr noundef %core_rdev, ptr noundef nonnull %core_min_uV.i, ptr noundef nonnull %core_max_uV.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.end29.i, label %if.end23.i.tegra20_core_limit.exit_crit_edge

if.end23.i.tegra20_core_limit.exit_crit_edge:     ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tegra20_core_limit.exit

if.end29.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %core_max_uV.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %core_max_uV.i, align 4
  %25 = ptrtoint ptr %core_min_uV16.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %core_min_uV16.i, align 4
  %call36.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %24) #9
  %26 = ptrtoint ptr %core_min_uV16.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %core_min_uV16.i, align 4
  br label %tegra20_core_limit.exit

tegra20_core_limit.exit.thread:                   ; preds = %if.end15.i.tegra20_core_limit.exit.thread_crit_edge, %if.then6.i, %land.end.i264.tegra20_core_limit.exit.thread_crit_edge
  %retval.0.i265.ph = phi i32 [ %20, %if.end15.i.tegra20_core_limit.exit.thread_crit_edge ], [ 0, %land.end.i264.tegra20_core_limit.exit.thread_crit_edge ], [ 0, %if.then6.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %core_max_uV.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %core_min_uV.i) #6
  %28 = ptrtoint ptr %core_min_uV to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %retval.0.i265.ph, ptr %core_min_uV, align 4
  br label %if.end

tegra20_core_limit.exit:                          ; preds = %if.end29.i, %if.end23.i.tegra20_core_limit.exit_crit_edge
  %retval.0.i265 = phi i32 [ %27, %if.end29.i ], [ %call26.i, %if.end23.i.tegra20_core_limit.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %core_max_uV.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %core_min_uV.i) #6
  %29 = ptrtoint ptr %core_min_uV to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %retval.0.i265, ptr %core_min_uV, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i265)
  %cmp = icmp slt i32 %retval.0.i265, 0
  br i1 %cmp, label %tegra20_core_limit.exit.cleanup_crit_edge, label %tegra20_core_limit.exit.if.end_crit_edge

tegra20_core_limit.exit.if.end_crit_edge:         ; preds = %tegra20_core_limit.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

tegra20_core_limit.exit.cleanup_crit_edge:        ; preds = %tegra20_core_limit.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %tegra20_core_limit.exit.if.end_crit_edge, %tegra20_core_limit.exit.thread
  %call2 = call i32 @regulator_check_voltage(ptr noundef %core_rdev, ptr noundef nonnull %core_min_uV, ptr noundef nonnull %core_max_uV) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @regulator_check_consumers(ptr noundef %core_rdev, ptr noundef nonnull %core_min_uV, ptr noundef nonnull %core_max_uV, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %sys_suspend_mode = getelementptr inbounds %struct.tegra_regulator_coupler, ptr %tegra, i32 0, i32 11
  %30 = ptrtoint ptr %sys_suspend_mode to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %sys_suspend_mode, align 1, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool9.not = icmp eq i8 %31, 0
  br i1 %tobool9.not, label %if.end8.if.end19_crit_edge, label %if.then10

if.end8.if.end19_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 6) to i32))
  %32 = load i32, ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %cond.i = icmp eq i32 %32, 2
  %..i = select i1 %cond.i, i32 1300000, i32 1225000
  %33 = ptrtoint ptr %core_min_uV to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %core_min_uV, align 4
  %35 = call i32 @llvm.smax.i32(i32 %..i, i32 %34)
  %36 = ptrtoint ptr %core_max_uV to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %core_max_uV, align 4
  %38 = call i32 @llvm.smin.i32(i32 %35, i32 %37)
  %39 = ptrtoint ptr %core_min_uV to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %core_min_uV, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then10, %if.end8.if.end19_crit_edge
  %call20 = call i32 @regulator_get_voltage_rdev(ptr noundef %core_rdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.end19.cleanup_crit_edge, label %if.end23

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %add = add i32 %cpu_min_uV, 125000
  %40 = ptrtoint ptr %core_min_uV to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %core_min_uV, align 4
  %42 = call i32 @llvm.smax.i32(i32 %add, i32 %41)
  %43 = ptrtoint ptr %core_min_uV to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %core_min_uV, align 4
  %44 = ptrtoint ptr %core_max_uV to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %core_max_uV, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %45)
  %cmp30 = icmp sgt i32 %42, %45
  br i1 %cmp30, label %if.end23.cleanup_crit_edge, label %if.end32

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end32:                                         ; preds = %if.end23
  %add33 = add i32 %cpu_uV, 120000
  call void @__sanitizer_cov_trace_cmp4(i32 %add33, i32 %call20)
  %cmp34 = icmp sgt i32 %add33, %call20
  br i1 %cmp34, label %do.end, label %if.end32.if.end39_crit_edge

if.end32.if.end39_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

do.end:                                           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call20, i32 noundef %add33) #9
  br label %if.end39

if.end39:                                         ; preds = %do.end, %if.end32.if.end39_crit_edge
  %call40 = call i32 @regulator_get_voltage_rdev(ptr noundef %rtc_rdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %if.end39.cleanup_crit_edge, label %if.end43

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end43:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_cmp4(i32 %add33, i32 %call40)
  %cmp45 = icmp sgt i32 %add33, %call40
  br i1 %cmp45, label %do.end49, label %if.end43.if.end53_crit_edge

if.end43.if.end53_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

do.end49:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call40, i32 noundef %add33) #9
  br label %if.end53

if.end53:                                         ; preds = %do.end49, %if.end43.if.end53_crit_edge
  %sub = sub nsw i32 %call20, %call40
  %46 = call i32 @llvm.abs.i32(i32 %sub, i1 true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 170000, i32 %46)
  %cmp61 = icmp ugt i32 %46, 170000
  br i1 %cmp61, label %do.end65, label %if.end53.if.end68_crit_edge

if.end53.if.end68_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68

do.end65:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  %call67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call20, i32 noundef %call40) #9
  br label %if.end68

if.end68:                                         ; preds = %do.end65, %if.end53.if.end68_crit_edge
  %47 = ptrtoint ptr %core_min_uV to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %core_min_uV, align 4
  %sub70 = sub i32 %48, %retval.0.i
  %49 = call i32 @llvm.smax.i32(i32 %add, i32 %sub70)
  %50 = ptrtoint ptr %rtc_min_uV to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %rtc_min_uV, align 4
  %call77 = call i32 @regulator_check_voltage(ptr noundef %rtc_rdev, ptr noundef nonnull %rtc_min_uV, ptr noundef nonnull %rtc_max_uV) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end68.while.cond.outer_crit_edge, label %if.end68.cleanup_crit_edge

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end68.while.cond.outer_crit_edge:              ; preds = %if.end68
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.end155.while.cond.outer_crit_edge, %if.end68.while.cond.outer_crit_edge
  %rtc_uV.0.ph = phi i32 [ %rtc_target_uV.0, %if.end155.while.cond.outer_crit_edge ], [ %call40, %if.end68.while.cond.outer_crit_edge ]
  %core_uV.0.ph = phi i32 [ %core_uV.1, %if.end155.while.cond.outer_crit_edge ], [ %call20, %if.end68.while.cond.outer_crit_edge ]
  %sub106 = sub i32 %rtc_uV.0.ph, %retval.0.i
  %add92 = add i32 %rtc_uV.0.ph, %retval.0.i
  br label %while.cond

while.cond:                                       ; preds = %if.end152.while.cond_crit_edge, %while.cond.outer
  %core_uV.0 = phi i32 [ %core_uV.1, %if.end152.while.cond_crit_edge ], [ %core_uV.0.ph, %while.cond.outer ]
  %51 = ptrtoint ptr %core_min_uV to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %core_min_uV, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %core_uV.0, i32 %52)
  %cmp81.not = icmp eq i32 %core_uV.0, %52
  br i1 %cmp81.not, label %lor.rhs, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

lor.rhs:                                          ; preds = %while.cond
  %53 = ptrtoint ptr %rtc_min_uV to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rtc_min_uV, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rtc_uV.0.ph, i32 %54)
  %cmp82.not = icmp eq i32 %rtc_uV.0.ph, %54
  br i1 %cmp82.not, label %lor.rhs.cleanup_crit_edge, label %lor.rhs.while.body_crit_edge

lor.rhs.while.body_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body:                                       ; preds = %lor.rhs.while.body_crit_edge, %while.cond.while.body_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %core_uV.0, i32 %52)
  %cmp83 = icmp slt i32 %core_uV.0, %52
  br i1 %cmp83, label %if.then84, label %if.else

if.then84:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %add85 = add i32 %core_uV.0, %retval.0.i
  %55 = call i32 @llvm.smin.i32(i32 %add85, i32 %52)
  %56 = call i32 @llvm.smin.i32(i32 %add92, i32 %55)
  br label %if.end113

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %sub99 = sub i32 %core_uV.0, %retval.0.i
  %57 = call i32 @llvm.smax.i32(i32 %sub99, i32 %52)
  %58 = call i32 @llvm.smax.i32(i32 %sub106, i32 %57)
  br label %if.end113

if.end113:                                        ; preds = %if.else, %if.then84
  %core_target_uV.0 = phi i32 [ %56, %if.then84 ], [ %58, %if.else ]
  call void @__sanitizer_cov_trace_cmp4(i32 %core_uV.0, i32 %core_target_uV.0)
  %cmp114 = icmp eq i32 %core_uV.0, %core_target_uV.0
  br i1 %cmp114, label %if.end113.update_rtc_crit_edge, label %if.end116

if.end113.update_rtc_crit_edge:                   ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #8
  br label %update_rtc

if.end116:                                        ; preds = %if.end113
  %59 = ptrtoint ptr %core_max_uV to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %core_max_uV, align 4
  %call117 = call i32 @regulator_set_voltage_rdev(ptr noundef %core_rdev, i32 noundef %core_target_uV.0, i32 noundef %60, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %if.end116.update_rtc_crit_edge, label %if.end116.cleanup_crit_edge

if.end116.cleanup_crit_edge:                      ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end116.update_rtc_crit_edge:                   ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #8
  br label %update_rtc

update_rtc:                                       ; preds = %if.end116.update_rtc_crit_edge, %if.end113.update_rtc_crit_edge
  %core_uV.1 = phi i32 [ %core_uV.0, %if.end113.update_rtc_crit_edge ], [ %core_target_uV.0, %if.end116.update_rtc_crit_edge ]
  %61 = ptrtoint ptr %rtc_min_uV to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %rtc_min_uV, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rtc_uV.0.ph, i32 %62)
  %cmp121 = icmp slt i32 %rtc_uV.0.ph, %62
  br i1 %cmp121, label %if.then122, label %if.else137

if.then122:                                       ; preds = %update_rtc
  call void @__sanitizer_cov_trace_pc() #8
  %63 = call i32 @llvm.smin.i32(i32 %add92, i32 %62)
  %add130 = add i32 %core_uV.1, %retval.0.i
  %64 = call i32 @llvm.smin.i32(i32 %add130, i32 %63)
  br label %if.end152

if.else137:                                       ; preds = %update_rtc
  call void @__sanitizer_cov_trace_pc() #8
  %65 = call i32 @llvm.smax.i32(i32 %sub106, i32 %62)
  %sub145 = sub i32 %core_uV.1, %retval.0.i
  %66 = call i32 @llvm.smax.i32(i32 %sub145, i32 %65)
  br label %if.end152

if.end152:                                        ; preds = %if.else137, %if.then122
  %rtc_target_uV.0 = phi i32 [ %64, %if.then122 ], [ %66, %if.else137 ]
  %cmp153 = icmp eq i32 %rtc_uV.0.ph, %rtc_target_uV.0
  br i1 %cmp153, label %if.end152.while.cond_crit_edge, label %if.end155

if.end152.while.cond_crit_edge:                   ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

if.end155:                                        ; preds = %if.end152
  %67 = ptrtoint ptr %rtc_max_uV to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rtc_max_uV, align 4
  %call156 = call i32 @regulator_set_voltage_rdev(ptr noundef %rtc_rdev, i32 noundef %rtc_target_uV.0, i32 noundef %68, i32 noundef 0) #6
  %tobool157.not = icmp eq i32 %call156, 0
  br i1 %tobool157.not, label %if.end155.while.cond.outer_crit_edge, label %if.end155.cleanup_crit_edge

if.end155.cleanup_crit_edge:                      ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end155.while.cond.outer_crit_edge:             ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.outer

cleanup:                                          ; preds = %if.end155.cleanup_crit_edge, %if.end116.cleanup_crit_edge, %lor.rhs.cleanup_crit_edge, %if.end68.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %tegra20_core_limit.exit.cleanup_crit_edge, %tegra20_core_limit.exit.thread268
  %retval.0 = phi i32 [ %retval.0.i265, %tegra20_core_limit.exit.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ %call20, %if.end19.cleanup_crit_edge ], [ -22, %if.end23.cleanup_crit_edge ], [ %call40, %if.end39.cleanup_crit_edge ], [ %call77, %if.end68.cleanup_crit_edge ], [ %call20.i, %tegra20_core_limit.exit.thread268 ], [ %call117, %if.end116.cleanup_crit_edge ], [ 0, %lor.rhs.cleanup_crit_edge ], [ %call156, %if.end155.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rtc_max_uV) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rtc_min_uV) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %core_max_uV) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %core_min_uV) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_rdev(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tegra_pmc_core_domain_state_synced() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_sync_voltage_rdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !43, !44, !46, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @__initcall__kmod_regulators_tegra20__325_560_tegra_regulator_coupler_init3, !1, !"__initcall__kmod_regulators_tegra20__325_560_tegra_regulator_coupler_init3", i1 false, i1 false}
!1 = !{!"../drivers/soc/tegra/regulators-tegra20.c", i32 560, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/soc/tegra/regulators-tegra20.c", i32 549, i32 32}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/soc/tegra/regulators-tegra20.c", i32 553, i32 2}
!6 = !{ptr @tegra20_coupler, !7, !"tegra20_coupler", i1 false, i1 false}
!7 = !{!"../drivers/soc/tegra/regulators-tegra20.c", i32 535, i32 39}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/soc/tegra/regulators-tegra20.c", i32 483, i32 32}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/soc/tegra/regulators-tegra20.c", i32 489, i32 32}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/soc/tegra/regulators-tegra20.c", i32 495, i32 32}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../drivers/soc/tegra/regulators-tegra20.c", i32 514, i32 6}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/soc/tegra/regulators-tegra20.c", i32 355, i32 3}
!18 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @tegra20_regulator_balance_voltage._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @tegra20_regulator_balance_voltage._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/soc/tegra/regulators-tegra20.c", i32 370, i32 2}
!23 = !{ptr @tegra20_regulator_balance_voltage._entry.7, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @tegra20_regulator_balance_voltage._entry_ptr.9, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/soc/tegra/regulators-tegra20.c", i32 188, i32 3}
!27 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @tegra20_core_rtc_update._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @tegra20_core_rtc_update._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/soc/tegra/regulators-tegra20.c", i32 196, i32 3}
!32 = !{ptr @tegra20_core_rtc_update._entry.12, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @tegra20_core_rtc_update._entry_ptr.14, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/soc/tegra/regulators-tegra20.c", i32 200, i32 3}
!36 = !{ptr @tegra20_core_rtc_update._entry.15, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @tegra20_core_rtc_update._entry_ptr.17, !35, !"_entry_ptr", i1 false, i1 false}
!38 = distinct !{null, !39, !"__already_done", i1 false, i1 false}
!39 = !{!"../drivers/soc/tegra/regulators-tegra20.c", i32 108, i32 2}
!40 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @tegra20_core_rtc_max_spread._entry, !39, !"_entry", i1 false, i1 false}
!43 = !{ptr @tegra20_core_rtc_max_spread._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../drivers/soc/tegra/regulators-tegra20.c", i32 63, i32 3}
!46 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @tegra20_core_limit._entry, !45, !"_entry", i1 false, i1 false}
!49 = !{ptr @tegra20_core_limit._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/soc/tegra/regulators-tegra20.c", i32 87, i32 2}
!52 = !{ptr @tegra20_core_limit._entry.22, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @tegra20_core_limit._entry_ptr.24, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/soc/tegra/regulators-tegra20.c", i32 427, i32 3}
!56 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @tegra20_regulator_suspend._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @tegra20_regulator_suspend._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{!"branch_weights", i32 2000, i32 1}
!69 = !{i8 0, i8 2}
!70 = !{!"auto-init"}
