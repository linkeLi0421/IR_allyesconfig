; ModuleID = '/llk/IR_all_yes/drivers/power/supply/tps65090-charger.c_pt.bc'
source_filename = "../drivers/power/supply/tps65090-charger.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.atomic_t = type { i32 }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.tps65090_platform_data = type { i32, ptr, i32, i32, [12 x ptr] }
%struct.tps65090_charger = type { ptr, i32, i32, i32, ptr, i8, ptr, ptr }
%struct.tps65090 = type { ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.24, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.3 }
%struct.llist_node = type { ptr }
%union.anon.3 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.24 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__initcall__kmod_tps65090_charger__187_356_tps65090_charger_driver_init6 = internal global ptr @tps65090_charger_driver_init, section ".initcall6.init", align 4
@tps65090_charger_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tps65090_charger_probe, ptr @tps65090_charger_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_tps65090_charger_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tps65090_charger_driver_exit = internal global ptr @tps65090_charger_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file188 = internal constant [60 x i8] c"tps65090_charger.file=drivers/power/supply/tps65090-charger\00", section ".modinfo", align 1
@__UNIQUE_ID_license189 = internal constant [32 x i8] c"tps65090_charger.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author190 = internal constant [63 x i8] c"tps65090_charger.author=Syed Rafiuddin <srafiuddin@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description191 = internal constant [61 x i8] c"tps65090_charger.description=tps65090 battery charger driver\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tps65090-charger\00", [47 x i8] zeroinitializer }, align 32
@of_tps65090_charger_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tps65090-charger\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@tps65090_charger_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 245, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s():no platform data available\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tps65090_charger_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/power/supply/tps65090-charger.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tps65090_charger_probe._entry_ptr = internal global ptr @tps65090_charger_probe._entry, section ".printk_index", align 4
@tps65090_charger_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 251, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to allocate memory status\0A\00", [62 x i8] zeroinitializer }, align 32
@tps65090_charger_probe._entry_ptr.8 = internal global ptr @tps65090_charger_probe._entry.6, section ".printk_index", align 4
@tps65090_charger_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str.31, i32 3, ptr null, i32 0, ptr @tps65090_ac_props, i32 1, ptr @tps65090_ac_get_property, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@tps65090_charger_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 268, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed: power supply register\0A\00", [33 x i8] zeroinitializer }, align 32
@tps65090_charger_probe._entry_ptr.11 = internal global ptr @tps65090_charger_probe._entry.9, section ".printk_index", align 4
@tps65090_charger_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 279, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"charger config failed, err %d\0A\00", [33 x i8] zeroinitializer }, align 32
@tps65090_charger_probe._entry_ptr.14 = internal global ptr @tps65090_charger_probe._entry.12, section ".printk_index", align 4
@tps65090_charger_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 288, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s(): Error in reading reg 0x%x\00", [32 x i8] zeroinitializer }, align 32
@tps65090_charger_probe._entry_ptr.17 = internal global ptr @tps65090_charger_probe._entry.15, section ".printk_index", align 4
@tps65090_charger_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 295, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"error enabling charger\0A\00", [40 x i8] zeroinitializer }, align 32
@tps65090_charger_probe._entry_ptr.20 = internal global ptr @tps65090_charger_probe._entry.18, section ".printk_index", align 4
@tps65090_charger_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 308, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to register irq %d err %d\0A\00", [62 x i8] zeroinitializer }, align 32
@tps65090_charger_probe._entry_ptr.23 = internal global ptr @tps65090_charger_probe._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ktps65090charger\00", [47 x i8] zeroinitializer }, align 32
@tps65090_charger_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 318, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unable to run kthread err %d\0A\00", [34 x i8] zeroinitializer }, align 32
@tps65090_charger_probe._entry_ptr.27 = internal global ptr @tps65090_charger_probe._entry.25, section ".printk_index", align 4
@tps65090_parse_dt_charger_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 196, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Memory alloc for tps65090_pdata failed\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"tps65090_parse_dt_charger_data\00", [33 x i8] zeroinitializer }, align 32
@tps65090_parse_dt_charger_data._entry_ptr = internal global ptr @tps65090_parse_dt_charger_data._entry, section ".printk_index", align 4
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ti,enable-low-current-chrg\00", [37 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tps65090-ac\00", [20 x i8] zeroinitializer }, align 32
@tps65090_ac_props = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 4], [28 x i8] zeroinitializer }, align 32
@tps65090_config_charger._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 99, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"error configuring low charge current\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tps65090_config_charger\00", [40 x i8] zeroinitializer }, align 32
@tps65090_config_charger._entry_ptr = internal global ptr @tps65090_config_charger._entry, section ".printk_index", align 4
@tps65090_config_charger._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.3, i32 109, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s(): error reading in register 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@tps65090_config_charger._entry_ptr.36 = internal global ptr @tps65090_config_charger._entry.34, section ".printk_index", align 4
@tps65090_config_charger._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.33, ptr @.str.3, i32 117, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s(): error writing in register 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@tps65090_config_charger._entry_ptr.39 = internal global ptr @tps65090_config_charger._entry.37, section ".printk_index", align 4
@tps65090_low_chrg_current._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.40, ptr @.str.3, i32 55, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tps65090_low_chrg_current\00", [38 x i8] zeroinitializer }, align 32
@tps65090_low_chrg_current._entry_ptr = internal global ptr @tps65090_low_chrg_current._entry, section ".printk_index", align 4
@tps65090_enable_charging._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.41, ptr @.str.3, i32 73, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tps65090_enable_charging\00", [39 x i8] zeroinitializer }, align 32
@tps65090_enable_charging._entry_ptr = internal global ptr @tps65090_enable_charging._entry, section ".printk_index", align 4
@tps65090_enable_charging._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.41, ptr @.str.3, i32 81, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@tps65090_enable_charging._entry_ptr.43 = internal global ptr @tps65090_enable_charging._entry.42, section ".printk_index", align 4
@tps65090_charger_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.3, i32 149, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s(): Error in reading reg 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tps65090_charger_isr\00", [43 x i8] zeroinitializer }, align 32
@tps65090_charger_isr._entry_ptr = internal global ptr @tps65090_charger_isr._entry, section ".printk_index", align 4
@tps65090_charger_isr._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.3, i32 157, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@tps65090_charger_isr._entry_ptr.47 = internal global ptr @tps65090_charger_isr._entry.46, section ".printk_index", align 4
@tps65090_charger_isr._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.45, ptr @.str.3, i32 177, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s(): Error in writing reg 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@tps65090_charger_isr._entry_ptr.50 = internal global ptr @tps65090_charger_isr._entry.48, section ".printk_index", align 4
@.str.51 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/freezer.h\00", [40 x i8] zeroinitializer }, align 32
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@___asan_gen_.52 = private unnamed_addr constant [24 x i8] c"tps65090_charger_driver\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 348, i32 31 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 350, i32 11 }
@___asan_gen_.58 = private unnamed_addr constant [26 x i8] c"of_tps65090_charger_match\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 342, i32 34 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 244, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 251, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [22 x i8] c"tps65090_charger_desc\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 221, i32 39 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 268, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 279, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 287, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 295, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 306, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 312, i32 22 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 317, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 196, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 200, i32 35 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 222, i32 12 }
@___asan_gen_.142 = private unnamed_addr constant [18 x i8] c"tps65090_ac_props\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 40, i32 35 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 98, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 108, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 116, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 54, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 72, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 80, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 148, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 156, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.197 = private constant [43 x i8] c"../drivers/power/supply/tps65090-charger.c\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 175, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.200 = private unnamed_addr constant [27 x i8] c"../include/linux/freezer.h\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 57, i32 2 }
@llvm.compiler.used = appending global [75 x ptr] [ptr @__UNIQUE_ID_author190, ptr @__UNIQUE_ID_description191, ptr @__UNIQUE_ID_file188, ptr @__UNIQUE_ID_license189, ptr @__exitcall_tps65090_charger_driver_exit, ptr @__initcall__kmod_tps65090_charger__187_356_tps65090_charger_driver_init6, ptr @tps65090_charger_driver_exit, ptr @tps65090_charger_isr._entry, ptr @tps65090_charger_isr._entry.46, ptr @tps65090_charger_isr._entry.48, ptr @tps65090_charger_isr._entry_ptr, ptr @tps65090_charger_isr._entry_ptr.47, ptr @tps65090_charger_isr._entry_ptr.50, ptr @tps65090_charger_probe._entry, ptr @tps65090_charger_probe._entry.12, ptr @tps65090_charger_probe._entry.15, ptr @tps65090_charger_probe._entry.18, ptr @tps65090_charger_probe._entry.21, ptr @tps65090_charger_probe._entry.25, ptr @tps65090_charger_probe._entry.6, ptr @tps65090_charger_probe._entry.9, ptr @tps65090_charger_probe._entry_ptr, ptr @tps65090_charger_probe._entry_ptr.11, ptr @tps65090_charger_probe._entry_ptr.14, ptr @tps65090_charger_probe._entry_ptr.17, ptr @tps65090_charger_probe._entry_ptr.20, ptr @tps65090_charger_probe._entry_ptr.23, ptr @tps65090_charger_probe._entry_ptr.27, ptr @tps65090_charger_probe._entry_ptr.8, ptr @tps65090_config_charger._entry, ptr @tps65090_config_charger._entry.34, ptr @tps65090_config_charger._entry.37, ptr @tps65090_config_charger._entry_ptr, ptr @tps65090_config_charger._entry_ptr.36, ptr @tps65090_config_charger._entry_ptr.39, ptr @tps65090_enable_charging._entry, ptr @tps65090_enable_charging._entry.42, ptr @tps65090_enable_charging._entry_ptr, ptr @tps65090_enable_charging._entry_ptr.43, ptr @tps65090_low_chrg_current._entry, ptr @tps65090_low_chrg_current._entry_ptr, ptr @tps65090_parse_dt_charger_data._entry, ptr @tps65090_parse_dt_charger_data._entry_ptr, ptr @tps65090_charger_driver, ptr @.str, ptr @of_tps65090_charger_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @tps65090_charger_desc, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @tps65090_ac_props, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.44, ptr @.str.45, ptr @.str.49, ptr @.str.51], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65090_charger_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_tps65090_charger_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65090_charger_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65090_charger_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65090_charger_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65090_charger_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65090_charger_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65090_charger_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65090_charger_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65090_charger_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65090_charger_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65090_parse_dt_charger_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65090_ac_props to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65090_config_charger._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65090_config_charger._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65090_config_charger._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65090_low_chrg_current._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65090_enable_charging._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65090_enable_charging._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65090_charger_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65090_charger_isr._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65090_charger_isr._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tps65090_charger_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tps65090_charger_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tps65090_charger_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @tps65090_charger_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps65090_charger_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %temp_val.i.i169 = alloca i32, align 4
  %temp_val.i = alloca i32, align 4
  %temp_val.i.i = alloca i32, align 4
  %psy_cfg = alloca %struct.power_supply_config, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %psy_cfg) #6
  %0 = getelementptr inbounds i8, ptr %psy_cfg, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %platform_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

land.lhs.true:                                    ; preds = %entry
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %if.then

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then:                                          ; preds = %land.lhs.true
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 64, i32 noundef 3520) #6
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28) #9
  br label %do.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call.i11.i = tail call ptr @of_find_property(ptr noundef nonnull %7, ptr noundef nonnull @.str.30, ptr noundef null) #6
  %tobool.i.i = icmp ne ptr %call.i11.i, null
  %conv.i = zext i1 %tobool.i.i to i32
  %enable_low_current_chrg.i = getelementptr inbounds %struct.tps65090_platform_data, ptr %call.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %enable_low_current_chrg.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv.i, ptr %enable_low_current_chrg.i, align 4
  %9 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %call.i.i, align 4
  br label %if.end7

do.end:                                           ; preds = %do.end.i, %land.lhs.true.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #9
  br label %cleanup

if.end7:                                          ; preds = %if.end.i, %entry.if.end7_crit_edge
  %pdata.0 = phi ptr [ %5, %entry.if.end7_crit_edge ], [ %call.i.i, %if.end.i ]
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 32, i32 noundef 3520) #6
  %tobool10.not = icmp eq ptr %call.i, null
  br i1 %tobool10.not, label %do.end14, label %if.end16

do.end14:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end16:                                         ; preds = %if.end7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev, ptr %call.i, align 4
  %pdata19 = getelementptr inbounds %struct.tps65090_charger, ptr %call.i, i32 0, i32 7
  %12 = ptrtoint ptr %pdata19 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %pdata.0, ptr %pdata19, align 4
  %supplied_to = getelementptr inbounds %struct.tps65090_platform_data, ptr %pdata.0, i32 0, i32 1
  %13 = ptrtoint ptr %supplied_to to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %supplied_to, align 4
  %supplied_to20 = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 4
  %15 = ptrtoint ptr %supplied_to20 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %supplied_to20, align 4
  %num_supplicants = getelementptr inbounds %struct.tps65090_platform_data, ptr %pdata.0, i32 0, i32 2
  %16 = ptrtoint ptr %num_supplicants to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_supplicants, align 4
  %num_supplicants21 = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 5
  %18 = ptrtoint ptr %num_supplicants21 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %num_supplicants21, align 4
  %of_node23 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %19 = ptrtoint ptr %of_node23 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node23, align 8
  %21 = ptrtoint ptr %psy_cfg to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %psy_cfg, align 4
  %drv_data = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 2
  %22 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %drv_data, align 4
  %call26 = call ptr @power_supply_register(ptr noundef %dev, ptr noundef nonnull @tps65090_charger_desc, ptr noundef nonnull %psy_cfg) #6
  %ac = getelementptr inbounds %struct.tps65090_charger, ptr %call.i, i32 0, i32 6
  %23 = ptrtoint ptr %ac to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call26, ptr %ac, align 4
  %cmp.i = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end32, label %if.end36

do.end32:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #9
  %24 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ac, align 4
  %26 = ptrtoint ptr %25 to i32
  br label %cleanup

if.end36:                                         ; preds = %if.end16
  %call37 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp = icmp slt i32 %call37, 0
  %spec.store.select = select i1 %cmp, i32 -6, i32 %call37
  %irq40 = getelementptr inbounds %struct.tps65090_charger, ptr %call.i, i32 0, i32 3
  %27 = ptrtoint ptr %irq40 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %spec.store.select, ptr %irq40, align 4
  %passive_mode.i = getelementptr inbounds %struct.tps65090_charger, ptr %call.i, i32 0, i32 5
  %28 = ptrtoint ptr %passive_mode.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %passive_mode.i, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i161 = icmp eq i8 %29, 0
  br i1 %tobool.not.i161, label %if.end.i163, label %if.end36.if.end48_crit_edge

if.end36.if.end48_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.end.i163:                                      ; preds = %if.end36
  %30 = ptrtoint ptr %pdata19 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdata19, align 4
  %enable_low_current_chrg.i162 = getelementptr inbounds %struct.tps65090_platform_data, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %enable_low_current_chrg.i162 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %enable_low_current_chrg.i162, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool1.not.i = icmp eq i32 %33, 0
  br i1 %tobool1.not.i, label %if.end.i163.if.end5.i_crit_edge, label %if.end.i.i

if.end.i163.if.end5.i_crit_edge:                  ; preds = %if.end.i163
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i

if.end.i.i:                                       ; preds = %if.end.i163
  %34 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call.i, align 4
  %parent.i.i = getelementptr inbounds %struct.device, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %parent.i.i, align 8
  %driver_data.i.i.i.i = getelementptr inbounds %struct.device, ptr %37, i32 0, i32 8
  %38 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %rmap.i.i.i = getelementptr inbounds %struct.tps65090, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %rmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rmap.i.i.i, align 4
  %call1.i.i.i = call i32 @regmap_write(ptr noundef %41, i32 noundef 9, i32 noundef 32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i.i, 0
  br i1 %cmp.i.i, label %do.end.i164, label %if.end.i.i.if.end5.i_crit_edge

if.end.i.i.if.end5.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i

do.end.i164:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.40, i32 noundef 9) #9
  %44 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.32) #9
  br label %do.end46

if.end5.i:                                        ; preds = %if.end.i.i.if.end5.i_crit_edge, %if.end.i163.if.end5.i_crit_edge
  %46 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %call.i, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %parent.i, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %49, i32 0, i32 8
  %50 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp_val.i.i) #6
  %52 = ptrtoint ptr %temp_val.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -1, ptr %temp_val.i.i, align 4, !annotation !116
  %rmap.i.i = getelementptr inbounds %struct.tps65090, ptr %51, i32 0, i32 1
  %53 = ptrtoint ptr %rmap.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rmap.i.i, align 4
  %call1.i.i = call i32 @regmap_read(ptr noundef %54, i32 noundef 2, ptr noundef nonnull %temp_val.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i40.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i40.i, label %tps65090_read.exit.thread.i, label %tps65090_read.exit.i

tps65090_read.exit.thread.i:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %temp_val.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %temp_val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp_val.i.i) #6
  %phi.bo.i = and i32 %56, 253
  %phi.cast.i = or i32 %phi.bo.i, 2
  br label %if.end14.i

tps65090_read.exit.i:                             ; preds = %if.end5.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp_val.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp8.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp8.i, label %do.end12.i, label %tps65090_read.exit.i.if.end14.i_crit_edge

tps65090_read.exit.i.if.end14.i_crit_edge:        ; preds = %tps65090_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.i

do.end12.i:                                       ; preds = %tps65090_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.33, i32 noundef 2) #9
  br label %do.end46

if.end14.i:                                       ; preds = %tps65090_read.exit.i.if.end14.i_crit_edge, %tps65090_read.exit.thread.i
  %intrmask.051.i = phi i32 [ %phi.cast.i, %tps65090_read.exit.thread.i ], [ 2, %tps65090_read.exit.i.if.end14.i_crit_edge ]
  %59 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %call.i, align 4
  %parent16.i = getelementptr inbounds %struct.device, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %parent16.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %parent16.i, align 8
  %driver_data.i.i42.i = getelementptr inbounds %struct.device, ptr %62, i32 0, i32 8
  %63 = ptrtoint ptr %driver_data.i.i42.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %driver_data.i.i42.i, align 4
  %rmap.i43.i = getelementptr inbounds %struct.tps65090, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %rmap.i43.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rmap.i43.i, align 4
  %call1.i45.i = call i32 @regmap_write(ptr noundef %66, i32 noundef 2, i32 noundef %intrmask.051.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i45.i)
  %cmp19.i = icmp slt i32 %call1.i45.i, 0
  br i1 %cmp19.i, label %do.end24.i, label %if.end14.i.if.end48_crit_edge

if.end14.i.if.end48_crit_edge:                    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

do.end24.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  %67 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.33, i32 noundef 4) #9
  br label %do.end46

do.end46:                                         ; preds = %do.end24.i, %do.end12.i, %do.end.i164
  %retval.0.i.ph = phi i32 [ %call1.i45.i, %do.end24.i ], [ %call1.i.i, %do.end12.i ], [ %call1.i.i.i, %do.end.i164 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %retval.0.i.ph) #9
  br label %fail_unregister_supply

if.end48:                                         ; preds = %if.end14.i.if.end48_crit_edge, %if.end36.if.end48_crit_edge
  %69 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %call.i, align 4
  %parent50 = getelementptr inbounds %struct.device, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %parent50 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %parent50, align 8
  %driver_data.i.i165 = getelementptr inbounds %struct.device, ptr %72, i32 0, i32 8
  %73 = ptrtoint ptr %driver_data.i.i165 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %driver_data.i.i165, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp_val.i) #6
  %75 = ptrtoint ptr %temp_val.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 -1, ptr %temp_val.i, align 4, !annotation !116
  %rmap.i = getelementptr inbounds %struct.tps65090, ptr %74, i32 0, i32 1
  %76 = ptrtoint ptr %rmap.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %rmap.i, align 4
  %call1.i = call i32 @regmap_read(ptr noundef %77, i32 noundef 10, ptr noundef nonnull %temp_val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i166 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i166, label %if.end58, label %tps65090_read.exit

tps65090_read.exit:                               ; preds = %if.end48
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp_val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp52 = icmp slt i32 %call1.i, 0
  br i1 %cmp52, label %do.end56, label %tps65090_read.exit.if.end72_crit_edge

tps65090_read.exit.if.end72_crit_edge:            ; preds = %tps65090_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

do.end56:                                         ; preds = %tps65090_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  %78 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.2, i32 noundef 10) #9
  br label %fail_unregister_supply

if.end58:                                         ; preds = %if.end48
  %80 = ptrtoint ptr %temp_val.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %temp_val.i, align 4
  %conv.i167 = trunc i32 %81 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp_val.i) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i167)
  %cmp59.not = icmp eq i8 %conv.i167, 0
  br i1 %cmp59.not, label %if.end58.if.end72_crit_edge, label %if.then61

if.end58.if.end72_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

if.then61:                                        ; preds = %if.end58
  %82 = ptrtoint ptr %passive_mode.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %passive_mode.i, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool.not.i171 = icmp eq i8 %83, 0
  br i1 %tobool.not.i171, label %if.end.i176, label %if.then61.if.end70_crit_edge

if.then61.if.end70_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

if.end.i176:                                      ; preds = %if.then61
  %84 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %call.i, align 4
  %parent.i172 = getelementptr inbounds %struct.device, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %parent.i172 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %parent.i172, align 8
  %driver_data.i.i.i173 = getelementptr inbounds %struct.device, ptr %87, i32 0, i32 8
  %88 = ptrtoint ptr %driver_data.i.i.i173 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %driver_data.i.i.i173, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp_val.i.i169) #6
  %90 = ptrtoint ptr %temp_val.i.i169 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 -1, ptr %temp_val.i.i169, align 4, !annotation !116
  %rmap.i.i174 = getelementptr inbounds %struct.tps65090, ptr %89, i32 0, i32 1
  %91 = ptrtoint ptr %rmap.i.i174 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %rmap.i.i174, align 4
  %call1.i.i175 = call i32 @regmap_read(ptr noundef %92, i32 noundef 4, ptr noundef nonnull %temp_val.i.i169) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i175)
  %tobool.not.i.i = icmp eq i32 %call1.i.i175, 0
  br i1 %tobool.not.i.i, label %tps65090_read.exit.thread.i179, label %tps65090_read.exit.i181

tps65090_read.exit.thread.i179:                   ; preds = %if.end.i176
  call void @__sanitizer_cov_trace_pc() #8
  %93 = ptrtoint ptr %temp_val.i.i169 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %temp_val.i.i169, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp_val.i.i169) #6
  %phi.bo.i177 = and i32 %94, 254
  %phi.cast.i178 = or i32 %phi.bo.i177, 1
  br label %if.end3.i

tps65090_read.exit.i181:                          ; preds = %if.end.i176
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp_val.i.i169) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i175)
  %cmp.i180 = icmp slt i32 %call1.i.i175, 0
  br i1 %cmp.i180, label %tps65090_read.exit.i181.do.end68_crit_edge, label %tps65090_read.exit.i181.if.end3.i_crit_edge

tps65090_read.exit.i181.if.end3.i_crit_edge:      ; preds = %tps65090_read.exit.i181
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3.i

tps65090_read.exit.i181.do.end68_crit_edge:       ; preds = %tps65090_read.exit.i181
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end68

if.end3.i:                                        ; preds = %tps65090_read.exit.i181.if.end3.i_crit_edge, %tps65090_read.exit.thread.i179
  %ctrl0.030.i = phi i32 [ %phi.cast.i178, %tps65090_read.exit.thread.i179 ], [ 1, %tps65090_read.exit.i181.if.end3.i_crit_edge ]
  %95 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %call.i, align 4
  %parent5.i = getelementptr inbounds %struct.device, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %parent5.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %parent5.i, align 8
  %driver_data.i.i24.i = getelementptr inbounds %struct.device, ptr %98, i32 0, i32 8
  %99 = ptrtoint ptr %driver_data.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %driver_data.i.i24.i, align 4
  %rmap.i25.i = getelementptr inbounds %struct.tps65090, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %rmap.i25.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %rmap.i25.i, align 4
  %call1.i27.i = call i32 @regmap_write(ptr noundef %102, i32 noundef 4, i32 noundef %ctrl0.030.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i27.i)
  %cmp8.i182 = icmp slt i32 %call1.i27.i, 0
  br i1 %cmp8.i182, label %if.end3.i.do.end68_crit_edge, label %if.end3.i.if.end70_crit_edge

if.end3.i.if.end70_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

if.end3.i.do.end68_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end68

do.end68:                                         ; preds = %if.end3.i.do.end68_crit_edge, %tps65090_read.exit.i181.do.end68_crit_edge
  %.str.38.sink.i = phi ptr [ @.str.35, %tps65090_read.exit.i181.do.end68_crit_edge ], [ @.str.38, %if.end3.i.do.end68_crit_edge ]
  %retval.0.ph.i = phi i32 [ %call1.i.i175, %tps65090_read.exit.i181.do.end68_crit_edge ], [ %call1.i27.i, %if.end3.i.do.end68_crit_edge ]
  %103 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %104, ptr noundef nonnull %.str.38.sink.i, ptr noundef nonnull @.str.41, i32 noundef 4) #9
  %105 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %106, ptr noundef nonnull @.str.19) #9
  br label %fail_unregister_supply

if.end70:                                         ; preds = %if.end3.i.if.end70_crit_edge, %if.then61.if.end70_crit_edge
  %ac_online = getelementptr inbounds %struct.tps65090_charger, ptr %call.i, i32 0, i32 1
  %107 = ptrtoint ptr %ac_online to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 1, ptr %ac_online, align 4
  %108 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %ac, align 4
  call void @power_supply_changed(ptr noundef %109) #6
  br label %if.end72

if.end72:                                         ; preds = %if.end70, %if.end58.if.end72_crit_edge, %tps65090_read.exit.if.end72_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %spec.store.select)
  %cmp73.not = icmp eq i32 %spec.store.select, -6
  br i1 %cmp73.not, label %if.else, label %if.then75

if.then75:                                        ; preds = %if.end72
  %call77 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %spec.store.select, ptr noundef null, ptr noundef nonnull @tps65090_charger_isr, i32 noundef 8192, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.then75.cleanup_crit_edge, label %do.end82

if.then75.cleanup_crit_edge:                      ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end82:                                         ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #8
  %110 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %111, ptr noundef nonnull @.str.22, i32 noundef %spec.store.select, i32 noundef %call77) #9
  br label %fail_unregister_supply

if.else:                                          ; preds = %if.end72
  %call85 = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @tps65090_charger_poll_task, ptr noundef nonnull %call.i, i32 noundef -1, ptr noundef nonnull @.str.24) #6
  %cmp.i184 = icmp ugt ptr %call85, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i184, label %if.then92, label %if.end89

if.end89:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call88 = call i32 @wake_up_process(ptr noundef %call85) #6
  %poll_task = getelementptr inbounds %struct.tps65090_charger, ptr %call.i, i32 0, i32 4
  %112 = ptrtoint ptr %poll_task to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %call85, ptr %poll_task, align 4
  %113 = ptrtoint ptr %passive_mode.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 1, ptr %passive_mode.i, align 4
  br label %cleanup

if.then92:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %poll_task198 = getelementptr inbounds %struct.tps65090_charger, ptr %call.i, i32 0, i32 4
  %114 = ptrtoint ptr %poll_task198 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %call85, ptr %poll_task198, align 4
  %115 = ptrtoint ptr %passive_mode.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 1, ptr %passive_mode.i, align 4
  %116 = ptrtoint ptr %call85 to i32
  %117 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %118, ptr noundef nonnull @.str.26, i32 noundef %116) #9
  br label %fail_unregister_supply

fail_unregister_supply:                           ; preds = %if.then92, %do.end82, %do.end68, %do.end56, %do.end46
  %ret.0 = phi i32 [ %retval.0.i.ph, %do.end46 ], [ %call1.i, %do.end56 ], [ %retval.0.ph.i, %do.end68 ], [ %call77, %do.end82 ], [ %116, %if.then92 ]
  %119 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %ac, align 4
  call void @power_supply_unregister(ptr noundef %120) #6
  br label %cleanup

cleanup:                                          ; preds = %fail_unregister_supply, %if.end89, %if.then75.cleanup_crit_edge, %do.end32, %do.end14, %do.end
  %retval.0 = phi i32 [ %26, %do.end32 ], [ %ret.0, %fail_unregister_supply ], [ -12, %do.end14 ], [ -19, %do.end ], [ 0, %if.end89 ], [ 0, %if.then75.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps65090_charger_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq = getelementptr inbounds %struct.tps65090_charger, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %3)
  %cmp = icmp eq i32 %3, -6
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %poll_task = getelementptr inbounds %struct.tps65090_charger, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %poll_task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %poll_task, align 4
  %call1 = tail call i32 @kthread_stop(ptr noundef %5) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ac = getelementptr inbounds %struct.tps65090_charger, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ac, align 4
  tail call void @power_supply_unregister(ptr noundef %7) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps65090_charger_isr(i32 noundef %irq, ptr nocapture noundef %dev_id) #2 align 64 {
entry:
  %temp_val.i.i = alloca i32, align 4
  %temp_val.i57 = alloca i32, align 4
  %temp_val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp_val.i) #6
  %6 = ptrtoint ptr %temp_val.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %temp_val.i, align 4, !annotation !116
  %rmap.i = getelementptr inbounds %struct.tps65090, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %rmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rmap.i, align 4
  %call1.i = call i32 @regmap_read(ptr noundef %8, i32 noundef 10, ptr noundef nonnull %temp_val.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp_val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp = icmp slt i32 %call1.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_id, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, i32 noundef 10) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @msleep(i32 noundef 75) #6
  %11 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_id, align 4
  %parent3 = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %parent3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent3, align 8
  %driver_data.i.i58 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %driver_data.i.i58 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver_data.i.i58, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp_val.i57) #6
  %17 = ptrtoint ptr %temp_val.i57 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %temp_val.i57, align 4, !annotation !116
  %rmap.i59 = getelementptr inbounds %struct.tps65090, ptr %16, i32 0, i32 1
  %18 = ptrtoint ptr %rmap.i59 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rmap.i59, align 4
  %call1.i60 = call i32 @regmap_read(ptr noundef %19, i32 noundef 0, ptr noundef nonnull %temp_val.i57) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i60)
  %tobool.not.i61 = icmp eq i32 %call1.i60, 0
  br i1 %tobool.not.i61, label %if.end11, label %tps65090_read.exit64

tps65090_read.exit64:                             ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp_val.i57) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i60)
  %cmp5 = icmp slt i32 %call1.i60, 0
  br i1 %cmp5, label %do.end9, label %tps65090_read.exit64.if.end19_crit_edge

tps65090_read.exit64.if.end19_crit_edge:          ; preds = %tps65090_read.exit64
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

do.end9:                                          ; preds = %tps65090_read.exit64
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_id, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, i32 noundef 0) #9
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %22 = ptrtoint ptr %temp_val.i57 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %temp_val.i57, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp_val.i57) #6
  %24 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not = icmp eq i32 %24, 0
  br i1 %tobool.not, label %if.end11.if.end19_crit_edge, label %if.then12

if.end11.if.end19_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then12:                                        ; preds = %if.end11
  %passive_mode.i = getelementptr inbounds %struct.tps65090_charger, ptr %dev_id, i32 0, i32 5
  %25 = ptrtoint ptr %passive_mode.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %passive_mode.i, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i65 = icmp eq i8 %26, 0
  br i1 %tobool.not.i65, label %if.end.i, label %if.then12.if.end19_crit_edge

if.then12.if.end19_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.end.i:                                         ; preds = %if.then12
  %27 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev_id, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %parent.i, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %30, i32 0, i32 8
  %31 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp_val.i.i) #6
  %33 = ptrtoint ptr %temp_val.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %temp_val.i.i, align 4, !annotation !116
  %rmap.i.i = getelementptr inbounds %struct.tps65090, ptr %32, i32 0, i32 1
  %34 = ptrtoint ptr %rmap.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rmap.i.i, align 4
  %call1.i.i = call i32 @regmap_read(ptr noundef %35, i32 noundef 4, ptr noundef nonnull %temp_val.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %tps65090_read.exit.thread.i, label %tps65090_read.exit.i

tps65090_read.exit.thread.i:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %temp_val.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %temp_val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp_val.i.i) #6
  %phi.bo.i = and i32 %37, 254
  %phi.cast.i = or i32 %phi.bo.i, 1
  br label %if.end3.i

tps65090_read.exit.i:                             ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp_val.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp.i, label %tps65090_read.exit.i.tps65090_enable_charging.exit_crit_edge, label %tps65090_read.exit.i.if.end3.i_crit_edge

tps65090_read.exit.i.if.end3.i_crit_edge:         ; preds = %tps65090_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3.i

tps65090_read.exit.i.tps65090_enable_charging.exit_crit_edge: ; preds = %tps65090_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tps65090_enable_charging.exit

if.end3.i:                                        ; preds = %tps65090_read.exit.i.if.end3.i_crit_edge, %tps65090_read.exit.thread.i
  %ctrl0.030.i = phi i32 [ %phi.cast.i, %tps65090_read.exit.thread.i ], [ 1, %tps65090_read.exit.i.if.end3.i_crit_edge ]
  %38 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev_id, align 4
  %parent5.i = getelementptr inbounds %struct.device, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %parent5.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %parent5.i, align 8
  %driver_data.i.i24.i = getelementptr inbounds %struct.device, ptr %41, i32 0, i32 8
  %42 = ptrtoint ptr %driver_data.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %driver_data.i.i24.i, align 4
  %rmap.i25.i = getelementptr inbounds %struct.tps65090, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %rmap.i25.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rmap.i25.i, align 4
  %call1.i27.i = call i32 @regmap_write(ptr noundef %45, i32 noundef 4, i32 noundef %ctrl0.030.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i27.i)
  %cmp8.i = icmp slt i32 %call1.i27.i, 0
  br i1 %cmp8.i, label %if.end3.i.tps65090_enable_charging.exit_crit_edge, label %if.end3.i.if.end19_crit_edge

if.end3.i.if.end19_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.end3.i.tps65090_enable_charging.exit_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tps65090_enable_charging.exit

tps65090_enable_charging.exit:                    ; preds = %if.end3.i.tps65090_enable_charging.exit_crit_edge, %tps65090_read.exit.i.tps65090_enable_charging.exit_crit_edge
  %.str.38.sink.i = phi ptr [ @.str.35, %tps65090_read.exit.i.tps65090_enable_charging.exit_crit_edge ], [ @.str.38, %if.end3.i.tps65090_enable_charging.exit_crit_edge ]
  %46 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev_id, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull %.str.38.sink.i, ptr noundef nonnull @.str.41, i32 noundef 4) #9
  br label %cleanup

if.end19:                                         ; preds = %if.end3.i.if.end19_crit_edge, %if.then12.if.end19_crit_edge, %if.end11.if.end19_crit_edge, %tps65090_read.exit64.if.end19_crit_edge
  %.sink = phi i32 [ 1, %if.then12.if.end19_crit_edge ], [ 1, %if.end3.i.if.end19_crit_edge ], [ 0, %tps65090_read.exit64.if.end19_crit_edge ], [ 0, %if.end11.if.end19_crit_edge ]
  %ac_online18 = getelementptr inbounds %struct.tps65090_charger, ptr %dev_id, i32 0, i32 1
  %48 = ptrtoint ptr %ac_online18 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %.sink, ptr %ac_online18, align 4
  %passive_mode = getelementptr inbounds %struct.tps65090_charger, ptr %dev_id, i32 0, i32 5
  %49 = ptrtoint ptr %passive_mode to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %passive_mode, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool20.not = icmp eq i8 %50, 0
  br i1 %tobool20.not, label %if.then21, label %if.end19.if.end33_crit_edge

if.end19.if.end33_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then21:                                        ; preds = %if.end19
  %51 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev_id, align 4
  %parent23 = getelementptr inbounds %struct.device, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %parent23 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %parent23, align 8
  %driver_data.i.i66 = getelementptr inbounds %struct.device, ptr %54, i32 0, i32 8
  %55 = ptrtoint ptr %driver_data.i.i66 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %driver_data.i.i66, align 4
  %rmap.i67 = getelementptr inbounds %struct.tps65090, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %rmap.i67 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rmap.i67, align 4
  %call1.i68 = call i32 @regmap_write(ptr noundef %58, i32 noundef 0, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i68)
  %cmp25 = icmp slt i32 %call1.i68, 0
  br i1 %cmp25, label %do.end30, label %if.then21.if.end33_crit_edge

if.then21.if.end33_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

do.end30:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev_id, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.45, i32 noundef 0) #9
  br label %if.end33

if.end33:                                         ; preds = %do.end30, %if.then21.if.end33_crit_edge, %if.end19.if.end33_crit_edge
  %prev_ac_online = getelementptr inbounds %struct.tps65090_charger, ptr %dev_id, i32 0, i32 2
  %61 = ptrtoint ptr %prev_ac_online to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %prev_ac_online, align 4
  %ac_online34 = getelementptr inbounds %struct.tps65090_charger, ptr %dev_id, i32 0, i32 1
  %63 = ptrtoint ptr %ac_online34 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ac_online34, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %64)
  %cmp35.not = icmp eq i32 %62, %64
  br i1 %cmp35.not, label %if.end33.cleanup_crit_edge, label %if.then37

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then37:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %ac = getelementptr inbounds %struct.tps65090_charger, ptr %dev_id, i32 0, i32 6
  %65 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ac, align 4
  call void @power_supply_changed(ptr noundef %66) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %if.end33.cleanup_crit_edge, %tps65090_enable_charging.exit, %do.end9, %do.end
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps65090_charger_poll_task(ptr nocapture noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @set_freezable() #6
  %call15 = tail call zeroext i1 @kthread_should_stop() #6
  br i1 %call15, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %try_to_freeze.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %call2 = tail call i32 @schedule_timeout_interruptible(i32 noundef 200) #6
  %0 = tail call i32 @llvm.read_register.i32(metadata !105) #6
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %5, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %while.body.if.end.i_crit_edge

while.body.if.end.i_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @debug_check_no_locks_held() #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.body.if.end.i_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.51, i32 noundef 57) #6
  %6 = tail call i32 @llvm.read_register.i32(metadata !105) #6
  %and.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i.i, align 8
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %10 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.try_to_freeze.exit_crit_edge, label %freezing.exit.i.i, !prof !117

if.end.i.try_to_freeze.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %try_to_freeze.exit

freezing.exit.i.i:                                ; preds = %if.end.i
  %call4.i.i.i = tail call zeroext i1 @freezing_slow_path(ptr noundef %9) #6
  br i1 %call4.i.i.i, label %if.end.i.i, label %freezing.exit.i.i.try_to_freeze.exit_crit_edge, !prof !118

freezing.exit.i.i.try_to_freeze.exit_crit_edge:   ; preds = %freezing.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %try_to_freeze.exit

if.end.i.i:                                       ; preds = %freezing.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i.i = tail call zeroext i1 @__refrigerator(i1 noundef zeroext false) #6
  br label %try_to_freeze.exit

try_to_freeze.exit:                               ; preds = %if.end.i.i, %freezing.exit.i.i.try_to_freeze.exit_crit_edge, %if.end.i.try_to_freeze.exit_crit_edge
  %call4 = tail call i32 @tps65090_charger_isr(i32 noundef -1, ptr noundef %data)
  %call1 = tail call zeroext i1 @kthread_should_stop() #6
  br i1 %call1, label %try_to_freeze.exit.while.end_crit_edge, label %try_to_freeze.exit.while.body_crit_edge

try_to_freeze.exit.while.body_crit_edge:          ; preds = %try_to_freeze.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

try_to_freeze.exit.while.end_crit_edge:           ; preds = %try_to_freeze.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %try_to_freeze.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps65090_ac_get_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %psp)
  %cmp = icmp eq i32 %psp, 4
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ac_online = getelementptr inbounds %struct.tps65090_charger, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %ac_online to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ac_online, align 4
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %val, align 4
  %3 = load i32, ptr %ac_online, align 4
  %prev_ac_online = getelementptr inbounds %struct.tps65090_charger, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %prev_ac_online to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %prev_ac_online, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_freezable() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_interruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_check_no_locks_held() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !50, !51, !52, !54, !55, !56, !57, !59, !61, !63, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !91, !92, !93, !94, !96, !97, !99, !100, !101, !103}
!llvm.named.register.sp = !{!105}
!llvm.module.flags = !{!106, !107, !108, !109, !110, !111, !112, !113}
!llvm.ident = !{!114}

!0 = !{ptr @__initcall__kmod_tps65090_charger__187_356_tps65090_charger_driver_init6, !1, !"__initcall__kmod_tps65090_charger__187_356_tps65090_charger_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/tps65090-charger.c", i32 356, i32 1}
!2 = !{ptr @__exitcall_tps65090_charger_driver_exit, !1, !"__exitcall_tps65090_charger_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file188, !4, !"__UNIQUE_ID_file188", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/tps65090-charger.c", i32 358, i32 1}
!5 = !{ptr @__UNIQUE_ID_license189, !4, !"__UNIQUE_ID_license189", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author190, !7, !"__UNIQUE_ID_author190", i1 false, i1 false}
!7 = !{!"../drivers/power/supply/tps65090-charger.c", i32 359, i32 1}
!8 = !{ptr @__UNIQUE_ID_description191, !9, !"__UNIQUE_ID_description191", i1 false, i1 false}
!9 = !{!"../drivers/power/supply/tps65090-charger.c", i32 360, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/power/supply/tps65090-charger.c", i32 350, i32 11}
!12 = !{ptr @tps65090_charger_driver, !13, !"tps65090_charger_driver", i1 false, i1 false}
!13 = !{!"../drivers/power/supply/tps65090-charger.c", i32 348, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/power/supply/tps65090-charger.c", i32 244, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @tps65090_charger_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @tps65090_charger_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/power/supply/tps65090-charger.c", i32 251, i32 3}
!24 = !{ptr @tps65090_charger_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @tps65090_charger_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/power/supply/tps65090-charger.c", i32 268, i32 3}
!28 = !{ptr @tps65090_charger_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @tps65090_charger_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/power/supply/tps65090-charger.c", i32 279, i32 3}
!32 = !{ptr @tps65090_charger_probe._entry.12, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @tps65090_charger_probe._entry_ptr.14, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/power/supply/tps65090-charger.c", i32 287, i32 3}
!36 = !{ptr @tps65090_charger_probe._entry.15, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @tps65090_charger_probe._entry_ptr.17, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/power/supply/tps65090-charger.c", i32 295, i32 4}
!40 = !{ptr @tps65090_charger_probe._entry.18, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @tps65090_charger_probe._entry_ptr.20, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/power/supply/tps65090-charger.c", i32 306, i32 4}
!44 = !{ptr @tps65090_charger_probe._entry.21, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @tps65090_charger_probe._entry_ptr.23, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/power/supply/tps65090-charger.c", i32 312, i32 22}
!48 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/power/supply/tps65090-charger.c", i32 317, i32 4}
!50 = !{ptr @tps65090_charger_probe._entry.25, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @tps65090_charger_probe._entry_ptr.27, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/power/supply/tps65090-charger.c", i32 196, i32 3}
!54 = !{ptr @.str.29, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @tps65090_parse_dt_charger_data._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @tps65090_parse_dt_charger_data._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/power/supply/tps65090-charger.c", i32 200, i32 35}
!59 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/power/supply/tps65090-charger.c", i32 222, i32 12}
!61 = !{ptr @tps65090_charger_desc, !62, !"tps65090_charger_desc", i1 false, i1 false}
!62 = !{!"../drivers/power/supply/tps65090-charger.c", i32 221, i32 39}
!63 = !{ptr @tps65090_ac_props, !64, !"tps65090_ac_props", i1 false, i1 false}
!64 = !{!"../drivers/power/supply/tps65090-charger.c", i32 40, i32 35}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/power/supply/tps65090-charger.c", i32 98, i32 4}
!67 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @tps65090_config_charger._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @tps65090_config_charger._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/power/supply/tps65090-charger.c", i32 108, i32 3}
!72 = !{ptr @tps65090_config_charger._entry.34, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @tps65090_config_charger._entry_ptr.36, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/power/supply/tps65090-charger.c", i32 116, i32 3}
!76 = !{ptr @tps65090_config_charger._entry.37, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @tps65090_config_charger._entry_ptr.39, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/power/supply/tps65090-charger.c", i32 54, i32 3}
!80 = !{ptr @tps65090_low_chrg_current._entry, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @tps65090_low_chrg_current._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/power/supply/tps65090-charger.c", i32 72, i32 3}
!84 = !{ptr @tps65090_enable_charging._entry, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @tps65090_enable_charging._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @tps65090_enable_charging._entry.42, !87, !"_entry", i1 false, i1 false}
!87 = !{!"../drivers/power/supply/tps65090-charger.c", i32 80, i32 3}
!88 = !{ptr @tps65090_enable_charging._entry_ptr.43, !87, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/power/supply/tps65090-charger.c", i32 148, i32 3}
!91 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @tps65090_charger_isr._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @tps65090_charger_isr._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @tps65090_charger_isr._entry.46, !95, !"_entry", i1 false, i1 false}
!95 = !{!"../drivers/power/supply/tps65090-charger.c", i32 156, i32 3}
!96 = !{ptr @tps65090_charger_isr._entry_ptr.47, !95, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.49, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/power/supply/tps65090-charger.c", i32 175, i32 4}
!99 = !{ptr @tps65090_charger_isr._entry.48, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @tps65090_charger_isr._entry_ptr.50, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.51, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../include/linux/freezer.h", i32 57, i32 2}
!103 = !{ptr @of_tps65090_charger_match, !104, !"of_tps65090_charger_match", i1 false, i1 false}
!104 = !{!"../drivers/power/supply/tps65090-charger.c", i32 342, i32 34}
!105 = !{!"sp"}
!106 = !{i32 1, !"wchar_size", i32 2}
!107 = !{i32 1, !"min_enum_size", i32 4}
!108 = !{i32 8, !"branch-target-enforcement", i32 0}
!109 = !{i32 8, !"sign-return-address", i32 0}
!110 = !{i32 8, !"sign-return-address-all", i32 0}
!111 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!112 = !{i32 7, !"uwtable", i32 1}
!113 = !{i32 7, !"frame-pointer", i32 2}
!114 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!115 = !{i8 0, i8 2}
!116 = !{!"auto-init"}
!117 = !{!"branch_weights", i32 2000, i32 1}
!118 = !{!"branch_weights", i32 1, i32 2000}
