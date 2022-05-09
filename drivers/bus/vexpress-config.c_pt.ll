; ModuleID = '/llk/IR_all_yes/drivers/bus/vexpress-config.c_pt.bc'
source_filename = "../drivers/bus/vexpress-config.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+devm_regmap_init_vexpress_config\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_regmap_init_vexpress_config\09\09\09\09"
module asm "\09.long\09__crc_devm_regmap_init_vexpress_config\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_regmap_init_vexpress_config:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_regmap_init_vexpress_config\22\09\09\09\09\09"
module asm "__kstrtabns_devm_regmap_init_vexpress_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.vexpress_config_bridge_ops = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.vexpress_config_bridge = type { ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.vexpress_syscfg = type { ptr, ptr, %struct.list_head }
%struct.property = type { ptr, i32, ptr, ptr, i32, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.vexpress_syscfg_func = type { %struct.list_head, ptr, ptr, i32, [0 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.33, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%union.anon.33 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/bus/vexpress-config.c\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"vexpress_config_devres_release\00", [33 x i8] zeroinitializer }, align 32
@__kstrtab_devm_regmap_init_vexpress_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_regmap_init_vexpress_config = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_regmap_init_vexpress_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_regmap_init_vexpress_config to i32), ptr @__kstrtab_devm_regmap_init_vexpress_config, ptr @__kstrtabns_devm_regmap_init_vexpress_config }, section "___ksymtab_gpl+devm_regmap_init_vexpress_config", align 4
@__initcall__kmod_vexpress_config__203_418_vexpress_syscfg_driver_init6 = internal global ptr @vexpress_syscfg_driver_init, section ".initcall6.init", align 4
@vexpress_syscfg_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @vexpress_syscfg_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.2, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @vexpress_syscfg_id_table, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_vexpress_syscfg_driver_exit = internal global ptr @vexpress_syscfg_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file204 = internal constant [49 x i8] c"vexpress_config.file=drivers/bus/vexpress-config\00", section ".modinfo", align 1
@__UNIQUE_ID_license205 = internal constant [31 x i8] c"vexpress_config.license=GPL v2\00", section ".modinfo", align 1
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vexpress-syscfg\00", [16 x i8] zeroinitializer }, align 32
@vexpress_syscfg_id_table = internal constant { [2 x %struct.platform_device_id], [48 x i8] } { [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"vexpress-syscfg\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@vexpress_syscfg_bridge_ops = internal global { %struct.vexpress_config_bridge_ops, [24 x i8] } { %struct.vexpress_config_bridge_ops { ptr @vexpress_syscfg_regmap_init, ptr @vexpress_syscfg_regmap_exit }, [24 x i8] zeroinitializer }, align 32
@of_root = external dso_local local_unnamed_addr global ptr, align 4
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"arm,hbi\00", [24 x i8] zeroinitializer }, align 32
@vexpress_syscfg_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str, i32 391, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"DT HBI (%x) is not matching hardware (%x)!\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vexpress_syscfg_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vexpress_syscfg_probe._entry_ptr = internal global ptr @vexpress_syscfg_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"arm,vexpress,config-bus\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"arm,vexpress,config-bridge\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"arm,vexpress-sysreg,func\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"arm,vexpress-energy\00", [44 x i8] zeroinitializer }, align 32
@vexpress_syscfg_regmap_init.__UNIQUE_ID_ddebug202 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.13, ptr @.str, ptr @.str.14, i8 0, i8 75, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vexpress_config\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"vexpress_syscfg_regmap_init\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"func %p: %u/%u/%u/%u/%u\0A\00", [39 x i8] zeroinitializer }, align 32
@vexpress_syscfg_regmap_config = internal global { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 0, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr @vexpress_config_lock, ptr @vexpress_config_unlock, ptr null, ptr @vexpress_syscfg_read, ptr @vexpress_syscfg_write, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2, i32 2, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@vexpress_syscfg_regmap_init._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"vexpress_config:314:(&vexpress_syscfg_regmap_config)->lock\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"arm,vexpress,site\00", [46 x i8] zeroinitializer }, align 32
@vexpress_config_site_master = internal global { i32, [28 x i8] } { i32 15, [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"arm,vexpress,position\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"arm,vexpress,dcc\00", [47 x i8] zeroinitializer }, align 32
@vexpress_config_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.19, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @vexpress_config_mutex, i64 52), ptr getelementptr (i8, ptr @vexpress_config_mutex, i64 52) }, ptr @vexpress_config_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.20, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"vexpress_config_mutex.wait_lock\00", [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vexpress_config_mutex\00", [42 x i8] zeroinitializer }, align 32
@vexpress_syscfg_exec.__UNIQUE_ID_ddebug199 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.21, ptr @.str, ptr @.str.22, i8 0, i8 45, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vexpress_syscfg_exec\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"func %p, command %x, data %x\0A\00", [34 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@vexpress_syscfg_exec.__already_done.23 = internal unnamed_addr global i1 false, section ".data.once", align 1
@vexpress_syscfg_exec.__UNIQUE_ID_ddebug201 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.21, ptr @.str, ptr @.str.24, i8 0, i8 53, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"func %p, read data %x\0A\00", [41 x i8] zeroinitializer }, align 32
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 137, i32 6 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 140, i32 8 }
@___asan_gen_.31 = private unnamed_addr constant [23 x i8] c"vexpress_syscfg_driver\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 413, i32 31 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 414, i32 17 }
@___asan_gen_.37 = private unnamed_addr constant [25 x i8] c"vexpress_syscfg_id_table\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 407, i32 40 }
@___asan_gen_.40 = private unnamed_addr constant [27 x i8] c"vexpress_syscfg_bridge_ops\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 344, i32 42 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 384, i32 36 }
@___asan_gen_.46 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 390, i32 4 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 394, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 397, i32 38 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 266, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 278, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 300, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant [30 x i8] c"vexpress_syscfg_regmap_config\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 235, i32 29 }
@___asan_gen_.85 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 313, i32 17 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 110, i32 34 }
@___asan_gen_.94 = private unnamed_addr constant [28 x i8] c"vexpress_config_site_master\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 72, i32 12 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 115, i32 34 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 116, i32 34 }
@___asan_gen_.103 = private unnamed_addr constant [22 x i8] c"vexpress_config_mutex\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 71, i32 8 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 181, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.119 = private constant [33 x i8] c"../drivers/bus/vexpress-config.c\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 213, i32 3 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__UNIQUE_ID_file204, ptr @__UNIQUE_ID_license205, ptr @__exitcall_vexpress_syscfg_driver_exit, ptr @__initcall__kmod_vexpress_config__203_418_vexpress_syscfg_driver_init6, ptr @__ksymtab_devm_regmap_init_vexpress_config, ptr @vexpress_syscfg_driver_exit, ptr @vexpress_syscfg_probe._entry, ptr @vexpress_syscfg_probe._entry_ptr, ptr @.str, ptr @.str.1, ptr @vexpress_syscfg_driver, ptr @.str.2, ptr @vexpress_syscfg_id_table, ptr @vexpress_syscfg_bridge_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @vexpress_syscfg_regmap_config, ptr @vexpress_syscfg_regmap_init._key, ptr @.str.15, ptr @.str.16, ptr @vexpress_config_site_master, ptr @.str.17, ptr @.str.18, ptr @vexpress_config_mutex, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vexpress_syscfg_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vexpress_syscfg_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vexpress_syscfg_bridge_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vexpress_syscfg_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vexpress_syscfg_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vexpress_syscfg_regmap_init._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vexpress_config_site_master to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vexpress_config_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @devm_regmap_init_vexpress_config(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !80

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 137, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end24:                                         ; preds = %entry
  %call25 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @vexpress_config_devres_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.1) #8
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %if.end24.cleanup_crit_edge, label %if.end29

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end29:                                         ; preds = %if.end24
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %context = getelementptr inbounds %struct.vexpress_config_bridge, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %context, align 4
  %call30 = tail call ptr %7(ptr noundef %dev, ptr noundef %9) #8
  %cmp.i = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @devres_free(ptr noundef nonnull %call25) #8
  br label %cleanup

if.end33:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %call25 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call30, ptr %call25, align 4
  tail call void @devres_add(ptr noundef %dev, ptr noundef nonnull %call25) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.then32, %if.end24.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ %call30, %if.then32 ], [ %call30, %if.end33 ], [ inttoptr (i32 -12 to ptr), %if.end24.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vexpress_config_devres_release(ptr nocapture noundef readonly %dev, ptr noundef %res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %regmap_exit = getelementptr inbounds %struct.vexpress_config_bridge_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %regmap_exit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap_exit, align 4
  %context = getelementptr inbounds %struct.vexpress_config_bridge, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %context, align 4
  tail call void %7(ptr noundef %res, ptr noundef %9) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vexpress_syscfg_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @vexpress_syscfg_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vexpress_syscfg_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @vexpress_syscfg_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vexpress_syscfg_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  %dt_hbi = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dt_hbi) #8
  %0 = ptrtoint ptr %dt_hbi to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dt_hbi, align 4, !annotation !81
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup75_crit_edge, label %if.end

entry.cleanup75_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup75

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %call.i, align 4
  %funcs = getelementptr inbounds %struct.vexpress_syscfg, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %funcs, ptr %funcs, align 4
  %prev.i = getelementptr inbounds %struct.vexpress_syscfg, ptr %call.i, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %funcs, ptr %prev.i, align 4
  %call3 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %call5 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call3) #8
  %base = getelementptr inbounds %struct.vexpress_syscfg, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call5, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %call5 to i32
  br label %cleanup75

if.end11:                                         ; preds = %if.end
  %call13 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 8, i32 noundef 3264) #8
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end11.cleanup75_crit_edge, label %if.end16

if.end11.cleanup75_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup75

if.end16:                                         ; preds = %if.end11
  %6 = ptrtoint ptr %call13 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @vexpress_syscfg_bridge_ops, ptr %call13, align 4
  %context = getelementptr inbounds %struct.vexpress_config_bridge, ptr %call13, i32 0, i32 1
  %7 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %context, align 4
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %8 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call13, ptr %driver_data.i, align 4
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #8, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  %12 = and i32 %11, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool21.not = icmp eq i32 %12, 0
  %cond = select i1 %tobool21.not, i32 1, i32 2
  store i32 %cond, ptr @vexpress_config_site_master, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @of_root to i32))
  %13 = load ptr, ptr @of_root, align 4
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %13, ptr noundef nonnull @.str.3, ptr noundef nonnull %dt_hbi, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp = icmp sgt i32 %call.i.i, -1
  br i1 %cmp, label %if.then23, label %if.end16.if.end64_crit_edge

if.end16.if.end64_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.then23:                                        ; preds = %if.end16
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %cond28 = select i1 %tobool21.not, i32 36, i32 40
  %add.ptr29 = getelementptr i8, ptr %15, i32 %cond28
  %16 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29) #8, !srcloc !82
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !84
  %17 = and i32 %16, -15794176
  %18 = call i32 @llvm.bswap.i32(i32 %17)
  %19 = ptrtoint ptr %dt_hbi to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dt_hbi, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %18)
  %cmp34.not = icmp eq i32 %20, %18
  br i1 %cmp34.not, label %if.then23.if.end64_crit_edge, label %do.end, !prof !85

if.then23.if.end64_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

do.end:                                           ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 389, i32 noundef 9, ptr noundef null) #8
  %21 = ptrtoint ptr %dt_hbi to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dt_hbi, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef %22, i32 noundef %18) #11
  br label %if.end64

if.end64:                                         ; preds = %do.end, %if.then23.if.end64_crit_edge, %if.end16.if.end64_crit_edge
  %call65 = call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.8) #8
  %tobool66.not107 = icmp eq ptr %call65, null
  br i1 %tobool66.not107, label %if.end64.cleanup75_crit_edge, label %for.body.lr.ph

if.end64.cleanup75_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup75

for.body.lr.ph:                                   ; preds = %if.end64
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %node.0108 = phi ptr [ %call65, %for.body.lr.ph ], [ %call74, %cleanup.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #8
  %23 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i106 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %node.0108, ptr noundef nonnull @.str.9, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i106)
  %tobool.not.i = icmp eq i32 %call.i106, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.of_parse_phandle.exit_crit_edge

for.body.of_parse_phandle.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %of_parse_phandle.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %args.i, align 4
  br label %of_parse_phandle.exit

of_parse_phandle.exit:                            ; preds = %if.end.i, %for.body.of_parse_phandle.exit_crit_edge
  %retval.0.i = phi ptr [ %25, %if.end.i ], [ null, %for.body.of_parse_phandle.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #8
  %26 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %parent, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 27
  %28 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %of_node, align 8
  %cmp69.not = icmp eq ptr %retval.0.i, %29
  br i1 %cmp69.not, label %if.end71, label %of_parse_phandle.exit.cleanup_crit_edge

of_parse_phandle.exit.cleanup_crit_edge:          ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end71:                                         ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call73 = call i32 @of_platform_populate(ptr noundef nonnull %node.0108, ptr noundef null, ptr noundef null, ptr noundef %dev) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %of_parse_phandle.exit.cleanup_crit_edge
  %call74 = call ptr @of_find_compatible_node(ptr noundef nonnull %node.0108, ptr noundef null, ptr noundef nonnull @.str.8) #8
  %tobool66.not = icmp eq ptr %call74, null
  br i1 %tobool66.not, label %cleanup.cleanup75_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup.cleanup75_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup75

cleanup75:                                        ; preds = %cleanup.cleanup75_crit_edge, %if.end64.cleanup75_crit_edge, %if.end11.cleanup75_crit_edge, %if.then8, %entry.cleanup75_crit_edge
  %retval.0 = phi i32 [ %5, %if.then8 ], [ -12, %entry.cleanup75_crit_edge ], [ -12, %if.end11.cleanup75_crit_edge ], [ 0, %if.end64.cleanup75_crit_edge ], [ 0, %cleanup.cleanup75_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dt_hbi) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @vexpress_syscfg_regmap_init(ptr noundef %dev, ptr noundef %context) #0 align 64 {
entry:
  %energy_quirk = alloca [4 x i32], align 4
  %site = alloca i32, align 4
  %position = alloca i32, align 4
  %dcc = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %energy_quirk) #8
  %0 = getelementptr inbounds [4 x i32], ptr %energy_quirk, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i32], ptr %energy_quirk, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i32], ptr %energy_quirk, i32 0, i32 3
  %3 = call ptr @memset(ptr %energy_quirk, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %site) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %position) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dcc) #8
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %6 = ptrtoint ptr %site to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %site, align 4
  %call.i.i = tail call ptr @of_node_get(ptr noundef %5) #8
  %tobool.not9.i.i = icmp eq ptr %5, null
  br i1 %tobool.not9.i.i, label %if.end.i.thread, label %entry.while.body.i.i_crit_edge

entry.while.body.i.i_crit_edge:                   ; preds = %entry
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %entry.while.body.i.i_crit_edge
  %node.addr.010.i.i = phi ptr [ %call2.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %5, %entry.while.body.i.i_crit_edge ]
  %call.i.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %node.addr.010.i.i, ptr noundef nonnull @.str.16, ptr noundef nonnull %site, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i.i)
  %cmp.i.i = icmp sgt i32 %call.i.i.i.i, -1
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @of_node_put(ptr noundef nonnull %node.addr.010.i.i) #8
  br label %vexpress_config_find_prop.exit.i

if.end.i.i:                                       ; preds = %while.body.i.i
  %call2.i.i = call ptr @of_get_next_parent(ptr noundef nonnull %node.addr.010.i.i) #8
  %tobool.not.i.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.i.vexpress_config_find_prop.exit.i_crit_edge, label %if.end.i.i.while.body.i.i_crit_edge

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

if.end.i.i.vexpress_config_find_prop.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vexpress_config_find_prop.exit.i

vexpress_config_find_prop.exit.i:                 ; preds = %if.end.i.i.vexpress_config_find_prop.exit.i_crit_edge, %if.then.i.i
  %7 = ptrtoint ptr %site to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr = load i32, ptr %site, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %.pr)
  %cmp.i = icmp eq i32 %.pr, 15
  %8 = load i32, ptr @vexpress_config_site_master, align 4
  br i1 %cmp.i, label %if.then.i, label %vexpress_config_find_prop.exit.i.if.end.i_crit_edge

vexpress_config_find_prop.exit.i.if.end.i_crit_edge: ; preds = %vexpress_config_find_prop.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %vexpress_config_find_prop.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %site to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %site, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %vexpress_config_find_prop.exit.i.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %8)
  %cmp1.i = icmp eq i32 %8, 15
  br i1 %cmp1.i, label %if.end.i.if.then_crit_edge, label %if.end24.i, !prof !80

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.end.i.thread:                                  ; preds = %entry
  %10 = load i32, ptr @vexpress_config_site_master, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %10)
  %cmp1.i139 = icmp eq i32 %10, 15
  br i1 %cmp1.i139, label %if.end.i.thread.if.then_crit_edge, label %if.end24.i.thread, !prof !80

if.end.i.thread.if.then_crit_edge:                ; preds = %if.end.i.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.end24.i.thread:                                ; preds = %if.end.i.thread
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %position to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %position, align 4
  %call.i30.i140 = call ptr @of_node_get(ptr noundef %5) #8
  br label %vexpress_config_find_prop.exit40.thread.i

if.end24.i:                                       ; preds = %if.end.i
  %12 = ptrtoint ptr %position to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %position, align 4
  %call.i30.i = call ptr @of_node_get(ptr noundef nonnull %5) #8
  br i1 %tobool.not9.i.i, label %if.end24.i.vexpress_config_find_prop.exit40.thread.i_crit_edge, label %if.end24.i.while.body.i35.i_crit_edge

if.end24.i.while.body.i35.i_crit_edge:            ; preds = %if.end24.i
  br label %while.body.i35.i

if.end24.i.vexpress_config_find_prop.exit40.thread.i_crit_edge: ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vexpress_config_find_prop.exit40.thread.i

vexpress_config_find_prop.exit40.thread.i:        ; preds = %if.end24.i.vexpress_config_find_prop.exit40.thread.i_crit_edge, %if.end24.i.thread
  %13 = ptrtoint ptr %dcc to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %dcc, align 4
  %call.i4152.i = call ptr @of_node_get(ptr noundef null) #8
  br label %if.end

while.body.i35.i:                                 ; preds = %if.end.i39.i.while.body.i35.i_crit_edge, %if.end24.i.while.body.i35.i_crit_edge
  %node.addr.010.i32.i = phi ptr [ %call2.i37.i, %if.end.i39.i.while.body.i35.i_crit_edge ], [ %5, %if.end24.i.while.body.i35.i_crit_edge ]
  %call.i.i.i33.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %node.addr.010.i32.i, ptr noundef nonnull @.str.17, ptr noundef nonnull %position, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i33.i)
  %cmp.i34.i = icmp sgt i32 %call.i.i.i33.i, -1
  br i1 %cmp.i34.i, label %if.then.i36.i, label %if.end.i39.i

if.then.i36.i:                                    ; preds = %while.body.i35.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @of_node_put(ptr noundef nonnull %node.addr.010.i32.i) #8
  br label %while.body.i46.preheader.i

if.end.i39.i:                                     ; preds = %while.body.i35.i
  %call2.i37.i = call ptr @of_get_next_parent(ptr noundef nonnull %node.addr.010.i32.i) #8
  %tobool.not.i38.i = icmp eq ptr %call2.i37.i, null
  br i1 %tobool.not.i38.i, label %if.end.i39.i.while.body.i46.preheader.i_crit_edge, label %if.end.i39.i.while.body.i35.i_crit_edge

if.end.i39.i.while.body.i35.i_crit_edge:          ; preds = %if.end.i39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i35.i

if.end.i39.i.while.body.i46.preheader.i_crit_edge: ; preds = %if.end.i39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i46.preheader.i

while.body.i46.preheader.i:                       ; preds = %if.end.i39.i.while.body.i46.preheader.i_crit_edge, %if.then.i36.i
  %14 = ptrtoint ptr %dcc to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %dcc, align 4
  %call.i41.i = call ptr @of_node_get(ptr noundef nonnull %5) #8
  br label %while.body.i46.i

while.body.i46.i:                                 ; preds = %if.end.i50.i.while.body.i46.i_crit_edge, %while.body.i46.preheader.i
  %node.addr.010.i43.i = phi ptr [ %call2.i48.i, %if.end.i50.i.while.body.i46.i_crit_edge ], [ %5, %while.body.i46.preheader.i ]
  %call.i.i.i44.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %node.addr.010.i43.i, ptr noundef nonnull @.str.18, ptr noundef nonnull %dcc, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i44.i)
  %cmp.i45.i = icmp sgt i32 %call.i.i.i44.i, -1
  br i1 %cmp.i45.i, label %if.then.i47.i, label %if.end.i50.i

if.then.i47.i:                                    ; preds = %while.body.i46.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @of_node_put(ptr noundef nonnull %node.addr.010.i43.i) #8
  br label %if.end

if.end.i50.i:                                     ; preds = %while.body.i46.i
  %call2.i48.i = call ptr @of_get_next_parent(ptr noundef nonnull %node.addr.010.i43.i) #8
  %tobool.not.i49.i = icmp eq ptr %call2.i48.i, null
  br i1 %tobool.not.i49.i, label %if.end.i50.i.if.end_crit_edge, label %if.end.i50.i.while.body.i46.i_crit_edge

if.end.i50.i.while.body.i46.i_crit_edge:          ; preds = %if.end.i50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i46.i

if.end.i50.i.if.end_crit_edge:                    ; preds = %if.end.i50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %if.end.i.thread.if.then_crit_edge, %if.end.i.if.then_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 113, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %if.end.i50.i.if.end_crit_edge, %if.then.i47.i, %vexpress_config_find_prop.exit40.thread.i
  %15 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_node, align 8
  %call3 = call ptr @of_find_property(ptr noundef %16, ptr noundef nonnull @.str.10, ptr noundef null) #8
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %length = getelementptr inbounds %struct.property, ptr %call3, i32 0, i32 1
  %17 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %length, align 4
  %div8116 = lshr i32 %18, 3
  %value = getelementptr inbounds %struct.property, ptr %call3, i32 0, i32 2
  %19 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div8116)
  %cmp = icmp eq i32 %div8116, 1
  br i1 %cmp, label %land.lhs.true, label %if.end7.if.end8.i.i_crit_edge

if.end7.if.end8.i.i_crit_edge:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i.i

land.lhs.true:                                    ; preds = %if.end7
  %21 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %of_node, align 8
  %call10 = call i32 @of_device_is_compatible(ptr noundef %22, ptr noundef nonnull @.str.11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true.if.end8.i.i_crit_edge, label %if.then12

land.lhs.true.if.end8.i.i_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i.i

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %20, align 4
  %25 = ptrtoint ptr %energy_quirk to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %energy_quirk, align 4
  %incdec.ptr = getelementptr i32, ptr %20, i32 1
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %24, ptr %1, align 4
  %27 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %incdec.ptr, align 4
  %29 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %0, align 4
  %add = add i32 %28, 1
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add, ptr %2, align 4
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then12, %land.lhs.true.if.end8.i.i_crit_edge, %if.end7.if.end8.i.i_crit_edge
  %val.0 = phi ptr [ %energy_quirk, %if.then12 ], [ %20, %land.lhs.true.if.end8.i.i_crit_edge ], [ %20, %if.end7.if.end8.i.i_crit_edge ]
  %num.0 = phi i32 [ 2, %if.then12 ], [ 1, %land.lhs.true.if.end8.i.i_crit_edge ], [ %div8116, %if.end7.if.end8.i.i_crit_edge ]
  %31 = shl nuw nsw i32 %num.0, 2
  %spec.select.i128 = add nuw i32 %31, 20
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i128, i32 noundef 3520) #12
  %tobool20.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool20.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end23

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end23:                                         ; preds = %if.end8.i.i
  %syscfg24 = getelementptr inbounds %struct.vexpress_syscfg_func, ptr %call9.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %syscfg24 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %context, ptr %syscfg24, align 8
  %num_templates = getelementptr inbounds %struct.vexpress_syscfg_func, ptr %call9.i.i, i32 0, i32 3
  %33 = ptrtoint ptr %num_templates to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %num.0, ptr %num_templates, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num.0)
  %cmp25132.not = icmp eq i32 %num.0, 0
  br i1 %cmp25132.not, label %if.end23.for.end_crit_edge, label %if.end23.for.body_crit_edge

if.end23.for.body_crit_edge:                      ; preds = %if.end23
  br label %for.body

if.end23.for.end_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %do.end.for.body_crit_edge, %if.end23.for.body_crit_edge
  %i.0134 = phi i32 [ %inc, %do.end.for.body_crit_edge ], [ 0, %if.end23.for.body_crit_edge ]
  %val.1133 = phi ptr [ %incdec.ptr28, %do.end.for.body_crit_edge ], [ %val.0, %if.end23.for.body_crit_edge ]
  %incdec.ptr26 = getelementptr i32, ptr %val.1133, i32 1
  %34 = ptrtoint ptr %val.1133 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val.1133, align 4
  %incdec.ptr28 = getelementptr i32, ptr %val.1133, i32 2
  %36 = ptrtoint ptr %incdec.ptr26 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %incdec.ptr26, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vexpress_syscfg_regmap_init.__UNIQUE_ID_ddebug202, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vexpress_syscfg_regmap_init, %if.then34)) #8
          to label %do.end [label %if.then34], !srcloc !86

if.then34:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %site to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %site, align 4
  %40 = ptrtoint ptr %position to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %position, align 4
  %42 = ptrtoint ptr %dcc to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dcc, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vexpress_syscfg_regmap_init.__UNIQUE_ID_ddebug202, ptr noundef %dev, ptr noundef nonnull @.str.14, ptr noundef nonnull %call9.i.i, i32 noundef %39, i32 noundef %41, i32 noundef %43, i32 noundef %35, i32 noundef %37) #8
  br label %do.end

do.end:                                           ; preds = %if.then34, %for.body
  %44 = ptrtoint ptr %dcc to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dcc, align 4
  %and = shl i32 %45, 26
  %shl = and i32 %and, 1006632960
  %arrayidx36 = getelementptr %struct.vexpress_syscfg_func, ptr %call9.i.i, i32 0, i32 4, i32 %i.0134
  %46 = ptrtoint ptr %site to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %site, align 4
  %and37 = shl i32 %47, 16
  %shl38 = and i32 %and37, 196608
  %or = or i32 %shl38, %shl
  %48 = ptrtoint ptr %position to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %position, align 4
  %and41 = shl i32 %49, 12
  %shl42 = and i32 %and41, 61440
  %and46 = shl i32 %35, 20
  %shl47 = and i32 %and46, 66060288
  %and51 = and i32 %37, 4095
  %or45 = or i32 %and51, %shl47
  %or50 = or i32 %or45, %or
  %or55 = or i32 %or50, %shl42
  %50 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %or55, ptr %arrayidx36, align 4
  %inc = add nuw nsw i32 %i.0134, 1
  %exitcond.not = icmp eq i32 %inc, %num.0
  br i1 %exitcond.not, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %do.end.for.end_crit_edge, %if.end23.for.end_crit_edge
  %sub = add nsw i32 %num.0, -1
  store i32 %sub, ptr getelementptr inbounds (%struct.regmap_config, ptr @vexpress_syscfg_regmap_config, i32 0, i32 19), align 4
  %call57 = call ptr @__regmap_init(ptr noundef %dev, ptr noundef null, ptr noundef nonnull %call9.i.i, ptr noundef nonnull @vexpress_syscfg_regmap_config, ptr noundef nonnull @vexpress_syscfg_regmap_init._key, ptr noundef nonnull @.str.15) #8
  %regmap = getelementptr inbounds %struct.vexpress_syscfg_func, ptr %call9.i.i, i32 0, i32 2
  %51 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call57, ptr %regmap, align 4
  %cmp.i122 = icmp ugt ptr %call57, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i122, label %if.then60, label %if.end63

if.then60:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call9.i.i) #8
  br label %cleanup

if.end63:                                         ; preds = %for.end
  %funcs = getelementptr inbounds %struct.vexpress_syscfg, ptr %context, i32 0, i32 2
  %52 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %funcs, align 4
  %call.i.i123 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i.i, ptr noundef %funcs, ptr noundef %53) #8
  br i1 %call.i.i123, label %if.end.i.i124, label %if.end63.list_add.exit_crit_edge

if.end63.list_add.exit_crit_edge:                 ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit

if.end.i.i124:                                    ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call9.i.i, ptr %prev1.i.i, align 4
  %55 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %53, ptr %call9.i.i, align 128
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i, i32 0, i32 1
  %56 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %funcs, ptr %prev3.i.i, align 4
  %57 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %call9.i.i, ptr %funcs, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i124, %if.end63.list_add.exit_crit_edge
  %58 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regmap, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit, %if.then60, %if.end8.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %if.then ], [ %call57, %if.then60 ], [ %59, %list_add.exit ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end8.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dcc) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %position) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %site) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %energy_quirk) #8
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vexpress_syscfg_regmap_exit(ptr noundef %regmap, ptr noundef %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @regmap_exit(ptr noundef %regmap) #8
  %funcs = getelementptr inbounds %struct.vexpress_syscfg, ptr %context, i32 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %func.0.in = phi ptr [ %funcs, %entry ], [ %func.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %func.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %func.0 = load ptr, ptr %func.0.in, align 4
  %cmp.not = icmp eq ptr %func.0, %funcs
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.cond
  %regmap8 = getelementptr inbounds %struct.vexpress_syscfg_func, ptr %func.0, i32 0, i32 2
  %1 = ptrtoint ptr %regmap8 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap8, align 4
  %cmp9 = icmp eq ptr %2, %regmap
  br i1 %cmp9, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

if.then:                                          ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %funcs) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.vexpress_syscfg, ptr %context, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %funcs, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %9 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %funcs, align 4
  %prev.i = getelementptr inbounds %struct.vexpress_syscfg, ptr %context, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %func.0) #8
  br label %for.end

for.end:                                          ; preds = %list_del.exit, %for.cond.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vexpress_config_lock(ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @vexpress_config_mutex, i32 noundef 0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vexpress_config_unlock(ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_unlock(ptr noundef nonnull @vexpress_config_mutex) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vexpress_syscfg_read(ptr noundef %context, i32 noundef %index, ptr nocapture noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @vexpress_syscfg_exec(ptr noundef %context, i32 noundef %index, i1 noundef zeroext false, ptr noundef %val)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vexpress_syscfg_write(ptr noundef %context, i32 noundef %index, i32 noundef %val) #0 align 64 {
entry:
  %val.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %val.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %val, ptr %val.addr, align 4
  %call = call fastcc i32 @vexpress_syscfg_exec(ptr noundef %context, i32 noundef %index, i1 noundef zeroext true, ptr noundef nonnull %val.addr)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vexpress_syscfg_exec(ptr noundef %func, i32 noundef %index, i1 noundef zeroext %write, ptr nocapture noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %syscfg1 = getelementptr inbounds %struct.vexpress_syscfg_func, ptr %func, i32 0, i32 1
  %0 = ptrtoint ptr %syscfg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %syscfg1, align 4
  %num_templates = getelementptr inbounds %struct.vexpress_syscfg_func, ptr %func, i32 0, i32 3
  %2 = ptrtoint ptr %num_templates to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_templates, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %index)
  %cmp.not = icmp sgt i32 %3, %index
  br i1 %cmp.not, label %if.end22, label %do.end, !prof !85

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 166, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end22:                                         ; preds = %entry
  %base = getelementptr inbounds %struct.vexpress_syscfg, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 68
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  %.mask = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool26.not = icmp eq i32 %.mask, 0
  br i1 %tobool26.not, label %if.end58, label %do.end42, !prof !85

do.end42:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 170, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end58:                                         ; preds = %if.end22
  %arrayidx = getelementptr %struct.vexpress_syscfg_func, ptr %func, i32 0, i32 4, i32 %index
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %or = select i1 %write, i32 -1073741824, i32 -2147483648
  %or60 = or i32 %or, %8
  br i1 %write, label %if.end58.do.body64_crit_edge, label %if.then62

if.end58.do.body64_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body64

if.then62:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -559038737, ptr %data, align 4
  br label %do.body64

do.body64:                                        ; preds = %if.then62, %if.end58.do.body64_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vexpress_syscfg_exec.__UNIQUE_ID_ddebug199, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vexpress_syscfg_exec, %if.then75)) #8
          to label %do.body79 [label %if.then75], !srcloc !86

if.then75:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vexpress_syscfg_exec.__UNIQUE_ID_ddebug199, ptr noundef %11, ptr noundef nonnull @.str.22, ptr noundef %func, i32 noundef %or60, i32 noundef %13) #8
  br label %do.body79

do.body79:                                        ; preds = %if.then75, %do.body64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %17 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base, align 4
  %add.ptr83 = getelementptr i8, ptr %18, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr83, i32 %16) #8, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !90
  tail call void @arm_heavy_mb() #8
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base, align 4
  %add.ptr88 = getelementptr i8, ptr %20, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr88, i32 0) #8, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !91
  tail call void @arm_heavy_mb() #8
  %21 = tail call i32 @llvm.bswap.i32(i32 %or60)
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base, align 4
  %add.ptr93 = getelementptr i8, ptr %23, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93, i32 %21) #8, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !92
  tail call void @arm_heavy_mb() #8
  br label %do.body97

do.body97:                                        ; preds = %if.end212.do.body97_crit_edge, %do.body79
  %timeout.0 = phi i32 [ 100, %do.body79 ], [ %spec.select, %if.end212.do.body97_crit_edge ]
  %tries.0 = phi i32 [ 100, %do.body79 ], [ %dec, %if.end212.do.body97_crit_edge ]
  %24 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !93
  %and.i = and i32 %24, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool112.not = icmp eq i32 %and.i, 0
  br i1 %tobool112.not, label %__here, label %cond.false199

__here:                                           ; preds = %do.body97
  %25 = tail call i32 @llvm.read_register.i32(metadata !70) #8
  %and.i359 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i359 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 212
  %29 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 ptrtoint (ptr blockaddress(@vexpress_syscfg_exec, %__here) to i32), ptr %task_state_change, align 4
  %30 = load ptr, ptr %task, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile i32 1, ptr %30, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !94
  %call3.i = tail call i32 @__usecs_to_jiffies(i32 noundef %timeout.0) #8
  %call189 = tail call i32 @schedule_timeout(i32 noundef %call3.i) #8
  %32 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %stack.i.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %35, align 4
  %38 = and i32 %37, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i = icmp eq i32 %38, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %__here.cleanup_crit_edge, !prof !85

__here.cleanup_crit_edge:                         ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

signal_pending.exit:                              ; preds = %__here
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %35, align 4
  %and1.i.i.i.i.i = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool193.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool193.not, label %signal_pending.exit.if.end201_crit_edge, label %signal_pending.exit.cleanup_crit_edge

signal_pending.exit.cleanup_crit_edge:            ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

signal_pending.exit.if.end201_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end201

cond.false199:                                    ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %41(i32 noundef %timeout.0) #8
  br label %if.end201

if.end201:                                        ; preds = %cond.false199, %signal_pending.exit.if.end201_crit_edge
  %42 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base, align 4
  %add.ptr205 = getelementptr i8, ptr %43, i32 72
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr205) #8, !srcloc !82
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !95
  %and209 = and i32 %45, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and209)
  %tobool210.not = icmp eq i32 %and209, 0
  br i1 %tobool210.not, label %if.end212, label %if.end201.cleanup_crit_edge

if.end201.cleanup_crit_edge:                      ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end212:                                        ; preds = %if.end201
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %timeout.0)
  %cmp213 = icmp sgt i32 %timeout.0, 20
  %sub = add i32 %timeout.0, -20
  %spec.select = select i1 %cmp213, i32 %sub, i32 %timeout.0
  %dec = add nsw i32 %tries.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool218.not = icmp eq i32 %dec, 0
  %tobool218.not.not = xor i1 %tobool218.not, true
  %and220 = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and220)
  %tobool221.not = icmp eq i32 %and220, 0
  %or.cond = select i1 %tobool218.not.not, i1 %tobool221.not, i1 false
  br i1 %or.cond, label %if.end212.do.body97_crit_edge, label %do.end225

if.end212.do.body97_crit_edge:                    ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body97

do.end225:                                        ; preds = %if.end212
  br i1 %tobool218.not, label %land.rhs237, label %if.end285

land.rhs237:                                      ; preds = %do.end225
  %.b353 = load i1, ptr @vexpress_syscfg_exec.__already_done.23, align 1
  br i1 %.b353, label %land.rhs237.cleanup_crit_edge, label %if.then248, !prof !85

land.rhs237.cleanup_crit_edge:                    ; preds = %land.rhs237
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then248:                                       ; preds = %land.rhs237
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @vexpress_syscfg_exec.__already_done.23, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 208, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end285:                                        ; preds = %do.end225
  br i1 %write, label %if.end285.cleanup_crit_edge, label %if.then287

if.end285.cleanup_crit_edge:                      ; preds = %if.end285
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then287:                                       ; preds = %if.end285
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base, align 4
  %add.ptr291 = getelementptr i8, ptr %47, i32 64
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr291) #8, !srcloc !82
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !96
  %50 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vexpress_syscfg_exec.__UNIQUE_ID_ddebug201, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vexpress_syscfg_exec, %if.then307)) #8
          to label %cleanup [label %if.then307], !srcloc !86

if.then307:                                       ; preds = %if.then287
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 4
  %53 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %data, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vexpress_syscfg_exec.__UNIQUE_ID_ddebug201, ptr noundef %52, ptr noundef nonnull @.str.24, ptr noundef %func, i32 noundef %54) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then307, %if.then287, %if.end285.cleanup_crit_edge, %if.then248, %land.rhs237.cleanup_crit_edge, %if.end201.cleanup_crit_edge, %signal_pending.exit.cleanup_crit_edge, %__here.cleanup_crit_edge, %do.end42, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -16, %do.end42 ], [ -110, %if.then248 ], [ 0, %if.then307 ], [ 0, %if.end285.cleanup_crit_edge ], [ -110, %land.rhs237.cleanup_crit_edge ], [ 0, %if.then287 ], [ -4, %__here.cleanup_crit_edge ], [ -14, %if.end201.cleanup_crit_edge ], [ -4, %signal_pending.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @regmap_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !27, !29, !31, !33, !35, !37, !38, !39, !40, !42, !43, !45, !47, !49, !51, !53, !55, !56, !57, !59, !60, !61, !63, !65, !67, !68}
!llvm.named.register.sp = !{!70}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/bus/vexpress-config.c", i32 137, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/bus/vexpress-config.c", i32 140, i32 8}
!4 = !{ptr @__ksymtab_devm_regmap_init_vexpress_config, !5, !"__ksymtab_devm_regmap_init_vexpress_config", i1 false, i1 false}
!5 = !{!"../drivers/bus/vexpress-config.c", i32 156, i32 1}
!6 = !{ptr @__initcall__kmod_vexpress_config__203_418_vexpress_syscfg_driver_init6, !7, !"__initcall__kmod_vexpress_config__203_418_vexpress_syscfg_driver_init6", i1 false, i1 false}
!7 = !{!"../drivers/bus/vexpress-config.c", i32 418, i32 1}
!8 = !{ptr @__exitcall_vexpress_syscfg_driver_exit, !7, !"__exitcall_vexpress_syscfg_driver_exit", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_file204, !10, !"__UNIQUE_ID_file204", i1 false, i1 false}
!10 = !{!"../drivers/bus/vexpress-config.c", i32 419, i32 1}
!11 = !{ptr @__UNIQUE_ID_license205, !10, !"__UNIQUE_ID_license205", i1 false, i1 false}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/bus/vexpress-config.c", i32 414, i32 17}
!14 = !{ptr @vexpress_syscfg_driver, !15, !"vexpress_syscfg_driver", i1 false, i1 false}
!15 = !{!"../drivers/bus/vexpress-config.c", i32 413, i32 31}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/bus/vexpress-config.c", i32 384, i32 36}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/bus/vexpress-config.c", i32 390, i32 4}
!20 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @vexpress_syscfg_probe._entry, !19, !"_entry", i1 false, i1 false}
!24 = !{ptr @vexpress_syscfg_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/bus/vexpress-config.c", i32 394, i32 2}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/bus/vexpress-config.c", i32 397, i32 38}
!29 = !{ptr @vexpress_syscfg_bridge_ops, !30, !"vexpress_syscfg_bridge_ops", i1 false, i1 false}
!30 = !{!"../drivers/bus/vexpress-config.c", i32 344, i32 42}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/bus/vexpress-config.c", i32 266, i32 4}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/bus/vexpress-config.c", i32 278, i32 4}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/bus/vexpress-config.c", i32 300, i32 3}
!37 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @vexpress_syscfg_regmap_init.__UNIQUE_ID_ddebug202, !36, !"__UNIQUE_ID_ddebug202", i1 false, i1 false}
!40 = !{ptr @vexpress_syscfg_regmap_init._key, !41, !"_key", i1 false, i1 false}
!41 = !{!"../drivers/bus/vexpress-config.c", i32 313, i32 17}
!42 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/bus/vexpress-config.c", i32 110, i32 34}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/bus/vexpress-config.c", i32 115, i32 34}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/bus/vexpress-config.c", i32 116, i32 34}
!49 = !{ptr @vexpress_config_site_master, !50, !"vexpress_config_site_master", i1 false, i1 false}
!50 = !{!"../drivers/bus/vexpress-config.c", i32 72, i32 12}
!51 = !{ptr @vexpress_syscfg_regmap_config, !52, !"vexpress_syscfg_regmap_config", i1 false, i1 false}
!52 = !{!"../drivers/bus/vexpress-config.c", i32 235, i32 29}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/bus/vexpress-config.c", i32 71, i32 8}
!55 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @vexpress_config_mutex, !54, !"vexpress_config_mutex", i1 false, i1 false}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/bus/vexpress-config.c", i32 181, i32 2}
!59 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @vexpress_syscfg_exec.__UNIQUE_ID_ddebug199, !58, !"__UNIQUE_ID_ddebug199", i1 false, i1 false}
!61 = distinct !{null, !62, !"__already_done", i1 false, i1 false}
!62 = !{!"../drivers/bus/vexpress-config.c", i32 193, i32 4}
!63 = distinct !{null, !64, !"__already_done", i1 false, i1 false}
!64 = !{!"../drivers/bus/vexpress-config.c", i32 208, i32 6}
!65 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/bus/vexpress-config.c", i32 213, i32 3}
!67 = !{ptr @vexpress_syscfg_exec.__UNIQUE_ID_ddebug201, !66, !"__UNIQUE_ID_ddebug201", i1 false, i1 false}
!68 = !{ptr @vexpress_syscfg_id_table, !69, !"vexpress_syscfg_id_table", i1 false, i1 false}
!69 = !{!"../drivers/bus/vexpress-config.c", i32 407, i32 40}
!70 = !{!"sp"}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!80 = !{!"branch_weights", i32 1, i32 2000}
!81 = !{!"auto-init"}
!82 = !{i64 693799}
!83 = !{i64 2153252175}
!84 = !{i64 2153252791}
!85 = !{!"branch_weights", i32 2000, i32 1}
!86 = !{i64 2148171022, i64 2148171027, i64 2148171040, i64 2148171084, i64 2148171118, i64 2148171139}
!87 = !{i64 2153228013}
!88 = !{i64 2153231191}
!89 = !{i64 693381}
!90 = !{i64 2153231593}
!91 = !{i64 2153231989}
!92 = !{i64 2153232321}
!93 = !{i64 836871}
!94 = !{i64 2153237647}
!95 = !{i64 2153238764}
!96 = !{i64 2153240278}
