; ModuleID = '/llk/IR_all_yes/drivers/regulator/of_regulator.c_pt.bc'
source_filename = "../drivers/regulator/of_regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+of_get_regulator_init_data\22, \22a\22\09"
module asm "\09.weak\09__crc_of_get_regulator_init_data\09\09\09\09"
module asm "\09.long\09__crc_of_get_regulator_init_data\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_get_regulator_init_data:\09\09\09\09\09"
module asm "\09.asciz \09\22of_get_regulator_init_data\22\09\09\09\09\09"
module asm "__kstrtabns_of_get_regulator_init_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+of_regulator_match\22, \22a\22\09"
module asm "\09.weak\09__crc_of_regulator_match\09\09\09\09"
module asm "\09.long\09__crc_of_regulator_match\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_regulator_match:\09\09\09\09\09"
module asm "\09.asciz \09\22of_regulator_match\22\09\09\09\09\09"
module asm "__kstrtabns_of_regulator_match:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.regulator_init_data = type { ptr, %struct.regulation_constraints, i32, ptr, ptr, ptr }
%struct.regulation_constraints = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.devm_of_regulator_matches = type { ptr, i32 }
%struct.of_regulator_match = type { ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.list_head = type { ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__kstrtab_of_get_regulator_init_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_get_regulator_init_data = external dso_local constant [0 x i8], align 1
@__ksymtab_of_get_regulator_init_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_get_regulator_init_data to i32), ptr @__kstrtab_of_get_regulator_init_data, ptr @__kstrtabns_of_get_regulator_init_data }, section "___ksymtab_gpl+of_get_regulator_init_data", align 4
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"devm_of_regulator_put_matches\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"regulator-compatible\00", [43 x i8] zeroinitializer }, align 32
@of_regulator_match._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 432, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to parse DT for regulator %pOFn\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"of_regulator_match\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/regulator/of_regulator.c\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@of_regulator_match._entry_ptr = internal global ptr @of_regulator_match._entry, section ".printk_index", align 4
@__kstrtab_of_regulator_match = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_regulator_match = external dso_local constant [0 x i8], align 1
@__ksymtab_of_regulator_match = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_regulator_match to i32), ptr @__kstrtab_of_regulator_match, ptr @__kstrtabns_of_regulator_match }, section "___ksymtab_gpl+of_regulator_match", align 4
@regulator_of_get_init_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.7, ptr @.str.4, i32 510, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"regulator_of_get_init_data\00", [37 x i8] zeroinitializer }, align 32
@regulator_of_get_init_data._entry_ptr = internal global ptr @regulator_of_get_init_data._entry, section ".printk_index", align 4
@regulator_of_get_init_data._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.4, i32 525, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"driver callback failed to parse DT for regulator %pOFn\0A\00", [40 x i8] zeroinitializer }, align 32
@regulator_of_get_init_data._entry_ptr.10 = internal global ptr @regulator_of_get_init_data._entry.8, section ".printk_index", align 4
@regulator_class = external dso_local global %struct.class, align 4
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"regulator-coupled-with\00", [41 x i8] zeroinitializer }, align 32
@of_check_coupling_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.4, i32 626, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"max_spread value invalid\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"of_check_coupling_data\00", [41 x i8] zeroinitializer }, align 32
@of_check_coupling_data._entry_ptr = internal global ptr @of_check_coupling_data._entry, section ".printk_index", align 4
@of_check_coupling_data._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.4, i32 641, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"number of coupled reg phandles mismatch\0A\00", [55 x i8] zeroinitializer }, align 32
@of_check_coupling_data._entry_ptr.16 = internal global ptr @of_check_coupling_data._entry.14, section ".printk_index", align 4
@of_check_coupling_data._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.4, i32 647, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"missing 2-way linking for coupled regulators\0A\00", [50 x i8] zeroinitializer }, align 32
@of_check_coupling_data._entry_ptr.19 = internal global ptr @of_check_coupling_data._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"regulator-coupled-max-spread\00", [35 x i8] zeroinitializer }, align 32
@of_check_coupling_data._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.13, ptr @.str.4, i32 660, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"coupled regulators max_spread mismatch\0A\00", [56 x i8] zeroinitializer }, align 32
@of_check_coupling_data._entry_ptr.23 = internal global ptr @of_check_coupling_data._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"regulator-name\00", [17 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"regulator-min-microvolt\00", [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"regulator-max-microvolt\00", [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"regulator-microvolt-offset\00", [37 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"regulator-min-microamp\00", [41 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"regulator-max-microamp\00", [41 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"regulator-input-current-limit-microamp\00", [57 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"regulator-boot-on\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"regulator-always-on\00", [44 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"regulator-pull-down\00", [44 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"regulator-allow-bypass\00", [41 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"regulator-allow-set-load\00", [39 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"regulator-ramp-delay\00", [43 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"regulator-settling-time-us\00", [37 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"regulator-settling-time-up-us\00", [34 x i8] zeroinitializer }, align 32
@of_get_regulation_constraints._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.4, i32 158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"\014%pOFn: ambiguous configuration for settling time, ignoring 'regulator-settling-time-up-us'\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"of_get_regulation_constraints\00", [34 x i8] zeroinitializer }, align 32
@of_get_regulation_constraints._entry_ptr = internal global ptr @of_get_regulation_constraints._entry, section ".printk_index", align 4
@.str.41 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"regulator-settling-time-down-us\00", [32 x i8] zeroinitializer }, align 32
@of_get_regulation_constraints._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.40, ptr @.str.4, i32 168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"\014%pOFn: ambiguous configuration for settling time, ignoring 'regulator-settling-time-down-us'\0A\00", [32 x i8] zeroinitializer }, align 32
@of_get_regulation_constraints._entry_ptr.44 = internal global ptr @of_get_regulation_constraints._entry.42, section ".printk_index", align 4
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"regulator-enable-ramp-delay\00", [36 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"regulator-soft-start\00", [43 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"regulator-active-discharge\00", [37 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"regulator-initial-mode\00", [41 x i8] zeroinitializer }, align 32
@of_get_regulation_constraints._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.40, ptr @.str.4, i32 189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013%pOFn: invalid mode %u\0A\00", [38 x i8] zeroinitializer }, align 32
@of_get_regulation_constraints._entry_ptr.51 = internal global ptr @of_get_regulation_constraints._entry.49, section ".printk_index", align 4
@of_get_regulation_constraints._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.40, ptr @.str.4, i32 194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014%pOFn: mapping for mode %d not defined\0A\00", [54 x i8] zeroinitializer }, align 32
@of_get_regulation_constraints._entry_ptr.54 = internal global ptr @of_get_regulation_constraints._entry.52, section ".printk_index", align 4
@.str.55 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"regulator-allowed-modes\00", [40 x i8] zeroinitializer }, align 32
@of_get_regulation_constraints._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.40, ptr @.str.4, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%pOFn: couldn't read allowed modes index %d, ret=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@of_get_regulation_constraints._entry_ptr.58 = internal global ptr @of_get_regulation_constraints._entry.56, section ".printk_index", align 4
@of_get_regulation_constraints._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.40, ptr @.str.4, i32 213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013%pOFn: invalid regulator-allowed-modes element %u\0A\00", [43 x i8] zeroinitializer }, align 32
@of_get_regulation_constraints._entry_ptr.61 = internal global ptr @of_get_regulation_constraints._entry.59, section ".printk_index", align 4
@of_get_regulation_constraints._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.40, ptr @.str.4, i32 221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014%pOFn: mode mapping not defined\0A\00", [61 x i8] zeroinitializer }, align 32
@of_get_regulation_constraints._entry_ptr.64 = internal global ptr @of_get_regulation_constraints._entry.62, section ".printk_index", align 4
@.str.65 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"regulator-system-load\00", [42 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"regulator-max-step-microvolt\00", [35 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"regulator-over-current-protection\00", [62 x i8] zeroinitializer }, align 32
@regulator_states = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr null, ptr null, ptr @.str.86, ptr @.str.87, ptr @.str.88], [44 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"regulator-mode\00", [17 x i8] zeroinitializer }, align 32
@of_get_regulation_constraints._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.40, ptr @.str.4, i32 276, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@of_get_regulation_constraints._entry_ptr.70 = internal global ptr @of_get_regulation_constraints._entry.69, section ".printk_index", align 4
@of_get_regulation_constraints._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.40, ptr @.str.4, i32 281, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@of_get_regulation_constraints._entry_ptr.72 = internal global ptr @of_get_regulation_constraints._entry.71, section ".printk_index", align 4
@.str.73 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"regulator-on-in-suspend\00", [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"regulator-off-in-suspend\00", [39 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"regulator-suspend-min-microvolt\00", [32 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"regulator-suspend-max-microvolt\00", [32 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"regulator-suspend-microvolt\00", [36 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"regulator-changeable-in-suspend\00", [32 x i8] zeroinitializer }, align 32
@of_get_regulator_prot_limits.props = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82], [16 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"regulator-oc-%s-microamp\00", [39 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"regulator-ov-%s-microvolt\00", [38 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"regulator-temp-%s-kelvin\00", [39 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"regulator-uv-%s-microvolt\00", [38 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"protection\00", [21 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"error\00", [26 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"warn\00", [27 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"regulator-state-standby\00", [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"regulator-state-mem\00", [44 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"regulator-state-disk\00", [43 x i8] zeroinitializer }, align 32
@regulator_of_get_init_node.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.89, ptr @.str.90, ptr @.str.4, ptr @.str.91, i8 0, i8 117, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"of_regulator\00", [19 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"regulator_of_get_init_node\00", [37 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to find regulator container node '%s'\0A\00", [50 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.94 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.95 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 396, i32 17 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 415, i32 6 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 430, i32 5 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 510, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 523, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 558, i32 7 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 626, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 641, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 647, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 652, i32 42 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 659, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 97, i32 42 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 99, i32 32 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 102, i32 32 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 113, i32 32 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 115, i32 32 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 117, i32 32 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 120, i32 32 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 128, i32 51 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 129, i32 53 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 133, i32 53 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 135, i32 32 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 138, i32 32 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 141, i32 33 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 149, i32 33 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 153, i32 33 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 157, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 162, i32 33 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 167, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 172, i32 33 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 177, i32 6 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 178, i32 33 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 185, i32 32 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 189, i32 5 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 193, i32 4 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 198, i32 44 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 206, i32 6 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 212, i32 6 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 221, i32 4 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 225, i32 32 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 240, i32 32 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 245, i32 6 }
@___asan_gen_.282 = private unnamed_addr constant [17 x i8] c"regulator_states\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 18, i32 26 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 270, i32 41 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 275, i32 6 }
@___asan_gen_.291 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 280, i32 5 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 286, i32 6 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 289, i32 6 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 293, i32 5 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 297, i32 5 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 301, i32 6 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 307, i32 6 }
@___asan_gen_.312 = private unnamed_addr constant [6 x i8] c"props\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 40, i32 27 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 41, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 42, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 43, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 44, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 60, i32 4 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 60, i32 18 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 60, i32 27 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 19, i32 25 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 20, i32 21 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 21, i32 21 }
@___asan_gen_.351 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.352 = private constant [36 x i8] c"../drivers/regulator/of_regulator.c\00", align 1
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 467, i32 3 }
@llvm.compiler.used = appending global [104 x ptr] [ptr @__ksymtab_of_get_regulator_init_data, ptr @__ksymtab_of_regulator_match, ptr @of_check_coupling_data._entry, ptr @of_check_coupling_data._entry.14, ptr @of_check_coupling_data._entry.17, ptr @of_check_coupling_data._entry.21, ptr @of_check_coupling_data._entry_ptr, ptr @of_check_coupling_data._entry_ptr.16, ptr @of_check_coupling_data._entry_ptr.19, ptr @of_check_coupling_data._entry_ptr.23, ptr @of_get_regulation_constraints._entry, ptr @of_get_regulation_constraints._entry.42, ptr @of_get_regulation_constraints._entry.49, ptr @of_get_regulation_constraints._entry.52, ptr @of_get_regulation_constraints._entry.56, ptr @of_get_regulation_constraints._entry.59, ptr @of_get_regulation_constraints._entry.62, ptr @of_get_regulation_constraints._entry.69, ptr @of_get_regulation_constraints._entry.71, ptr @of_get_regulation_constraints._entry_ptr, ptr @of_get_regulation_constraints._entry_ptr.44, ptr @of_get_regulation_constraints._entry_ptr.51, ptr @of_get_regulation_constraints._entry_ptr.54, ptr @of_get_regulation_constraints._entry_ptr.58, ptr @of_get_regulation_constraints._entry_ptr.61, ptr @of_get_regulation_constraints._entry_ptr.64, ptr @of_get_regulation_constraints._entry_ptr.70, ptr @of_get_regulation_constraints._entry_ptr.72, ptr @of_regulator_match._entry, ptr @of_regulator_match._entry_ptr, ptr @regulator_of_get_init_data._entry, ptr @regulator_of_get_init_data._entry.8, ptr @regulator_of_get_init_data._entry_ptr, ptr @regulator_of_get_init_data._entry_ptr.10, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @regulator_states, ptr @.str.68, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @of_get_regulator_prot_limits.props, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91], section "llvm.metadata"
@0 = internal global [86 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_regulator_match._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regulator_of_get_init_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regulator_of_get_init_data._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_check_coupling_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_check_coupling_data._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_check_coupling_data._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_check_coupling_data._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_get_regulation_constraints._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_get_regulation_constraints._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_get_regulation_constraints._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_get_regulation_constraints._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_get_regulation_constraints._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_get_regulation_constraints._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_get_regulation_constraints._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regulator_states to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_get_regulation_constraints._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_get_regulation_constraints._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_get_regulator_prot_limits.props to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @of_get_regulator_init_data(ptr noundef %dev, ptr noundef %node, ptr noundef readonly %desc) #0 align 64 {
entry:
  %pval.i.i = alloca i32, align 4
  %limits.i.i = alloca [4 x ptr], align 4
  %set.i.i = alloca [4 x i8], align 4
  %prop.i.i = alloca [255 x i8], align 1
  %pval.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %node, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 228, i32 noundef 3520) #7
  %tobool1.not = icmp eq ptr %call.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %constraints1.i = getelementptr inbounds %struct.regulator_init_data, ptr %call.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pval.i) #7
  %0 = ptrtoint ptr %pval.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %pval.i, align 4, !annotation !182
  %call.i10 = tail call i32 @of_count_phandle_with_args(ptr noundef nonnull %node, ptr noundef nonnull @.str.11, ptr noundef null) #7
  %1 = tail call i32 @llvm.smax.i32(i32 %call.i10, i32 0) #7
  %call2.i = tail call ptr @of_get_property(ptr noundef nonnull %node, ptr noundef nonnull @.str.24, ptr noundef null) #7
  %2 = ptrtoint ptr %constraints1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2.i, ptr %constraints1.i, align 4
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %node, ptr noundef nonnull @.str.25, ptr noundef nonnull %pval.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i, label %if.then.i, label %if.end3.if.end.i_crit_edge

if.end3.if.end.i_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %pval.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pval.i, align 4
  %min_uV.i = getelementptr inbounds %struct.regulator_init_data, ptr %call.i, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %min_uV.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %min_uV.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end3.if.end.i_crit_edge
  %call.i.i467.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %node, ptr noundef nonnull @.str.26, ptr noundef nonnull %pval.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i467.i)
  %tobool5.not.i = icmp sgt i32 %call.i.i467.i, -1
  br i1 %tobool5.not.i, label %if.then6.i, label %if.end.i.if.end7.i_crit_edge

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %pval.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pval.i, align 4
  %max_uV.i = getelementptr inbounds %struct.regulator_init_data, ptr %call.i, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %max_uV.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %max_uV.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then6.i, %if.end.i.if.end7.i_crit_edge
  %min_uV8.i = getelementptr inbounds %struct.regulator_init_data, ptr %call.i, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %min_uV8.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %min_uV8.i, align 4
  %max_uV9.i = getelementptr inbounds %struct.regulator_init_data, ptr %call.i, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %max_uV9.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_uV9.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp10.not.i = icmp eq i32 %10, %12
  br i1 %cmp10.not.i, label %if.end7.i.if.end12.i_crit_edge, label %if.then11.i

if.end7.i.if.end12.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

if.then11.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  %valid_ops_mask.i = getelementptr inbounds %struct.regulator_init_data, ptr %call.i, i32 0, i32 1, i32 11
  %13 = ptrtoint ptr %valid_ops_mask.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %valid_ops_mask.i, align 4
  %or.i = or i32 %14, 1
  store i32 %or.i, ptr %valid_ops_mask.i, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then11.i, %if.end7.i.if.end12.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool14.not.i = icmp eq i32 %10, 0
  br i1 %tobool14.not.i, label %if.end12.i.if.end18.i_crit_edge, label %land.lhs.true.i

if.end12.i.if.end18.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i

land.lhs.true.i:                                  ; preds = %if.end12.i
  %15 = ptrtoint ptr %max_uV9.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_uV9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool16.not.i = icmp eq i32 %16, 0
  br i1 %tobool16.not.i, label %land.lhs.true.i.if.end18.i_crit_edge, label %if.then17.i

land.lhs.true.i.if.end18.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i

if.then17.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %apply_uV.i = getelementptr inbounds %struct.regulator_init_data, ptr %call.i, i32 0, i32 1, i32 28
  %17 = ptrtoint ptr %apply_uV.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load.i = load i16, ptr %apply_uV.i, align 4
  %bf.set.i = or i16 %bf.load.i, 8192
  store i16 %bf.set.i, ptr %apply_uV.i, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then17.i, %land.lhs.true.i.if.end18.i_crit_edge, %if.end12.i.if.end18.i_crit_edge
  %call.i.i468.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %node, ptr noundef nonnull @.str.27, ptr noundef nonnull %pval.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i468.i)
  %tobool20.not.i = icmp sgt i32 %call.i.i468.i, -1
  br i1 %tobool20.not.i, label %if.then21.i, label %if.end18.i.if.end22.i_crit_edge

if.end18.i.if.end22.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

if.then21.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %pval.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pval.i, align 4
  %uV_offset.i = getelementptr inbounds %struct.regulator_init_data, ptr %call.i, i32 0, i32 1, i32 3
  %20 = ptrtoint ptr %uV_offset.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %uV_offset.i, align 4
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then21.i, %if.end18.i.if.end22.i_crit_edge
  %call.i.i469.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %node, ptr noundef nonnull @.str.28, ptr noundef nonnull %pval.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i469.i)
  %tobool24.not.i = icmp sgt i32 %call.i.i469.i, -1
  br i1 %tobool24.not.i, label %if.then25.i, label %if.end22.i.if.end26.i_crit_edge

if.end22.i.if.end26.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i

if.then25.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %pval.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pval.i, align 4
  %min_uA.i = getelementptr inbounds %struct.regulator_init_data, ptr %call.i, i32 0, i32 1, i32 4
  %23 = ptrtoint ptr %min_uA.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %min_uA.i, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then25.i, %if.end22.i.if.end26.i_crit_edge
  %call.i.i470.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %node, ptr noundef nonnull @.str.29, ptr noundef nonnull %pval.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i470.i)
  %tobool28.not.i = icmp sgt i32 %call.i.i470.i, -1
  br i1 %tobool28.not.i, label %if.then29.i, label %if.end26.i.if.end30.i_crit_edge

if.end26.i.if.end30.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.i

if.then29.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %pval.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pval.i, align 4
  %max_uA.i = getelementptr inbounds %struct.regulator_init_data, ptr %call.i, i32 0, i32 1, i32 5
  %26 = ptrtoint ptr %max_uA.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %max_uA.i, align 4
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then29.i, %if.end26.i.if.end30.i_crit_edge
  %call.i.i471.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %node, ptr noundef nonnull @.str.30, ptr noundef nonnull %pval.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i471.i)
  %tobool32.not.i = icmp sgt i32 %call.i.i471.i, -1
  br i1 %tobool32.not.i, label %if.then33.i, label %if.end30.i.if.end34.i_crit_edge

if.end30.i.if.end34.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

if.then33.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %pval.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pval.i, align 4
  %ilim_uA.i = getelementptr inbounds %struct.regulator_init_data, ptr %call.i, i32 0, i32 1, i32 6
  %29 = ptrtoint ptr %ilim_uA.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %ilim_uA.i, align 4
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then33.i, %if.end30.i.if.end34.i_crit_edge
  %min_uA35.i = getelementptr inbounds %struct.regulator_init_data, ptr %call.i, i32 0, i32 1, i32 4
  %30 = ptrtoint ptr %min_uA35.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %min_uA35.i, align 4
  %max_uA36.i = getelementptr inbounds %struct.regulator_init_data, ptr %call.i, i32 0, i32 1, i32 5
  %32 = ptrtoint ptr %max_uA36.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %max_uA36.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp37.not.i = icmp eq i32 %31, %33
  br i1 %cmp37.not.i, label %if.end34.i.if.end41.i_crit_edge, label %if.then38.i

if.end34.i.if.end41.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41.i

if.then38.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  %valid_ops_mask39.i = getelementptr inbounds %struct.regulator_init_data, ptr %call.i, i32 0, i32 1, i32 11
  %34 = ptrtoint ptr %valid_ops_mask39.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %valid_ops_mask39.i, align 4
  %or40.i = or i32 %35, 2
  store i32 %or40.i, ptr %valid_ops_mask39.i, align 4
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then38.i, %if.end34.i.if.end41.i_crit_edge
  %call.i.i = call ptr @of_find_property(ptr noundef nonnull %node, ptr noundef nonnull @.str.31, ptr noundef null) #7
  %tobool.i.not.i = icmp eq ptr %call.i.i, null
  %boot_on.i = getelementptr inbounds %struct.regulator_init_data, ptr %call.i, i32 0, i32 1, i32 28
  %36 = ptrtoint ptr %boot_on.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %bf.load43.i = load i16, ptr %boot_on.i, align 4
  %bf.shl.i = select i1 %tobool.i.not.i, i16 0, i16 16384
  %bf.clear44.i = and i16 %bf.load43.i, -16385
  %bf.set45.i = or i16 %bf.clear44.i, %bf.shl.i
  store i16 %bf.set45.i, ptr %boot_on.i, align 4
  %call.i472.i = call ptr @of_find_property(ptr noundef nonnull %node, ptr noundef nonnull @.str.32, ptr noundef null) #7
  %tobool.i473.not.i = icmp eq ptr %call.i472.i, null
  %37 = ptrtoint ptr %boot_on.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %bf.load48.i = load i16, ptr %boot_on.i, align 4
  %bf.shl50.i = select i1 %tobool.i473.not.i, i16 0, i16 -32768
  %bf.clear51.i = and i16 %bf.load48.i, 32767
  %bf.set52.i = or i16 %bf.clear51.i, %bf.shl50.i
  store i16 %bf.set52.i, ptr %boot_on.i, align 4
  br i1 %tobool.i473.not.i, label %if.then57.i, label %if.end41.i.if.end60.i_crit_edge

if.end41.i.if.end60.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60.i

if.then57.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #9
  %valid_ops_mask58.i = getelementptr inbounds %struct.regulator_init_data, ptr %call.i, i32 0, i32 1, i32 11
  %38 = ptrtoint ptr %valid_ops_mask58.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %valid_ops_mask58.i, align 4
  %or59.i = or i32 %39, 8
  store i32 %or59.i, ptr %valid_ops_mask58.i, align 4
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.then57.i, %if.end41.i.if.end60.i_crit_edge
  %call.i474.i = call ptr @of_find_property(ptr noundef nonnull %node, ptr noundef nonnull @.str.33, ptr noundef null) #7
  %tobool.i475.not.i = icmp eq ptr %call.i474.i, null
  %40 = ptrtoint ptr %boot_on.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %bf.load63.i = load i16, ptr %boot_on.i, align 4
  %bf.shl65.i = select i1 %tobool.i475.not.i, i16 0, i16 1024
  %bf.clear66.i = and i16 %bf.load63.i, -1025
  %bf.set67.i = or i16 %bf.clear66.i, %bf.shl65.i
  store i16 %bf.set67.i, ptr %boot_on.i, align 4
  %call.i476.i = call ptr @of_find_property(ptr noundef nonnull %node, ptr noundef nonnull @.str.34, ptr noundef null) #7
  %tobool.i477.not.i = icmp eq ptr %call.i476.i, null
  br i1 %tobool.i477.not.i, label %if.end60.i.if.end73.i_crit_edge, label %if.then70.i

if.end60.i.if.end73.i_crit_edge:                  ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73.i

if.then70.i:                                      ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #9
  %valid_ops_mask71.i = getelementptr inbounds %struct.regulator_init_data, ptr %call.i, i32 0, i32 1, i32 11
  %41 = ptrtoint ptr %valid_ops_mask71.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %valid_ops_mask71.i, align 4
  %or72.i = or i32 %42, 32
  store i32 %or72.i, ptr %valid_ops_mask71.i, align 4
  br label %if.end73.i

if.end73.i:                                       ; preds = %if.then70.i, %if.end60.i.if.end73.i_crit_edge
  %call.i478.i = call ptr @of_find_property(ptr noundef nonnull %node, ptr noundef nonnull @.str.35, ptr noundef null) #7
  %tobool.i479.not.i = icmp eq ptr %call.i478.i, null
  br i1 %tobool.i479.not.i, label %if.end73.i.if.end78.i_crit_edge, label %if.then75.i

if.end73.i.if.end78.i_crit_edge:                  ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78.i

if.then75.i:                                      ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #9
  %valid_ops_mask76.i = getelementptr inbounds %struct.regulator_init_data, ptr %call.i, i32 0, i32 1, i32 11
  %43 = ptrtoint ptr %valid_ops_mask76.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %valid_ops_mask76.i, align 4
  %or77.i = or i32 %44, 16
  store i32 %or77.i, ptr %valid_ops_mask76.i, align 4
  br label %if.end78.i

if.end78.i:                                       ; preds = %if.then75.i, %if.end73.i.if.end78.i_crit_edge
  %call.i.i480.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %node, ptr noundef nonnull @.str.36, ptr noundef nonnull %pval.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i480.i)
  %tobool80.not.i = icmp sgt i32 %call.i.i480.i, -1
  br i1 %tobool80.not.i, label %if.then81.i, label %if.end78.i.if.end88.i_crit_edge

if.end78.i.if.end88.i_crit_edge:                  ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88.i

if.then81.i:                                      ; preds = %if.end78.i
  %45 = ptrtoint ptr %pval.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pval.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool82.not.i = icmp eq i32 %46, 0
  br i1 %tobool82.not.i, label %if.else.i, label %if.then83.i

if.then83.i:                                      ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #9
  %ramp_delay.i = getelementptr inbounds %struct.regulator_init_data, ptr %call.i, i32 0, i32 1, i32 22
  %47 = ptrtoint ptr %ramp_delay.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %ramp_delay.i, align 4
  br label %if.end88.i

if.else.i:                                        ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %boot_on.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %bf.load84.i = load i16, ptr %boot_on.i, align 4
  %bf.set86.i = or i16 %bf.load84.i, 4096
  store i16 %bf.set86.i, ptr %boot_on.i, align 4
  br label %if.end88.i

if.end88.i:                                       ; preds = %if.else.i, %if.then83.i, %if.end78.i.if.end88.i_crit_edge
  %call.i.i481.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %node, ptr noundef nonnull @.str.37, ptr noundef nonnull %pval.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i481.i)
  %tobool90.not.i = icmp sgt i32 %call.i.i481.i, -1
  br i1 %tobool90.not.i, label %if.then91.i, label %if.end88.i.if.end92.i_crit_edge

if.end88.i.if.end92.i_crit_edge:                  ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end92.i

if.then91.i:                                      ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %pval.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pval.i, align 4
  %settling_time.i = getelementptr inbounds %struct.regulator_init_data, ptr %call.i, i32 0, i32 1, i32 23
  %51 = ptrtoint ptr %settling_time.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %settling_time.i, align 4
  br label %if.end92.i

if.end92.i:                                       ; preds = %if.then91.i, %if.end88.i.if.end92.i_crit_edge
  %call.i.i482.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %node, ptr noundef nonnull @.str.38, ptr noundef nonnull %pval.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i482.i)
  %tobool94.not.i = icmp sgt i32 %call.i.i482.i, -1
  br i1 %tobool94.not.i, label %if.then95.i, label %if.end92.i.if.end96.i_crit_edge

if.end92.i.if.end96.i_crit_edge:                  ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end96.i

if.then95.i:                                      ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %pval.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pval.i, align 4
  %settling_time_up.i = getelementptr inbounds %struct.regulator_init_data, ptr %call.i, i32 0, i32 1, i32 24
  %54 = ptrtoint ptr %settling_time_up.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %settling_time_up.i, align 4
  br label %if.end96.i

if.end96.i:                                       ; preds = %if.then95.i, %if.end92.i.if.end96.i_crit_edge
  %settling_time_up97.i = getelementptr inbounds %struct.regulator_init_data, ptr %call.i, i32 0, i32 1, i32 24
  %55 = ptrtoint ptr %settling_time_up97.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %settling_time_up97.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool98.not.i = icmp eq i32 %56, 0
  br i1 %tobool98.not.i, label %if.end96.i.if.end106.i_crit_edge, label %land.lhs.true99.i

if.end96.i.if.end106.i_crit_edge:                 ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end106.i

land.lhs.true99.i:                                ; preds = %if.end96.i
  %settling_time100.i = getelementptr inbounds %struct.regulator_init_data, ptr %call.i, i32 0, i32 1, i32 23
  %57 = ptrtoint ptr %settling_time100.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %settling_time100.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool101.not.i = icmp eq i32 %58, 0
  br i1 %tobool101.not.i, label %land.lhs.true99.i.if.end106.i_crit_edge, label %do.end.i

land.lhs.true99.i.if.end106.i_crit_edge:          ; preds = %land.lhs.true99.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end106.i

do.end.i:                                         ; preds = %land.lhs.true99.i
  call void @__sanitizer_cov_trace_pc() #9
  %call104.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull %node) #10
  %59 = ptrtoint ptr %settling_time_up97.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %settling_time_up97.i, align 4
  br label %if.end106.i

if.end106.i:                                      ; preds = %do.end.i, %land.lhs.true99.i.if.end106.i_crit_edge, %if.end96.i.if.end106.i_crit_edge
  %call.i.i483.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %node, ptr noundef nonnull @.str.41, ptr noundef nonnull %pval.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i483.i)
  %tobool108.not.i = icmp sgt i32 %call.i.i483.i, -1
  br i1 %tobool108.not.i, label %if.then109.i, label %if.end106.i.if.end110.i_crit_edge

if.end106.i.if.end110.i_crit_edge:                ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110.i

if.then109.i:                                     ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %pval.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pval.i, align 4
  %settling_time_down.i = getelementptr inbounds %struct.regulator_init_data, ptr %call.i, i32 0, i32 1, i32 25
  %62 = ptrtoint ptr %settling_time_down.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %settling_time_down.i, align 4
  br label %if.end110.i

if.end110.i:                                      ; preds = %if.then109.i, %if.end106.i.if.end110.i_crit_edge
  %settling_time_down111.i = getelementptr inbounds %struct.regulator_init_data, ptr %call.i, i32 0, i32 1, i32 25
  %63 = ptrtoint ptr %settling_time_down111.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %settling_time_down111.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool112.not.i = icmp eq i32 %64, 0
  br i1 %tobool112.not.i, label %if.end110.i.if.end123.i_crit_edge, label %land.lhs.true113.i

if.end110.i.if.end123.i_crit_edge:                ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end123.i

land.lhs.true113.i:                               ; preds = %if.end110.i
  %settling_time114.i = getelementptr inbounds %struct.regulator_init_data, ptr %call.i, i32 0, i32 1, i32 23
  %65 = ptrtoint ptr %settling_time114.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %settling_time114.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool115.not.i = icmp eq i32 %66, 0
  br i1 %tobool115.not.i, label %land.lhs.true113.i.if.end123.i_crit_edge, label %do.end119.i

land.lhs.true113.i.if.end123.i_crit_edge:         ; preds = %land.lhs.true113.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end123.i

do.end119.i:                                      ; preds = %land.lhs.true113.i
  call void @__sanitizer_cov_trace_pc() #9
  %call121.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull %node) #10
  %67 = ptrtoint ptr %settling_time_down111.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %settling_time_down111.i, align 4
  br label %if.end123.i

if.end123.i:                                      ; preds = %do.end119.i, %land.lhs.true113.i.if.end123.i_crit_edge, %if.end110.i.if.end123.i_crit_edge
  %call.i.i484.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %node, ptr noundef nonnull @.str.45, ptr noundef nonnull %pval.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i484.i)
  %tobool125.not.i = icmp sgt i32 %call.i.i484.i, -1
  br i1 %tobool125.not.i, label %if.then126.i, label %if.end123.i.if.end127.i_crit_edge

if.end123.i.if.end127.i_crit_edge:                ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end127.i

if.then126.i:                                     ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #9
  %68 = ptrtoint ptr %pval.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pval.i, align 4
  %enable_time.i = getelementptr inbounds %struct.regulator_init_data, ptr %call.i, i32 0, i32 1, i32 26
  %70 = ptrtoint ptr %enable_time.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %enable_time.i, align 4
  br label %if.end127.i

if.end127.i:                                      ; preds = %if.then126.i, %if.end123.i.if.end127.i_crit_edge
  %call.i485.i = call ptr @of_find_property(ptr noundef nonnull %node, ptr noundef nonnull @.str.46, ptr noundef null) #7
  %tobool.i486.not.i = icmp eq ptr %call.i485.i, null
  %71 = ptrtoint ptr %boot_on.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %bf.load130.i = load i16, ptr %boot_on.i, align 4
  %bf.shl132.i = select i1 %tobool.i486.not.i, i16 0, i16 2048
  %bf.clear133.i = and i16 %bf.load130.i, -2049
  %bf.set134.i = or i16 %bf.clear133.i, %bf.shl132.i
  store i16 %bf.set134.i, ptr %boot_on.i, align 4
  %call.i.i487.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %node, ptr noundef nonnull @.str.47, ptr noundef nonnull %pval.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i487.i)
  %tobool137.not.i = icmp sgt i32 %call.i.i487.i, -1
  br i1 %tobool137.not.i, label %if.then138.i, label %if.end127.i.if.end141.i_crit_edge

if.end127.i.if.end141.i_crit_edge:                ; preds = %if.end127.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end141.i

if.then138.i:                                     ; preds = %if.end127.i
  call void @__sanitizer_cov_trace_pc() #9
  %72 = ptrtoint ptr %pval.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %pval.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool139.not.i = icmp eq i32 %73, 0
  %cond140.i = select i1 %tobool139.not.i, i32 1, i32 2
  %active_discharge.i = getelementptr inbounds %struct.regulator_init_data, ptr %call.i, i32 0, i32 1, i32 27
  %74 = ptrtoint ptr %active_discharge.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %cond140.i, ptr %active_discharge.i, align 4
  br label %if.end141.i

if.end141.i:                                      ; preds = %if.then138.i, %if.end127.i.if.end141.i_crit_edge
  %call.i.i488.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %node, ptr noundef nonnull @.str.48, ptr noundef nonnull %pval.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i488.i)
  %tobool143.not.i = icmp sgt i32 %call.i.i488.i, -1
  br i1 %tobool143.not.i, label %if.then144.i, label %if.end141.i.if.end168.i_crit_edge

if.end141.i.if.end168.i_crit_edge:                ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end168.i

if.then144.i:                                     ; preds = %if.end141.i
  %tobool145.not.i = icmp eq ptr %desc, null
  br i1 %tobool145.not.i, label %if.then144.i.do.end164.i_crit_edge, label %land.lhs.true146.i

if.then144.i.do.end164.i_crit_edge:               ; preds = %if.then144.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end164.i

land.lhs.true146.i:                               ; preds = %if.then144.i
  %of_map_mode.i = getelementptr inbounds %struct.regulator_desc, ptr %desc, i32 0, i32 60
  %75 = ptrtoint ptr %of_map_mode.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %of_map_mode.i, align 4
  %tobool147.not.i = icmp eq ptr %76, null
  br i1 %tobool147.not.i, label %land.lhs.true146.i.do.end164.i_crit_edge, label %if.then148.i

land.lhs.true146.i.do.end164.i_crit_edge:         ; preds = %land.lhs.true146.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end164.i

if.then148.i:                                     ; preds = %land.lhs.true146.i
  %77 = ptrtoint ptr %pval.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %pval.i, align 4
  %call150.i = call i32 %76(i32 noundef %78) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150.i)
  %cmp151.i = icmp eq i32 %call150.i, 0
  br i1 %cmp151.i, label %do.end156.i, label %if.else159.i

do.end156.i:                                      ; preds = %if.then148.i
  call void @__sanitizer_cov_trace_pc() #9
  %79 = ptrtoint ptr %pval.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %pval.i, align 4
  %call158.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull %node, i32 noundef %80) #10
  br label %if.end168.i

if.else159.i:                                     ; preds = %if.then148.i
  call void @__sanitizer_cov_trace_pc() #9
  %initial_mode.i = getelementptr inbounds %struct.regulator_init_data, ptr %call.i, i32 0, i32 1, i32 21
  %81 = ptrtoint ptr %initial_mode.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %call150.i, ptr %initial_mode.i, align 4
  br label %if.end168.i

do.end164.i:                                      ; preds = %land.lhs.true146.i.do.end164.i_crit_edge, %if.then144.i.do.end164.i_crit_edge
  %82 = ptrtoint ptr %pval.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %pval.i, align 4
  %call166.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull %node, i32 noundef %83) #10
  br label %if.end168.i

if.end168.i:                                      ; preds = %do.end164.i, %if.else159.i, %do.end156.i, %if.end141.i.if.end168.i_crit_edge
  %call169.i = call i32 @of_property_count_elems_of_size(ptr noundef nonnull %node, ptr noundef nonnull @.str.55, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call169.i)
  %cmp170.i = icmp sgt i32 %call169.i, 0
  br i1 %cmp170.i, label %if.then172.i, label %if.end168.i.if.end215.i_crit_edge

if.end168.i.if.end215.i_crit_edge:                ; preds = %if.end168.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end215.i

if.then172.i:                                     ; preds = %if.end168.i
  %tobool173.not.i = icmp eq ptr %desc, null
  br i1 %tobool173.not.i, label %if.then172.i.do.end211.i_crit_edge, label %land.lhs.true174.i

if.then172.i.do.end211.i_crit_edge:               ; preds = %if.then172.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end211.i

land.lhs.true174.i:                               ; preds = %if.then172.i
  %of_map_mode175.i = getelementptr inbounds %struct.regulator_desc, ptr %desc, i32 0, i32 60
  %84 = ptrtoint ptr %of_map_mode175.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %of_map_mode175.i, align 4
  %tobool176.not.i = icmp eq ptr %85, null
  br i1 %tobool176.not.i, label %land.lhs.true174.i.do.end211.i_crit_edge, label %for.body.lr.ph.i

land.lhs.true174.i.do.end211.i_crit_edge:         ; preds = %land.lhs.true174.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end211.i

for.body.lr.ph.i:                                 ; preds = %land.lhs.true174.i
  %valid_modes_mask.i = getelementptr inbounds %struct.regulator_init_data, ptr %call.i, i32 0, i32 1, i32 10
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0509.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %call180.i = call i32 @of_property_read_u32_index(ptr noundef %node, ptr noundef nonnull @.str.55, i32 noundef %i.0509.i, ptr noundef nonnull %pval.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call180.i)
  %tobool181.not.i = icmp eq i32 %call180.i, 0
  br i1 %tobool181.not.i, label %if.end188.i, label %do.end185.i

do.end185.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call187.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %node, i32 noundef %i.0509.i, i32 noundef %call180.i) #10
  br label %for.end.i

if.end188.i:                                      ; preds = %for.body.i
  %86 = ptrtoint ptr %of_map_mode175.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %of_map_mode175.i, align 4
  %88 = ptrtoint ptr %pval.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %pval.i, align 4
  %call190.i = call i32 %87(i32 noundef %89) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call190.i)
  %cmp191.i = icmp eq i32 %call190.i, 0
  br i1 %cmp191.i, label %do.end196.i, label %if.else199.i

do.end196.i:                                      ; preds = %if.end188.i
  call void @__sanitizer_cov_trace_pc() #9
  %90 = ptrtoint ptr %pval.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %pval.i, align 4
  %call198.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %node, i32 noundef %91) #10
  br label %for.inc.i

if.else199.i:                                     ; preds = %if.end188.i
  call void @__sanitizer_cov_trace_pc() #9
  %92 = ptrtoint ptr %valid_modes_mask.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %valid_modes_mask.i, align 4
  %or200.i = or i32 %93, %call190.i
  store i32 %or200.i, ptr %valid_modes_mask.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else199.i, %do.end196.i
  %inc.i = add nuw nsw i32 %i.0509.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call169.i
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %do.end185.i
  %94 = ptrtoint ptr %valid_modes_mask.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %valid_modes_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool203.not.i = icmp eq i32 %95, 0
  br i1 %tobool203.not.i, label %for.end.i.if.end215.i_crit_edge, label %if.then204.i

for.end.i.if.end215.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end215.i

if.then204.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %valid_ops_mask205.i = getelementptr inbounds %struct.regulator_init_data, ptr %call.i, i32 0, i32 1, i32 11
  %96 = ptrtoint ptr %valid_ops_mask205.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %valid_ops_mask205.i, align 4
  %or206.i = or i32 %97, 4
  store i32 %or206.i, ptr %valid_ops_mask205.i, align 4
  br label %if.end215.i

do.end211.i:                                      ; preds = %land.lhs.true174.i.do.end211.i_crit_edge, %if.then172.i.do.end211.i_crit_edge
  %call213.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull %node) #10
  br label %if.end215.i

if.end215.i:                                      ; preds = %do.end211.i, %if.then204.i, %for.end.i.if.end215.i_crit_edge, %if.end168.i.if.end215.i_crit_edge
  %call.i.i489.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.65, ptr noundef nonnull %pval.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i489.i)
  %tobool217.not.i = icmp sgt i32 %call.i.i489.i, -1
  br i1 %tobool217.not.i, label %if.then218.i, label %if.end215.i.if.end219.i_crit_edge

if.end215.i.if.end219.i_crit_edge:                ; preds = %if.end215.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end219.i

if.then218.i:                                     ; preds = %if.end215.i
  call void @__sanitizer_cov_trace_pc() #9
  %98 = ptrtoint ptr %pval.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %pval.i, align 4
  %system_load.i = getelementptr inbounds %struct.regulator_init_data, ptr %call.i, i32 0, i32 1, i32 7
  %100 = ptrtoint ptr %system_load.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %system_load.i, align 4
  br label %if.end219.i

if.end219.i:                                      ; preds = %if.then218.i, %if.end215.i.if.end219.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i10)
  %tobool220.not.i = icmp slt i32 %call.i10, 1
  br i1 %tobool220.not.i, label %if.end219.i.if.end229.i_crit_edge, label %if.then221.i

if.end219.i.if.end229.i_crit_edge:                ; preds = %if.end219.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end229.i

if.then221.i:                                     ; preds = %if.end219.i
  %mul.i = shl i32 %1, 2
  %call.i490.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %mul.i, i32 noundef 3520) #7
  %max_spread.i = getelementptr inbounds %struct.regulator_init_data, ptr %call.i, i32 0, i32 1, i32 8
  %101 = ptrtoint ptr %max_spread.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %call.i490.i, ptr %max_spread.i, align 4
  %tobool224.not.i = icmp eq ptr %call.i490.i, null
  br i1 %tobool224.not.i, label %of_get_regulation_constraints.exit, label %if.end226.i

if.end226.i:                                      ; preds = %if.then221.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i491.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.20, ptr noundef nonnull %call.i490.i, i32 noundef %1, i32 noundef 0) #7
  br label %if.end229.i

if.end229.i:                                      ; preds = %if.end226.i, %if.end219.i.if.end229.i_crit_edge
  %call.i.i492.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.66, ptr noundef nonnull %pval.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i492.i)
  %tobool231.not.i = icmp sgt i32 %call.i.i492.i, -1
  br i1 %tobool231.not.i, label %if.then232.i, label %if.end229.i.if.end233.i_crit_edge

if.end229.i.if.end233.i_crit_edge:                ; preds = %if.end229.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end233.i

if.then232.i:                                     ; preds = %if.end229.i
  call void @__sanitizer_cov_trace_pc() #9
  %102 = ptrtoint ptr %pval.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %pval.i, align 4
  %max_uV_step.i = getelementptr inbounds %struct.regulator_init_data, ptr %call.i, i32 0, i32 1, i32 9
  %104 = ptrtoint ptr %max_uV_step.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %max_uV_step.i, align 4
  br label %if.end233.i

if.end233.i:                                      ; preds = %if.then232.i, %if.end229.i.if.end233.i_crit_edge
  %call.i493.i = call ptr @of_find_property(ptr noundef %node, ptr noundef nonnull @.str.67, ptr noundef null) #7
  %tobool.i494.not.i = icmp eq ptr %call.i493.i, null
  %105 = ptrtoint ptr %boot_on.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %bf.load236.i = load i16, ptr %boot_on.i, align 4
  %bf.shl238.i = select i1 %tobool.i494.not.i, i16 0, i16 512
  %bf.clear239.i = and i16 %bf.load236.i, -513
  %bf.set240.i = or i16 %bf.clear239.i, %bf.shl238.i
  store i16 %bf.set240.i, ptr %boot_on.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pval.i.i) #7
  %106 = ptrtoint ptr %pval.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 -1, ptr %pval.i.i, align 4, !annotation !182
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %limits.i.i) #7
  %107 = getelementptr inbounds [4 x ptr], ptr %limits.i.i, i32 0, i32 1
  %108 = getelementptr inbounds [4 x ptr], ptr %limits.i.i, i32 0, i32 2
  %109 = getelementptr inbounds [4 x ptr], ptr %limits.i.i, i32 0, i32 3
  %over_curr_limits.i.i = getelementptr inbounds %struct.regulator_init_data, ptr %call.i, i32 0, i32 1, i32 16
  %110 = ptrtoint ptr %limits.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %over_curr_limits.i.i, ptr %limits.i.i, align 4
  %over_voltage_limits.i.i = getelementptr inbounds %struct.regulator_init_data, ptr %call.i, i32 0, i32 1, i32 17
  %111 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %over_voltage_limits.i.i, ptr %107, align 4
  %temp_limits.i.i = getelementptr inbounds %struct.regulator_init_data, ptr %call.i, i32 0, i32 1, i32 19
  %112 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %temp_limits.i.i, ptr %108, align 4
  %under_voltage_limits.i.i = getelementptr inbounds %struct.regulator_init_data, ptr %call.i, i32 0, i32 1, i32 18
  %113 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %under_voltage_limits.i.i, ptr %109, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %set.i.i) #7
  %114 = ptrtoint ptr %set.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %set.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.2.i.i.for.body.i.i_crit_edge, %if.end233.i
  %i.075.i.i = phi i32 [ 0, %if.end233.i ], [ %inc24.i.i, %if.end.2.i.i.for.body.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %prop.i.i) #7
  %115 = call ptr @memset(ptr %prop.i.i, i32 255, i32 255)
  %arrayidx.i.i = getelementptr [4 x ptr], ptr %limits.i.i, i32 0, i32 %i.075.i.i
  %116 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arrayidx.i.i, align 4
  %err.i.i = getelementptr inbounds %struct.notification_limit, ptr %117, i32 0, i32 1
  %warn.i.i = getelementptr inbounds %struct.notification_limit, ptr %117, i32 0, i32 2
  %arrayidx11.i.i = getelementptr [4 x ptr], ptr @of_get_regulator_prot_limits.props, i32 0, i32 %i.075.i.i
  %118 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx11.i.i, align 4
  %arrayidx18.i.i = getelementptr [4 x i8], ptr %set.i.i, i32 0, i32 %i.075.i.i
  %call.i495.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %prop.i.i, i32 noundef 255, ptr noundef %119, ptr noundef nonnull @.str.83) #7
  %call.i.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull %prop.i.i, ptr noundef nonnull %pval.i.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i.i)
  %tobool.not.i.i = icmp sgt i32 %call.i.i.i.i, -1
  br i1 %tobool.not.i.i, label %if.then.i.i, label %for.body.i.i.if.end.i.i_crit_edge

for.body.i.i.if.end.i.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  %120 = ptrtoint ptr %pval.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %pval.i.i, align 4
  %122 = zext i32 %121 to i64
  call void @__sanitizer_cov_trace_switch(i64 %122, ptr @__sancov_gen_cov_switch_values)
  switch i32 %121, label %if.else.i.i.i [
    i32 0, label %if.else2.i.i.i
    i32 1, label %if.then.i.i.fill_limit.exit.i.i_crit_edge
  ]

if.then.i.i.fill_limit.exit.i.i_crit_edge:        ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fill_limit.exit.i.i

if.else.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fill_limit.exit.i.i

if.else2.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fill_limit.exit.i.i

fill_limit.exit.i.i:                              ; preds = %if.else2.i.i.i, %if.else.i.i.i, %if.then.i.i.fill_limit.exit.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ %121, %if.else.i.i.i ], [ -1, %if.else2.i.i.i ], [ -2, %if.then.i.i.fill_limit.exit.i.i_crit_edge ]
  %123 = ptrtoint ptr %117 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %.sink.i.i.i, ptr %117, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %fill_limit.exit.i.i, %for.body.i.i.if.end.i.i_crit_edge
  %call.i.i.lobit.i.i = lshr i32 %call.i.i.i.i, 31
  %124 = trunc i32 %call.i.i.lobit.i.i to i8
  %.not.i.i = xor i8 %124, 1
  %125 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx18.i.i, align 1, !range !183
  %or.i.i = or i8 %126, %.not.i.i
  %call.1.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %prop.i.i, i32 noundef 255, ptr noundef %119, ptr noundef nonnull @.str.84) #7
  %call.i.i.1.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull %prop.i.i, ptr noundef nonnull %pval.i.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.1.i.i)
  %tobool.not.1.i.i = icmp sgt i32 %call.i.i.1.i.i, -1
  br i1 %tobool.not.1.i.i, label %if.then.1.i.i, label %if.end.i.i.if.end.1.i.i_crit_edge

if.end.i.i.if.end.1.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.1.i.i

if.then.1.i.i:                                    ; preds = %if.end.i.i
  %127 = ptrtoint ptr %pval.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %pval.i.i, align 4
  %129 = zext i32 %128 to i64
  call void @__sanitizer_cov_trace_switch(i64 %129, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %128, label %if.else.i.1.i.i [
    i32 0, label %if.else2.i.1.i.i
    i32 1, label %if.then.1.i.i.fill_limit.exit.1.i.i_crit_edge
  ]

if.then.1.i.i.fill_limit.exit.1.i.i_crit_edge:    ; preds = %if.then.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fill_limit.exit.1.i.i

if.else2.i.1.i.i:                                 ; preds = %if.then.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fill_limit.exit.1.i.i

if.else.i.1.i.i:                                  ; preds = %if.then.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fill_limit.exit.1.i.i

fill_limit.exit.1.i.i:                            ; preds = %if.else.i.1.i.i, %if.else2.i.1.i.i, %if.then.1.i.i.fill_limit.exit.1.i.i_crit_edge
  %.sink.i.1.i.i = phi i32 [ %128, %if.else.i.1.i.i ], [ -1, %if.else2.i.1.i.i ], [ -2, %if.then.1.i.i.fill_limit.exit.1.i.i_crit_edge ]
  %130 = ptrtoint ptr %err.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %.sink.i.1.i.i, ptr %err.i.i, align 4
  br label %if.end.1.i.i

if.end.1.i.i:                                     ; preds = %fill_limit.exit.1.i.i, %if.end.i.i.if.end.1.i.i_crit_edge
  %call.i.i.lobit.1.i.i = lshr i32 %call.i.i.1.i.i, 31
  %131 = trunc i32 %call.i.i.lobit.1.i.i to i8
  %.not.1.i.i = xor i8 %131, 1
  %or.1.i.i = or i8 %or.i.i, %.not.1.i.i
  %call.2.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %prop.i.i, i32 noundef 255, ptr noundef %119, ptr noundef nonnull @.str.85) #7
  %call.i.i.2.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull %prop.i.i, ptr noundef nonnull %pval.i.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.2.i.i)
  %tobool.not.2.i.i = icmp sgt i32 %call.i.i.2.i.i, -1
  br i1 %tobool.not.2.i.i, label %if.then.2.i.i, label %if.end.1.i.i.if.end.2.i.i_crit_edge

if.end.1.i.i.if.end.2.i.i_crit_edge:              ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.2.i.i

if.then.2.i.i:                                    ; preds = %if.end.1.i.i
  %132 = ptrtoint ptr %pval.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %pval.i.i, align 4
  %134 = zext i32 %133 to i64
  call void @__sanitizer_cov_trace_switch(i64 %134, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %133, label %if.else.i.2.i.i [
    i32 0, label %if.else2.i.2.i.i
    i32 1, label %if.then.2.i.i.fill_limit.exit.2.i.i_crit_edge
  ]

if.then.2.i.i.fill_limit.exit.2.i.i_crit_edge:    ; preds = %if.then.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fill_limit.exit.2.i.i

if.else2.i.2.i.i:                                 ; preds = %if.then.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fill_limit.exit.2.i.i

if.else.i.2.i.i:                                  ; preds = %if.then.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fill_limit.exit.2.i.i

fill_limit.exit.2.i.i:                            ; preds = %if.else.i.2.i.i, %if.else2.i.2.i.i, %if.then.2.i.i.fill_limit.exit.2.i.i_crit_edge
  %.sink.i.2.i.i = phi i32 [ %133, %if.else.i.2.i.i ], [ -1, %if.else2.i.2.i.i ], [ -2, %if.then.2.i.i.fill_limit.exit.2.i.i_crit_edge ]
  %135 = ptrtoint ptr %warn.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %.sink.i.2.i.i, ptr %warn.i.i, align 4
  br label %if.end.2.i.i

if.end.2.i.i:                                     ; preds = %fill_limit.exit.2.i.i, %if.end.1.i.i.if.end.2.i.i_crit_edge
  %call.i.i.lobit.2.i.i = lshr i32 %call.i.i.2.i.i, 31
  %136 = trunc i32 %call.i.i.lobit.2.i.i to i8
  %.not.2.i.i = xor i8 %136, 1
  %or.2.i.i = or i8 %or.1.i.i, %.not.2.i.i
  %137 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %or.2.i.i, ptr %arrayidx18.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %prop.i.i) #7
  %inc24.i.i = add nuw nsw i32 %i.075.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc24.i.i, 4
  br i1 %exitcond.not.i.i, label %of_get_regulator_prot_limits.exit.i, label %if.end.2.i.i.for.body.i.i_crit_edge

if.end.2.i.i.for.body.i.i_crit_edge:              ; preds = %if.end.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

of_get_regulator_prot_limits.exit.i:              ; preds = %if.end.2.i.i
  %138 = ptrtoint ptr %set.i.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %set.i.i, align 4, !range !183
  %140 = zext i8 %139 to i16
  %141 = ptrtoint ptr %boot_on.i to i32
  call void @__asan_load2_noabort(i32 %141)
  %bf.load.i.i = load i16, ptr %boot_on.i, align 4
  %bf.shl.i.i = shl nuw nsw i16 %140, 8
  %bf.clear.i.i = and i16 %bf.load.i.i, -481
  %bf.set.i.i = or i16 %bf.clear.i.i, %bf.shl.i.i
  %arrayidx29.i.i = getelementptr inbounds [4 x i8], ptr %set.i.i, i32 0, i32 1
  %142 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %arrayidx29.i.i, align 1, !range !183
  %144 = shl nuw i8 %143, 7
  %bf.shl34.i.i = zext i8 %144 to i16
  %bf.set36.i.i = or i16 %bf.set.i.i, %bf.shl34.i.i
  %arrayidx38.i.i = getelementptr inbounds [4 x i8], ptr %set.i.i, i32 0, i32 2
  %145 = ptrtoint ptr %arrayidx38.i.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %arrayidx38.i.i, align 2, !range !183
  %147 = shl nuw nsw i8 %146, 5
  %bf.shl43.i.i = zext i8 %147 to i16
  %bf.set45.i.i = or i16 %bf.set36.i.i, %bf.shl43.i.i
  %arrayidx47.i.i = getelementptr inbounds [4 x i8], ptr %set.i.i, i32 0, i32 3
  %148 = ptrtoint ptr %arrayidx47.i.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %arrayidx47.i.i, align 1, !range !183
  %150 = shl nuw nsw i8 %149, 6
  %bf.shl52.i.i = zext i8 %150 to i16
  %bf.set54.i.i = or i16 %bf.set45.i.i, %bf.shl52.i.i
  store i16 %bf.set54.i.i, ptr %boot_on.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %set.i.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %limits.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pval.i.i) #7
  %state_standby.i = getelementptr inbounds %struct.regulator_init_data, ptr %call.i, i32 0, i32 1, i32 15
  %state_disk.i = getelementptr inbounds %struct.regulator_init_data, ptr %call.i, i32 0, i32 1, i32 13
  %state_mem.i = getelementptr inbounds %struct.regulator_init_data, ptr %call.i, i32 0, i32 1, i32 14
  %tobool257.not.i = icmp eq ptr %desc, null
  %of_map_mode259.i = getelementptr inbounds %struct.regulator_desc, ptr %desc, i32 0, i32 60
  %initial_state.i = getelementptr inbounds %struct.regulator_init_data, ptr %call.i, i32 0, i32 1, i32 20
  br label %for.body245.i

for.body245.i:                                    ; preds = %for.inc315.i.for.body245.i_crit_edge, %of_get_regulator_prot_limits.exit.i
  %i.1510.i = phi i32 [ 0, %of_get_regulator_prot_limits.exit.i ], [ %inc316.i, %for.inc315.i.for.body245.i_crit_edge ]
  %151 = zext i32 %i.1510.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %151, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %i.1510.i, label %for.body245.i.for.inc315.i_crit_edge [
    i32 3, label %for.body245.i.sw.epilog.i_crit_edge
    i32 4, label %sw.bb246.i
    i32 2, label %sw.bb247.i
  ]

for.body245.i.sw.epilog.i_crit_edge:              ; preds = %for.body245.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

for.body245.i.for.inc315.i_crit_edge:             ; preds = %for.body245.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc315.i

sw.bb246.i:                                       ; preds = %for.body245.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb247.i:                                       ; preds = %for.body245.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb247.i, %sw.bb246.i, %for.body245.i.sw.epilog.i_crit_edge
  %suspend_state.0.i = phi ptr [ %state_standby.i, %sw.bb247.i ], [ %state_disk.i, %sw.bb246.i ], [ %state_mem.i, %for.body245.i.sw.epilog.i_crit_edge ]
  %arrayidx.i = getelementptr [5 x ptr], ptr @regulator_states, i32 0, i32 %i.1510.i
  %152 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %arrayidx.i, align 4
  %call249.i = call ptr @of_get_child_by_name(ptr noundef %node, ptr noundef %153) #7
  %tobool250.not.i = icmp eq ptr %call249.i, null
  %tobool251.not.i = icmp eq ptr %suspend_state.0.i, null
  %or.cond.i = select i1 %tobool250.not.i, i1 true, i1 %tobool251.not.i
  br i1 %or.cond.i, label %sw.epilog.i.for.inc315.i_crit_edge, label %if.end253.i

sw.epilog.i.for.inc315.i_crit_edge:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc315.i

if.end253.i:                                      ; preds = %sw.epilog.i
  %call.i.i496.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call249.i, ptr noundef nonnull @.str.68, ptr noundef nonnull %pval.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i496.i)
  %tobool255.not.i = icmp sgt i32 %call.i.i496.i, -1
  br i1 %tobool255.not.i, label %if.then256.i, label %if.end253.i.if.end282.i_crit_edge

if.end253.i.if.end282.i_crit_edge:                ; preds = %if.end253.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end282.i

if.then256.i:                                     ; preds = %if.end253.i
  br i1 %tobool257.not.i, label %if.then256.i.do.end278.i_crit_edge, label %land.lhs.true258.i

if.then256.i.do.end278.i_crit_edge:               ; preds = %if.then256.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end278.i

land.lhs.true258.i:                               ; preds = %if.then256.i
  %154 = ptrtoint ptr %of_map_mode259.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %of_map_mode259.i, align 4
  %tobool260.not.i = icmp eq ptr %155, null
  br i1 %tobool260.not.i, label %land.lhs.true258.i.do.end278.i_crit_edge, label %if.then261.i

land.lhs.true258.i.do.end278.i_crit_edge:         ; preds = %land.lhs.true258.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end278.i

if.then261.i:                                     ; preds = %land.lhs.true258.i
  %156 = ptrtoint ptr %pval.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %pval.i, align 4
  %call263.i = call i32 %155(i32 noundef %157) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call263.i)
  %cmp264.i = icmp eq i32 %call263.i, 0
  br i1 %cmp264.i, label %do.end269.i, label %if.else272.i

do.end269.i:                                      ; preds = %if.then261.i
  call void @__sanitizer_cov_trace_pc() #9
  %158 = ptrtoint ptr %pval.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %pval.i, align 4
  %call271.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %node, i32 noundef %159) #10
  br label %if.end282.i

if.else272.i:                                     ; preds = %if.then261.i
  call void @__sanitizer_cov_trace_pc() #9
  %mode273.i = getelementptr inbounds %struct.regulator_state, ptr %suspend_state.0.i, i32 0, i32 3
  %160 = ptrtoint ptr %mode273.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %call263.i, ptr %mode273.i, align 4
  br label %if.end282.i

do.end278.i:                                      ; preds = %land.lhs.true258.i.do.end278.i_crit_edge, %if.then256.i.do.end278.i_crit_edge
  %161 = ptrtoint ptr %pval.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %pval.i, align 4
  %call280.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %node, i32 noundef %162) #10
  br label %if.end282.i

if.end282.i:                                      ; preds = %do.end278.i, %if.else272.i, %do.end269.i, %if.end253.i.if.end282.i_crit_edge
  %call.i497.i = call ptr @of_find_property(ptr noundef nonnull %call249.i, ptr noundef nonnull @.str.73, ptr noundef null) #7
  %tobool.i498.not.i = icmp eq ptr %call.i497.i, null
  br i1 %tobool.i498.not.i, label %if.else285.i, label %if.end282.i.if.end290.sink.split.i_crit_edge

if.end282.i.if.end290.sink.split.i_crit_edge:     ; preds = %if.end282.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end290.sink.split.i

if.else285.i:                                     ; preds = %if.end282.i
  %call.i499.i = call ptr @of_find_property(ptr noundef nonnull %call249.i, ptr noundef nonnull @.str.74, ptr noundef null) #7
  %tobool.i500.not.i = icmp eq ptr %call.i499.i, null
  br i1 %tobool.i500.not.i, label %if.else285.i.if.end290.i_crit_edge, label %if.else285.i.if.end290.sink.split.i_crit_edge

if.else285.i.if.end290.sink.split.i_crit_edge:    ; preds = %if.else285.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end290.sink.split.i

if.else285.i.if.end290.i_crit_edge:               ; preds = %if.else285.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end290.i

if.end290.sink.split.i:                           ; preds = %if.else285.i.if.end290.sink.split.i_crit_edge, %if.end282.i.if.end290.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 2, %if.end282.i.if.end290.sink.split.i_crit_edge ], [ 1, %if.else285.i.if.end290.sink.split.i_crit_edge ]
  %enabled288.i = getelementptr inbounds %struct.regulator_state, ptr %suspend_state.0.i, i32 0, i32 4
  %163 = ptrtoint ptr %enabled288.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %.sink.i, ptr %enabled288.i, align 4
  br label %if.end290.i

if.end290.i:                                      ; preds = %if.end290.sink.split.i, %if.else285.i.if.end290.i_crit_edge
  %call.i.i501.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call249.i, ptr noundef nonnull @.str.75, ptr noundef nonnull %pval.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i501.i)
  %tobool292.not.i = icmp sgt i32 %call.i.i501.i, -1
  br i1 %tobool292.not.i, label %if.then293.i, label %if.end290.i.if.end295.i_crit_edge

if.end290.i.if.end295.i_crit_edge:                ; preds = %if.end290.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end295.i

if.then293.i:                                     ; preds = %if.end290.i
  call void @__sanitizer_cov_trace_pc() #9
  %164 = ptrtoint ptr %pval.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %pval.i, align 4
  %min_uV294.i = getelementptr inbounds %struct.regulator_state, ptr %suspend_state.0.i, i32 0, i32 1
  %166 = ptrtoint ptr %min_uV294.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %165, ptr %min_uV294.i, align 4
  br label %if.end295.i

if.end295.i:                                      ; preds = %if.then293.i, %if.end290.i.if.end295.i_crit_edge
  %call.i.i502.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call249.i, ptr noundef nonnull @.str.76, ptr noundef nonnull %pval.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i502.i)
  %tobool297.not.i = icmp sgt i32 %call.i.i502.i, -1
  br i1 %tobool297.not.i, label %if.then298.i, label %if.end295.i.if.end300.i_crit_edge

if.end295.i.if.end300.i_crit_edge:                ; preds = %if.end295.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end300.i

if.then298.i:                                     ; preds = %if.end295.i
  call void @__sanitizer_cov_trace_pc() #9
  %167 = ptrtoint ptr %pval.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %pval.i, align 4
  %max_uV299.i = getelementptr inbounds %struct.regulator_state, ptr %suspend_state.0.i, i32 0, i32 2
  %169 = ptrtoint ptr %max_uV299.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %168, ptr %max_uV299.i, align 4
  br label %if.end300.i

if.end300.i:                                      ; preds = %if.then298.i, %if.end295.i.if.end300.i_crit_edge
  %call.i.i503.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call249.i, ptr noundef nonnull @.str.77, ptr noundef nonnull %pval.i, i32 noundef 1, i32 noundef 0) #7
  %min_uV305.i = getelementptr inbounds %struct.regulator_state, ptr %suspend_state.0.i, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i503.i)
  %tobool302.not506.i = icmp slt i32 %call.i.i503.i, 0
  %storemerge.in.i = select i1 %tobool302.not506.i, ptr %min_uV305.i, ptr %pval.i
  %170 = ptrtoint ptr %storemerge.in.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %storemerge.i = load i32, ptr %storemerge.in.i, align 4
  %171 = ptrtoint ptr %suspend_state.0.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %storemerge.i, ptr %suspend_state.0.i, align 4
  %call.i504.i = call ptr @of_find_property(ptr noundef nonnull %call249.i, ptr noundef nonnull @.str.78, ptr noundef null) #7
  %tobool.i505.not.i = icmp eq ptr %call.i504.i, null
  br i1 %tobool.i505.not.i, label %if.end300.i.if.end310.i_crit_edge, label %if.then309.i

if.end300.i.if.end310.i_crit_edge:                ; preds = %if.end300.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end310.i

if.then309.i:                                     ; preds = %if.end300.i
  call void @__sanitizer_cov_trace_pc() #9
  %changeable.i = getelementptr inbounds %struct.regulator_state, ptr %suspend_state.0.i, i32 0, i32 5
  %172 = ptrtoint ptr %changeable.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 1, ptr %changeable.i, align 4
  br label %if.end310.i

if.end310.i:                                      ; preds = %if.then309.i, %if.end300.i.if.end310.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.1510.i)
  %cmp311.i = icmp eq i32 %i.1510.i, 3
  br i1 %cmp311.i, label %if.then313.i, label %if.end310.i.if.end314.i_crit_edge

if.end310.i.if.end314.i_crit_edge:                ; preds = %if.end310.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end314.i

if.then313.i:                                     ; preds = %if.end310.i
  call void @__sanitizer_cov_trace_pc() #9
  %173 = ptrtoint ptr %initial_state.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 3, ptr %initial_state.i, align 4
  br label %if.end314.i

if.end314.i:                                      ; preds = %if.then313.i, %if.end310.i.if.end314.i_crit_edge
  call void @of_node_put(ptr noundef nonnull %call249.i) #7
  br label %for.inc315.i

for.inc315.i:                                     ; preds = %if.end314.i, %sw.epilog.i.for.inc315.i_crit_edge, %for.body245.i.for.inc315.i_crit_edge
  %inc316.i = add nuw nsw i32 %i.1510.i, 1
  %exitcond513.not.i = icmp eq i32 %inc316.i, 5
  br i1 %exitcond513.not.i, label %if.end7, label %for.inc315.i.for.body245.i_crit_edge

for.inc315.i.for.body245.i_crit_edge:             ; preds = %for.inc315.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body245.i

of_get_regulation_constraints.exit:               ; preds = %if.then221.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pval.i) #7
  br label %cleanup

if.end7:                                          ; preds = %for.inc315.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pval.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %of_get_regulation_constraints.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i, %if.end7 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %of_get_regulation_constraints.exit ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @of_regulator_match(ptr noundef %dev, ptr noundef %node, ptr noundef %matches, i32 noundef %num_matches) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  %tobool1.not = icmp eq ptr %node, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup45_crit_edge, label %if.end

entry.cleanup45_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup45

if.end:                                           ; preds = %entry
  %call = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_of_regulator_put_matches, i32 noundef 8, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str) #7
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.end.cleanup45_crit_edge, label %if.end4

if.end.cleanup45_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup45

if.end4:                                          ; preds = %if.end
  %0 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %matches, ptr %call, align 4
  %num_matches6 = getelementptr inbounds %struct.devm_of_regulator_matches, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %num_matches6 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %num_matches, ptr %num_matches6, align 4
  tail call void @devres_add(ptr noundef nonnull %dev, ptr noundef nonnull %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_matches)
  %cmp91.not = icmp eq i32 %num_matches, 0
  br i1 %cmp91.not, label %if.end4.for.end_crit_edge, label %if.end4.for.body_crit_edge

if.end4.for.body_crit_edge:                       ; preds = %if.end4
  br label %for.body

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end4.for.body_crit_edge
  %i.092 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end4.for.body_crit_edge ]
  %init_data = getelementptr %struct.of_regulator_match, ptr %matches, i32 %i.092, i32 2
  %2 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %init_data, align 4
  %of_node = getelementptr %struct.of_regulator_match, ptr %matches, i32 %i.092, i32 3
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %of_node, align 4
  %inc = add nuw i32 %i.092, 1
  %exitcond.not = icmp eq i32 %inc, %num_matches
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end4.for.end_crit_edge
  %call7 = tail call ptr @of_get_next_child(ptr noundef nonnull %node, ptr noundef null) #7
  %cmp9.not96 = icmp eq ptr %call7, null
  br i1 %cmp9.not96, label %for.end.cleanup45_crit_edge, label %for.end.for.body10_crit_edge

for.end.for.body10_crit_edge:                     ; preds = %for.end
  br label %for.body10

for.end.cleanup45_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup45

for.body10:                                       ; preds = %for.inc42.for.body10_crit_edge, %for.end.for.body10_crit_edge
  %child.098 = phi ptr [ %call43, %for.inc42.for.body10_crit_edge ], [ %call7, %for.end.for.body10_crit_edge ]
  %count.097 = phi i32 [ %count.3, %for.inc42.for.body10_crit_edge ], [ 0, %for.end.for.body10_crit_edge ]
  %call11 = tail call ptr @of_get_property(ptr noundef nonnull %child.098, ptr noundef nonnull @.str.1, ptr noundef null) #7
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.then13, label %for.body10.if.end15_crit_edge

for.body10.if.end15_crit_edge:                    ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then13:                                        ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %child.098 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %child.098, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %for.body10.if.end15_crit_edge
  %name.0 = phi ptr [ %call11, %for.body10.if.end15_crit_edge ], [ %5, %if.then13 ]
  br i1 %cmp91.not, label %if.end15.for.inc42_crit_edge, label %if.end15.for.body18_crit_edge

if.end15.for.body18_crit_edge:                    ; preds = %if.end15
  br label %for.body18

if.end15.for.inc42_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc42

for.body18:                                       ; preds = %for.inc39.for.body18_crit_edge, %if.end15.for.body18_crit_edge
  %i.194 = phi i32 [ %inc40, %for.inc39.for.body18_crit_edge ], [ 0, %if.end15.for.body18_crit_edge ]
  %of_node21 = getelementptr %struct.of_regulator_match, ptr %matches, i32 %i.194, i32 3
  %6 = ptrtoint ptr %of_node21 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node21, align 4
  %tobool22.not = icmp eq ptr %7, null
  br i1 %tobool22.not, label %if.end24, label %for.body18.for.inc39_crit_edge

for.body18.for.inc39_crit_edge:                   ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc39

if.end24:                                         ; preds = %for.body18
  %arrayidx20 = getelementptr %struct.of_regulator_match, ptr %matches, i32 %i.194
  %8 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx20, align 4
  %call26 = tail call i32 @strcmp(ptr noundef %9, ptr noundef %name.0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end24.for.inc39_crit_edge

if.end24.for.inc39_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc39

if.end29:                                         ; preds = %if.end24
  %desc = getelementptr %struct.of_regulator_match, ptr %matches, i32 %i.194, i32 4
  %10 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %desc, align 4
  %call30 = tail call ptr @of_get_regulator_init_data(ptr noundef nonnull %dev, ptr noundef nonnull %child.098, ptr noundef %11)
  %init_data31 = getelementptr %struct.of_regulator_match, ptr %matches, i32 %i.194, i32 2
  %12 = ptrtoint ptr %init_data31 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call30, ptr %init_data31, align 4
  %tobool33.not = icmp eq ptr %call30, null
  br i1 %tobool33.not, label %cleanup.thread85, label %cleanup

cleanup.thread85:                                 ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %dev, ptr noundef nonnull @.str.2, ptr noundef nonnull %child.098) #10
  tail call void @of_node_put(ptr noundef nonnull %child.098) #7
  br label %cleanup45

cleanup:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %call36 = tail call ptr @of_node_get(ptr noundef nonnull %child.098) #7
  %13 = ptrtoint ptr %of_node21 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call36, ptr %of_node21, align 4
  %inc38 = add i32 %count.097, 1
  br label %for.inc42

for.inc39:                                        ; preds = %if.end24.for.inc39_crit_edge, %for.body18.for.inc39_crit_edge
  %inc40 = add nuw i32 %i.194, 1
  %exitcond104.not = icmp eq i32 %inc40, %num_matches
  br i1 %exitcond104.not, label %for.inc39.for.inc42_crit_edge, label %for.inc39.for.body18_crit_edge

for.inc39.for.body18_crit_edge:                   ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body18

for.inc39.for.inc42_crit_edge:                    ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc42

for.inc42:                                        ; preds = %for.inc39.for.inc42_crit_edge, %cleanup, %if.end15.for.inc42_crit_edge
  %count.3 = phi i32 [ %inc38, %cleanup ], [ %count.097, %if.end15.for.inc42_crit_edge ], [ %count.097, %for.inc39.for.inc42_crit_edge ]
  %call43 = tail call ptr @of_get_next_child(ptr noundef nonnull %node, ptr noundef nonnull %child.098) #7
  %cmp9.not = icmp eq ptr %call43, null
  br i1 %cmp9.not, label %for.inc42.cleanup45_crit_edge, label %for.inc42.for.body10_crit_edge

for.inc42.for.body10_crit_edge:                   ; preds = %for.inc42
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body10

for.inc42.cleanup45_crit_edge:                    ; preds = %for.inc42
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup45

cleanup45:                                        ; preds = %for.inc42.cleanup45_crit_edge, %cleanup.thread85, %for.end.cleanup45_crit_edge, %if.end.cleanup45_crit_edge, %entry.cleanup45_crit_edge
  %retval.4 = phi i32 [ -22, %entry.cleanup45_crit_edge ], [ -12, %if.end.cleanup45_crit_edge ], [ -22, %cleanup.thread85 ], [ 0, %for.end.cleanup45_crit_edge ], [ %count.3, %for.inc42.cleanup45_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devm_of_regulator_put_matches(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %num_matches = getelementptr inbounds %struct.devm_of_regulator_matches, ptr %res, i32 0, i32 1
  %0 = ptrtoint ptr %num_matches to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_matches, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp4.not = icmp eq i32 %1, 0
  br i1 %cmp4.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.05 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %res, align 4
  %of_node = getelementptr %struct.of_regulator_match, ptr %3, i32 %i.05, i32 3
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 4
  tail call void @of_node_put(ptr noundef %5) #7
  %inc = add nuw i32 %i.05, 1
  %6 = ptrtoint ptr %num_matches to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_matches, align 4
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @regulator_of_get_init_data(ptr noundef %dev, ptr noundef %desc, ptr noundef %config, ptr nocapture noundef writeonly %node) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @regulator_of_get_init_node(ptr noundef %dev, ptr noundef %desc)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup19_crit_edge, label %if.end

entry.cleanup19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup19

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @of_get_regulator_init_data(ptr noundef %dev, ptr noundef nonnull %call, ptr noundef %desc)
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.error_crit_edge, label %if.end4

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end4:                                          ; preds = %if.end
  %of_parse_cb = getelementptr inbounds %struct.regulator_desc, ptr %desc, i32 0, i32 5
  %0 = ptrtoint ptr %of_parse_cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_parse_cb, align 4
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %if.end4.if.end18_crit_edge, label %if.then6

if.end4.if.end18_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then6:                                         ; preds = %if.end4
  %call8 = tail call i32 %1(ptr noundef nonnull %call, ptr noundef %desc, ptr noundef %config) #7
  %2 = zext i32 %call8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %call8, label %if.then6.error_crit_edge [
    i32 0, label %if.then6.if.end18_crit_edge
    i32 -517, label %cleanup.thread
  ]

if.then6.if.end18_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then6.error_crit_edge:                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

cleanup.thread:                                   ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @of_node_put(ptr noundef nonnull %call) #7
  br label %cleanup19

if.end18:                                         ; preds = %if.then6.if.end18_crit_edge, %if.end4.if.end18_crit_edge
  %3 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %node, align 4
  br label %cleanup19

error:                                            ; preds = %if.then6.error_crit_edge, %if.end.error_crit_edge
  %.str.9.sink = phi ptr [ @.str.2, %if.end.error_crit_edge ], [ @.str.9, %if.then6.error_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.9.sink, ptr noundef nonnull %call) #10
  tail call void @of_node_put(ptr noundef nonnull %call) #7
  br label %cleanup19

cleanup19:                                        ; preds = %error, %if.end18, %cleanup.thread, %entry.cleanup19_crit_edge
  %retval.1 = phi ptr [ null, %error ], [ %call1, %if.end18 ], [ null, %entry.cleanup19_crit_edge ], [ inttoptr (i32 -517 to ptr), %cleanup.thread ]
  ret ptr %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @regulator_of_get_init_node(ptr noundef %dev, ptr nocapture noundef readonly %desc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %of_match = getelementptr inbounds %struct.regulator_desc, ptr %desc, i32 0, i32 2
  %2 = ptrtoint ptr %of_match to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_match, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %regulators_node = getelementptr inbounds %struct.regulator_desc, ptr %desc, i32 0, i32 4
  %4 = ptrtoint ptr %regulators_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regulators_node, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call ptr @of_get_child_by_name(ptr noundef nonnull %1, ptr noundef nonnull %5) #7
  br label %if.end14

if.else:                                          ; preds = %if.end
  %call7 = tail call ptr @of_node_get(ptr noundef nonnull %1) #7
  %6 = ptrtoint ptr %of_match to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_match, align 4
  %8 = ptrtoint ptr %call7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call7, align 4
  %call10 = tail call i32 @strcmp(ptr noundef %7, ptr noundef %9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.else.cleanup_crit_edge, label %if.else.if.end14_crit_edge

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.else.if.end14_crit_edge, %if.then3
  %search.0 = phi ptr [ %call, %if.then3 ], [ %call7, %if.else.if.end14_crit_edge ]
  %tobool15.not = icmp eq ptr %search.0, null
  br i1 %tobool15.not, label %do.body, label %if.end25

do.body:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @regulator_of_get_init_node.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@regulator_of_get_init_node, %cleanup)) #7
          to label %if.then22 [label %cleanup], !srcloc !184

if.then22:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %regulators_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regulators_node, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @regulator_of_get_init_node.__UNIQUE_ID_ddebug290, ptr noundef %dev, ptr noundef nonnull @.str.91, ptr noundef %11) #7
  br label %cleanup

if.end25:                                         ; preds = %if.end14
  %call26 = tail call ptr @of_get_next_available_child(ptr noundef nonnull %search.0, ptr noundef null) #7
  %cmp.not68 = icmp eq ptr %call26, null
  br i1 %cmp.not68, label %if.end25.for.end_crit_edge, label %for.body.lr.ph

if.end25.for.end_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end25
  %of_match_full_name = getelementptr inbounds %struct.regulator_desc, ptr %desc, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %child.069 = phi ptr [ %call26, %for.body.lr.ph ], [ %call41, %for.inc.for.body_crit_edge ]
  %call27 = tail call ptr @of_get_property(ptr noundef nonnull %child.069, ptr noundef nonnull @.str.1, ptr noundef null) #7
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %if.then29, label %for.body.if.end35_crit_edge

for.body.if.end35_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then29:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %of_match_full_name to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %of_match_full_name, align 4, !range !183
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool30.not = icmp eq i8 %13, 0
  %full_name = getelementptr inbounds %struct.device_node, ptr %child.069, i32 0, i32 2
  %child.069.sink = select i1 %tobool30.not, ptr %child.069, ptr %full_name
  %14 = ptrtoint ptr %child.069.sink to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %child.069.sink, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then29, %for.body.if.end35_crit_edge
  %name.0 = phi ptr [ %call27, %for.body.if.end35_crit_edge ], [ %15, %if.then29 ]
  %16 = ptrtoint ptr %of_match to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_match, align 4
  %call37 = tail call i32 @strcmp(ptr noundef %17, ptr noundef %name.0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then39, label %for.inc

if.then39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @of_node_put(ptr noundef nonnull %search.0) #7
  br label %cleanup

for.inc:                                          ; preds = %if.end35
  %call41 = tail call ptr @of_get_next_available_child(ptr noundef nonnull %search.0, ptr noundef nonnull %child.069) #7
  %cmp.not = icmp eq ptr %call41, null
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end25.for.end_crit_edge
  tail call void @of_node_put(ptr noundef nonnull %search.0) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then39, %if.then22, %do.body, %if.else.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %child.069, %if.then39 ], [ null, %for.end ], [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ %call7, %if.else.cleanup_crit_edge ], [ null, %if.then22 ], [ null, %do.body ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @of_find_regulator_by_node(ptr noundef %np) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @class_find_device(ptr noundef nonnull @regulator_class, ptr noundef null, ptr noundef %np, ptr noundef nonnull @device_match_of_node) #7
  %tobool.not = icmp eq ptr %call.i, null
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 -264
  %spec.select = select i1 %tobool.not, ptr null, ptr %add.ptr.i
  ret ptr %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @of_get_n_coupled(ptr nocapture noundef readonly %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 13, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call i32 @of_count_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.11, ptr noundef null) #7
  %2 = tail call i32 @llvm.smax.i32(i32 %call, i32 0)
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_count_phandle_with_args(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @of_check_coupling_data(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  %args.i.i = alloca %struct.of_phandle_args, align 4
  %args.i = alloca %struct.of_phandle_args, align 4
  %c_max_spread = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 13
  %of_node = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 13, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call i32 @of_count_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.11, ptr noundef null) #7
  %2 = tail call i32 @llvm.smax.i32(i32 %call.i, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp110 = icmp sgt i32 %call.i, 0
  br i1 %cmp110, label %for.body.lr.ph, label %entry.cleanup39_crit_edge

entry.cleanup39_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup39

for.body.lr.ph:                                   ; preds = %entry
  %constraints = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %cmp112 = phi i1 [ true, %for.body.lr.ph ], [ %cmp, %for.inc.for.body_crit_edge ]
  %i.0111 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %3 = ptrtoint ptr %constraints to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %constraints, align 8
  %max_spread1 = getelementptr inbounds %struct.regulation_constraints, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %max_spread1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %max_spread1, align 4
  %arrayidx = getelementptr i32, ptr %6, i32 %i.0111
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c_max_spread) #7
  %9 = ptrtoint ptr %c_max_spread to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %c_max_spread, align 4, !annotation !182
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp2 = icmp slt i32 %8, 1
  br i1 %cmp2, label %cleanup.thread83, label %if.end

cleanup.thread83:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c_max_spread) #7
  br label %cleanup39

if.end:                                           ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #7
  %10 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i69 = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.11, ptr noundef null, i32 noundef 0, i32 noundef %i.0111, ptr noundef nonnull %args.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %tobool.not.i = icmp eq i32 %call.i69, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.of_parse_phandle.exit_crit_edge

if.end.of_parse_phandle.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_parse_phandle.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %args.i, align 4
  br label %of_parse_phandle.exit

of_parse_phandle.exit:                            ; preds = %if.end.i, %if.end.of_parse_phandle.exit_crit_edge
  %retval.0.i = phi ptr [ %12, %if.end.i ], [ null, %if.end.of_parse_phandle.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  %tobool.not.not = icmp eq ptr %retval.0.i, null
  %call7 = call i32 @of_count_phandle_with_args(ptr noundef %retval.0.i, ptr noundef nonnull @.str.11, ptr noundef null) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call7, i32 %2)
  %cmp8.not = icmp eq i32 %call7, %2
  br i1 %cmp8.not, label %if.end14, label %of_parse_phandle.exit.clean.thread.sink.split_crit_edge

of_parse_phandle.exit.clean.thread.sink.split_crit_edge: ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %clean.thread.sink.split

if.end14:                                         ; preds = %of_parse_phandle.exit
  %call.i70 = call i32 @of_count_phandle_with_args(ptr noundef %retval.0.i, ptr noundef nonnull @.str.11, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70)
  %cmp32.i = icmp sgt i32 %call.i70, 0
  br i1 %cmp32.i, label %if.end14.for.body.i_crit_edge, label %if.end14.clean.thread.sink.split_crit_edge

if.end14.clean.thread.sink.split_crit_edge:       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %clean.thread.sink.split

if.end14.for.body.i_crit_edge:                    ; preds = %if.end14
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end14.for.body.i_crit_edge
  %i.033.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end14.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #7
  %13 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef %retval.0.i, ptr noundef nonnull @.str.11, ptr noundef null, i32 noundef 0, i32 noundef %i.033.i, ptr noundef nonnull %args.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %of_parse_phandle.exit.i, label %of_parse_phandle.exit.thread.i

of_parse_phandle.exit.thread.i:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #7
  br label %clean.thread.sink.split

of_parse_phandle.exit.i:                          ; preds = %for.body.i
  %14 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %args.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #7
  %tobool.not.i71 = icmp eq ptr %15, null
  br i1 %tobool.not.i71, label %of_parse_phandle.exit.i.clean.thread.sink.split_crit_edge, label %if.end.i72

of_parse_phandle.exit.i.clean.thread.sink.split_crit_edge: ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clean.thread.sink.split

if.end.i72:                                       ; preds = %of_parse_phandle.exit.i
  %cmp2.i = icmp eq ptr %15, %1
  call void @of_node_put(ptr noundef nonnull %15) #7
  br i1 %cmp2.i, label %if.end21, label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i72
  %inc.i = add nuw nsw i32 %i.033.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call.i70
  br i1 %exitcond.not.i, label %for.inc.i.clean.thread.sink.split_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.clean.thread.sink.split_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clean.thread.sink.split

if.end21:                                         ; preds = %if.end.i72
  %call22 = call i32 @of_property_read_u32_index(ptr noundef %retval.0.i, ptr noundef nonnull @.str.20, i32 noundef %i.033.i, ptr noundef nonnull %c_max_spread) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end21.clean.thread_crit_edge

if.end21.clean.thread_crit_edge:                  ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %clean.thread

if.end25:                                         ; preds = %if.end21
  %16 = ptrtoint ptr %c_max_spread to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %c_max_spread, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %8)
  %cmp26.not = icmp eq i32 %17, %8
  br i1 %cmp26.not, label %clean, label %if.end25.clean.thread.sink.split_crit_edge

if.end25.clean.thread.sink.split_crit_edge:       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %clean.thread.sink.split

clean.thread.sink.split:                          ; preds = %if.end25.clean.thread.sink.split_crit_edge, %for.inc.i.clean.thread.sink.split_crit_edge, %of_parse_phandle.exit.i.clean.thread.sink.split_crit_edge, %of_parse_phandle.exit.thread.i, %if.end14.clean.thread.sink.split_crit_edge, %of_parse_phandle.exit.clean.thread.sink.split_crit_edge
  %.str.15.sink = phi ptr [ @.str.18, %of_parse_phandle.exit.thread.i ], [ @.str.18, %of_parse_phandle.exit.i.clean.thread.sink.split_crit_edge ], [ @.str.18, %for.inc.i.clean.thread.sink.split_crit_edge ], [ @.str.15, %of_parse_phandle.exit.clean.thread.sink.split_crit_edge ], [ @.str.18, %if.end14.clean.thread.sink.split_crit_edge ], [ @.str.22, %if.end25.clean.thread.sink.split_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.15.sink) #10
  br label %clean.thread

clean.thread:                                     ; preds = %clean.thread.sink.split, %if.end21.clean.thread_crit_edge
  call void @of_node_put(ptr noundef %retval.0.i) #7
  br label %cleanup.thread

clean:                                            ; preds = %if.end25
  call void @of_node_put(ptr noundef %retval.0.i) #7
  br i1 %tobool.not.not, label %clean.cleanup.thread_crit_edge, label %for.inc

clean.cleanup.thread_crit_edge:                   ; preds = %clean
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %clean.cleanup.thread_crit_edge, %clean.thread
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c_max_spread) #7
  br label %cleanup39

for.inc:                                          ; preds = %clean
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c_max_spread) #7
  %inc = add nuw nsw i32 %i.0111, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %2)
  %cmp = icmp ult i32 %inc, %2
  %exitcond.not = icmp eq i32 %inc, %2
  br i1 %exitcond.not, label %for.inc.cleanup39_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup39_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup39

cleanup39:                                        ; preds = %for.inc.cleanup39_crit_edge, %cleanup.thread, %cleanup.thread83, %entry.cleanup39_crit_edge
  %cmp98 = phi i1 [ %cmp112, %cleanup.thread ], [ %cmp112, %cleanup.thread83 ], [ false, %entry.cleanup39_crit_edge ], [ %cmp, %for.inc.cleanup39_crit_edge ]
  %18 = xor i1 %cmp98, true
  ret i1 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @of_parse_coupled_regulator(ptr nocapture noundef readonly %rdev, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 13, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #7
  %2 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.11, ptr noundef null, i32 noundef 0, i32 noundef %index, ptr noundef nonnull %args.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  br label %cleanup

of_parse_phandle.exit:                            ; preds = %entry
  %3 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %of_parse_phandle.exit.cleanup_crit_edge, label %if.end

of_parse_phandle.exit.cleanup_crit_edge:          ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = call ptr @class_find_device(ptr noundef nonnull @regulator_class, ptr noundef null, ptr noundef nonnull %4, ptr noundef nonnull @device_match_of_node) #7
  %tobool.not.i6 = icmp eq ptr %call.i.i, null
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i, i32 -264
  %spec.select.i = select i1 %tobool.not.i6, ptr null, ptr %add.ptr.i.i
  call void @of_node_put(ptr noundef nonnull %4) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %of_parse_phandle.exit.cleanup_crit_edge, %of_parse_phandle.exit.thread
  %retval.0 = phi ptr [ %spec.select.i, %if.end ], [ null, %of_parse_phandle.exit.cleanup_crit_edge ], [ null, %of_parse_phandle.exit.thread ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @class_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_match_of_node(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !18, !19, !20, !22, !23, !24, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !43, !44, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !78, !79, !80, !82, !84, !85, !86, !88, !90, !92, !94, !96, !97, !98, !100, !101, !102, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !120, !122, !124, !126, !127, !129, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !171, !172}
!llvm.module.flags = !{!173, !174, !175, !176, !177, !178, !179, !180}
!llvm.ident = !{!181}

!0 = !{ptr @__ksymtab_of_get_regulator_init_data, !1, !"__ksymtab_of_get_regulator_init_data", i1 false, i1 false}
!1 = !{!"../drivers/regulator/of_regulator.c", i32 349, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/regulator/of_regulator.c", i32 396, i32 17}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/regulator/of_regulator.c", i32 415, i32 6}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/regulator/of_regulator.c", i32 430, i32 5}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @of_regulator_match._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @of_regulator_match._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @__ksymtab_of_regulator_match, !15, !"__ksymtab_of_regulator_match", i1 false, i1 false}
!15 = !{!"../drivers/regulator/of_regulator.c", i32 444, i32 1}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/regulator/of_regulator.c", i32 510, i32 3}
!18 = !{ptr @regulator_of_get_init_data._entry, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @regulator_of_get_init_data._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/regulator/of_regulator.c", i32 523, i32 4}
!22 = !{ptr @regulator_of_get_init_data._entry.8, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @regulator_of_get_init_data._entry_ptr.10, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/regulator/of_regulator.c", i32 558, i32 7}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/regulator/of_regulator.c", i32 626, i32 4}
!28 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @of_check_coupling_data._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @of_check_coupling_data._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/regulator/of_regulator.c", i32 641, i32 4}
!33 = !{ptr @of_check_coupling_data._entry.14, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @of_check_coupling_data._entry_ptr.16, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/regulator/of_regulator.c", i32 647, i32 4}
!37 = !{ptr @of_check_coupling_data._entry.17, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @of_check_coupling_data._entry_ptr.19, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/regulator/of_regulator.c", i32 652, i32 42}
!41 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/regulator/of_regulator.c", i32 659, i32 4}
!43 = !{ptr @of_check_coupling_data._entry.21, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @of_check_coupling_data._entry_ptr.23, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/regulator/of_regulator.c", i32 97, i32 42}
!47 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/regulator/of_regulator.c", i32 99, i32 32}
!49 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/regulator/of_regulator.c", i32 102, i32 32}
!51 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/regulator/of_regulator.c", i32 113, i32 32}
!53 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/regulator/of_regulator.c", i32 115, i32 32}
!55 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/regulator/of_regulator.c", i32 117, i32 32}
!57 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/regulator/of_regulator.c", i32 120, i32 32}
!59 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/regulator/of_regulator.c", i32 128, i32 51}
!61 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/regulator/of_regulator.c", i32 129, i32 53}
!63 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/regulator/of_regulator.c", i32 133, i32 53}
!65 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/regulator/of_regulator.c", i32 135, i32 32}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/regulator/of_regulator.c", i32 138, i32 32}
!69 = !{ptr @.str.36, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/regulator/of_regulator.c", i32 141, i32 33}
!71 = !{ptr @.str.37, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/regulator/of_regulator.c", i32 149, i32 33}
!73 = !{ptr @.str.38, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/regulator/of_regulator.c", i32 153, i32 33}
!75 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/regulator/of_regulator.c", i32 157, i32 3}
!77 = !{ptr @.str.40, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @of_get_regulation_constraints._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @of_get_regulation_constraints._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/regulator/of_regulator.c", i32 162, i32 33}
!82 = !{ptr @.str.43, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/regulator/of_regulator.c", i32 167, i32 3}
!84 = !{ptr @of_get_regulation_constraints._entry.42, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @of_get_regulation_constraints._entry_ptr.44, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.45, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/regulator/of_regulator.c", i32 172, i32 33}
!88 = !{ptr @.str.46, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/regulator/of_regulator.c", i32 177, i32 6}
!90 = !{ptr @.str.47, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/regulator/of_regulator.c", i32 178, i32 33}
!92 = !{ptr @.str.48, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/regulator/of_regulator.c", i32 185, i32 32}
!94 = !{ptr @.str.50, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/regulator/of_regulator.c", i32 189, i32 5}
!96 = !{ptr @of_get_regulation_constraints._entry.49, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @of_get_regulation_constraints._entry_ptr.51, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.53, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/regulator/of_regulator.c", i32 193, i32 4}
!100 = !{ptr @of_get_regulation_constraints._entry.52, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @of_get_regulation_constraints._entry_ptr.54, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.55, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/regulator/of_regulator.c", i32 198, i32 44}
!104 = !{ptr @.str.57, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/regulator/of_regulator.c", i32 206, i32 6}
!106 = !{ptr @of_get_regulation_constraints._entry.56, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @of_get_regulation_constraints._entry_ptr.58, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.60, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/regulator/of_regulator.c", i32 212, i32 6}
!110 = !{ptr @of_get_regulation_constraints._entry.59, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @of_get_regulation_constraints._entry_ptr.61, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.63, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/regulator/of_regulator.c", i32 221, i32 4}
!114 = !{ptr @of_get_regulation_constraints._entry.62, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @of_get_regulation_constraints._entry_ptr.64, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.65, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/regulator/of_regulator.c", i32 225, i32 32}
!118 = !{ptr @.str.66, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/regulator/of_regulator.c", i32 240, i32 32}
!120 = !{ptr @.str.67, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/regulator/of_regulator.c", i32 245, i32 6}
!122 = !{ptr @.str.68, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/regulator/of_regulator.c", i32 270, i32 41}
!124 = !{ptr @of_get_regulation_constraints._entry.69, !125, !"_entry", i1 false, i1 false}
!125 = !{!"../drivers/regulator/of_regulator.c", i32 275, i32 6}
!126 = !{ptr @of_get_regulation_constraints._entry_ptr.70, !125, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @of_get_regulation_constraints._entry.71, !128, !"_entry", i1 false, i1 false}
!128 = !{!"../drivers/regulator/of_regulator.c", i32 280, i32 5}
!129 = !{ptr @of_get_regulation_constraints._entry_ptr.72, !128, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.73, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/regulator/of_regulator.c", i32 286, i32 6}
!132 = !{ptr @.str.74, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/regulator/of_regulator.c", i32 289, i32 6}
!134 = !{ptr @.str.75, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/regulator/of_regulator.c", i32 293, i32 5}
!136 = !{ptr @.str.76, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/regulator/of_regulator.c", i32 297, i32 5}
!138 = !{ptr @.str.77, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/regulator/of_regulator.c", i32 301, i32 6}
!140 = !{ptr @.str.78, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/regulator/of_regulator.c", i32 307, i32 6}
!142 = !{ptr @.str.79, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/regulator/of_regulator.c", i32 41, i32 3}
!144 = !{ptr @.str.80, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/regulator/of_regulator.c", i32 42, i32 3}
!146 = !{ptr @.str.81, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/regulator/of_regulator.c", i32 43, i32 3}
!148 = !{ptr @.str.82, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/regulator/of_regulator.c", i32 44, i32 3}
!150 = !{ptr @of_get_regulator_prot_limits.props, !151, !"props", i1 false, i1 false}
!151 = !{!"../drivers/regulator/of_regulator.c", i32 40, i32 27}
!152 = !{ptr @.str.83, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/regulator/of_regulator.c", i32 60, i32 4}
!154 = !{ptr @.str.84, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/regulator/of_regulator.c", i32 60, i32 18}
!156 = !{ptr @.str.85, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/regulator/of_regulator.c", i32 60, i32 27}
!158 = distinct !{null, !159, !"lvl", i1 false, i1 false}
!159 = !{!"../drivers/regulator/of_regulator.c", i32 59, i32 28}
!160 = !{ptr @.str.86, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/regulator/of_regulator.c", i32 19, i32 25}
!162 = !{ptr @.str.87, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/regulator/of_regulator.c", i32 20, i32 21}
!164 = !{ptr @.str.88, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/regulator/of_regulator.c", i32 21, i32 21}
!166 = !{ptr @regulator_states, !167, !"regulator_states", i1 false, i1 false}
!167 = !{!"../drivers/regulator/of_regulator.c", i32 18, i32 26}
!168 = !{ptr @.str.89, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/regulator/of_regulator.c", i32 467, i32 3}
!170 = !{ptr @.str.90, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.91, !169, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @regulator_of_get_init_node.__UNIQUE_ID_ddebug290, !169, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!173 = !{i32 1, !"wchar_size", i32 2}
!174 = !{i32 1, !"min_enum_size", i32 4}
!175 = !{i32 8, !"branch-target-enforcement", i32 0}
!176 = !{i32 8, !"sign-return-address", i32 0}
!177 = !{i32 8, !"sign-return-address-all", i32 0}
!178 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!179 = !{i32 7, !"uwtable", i32 1}
!180 = !{i32 7, !"frame-pointer", i32 2}
!181 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!182 = !{!"auto-init"}
!183 = !{i8 0, i8 2}
!184 = !{i64 2148969885, i64 2148969890, i64 2148969903, i64 2148969947, i64 2148969981, i64 2148970002}
