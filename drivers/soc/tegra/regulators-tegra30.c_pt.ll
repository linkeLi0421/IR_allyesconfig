; ModuleID = '/llk/IR_all_yes/drivers/soc/tegra/regulators-tegra30.c_pt.bc'
source_filename = "../drivers/soc/tegra/regulators-tegra30.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tegra_regulator_coupler = type { %struct.regulator_coupler, ptr, ptr, %struct.notifier_block, %struct.notifier_block, i32, i32, i8, i8, i8, i8 }
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

@__initcall__kmod_regulators_tegra30__323_534_tegra_regulator_coupler_init3 = internal global ptr @tegra_regulator_coupler_init, section ".initcall3.init", align 4
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nvidia,tegra30\00", [17 x i8] zeroinitializer }, align 32
@tegra30_coupler = internal global { %struct.tegra_regulator_coupler, [32 x i8] } { %struct.tegra_regulator_coupler { %struct.regulator_coupler { %struct.list_head zeroinitializer, ptr @tegra30_regulator_attach, ptr @tegra30_regulator_detach, ptr @tegra30_regulator_balance_voltage }, ptr null, ptr null, %struct.notifier_block { ptr @tegra30_regulator_reboot, ptr null, i32 0 }, %struct.notifier_block { ptr @tegra30_regulator_suspend, ptr null, i32 0 }, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/soc/tegra/regulators-tegra30.c\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"nvidia,tegra-core-regulator\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nvidia,tegra-cpu-regulator\00", [37 x i8] zeroinitializer }, align 32
@tegra30_regulator_detach.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@system_state = external dso_local local_unnamed_addr global i32, align 4
@tegra30_regulator_balance_voltage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.1, i32 350, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013tegra voltage-coupler: regulators are not coupled properly\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"tegra30_regulator_balance_voltage\00", [62 x i8] zeroinitializer }, align 32
@tegra30_regulator_balance_voltage._entry_ptr = internal global ptr @tegra30_regulator_balance_voltage._entry, section ".printk_index", align 4
@tegra30_voltage_update.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@tegra30_voltage_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.1, i32 193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\013tegra voltage-coupler: cpu-core max-spread is undefined in device-tree\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tegra30_voltage_update\00", [41 x i8] zeroinitializer }, align 32
@tegra30_voltage_update._entry_ptr = internal global ptr @tegra30_voltage_update._entry, section ".printk_index", align 4
@tegra30_voltage_update.__already_done.8 = internal unnamed_addr global i1 false, section ".data.once", align 1
@tegra30_voltage_update._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str.1, i32 198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013tegra voltage-coupler: cpu max-step is undefined in device-tree\0A\00", [61 x i8] zeroinitializer }, align 32
@tegra30_voltage_update._entry_ptr.11 = internal global ptr @tegra30_voltage_update._entry.9, section ".printk_index", align 4
@tegra30_voltage_update.__already_done.12 = internal unnamed_addr global i1 false, section ".data.once", align 1
@tegra30_voltage_update._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.7, ptr @.str.1, i32 203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013tegra voltage-coupler: core max-step is undefined in device-tree\0A\00", [60 x i8] zeroinitializer }, align 32
@tegra30_voltage_update._entry_ptr.15 = internal global ptr @tegra30_voltage_update._entry.13, section ".printk_index", align 4
@tegra30_voltage_update._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.7, ptr @.str.1, i32 288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013tegra voltage-coupler: core voltage constraint violated: %d %d %d\0A\00", [59 x i8] zeroinitializer }, align 32
@tegra30_voltage_update._entry_ptr.18 = internal global ptr @tegra30_voltage_update._entry.16, section ".printk_index", align 4
@tegra30_core_limit.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@tegra30_core_limit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.1, i32 62, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016tegra voltage-coupler: voltage state synced\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tegra30_core_limit\00", [45 x i8] zeroinitializer }, align 32
@tegra30_core_limit._entry_ptr = internal global ptr @tegra30_core_limit._entry, section ".printk_index", align 4
@tegra30_core_limit._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.1, i32 86, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016tegra voltage-coupler: core voltage initialized to %duV\0A\00", [37 x i8] zeroinitializer }, align 32
@tegra30_core_limit._entry_ptr.23 = internal global ptr @tegra30_core_limit._entry.21, section ".printk_index", align 4
@tegra_sku_info = external dso_local local_unnamed_addr global %struct.tegra_sku_info, align 4
@tegra30_regulator_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.1, i32 412, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013tegra voltage-coupler: failed to prepare regulators: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tegra30_regulator_suspend\00", [38 x i8] zeroinitializer }, align 32
@tegra30_regulator_suspend._entry_ptr = internal global ptr @tegra30_regulator_suspend._entry, section ".printk_index", align 4
@switch.table.tegra30_regulator_balance_voltage = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 1200000, i32 1200000, i32 1300000, i32 1300000, i32 1200000, i32 1300000, i32 1300000, i32 1200000, i32 1200000], [60 x i8] zeroinitializer }, align 32
@switch.table.tegra30_regulator_balance_voltage.26 = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 1200000, i32 1200000, i32 1300000, i32 1300000, i32 1200000, i32 1300000, i32 1300000, i32 1200000, i32 1200000], [60 x i8] zeroinitializer }, align 32
@switch.table.tegra30_regulator_balance_voltage.27 = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 1200000, i32 1200000, i32 1300000, i32 1300000, i32 1200000, i32 1300000, i32 1300000, i32 1200000, i32 1200000], [60 x i8] zeroinitializer }, align 32
@switch.table.tegra30_cpu_nominal_uV = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 1050000, i32 1050000, i32 1050000, i32 1237000, i32 1237000, i32 1237000, i32 1050000, i32 1050000, i32 912000, i32 850000, i32 850000, i32 1237000, i32 1237000], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.28 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 523, i32 32 }
@___asan_gen_.32 = private unnamed_addr constant [16 x i8] c"tegra30_coupler\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 509, i32 39 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 527, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 468, i32 32 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 474, i32 32 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 350, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 193, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 198, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 203, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 287, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 62, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 86, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.102 = private constant [42 x i8] c"../drivers/soc/tegra/regulators-tegra30.c\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 412, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant [47 x i8] c"switch.table.tegra30_regulator_balance_voltage\00", align 1
@___asan_gen_.105 = private unnamed_addr constant [50 x i8] c"switch.table.tegra30_regulator_balance_voltage.26\00", align 1
@___asan_gen_.106 = private unnamed_addr constant [50 x i8] c"switch.table.tegra30_regulator_balance_voltage.27\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [36 x i8] c"switch.table.tegra30_cpu_nominal_uV\00", align 1
@llvm.compiler.used = appending global [38 x ptr] [ptr @__initcall__kmod_regulators_tegra30__323_534_tegra_regulator_coupler_init3, ptr @tegra30_core_limit._entry, ptr @tegra30_core_limit._entry.21, ptr @tegra30_core_limit._entry_ptr, ptr @tegra30_core_limit._entry_ptr.23, ptr @tegra30_regulator_balance_voltage._entry, ptr @tegra30_regulator_balance_voltage._entry_ptr, ptr @tegra30_regulator_suspend._entry, ptr @tegra30_regulator_suspend._entry_ptr, ptr @tegra30_voltage_update._entry, ptr @tegra30_voltage_update._entry.13, ptr @tegra30_voltage_update._entry.16, ptr @tegra30_voltage_update._entry.9, ptr @tegra30_voltage_update._entry_ptr, ptr @tegra30_voltage_update._entry_ptr.11, ptr @tegra30_voltage_update._entry_ptr.15, ptr @tegra30_voltage_update._entry_ptr.18, ptr @.str, ptr @tegra30_coupler, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.10, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @switch.table.tegra30_regulator_balance_voltage, ptr @switch.table.tegra30_regulator_balance_voltage.26, ptr @switch.table.tegra30_regulator_balance_voltage.27, ptr @switch.table.tegra30_cpu_nominal_uV], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_coupler to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_regulator_balance_voltage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_voltage_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_voltage_update._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_voltage_update._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_voltage_update._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_core_limit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_core_limit._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_regulator_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tegra30_regulator_balance_voltage to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tegra30_regulator_balance_voltage.26 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tegra30_regulator_balance_voltage.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tegra30_cpu_nominal_uV to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_regulator_coupler_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @register_reboot_notifier(ptr noundef getelementptr inbounds (%struct.tegra_regulator_coupler, ptr @tegra30_coupler, i32 0, i32 3)) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.if.end17_crit_edge, label %do.end, !prof !63

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 527, i32 noundef 9, ptr noundef null) #7
  br label %if.end17

if.end17:                                         ; preds = %do.end, %if.end.if.end17_crit_edge
  %call24 = tail call i32 @register_pm_notifier(ptr noundef getelementptr inbounds (%struct.tegra_regulator_coupler, ptr @tegra30_coupler, i32 0, i32 4)) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool26.not = icmp eq i32 %call24, 0
  br i1 %tobool26.not, label %if.end17.if.end48_crit_edge, label %do.end42, !prof !63

if.end17.if.end48_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

do.end42:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 530, i32 noundef 9, ptr noundef null) #7
  br label %if.end48

if.end48:                                         ; preds = %do.end42, %if.end17.if.end48_crit_edge
  %call56 = tail call i32 @regulator_coupler_register(ptr noundef nonnull @tegra30_coupler) #7
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
define internal i32 @tegra30_regulator_attach(ptr nocapture noundef %coupler, ptr noundef %rdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 13, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef null) #7
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %core_rdev = getelementptr inbounds %struct.tegra_regulator_coupler, ptr %coupler, i32 0, i32 1
  %2 = ptrtoint ptr %core_rdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core_rdev, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %land.lhs.true.cleanup.sink.split_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.cleanup.sink.split_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call.i16 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef null) #7
  %tobool.i17.not = icmp eq ptr %call.i16, null
  br i1 %tobool.i17.not, label %if.end.cleanup_crit_edge, label %land.lhs.true4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true4:                                   ; preds = %if.end
  %cpu_rdev = getelementptr inbounds %struct.tegra_regulator_coupler, ptr %coupler, i32 0, i32 2
  %4 = ptrtoint ptr %cpu_rdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cpu_rdev, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %land.lhs.true4.cleanup.sink.split_crit_edge, label %land.lhs.true4.cleanup_crit_edge

land.lhs.true4.cleanup_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true4.cleanup.sink.split_crit_edge:      ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %land.lhs.true4.cleanup.sink.split_crit_edge, %land.lhs.true.cleanup.sink.split_crit_edge
  %cpu_rdev.sink = phi ptr [ %core_rdev, %land.lhs.true.cleanup.sink.split_crit_edge ], [ %cpu_rdev, %land.lhs.true4.cleanup.sink.split_crit_edge ]
  %6 = ptrtoint ptr %cpu_rdev.sink to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %rdev, ptr %cpu_rdev.sink, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true4.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %land.lhs.true4.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra30_regulator_detach(ptr nocapture noundef %coupler, ptr noundef readnone %rdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_state to i32))
  %0 = load i32, ptr @system_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %0)
  %cmp = icmp ugt i32 %0, 3
  br i1 %cmp, label %land.rhs, label %if.end37

land.rhs:                                         ; preds = %entry
  %.b52 = load i1, ptr @tegra30_regulator_detach.__already_done, align 1
  br i1 %.b52, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !63

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @tegra30_regulator_detach.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 493, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end37:                                         ; preds = %entry
  %core_rdev = getelementptr inbounds %struct.tegra_regulator_coupler, ptr %coupler, i32 0, i32 1
  %1 = ptrtoint ptr %core_rdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %core_rdev, align 4
  %cmp38 = icmp eq ptr %2, %rdev
  br i1 %cmp38, label %if.then39, label %if.end41

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %core_rdev to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %core_rdev, align 4
  br label %cleanup

if.end41:                                         ; preds = %if.end37
  %cpu_rdev = getelementptr inbounds %struct.tegra_regulator_coupler, ptr %coupler, i32 0, i32 2
  %4 = ptrtoint ptr %cpu_rdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cpu_rdev, align 4
  %cmp42 = icmp eq ptr %5, %rdev
  br i1 %cmp42, label %if.then43, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then43:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %cpu_rdev to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %cpu_rdev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then43, %if.end41.cleanup_crit_edge, %if.then39, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then39 ], [ 0, %if.then43 ], [ -1, %if.then ], [ -22, %if.end41.cleanup_crit_edge ], [ -1, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra30_regulator_balance_voltage(ptr noundef %coupler, ptr noundef readnone %rdev, i32 noundef %state) #3 align 64 {
entry:
  %core_min_uV.i.i = alloca i32, align 4
  %core_max_uV.i.i = alloca i32, align 4
  %core_min_uV.i = alloca i32, align 4
  %core_max_uV.i = alloca i32, align 4
  %cpu_min_uV.i = alloca i32, align 4
  %cpu_max_uV.i = alloca i32, align 4
  %cpu_min_uV_consumers.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %core_rdev1 = getelementptr inbounds %struct.tegra_regulator_coupler, ptr %coupler, i32 0, i32 1
  %0 = ptrtoint ptr %core_rdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core_rdev1, align 4
  %cpu_rdev2 = getelementptr inbounds %struct.tegra_regulator_coupler, ptr %coupler, i32 0, i32 2
  %2 = ptrtoint ptr %cpu_rdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpu_rdev2, align 4
  %cmp.not = icmp eq ptr %1, %rdev
  %cmp3.not = icmp eq ptr %3, %rdev
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp3.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %cmp4.not = icmp eq i32 %state, 0
  %or.cond32 = and i1 %cmp4.not, %or.cond
  br i1 %or.cond32, label %do.end8, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #10
  br label %cleanup

do.end8:                                          ; preds = %entry
  %sys_reboot_mode_req = getelementptr inbounds %struct.tegra_regulator_coupler, ptr %coupler, i32 0, i32 7
  %4 = ptrtoint ptr %sys_reboot_mode_req to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %sys_reboot_mode_req, align 4, !range !64
  %sys_reboot_mode = getelementptr inbounds %struct.tegra_regulator_coupler, ptr %coupler, i32 0, i32 8
  %6 = ptrtoint ptr %sys_reboot_mode to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %sys_reboot_mode, align 1
  %sys_suspend_mode_req = getelementptr inbounds %struct.tegra_regulator_coupler, ptr %coupler, i32 0, i32 9
  %7 = ptrtoint ptr %sys_suspend_mode_req to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load volatile i8, ptr %sys_suspend_mode_req, align 2, !range !64
  %sys_suspend_mode = getelementptr inbounds %struct.tegra_regulator_coupler, ptr %coupler, i32 0, i32 10
  %9 = ptrtoint ptr %sys_suspend_mode to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %sys_suspend_mode, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %core_min_uV.i) #7
  %10 = ptrtoint ptr %core_min_uV.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %core_min_uV.i, align 4, !annotation !65
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %core_max_uV.i) #7
  %11 = ptrtoint ptr %core_max_uV.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2147483647, ptr %core_max_uV.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cpu_min_uV.i) #7
  %12 = ptrtoint ptr %cpu_min_uV.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %cpu_min_uV.i, align 4, !annotation !65
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cpu_max_uV.i) #7
  %13 = ptrtoint ptr %cpu_max_uV.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2147483647, ptr %cpu_max_uV.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cpu_min_uV_consumers.i) #7
  %14 = ptrtoint ptr %cpu_min_uV_consumers.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %cpu_min_uV_consumers.i, align 4
  %constraints.i = getelementptr inbounds %struct.regulator_dev, ptr %3, i32 0, i32 14
  %15 = ptrtoint ptr %constraints.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %constraints.i, align 8
  %max_spread1.i = getelementptr inbounds %struct.regulation_constraints, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %max_spread1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %max_spread1.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %max_uV_step.i = getelementptr inbounds %struct.regulation_constraints, ptr %16, i32 0, i32 9
  %21 = ptrtoint ptr %max_uV_step.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_uV_step.i, align 4
  %constraints3.i = getelementptr inbounds %struct.regulator_dev, ptr %1, i32 0, i32 14
  %23 = ptrtoint ptr %constraints3.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %constraints3.i, align 8
  %max_uV_step4.i = getelementptr inbounds %struct.regulation_constraints, ptr %24, i32 0, i32 9
  %25 = ptrtoint ptr %max_uV_step4.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %max_uV_step4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %land.end.i, label %do.end8.if.end18.i_crit_edge

do.end8.if.end18.i_crit_edge:                     ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i

land.end.i:                                       ; preds = %do.end8
  %.b387.i = load i1, ptr @tegra30_voltage_update.__already_done, align 1
  br i1 %.b387.i, label %land.end.i.if.end18.i_crit_edge, label %if.then10.i, !prof !63

land.end.i.if.end18.i_crit_edge:                  ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i

if.then10.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @tegra30_voltage_update.__already_done, align 1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #10
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then10.i, %land.end.i.if.end18.i_crit_edge, %do.end8.if.end18.i_crit_edge
  %max_spread.0.i = phi i32 [ %20, %do.end8.if.end18.i_crit_edge ], [ 300000, %if.then10.i ], [ 300000, %land.end.i.if.end18.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool19.not.i = icmp eq i32 %22, 0
  br i1 %tobool19.not.i, label %land.end27.i, label %if.end18.i.if.end48.i_crit_edge

if.end18.i.if.end48.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48.i

land.end27.i:                                     ; preds = %if.end18.i
  %.b385388.i = load i1, ptr @tegra30_voltage_update.__already_done.8, align 1
  br i1 %.b385388.i, label %land.end27.i.if.end48.i_crit_edge, label %if.then34.i, !prof !63

land.end27.i.if.end48.i_crit_edge:                ; preds = %land.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48.i

if.then34.i:                                      ; preds = %land.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @tegra30_voltage_update.__already_done.8, align 1
  %call39.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #10
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then34.i, %land.end27.i.if.end48.i_crit_edge, %if.end18.i.if.end48.i_crit_edge
  %cpu_max_step.0.i = phi i32 [ %22, %if.end18.i.if.end48.i_crit_edge ], [ 150000, %if.then34.i ], [ 150000, %land.end27.i.if.end48.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool49.not.i = icmp eq i32 %26, 0
  br i1 %tobool49.not.i, label %land.end57.i, label %if.end48.i.if.end78.i_crit_edge

if.end48.i.if.end78.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78.i

land.end57.i:                                     ; preds = %if.end48.i
  %.b386389.i = load i1, ptr @tegra30_voltage_update.__already_done.12, align 1
  br i1 %.b386389.i, label %land.end57.i.if.end78.i_crit_edge, label %if.then64.i, !prof !63

land.end57.i.if.end78.i_crit_edge:                ; preds = %land.end57.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78.i

if.then64.i:                                      ; preds = %land.end57.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @tegra30_voltage_update.__already_done.12, align 1
  %call69.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #10
  br label %if.end78.i

if.end78.i:                                       ; preds = %if.then64.i, %land.end57.i.if.end78.i_crit_edge, %if.end48.i.if.end78.i_crit_edge
  %core_max_step.0.i = phi i32 [ %26, %if.end48.i.if.end78.i_crit_edge ], [ 150000, %if.then64.i ], [ 150000, %land.end57.i.if.end78.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %core_min_uV.i.i) #7
  %27 = ptrtoint ptr %core_min_uV.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %core_min_uV.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %core_max_uV.i.i) #7
  %call.i.i = tail call zeroext i1 @tegra_pmc_core_domain_state_synced() #7
  br i1 %call.i.i, label %land.lhs.true.i.i, label %if.end78.i.if.end15.i.i_crit_edge

if.end78.i.if.end15.i.i_crit_edge:                ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i.i

land.lhs.true.i.i:                                ; preds = %if.end78.i
  %28 = ptrtoint ptr %sys_reboot_mode to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %sys_reboot_mode, align 1, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i.i = icmp eq i8 %29, 0
  br i1 %tobool.not.i.i, label %land.end.i.i, label %land.lhs.true.i.i.if.end15.i.i_crit_edge

land.lhs.true.i.i.if.end15.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i.i

land.end.i.i:                                     ; preds = %land.lhs.true.i.i
  %.b53.i.i = load i1, ptr @tegra30_core_limit.__already_done, align 1
  br i1 %.b53.i.i, label %land.end.i.i.tegra30_core_limit.exit.thread.i_crit_edge, label %if.then6.i.i, !prof !63

land.end.i.i.tegra30_core_limit.exit.thread.i_crit_edge: ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra30_core_limit.exit.thread.i

if.then6.i.i:                                     ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @tegra30_core_limit.__already_done, align 1
  %call7.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #10
  br label %tegra30_core_limit.exit.thread.i

if.end15.i.i:                                     ; preds = %land.lhs.true.i.i.if.end15.i.i_crit_edge, %if.end78.i.if.end15.i.i_crit_edge
  %core_min_uV16.i.i = getelementptr inbounds %struct.tegra_regulator_coupler, ptr %coupler, i32 0, i32 5
  %30 = ptrtoint ptr %core_min_uV16.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %core_min_uV16.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i.i = icmp sgt i32 %31, 0
  br i1 %cmp.i.i, label %if.end15.i.i.tegra30_core_limit.exit.thread.i_crit_edge, label %if.end19.i.i

if.end15.i.i.tegra30_core_limit.exit.thread.i_crit_edge: ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra30_core_limit.exit.thread.i

if.end19.i.i:                                     ; preds = %if.end15.i.i
  %call20.i.i = tail call i32 @regulator_get_voltage_rdev(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i)
  %cmp21.i.i = icmp slt i32 %call20.i.i, 0
  br i1 %cmp21.i.i, label %tegra30_core_limit.exit.thread422.i, label %if.end23.i.i

tegra30_core_limit.exit.thread422.i:              ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %core_max_uV.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %core_min_uV.i.i) #7
  br label %tegra30_voltage_update.exit

if.end23.i.i:                                     ; preds = %if.end19.i.i
  %32 = tail call i32 @llvm.umax.i32(i32 %call20.i.i, i32 1200000) #7
  %33 = ptrtoint ptr %core_max_uV.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %core_max_uV.i.i, align 4
  %call26.i.i = call i32 @regulator_check_voltage(ptr noundef %1, ptr noundef nonnull %core_min_uV.i.i, ptr noundef nonnull %core_max_uV.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i.i)
  %tobool27.not.i.i = icmp eq i32 %call26.i.i, 0
  br i1 %tobool27.not.i.i, label %if.end29.i.i, label %if.end23.i.i.tegra30_core_limit.exit.i_crit_edge

if.end23.i.i.tegra30_core_limit.exit.i_crit_edge: ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra30_core_limit.exit.i

if.end29.i.i:                                     ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %core_max_uV.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %core_max_uV.i.i, align 4
  %36 = ptrtoint ptr %core_min_uV16.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %core_min_uV16.i.i, align 4
  %call36.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %35) #10
  %37 = ptrtoint ptr %core_min_uV16.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %core_min_uV16.i.i, align 4
  br label %tegra30_core_limit.exit.i

tegra30_core_limit.exit.thread.i:                 ; preds = %if.end15.i.i.tegra30_core_limit.exit.thread.i_crit_edge, %if.then6.i.i, %land.end.i.i.tegra30_core_limit.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %31, %if.end15.i.i.tegra30_core_limit.exit.thread.i_crit_edge ], [ 0, %land.end.i.i.tegra30_core_limit.exit.thread.i_crit_edge ], [ 0, %if.then6.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %core_max_uV.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %core_min_uV.i.i) #7
  %39 = ptrtoint ptr %core_min_uV.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %retval.0.i.ph.i, ptr %core_min_uV.i, align 4
  br label %if.end81.i

tegra30_core_limit.exit.i:                        ; preds = %if.end29.i.i, %if.end23.i.i.tegra30_core_limit.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %38, %if.end29.i.i ], [ %call26.i.i, %if.end23.i.i.tegra30_core_limit.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %core_max_uV.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %core_min_uV.i.i) #7
  %40 = ptrtoint ptr %core_min_uV.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %retval.0.i.i, ptr %core_min_uV.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp.i, label %tegra30_core_limit.exit.i.tegra30_voltage_update.exit_crit_edge, label %tegra30_core_limit.exit.i.if.end81.i_crit_edge

tegra30_core_limit.exit.i.if.end81.i_crit_edge:   ; preds = %tegra30_core_limit.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81.i

tegra30_core_limit.exit.i.tegra30_voltage_update.exit_crit_edge: ; preds = %tegra30_core_limit.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra30_voltage_update.exit

if.end81.i:                                       ; preds = %tegra30_core_limit.exit.i.if.end81.i_crit_edge, %tegra30_core_limit.exit.thread.i
  %call82.i = call i32 @regulator_check_consumers(ptr noundef %1, ptr noundef nonnull %core_min_uV.i, ptr noundef nonnull %core_max_uV.i, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82.i)
  %tobool83.not.i = icmp eq i32 %call82.i, 0
  br i1 %tobool83.not.i, label %if.end85.i, label %if.end81.i.tegra30_voltage_update.exit_crit_edge

if.end81.i.tegra30_voltage_update.exit_crit_edge: ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra30_voltage_update.exit

if.end85.i:                                       ; preds = %if.end81.i
  %41 = ptrtoint ptr %sys_suspend_mode to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %sys_suspend_mode, align 1, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool86.not.i = icmp eq i8 %42, 0
  br i1 %tobool86.not.i, label %if.end85.i.if.end97.i_crit_edge, label %if.then87.i

if.end85.i.if.end97.i_crit_edge:                  ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end97.i

if.then87.i:                                      ; preds = %if.end85.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 6) to i32))
  %43 = load i32, ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 6), align 4
  %44 = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values)
  switch i32 %43, label %sw.default.i.i [
    i32 0, label %if.then87.i.tegra30_core_nominal_uV.exit.i_crit_edge
    i32 1, label %sw.bb1.i.i
    i32 2, label %if.then87.i.sw.bb3.i.i_crit_edge
  ]

if.then87.i.sw.bb3.i.i_crit_edge:                 ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3.i.i

if.then87.i.tegra30_core_nominal_uV.exit.i_crit_edge: ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra30_core_nominal_uV.exit.i

sw.bb1.i.i:                                       ; preds = %if.then87.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 2) to i32))
  %45 = load i32, ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 2), align 4
  %.off.i.i = add i32 %45, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i.i)
  %switch.i.i = icmp ult i32 %.off.i.i, 2
  br i1 %switch.i.i, label %sw.bb1.i.i.sw.bb3.i.i_crit_edge, label %sw.bb1.i.i.tegra30_core_nominal_uV.exit.i_crit_edge

sw.bb1.i.i.tegra30_core_nominal_uV.exit.i_crit_edge: ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra30_core_nominal_uV.exit.i

sw.bb1.i.i.sw.bb3.i.i_crit_edge:                  ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3.i.i

sw.bb3.i.i:                                       ; preds = %sw.bb1.i.i.sw.bb3.i.i_crit_edge, %if.then87.i.sw.bb3.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 2) to i32))
  %46 = load i32, ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %46)
  %cmp4.not.i.i = icmp eq i32 %46, 13
  %..i.i = select i1 %cmp4.not.i.i, i32 1350000, i32 1300000
  br label %tegra30_core_nominal_uV.exit.i

sw.default.i.i:                                   ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra30_core_nominal_uV.exit.i

tegra30_core_nominal_uV.exit.i:                   ; preds = %sw.default.i.i, %sw.bb3.i.i, %sw.bb1.i.i.tegra30_core_nominal_uV.exit.i_crit_edge, %if.then87.i.tegra30_core_nominal_uV.exit.i_crit_edge
  %retval.0.i390.i = phi i32 [ 1250000, %sw.default.i.i ], [ 1200000, %if.then87.i.tegra30_core_nominal_uV.exit.i_crit_edge ], [ 1200000, %sw.bb1.i.i.tegra30_core_nominal_uV.exit.i_crit_edge ], [ %..i.i, %sw.bb3.i.i ]
  %47 = ptrtoint ptr %core_min_uV.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %core_min_uV.i, align 4
  %49 = call i32 @llvm.smax.i32(i32 %retval.0.i390.i, i32 %48) #7
  %50 = ptrtoint ptr %core_max_uV.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %core_max_uV.i, align 4
  %52 = call i32 @llvm.smin.i32(i32 %49, i32 %51) #7
  %53 = ptrtoint ptr %core_min_uV.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %core_min_uV.i, align 4
  br label %if.end97.i

if.end97.i:                                       ; preds = %tegra30_core_nominal_uV.exit.i, %if.end85.i.if.end97.i_crit_edge
  %call98.i = call i32 @regulator_get_voltage_rdev(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98.i)
  %cmp99.i = icmp slt i32 %call98.i, 0
  br i1 %cmp99.i, label %if.end97.i.tegra30_voltage_update.exit_crit_edge, label %if.end101.i

if.end97.i.tegra30_voltage_update.exit_crit_edge: ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra30_voltage_update.exit

if.end101.i:                                      ; preds = %if.end97.i
  %54 = ptrtoint ptr %core_min_uV.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %core_min_uV.i, align 4
  %sub.i = sub i32 %55, %max_spread.0.i
  %56 = ptrtoint ptr %cpu_min_uV.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %sub.i, ptr %cpu_min_uV.i, align 4
  %call102.i = call i32 @regulator_check_consumers(ptr noundef %3, ptr noundef nonnull %cpu_min_uV.i, ptr noundef nonnull %cpu_max_uV.i, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102.i)
  %tobool103.not.i = icmp eq i32 %call102.i, 0
  br i1 %tobool103.not.i, label %if.end105.i, label %if.end101.i.tegra30_voltage_update.exit_crit_edge

if.end101.i.tegra30_voltage_update.exit_crit_edge: ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra30_voltage_update.exit

if.end105.i:                                      ; preds = %if.end101.i
  %call106.i = call i32 @regulator_check_consumers(ptr noundef %3, ptr noundef nonnull %cpu_min_uV_consumers.i, ptr noundef nonnull %cpu_max_uV.i, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106.i)
  %tobool107.not.i = icmp eq i32 %call106.i, 0
  br i1 %tobool107.not.i, label %if.end109.i, label %if.end105.i.tegra30_voltage_update.exit_crit_edge

if.end105.i.tegra30_voltage_update.exit_crit_edge: ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra30_voltage_update.exit

if.end109.i:                                      ; preds = %if.end105.i
  %call110.i = call i32 @regulator_check_voltage(ptr noundef %3, ptr noundef nonnull %cpu_min_uV.i, ptr noundef nonnull %cpu_max_uV.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110.i)
  %tobool111.not.i = icmp eq i32 %call110.i, 0
  br i1 %tobool111.not.i, label %if.end113.i, label %if.end109.i.tegra30_voltage_update.exit_crit_edge

if.end109.i.tegra30_voltage_update.exit_crit_edge: ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra30_voltage_update.exit

if.end113.i:                                      ; preds = %if.end109.i
  %call114.i = call i32 @regulator_get_voltage_rdev(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114.i)
  %cmp115.i = icmp slt i32 %call114.i, 0
  br i1 %cmp115.i, label %if.end113.i.tegra30_voltage_update.exit_crit_edge, label %if.end117.i

if.end113.i.tegra30_voltage_update.exit_crit_edge: ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra30_voltage_update.exit

if.end117.i:                                      ; preds = %if.end113.i
  %cpu_min_uV118.i = getelementptr inbounds %struct.tegra_regulator_coupler, ptr %coupler, i32 0, i32 6
  %57 = ptrtoint ptr %cpu_min_uV118.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %cpu_min_uV118.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool119.not.i = icmp eq i32 %58, 0
  br i1 %tobool119.not.i, label %if.then120.i, label %if.end117.i.if.end122.i_crit_edge

if.end117.i.if.end122.i_crit_edge:                ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end122.i

if.then120.i:                                     ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #9
  %59 = ptrtoint ptr %cpu_min_uV118.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %call114.i, ptr %cpu_min_uV118.i, align 4
  br label %if.end122.i

if.end122.i:                                      ; preds = %if.then120.i, %if.end117.i.if.end122.i_crit_edge
  %60 = ptrtoint ptr %cpu_min_uV_consumers.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cpu_min_uV_consumers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool123.not.i = icmp eq i32 %61, 0
  br i1 %tobool123.not.i, label %if.then124.i, label %if.end122.i.if.end131.i_crit_edge

if.end122.i.if.end131.i_crit_edge:                ; preds = %if.end122.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end131.i

if.then124.i:                                     ; preds = %if.end122.i
  call void @__sanitizer_cov_trace_pc() #9
  %62 = ptrtoint ptr %cpu_min_uV.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cpu_min_uV.i, align 4
  %64 = call i32 @llvm.smax.i32(i32 %call114.i, i32 %63) #7
  %65 = ptrtoint ptr %cpu_min_uV.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %cpu_min_uV.i, align 4
  br label %if.end131.i

if.end131.i:                                      ; preds = %if.then124.i, %if.end122.i.if.end131.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 800000, i32 %call114.i)
  %cmp.i391.i = icmp ult i32 %call114.i, 800000
  br i1 %cmp.i391.i, label %if.end131.i.if.end135.i_crit_edge, label %if.end.i.i

if.end131.i.if.end135.i_crit_edge:                ; preds = %if.end131.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end135.i

if.end.i.i:                                       ; preds = %if.end131.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 900000, i32 %call114.i)
  %cmp1.i.i = icmp ult i32 %call114.i, 900000
  br i1 %cmp1.i.i, label %if.end.i.i.if.end135.i_crit_edge, label %if.end3.i.i

if.end.i.i.if.end135.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end135.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %call114.i)
  %cmp4.i.i = icmp ult i32 %call114.i, 1000000
  br i1 %cmp4.i.i, label %if.end3.i.i.if.end135.i_crit_edge, label %if.end6.i.i

if.end3.i.i.if.end135.i_crit_edge:                ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end135.i

if.end6.i.i:                                      ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1100000, i32 %call114.i)
  %cmp7.i.i = icmp ult i32 %call114.i, 1100000
  br i1 %cmp7.i.i, label %if.end6.i.i.if.end135.i_crit_edge, label %if.end9.i.i

if.end6.i.i.if.end135.i_crit_edge:                ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end135.i

if.end9.i.i:                                      ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1250000, i32 %call114.i)
  %cmp10.i.i = icmp ult i32 %call114.i, 1250000
  br i1 %cmp10.i.i, label %if.then11.i.i, label %if.end9.i.i.tegra30_voltage_update.exit_crit_edge

if.end9.i.i.tegra30_voltage_update.exit_crit_edge: ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra30_voltage_update.exit

if.then11.i.i:                                    ; preds = %if.end9.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 2) to i32))
  %66 = load i32, ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %66)
  %67 = icmp ult i32 %66, 9
  br i1 %67, label %switch.lookup, label %if.then11.i.i.if.end135.i_crit_edge

if.then11.i.i.if.end135.i_crit_edge:              ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end135.i

switch.lookup:                                    ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.tegra30_regulator_balance_voltage, i32 0, i32 %66
  %68 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %68)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end135.i

if.end135.i:                                      ; preds = %switch.lookup, %if.then11.i.i.if.end135.i_crit_edge, %if.end6.i.i.if.end135.i_crit_edge, %if.end3.i.i.if.end135.i_crit_edge, %if.end.i.i.if.end135.i_crit_edge, %if.end131.i.if.end135.i_crit_edge
  %retval.0.i393.ph.i = phi i32 [ 1200000, %if.end6.i.i.if.end135.i_crit_edge ], [ 1100000, %if.end3.i.i.if.end135.i_crit_edge ], [ 1000000, %if.end.i.i.if.end135.i_crit_edge ], [ 950000, %if.end131.i.if.end135.i_crit_edge ], [ %switch.load, %switch.lookup ], [ 1300000, %if.then11.i.i.if.end135.i_crit_edge ]
  %69 = ptrtoint ptr %core_min_uV.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %core_min_uV.i, align 4
  %71 = ptrtoint ptr %cpu_min_uV.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %cpu_min_uV.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 800000, i32 %72)
  %cmp.i394.i = icmp slt i32 %72, 800000
  br i1 %cmp.i394.i, label %if.end135.i.tegra30_core_cpu_limit.exit406.i_crit_edge, label %if.end.i396.i

if.end135.i.tegra30_core_cpu_limit.exit406.i_crit_edge: ; preds = %if.end135.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra30_core_cpu_limit.exit406.i

if.end.i396.i:                                    ; preds = %if.end135.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 900000, i32 %72)
  %cmp1.i395.i = icmp ult i32 %72, 900000
  br i1 %cmp1.i395.i, label %if.end.i396.i.tegra30_core_cpu_limit.exit406.i_crit_edge, label %if.end3.i398.i

if.end.i396.i.tegra30_core_cpu_limit.exit406.i_crit_edge: ; preds = %if.end.i396.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra30_core_cpu_limit.exit406.i

if.end3.i398.i:                                   ; preds = %if.end.i396.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %72)
  %cmp4.i397.i = icmp ult i32 %72, 1000000
  br i1 %cmp4.i397.i, label %if.end3.i398.i.tegra30_core_cpu_limit.exit406.i_crit_edge, label %if.end6.i400.i

if.end3.i398.i.tegra30_core_cpu_limit.exit406.i_crit_edge: ; preds = %if.end3.i398.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra30_core_cpu_limit.exit406.i

if.end6.i400.i:                                   ; preds = %if.end3.i398.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1100000, i32 %72)
  %cmp7.i399.i = icmp ult i32 %72, 1100000
  br i1 %cmp7.i399.i, label %if.end6.i400.i.tegra30_core_cpu_limit.exit406.i_crit_edge, label %if.end9.i402.i

if.end6.i400.i.tegra30_core_cpu_limit.exit406.i_crit_edge: ; preds = %if.end6.i400.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra30_core_cpu_limit.exit406.i

if.end9.i402.i:                                   ; preds = %if.end6.i400.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1250000, i32 %72)
  %cmp10.i401.i = icmp ult i32 %72, 1250000
  br i1 %cmp10.i401.i, label %if.then11.i403.i, label %if.end9.i402.i.tegra30_core_cpu_limit.exit406.i_crit_edge

if.end9.i402.i.tegra30_core_cpu_limit.exit406.i_crit_edge: ; preds = %if.end9.i402.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra30_core_cpu_limit.exit406.i

if.then11.i403.i:                                 ; preds = %if.end9.i402.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 2) to i32))
  %73 = load i32, ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %73)
  %74 = icmp ult i32 %73, 9
  br i1 %74, label %switch.lookup33, label %if.then11.i403.i.tegra30_core_cpu_limit.exit406.i_crit_edge

if.then11.i403.i.tegra30_core_cpu_limit.exit406.i_crit_edge: ; preds = %if.then11.i403.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra30_core_cpu_limit.exit406.i

switch.lookup33:                                  ; preds = %if.then11.i403.i
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep34 = getelementptr inbounds [9 x i32], ptr @switch.table.tegra30_regulator_balance_voltage.26, i32 0, i32 %73
  %75 = ptrtoint ptr %switch.gep34 to i32
  call void @__asan_load4_noabort(i32 %75)
  %switch.load35 = load i32, ptr %switch.gep34, align 4
  br label %tegra30_core_cpu_limit.exit406.i

tegra30_core_cpu_limit.exit406.i:                 ; preds = %switch.lookup33, %if.then11.i403.i.tegra30_core_cpu_limit.exit406.i_crit_edge, %if.end9.i402.i.tegra30_core_cpu_limit.exit406.i_crit_edge, %if.end6.i400.i.tegra30_core_cpu_limit.exit406.i_crit_edge, %if.end3.i398.i.tegra30_core_cpu_limit.exit406.i_crit_edge, %if.end.i396.i.tegra30_core_cpu_limit.exit406.i_crit_edge, %if.end135.i.tegra30_core_cpu_limit.exit406.i_crit_edge
  %retval.0.i405.i = phi i32 [ 950000, %if.end135.i.tegra30_core_cpu_limit.exit406.i_crit_edge ], [ 1000000, %if.end.i396.i.tegra30_core_cpu_limit.exit406.i_crit_edge ], [ 1100000, %if.end3.i398.i.tegra30_core_cpu_limit.exit406.i_crit_edge ], [ 1200000, %if.end6.i400.i.tegra30_core_cpu_limit.exit406.i_crit_edge ], [ -22, %if.end9.i402.i.tegra30_core_cpu_limit.exit406.i_crit_edge ], [ %switch.load35, %switch.lookup33 ], [ 1300000, %if.then11.i403.i.tegra30_core_cpu_limit.exit406.i_crit_edge ]
  %76 = call i32 @llvm.smax.i32(i32 %70, i32 %retval.0.i405.i) #7
  %77 = ptrtoint ptr %core_min_uV.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %core_min_uV.i, align 4
  %call143.i = call i32 @regulator_check_voltage(ptr noundef %1, ptr noundef nonnull %core_min_uV.i, ptr noundef nonnull %core_max_uV.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143.i)
  %tobool144.not.i = icmp eq i32 %call143.i, 0
  br i1 %tobool144.not.i, label %if.end146.i, label %tegra30_core_cpu_limit.exit406.i.tegra30_voltage_update.exit_crit_edge

tegra30_core_cpu_limit.exit406.i.tegra30_voltage_update.exit_crit_edge: ; preds = %tegra30_core_cpu_limit.exit406.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra30_voltage_update.exit

if.end146.i:                                      ; preds = %tegra30_core_cpu_limit.exit406.i
  %78 = ptrtoint ptr %sys_reboot_mode to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %sys_reboot_mode, align 1, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool147.not.i = icmp eq i8 %79, 0
  br i1 %tobool147.not.i, label %if.end146.i.if.end156.i_crit_edge, label %if.then148.i

if.end146.i.if.end156.i_crit_edge:                ; preds = %if.end146.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end156.i

if.then148.i:                                     ; preds = %if.end146.i
  call void @__sanitizer_cov_trace_pc() #9
  %80 = ptrtoint ptr %cpu_min_uV.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %cpu_min_uV.i, align 4
  %82 = ptrtoint ptr %cpu_min_uV118.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %cpu_min_uV118.i, align 4
  %84 = call i32 @llvm.smax.i32(i32 %81, i32 %83) #7
  %85 = ptrtoint ptr %cpu_min_uV.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %cpu_min_uV.i, align 4
  br label %if.end156.i

if.end156.i:                                      ; preds = %if.then148.i, %if.end146.i.if.end156.i_crit_edge
  %86 = ptrtoint ptr %sys_suspend_mode to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %sys_suspend_mode, align 1, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool158.not.i = icmp eq i8 %87, 0
  br i1 %tobool158.not.i, label %if.end156.i.if.end173.i_crit_edge, label %if.then159.i

if.end156.i.if.end173.i_crit_edge:                ; preds = %if.end156.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end173.i

if.then159.i:                                     ; preds = %if.end156.i
  call void @__sanitizer_cov_trace_pc() #9
  %call160.i = call fastcc i32 @tegra30_cpu_nominal_uV() #7
  %88 = ptrtoint ptr %cpu_min_uV.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %cpu_min_uV.i, align 4
  %90 = call i32 @llvm.smax.i32(i32 %call160.i, i32 %89) #7
  %91 = ptrtoint ptr %cpu_max_uV.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %cpu_max_uV.i, align 4
  %93 = call i32 @llvm.smin.i32(i32 %90, i32 %92) #7
  %94 = ptrtoint ptr %cpu_min_uV.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %cpu_min_uV.i, align 4
  br label %if.end173.i

if.end173.i:                                      ; preds = %if.then159.i, %if.end156.i.if.end173.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i393.ph.i, i32 %call98.i)
  %cmp174.i = icmp ugt i32 %retval.0.i393.ph.i, %call98.i
  br i1 %cmp174.i, label %do.end178.i, label %if.end173.i.while.cond.i_crit_edge

if.end173.i.while.cond.i_crit_edge:               ; preds = %if.end173.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

do.end178.i:                                      ; preds = %if.end173.i
  call void @__sanitizer_cov_trace_pc() #9
  %call180.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %call98.i, i32 noundef %retval.0.i393.ph.i, i32 noundef %call114.i) #10
  br label %update_core.i

while.cond.i:                                     ; preds = %if.end251.i.while.cond.i_crit_edge, %if.end248.i.while.cond.i_crit_edge, %if.end173.i.while.cond.i_crit_edge
  %cpu_uV.0.i = phi i32 [ %cpu_uV.1.i, %if.end248.i.while.cond.i_crit_edge ], [ %call114.i, %if.end173.i.while.cond.i_crit_edge ], [ %cpu_uV.1.i, %if.end251.i.while.cond.i_crit_edge ]
  %core_uV.0.i = phi i32 [ %core_uV.1.i, %if.end248.i.while.cond.i_crit_edge ], [ %call98.i, %if.end173.i.while.cond.i_crit_edge ], [ %core_target_uV.0.i, %if.end251.i.while.cond.i_crit_edge ]
  %95 = ptrtoint ptr %cpu_min_uV.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %cpu_min_uV.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cpu_uV.0.i, i32 %96)
  %cmp182.not.i = icmp eq i32 %cpu_uV.0.i, %96
  br i1 %cmp182.not.i, label %lor.rhs.i, label %while.cond.i.while.body.i_crit_edge

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

lor.rhs.i:                                        ; preds = %while.cond.i
  %97 = ptrtoint ptr %core_min_uV.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %core_min_uV.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %core_uV.0.i, i32 %98)
  %cmp183.not.i = icmp eq i32 %core_uV.0.i, %98
  br i1 %cmp183.not.i, label %lor.rhs.i.tegra30_voltage_update.exit_crit_edge, label %lor.rhs.i.while.body.i_crit_edge

lor.rhs.i.while.body.i_crit_edge:                 ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

lor.rhs.i.tegra30_voltage_update.exit_crit_edge:  ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra30_voltage_update.exit

while.body.i:                                     ; preds = %lor.rhs.i.while.body.i_crit_edge, %while.cond.i.while.body.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %cpu_uV.0.i, i32 %96)
  %cmp184.i = icmp slt i32 %cpu_uV.0.i, %96
  br i1 %cmp184.i, label %if.then185.i, label %if.else.i

if.then185.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.i = add i32 %cpu_uV.0.i, %cpu_max_step.0.i
  %99 = call i32 @llvm.smin.i32(i32 %add.i, i32 %96) #7
  br label %if.end206.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub192.i = sub i32 %cpu_uV.0.i, %cpu_max_step.0.i
  %100 = call i32 @llvm.smax.i32(i32 %sub192.i, i32 %96) #7
  %sub199.i = sub i32 %core_uV.0.i, %max_spread.0.i
  %101 = call i32 @llvm.smax.i32(i32 %sub199.i, i32 %100) #7
  br label %if.end206.i

if.end206.i:                                      ; preds = %if.else.i, %if.then185.i
  %cpu_target_uV.0.i = phi i32 [ %99, %if.then185.i ], [ %101, %if.else.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cpu_uV.0.i, i32 %cpu_target_uV.0.i)
  %cmp207.i = icmp eq i32 %cpu_uV.0.i, %cpu_target_uV.0.i
  br i1 %cmp207.i, label %if.end206.i.update_core.i_crit_edge, label %if.end209.i

if.end206.i.update_core.i_crit_edge:              ; preds = %if.end206.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %update_core.i

if.end209.i:                                      ; preds = %if.end206.i
  %102 = ptrtoint ptr %cpu_max_uV.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %cpu_max_uV.i, align 4
  %call210.i = call i32 @regulator_set_voltage_rdev(ptr noundef %3, i32 noundef %cpu_target_uV.0.i, i32 noundef %103, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call210.i)
  %tobool211.not.i = icmp eq i32 %call210.i, 0
  br i1 %tobool211.not.i, label %if.end209.i.update_core.i_crit_edge, label %if.end209.i.tegra30_voltage_update.exit_crit_edge

if.end209.i.tegra30_voltage_update.exit_crit_edge: ; preds = %if.end209.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra30_voltage_update.exit

if.end209.i.update_core.i_crit_edge:              ; preds = %if.end209.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %update_core.i

update_core.i:                                    ; preds = %if.end209.i.update_core.i_crit_edge, %if.end206.i.update_core.i_crit_edge, %do.end178.i
  %cpu_uV.1.i = phi i32 [ %call114.i, %do.end178.i ], [ %cpu_uV.0.i, %if.end206.i.update_core.i_crit_edge ], [ %cpu_target_uV.0.i, %if.end209.i.update_core.i_crit_edge ]
  %core_uV.1.i = phi i32 [ %call98.i, %do.end178.i ], [ %core_uV.0.i, %if.end206.i.update_core.i_crit_edge ], [ %core_uV.0.i, %if.end209.i.update_core.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 800000, i32 %cpu_uV.1.i)
  %cmp.i407.i = icmp slt i32 %cpu_uV.1.i, 800000
  br i1 %cmp.i407.i, label %update_core.i.if.end217.i_crit_edge, label %if.end.i409.i

update_core.i.if.end217.i_crit_edge:              ; preds = %update_core.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end217.i

if.end.i409.i:                                    ; preds = %update_core.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 900000, i32 %cpu_uV.1.i)
  %cmp1.i408.i = icmp ult i32 %cpu_uV.1.i, 900000
  br i1 %cmp1.i408.i, label %if.end.i409.i.if.end217.i_crit_edge, label %if.end3.i411.i

if.end.i409.i.if.end217.i_crit_edge:              ; preds = %if.end.i409.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end217.i

if.end3.i411.i:                                   ; preds = %if.end.i409.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %cpu_uV.1.i)
  %cmp4.i410.i = icmp ult i32 %cpu_uV.1.i, 1000000
  br i1 %cmp4.i410.i, label %if.end3.i411.i.if.end217.i_crit_edge, label %if.end6.i413.i

if.end3.i411.i.if.end217.i_crit_edge:             ; preds = %if.end3.i411.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end217.i

if.end6.i413.i:                                   ; preds = %if.end3.i411.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1100000, i32 %cpu_uV.1.i)
  %cmp7.i412.i = icmp ult i32 %cpu_uV.1.i, 1100000
  br i1 %cmp7.i412.i, label %if.end6.i413.i.if.end217.i_crit_edge, label %if.end9.i415.i

if.end6.i413.i.if.end217.i_crit_edge:             ; preds = %if.end6.i413.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end217.i

if.end9.i415.i:                                   ; preds = %if.end6.i413.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1250000, i32 %cpu_uV.1.i)
  %cmp10.i414.i = icmp ult i32 %cpu_uV.1.i, 1250000
  br i1 %cmp10.i414.i, label %if.then11.i416.i, label %if.end9.i415.i.tegra30_voltage_update.exit_crit_edge

if.end9.i415.i.tegra30_voltage_update.exit_crit_edge: ; preds = %if.end9.i415.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra30_voltage_update.exit

if.then11.i416.i:                                 ; preds = %if.end9.i415.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 2) to i32))
  %104 = load i32, ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %104)
  %105 = icmp ult i32 %104, 9
  br i1 %105, label %switch.lookup36, label %if.then11.i416.i.if.end217.i_crit_edge

if.then11.i416.i.if.end217.i_crit_edge:           ; preds = %if.then11.i416.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end217.i

switch.lookup36:                                  ; preds = %if.then11.i416.i
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep37 = getelementptr inbounds [9 x i32], ptr @switch.table.tegra30_regulator_balance_voltage.27, i32 0, i32 %104
  %106 = ptrtoint ptr %switch.gep37 to i32
  call void @__asan_load4_noabort(i32 %106)
  %switch.load38 = load i32, ptr %switch.gep37, align 4
  br label %if.end217.i

if.end217.i:                                      ; preds = %switch.lookup36, %if.then11.i416.i.if.end217.i_crit_edge, %if.end6.i413.i.if.end217.i_crit_edge, %if.end3.i411.i.if.end217.i_crit_edge, %if.end.i409.i.if.end217.i_crit_edge, %update_core.i.if.end217.i_crit_edge
  %retval.0.i418.ph.i = phi i32 [ 1200000, %if.end6.i413.i.if.end217.i_crit_edge ], [ 1100000, %if.end3.i411.i.if.end217.i_crit_edge ], [ 1000000, %if.end.i409.i.if.end217.i_crit_edge ], [ 950000, %update_core.i.if.end217.i_crit_edge ], [ %switch.load38, %switch.lookup36 ], [ 1300000, %if.then11.i416.i.if.end217.i_crit_edge ]
  %107 = ptrtoint ptr %core_min_uV.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %core_min_uV.i, align 4
  %109 = call i32 @llvm.smax.i32(i32 %retval.0.i418.ph.i, i32 %108) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %core_uV.1.i, i32 %109)
  %cmp224.i = icmp slt i32 %core_uV.1.i, %109
  br i1 %cmp224.i, label %if.then225.i, label %if.else240.i

if.then225.i:                                     ; preds = %if.end217.i
  call void @__sanitizer_cov_trace_pc() #9
  %add226.i = add i32 %core_uV.1.i, %core_max_step.0.i
  %110 = call i32 @llvm.smin.i32(i32 %109, i32 %add226.i) #7
  %add233.i = add i32 %cpu_uV.1.i, %max_spread.0.i
  %111 = call i32 @llvm.smin.i32(i32 %110, i32 %add233.i) #7
  br label %if.end248.i

if.else240.i:                                     ; preds = %if.end217.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub241.i = sub i32 %core_uV.1.i, %core_max_step.0.i
  %112 = call i32 @llvm.smax.i32(i32 %109, i32 %sub241.i) #7
  br label %if.end248.i

if.end248.i:                                      ; preds = %if.else240.i, %if.then225.i
  %core_target_uV.0.i = phi i32 [ %111, %if.then225.i ], [ %112, %if.else240.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %core_uV.1.i, i32 %core_target_uV.0.i)
  %cmp249.i = icmp eq i32 %core_uV.1.i, %core_target_uV.0.i
  br i1 %cmp249.i, label %if.end248.i.while.cond.i_crit_edge, label %if.end251.i

if.end248.i.while.cond.i_crit_edge:               ; preds = %if.end248.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

if.end251.i:                                      ; preds = %if.end248.i
  %113 = ptrtoint ptr %core_max_uV.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %core_max_uV.i, align 4
  %call252.i = call i32 @regulator_set_voltage_rdev(ptr noundef %1, i32 noundef %core_target_uV.0.i, i32 noundef %114, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call252.i)
  %tobool253.not.i = icmp eq i32 %call252.i, 0
  br i1 %tobool253.not.i, label %if.end251.i.while.cond.i_crit_edge, label %if.end251.i.tegra30_voltage_update.exit_crit_edge

if.end251.i.tegra30_voltage_update.exit_crit_edge: ; preds = %if.end251.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra30_voltage_update.exit

if.end251.i.while.cond.i_crit_edge:               ; preds = %if.end251.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

tegra30_voltage_update.exit:                      ; preds = %if.end251.i.tegra30_voltage_update.exit_crit_edge, %if.end9.i415.i.tegra30_voltage_update.exit_crit_edge, %if.end209.i.tegra30_voltage_update.exit_crit_edge, %lor.rhs.i.tegra30_voltage_update.exit_crit_edge, %tegra30_core_cpu_limit.exit406.i.tegra30_voltage_update.exit_crit_edge, %if.end9.i.i.tegra30_voltage_update.exit_crit_edge, %if.end113.i.tegra30_voltage_update.exit_crit_edge, %if.end109.i.tegra30_voltage_update.exit_crit_edge, %if.end105.i.tegra30_voltage_update.exit_crit_edge, %if.end101.i.tegra30_voltage_update.exit_crit_edge, %if.end97.i.tegra30_voltage_update.exit_crit_edge, %if.end81.i.tegra30_voltage_update.exit_crit_edge, %tegra30_core_limit.exit.i.tegra30_voltage_update.exit_crit_edge, %tegra30_core_limit.exit.thread422.i
  %retval.0.i = phi i32 [ %retval.0.i.i, %tegra30_core_limit.exit.i.tegra30_voltage_update.exit_crit_edge ], [ %call82.i, %if.end81.i.tegra30_voltage_update.exit_crit_edge ], [ %call98.i, %if.end97.i.tegra30_voltage_update.exit_crit_edge ], [ %call102.i, %if.end101.i.tegra30_voltage_update.exit_crit_edge ], [ %call106.i, %if.end105.i.tegra30_voltage_update.exit_crit_edge ], [ %call110.i, %if.end109.i.tegra30_voltage_update.exit_crit_edge ], [ %call114.i, %if.end113.i.tegra30_voltage_update.exit_crit_edge ], [ %call143.i, %tegra30_core_cpu_limit.exit406.i.tegra30_voltage_update.exit_crit_edge ], [ %call210.i, %if.end209.i.tegra30_voltage_update.exit_crit_edge ], [ %call252.i, %if.end251.i.tegra30_voltage_update.exit_crit_edge ], [ 0, %lor.rhs.i.tegra30_voltage_update.exit_crit_edge ], [ %call20.i.i, %tegra30_core_limit.exit.thread422.i ], [ -22, %if.end9.i.i.tegra30_voltage_update.exit_crit_edge ], [ -22, %if.end9.i415.i.tegra30_voltage_update.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cpu_min_uV_consumers.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cpu_max_uV.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cpu_min_uV.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %core_max_uV.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %core_min_uV.i) #7
  br label %cleanup

cleanup:                                          ; preds = %tegra30_voltage_update.exit, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %retval.0.i, %tegra30_voltage_update.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra30_regulator_reboot(ptr noundef %notifier, i32 noundef %event, ptr nocapture noundef readnone %cmd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %event)
  %cmp.not = icmp eq i32 %event, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %core_rdev.i = getelementptr i8, ptr %notifier, i32 -8
  %0 = ptrtoint ptr %core_rdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core_rdev.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %lor.lhs.false.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end
  %cpu_rdev.i = getelementptr i8, ptr %notifier, i32 -4
  %2 = ptrtoint ptr %cpu_rdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpu_rdev.i, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %do.body3.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body3.i:                                       ; preds = %lor.lhs.false.i
  %sys_reboot_mode_req.i = getelementptr i8, ptr %notifier, i32 32
  %4 = ptrtoint ptr %sys_reboot_mode_req.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store volatile i8 1, ptr %sys_reboot_mode_req.i, align 4
  %call.i = tail call i32 @regulator_sync_voltage_rdev(ptr noundef nonnull %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %do.body3.i.tegra30_regulator_prepare_reboot.exit_crit_edge

do.body3.i.tegra30_regulator_prepare_reboot.exit_crit_edge: ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra30_regulator_prepare_reboot.exit

if.end11.i:                                       ; preds = %do.body3.i
  %5 = ptrtoint ptr %core_rdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %core_rdev.i, align 4
  %call13.i = tail call i32 @regulator_sync_voltage_rdev(ptr noundef %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %do.body21.i, label %if.end11.i.tegra30_regulator_prepare_reboot.exit_crit_edge

if.end11.i.tegra30_regulator_prepare_reboot.exit_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra30_regulator_prepare_reboot.exit

do.body21.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %sys_reboot_mode_req.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store volatile i8 1, ptr %sys_reboot_mode_req.i, align 4
  br label %cleanup

tegra30_regulator_prepare_reboot.exit:            ; preds = %if.end11.i.tegra30_regulator_prepare_reboot.exit_crit_edge, %do.body3.i.tegra30_regulator_prepare_reboot.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %do.body3.i.tegra30_regulator_prepare_reboot.exit_crit_edge ], [ %call13.i, %if.end11.i.tegra30_regulator_prepare_reboot.exit_crit_edge ]
  %sub.i = sub i32 1, %retval.0.i
  %or.i = or i32 %sub.i, 32768
  br label %cleanup

cleanup:                                          ; preds = %tegra30_regulator_prepare_reboot.exit, %do.body21.i, %lor.lhs.false.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %or.i, %tegra30_regulator_prepare_reboot.exit ], [ 1, %do.body21.i ], [ 1, %lor.lhs.false.i.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra30_regulator_suspend(ptr noundef %notifier, i32 noundef %mode, ptr nocapture noundef readnone %arg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %mode, label %entry.sw.epilog.thread_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 5, label %entry.sw.bb_crit_edge45
    i32 3, label %entry.sw.bb_crit_edge46
    i32 2, label %entry.sw.bb1_crit_edge
    i32 6, label %entry.sw.bb1_crit_edge47
    i32 4, label %entry.sw.bb1_crit_edge48
  ]

entry.sw.bb1_crit_edge48:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge47:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb_crit_edge46:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge45:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.epilog.thread_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.thread

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge45, %entry.sw.bb_crit_edge46
  %core_rdev.i = getelementptr i8, ptr %notifier, i32 -20
  %1 = ptrtoint ptr %core_rdev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %core_rdev.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %sw.bb.sw.epilog.thread_crit_edge, label %lor.lhs.false.i

sw.bb.sw.epilog.thread_crit_edge:                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.thread

lor.lhs.false.i:                                  ; preds = %sw.bb
  %cpu_rdev.i = getelementptr i8, ptr %notifier, i32 -16
  %3 = ptrtoint ptr %cpu_rdev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cpu_rdev.i, align 4
  %tobool1.not.i = icmp eq ptr %4, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.sw.epilog.thread_crit_edge, label %do.body3.i

lor.lhs.false.i.sw.epilog.thread_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.thread

do.body3.i:                                       ; preds = %lor.lhs.false.i
  %sys_suspend_mode_req.i = getelementptr i8, ptr %notifier, i32 22
  %5 = ptrtoint ptr %sys_suspend_mode_req.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store volatile i8 1, ptr %sys_suspend_mode_req.i, align 2
  %call.i = tail call i32 @regulator_sync_voltage_rdev(ptr noundef nonnull %4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool11.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool11.not.i, label %do.body3.i.sw.epilog_crit_edge, label %do.body3.i.sw.epilog.thread.sink.split_crit_edge

do.body3.i.sw.epilog.thread.sink.split_crit_edge: ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.thread.sink.split

do.body3.i.sw.epilog_crit_edge:                   ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge47, %entry.sw.bb1_crit_edge48
  %core_rdev.i9 = getelementptr i8, ptr %notifier, i32 -20
  %6 = ptrtoint ptr %core_rdev.i9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %core_rdev.i9, align 4
  %tobool.not.i10 = icmp eq ptr %7, null
  br i1 %tobool.not.i10, label %sw.bb1.sw.epilog.thread_crit_edge, label %lor.lhs.false.i13

sw.bb1.sw.epilog.thread_crit_edge:                ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.thread

lor.lhs.false.i13:                                ; preds = %sw.bb1
  %cpu_rdev.i11 = getelementptr i8, ptr %notifier, i32 -16
  %8 = ptrtoint ptr %cpu_rdev.i11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cpu_rdev.i11, align 4
  %tobool1.not.i12 = icmp eq ptr %9, null
  br i1 %tobool1.not.i12, label %lor.lhs.false.i13.sw.epilog.thread_crit_edge, label %do.body3.i17

lor.lhs.false.i13.sw.epilog.thread_crit_edge:     ; preds = %lor.lhs.false.i13
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.thread

do.body3.i17:                                     ; preds = %lor.lhs.false.i13
  %sys_suspend_mode_req.i14 = getelementptr i8, ptr %notifier, i32 22
  %10 = ptrtoint ptr %sys_suspend_mode_req.i14 to i32
  call void @__asan_store1_noabort(i32 %10)
  store volatile i8 0, ptr %sys_suspend_mode_req.i14, align 2
  %call.i15 = tail call i32 @regulator_sync_voltage_rdev(ptr noundef nonnull %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15)
  %tobool11.not.i16 = icmp eq i32 %call.i15, 0
  br i1 %tobool11.not.i16, label %do.body3.i17.sw.epilog_crit_edge, label %do.body3.i17.sw.epilog.thread.sink.split_crit_edge

do.body3.i17.sw.epilog.thread.sink.split_crit_edge: ; preds = %do.body3.i17
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.thread.sink.split

do.body3.i17.sw.epilog_crit_edge:                 ; preds = %do.body3.i17
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body3.i17.sw.epilog_crit_edge, %do.body3.i.sw.epilog_crit_edge
  %core_rdev.i9.sink = phi ptr [ %core_rdev.i, %do.body3.i.sw.epilog_crit_edge ], [ %core_rdev.i9, %do.body3.i17.sw.epilog_crit_edge ]
  %11 = ptrtoint ptr %core_rdev.i9.sink to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %core_rdev.i9.sink, align 4
  %call15.i18 = tail call i32 @regulator_sync_voltage_rdev(ptr noundef %12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i18)
  %tobool.not = icmp eq i32 %call15.i18, 0
  br i1 %tobool.not, label %sw.epilog.sw.epilog.thread_crit_edge, label %sw.epilog.sw.epilog.thread.sink.split_crit_edge

sw.epilog.sw.epilog.thread.sink.split_crit_edge:  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.thread.sink.split

sw.epilog.sw.epilog.thread_crit_edge:             ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.thread

sw.epilog.thread.sink.split:                      ; preds = %sw.epilog.sw.epilog.thread.sink.split_crit_edge, %do.body3.i17.sw.epilog.thread.sink.split_crit_edge, %do.body3.i.sw.epilog.thread.sink.split_crit_edge
  %ret.0.ph.sink44 = phi i32 [ %call15.i18, %sw.epilog.sw.epilog.thread.sink.split_crit_edge ], [ %call.i15, %do.body3.i17.sw.epilog.thread.sink.split_crit_edge ], [ %call.i, %do.body3.i.sw.epilog.thread.sink.split_crit_edge ]
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %ret.0.ph.sink44) #10
  %sub.i = sub i32 1, %ret.0.ph.sink44
  %or.i = or i32 %sub.i, 32768
  br label %sw.epilog.thread

sw.epilog.thread:                                 ; preds = %sw.epilog.thread.sink.split, %sw.epilog.sw.epilog.thread_crit_edge, %lor.lhs.false.i13.sw.epilog.thread_crit_edge, %sw.bb1.sw.epilog.thread_crit_edge, %lor.lhs.false.i.sw.epilog.thread_crit_edge, %sw.bb.sw.epilog.thread_crit_edge, %entry.sw.epilog.thread_crit_edge
  %13 = phi i32 [ 1, %sw.epilog.sw.epilog.thread_crit_edge ], [ 1, %entry.sw.epilog.thread_crit_edge ], [ 1, %lor.lhs.false.i.sw.epilog.thread_crit_edge ], [ 1, %sw.bb.sw.epilog.thread_crit_edge ], [ 1, %lor.lhs.false.i13.sw.epilog.thread_crit_edge ], [ 1, %sw.bb1.sw.epilog.thread_crit_edge ], [ %or.i, %sw.epilog.thread.sink.split ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_check_consumers(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_rdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_check_voltage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @tegra30_cpu_nominal_uV() unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 2) to i32))
  %0 = load i32, ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 2), align 4
  %switch.tableidx = add i32 %0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %switch.tableidx)
  %1 = icmp ult i32 %switch.tableidx, 13
  br i1 %1, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [13 x i32], ptr @switch.table.tegra30_cpu_nominal_uV, i32 0, i32 %switch.tableidx
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi i32 [ %switch.load, %switch.lookup ], [ 1125000, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_rdev(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tegra_pmc_core_domain_state_synced() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_sync_voltage_rdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !19, !21, !22, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @__initcall__kmod_regulators_tegra30__323_534_tegra_regulator_coupler_init3, !1, !"__initcall__kmod_regulators_tegra30__323_534_tegra_regulator_coupler_init3", i1 false, i1 false}
!1 = !{!"../drivers/soc/tegra/regulators-tegra30.c", i32 534, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/soc/tegra/regulators-tegra30.c", i32 523, i32 32}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/soc/tegra/regulators-tegra30.c", i32 527, i32 2}
!6 = !{ptr @tegra30_coupler, !7, !"tegra30_coupler", i1 false, i1 false}
!7 = !{!"../drivers/soc/tegra/regulators-tegra30.c", i32 509, i32 39}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/soc/tegra/regulators-tegra30.c", i32 468, i32 32}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/soc/tegra/regulators-tegra30.c", i32 474, i32 32}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../drivers/soc/tegra/regulators-tegra30.c", i32 493, i32 6}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/soc/tegra/regulators-tegra30.c", i32 350, i32 3}
!16 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @tegra30_regulator_balance_voltage._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @tegra30_regulator_balance_voltage._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../drivers/soc/tegra/regulators-tegra30.c", i32 193, i32 3}
!21 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @tegra30_voltage_update._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @tegra30_voltage_update._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../drivers/soc/tegra/regulators-tegra30.c", i32 198, i32 3}
!27 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @tegra30_voltage_update._entry.9, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @tegra30_voltage_update._entry_ptr.11, !26, !"_entry_ptr", i1 false, i1 false}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../drivers/soc/tegra/regulators-tegra30.c", i32 203, i32 3}
!32 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @tegra30_voltage_update._entry.13, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @tegra30_voltage_update._entry_ptr.15, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/soc/tegra/regulators-tegra30.c", i32 287, i32 3}
!37 = !{ptr @tegra30_voltage_update._entry.16, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @tegra30_voltage_update._entry_ptr.18, !36, !"_entry_ptr", i1 false, i1 false}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../drivers/soc/tegra/regulators-tegra30.c", i32 62, i32 3}
!41 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @tegra30_core_limit._entry, !40, !"_entry", i1 false, i1 false}
!44 = !{ptr @tegra30_core_limit._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/soc/tegra/regulators-tegra30.c", i32 86, i32 2}
!47 = !{ptr @tegra30_core_limit._entry.21, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @tegra30_core_limit._entry_ptr.23, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/soc/tegra/regulators-tegra30.c", i32 412, i32 3}
!51 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @tegra30_regulator_suspend._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @tegra30_regulator_suspend._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{!"branch_weights", i32 2000, i32 1}
!64 = !{i8 0, i8 2}
!65 = !{!"auto-init"}
