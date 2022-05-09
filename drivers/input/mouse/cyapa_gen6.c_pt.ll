; ModuleID = '/llk/IR_all_yes/drivers/input/mouse/cyapa_gen6.c_pt.bc'
source_filename = "../drivers/input/mouse/cyapa_gen6.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cyapa_dev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cyapa = type { i32, [3 x i8], i8, ptr, ptr, ptr, [32 x i8], i8, i8, i8, i16, i8, i16, i8, i16, %struct.gen6_interval_setting, [16 x i8], i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, i32, %struct.mutex, ptr, %union.cyapa_cmd_states }
%struct.gen6_interval_setting = type { i16, i16, i16 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.cyapa_cmd_states = type { %struct.cyapa_pip_cmd_states }
%struct.cyapa_pip_cmd_states = type { %struct.mutex, %struct.completion, %struct.atomic_t, i8, i8, ptr, ptr, ptr, i32, %struct.mutex, [256 x i8], [256 x i8] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.retrieve_data_struct_cmd = type <{ %struct.pip_app_cmd_head, i16, i16, i8 }>
%struct.pip_app_cmd_head = type <{ i16, i16, i8, i8, i8 }>
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.gen6_set_interval_cmd = type <{ i16, i16, i8, i8, i8, i16, i16, i16 }>

@cyapa_gen6_ops = dso_local constant { %struct.cyapa_dev_ops, [32 x i8] } { %struct.cyapa_dev_ops { ptr @cyapa_pip_check_fw, ptr @cyapa_pip_bl_enter, ptr @cyapa_pip_bl_activate, ptr @cyapa_pip_bl_initiate, ptr @cyapa_pip_do_fw_update, ptr @cyapa_pip_bl_deactivate, ptr @cyapa_gen6_show_baseline, ptr @cyapa_pip_do_calibrate, ptr @cyapa_gen6_initialize, ptr @cyapa_pip_state_parse, ptr @cyapa_gen6_operational_check, ptr @cyapa_pip_irq_handler, ptr @cyapa_pip_irq_cmd_handler, ptr @cyapa_empty_pip_output_data, ptr @cyapa_gen6_set_power_mode, ptr @cyapa_gen6_set_proximity }, [32 x i8] zeroinitializer }, align 32
@pip_get_bl_info = internal global { [13 x i8], [19 x i8] } { [13 x i8] c"\04\00\0B\00@\00\018\00\00p\9E\17", [19 x i8] zeroinitializer }, align 32
@pip_read_sys_info = external dso_local global [0 x i8], align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%d %d %d %d %d %d \00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d \00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@cyapa_gen6_operational_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 696, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: failed to set power active mode.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cyapa_gen6_operational_check\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/input/mouse/cyapa_gen6.c\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cyapa_gen6_operational_check._entry_ptr = internal global ptr @cyapa_gen6_operational_check._entry, section ".printk_index", align 4
@cyapa_gen6_operational_check._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 702, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: failed to enable proximity.\0A\00", [63 x i8] zeroinitializer }, align 32
@cyapa_gen6_operational_check._entry_ptr.10 = internal global ptr @cyapa_gen6_operational_check._entry.8, section ".printk_index", align 4
@product_id = external dso_local constant [0 x i8], align 1
@cyapa_gen6_operational_check._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 712, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: unknown product ID (%s)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@cyapa_gen6_operational_check._entry_ptr.14 = internal global ptr @cyapa_gen6_operational_check._entry.11, section ".printk_index", align 4
@pip_bl_read_app_info = external dso_local global [0 x i8], align 1
@cyapa_gen6_set_power_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.5, i32 467, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"enter deep sleep fail: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cyapa_gen6_set_power_mode\00", [38 x i8] zeroinitializer }, align 32
@cyapa_gen6_set_power_mode._entry_ptr = internal global ptr @cyapa_gen6_set_power_mode._entry, section ".printk_index", align 4
@cyapa_gen6_set_power_mode._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.5, i32 483, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"deep sleep wake fail: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@cyapa_gen6_set_power_mode._entry_ptr.19 = internal global ptr @cyapa_gen6_set_power_mode._entry.17, section ".printk_index", align 4
@cyapa_gen6_set_power_mode._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.5, i32 498, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"change to active fail: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@cyapa_gen6_set_power_mode._entry_ptr.22 = internal global ptr @cyapa_gen6_set_power_mode._entry.20, section ".printk_index", align 4
@cyapa_gen6_set_power_mode._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.16, ptr @.str.5, i32 511, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"fail to button only mode: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@cyapa_gen6_set_power_mode._entry_ptr.25 = internal global ptr @cyapa_gen6_set_power_mode._entry.23, section ".printk_index", align 4
@cyapa_gen6_set_power_mode._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.16, ptr @.str.5, i32 541, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"set power state to 0x%02x failed: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@cyapa_gen6_set_power_mode._entry_ptr.28 = internal global ptr @cyapa_gen6_set_power_mode._entry.26, section ".printk_index", align 4
@__const.cyapa_gen6_deep_sleep.ping = private unnamed_addr constant [7 x i8] c"\04\00\05\00/\00\00", align 1
@__const.cyapa_gen6_get_interval_setting.cmd = private unnamed_addr constant [7 x i8] c"\04\00\05\00/\00H", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 247, i64 255]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 8, i64 145, i64 155]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 8]
@__sancov_gen_cov_switch_values.31 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 4, i64 252]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 8, i64 4, i64 252]
@___asan_gen_.33 = private unnamed_addr constant [15 x i8] c"cyapa_gen6_ops\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 724, i32 28 }
@___asan_gen_.36 = private unnamed_addr constant [16 x i8] c"pip_get_bl_info\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 70, i32 11 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 632, i32 35 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 651, i32 51 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 652, i32 50 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 695, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 701, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 711, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 467, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 483, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 498, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 511, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.112 = private constant [36 x i8] c"../drivers/input/mouse/cyapa_gen6.c\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 540, i32 4 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @cyapa_gen6_operational_check._entry, ptr @cyapa_gen6_operational_check._entry.11, ptr @cyapa_gen6_operational_check._entry.8, ptr @cyapa_gen6_operational_check._entry_ptr, ptr @cyapa_gen6_operational_check._entry_ptr.10, ptr @cyapa_gen6_operational_check._entry_ptr.14, ptr @cyapa_gen6_set_power_mode._entry, ptr @cyapa_gen6_set_power_mode._entry.17, ptr @cyapa_gen6_set_power_mode._entry.20, ptr @cyapa_gen6_set_power_mode._entry.23, ptr @cyapa_gen6_set_power_mode._entry.26, ptr @cyapa_gen6_set_power_mode._entry_ptr, ptr @cyapa_gen6_set_power_mode._entry_ptr.19, ptr @cyapa_gen6_set_power_mode._entry_ptr.22, ptr @cyapa_gen6_set_power_mode._entry_ptr.25, ptr @cyapa_gen6_set_power_mode._entry_ptr.28, ptr @cyapa_gen6_ops, ptr @pip_get_bl_info, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_gen6_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pip_get_bl_info to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_gen6_operational_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_gen6_operational_check._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_gen6_operational_check._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_gen6_set_power_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_gen6_set_power_mode._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_gen6_set_power_mode._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_gen6_set_power_mode._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_gen6_set_power_mode._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cyapa_pip_state_parse(ptr noundef %cyapa, ptr nocapture readnone %reg_data, i32 %len) #0 align 64 {
entry:
  %resp_data.i = alloca [71 x i8], align 1
  %resp_len.i = alloca i32, align 4
  %cmd = alloca [2 x i8], align 2
  %resp_data = alloca [32 x i8], align 1
  %resp_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd) #9
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 256, ptr %cmd, align 2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %resp_data) #9
  %1 = call ptr @memset(ptr %resp_data, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp_len) #9
  %2 = ptrtoint ptr %cyapa to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %cyapa, align 4
  %call = tail call i32 @cyapa_pip_deep_sleep(ptr noundef %cyapa, i8 noundef zeroext 0) #9
  %call1 = tail call i32 @cyapa_empty_pip_output_data(ptr noundef %cyapa, ptr noundef null, ptr noundef null, ptr noundef null) #9
  %3 = ptrtoint ptr %resp_len to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 32, ptr %resp_len, align 4
  %call3 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %cyapa, ptr noundef nonnull %cmd, i32 noundef 2, ptr noundef nonnull %resp_data, ptr noundef nonnull %resp_len, i32 noundef 300, ptr noundef nonnull @cyapa_sort_pip_hid_descriptor_data, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = getelementptr inbounds [32 x i8], ptr %resp_data, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %cmp = icmp eq i8 %6, -1
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i8 %6, label %if.end.cleanup_crit_edge [
    i8 -1, label %if.end.if.end13_crit_edge
    i8 -9, label %if.end.if.end13_crit_edge75
  ]

if.end.if.end13_crit_edge75:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %if.end.if.end13_crit_edge, %if.end.if.end13_crit_edge75
  call void @llvm.lifetime.start.p0(i64 71, ptr nonnull %resp_data.i) #9
  %8 = call ptr @memset(ptr %resp_data.i, i32 255, i32 71)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp_len.i) #9
  %9 = ptrtoint ptr %resp_len.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 71, ptr %resp_len.i, align 4
  br i1 %cmp, label %if.then.i, label %if.end6.i

if.then.i:                                        ; preds = %if.end13
  %call.i = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %cyapa, ptr noundef nonnull @pip_get_bl_info, i32 noundef 13, ptr noundef nonnull %resp_data.i, ptr noundef nonnull %resp_len.i, i32 noundef 2000, ptr noundef nonnull @cyapa_sort_tsg_pip_bl_resp_data, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i, label %if.then.i.cyapa_get_pip_fixed_info.exit.thread_crit_edge

if.then.i.cyapa_get_pip_fixed_info.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cyapa_get_pip_fixed_info.exit.thread

lor.lhs.false.i:                                  ; preds = %if.then.i
  %10 = ptrtoint ptr %resp_len.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %resp_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %11)
  %cmp.i = icmp slt i32 %11, 19
  br i1 %cmp.i, label %lor.lhs.false.i.cyapa_get_pip_fixed_info.exit.thread_crit_edge, label %lor.lhs.false.i.if.end18_crit_edge

lor.lhs.false.i.if.end18_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

lor.lhs.false.i.cyapa_get_pip_fixed_info.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cyapa_get_pip_fixed_info.exit.thread

if.end6.i:                                        ; preds = %if.end13
  %call8.i = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %cyapa, ptr noundef nonnull @pip_read_sys_info, i32 noundef 7, ptr noundef nonnull %resp_data.i, ptr noundef nonnull %resp_len.i, i32 noundef 2000, ptr noundef nonnull @cyapa_pip_sort_system_info_data, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %lor.lhs.false10.i, label %if.end6.i.cyapa_get_pip_fixed_info.exit.thread_crit_edge

if.end6.i.cyapa_get_pip_fixed_info.exit.thread_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cyapa_get_pip_fixed_info.exit.thread

lor.lhs.false10.i:                                ; preds = %if.end6.i
  %12 = ptrtoint ptr %resp_len.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %resp_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 71, i32 %13)
  %cmp11.i = icmp slt i32 %13, 71
  br i1 %cmp11.i, label %lor.lhs.false10.i.cyapa_get_pip_fixed_info.exit.thread_crit_edge, label %if.end18.i

lor.lhs.false10.i.cyapa_get_pip_fixed_info.exit.thread_crit_edge: ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cyapa_get_pip_fixed_info.exit.thread

if.end18.i:                                       ; preds = %lor.lhs.false10.i
  %arrayidx19.i = getelementptr inbounds [71 x i8], ptr %resp_data.i, i32 0, i32 7
  %14 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %arrayidx19.i, align 1
  %16 = and i16 %15, 240
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %16)
  %cmp21.not.i = icmp eq i16 %16, 16
  br i1 %cmp21.not.i, label %if.end18.i.if.end18_crit_edge, label %if.end18.i.cyapa_get_pip_fixed_info.exit.thread_crit_edge

if.end18.i.cyapa_get_pip_fixed_info.exit.thread_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cyapa_get_pip_fixed_info.exit.thread

if.end18.i.if.end18_crit_edge:                    ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

cyapa_get_pip_fixed_info.exit.thread:             ; preds = %if.end18.i.cyapa_get_pip_fixed_info.exit.thread_crit_edge, %lor.lhs.false10.i.cyapa_get_pip_fixed_info.exit.thread_crit_edge, %if.end6.i.cyapa_get_pip_fixed_info.exit.thread_crit_edge, %lor.lhs.false.i.cyapa_get_pip_fixed_info.exit.thread_crit_edge, %if.then.i.cyapa_get_pip_fixed_info.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call8.i, %if.end6.i.cyapa_get_pip_fixed_info.exit.thread_crit_edge ], [ -5, %lor.lhs.false10.i.cyapa_get_pip_fixed_info.exit.thread_crit_edge ], [ %call.i, %if.then.i.cyapa_get_pip_fixed_info.exit.thread_crit_edge ], [ -5, %lor.lhs.false.i.cyapa_get_pip_fixed_info.exit.thread_crit_edge ], [ -22, %if.end18.i.cyapa_get_pip_fixed_info.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len.i) #9
  call void @llvm.lifetime.end.p0(i64 71, ptr nonnull %resp_data.i) #9
  br label %cleanup

if.end18:                                         ; preds = %if.end18.i.if.end18_crit_edge, %lor.lhs.false.i.if.end18_crit_edge
  %.sink49.i = phi i32 [ 8, %lor.lhs.false.i.if.end18_crit_edge ], [ 19, %if.end18.i.if.end18_crit_edge ]
  %.sink.i = phi i32 [ 11, %lor.lhs.false.i.if.end18_crit_edge ], [ 22, %if.end18.i.if.end18_crit_edge ]
  %arrayidx25.i = getelementptr inbounds [71 x i8], ptr %resp_data.i, i32 0, i32 %.sink49.i
  %17 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx25.i, align 1
  %arrayidx29.i = getelementptr inbounds [71 x i8], ptr %resp_data.i, i32 0, i32 %.sink.i
  %19 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx29.i, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len.i) #9
  call void @llvm.lifetime.end.p0(i64 71, ptr nonnull %resp_data.i) #9
  %21 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.29)
  switch i8 %18, label %if.end18.cleanup_crit_edge [
    i8 -101, label %land.lhs.true
    i8 -111, label %land.lhs.true34
  ]

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %20)
  %cmp23 = icmp eq i8 %20, 11
  br i1 %cmp23, label %if.then25, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then25:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %gen = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 21
  %22 = ptrtoint ptr %gen to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 6, ptr %gen, align 4
  %cond = select i1 %cmp, i32 7, i32 8
  %23 = ptrtoint ptr %cyapa to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %cond, ptr %cyapa, align 4
  br label %cleanup

land.lhs.true34:                                  ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %20)
  %cmp37 = icmp eq i8 %20, 2
  br i1 %cmp37, label %if.then39, label %land.lhs.true34.cleanup_crit_edge

land.lhs.true34.cleanup_crit_edge:                ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then39:                                        ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #11
  %gen40 = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 21
  %24 = ptrtoint ptr %gen40 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 5, ptr %gen40, align 4
  %cond43 = select i1 %cmp, i32 5, i32 6
  %25 = ptrtoint ptr %cyapa to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %cond43, ptr %cyapa, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %land.lhs.true34.cleanup_crit_edge, %if.then25, %land.lhs.true.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %cyapa_get_pip_fixed_info.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true34.cleanup_crit_edge ], [ 0, %if.then39 ], [ 0, %if.then25 ], [ -11, %if.end.cleanup_crit_edge ], [ %retval.0.i.ph, %cyapa_get_pip_fixed_info.exit.thread ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end18.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %resp_data) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cyapa_pip_deep_sleep(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cyapa_empty_pip_output_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @cyapa_sort_pip_hid_descriptor_data(ptr nocapture noundef readnone %cyapa, ptr nocapture noundef readonly %buf, i32 noundef %len) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %len)
  %cmp.not = icmp eq i32 %len, 32
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr i8, ptr %buf, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %2 = add i8 %1, 9
  %switch.and = and i8 %2, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %switch.and)
  %switch.selectcmp = icmp eq i8 %switch.and, 0
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ %switch.selectcmp, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cyapa_pip_check_fw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cyapa_pip_bl_enter(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cyapa_pip_bl_activate(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cyapa_pip_bl_initiate(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cyapa_pip_do_fw_update(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cyapa_pip_bl_deactivate(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cyapa_gen6_show_baseline(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %cmd.i69 = alloca %struct.retrieve_data_struct_cmd, align 2
  %resp_data.i70 = alloca [24 x i8], align 1
  %resp_len.i71 = alloca i32, align 4
  %cmd.i = alloca %struct.retrieve_data_struct_cmd, align 2
  %resp_data.i = alloca [24 x i8], align 1
  %resp_len.i = alloca i32, align 4
  %data = alloca [14 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %data) #9
  %2 = getelementptr inbounds [14 x i8], ptr %data, i32 0, i32 1
  %3 = getelementptr inbounds [14 x i8], ptr %data, i32 0, i32 2
  %4 = getelementptr inbounds [14 x i8], ptr %data, i32 0, i32 3
  %5 = getelementptr inbounds [14 x i8], ptr %data, i32 0, i32 4
  %6 = getelementptr inbounds [14 x i8], ptr %data, i32 0, i32 5
  %7 = call ptr @memset(ptr %data, i32 255, i32 14)
  %call1 = tail call zeroext i1 @cyapa_is_pip_app_mode(ptr noundef %1) #9
  br i1 %call1, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @cyapa_pip_suspend_scanning(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd.i) #9
  %8 = getelementptr inbounds %struct.pip_app_cmd_head, ptr %cmd.i, i32 0, i32 1
  %9 = getelementptr inbounds %struct.pip_app_cmd_head, ptr %cmd.i, i32 0, i32 2
  %10 = getelementptr inbounds %struct.pip_app_cmd_head, ptr %cmd.i, i32 0, i32 4
  %11 = getelementptr inbounds %struct.retrieve_data_struct_cmd, ptr %cmd.i, i32 0, i32 1
  %12 = getelementptr inbounds %struct.retrieve_data_struct_cmd, ptr %cmd.i, i32 0, i32 2
  %13 = getelementptr inbounds %struct.retrieve_data_struct_cmd, ptr %cmd.i, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %resp_data.i) #9
  %14 = getelementptr inbounds [24 x i8], ptr %resp_data.i, i32 0, i32 2
  %15 = getelementptr inbounds [24 x i8], ptr %resp_data.i, i32 0, i32 3
  %16 = getelementptr inbounds [24 x i8], ptr %resp_data.i, i32 0, i32 4
  %17 = getelementptr inbounds [24 x i8], ptr %resp_data.i, i32 0, i32 6
  %18 = getelementptr inbounds [24 x i8], ptr %resp_data.i, i32 0, i32 7
  %19 = getelementptr inbounds [24 x i8], ptr %resp_data.i, i32 0, i32 10
  %20 = call ptr @memset(ptr %resp_data.i, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp_len.i) #9
  %21 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 12032, ptr %9, align 2
  %22 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 1024, ptr %cmd.i, align 2
  %23 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 2560, ptr %8, align 2
  %24 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 36, ptr %10, align 2
  %25 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 0, ptr %11, align 1
  %26 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 3584, ptr %12, align 1
  %27 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %13, align 1
  %28 = ptrtoint ptr %resp_len.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 24, ptr %resp_len.i, align 4
  %call.i = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %1, ptr noundef nonnull %cmd.i, i32 noundef 12, ptr noundef nonnull %resp_data.i, ptr noundef nonnull %resp_len.i, i32 noundef 500, ptr noundef nonnull @cyapa_sort_tsg_pip_app_resp_data, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end4
  %29 = getelementptr inbounds [24 x i8], ptr %resp_data.i, i32 0, i32 5
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp.i = icmp eq i8 %31, 0
  br i1 %cmp.i, label %lor.lhs.false7.i, label %lor.lhs.false.i.cyapa_pip_retrieve_data_structure.exit.thread_crit_edge

lor.lhs.false.i.cyapa_pip_retrieve_data_structure.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cyapa_pip_retrieve_data_structure.exit.thread

lor.lhs.false7.i:                                 ; preds = %lor.lhs.false.i
  %32 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp11.not.i = icmp eq i8 %33, 0
  br i1 %cmp11.not.i, label %lor.lhs.false13.i, label %lor.lhs.false7.i.cyapa_pip_retrieve_data_structure.exit.thread_crit_edge

lor.lhs.false7.i.cyapa_pip_retrieve_data_structure.exit.thread_crit_edge: ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cyapa_pip_retrieve_data_structure.exit.thread

lor.lhs.false13.i:                                ; preds = %lor.lhs.false7.i
  %34 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %35)
  %cmp16.i = icmp eq i8 %35, 31
  br i1 %cmp16.i, label %land.lhs.true.i, label %lor.lhs.false13.i.cyapa_pip_retrieve_data_structure.exit.thread_crit_edge

lor.lhs.false13.i.cyapa_pip_retrieve_data_structure.exit.thread_crit_edge: ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cyapa_pip_retrieve_data_structure.exit.thread

land.lhs.true.i:                                  ; preds = %lor.lhs.false13.i
  %36 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp20.i = icmp eq i8 %37, 0
  br i1 %cmp20.i, label %land.lhs.true22.i, label %land.lhs.true.i.cyapa_pip_retrieve_data_structure.exit.thread_crit_edge

land.lhs.true.i.cyapa_pip_retrieve_data_structure.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cyapa_pip_retrieve_data_structure.exit.thread

land.lhs.true22.i:                                ; preds = %land.lhs.true.i
  %38 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %16, align 1
  %40 = and i8 %39, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %40)
  %cmp25.i = icmp eq i8 %40, 36
  br i1 %cmp25.i, label %if.end.i, label %land.lhs.true22.i.cyapa_pip_retrieve_data_structure.exit.thread_crit_edge

land.lhs.true22.i.cyapa_pip_retrieve_data_structure.exit.thread_crit_edge: ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cyapa_pip_retrieve_data_structure.exit.thread

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp27.i = icmp slt i32 %call.i, 0
  %spec.select = select i1 %cmp27.i, i32 %call.i, i32 -11
  br label %cyapa_pip_retrieve_data_structure.exit.thread

if.end.i:                                         ; preds = %land.lhs.true22.i
  %41 = ptrtoint ptr %18 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %42 = load i16, ptr %18, align 1
  %43 = call i16 @llvm.bswap.i16(i16 %42) #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %43)
  %cmp32.i = icmp ugt i16 %43, 14
  br i1 %cmp32.i, label %if.end.i.cyapa_pip_retrieve_data_structure.exit.thread_crit_edge, label %if.end8

if.end.i.cyapa_pip_retrieve_data_structure.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cyapa_pip_retrieve_data_structure.exit.thread

cyapa_pip_retrieve_data_structure.exit.thread:    ; preds = %if.end.i.cyapa_pip_retrieve_data_structure.exit.thread_crit_edge, %if.then.i, %land.lhs.true22.i.cyapa_pip_retrieve_data_structure.exit.thread_crit_edge, %land.lhs.true.i.cyapa_pip_retrieve_data_structure.exit.thread_crit_edge, %lor.lhs.false13.i.cyapa_pip_retrieve_data_structure.exit.thread_crit_edge, %lor.lhs.false7.i.cyapa_pip_retrieve_data_structure.exit.thread_crit_edge, %lor.lhs.false.i.cyapa_pip_retrieve_data_structure.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -105, %if.end.i.cyapa_pip_retrieve_data_structure.exit.thread_crit_edge ], [ -11, %land.lhs.true22.i.cyapa_pip_retrieve_data_structure.exit.thread_crit_edge ], [ -11, %land.lhs.true.i.cyapa_pip_retrieve_data_structure.exit.thread_crit_edge ], [ -11, %lor.lhs.false13.i.cyapa_pip_retrieve_data_structure.exit.thread_crit_edge ], [ -11, %lor.lhs.false7.i.cyapa_pip_retrieve_data_structure.exit.thread_crit_edge ], [ -11, %lor.lhs.false.i.cyapa_pip_retrieve_data_structure.exit.thread_crit_edge ], [ %spec.select, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len.i) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %resp_data.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd.i) #9
  br label %resume_scanning

if.end8:                                          ; preds = %if.end.i
  %conv31.i = zext i16 %43 to i32
  %44 = call ptr @memcpy(ptr %data, ptr %19, i32 %conv31.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len.i) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %resp_data.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd.i) #9
  %45 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %data, align 1
  %conv9 = zext i8 %46 to i32
  %47 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %2, align 1
  %conv11 = zext i8 %48 to i32
  %49 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %3, align 1
  %conv13 = zext i8 %50 to i32
  %51 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %4, align 1
  %conv15 = zext i8 %52 to i32
  %53 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %5, align 1
  %conv17 = zext i8 %54 to i32
  %55 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %6, align 1
  %conv19 = zext i8 %56 to i32
  %call20 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str, i32 noundef %conv9, i32 noundef %conv11, i32 noundef %conv13, i32 noundef %conv15, i32 noundef %conv17, i32 noundef %conv19) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd.i69) #9
  %57 = getelementptr inbounds %struct.pip_app_cmd_head, ptr %cmd.i69, i32 0, i32 1
  %58 = getelementptr inbounds %struct.pip_app_cmd_head, ptr %cmd.i69, i32 0, i32 2
  %59 = getelementptr inbounds %struct.pip_app_cmd_head, ptr %cmd.i69, i32 0, i32 4
  %60 = getelementptr inbounds %struct.retrieve_data_struct_cmd, ptr %cmd.i69, i32 0, i32 1
  %61 = getelementptr inbounds %struct.retrieve_data_struct_cmd, ptr %cmd.i69, i32 0, i32 2
  %62 = getelementptr inbounds %struct.retrieve_data_struct_cmd, ptr %cmd.i69, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %resp_data.i70) #9
  %63 = getelementptr inbounds [24 x i8], ptr %resp_data.i70, i32 0, i32 2
  %64 = getelementptr inbounds [24 x i8], ptr %resp_data.i70, i32 0, i32 3
  %65 = getelementptr inbounds [24 x i8], ptr %resp_data.i70, i32 0, i32 4
  %66 = getelementptr inbounds [24 x i8], ptr %resp_data.i70, i32 0, i32 6
  %67 = getelementptr inbounds [24 x i8], ptr %resp_data.i70, i32 0, i32 7
  %68 = getelementptr inbounds [24 x i8], ptr %resp_data.i70, i32 0, i32 10
  %69 = call ptr @memset(ptr %resp_data.i70, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp_len.i71) #9
  %70 = ptrtoint ptr %58 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 12032, ptr %58, align 2
  %71 = ptrtoint ptr %cmd.i69 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 1024, ptr %cmd.i69, align 2
  %72 = ptrtoint ptr %57 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 2560, ptr %57, align 2
  %73 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 36, ptr %59, align 2
  %74 = ptrtoint ptr %60 to i32
  call void @__asan_storeN_noabort(i32 %74, i32 2)
  store i16 0, ptr %60, align 1
  %75 = ptrtoint ptr %61 to i32
  call void @__asan_storeN_noabort(i32 %75, i32 2)
  store i16 3584, ptr %61, align 1
  %76 = ptrtoint ptr %62 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 18, ptr %62, align 1
  %77 = ptrtoint ptr %resp_len.i71 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 24, ptr %resp_len.i71, align 4
  %call.i72 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %1, ptr noundef nonnull %cmd.i69, i32 noundef 12, ptr noundef nonnull %resp_data.i70, ptr noundef nonnull %resp_len.i71, i32 noundef 500, ptr noundef nonnull @cyapa_sort_tsg_pip_app_resp_data, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72)
  %tobool.not.i73 = icmp eq i32 %call.i72, 0
  br i1 %tobool.not.i73, label %lor.lhs.false.i75, label %if.then.i86

lor.lhs.false.i75:                                ; preds = %if.end8
  %78 = getelementptr inbounds [24 x i8], ptr %resp_data.i70, i32 0, i32 5
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %78, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %cmp.i74 = icmp eq i8 %80, 0
  br i1 %cmp.i74, label %lor.lhs.false7.i77, label %lor.lhs.false.i75.cyapa_pip_retrieve_data_structure.exit93.thread_crit_edge

lor.lhs.false.i75.cyapa_pip_retrieve_data_structure.exit93.thread_crit_edge: ; preds = %lor.lhs.false.i75
  call void @__sanitizer_cov_trace_pc() #11
  br label %cyapa_pip_retrieve_data_structure.exit93.thread

lor.lhs.false7.i77:                               ; preds = %lor.lhs.false.i75
  %81 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %66, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %82)
  %cmp11.not.i76 = icmp eq i8 %82, 18
  br i1 %cmp11.not.i76, label %lor.lhs.false13.i79, label %lor.lhs.false7.i77.cyapa_pip_retrieve_data_structure.exit93.thread_crit_edge

lor.lhs.false7.i77.cyapa_pip_retrieve_data_structure.exit93.thread_crit_edge: ; preds = %lor.lhs.false7.i77
  call void @__sanitizer_cov_trace_pc() #11
  br label %cyapa_pip_retrieve_data_structure.exit93.thread

lor.lhs.false13.i79:                              ; preds = %lor.lhs.false7.i77
  %83 = ptrtoint ptr %63 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %63, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %84)
  %cmp16.i78 = icmp eq i8 %84, 31
  br i1 %cmp16.i78, label %land.lhs.true.i81, label %lor.lhs.false13.i79.cyapa_pip_retrieve_data_structure.exit93.thread_crit_edge

lor.lhs.false13.i79.cyapa_pip_retrieve_data_structure.exit93.thread_crit_edge: ; preds = %lor.lhs.false13.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cyapa_pip_retrieve_data_structure.exit93.thread

land.lhs.true.i81:                                ; preds = %lor.lhs.false13.i79
  %85 = ptrtoint ptr %64 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %64, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %cmp20.i80 = icmp eq i8 %86, 0
  br i1 %cmp20.i80, label %land.lhs.true22.i83, label %land.lhs.true.i81.cyapa_pip_retrieve_data_structure.exit93.thread_crit_edge

land.lhs.true.i81.cyapa_pip_retrieve_data_structure.exit93.thread_crit_edge: ; preds = %land.lhs.true.i81
  call void @__sanitizer_cov_trace_pc() #11
  br label %cyapa_pip_retrieve_data_structure.exit93.thread

land.lhs.true22.i83:                              ; preds = %land.lhs.true.i81
  %87 = ptrtoint ptr %65 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %65, align 1
  %89 = and i8 %88, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %89)
  %cmp25.i82 = icmp eq i8 %89, 36
  br i1 %cmp25.i82, label %if.end.i89, label %land.lhs.true22.i83.cyapa_pip_retrieve_data_structure.exit93.thread_crit_edge

land.lhs.true22.i83.cyapa_pip_retrieve_data_structure.exit93.thread_crit_edge: ; preds = %land.lhs.true22.i83
  call void @__sanitizer_cov_trace_pc() #11
  br label %cyapa_pip_retrieve_data_structure.exit93.thread

if.then.i86:                                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72)
  %cmp27.i84 = icmp slt i32 %call.i72, 0
  %spec.select104 = select i1 %cmp27.i84, i32 %call.i72, i32 -11
  br label %cyapa_pip_retrieve_data_structure.exit93.thread

if.end.i89:                                       ; preds = %land.lhs.true22.i83
  %90 = ptrtoint ptr %67 to i32
  call void @__asan_loadN_noabort(i32 %90, i32 2)
  %91 = load i16, ptr %67, align 1
  %92 = call i16 @llvm.bswap.i16(i16 %91) #9
  %conv31.i87 = zext i16 %92 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %92)
  %cmp32.i88 = icmp ugt i16 %92, 14
  br i1 %cmp32.i88, label %if.end.i89.cyapa_pip_retrieve_data_structure.exit93.thread_crit_edge, label %cyapa_pip_retrieve_data_structure.exit93

if.end.i89.cyapa_pip_retrieve_data_structure.exit93.thread_crit_edge: ; preds = %if.end.i89
  call void @__sanitizer_cov_trace_pc() #11
  br label %cyapa_pip_retrieve_data_structure.exit93.thread

cyapa_pip_retrieve_data_structure.exit93.thread:  ; preds = %if.end.i89.cyapa_pip_retrieve_data_structure.exit93.thread_crit_edge, %if.then.i86, %land.lhs.true22.i83.cyapa_pip_retrieve_data_structure.exit93.thread_crit_edge, %land.lhs.true.i81.cyapa_pip_retrieve_data_structure.exit93.thread_crit_edge, %lor.lhs.false13.i79.cyapa_pip_retrieve_data_structure.exit93.thread_crit_edge, %lor.lhs.false7.i77.cyapa_pip_retrieve_data_structure.exit93.thread_crit_edge, %lor.lhs.false.i75.cyapa_pip_retrieve_data_structure.exit93.thread_crit_edge
  %retval.0.i92.ph = phi i32 [ -105, %if.end.i89.cyapa_pip_retrieve_data_structure.exit93.thread_crit_edge ], [ -11, %land.lhs.true22.i83.cyapa_pip_retrieve_data_structure.exit93.thread_crit_edge ], [ -11, %land.lhs.true.i81.cyapa_pip_retrieve_data_structure.exit93.thread_crit_edge ], [ -11, %lor.lhs.false13.i79.cyapa_pip_retrieve_data_structure.exit93.thread_crit_edge ], [ -11, %lor.lhs.false7.i77.cyapa_pip_retrieve_data_structure.exit93.thread_crit_edge ], [ -11, %lor.lhs.false.i75.cyapa_pip_retrieve_data_structure.exit93.thread_crit_edge ], [ %spec.select104, %if.then.i86 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len.i71) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %resp_data.i70) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd.i69) #9
  br label %resume_scanning

cyapa_pip_retrieve_data_structure.exit93:         ; preds = %if.end.i89
  %93 = call ptr @memcpy(ptr %data, ptr %68, i32 %conv31.i87)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len.i71) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %resp_data.i70) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd.i69) #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %91)
  %cmp105.not = icmp eq i16 %91, 0
  br i1 %cmp105.not, label %cyapa_pip_retrieve_data_structure.exit93.for.end_crit_edge, label %for.body.preheader

cyapa_pip_retrieve_data_structure.exit93.for.end_crit_edge: ; preds = %cyapa_pip_retrieve_data_structure.exit93
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.preheader:                               ; preds = %cyapa_pip_retrieve_data_structure.exit93
  %umax = call i32 @llvm.umax.i32(i32 %conv31.i87, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0107 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %size.0106 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ %call20, %for.body.preheader ]
  %add.ptr = getelementptr i8, ptr %buf, i32 %size.0106
  %sub = sub i32 4096, %size.0106
  %arrayidx28 = getelementptr [14 x i8], ptr %data, i32 0, i32 %i.0107
  %94 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %95 to i32
  %call30 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.1, i32 noundef %conv29) #9
  %add = add i32 %call30, %size.0106
  %inc = add nuw nsw i32 %i.0107, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %cyapa_pip_retrieve_data_structure.exit93.for.end_crit_edge
  %size.0.lcssa = phi i32 [ %call20, %cyapa_pip_retrieve_data_structure.exit93.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %add.ptr31 = getelementptr i8, ptr %buf, i32 %size.0.lcssa
  %sub32 = sub i32 4096, %size.0.lcssa
  %call33 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr31, i32 noundef %sub32, ptr noundef nonnull @.str.2) #9
  %add34 = add i32 %call33, %size.0.lcssa
  br label %resume_scanning

resume_scanning:                                  ; preds = %for.end, %cyapa_pip_retrieve_data_structure.exit93.thread, %cyapa_pip_retrieve_data_structure.exit.thread
  %size.1 = phi i32 [ %add34, %for.end ], [ 0, %cyapa_pip_retrieve_data_structure.exit.thread ], [ %call20, %cyapa_pip_retrieve_data_structure.exit93.thread ]
  %error.0 = phi i32 [ 0, %for.end ], [ %retval.0.i.ph, %cyapa_pip_retrieve_data_structure.exit.thread ], [ %retval.0.i92.ph, %cyapa_pip_retrieve_data_structure.exit93.thread ]
  %call35 = call i32 @cyapa_pip_resume_scanning(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0)
  %tobool37.not = icmp eq i32 %error.0, 0
  %or.cond = select i1 %tobool36.not, i1 %tobool37.not, i1 false
  br i1 %or.cond, label %resume_scanning.cleanup_crit_edge, label %if.then38

resume_scanning.cleanup_crit_edge:                ; preds = %resume_scanning
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then38:                                        ; preds = %resume_scanning
  call void @__sanitizer_cov_trace_pc() #11
  %96 = call ptr @memset(ptr %buf, i32 0, i32 4096)
  %error.0.call35 = select i1 %tobool36.not, i32 %error.0, i32 %call35
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %resume_scanning.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0.call35, %if.then38 ], [ -16, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %size.1, %resume_scanning.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %data) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cyapa_pip_do_calibrate(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cyapa_gen6_initialize(ptr nocapture noundef readnone %cyapa) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cyapa_gen6_operational_check(ptr noundef %cyapa) #0 align 64 {
entry:
  %resp_data.i51 = alloca [71 x i8], align 1
  %resp_len.i52 = alloca i32, align 4
  %resp_data.i = alloca [30 x i8], align 1
  %resp_len.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 4
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %gen = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 21
  %2 = ptrtoint ptr %gen to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %gen, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %3)
  %cmp.not = icmp eq i8 %3, 6
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %cyapa to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cyapa, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %5, label %if.end.cleanup_crit_edge [
    i32 7, label %sw.bb
    i32 8, label %if.end.sw.bb7_crit_edge
  ]

if.end.sw.bb7_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %call = tail call i32 @cyapa_pip_bl_exit(ptr noundef %cyapa) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %resp_data.i) #9
  %7 = getelementptr inbounds [30 x i8], ptr %resp_data.i, i32 0, i32 5
  %8 = getelementptr inbounds [30 x i8], ptr %resp_data.i, i32 0, i32 8
  %9 = getelementptr inbounds [30 x i8], ptr %resp_data.i, i32 0, i32 9
  %10 = getelementptr inbounds [30 x i8], ptr %resp_data.i, i32 0, i32 12
  %11 = getelementptr inbounds [30 x i8], ptr %resp_data.i, i32 0, i32 13
  %12 = getelementptr inbounds [30 x i8], ptr %resp_data.i, i32 0, i32 18
  %13 = getelementptr inbounds [30 x i8], ptr %resp_data.i, i32 0, i32 24
  %14 = call ptr @memset(ptr %resp_data.i, i32 255, i32 30)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp_len.i) #9
  %15 = ptrtoint ptr %resp_len.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 30, ptr %resp_len.i, align 4
  %call.i = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %cyapa, ptr noundef nonnull @pip_bl_read_app_info, i32 noundef 13, ptr noundef nonnull %resp_data.i, ptr noundef nonnull %resp_len.i, i32 noundef 500, ptr noundef nonnull @cyapa_sort_tsg_pip_bl_resp_data, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.then3.cyapa_gen6_bl_read_app_info.exit_crit_edge

if.then3.cyapa_gen6_bl_read_app_info.exit_crit_edge: ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cyapa_gen6_bl_read_app_info.exit

lor.lhs.false.i:                                  ; preds = %if.then3
  %16 = ptrtoint ptr %resp_len.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %resp_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %17)
  %cmp.i = icmp slt i32 %17, 30
  br i1 %cmp.i, label %lor.lhs.false.i.cyapa_gen6_bl_read_app_info.exit_crit_edge, label %lor.lhs.false1.i

lor.lhs.false.i.cyapa_gen6_bl_read_app_info.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cyapa_gen6_bl_read_app_info.exit

lor.lhs.false1.i:                                 ; preds = %lor.lhs.false.i
  %18 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp2.i = icmp eq i8 %19, 0
  br i1 %cmp2.i, label %if.end.i, label %lor.lhs.false1.i.cyapa_gen6_bl_read_app_info.exit_crit_edge

lor.lhs.false1.i.cyapa_gen6_bl_read_app_info.exit_crit_edge: ; preds = %lor.lhs.false1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cyapa_gen6_bl_read_app_info.exit

if.end.i:                                         ; preds = %lor.lhs.false1.i
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %8, align 1
  %fw_maj_ver.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 18
  %22 = ptrtoint ptr %fw_maj_ver.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %fw_maj_ver.i, align 1
  %23 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %9, align 1
  %fw_min_ver.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 19
  %25 = ptrtoint ptr %fw_min_ver.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %fw_min_ver.i, align 2
  %26 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %10, align 1
  %28 = lshr i8 %27, 4
  %platform_ver.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 17
  %29 = ptrtoint ptr %platform_ver.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %platform_ver.i, align 4
  %product_id.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 16
  %30 = call ptr @memcpy(ptr %product_id.i, ptr %11, i32 5)
  %arrayidx13.i = getelementptr %struct.cyapa, ptr %cyapa, i32 0, i32 16, i32 5
  %31 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 45, ptr %arrayidx13.i, align 1
  %arrayidx15.i = getelementptr %struct.cyapa, ptr %cyapa, i32 0, i32 16, i32 6
  %32 = call ptr @memcpy(ptr %arrayidx15.i, ptr %12, i32 6)
  %arrayidx18.i = getelementptr %struct.cyapa, ptr %cyapa, i32 0, i32 16, i32 12
  %33 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 45, ptr %arrayidx18.i, align 4
  %arrayidx20.i = getelementptr %struct.cyapa, ptr %cyapa, i32 0, i32 16, i32 13
  %34 = ptrtoint ptr %13 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 2)
  %35 = load i16, ptr %13, align 1
  %36 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_storeN_noabort(i32 %36, i32 2)
  store i16 %35, ptr %arrayidx20.i, align 1
  %arrayidx23.i = getelementptr %struct.cyapa, ptr %cyapa, i32 0, i32 16, i32 15
  %37 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %arrayidx23.i, align 1
  br label %cyapa_gen6_bl_read_app_info.exit

cyapa_gen6_bl_read_app_info.exit:                 ; preds = %if.end.i, %lor.lhs.false1.i.cyapa_gen6_bl_read_app_info.exit_crit_edge, %lor.lhs.false.i.cyapa_gen6_bl_read_app_info.exit_crit_edge, %if.then3.cyapa_gen6_bl_read_app_info.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len.i) #9
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %resp_data.i) #9
  br label %cleanup

if.end5:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %cyapa to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 8, ptr %cyapa, align 4
  br label %sw.bb7

sw.bb7:                                           ; preds = %if.end5, %if.end.sw.bb7_crit_edge
  %call8 = tail call i32 @cyapa_gen6_set_power_mode(ptr noundef %cyapa, i8 noundef zeroext -4, i16 noundef zeroext 0, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %sw.bb7.if.end11_crit_edge, label %do.end

sw.bb7.if.end11_crit_edge:                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

do.end:                                           ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #12
  br label %if.end11

if.end11:                                         ; preds = %do.end, %sw.bb7.if.end11_crit_edge
  %call12 = tail call i32 @cyapa_pip_set_proximity(ptr noundef %cyapa, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end11.if.end18_crit_edge, label %do.end17

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.4) #12
  br label %if.end18

if.end18:                                         ; preds = %do.end17, %if.end11.if.end18_crit_edge
  call void @llvm.lifetime.start.p0(i64 71, ptr nonnull %resp_data.i51) #9
  %39 = call ptr @memset(ptr %resp_data.i51, i32 255, i32 71)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp_len.i52) #9
  %40 = ptrtoint ptr %resp_len.i52 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 71, ptr %resp_len.i52, align 4
  %call.i53 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %cyapa, ptr noundef nonnull @pip_read_sys_info, i32 noundef 7, ptr noundef nonnull %resp_data.i51, ptr noundef nonnull %resp_len.i52, i32 noundef 2000, ptr noundef nonnull @cyapa_pip_sort_system_info_data, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i53)
  %tobool.not.i54 = icmp eq i32 %call.i53, 0
  br i1 %tobool.not.i54, label %lor.lhs.false.i56, label %if.end18.cyapa_gen6_read_sys_info.exit.thread_crit_edge

if.end18.cyapa_gen6_read_sys_info.exit.thread_crit_edge: ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cyapa_gen6_read_sys_info.exit.thread

lor.lhs.false.i56:                                ; preds = %if.end18
  %41 = ptrtoint ptr %resp_len.i52 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %resp_len.i52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 71, i32 %42)
  %cmp.i55 = icmp ult i32 %42, 71
  br i1 %cmp.i55, label %lor.lhs.false.i56.cyapa_gen6_read_sys_info.exit.thread_crit_edge, label %if.end.i57

lor.lhs.false.i56.cyapa_gen6_read_sys_info.exit.thread_crit_edge: ; preds = %lor.lhs.false.i56
  call void @__sanitizer_cov_trace_pc() #11
  br label %cyapa_gen6_read_sys_info.exit.thread

if.end.i57:                                       ; preds = %lor.lhs.false.i56
  %arrayidx.i = getelementptr inbounds [71 x i8], ptr %resp_data.i51, i32 0, i32 7
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %44 = load i16, ptr %arrayidx.i, align 1
  %45 = and i16 %44, 240
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %45)
  %cmp3.not.i = icmp eq i16 %45, 16
  br i1 %cmp3.not.i, label %if.end6.i, label %if.end.i57.cyapa_gen6_read_sys_info.exit.thread_crit_edge

if.end.i57.cyapa_gen6_read_sys_info.exit.thread_crit_edge: ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #11
  br label %cyapa_gen6_read_sys_info.exit.thread

if.end6.i:                                        ; preds = %if.end.i57
  %arrayidx7.i = getelementptr inbounds [71 x i8], ptr %resp_data.i51, i32 0, i32 67
  %46 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx7.i, align 1
  %48 = lshr i8 %47, 4
  %platform_ver.i58 = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 17
  %49 = ptrtoint ptr %platform_ver.i58 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %platform_ver.i58, align 4
  %arrayidx11.i = getelementptr inbounds [71 x i8], ptr %resp_data.i51, i32 0, i32 9
  %50 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx11.i, align 1
  %fw_maj_ver.i59 = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 18
  %52 = ptrtoint ptr %fw_maj_ver.i59 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %fw_maj_ver.i59, align 1
  %arrayidx12.i = getelementptr inbounds [71 x i8], ptr %resp_data.i51, i32 0, i32 10
  %53 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx12.i, align 1
  %fw_min_ver.i60 = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 19
  %55 = ptrtoint ptr %fw_min_ver.i60 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %fw_min_ver.i60, align 2
  %arrayidx13.i61 = getelementptr inbounds [71 x i8], ptr %resp_data.i51, i32 0, i32 33
  %56 = ptrtoint ptr %arrayidx13.i61 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx13.i61, align 1
  %conv14.i = zext i8 %57 to i32
  %electrodes_x.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 28
  %58 = ptrtoint ptr %electrodes_x.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %conv14.i, ptr %electrodes_x.i, align 4
  %arrayidx15.i62 = getelementptr inbounds [71 x i8], ptr %resp_data.i51, i32 0, i32 34
  %59 = ptrtoint ptr %arrayidx15.i62 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx15.i62, align 1
  %conv16.i = zext i8 %60 to i32
  %electrodes_y.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 29
  %61 = ptrtoint ptr %electrodes_y.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %conv16.i, ptr %electrodes_y.i, align 4
  %arrayidx17.i = getelementptr inbounds [71 x i8], ptr %resp_data.i51, i32 0, i32 35
  %62 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_loadN_noabort(i32 %62, i32 2)
  %63 = load i16, ptr %arrayidx17.i, align 1
  %64 = call i16 @llvm.bswap.i16(i16 %63) #9
  %65 = udiv i16 %64, 100
  %div.i = zext i16 %65 to i32
  %physical_size_x.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 24
  %66 = ptrtoint ptr %physical_size_x.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %div.i, ptr %physical_size_x.i, align 4
  %arrayidx20.i63 = getelementptr inbounds [71 x i8], ptr %resp_data.i51, i32 0, i32 37
  %67 = ptrtoint ptr %arrayidx20.i63 to i32
  call void @__asan_loadN_noabort(i32 %67, i32 2)
  %68 = load i16, ptr %arrayidx20.i63, align 1
  %69 = call i16 @llvm.bswap.i16(i16 %68) #9
  %70 = udiv i16 %69, 100
  %div23.i = zext i16 %70 to i32
  %physical_size_y.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 25
  %71 = ptrtoint ptr %physical_size_y.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %div23.i, ptr %physical_size_y.i, align 4
  %arrayidx24.i = getelementptr inbounds [71 x i8], ptr %resp_data.i51, i32 0, i32 39
  %72 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_loadN_noabort(i32 %72, i32 2)
  %73 = load i16, ptr %arrayidx24.i, align 1
  %74 = call i16 @llvm.bswap.i16(i16 %73) #9
  %conv26.i = zext i16 %74 to i32
  %max_abs_x.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 22
  %75 = ptrtoint ptr %max_abs_x.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %conv26.i, ptr %max_abs_x.i, align 4
  %arrayidx27.i = getelementptr inbounds [71 x i8], ptr %resp_data.i51, i32 0, i32 41
  %76 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_loadN_noabort(i32 %76, i32 2)
  %77 = load i16, ptr %arrayidx27.i, align 1
  %78 = call i16 @llvm.bswap.i16(i16 %77) #9
  %conv29.i = zext i16 %78 to i32
  %max_abs_y.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 23
  %79 = ptrtoint ptr %max_abs_y.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %conv29.i, ptr %max_abs_y.i, align 4
  %arrayidx30.i = getelementptr inbounds [71 x i8], ptr %resp_data.i51, i32 0, i32 43
  %80 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_loadN_noabort(i32 %80, i32 2)
  %81 = load i16, ptr %arrayidx30.i, align 1
  %82 = call i16 @llvm.bswap.i16(i16 %81) #9
  %conv32.i = zext i16 %82 to i32
  %max_z.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 32
  %83 = ptrtoint ptr %max_z.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %conv32.i, ptr %max_z.i, align 4
  %arrayidx33.i = getelementptr inbounds [71 x i8], ptr %resp_data.i51, i32 0, i32 45
  %84 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx33.i, align 1
  %86 = and i8 %85, 1
  %x_origin.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 26
  %87 = ptrtoint ptr %x_origin.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %86, ptr %x_origin.i, align 4
  %arrayidx37.i = getelementptr inbounds [71 x i8], ptr %resp_data.i51, i32 0, i32 46
  %88 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx37.i, align 1
  %90 = and i8 %89, 1
  %y_origin.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 27
  %91 = ptrtoint ptr %y_origin.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %90, ptr %y_origin.i, align 1
  %arrayidx41.i = getelementptr inbounds [71 x i8], ptr %resp_data.i51, i32 0, i32 70
  %92 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx41.i, align 1
  %shl.i = shl i8 %93, 3
  %and43.i = and i8 %shl.i, 56
  %btn_capability.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 20
  %94 = ptrtoint ptr %btn_capability.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %and43.i, ptr %btn_capability.i, align 1
  %product_id.i64 = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 16
  %arrayidx46.i = getelementptr inbounds [71 x i8], ptr %resp_data.i51, i32 0, i32 51
  %95 = call ptr @memcpy(ptr %product_id.i64, ptr %arrayidx46.i, i32 5)
  %arrayidx48.i = getelementptr %struct.cyapa, ptr %cyapa, i32 0, i32 16, i32 5
  %96 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 45, ptr %arrayidx48.i, align 1
  %arrayidx50.i = getelementptr %struct.cyapa, ptr %cyapa, i32 0, i32 16, i32 6
  %arrayidx51.i = getelementptr inbounds [71 x i8], ptr %resp_data.i51, i32 0, i32 56
  %97 = call ptr @memcpy(ptr %arrayidx50.i, ptr %arrayidx51.i, i32 6)
  %arrayidx53.i = getelementptr %struct.cyapa, ptr %cyapa, i32 0, i32 16, i32 12
  %98 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 45, ptr %arrayidx53.i, align 4
  %arrayidx55.i = getelementptr %struct.cyapa, ptr %cyapa, i32 0, i32 16, i32 13
  %arrayidx56.i = getelementptr inbounds [71 x i8], ptr %resp_data.i51, i32 0, i32 62
  %99 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_loadN_noabort(i32 %99, i32 2)
  %100 = load i16, ptr %arrayidx56.i, align 1
  %101 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_storeN_noabort(i32 %101, i32 2)
  store i16 %100, ptr %arrayidx55.i, align 1
  %arrayidx58.i = getelementptr %struct.cyapa, ptr %cyapa, i32 0, i32 16, i32 15
  %102 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 0, ptr %arrayidx58.i, align 1
  %arrayidx59.i = getelementptr inbounds [71 x i8], ptr %resp_data.i51, i32 0, i32 68
  %103 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx59.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool61.not.i = icmp eq i8 %104, 0
  %electrodes_x.electrodes_y.i = select i1 %tobool61.not.i, ptr %electrodes_x.i, ptr %electrodes_y.i
  %105 = ptrtoint ptr %electrodes_x.electrodes_y.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %cond67.i = load i32, ptr %electrodes_x.electrodes_y.i, align 4
  %electrodes_rx.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 30
  %106 = ptrtoint ptr %electrodes_rx.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %cond67.i, ptr %electrodes_rx.i, align 4
  %add.i = add i32 %cond67.i, 3
  %and69.i = and i32 %add.i, -4
  %aligned_electrodes_rx.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 31
  %107 = ptrtoint ptr %aligned_electrodes_rx.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %and69.i, ptr %aligned_electrodes_rx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool71.not.i = icmp eq i8 %57, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool74.not.i = icmp eq i8 %60, 0
  %or.cond.i = select i1 %tobool71.not.i, i1 true, i1 %tobool74.not.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 100, i16 %64)
  %108 = icmp ult i16 %64, 100
  %or.cond130.i = select i1 %or.cond.i, i1 true, i1 %108
  call void @__sanitizer_cov_trace_const_cmp2(i16 100, i16 %69)
  %109 = icmp ult i16 %69, 100
  %or.cond131.i = select i1 %or.cond130.i, i1 true, i1 %109
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %73)
  %tobool83.not.i = icmp eq i16 %73, 0
  %or.cond132.i = select i1 %or.cond131.i, i1 true, i1 %tobool83.not.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %77)
  %tobool86.not.i = icmp eq i16 %77, 0
  %or.cond133.i = select i1 %or.cond132.i, i1 true, i1 %tobool86.not.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %81)
  %tobool89.not.i = icmp eq i16 %81, 0
  %or.cond = select i1 %or.cond133.i, i1 true, i1 %tobool89.not.i
  br i1 %or.cond, label %if.end6.i.cyapa_gen6_read_sys_info.exit.thread_crit_edge, label %if.end22

if.end6.i.cyapa_gen6_read_sys_info.exit.thread_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cyapa_gen6_read_sys_info.exit.thread

cyapa_gen6_read_sys_info.exit.thread:             ; preds = %if.end6.i.cyapa_gen6_read_sys_info.exit.thread_crit_edge, %if.end.i57.cyapa_gen6_read_sys_info.exit.thread_crit_edge, %lor.lhs.false.i56.cyapa_gen6_read_sys_info.exit.thread_crit_edge, %if.end18.cyapa_gen6_read_sys_info.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i53, %if.end18.cyapa_gen6_read_sys_info.exit.thread_crit_edge ], [ -5, %lor.lhs.false.i56.cyapa_gen6_read_sys_info.exit.thread_crit_edge ], [ -22, %if.end6.i.cyapa_gen6_read_sys_info.exit.thread_crit_edge ], [ -22, %if.end.i57.cyapa_gen6_read_sys_info.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len.i52) #9
  call void @llvm.lifetime.end.p0(i64 71, ptr nonnull %resp_data.i51) #9
  br label %cleanup

if.end22:                                         ; preds = %if.end6.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len.i52) #9
  call void @llvm.lifetime.end.p0(i64 71, ptr nonnull %resp_data.i51) #9
  %call23 = call i32 @strlen(ptr noundef nonnull @product_id) #13
  %bcmp = call i32 @bcmp(ptr %product_id.i64, ptr nonnull @product_id, i32 %call23) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp25.not = icmp eq i32 %bcmp, 0
  br i1 %cmp25.not, label %if.end22.cleanup_crit_edge, label %do.end30

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end30:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.4, ptr noundef %product_id.i64) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end30, %if.end22.cleanup_crit_edge, %cyapa_gen6_read_sys_info.exit.thread, %cyapa_gen6_bl_read_app_info.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ -22, %do.end30 ], [ 0, %if.end22.cleanup_crit_edge ], [ %call, %cyapa_gen6_bl_read_app_info.exit ], [ -22, %if.end.cleanup_crit_edge ], [ %retval.0.i.ph, %cyapa_gen6_read_sys_info.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cyapa_pip_irq_handler(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cyapa_pip_irq_cmd_handler(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cyapa_gen6_set_power_mode(ptr noundef %cyapa, i8 noundef zeroext %power_mode, i16 noundef zeroext %sleep_time, i32 noundef %pm_stage) #0 align 64 {
entry:
  %cmd.i250 = alloca [7 x i8], align 1
  %resp_data.i251 = alloca [6 x i8], align 1
  %resp_len.i252 = alloca i32, align 4
  %cmd.i231 = alloca [8 x i8], align 1
  %resp_data.i232 = alloca [6 x i8], align 1
  %resp_len.i233 = alloca i32, align 4
  %cmd.i212 = alloca [8 x i8], align 1
  %resp_data.i213 = alloca [6 x i8], align 1
  %resp_len.i214 = alloca i32, align 4
  %cmd.i203 = alloca [7 x i8], align 1
  %resp_data.i204 = alloca [11 x i8], align 1
  %resp_len.i205 = alloca i32, align 4
  %cmd.i199 = alloca [8 x i8], align 1
  %resp_data.i200 = alloca [6 x i8], align 1
  %resp_len.i201 = alloca i32, align 4
  %cmd.i195 = alloca [7 x i8], align 1
  %resp_data.i196 = alloca [6 x i8], align 1
  %resp_len.i197 = alloca i32, align 4
  %ping.i192 = alloca [7 x i8], align 1
  %cmd.i = alloca [7 x i8], align 1
  %resp_data.i = alloca [6 x i8], align 1
  %resp_len.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 4
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %gen6_interval_setting = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 15
  %2 = ptrtoint ptr %cyapa to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cyapa, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp.not = icmp eq i32 %3, 8
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev_pwr_mode = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 13
  %4 = ptrtoint ptr %dev_pwr_mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dev_pwr_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %cmp2 = icmp eq i8 %5, -1
  br i1 %cmp2, label %if.then4, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %dev_pwr_mode to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %dev_pwr_mode, align 2
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %dev_sleep_time = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 14
  %7 = ptrtoint ptr %dev_sleep_time to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %dev_sleep_time, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %8)
  %cmp8 = icmp eq i16 %8, -1
  %9 = ptrtoint ptr %dev_pwr_mode to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dev_pwr_mode, align 2
  br i1 %cmp8, label %land.lhs.true, label %if.end6.if.end16_crit_edge

if.end6.if.end16_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp12.not = icmp eq i8 %10, 0
  br i1 %cmp12.not, label %land.lhs.true.if.end16_crit_edge, label %if.then14

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %dev_sleep_time to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -1, ptr %dev_sleep_time, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %land.lhs.true.if.end16_crit_edge, %if.end6.if.end16_crit_edge
  %12 = phi i8 [ %10, %if.then14 ], [ 0, %land.lhs.true.if.end16_crit_edge ], [ %10, %if.end6.if.end16_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %power_mode)
  %cmp20 = icmp eq i8 %12, %power_mode
  br i1 %cmp20, label %if.then22, label %if.end16.if.end41_crit_edge

if.end16.if.end41_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then22:                                        ; preds = %if.end16
  %13 = zext i8 %power_mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.31)
  switch i8 %power_mode, label %lor.lhs.false33 [
    i8 0, label %if.then22.cleanup_crit_edge
    i8 -4, label %if.then22.cleanup_crit_edge273
    i8 4, label %if.then22.cleanup_crit_edge274
  ]

if.then22.cleanup_crit_edge274:                   ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then22.cleanup_crit_edge273:                   ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false33:                                  ; preds = %if.then22
  %14 = ptrtoint ptr %dev_sleep_time to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %dev_sleep_time, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %sleep_time)
  %cmp37 = icmp eq i16 %15, %sleep_time
  br i1 %cmp37, label %lor.lhs.false33.cleanup_crit_edge, label %lor.lhs.false33.if.end41_crit_edge

lor.lhs.false33.if.end41_crit_edge:               ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

lor.lhs.false33.cleanup_crit_edge:                ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end41:                                         ; preds = %lor.lhs.false33.if.end41_crit_edge, %if.end16.if.end41_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %power_mode)
  %cmp43 = icmp eq i8 %power_mode, 0
  br i1 %cmp43, label %if.then45, label %if.end50

if.then45:                                        ; preds = %if.end41
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %cmd.i) #9
  %16 = getelementptr inbounds [7 x i8], ptr %cmd.i, i32 0, i32 1
  %17 = getelementptr inbounds [7 x i8], ptr %cmd.i, i32 0, i32 2
  %18 = getelementptr inbounds [7 x i8], ptr %cmd.i, i32 0, i32 3
  %19 = getelementptr inbounds [7 x i8], ptr %cmd.i, i32 0, i32 4
  %20 = getelementptr inbounds [7 x i8], ptr %cmd.i, i32 0, i32 5
  %21 = getelementptr inbounds [7 x i8], ptr %cmd.i, i32 0, i32 6
  %22 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 4, ptr %cmd.i, align 1
  %23 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %16, align 1
  %24 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 5, ptr %17, align 1
  %25 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %18, align 1
  %26 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 47, ptr %19, align 1
  %27 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %20, align 1
  %28 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 66, ptr %21, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %resp_data.i) #9
  %29 = call ptr @memset(ptr %resp_data.i, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp_len.i) #9
  %30 = ptrtoint ptr %resp_len.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 6, ptr %resp_len.i, align 4
  %call.i = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %cyapa, ptr noundef nonnull %cmd.i, i32 noundef 7, ptr noundef nonnull %resp_data.i, ptr noundef nonnull %resp_len.i, i32 noundef 500, ptr noundef nonnull @cyapa_sort_tsg_pip_app_resp_data, i1 noundef zeroext false) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len.i) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %resp_data.i) #9
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %cmd.i) #9
  %call2.i = call i32 @cyapa_pip_deep_sleep(ptr noundef %cyapa, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not = icmp eq i32 %call2.i, 0
  br i1 %tobool.not, label %if.end48, label %do.end

do.end:                                           ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef %call2.i) #12
  br label %cleanup

if.end48:                                         ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %dev_pwr_mode to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %dev_pwr_mode, align 2
  br label %cleanup

if.end50:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp53 = icmp eq i8 %12, 0
  br i1 %cmp53, label %if.then55, label %if.end50.if.end63_crit_edge

if.end50.if.end63_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

if.then55:                                        ; preds = %if.end50
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %ping.i192) #9
  %32 = call ptr @memcpy(ptr %ping.i192, ptr @__const.cyapa_gen6_deep_sleep.ping, i32 7)
  %call.i193 = call i32 @cyapa_i2c_pip_write(ptr noundef %cyapa, ptr noundef nonnull %ping.i192, i32 noundef 7) #9
  %call2.i194 = call i32 @cyapa_pip_deep_sleep(ptr noundef %cyapa, i8 noundef zeroext 0) #9
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %ping.i192) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i194)
  %tobool57.not = icmp eq i32 %call2.i194, 0
  br i1 %tobool57.not, label %if.then55.if.end63_crit_edge, label %do.end61

if.then55.if.end63_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

do.end61:                                         ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18, i32 noundef %call2.i194) #12
  br label %cleanup

if.end63:                                         ; preds = %if.then55.if.end63_crit_edge, %if.end50.if.end63_crit_edge
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %cmd.i195) #9
  %33 = getelementptr inbounds [7 x i8], ptr %cmd.i195, i32 0, i32 1
  %34 = getelementptr inbounds [7 x i8], ptr %cmd.i195, i32 0, i32 2
  %35 = getelementptr inbounds [7 x i8], ptr %cmd.i195, i32 0, i32 3
  %36 = getelementptr inbounds [7 x i8], ptr %cmd.i195, i32 0, i32 4
  %37 = getelementptr inbounds [7 x i8], ptr %cmd.i195, i32 0, i32 5
  %38 = getelementptr inbounds [7 x i8], ptr %cmd.i195, i32 0, i32 6
  %39 = ptrtoint ptr %cmd.i195 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 4, ptr %cmd.i195, align 1
  %40 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %33, align 1
  %41 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 5, ptr %34, align 1
  %42 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %35, align 1
  %43 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 47, ptr %36, align 1
  %44 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %37, align 1
  %45 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 66, ptr %38, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %resp_data.i196) #9
  %46 = call ptr @memset(ptr %resp_data.i196, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp_len.i197) #9
  %47 = ptrtoint ptr %resp_len.i197 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 6, ptr %resp_len.i197, align 4
  %call.i198 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %cyapa, ptr noundef nonnull %cmd.i195, i32 noundef 7, ptr noundef nonnull %resp_data.i196, ptr noundef nonnull %resp_len.i197, i32 noundef 500, ptr noundef nonnull @cyapa_sort_tsg_pip_app_resp_data, i1 noundef zeroext false) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len.i197) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %resp_data.i196) #9
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %cmd.i195) #9
  %48 = zext i8 %power_mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.32)
  switch i8 %power_mode, label %if.else90 [
    i8 -4, label %if.then68
    i8 4, label %if.then81
  ]

if.then68:                                        ; preds = %if.end63
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i199) #9
  %49 = getelementptr inbounds [8 x i8], ptr %cmd.i199, i32 0, i32 1
  %50 = getelementptr inbounds [8 x i8], ptr %cmd.i199, i32 0, i32 2
  %51 = getelementptr inbounds [8 x i8], ptr %cmd.i199, i32 0, i32 3
  %52 = getelementptr inbounds [8 x i8], ptr %cmd.i199, i32 0, i32 4
  %53 = getelementptr inbounds [8 x i8], ptr %cmd.i199, i32 0, i32 5
  %54 = getelementptr inbounds [8 x i8], ptr %cmd.i199, i32 0, i32 6
  %55 = getelementptr inbounds [8 x i8], ptr %cmd.i199, i32 0, i32 7
  %56 = ptrtoint ptr %cmd.i199 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 4, ptr %cmd.i199, align 1
  %57 = ptrtoint ptr %49 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %49, align 1
  %58 = ptrtoint ptr %50 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 6, ptr %50, align 1
  %59 = ptrtoint ptr %51 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %51, align 1
  %60 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 47, ptr %52, align 1
  %61 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %53, align 1
  %62 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 70, ptr %54, align 1
  %63 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %55, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %resp_data.i200) #9
  %64 = getelementptr inbounds [6 x i8], ptr %resp_data.i200, i32 0, i32 3
  %65 = getelementptr inbounds [6 x i8], ptr %resp_data.i200, i32 0, i32 4
  %66 = getelementptr inbounds [6 x i8], ptr %resp_data.i200, i32 0, i32 5
  %67 = call ptr @memset(ptr %resp_data.i200, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp_len.i201) #9
  %68 = ptrtoint ptr %resp_len.i201 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 6, ptr %resp_len.i201, align 4
  %call.i202 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %cyapa, ptr noundef nonnull %cmd.i199, i32 noundef 8, ptr noundef nonnull %resp_data.i200, ptr noundef nonnull %resp_len.i201, i32 noundef 500, ptr noundef nonnull @cyapa_sort_tsg_pip_app_resp_data, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i202)
  %tobool.not.i = icmp eq i32 %call.i202, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.then68
  %69 = getelementptr inbounds [6 x i8], ptr %resp_data.i200, i32 0, i32 2
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %69, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %71)
  %cmp.i = icmp eq i8 %71, 31
  br i1 %cmp.i, label %land.lhs.true.i, label %lor.lhs.false.i.do.end74_crit_edge

lor.lhs.false.i.do.end74_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end74

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %72 = ptrtoint ptr %64 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %64, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %cmp11.i = icmp eq i8 %73, 0
  br i1 %cmp11.i, label %land.lhs.true13.i, label %land.lhs.true.i.do.end74_crit_edge

land.lhs.true.i.do.end74_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end74

land.lhs.true13.i:                                ; preds = %land.lhs.true.i
  %74 = ptrtoint ptr %65 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %65, align 1
  %76 = and i8 %75, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 70, i8 %76)
  %cmp16.i = icmp eq i8 %76, 70
  br i1 %cmp16.i, label %if.end.i, label %land.lhs.true13.i.do.end74_crit_edge

land.lhs.true13.i.do.end74_crit_edge:             ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end74

if.then.i:                                        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i202)
  %cmp18.i = icmp slt i32 %call.i202, 0
  %spec.select = select i1 %cmp18.i, i32 %call.i202, i32 -22
  br label %do.end74

if.end.i:                                         ; preds = %land.lhs.true13.i
  %77 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %66, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %78)
  %cmp23.not.i = icmp eq i8 %78, 1
  br i1 %cmp23.not.i, label %if.end75, label %if.end.i.do.end74_crit_edge

if.end.i.do.end74_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end74

do.end74:                                         ; preds = %if.end.i.do.end74_crit_edge, %if.then.i, %land.lhs.true13.i.do.end74_crit_edge, %land.lhs.true.i.do.end74_crit_edge, %lor.lhs.false.i.do.end74_crit_edge
  %retval.0.i.ph = phi i32 [ -11, %if.end.i.do.end74_crit_edge ], [ -22, %land.lhs.true13.i.do.end74_crit_edge ], [ -22, %land.lhs.true.i.do.end74_crit_edge ], [ -22, %lor.lhs.false.i.do.end74_crit_edge ], [ %spec.select, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len.i201) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %resp_data.i200) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i199) #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21, i32 noundef %retval.0.i.ph) #12
  br label %out

if.end75:                                         ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len.i201) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %resp_data.i200) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i199) #9
  %79 = ptrtoint ptr %dev_pwr_mode to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 -4, ptr %dev_pwr_mode, align 2
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %cmd.i203) #9
  %80 = call ptr @memcpy(ptr %cmd.i203, ptr @__const.cyapa_gen6_get_interval_setting.cmd, i32 7)
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %resp_data.i204) #9
  %81 = getelementptr inbounds [11 x i8], ptr %resp_data.i204, i32 0, i32 3
  %82 = getelementptr inbounds [11 x i8], ptr %resp_data.i204, i32 0, i32 4
  %83 = getelementptr inbounds [11 x i8], ptr %resp_data.i204, i32 0, i32 5
  %84 = getelementptr inbounds [11 x i8], ptr %resp_data.i204, i32 0, i32 7
  %85 = getelementptr inbounds [11 x i8], ptr %resp_data.i204, i32 0, i32 9
  %86 = call ptr @memset(ptr %resp_data.i204, i32 255, i32 11)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp_len.i205) #9
  %87 = ptrtoint ptr %resp_len.i205 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 11, ptr %resp_len.i205, align 4
  %call.i206 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %cyapa, ptr noundef nonnull %cmd.i203, i32 noundef 7, ptr noundef nonnull %resp_data.i204, ptr noundef nonnull %resp_len.i205, i32 noundef 500, ptr noundef nonnull @cyapa_sort_tsg_pip_app_resp_data, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i206)
  %tobool.not.i207 = icmp eq i32 %call.i206, 0
  br i1 %tobool.not.i207, label %lor.lhs.false.i209, label %if.end75.cyapa_gen6_get_interval_setting.exit_crit_edge

if.end75.cyapa_gen6_get_interval_setting.exit_crit_edge: ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %cyapa_gen6_get_interval_setting.exit

lor.lhs.false.i209:                               ; preds = %if.end75
  %88 = getelementptr inbounds [11 x i8], ptr %resp_data.i204, i32 0, i32 2
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %88, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %90)
  %cmp.i208 = icmp eq i8 %90, 31
  br i1 %cmp.i208, label %land.lhs.true.i210, label %lor.lhs.false.i209.cyapa_gen6_get_interval_setting.exit_crit_edge

lor.lhs.false.i209.cyapa_gen6_get_interval_setting.exit_crit_edge: ; preds = %lor.lhs.false.i209
  call void @__sanitizer_cov_trace_pc() #11
  br label %cyapa_gen6_get_interval_setting.exit

land.lhs.true.i210:                               ; preds = %lor.lhs.false.i209
  %91 = ptrtoint ptr %81 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %81, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %cmp5.i = icmp eq i8 %92, 0
  br i1 %cmp5.i, label %land.lhs.true7.i, label %land.lhs.true.i210.cyapa_gen6_get_interval_setting.exit_crit_edge

land.lhs.true.i210.cyapa_gen6_get_interval_setting.exit_crit_edge: ; preds = %land.lhs.true.i210
  call void @__sanitizer_cov_trace_pc() #11
  br label %cyapa_gen6_get_interval_setting.exit

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i210
  %93 = ptrtoint ptr %82 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %82, align 1
  %95 = and i8 %94, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 72, i8 %95)
  %cmp10.i = icmp eq i8 %95, 72
  br i1 %cmp10.i, label %if.end.i211, label %land.lhs.true7.i.cyapa_gen6_get_interval_setting.exit_crit_edge

land.lhs.true7.i.cyapa_gen6_get_interval_setting.exit_crit_edge: ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cyapa_gen6_get_interval_setting.exit

if.end.i211:                                      ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #11
  %96 = ptrtoint ptr %83 to i32
  call void @__asan_loadN_noabort(i32 %96, i32 2)
  %97 = load i16, ptr %83, align 1
  %98 = call i16 @llvm.bswap.i16(i16 %97) #9
  %99 = ptrtoint ptr %gen6_interval_setting to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %98, ptr %gen6_interval_setting, align 2
  %100 = ptrtoint ptr %84 to i32
  call void @__asan_loadN_noabort(i32 %100, i32 2)
  %101 = load i16, ptr %84, align 1
  %102 = call i16 @llvm.bswap.i16(i16 %101) #9
  %lp1_interval.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 15, i32 1
  %103 = ptrtoint ptr %lp1_interval.i to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %102, ptr %lp1_interval.i, align 2
  %104 = ptrtoint ptr %85 to i32
  call void @__asan_loadN_noabort(i32 %104, i32 2)
  %105 = load i16, ptr %85, align 1
  %106 = call i16 @llvm.bswap.i16(i16 %105) #9
  %lp2_interval.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 15, i32 2
  %107 = ptrtoint ptr %lp2_interval.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %106, ptr %lp2_interval.i, align 2
  br label %cyapa_gen6_get_interval_setting.exit

cyapa_gen6_get_interval_setting.exit:             ; preds = %if.end.i211, %land.lhs.true7.i.cyapa_gen6_get_interval_setting.exit_crit_edge, %land.lhs.true.i210.cyapa_gen6_get_interval_setting.exit_crit_edge, %lor.lhs.false.i209.cyapa_gen6_get_interval_setting.exit_crit_edge, %if.end75.cyapa_gen6_get_interval_setting.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len.i205) #9
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %resp_data.i204) #9
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %cmd.i203) #9
  br label %out

if.then81:                                        ; preds = %if.end63
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i212) #9
  %108 = getelementptr inbounds [8 x i8], ptr %cmd.i212, i32 0, i32 1
  %109 = getelementptr inbounds [8 x i8], ptr %cmd.i212, i32 0, i32 2
  %110 = getelementptr inbounds [8 x i8], ptr %cmd.i212, i32 0, i32 3
  %111 = getelementptr inbounds [8 x i8], ptr %cmd.i212, i32 0, i32 4
  %112 = getelementptr inbounds [8 x i8], ptr %cmd.i212, i32 0, i32 5
  %113 = getelementptr inbounds [8 x i8], ptr %cmd.i212, i32 0, i32 6
  %114 = getelementptr inbounds [8 x i8], ptr %cmd.i212, i32 0, i32 7
  %115 = ptrtoint ptr %cmd.i212 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 4, ptr %cmd.i212, align 1
  %116 = ptrtoint ptr %108 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 0, ptr %108, align 1
  %117 = ptrtoint ptr %109 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 6, ptr %109, align 1
  %118 = ptrtoint ptr %110 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 0, ptr %110, align 1
  %119 = ptrtoint ptr %111 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 47, ptr %111, align 1
  %120 = ptrtoint ptr %112 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 0, ptr %112, align 1
  %121 = ptrtoint ptr %113 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 70, ptr %113, align 1
  %122 = ptrtoint ptr %114 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 4, ptr %114, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %resp_data.i213) #9
  %123 = getelementptr inbounds [6 x i8], ptr %resp_data.i213, i32 0, i32 3
  %124 = getelementptr inbounds [6 x i8], ptr %resp_data.i213, i32 0, i32 4
  %125 = getelementptr inbounds [6 x i8], ptr %resp_data.i213, i32 0, i32 5
  %126 = call ptr @memset(ptr %resp_data.i213, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp_len.i214) #9
  %127 = ptrtoint ptr %resp_len.i214 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 6, ptr %resp_len.i214, align 4
  %call.i215 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %cyapa, ptr noundef nonnull %cmd.i212, i32 noundef 8, ptr noundef nonnull %resp_data.i213, ptr noundef nonnull %resp_len.i214, i32 noundef 500, ptr noundef nonnull @cyapa_sort_tsg_pip_app_resp_data, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i215)
  %tobool.not.i216 = icmp eq i32 %call.i215, 0
  br i1 %tobool.not.i216, label %lor.lhs.false.i218, label %if.then.i225

lor.lhs.false.i218:                               ; preds = %if.then81
  %128 = getelementptr inbounds [6 x i8], ptr %resp_data.i213, i32 0, i32 2
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %128, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %130)
  %cmp.i217 = icmp eq i8 %130, 31
  br i1 %cmp.i217, label %land.lhs.true.i220, label %lor.lhs.false.i218.do.end87_crit_edge

lor.lhs.false.i218.do.end87_crit_edge:            ; preds = %lor.lhs.false.i218
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end87

land.lhs.true.i220:                               ; preds = %lor.lhs.false.i218
  %131 = ptrtoint ptr %123 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %123, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %cmp11.i219 = icmp eq i8 %132, 0
  br i1 %cmp11.i219, label %land.lhs.true13.i222, label %land.lhs.true.i220.do.end87_crit_edge

land.lhs.true.i220.do.end87_crit_edge:            ; preds = %land.lhs.true.i220
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end87

land.lhs.true13.i222:                             ; preds = %land.lhs.true.i220
  %133 = ptrtoint ptr %124 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %124, align 1
  %135 = and i8 %134, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 70, i8 %135)
  %cmp16.i221 = icmp eq i8 %135, 70
  br i1 %cmp16.i221, label %if.end.i228, label %land.lhs.true13.i222.do.end87_crit_edge

land.lhs.true13.i222.do.end87_crit_edge:          ; preds = %land.lhs.true13.i222
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end87

if.then.i225:                                     ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i215)
  %cmp18.i223 = icmp slt i32 %call.i215, 0
  %spec.select271 = select i1 %cmp18.i223, i32 %call.i215, i32 -22
  br label %do.end87

if.end.i228:                                      ; preds = %land.lhs.true13.i222
  %136 = ptrtoint ptr %125 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %125, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %137)
  %cmp23.not.i226 = icmp eq i8 %137, 4
  br i1 %cmp23.not.i226, label %if.end88, label %if.end.i228.do.end87_crit_edge

if.end.i228.do.end87_crit_edge:                   ; preds = %if.end.i228
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end87

do.end87:                                         ; preds = %if.end.i228.do.end87_crit_edge, %if.then.i225, %land.lhs.true13.i222.do.end87_crit_edge, %land.lhs.true.i220.do.end87_crit_edge, %lor.lhs.false.i218.do.end87_crit_edge
  %retval.0.i229.ph = phi i32 [ -11, %if.end.i228.do.end87_crit_edge ], [ -22, %land.lhs.true13.i222.do.end87_crit_edge ], [ -22, %land.lhs.true.i220.do.end87_crit_edge ], [ -22, %lor.lhs.false.i218.do.end87_crit_edge ], [ %spec.select271, %if.then.i225 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len.i214) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %resp_data.i213) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i212) #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24, i32 noundef %retval.0.i229.ph) #12
  br label %out

if.end88:                                         ; preds = %if.end.i228
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len.i214) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %resp_data.i213) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i212) #9
  %138 = ptrtoint ptr %dev_pwr_mode to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 4, ptr %dev_pwr_mode, align 2
  br label %out

if.else90:                                        ; preds = %if.end63
  %lp1_interval = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 15, i32 1
  %139 = ptrtoint ptr %lp1_interval to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %lp1_interval, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %140, i16 %sleep_time)
  %cmp93 = icmp eq i16 %140, %sleep_time
  br i1 %cmp93, label %if.else90.if.end114_crit_edge, label %if.else96

if.else90.if.end114_crit_edge:                    ; preds = %if.else90
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end114

if.else96:                                        ; preds = %if.else90
  %lp2_interval = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 15, i32 2
  %141 = ptrtoint ptr %lp2_interval to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %lp2_interval, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %142, i16 %sleep_time)
  %cmp99 = icmp eq i16 %142, %sleep_time
  br i1 %cmp99, label %if.else96.if.end114_crit_edge, label %if.else102

if.else96.if.end114_crit_edge:                    ; preds = %if.else96
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end114

if.else102:                                       ; preds = %if.else96
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %140)
  %cmp105 = icmp eq i16 %140, 0
  %lp1_interval.lp2_interval = select i1 %cmp105, ptr %lp1_interval, ptr %lp2_interval
  %. = select i1 %cmp105, i8 2, i8 3
  %143 = ptrtoint ptr %lp1_interval.lp2_interval to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 %sleep_time, ptr %lp1_interval.lp2_interval, align 2
  call fastcc void @cyapa_gen6_set_interval_setting(ptr noundef %cyapa, ptr noundef %gen6_interval_setting)
  br label %if.end114

if.end114:                                        ; preds = %if.else102, %if.else96.if.end114_crit_edge, %if.else90.if.end114_crit_edge
  %lp_mode.1 = phi i8 [ %., %if.else102 ], [ 2, %if.else90.if.end114_crit_edge ], [ 3, %if.else96.if.end114_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i231) #9
  %144 = getelementptr inbounds [8 x i8], ptr %cmd.i231, i32 0, i32 1
  %145 = getelementptr inbounds [8 x i8], ptr %cmd.i231, i32 0, i32 2
  %146 = getelementptr inbounds [8 x i8], ptr %cmd.i231, i32 0, i32 3
  %147 = getelementptr inbounds [8 x i8], ptr %cmd.i231, i32 0, i32 4
  %148 = getelementptr inbounds [8 x i8], ptr %cmd.i231, i32 0, i32 5
  %149 = getelementptr inbounds [8 x i8], ptr %cmd.i231, i32 0, i32 6
  %150 = getelementptr inbounds [8 x i8], ptr %cmd.i231, i32 0, i32 7
  %151 = ptrtoint ptr %cmd.i231 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 4, ptr %cmd.i231, align 1
  %152 = ptrtoint ptr %144 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 0, ptr %144, align 1
  %153 = ptrtoint ptr %145 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 6, ptr %145, align 1
  %154 = ptrtoint ptr %146 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 0, ptr %146, align 1
  %155 = ptrtoint ptr %147 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 47, ptr %147, align 1
  %156 = ptrtoint ptr %148 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 0, ptr %148, align 1
  %157 = ptrtoint ptr %149 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 70, ptr %149, align 1
  %158 = ptrtoint ptr %150 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %lp_mode.1, ptr %150, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %resp_data.i232) #9
  %159 = getelementptr inbounds [6 x i8], ptr %resp_data.i232, i32 0, i32 3
  %160 = getelementptr inbounds [6 x i8], ptr %resp_data.i232, i32 0, i32 4
  %161 = getelementptr inbounds [6 x i8], ptr %resp_data.i232, i32 0, i32 5
  %162 = call ptr @memset(ptr %resp_data.i232, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp_len.i233) #9
  %163 = ptrtoint ptr %resp_len.i233 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 6, ptr %resp_len.i233, align 4
  %call.i234 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %cyapa, ptr noundef nonnull %cmd.i231, i32 noundef 8, ptr noundef nonnull %resp_data.i232, ptr noundef nonnull %resp_len.i233, i32 noundef 500, ptr noundef nonnull @cyapa_sort_tsg_pip_app_resp_data, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i234)
  %tobool.not.i235 = icmp eq i32 %call.i234, 0
  br i1 %tobool.not.i235, label %lor.lhs.false.i237, label %if.then.i244

lor.lhs.false.i237:                               ; preds = %if.end114
  %164 = getelementptr inbounds [6 x i8], ptr %resp_data.i232, i32 0, i32 2
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %164, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %166)
  %cmp.i236 = icmp eq i8 %166, 31
  br i1 %cmp.i236, label %land.lhs.true.i239, label %lor.lhs.false.i237.do.end120_crit_edge

lor.lhs.false.i237.do.end120_crit_edge:           ; preds = %lor.lhs.false.i237
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end120

land.lhs.true.i239:                               ; preds = %lor.lhs.false.i237
  %167 = ptrtoint ptr %159 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %159, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %168)
  %cmp11.i238 = icmp eq i8 %168, 0
  br i1 %cmp11.i238, label %land.lhs.true13.i241, label %land.lhs.true.i239.do.end120_crit_edge

land.lhs.true.i239.do.end120_crit_edge:           ; preds = %land.lhs.true.i239
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end120

land.lhs.true13.i241:                             ; preds = %land.lhs.true.i239
  %169 = ptrtoint ptr %160 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %160, align 1
  %171 = and i8 %170, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 70, i8 %171)
  %cmp16.i240 = icmp eq i8 %171, 70
  br i1 %cmp16.i240, label %if.end.i247, label %land.lhs.true13.i241.do.end120_crit_edge

land.lhs.true13.i241.do.end120_crit_edge:         ; preds = %land.lhs.true13.i241
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end120

if.then.i244:                                     ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i234)
  %cmp18.i242 = icmp slt i32 %call.i234, 0
  %spec.select272 = select i1 %cmp18.i242, i32 %call.i234, i32 -22
  br label %do.end120

if.end.i247:                                      ; preds = %land.lhs.true13.i241
  %172 = ptrtoint ptr %161 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %161, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %173, i8 %lp_mode.1)
  %cmp23.not.i245 = icmp eq i8 %173, %lp_mode.1
  br i1 %cmp23.not.i245, label %if.end122, label %if.end.i247.do.end120_crit_edge

if.end.i247.do.end120_crit_edge:                  ; preds = %if.end.i247
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end120

do.end120:                                        ; preds = %if.end.i247.do.end120_crit_edge, %if.then.i244, %land.lhs.true13.i241.do.end120_crit_edge, %land.lhs.true.i239.do.end120_crit_edge, %lor.lhs.false.i237.do.end120_crit_edge
  %retval.0.i248.ph = phi i32 [ -11, %if.end.i247.do.end120_crit_edge ], [ -22, %land.lhs.true13.i241.do.end120_crit_edge ], [ -22, %land.lhs.true.i239.do.end120_crit_edge ], [ -22, %lor.lhs.false.i237.do.end120_crit_edge ], [ %spec.select272, %if.then.i244 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len.i233) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %resp_data.i232) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i231) #9
  %conv121 = zext i8 %lp_mode.1 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.27, i32 noundef %conv121, i32 noundef %retval.0.i248.ph) #12
  br label %out

if.end122:                                        ; preds = %if.end.i247
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len.i233) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %resp_data.i232) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i231) #9
  %174 = ptrtoint ptr %dev_sleep_time to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 %sleep_time, ptr %dev_sleep_time, align 4
  %call124 = call zeroext i8 @cyapa_sleep_time_to_pwr_cmd(i16 noundef zeroext %sleep_time) #9
  %175 = ptrtoint ptr %dev_pwr_mode to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 %call124, ptr %dev_pwr_mode, align 2
  br label %out

out:                                              ; preds = %if.end122, %do.end120, %if.end88, %do.end87, %cyapa_gen6_get_interval_setting.exit, %do.end74
  %error.0 = phi i32 [ %retval.0.i.ph, %do.end74 ], [ 0, %cyapa_gen6_get_interval_setting.exit ], [ %retval.0.i229.ph, %do.end87 ], [ 0, %if.end88 ], [ %retval.0.i248.ph, %do.end120 ], [ 0, %if.end122 ]
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %cmd.i250) #9
  %176 = getelementptr inbounds [7 x i8], ptr %cmd.i250, i32 0, i32 1
  %177 = getelementptr inbounds [7 x i8], ptr %cmd.i250, i32 0, i32 2
  %178 = getelementptr inbounds [7 x i8], ptr %cmd.i250, i32 0, i32 3
  %179 = getelementptr inbounds [7 x i8], ptr %cmd.i250, i32 0, i32 4
  %180 = getelementptr inbounds [7 x i8], ptr %cmd.i250, i32 0, i32 5
  %181 = getelementptr inbounds [7 x i8], ptr %cmd.i250, i32 0, i32 6
  %182 = ptrtoint ptr %cmd.i250 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 4, ptr %cmd.i250, align 1
  %183 = ptrtoint ptr %176 to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 0, ptr %176, align 1
  %184 = ptrtoint ptr %177 to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 5, ptr %177, align 1
  %185 = ptrtoint ptr %178 to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 0, ptr %178, align 1
  %186 = ptrtoint ptr %179 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 47, ptr %179, align 1
  %187 = ptrtoint ptr %180 to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 0, ptr %180, align 1
  %188 = ptrtoint ptr %181 to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 65, ptr %181, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %resp_data.i251) #9
  %189 = call ptr @memset(ptr %resp_data.i251, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp_len.i252) #9
  %190 = ptrtoint ptr %resp_len.i252 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 6, ptr %resp_len.i252, align 4
  %call.i253 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %cyapa, ptr noundef nonnull %cmd.i250, i32 noundef 7, ptr noundef nonnull %resp_data.i251, ptr noundef nonnull %resp_len.i252, i32 noundef 500, ptr noundef nonnull @cyapa_sort_tsg_pip_app_resp_data, i1 noundef zeroext false) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len.i252) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %resp_data.i251) #9
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %cmd.i250) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end61, %if.end48, %do.end, %lor.lhs.false33.cleanup_crit_edge, %if.then22.cleanup_crit_edge, %if.then22.cleanup_crit_edge273, %if.then22.cleanup_crit_edge274, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2.i, %do.end ], [ 0, %if.end48 ], [ %call2.i194, %do.end61 ], [ %error.0, %out ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then22.cleanup_crit_edge ], [ 0, %if.then22.cleanup_crit_edge273 ], [ 0, %if.then22.cleanup_crit_edge274 ], [ 0, %lor.lhs.false33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cyapa_gen6_set_proximity(ptr noundef %cyapa, i1 noundef zeroext %enable) #0 align 64 {
entry:
  %cmd.i5 = alloca [7 x i8], align 1
  %resp_data.i6 = alloca [6 x i8], align 1
  %resp_len.i7 = alloca i32, align 4
  %cmd.i = alloca [7 x i8], align 1
  %resp_data.i = alloca [6 x i8], align 1
  %resp_len.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %cmd.i) #9
  %0 = getelementptr inbounds [7 x i8], ptr %cmd.i, i32 0, i32 1
  %1 = getelementptr inbounds [7 x i8], ptr %cmd.i, i32 0, i32 2
  %2 = getelementptr inbounds [7 x i8], ptr %cmd.i, i32 0, i32 3
  %3 = getelementptr inbounds [7 x i8], ptr %cmd.i, i32 0, i32 4
  %4 = getelementptr inbounds [7 x i8], ptr %cmd.i, i32 0, i32 5
  %5 = getelementptr inbounds [7 x i8], ptr %cmd.i, i32 0, i32 6
  %6 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 4, ptr %cmd.i, align 1
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %0, align 1
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 5, ptr %1, align 1
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %2, align 1
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 47, ptr %3, align 1
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %4, align 1
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 66, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %resp_data.i) #9
  %13 = call ptr @memset(ptr %resp_data.i, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp_len.i) #9
  %14 = ptrtoint ptr %resp_len.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 6, ptr %resp_len.i, align 4
  %call.i = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %cyapa, ptr noundef nonnull %cmd.i, i32 noundef 7, ptr noundef nonnull %resp_data.i, ptr noundef nonnull %resp_len.i, i32 noundef 500, ptr noundef nonnull @cyapa_sort_tsg_pip_app_resp_data, i1 noundef zeroext false) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len.i) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %resp_data.i) #9
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %cmd.i) #9
  %call1 = call i32 @cyapa_pip_set_proximity(ptr noundef %cyapa, i1 noundef zeroext %enable) #9
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %cmd.i5) #9
  %15 = getelementptr inbounds [7 x i8], ptr %cmd.i5, i32 0, i32 1
  %16 = getelementptr inbounds [7 x i8], ptr %cmd.i5, i32 0, i32 2
  %17 = getelementptr inbounds [7 x i8], ptr %cmd.i5, i32 0, i32 3
  %18 = getelementptr inbounds [7 x i8], ptr %cmd.i5, i32 0, i32 4
  %19 = getelementptr inbounds [7 x i8], ptr %cmd.i5, i32 0, i32 5
  %20 = getelementptr inbounds [7 x i8], ptr %cmd.i5, i32 0, i32 6
  %21 = ptrtoint ptr %cmd.i5 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 4, ptr %cmd.i5, align 1
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %15, align 1
  %23 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 5, ptr %16, align 1
  %24 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %17, align 1
  %25 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 47, ptr %18, align 1
  %26 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %19, align 1
  %27 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 65, ptr %20, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %resp_data.i6) #9
  %28 = call ptr @memset(ptr %resp_data.i6, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp_len.i7) #9
  %29 = ptrtoint ptr %resp_len.i7 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 6, ptr %resp_len.i7, align 4
  %call.i8 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %cyapa, ptr noundef nonnull %cmd.i5, i32 noundef 7, ptr noundef nonnull %resp_data.i6, ptr noundef nonnull %resp_len.i7, i32 noundef 500, ptr noundef nonnull @cyapa_sort_tsg_pip_app_resp_data, i1 noundef zeroext false) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len.i7) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %resp_data.i6) #9
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %cmd.i5) #9
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cyapa_sort_tsg_pip_bl_resp_data(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cyapa_pip_sort_system_info_data(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cyapa_is_pip_app_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cyapa_pip_suspend_scanning(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cyapa_pip_resume_scanning(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cyapa_sort_tsg_pip_app_resp_data(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cyapa_pip_bl_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cyapa_pip_set_proximity(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cyapa_gen6_set_interval_setting(ptr noundef %cyapa, ptr nocapture noundef %interval_setting) unnamed_addr #0 align 64 {
entry:
  %set_interval_cmd = alloca %struct.gen6_set_interval_cmd, align 2
  %resp_data = alloca [11 x i8], align 1
  %resp_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %set_interval_cmd) #9
  %0 = getelementptr inbounds %struct.gen6_set_interval_cmd, ptr %set_interval_cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.gen6_set_interval_cmd, ptr %set_interval_cmd, i32 0, i32 2
  %2 = getelementptr inbounds %struct.gen6_set_interval_cmd, ptr %set_interval_cmd, i32 0, i32 4
  %3 = getelementptr inbounds %struct.gen6_set_interval_cmd, ptr %set_interval_cmd, i32 0, i32 5
  %4 = getelementptr inbounds %struct.gen6_set_interval_cmd, ptr %set_interval_cmd, i32 0, i32 6
  %5 = getelementptr inbounds %struct.gen6_set_interval_cmd, ptr %set_interval_cmd, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %resp_data) #9
  %6 = getelementptr inbounds [11 x i8], ptr %resp_data, i32 0, i32 3
  %7 = getelementptr inbounds [11 x i8], ptr %resp_data, i32 0, i32 4
  %8 = getelementptr inbounds [11 x i8], ptr %resp_data, i32 0, i32 5
  %9 = getelementptr inbounds [11 x i8], ptr %resp_data, i32 0, i32 7
  %10 = getelementptr inbounds [11 x i8], ptr %resp_data, i32 0, i32 9
  %11 = call ptr @memset(ptr %resp_data, i32 255, i32 11)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp_len) #9
  %12 = getelementptr inbounds i8, ptr %set_interval_cmd, i32 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %12, align 2
  %14 = ptrtoint ptr %set_interval_cmd to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1024, ptr %set_interval_cmd, align 2
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 2816, ptr %0, align 2
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 47, ptr %1, align 2
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 71, ptr %2, align 2
  %18 = ptrtoint ptr %interval_setting to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %interval_setting, align 2
  %20 = tail call i16 @llvm.bswap.i16(i16 %19) #9
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 %20, ptr %3, align 1
  %lp1_interval = getelementptr inbounds %struct.gen6_interval_setting, ptr %interval_setting, i32 0, i32 1
  %22 = ptrtoint ptr %lp1_interval to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %lp1_interval, align 2
  %24 = tail call i16 @llvm.bswap.i16(i16 %23) #9
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 %24, ptr %4, align 1
  %lp2_interval = getelementptr inbounds %struct.gen6_interval_setting, ptr %interval_setting, i32 0, i32 2
  %26 = ptrtoint ptr %lp2_interval to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %lp2_interval, align 2
  %28 = tail call i16 @llvm.bswap.i16(i16 %27) #9
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 %28, ptr %5, align 1
  %30 = ptrtoint ptr %resp_len to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 11, ptr %resp_len, align 4
  %call = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %cyapa, ptr noundef nonnull %set_interval_cmd, i32 noundef 13, ptr noundef nonnull %resp_data, ptr noundef nonnull %resp_len, i32 noundef 500, ptr noundef nonnull @cyapa_sort_tsg_pip_app_resp_data, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %31 = getelementptr inbounds [11 x i8], ptr %resp_data, i32 0, i32 2
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %33)
  %cmp = icmp eq i8 %33, 31
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %lor.lhs.false
  %34 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp7 = icmp eq i8 %35, 0
  br i1 %cmp7, label %land.lhs.true9, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true9:                                   ; preds = %land.lhs.true
  %36 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %7, align 1
  %38 = and i8 %37, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 71, i8 %38)
  %cmp12 = icmp eq i8 %38, 71
  br i1 %cmp12, label %if.end, label %land.lhs.true9.cleanup_crit_edge

land.lhs.true9.cleanup_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %8 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %40 = load i16, ptr %8, align 1
  %41 = call i16 @llvm.bswap.i16(i16 %40) #9
  %42 = ptrtoint ptr %interval_setting to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %interval_setting, align 2
  %43 = ptrtoint ptr %9 to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %44 = load i16, ptr %9, align 1
  %45 = call i16 @llvm.bswap.i16(i16 %44) #9
  %46 = ptrtoint ptr %lp1_interval to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %lp1_interval, align 2
  %47 = ptrtoint ptr %10 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 2)
  %48 = load i16, ptr %10, align 1
  %49 = call i16 @llvm.bswap.i16(i16 %48) #9
  %50 = ptrtoint ptr %lp2_interval to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %lp2_interval, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true9.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len) #9
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %resp_data) #9
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %set_interval_cmd) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @cyapa_sleep_time_to_pwr_cmd(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cyapa_i2c_pip_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @cyapa_gen6_ops, !1, !"cyapa_gen6_ops", i1 false, i1 false}
!1 = !{!"../drivers/input/mouse/cyapa_gen6.c", i32 724, i32 28}
!2 = !{ptr @pip_get_bl_info, !3, !"pip_get_bl_info", i1 false, i1 false}
!3 = !{!"../drivers/input/mouse/cyapa_gen6.c", i32 70, i32 11}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/input/mouse/cyapa_gen6.c", i32 632, i32 35}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/input/mouse/cyapa_gen6.c", i32 651, i32 51}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/input/mouse/cyapa_gen6.c", i32 652, i32 50}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/mouse/cyapa_gen6.c", i32 695, i32 4}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @cyapa_gen6_operational_check._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @cyapa_gen6_operational_check._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/input/mouse/cyapa_gen6.c", i32 701, i32 4}
!20 = !{ptr @cyapa_gen6_operational_check._entry.8, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @cyapa_gen6_operational_check._entry_ptr.10, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/mouse/cyapa_gen6.c", i32 711, i32 4}
!24 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @cyapa_gen6_operational_check._entry.11, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @cyapa_gen6_operational_check._entry_ptr.14, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/input/mouse/cyapa_gen6.c", i32 467, i32 4}
!29 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @cyapa_gen6_set_power_mode._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @cyapa_gen6_set_power_mode._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/input/mouse/cyapa_gen6.c", i32 483, i32 4}
!34 = !{ptr @cyapa_gen6_set_power_mode._entry.17, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @cyapa_gen6_set_power_mode._entry_ptr.19, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.21, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/input/mouse/cyapa_gen6.c", i32 498, i32 4}
!38 = !{ptr @cyapa_gen6_set_power_mode._entry.20, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @cyapa_gen6_set_power_mode._entry_ptr.22, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.24, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/input/mouse/cyapa_gen6.c", i32 511, i32 4}
!42 = !{ptr @cyapa_gen6_set_power_mode._entry.23, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @cyapa_gen6_set_power_mode._entry_ptr.25, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.27, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/input/mouse/cyapa_gen6.c", i32 540, i32 4}
!46 = !{ptr @cyapa_gen6_set_power_mode._entry.26, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @cyapa_gen6_set_power_mode._entry_ptr.28, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
