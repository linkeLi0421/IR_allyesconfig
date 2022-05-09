; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/tifm_sd.c_pt.bc'
source_filename = "../drivers/mmc/host/tifm_sd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.69 }
%union.anon.69 = type { ptr }
%struct.tifm_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tifm_device_id = type { i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tifm_dev = type { ptr, %struct.spinlock, i8, i32, ptr, ptr, %struct.device }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, %struct.fault_attr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, %struct.blk_crypto_profile, i8, [15 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.mmc_supply = type { ptr, ptr }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.blk_crypto_ll_ops = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tifm_sd = type { ptr, i8, i16, i32, i32, i32, %struct.tasklet_struct, %struct.timer_list, ptr, i32, i32, i32, %struct.scatterlist, [2048 x i8] }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.75, i32 }
%union.anon.75 = type { ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32, ptr, i32 }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.67, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.67 = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.54, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.54 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__param_str_no_dma = internal constant [15 x i8] c"tifm_sd.no_dma\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@no_dma = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_no_dma = internal constant %struct.kernel_param { ptr @__param_str_no_dma, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.69 { ptr @no_dma } }, section "__param", align 4
@__UNIQUE_ID_no_dmatype275 = internal constant [29 x i8] c"tifm_sd.parmtype=no_dma:bool\00", section ".modinfo", align 1
@__param_str_fixed_timeout = internal constant [22 x i8] c"tifm_sd.fixed_timeout\00", align 1
@fixed_timeout = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_fixed_timeout = internal constant %struct.kernel_param { ptr @__param_str_fixed_timeout, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.69 { ptr @fixed_timeout } }, section "__param", align 4
@__UNIQUE_ID_fixed_timeouttype276 = internal constant [36 x i8] c"tifm_sd.parmtype=fixed_timeout:bool\00", section ".modinfo", align 1
@tifm_sd_driver = internal global { %struct.tifm_driver, [32 x i8] } { %struct.tifm_driver { ptr @tifm_sd_id_tbl, ptr @tifm_sd_probe, ptr @tifm_sd_remove, ptr @tifm_sd_suspend, ptr @tifm_sd_resume, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [32 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author299 = internal constant [26 x i8] c"tifm_sd.author=Alex Dubov\00", section ".modinfo", align 1
@__UNIQUE_ID_description300 = internal constant [44 x i8] c"tifm_sd.description=TI FlashMedia SD driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file301 = internal constant [38 x i8] c"tifm_sd.file=drivers/mmc/host/tifm_sd\00", section ".modinfo", align 1
@__UNIQUE_ID_license302 = internal constant [20 x i8] c"tifm_sd.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version303 = internal constant [20 x i8] c"tifm_sd.version=0.8\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tifm_sd\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.8\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__initcall__kmod_tifm_sd__304_1090_tifm_sd_init6 = internal global ptr @tifm_sd_init, section ".initcall6.init", align 4
@__exitcall_tifm_sd_exit = internal global ptr @tifm_sd_exit, section ".exitcall.exit", align 4
@tifm_sd_id_tbl = internal global { [2 x %struct.tifm_device_id], [30 x i8] } { [2 x %struct.tifm_device_id] [%struct.tifm_device_id { i8 3 }, %struct.tifm_device_id zeroinitializer], [30 x i8] zeroinitializer }, align 32
@tifm_sd_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 953, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014%s : card gone, unexpectedly\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tifm_sd_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/mmc/host/tifm_sd.c\00", [37 x i8] zeroinitializer }, align 32
@tifm_sd_probe._entry_ptr = internal global ptr @tifm_sd_probe._entry, section ".printk_index", align 4
@tifm_sd_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"(&host->timer)\00", [17 x i8] zeroinitializer }, align 32
@tifm_sd_ops = internal constant { %struct.mmc_host_ops, [32 x i8] } { %struct.mmc_host_ops { ptr null, ptr null, ptr @tifm_sd_request, ptr null, ptr @tifm_sd_ios, ptr @tifm_sd_ro, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@tifm_sd_end_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.5, i32 751, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013 %s : no request to complete?\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tifm_sd_end_cmd\00", [16 x i8] zeroinitializer }, align 32
@tifm_sd_end_cmd._entry_ptr = internal global ptr @tifm_sd_end_cmd._entry, section ".printk_index", align 4
@tifm_sd_abort._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.5, i32 791, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013%s : card failed to respond for a long period of time (%x, %x)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tifm_sd_abort\00", [18 x i8] zeroinitializer }, align 32
@tifm_sd_abort._entry_ptr = internal global ptr @tifm_sd_abort._entry, section ".printk_index", align 4
@tifm_sd_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.5, i32 635, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s : unfinished request detected\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tifm_sd_request\00", [16 x i8] zeroinitializer }, align 32
@tifm_sd_request._entry_ptr = internal global ptr @tifm_sd_request._entry, section ".printk_index", align 4
@tifm_sd_request._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.5, i32 675, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s : scatterlist map failed\0A\00", [33 x i8] zeroinitializer }, align 32
@tifm_sd_request._entry_ptr.15 = internal global ptr @tifm_sd_request._entry.13, section ".printk_index", align 4
@tifm_sd_request._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.5, i32 687, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tifm_sd_request._entry_ptr.17 = internal global ptr @tifm_sd_request._entry.16, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@tifm_sd_set_dma_data.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.18, ptr @.str.5, ptr @.str.19, i8 0, i8 79, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tifm_sd_set_dma_data\00", [43 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"setting dma for %d blocks\0A\00", [37 x i8] zeroinitializer }, align 32
@tifm_sd_bounce_block.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str.5, ptr @.str.21, i8 0, i8 57, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tifm_sd_bounce_block\00", [43 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bouncing block\0A\00", [16 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@tifm_sd_exec.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.22, ptr @.str.5, ptr @.str.23, i8 0, i8 95, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tifm_sd_exec\00", [19 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"executing opcode 0x%x, arg: 0x%x, mask: 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@tifm_sd_ios.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.24, ptr @.str.5, ptr @.str.25, i8 0, i8 -54, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tifm_sd_ios\00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"ios: clock = %u, vdd = %x, bus_mode = %x, chip_select = %x, power_mode = %x, bus_width = %x\0A\00", [35 x i8] zeroinitializer }, align 32
@tifm_sd_card_event.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.26, ptr @.str.5, ptr @.str.27, i8 0, i8 -128, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tifm_sd_card_event\00", [45 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"host event: host_status %x, flags %x\0A\00", [58 x i8] zeroinitializer }, align 32
@tifm_sd_data_event.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.28, ptr @.str.5, ptr @.str.29, i8 0, i8 121, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tifm_sd_data_event\00", [45 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"data event: fifo_status %x, flags %x\0A\00", [58 x i8] zeroinitializer }, align 32
@tifm_sd_initialize_host._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.5, i32 907, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s : controller failed to reset\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tifm_sd_initialize_host\00", [40 x i8] zeroinitializer }, align 32
@tifm_sd_initialize_host._entry_ptr = internal global ptr @tifm_sd_initialize_host._entry, section ".printk_index", align 4
@tifm_sd_initialize_host._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.5, i32 933, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013%s : card not ready - probe failed on initialization\0A\00", [40 x i8] zeroinitializer }, align 32
@tifm_sd_initialize_host._entry_ptr.34 = internal global ptr @tifm_sd_initialize_host._entry.32, section ".printk_index", align 4
@tifm_sd_remove.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.35, ptr @.str.5, ptr @.str.36, i8 1, i8 0, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tifm_sd_remove\00", [17 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"after remove\0A\00", [18 x i8] zeroinitializer }, align 32
@tifm_sd_resume.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.37, ptr @.str.5, ptr @.str.38, i8 1, i8 4, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tifm_sd_resume\00", [17 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"resume initialize %d\0A\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 7, i64 21, i64 29]
@__sancov_gen_cov_switch_values.39 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.40 = private unnamed_addr constant [7 x i8] c"no_dma\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 21, i32 13 }
@___asan_gen_.43 = private unnamed_addr constant [14 x i8] c"fixed_timeout\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 22, i32 13 }
@___asan_gen_.46 = private unnamed_addr constant [15 x i8] c"tifm_sd_driver\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 1062, i32 27 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 1088, i32 1 }
@___asan_gen_.58 = private unnamed_addr constant [15 x i8] c"tifm_sd_id_tbl\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 1058, i32 30 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 952, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 972, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [12 x i8] c"tifm_sd_ops\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 877, i32 34 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 750, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 789, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 634, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 674, i32 5 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 686, i32 5 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 316, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 230, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 382, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 805, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 514, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 484, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 906, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 932, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 1024, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.179 = private constant [30 x i8] c"../drivers/mmc/host/tifm_sd.c\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 1043, i32 2 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @__UNIQUE_ID_author299, ptr @__UNIQUE_ID_description300, ptr @__UNIQUE_ID_file301, ptr @__UNIQUE_ID_fixed_timeouttype276, ptr @__UNIQUE_ID_license302, ptr @__UNIQUE_ID_no_dmatype275, ptr @__UNIQUE_ID_version303, ptr @__exitcall_tifm_sd_exit, ptr @__initcall__kmod_tifm_sd__304_1090_tifm_sd_init6, ptr @__modver_attr, ptr @__param_fixed_timeout, ptr @__param_no_dma, ptr @tifm_sd_abort._entry, ptr @tifm_sd_abort._entry_ptr, ptr @tifm_sd_end_cmd._entry, ptr @tifm_sd_end_cmd._entry_ptr, ptr @tifm_sd_exit, ptr @tifm_sd_initialize_host._entry, ptr @tifm_sd_initialize_host._entry.32, ptr @tifm_sd_initialize_host._entry_ptr, ptr @tifm_sd_initialize_host._entry_ptr.34, ptr @tifm_sd_probe._entry, ptr @tifm_sd_probe._entry_ptr, ptr @tifm_sd_request._entry, ptr @tifm_sd_request._entry.13, ptr @tifm_sd_request._entry.16, ptr @tifm_sd_request._entry_ptr, ptr @tifm_sd_request._entry_ptr.15, ptr @tifm_sd_request._entry_ptr.17, ptr @no_dma, ptr @fixed_timeout, ptr @tifm_sd_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @tifm_sd_id_tbl, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @tifm_sd_probe.__key, ptr @.str.6, ptr @tifm_sd_ops, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @no_dma to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fixed_timeout to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tifm_sd_driver to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tifm_sd_id_tbl to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tifm_sd_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tifm_sd_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tifm_sd_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tifm_sd_end_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tifm_sd_abort._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tifm_sd_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tifm_sd_request._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tifm_sd_request._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tifm_sd_initialize_host._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tifm_sd_initialize_host._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tifm_sd_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @tifm_unregister_driver(ptr noundef nonnull @tifm_sd_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tifm_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tifm_sd_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tifm_register_driver(ptr noundef nonnull @tifm_sd_driver) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tifm_sd_probe(ptr noundef %sock) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sock, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  %3 = and i32 %2, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %init_name.i = getelementptr inbounds %struct.tifm_dev, ptr %sock, i32 0, i32 6, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.tifm_dev, ptr %sock, i32 0, i32 6
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %5, %do.end.dev_name.exit_crit_edge ]
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %retval.0.i) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev5 = getelementptr inbounds %struct.tifm_dev, ptr %sock, i32 0, i32 6
  %call6 = tail call ptr @mmc_alloc_host(i32 noundef 2176, ptr noundef %dev5) #7
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %call6, i32 0, i32 70
  %driver_data.i.i = getelementptr inbounds %struct.tifm_dev, ptr %sock, i32 0, i32 6, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call6, ptr %driver_data.i.i, align 4
  %9 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %sock, ptr %private.i, align 4
  %timeout_jiffies = getelementptr inbounds %struct.mmc_host, ptr %call6, i32 1, i32 1, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %timeout_jiffies to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 100, ptr %timeout_jiffies, align 4
  %max_busy_timeout = getelementptr inbounds %struct.mmc_host, ptr %call6, i32 0, i32 26
  %11 = ptrtoint ptr %max_busy_timeout to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1000, ptr %max_busy_timeout, align 4
  %finish_tasklet = getelementptr inbounds %struct.mmc_host, ptr %call6, i32 1, i32 1, i32 0, i32 2
  tail call void @tasklet_setup(ptr noundef %finish_tasklet, ptr noundef nonnull @tifm_sd_end_cmd) #7
  %timer = getelementptr inbounds %struct.mmc_host, ptr %call6, i32 1, i32 1, i32 0, i32 7, i32 0, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @tifm_sd_abort, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef nonnull @tifm_sd_probe.__key) #7
  %ops = getelementptr inbounds %struct.mmc_host, ptr %call6, i32 0, i32 3
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @tifm_sd_ops, ptr %ops, align 4
  %ocr_avail = getelementptr inbounds %struct.mmc_host, ptr %call6, i32 0, i32 8
  %13 = ptrtoint ptr %ocr_avail to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 3145728, ptr %ocr_avail, align 64
  %caps = getelementptr inbounds %struct.mmc_host, ptr %call6, i32 0, i32 16
  %14 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %caps, align 32
  %f_min = getelementptr inbounds %struct.mmc_host, ptr %call6, i32 0, i32 5
  %15 = ptrtoint ptr %f_min to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 333333, ptr %f_min, align 4
  %f_max = getelementptr inbounds %struct.mmc_host, ptr %call6, i32 0, i32 6
  %16 = ptrtoint ptr %f_max to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 24000000, ptr %f_max, align 8
  %max_blk_count = getelementptr inbounds %struct.mmc_host, ptr %call6, i32 0, i32 25
  %17 = ptrtoint ptr %max_blk_count to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2048, ptr %max_blk_count, align 128
  %max_segs = getelementptr inbounds %struct.mmc_host, ptr %call6, i32 0, i32 21
  %18 = ptrtoint ptr %max_segs to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 2048, ptr %max_segs, align 4
  %max_blk_size = getelementptr inbounds %struct.mmc_host, ptr %call6, i32 0, i32 24
  %19 = ptrtoint ptr %max_blk_size to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2048, ptr %max_blk_size, align 4
  %max_seg_size = getelementptr inbounds %struct.mmc_host, ptr %call6, i32 0, i32 20
  %20 = ptrtoint ptr %max_seg_size to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 4194304, ptr %max_seg_size, align 16
  %max_req_size = getelementptr inbounds %struct.mmc_host, ptr %call6, i32 0, i32 23
  %21 = ptrtoint ptr %max_req_size to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4194304, ptr %max_req_size, align 8
  %card_event = getelementptr inbounds %struct.tifm_dev, ptr %sock, i32 0, i32 4
  %22 = ptrtoint ptr %card_event to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @tifm_sd_card_event, ptr %card_event, align 8
  %data_event = getelementptr inbounds %struct.tifm_dev, ptr %sock, i32 0, i32 5
  %23 = ptrtoint ptr %data_event to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @tifm_sd_data_event, ptr %data_event, align 4
  %call20 = tail call fastcc i32 @tifm_sd_initialize_host(ptr noundef %private.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end24, label %if.end9.if.end27_crit_edge

if.end9.if.end27_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.end24:                                         ; preds = %if.end9
  %call23 = tail call i32 @mmc_add_host(ptr noundef nonnull %call6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool25.not = icmp eq i32 %call23, 0
  br i1 %tobool25.not, label %if.end24.cleanup_crit_edge, label %if.end24.if.end27_crit_edge

if.end24.if.end27_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end27:                                         ; preds = %if.end24.if.end27_crit_edge, %if.end9.if.end27_crit_edge
  %rc.064 = phi i32 [ %call23, %if.end24.if.end27_crit_edge ], [ %call20, %if.end9.if.end27_crit_edge ]
  tail call void @mmc_free_host(ptr noundef nonnull %call6) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end24.cleanup_crit_edge, %if.end.cleanup_crit_edge, %dev_name.exit
  %retval.0 = phi i32 [ %rc.064, %if.end27 ], [ -5, %dev_name.exit ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tifm_sd_remove(ptr noundef %sock) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.tifm_dev, ptr %sock, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 70
  %lock = getelementptr inbounds %struct.tifm_dev, ptr %sock, i32 0, i32 1
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %eject = getelementptr inbounds %struct.tifm_sd, ptr %private.i, i32 0, i32 1
  %2 = ptrtoint ptr %eject to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %eject, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %eject, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %3 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sock, align 8
  %add.ptr = getelementptr i8, ptr %4, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !120
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #7
  %finish_tasklet = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 2
  tail call void @tasklet_kill(ptr noundef %finish_tasklet) #7
  %call20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %req = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 7, i32 1, i32 1
  %5 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %req, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.if.end43_crit_edge, label %do.body25

entry.if.end43_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

do.body25:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  tail call void @arm_heavy_mb() #7
  %7 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sock, align 8
  %add.ptr29 = getelementptr i8, ptr %8, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 -65536) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  tail call void @arm_heavy_mb() #7
  %9 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sock, align 8
  %add.ptr34 = getelementptr i8, ptr %10, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 0) #7, !srcloc !120
  %11 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %req, align 4
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cmd, align 4
  %error = getelementptr inbounds %struct.mmc_command, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -123, ptr %error, align 4
  %16 = load ptr, ptr %req, align 4
  %stop = getelementptr inbounds %struct.mmc_request, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %stop, align 4
  %tobool37.not = icmp eq ptr %18, null
  br i1 %tobool37.not, label %do.body25.if.end_crit_edge, label %if.then38

do.body25.if.end_crit_edge:                       ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then38:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #9
  %error41 = getelementptr inbounds %struct.mmc_command, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %error41 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -123, ptr %error41, align 4
  br label %if.end

if.end:                                           ; preds = %if.then38, %do.body25.if.end_crit_edge
  %state.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 3
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.if.end43_crit_edge

if.end.if.end43_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__tasklet_schedule(ptr noundef %finish_tasklet) #7
  br label %if.end43

if.end43:                                         ; preds = %if.then.i, %if.end.if.end43_crit_edge, %entry.if.end43_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call20) #7
  tail call void @mmc_remove_host(ptr noundef %1) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tifm_sd_remove.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tifm_sd_remove, %if.then51)) #7
          to label %do.end54 [label %if.then51], !srcloc !123

if.then51:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.tifm_dev, ptr %sock, i32 0, i32 6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tifm_sd_remove.__UNIQUE_ID_ddebug297, ptr noundef %dev, ptr noundef nonnull @.str.36) #7
  br label %do.end54

do.end54:                                         ; preds = %if.then51, %if.end43
  tail call void @mmc_free_host(ptr noundef %1) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tifm_sd_suspend(ptr nocapture noundef readnone %sock, [1 x i32] %state.coerce) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tifm_sd_resume(ptr noundef %sock) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.tifm_dev, ptr %sock, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 70
  %call2 = tail call fastcc i32 @tifm_sd_initialize_host(ptr noundef %private.i)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tifm_sd_resume.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tifm_sd_resume, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !123

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.tifm_dev, ptr %sock, i32 0, i32 6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tifm_sd_resume.__UNIQUE_ID_ddebug298, ptr noundef %dev, ptr noundef nonnull @.str.38, i32 noundef %call2) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool6.not = icmp eq i32 %call2, 0
  br i1 %tobool6.not, label %do.end.if.end8_crit_edge, label %if.then7

do.end.if.end8_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %eject = getelementptr inbounds %struct.tifm_sd, ptr %private.i, i32 0, i32 1
  %2 = ptrtoint ptr %eject to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %eject, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %eject, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %do.end.if.end8_crit_edge
  ret i32 %call2
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmc_alloc_host(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tifm_sd_end_cmd(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -20
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %driver_data.i.i = getelementptr inbounds %struct.tifm_dev, ptr %1, i32 0, i32 6, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.tifm_dev, ptr %1, i32 0, i32 1
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %timer = getelementptr i8, ptr %t, i32 24
  %call7 = tail call i32 @del_timer(ptr noundef %timer) #7
  %req = getelementptr i8, ptr %t, i32 72
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req, align 4
  store ptr null, ptr %req, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end11, label %if.end

do.end11:                                         ; preds = %entry
  %init_name.i = getelementptr inbounds %struct.tifm_dev, ptr %1, i32 0, i32 6, i32 3
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end11.dev_name.exit_crit_edge

do.end11.dev_name.exit_crit_edge:                 ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #9
  %dev13 = getelementptr inbounds %struct.tifm_dev, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev13, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end11.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %9, %if.end.i ], [ %7, %do.end11.dev_name.exit_crit_edge ]
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %retval.0.i) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cmd, align 4
  %data = getelementptr inbounds %struct.mmc_command, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %tobool17.not = icmp eq ptr %13, null
  br i1 %tobool17.not, label %if.end.do.body59_crit_edge, label %if.then18

if.end.do.body59_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body59

if.then18:                                        ; preds = %if.end
  %no_dma = getelementptr i8, ptr %t, i32 -16
  %14 = ptrtoint ptr %no_dma to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %no_dma, align 4
  %15 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool19.not = icmp eq i8 %15, 0
  br i1 %tobool19.not, label %if.else, label %do.body21

do.body21:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  tail call void @arm_heavy_mb() #7
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %add.ptr24 = getelementptr i8, ptr %17, i32 280
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  %19 = and i32 %18, -786433
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 8
  %add.ptr29 = getelementptr i8, ptr %21, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %19) #7, !srcloc !120
  br label %if.end37

if.else:                                          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  %bounce_buf = getelementptr i8, ptr %t, i32 88
  %flags30 = getelementptr inbounds %struct.mmc_data, ptr %13, i32 0, i32 6
  %22 = ptrtoint ptr %flags30 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags30, align 4
  %and31 = and i32 %23, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  %cond = select i1 %tobool32.not, i32 2, i32 1
  tail call void @tifm_unmap_sg(ptr noundef %1, ptr noundef %bounce_buf, i32 noundef 1, i32 noundef %cond) #7
  %sg = getelementptr inbounds %struct.mmc_data, ptr %13, i32 0, i32 12
  %24 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sg, align 4
  %sg_len = getelementptr inbounds %struct.mmc_data, ptr %13, i32 0, i32 10
  %26 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sg_len, align 4
  %28 = ptrtoint ptr %flags30 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags30, align 4
  %and34 = and i32 %29, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  %cond36 = select i1 %tobool35.not, i32 2, i32 1
  tail call void @tifm_unmap_sg(ptr noundef %1, ptr noundef %25, i32 noundef %27, i32 noundef %cond36) #7
  br label %if.end37

if.end37:                                         ; preds = %if.else, %do.body21
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %13, i32 0, i32 3
  %30 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %blocks, align 4
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 8
  %add.ptr41 = getelementptr i8, ptr %33, i32 300
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !126
  %35 = xor i32 %34, -1
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  %sub45 = add i32 %36, %31
  %bytes_xfered = getelementptr inbounds %struct.mmc_data, ptr %13, i32 0, i32 7
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %13, i32 0, i32 2
  %37 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %blksz, align 4
  %mul = mul i32 %38, %sub45
  %39 = ptrtoint ptr %bytes_xfered to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %mul, ptr %bytes_xfered, align 4
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 8
  %add.ptr51 = getelementptr i8, ptr %41, i32 296
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51) #7, !srcloc !117
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  %44 = ptrtoint ptr %bytes_xfered to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bytes_xfered, align 4
  %sub55 = add i32 %38, 1
  %add = sub i32 %sub55, %43
  %add57 = add i32 %add, %45
  store i32 %add57, ptr %bytes_xfered, align 4
  br label %do.body59

do.body59:                                        ; preds = %if.end37, %if.end.do.body59_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 8
  %add.ptr65 = getelementptr i8, ptr %47, i32 4
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr65) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  %49 = and i32 %48, -1073741825
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 8
  %add.ptr71 = getelementptr i8, ptr %51, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71, i32 %49) #7, !srcloc !120
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #7
  tail call void @mmc_request_done(ptr noundef %3, ptr noundef nonnull %5) #7
  br label %cleanup

cleanup:                                          ; preds = %do.body59, %dev_name.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tifm_sd_abort(ptr nocapture noundef readonly %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -44
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %init_name.i = getelementptr inbounds %struct.tifm_dev, ptr %1, i32 0, i32 6, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev2 = getelementptr inbounds %struct.tifm_dev, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %entry.dev_name.exit_crit_edge ]
  %req = getelementptr i8, ptr %t, i32 48
  %6 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %req, align 4
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cmd, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %cmd_flags = getelementptr i8, ptr %t, i32 -38
  %12 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %cmd_flags, align 2
  %conv = zext i16 %13 to i32
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %retval.0.i, i32 noundef %11, i32 noundef %conv) #10
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr, align 4
  tail call void @tifm_eject(ptr noundef %15) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tifm_sd_card_event(ptr noundef %sock) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.tifm_dev, ptr %sock, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #7
  %driver_data.i.i = getelementptr inbounds %struct.tifm_dev, ptr %sock, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 70
  %2 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sock, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 276
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !117
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !130
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tifm_sd_card_event.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tifm_sd_card_event, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !123

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.tifm_dev, ptr %sock, i32 0, i32 6
  %cmd_flags = getelementptr inbounds %struct.tifm_sd, ptr %private.i, i32 0, i32 2
  %6 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %cmd_flags, align 2
  %conv = zext i16 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tifm_sd_card_event.__UNIQUE_ID_ddebug293, ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %5, i32 noundef %conv) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %req = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 7, i32 1, i32 1
  %8 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %req, align 4
  %tobool8.not = icmp eq ptr %9, null
  br i1 %tobool8.not, label %do.end.do.body210_crit_edge, label %if.then9

do.end.do.body210_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body210

if.then9:                                         ; preds = %do.end
  %cmd11 = getelementptr inbounds %struct.mmc_request, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %cmd11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cmd11, align 4
  %and = and i32 %5, 480
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.else79, label %do.body14

do.body14:                                        ; preds = %if.then9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  tail call void @arm_heavy_mb() #7
  %12 = tail call i32 @llvm.bswap.i32(i32 %and)
  %13 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sock, align 8
  %add.ptr19 = getelementptr i8, ptr %14, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %12) #7, !srcloc !120
  %and20 = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  %and23 = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  %spec.select = select i1 %tobool24.not, i32 0, i32 -84
  %cmd_error.0 = select i1 %tobool21.not, i32 %spec.select, i32 -110
  %data = getelementptr inbounds %struct.mmc_command, ptr %11, i32 0, i32 7
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %tobool28.not = icmp eq ptr %16, null
  br i1 %tobool28.not, label %do.body14.do.body43_crit_edge, label %if.then29

do.body14.do.body43_crit_edge:                    ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body43

if.then29:                                        ; preds = %do.body14
  %and30 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.else34, label %if.then29.do.body43.sink.split_crit_edge

if.then29.do.body43.sink.split_crit_edge:         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body43.sink.split

if.else34:                                        ; preds = %if.then29
  %and35 = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.else34.do.body43_crit_edge, label %if.else34.do.body43.sink.split_crit_edge

if.else34.do.body43.sink.split_crit_edge:         ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body43.sink.split

if.else34.do.body43_crit_edge:                    ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body43

do.body43.sink.split:                             ; preds = %if.else34.do.body43.sink.split_crit_edge, %if.then29.do.body43.sink.split_crit_edge
  %.sink = phi i32 [ -110, %if.then29.do.body43.sink.split_crit_edge ], [ -84, %if.else34.do.body43.sink.split_crit_edge ]
  %error39 = getelementptr inbounds %struct.mmc_data, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %error39 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %.sink, ptr %error39, align 4
  br label %do.body43

do.body43:                                        ; preds = %do.body43.sink.split, %if.else34.do.body43_crit_edge, %do.body14.do.body43_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !132
  tail call void @arm_heavy_mb() #7
  %18 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sock, align 8
  %add.ptr47 = getelementptr i8, ptr %19, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 -65536) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  tail call void @arm_heavy_mb() #7
  %20 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sock, align 8
  %add.ptr52 = getelementptr i8, ptr %21, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 33554432) #7, !srcloc !120
  %22 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %req, align 4
  %stop = getelementptr inbounds %struct.mmc_request, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %stop, align 4
  %tobool54.not = icmp eq ptr %25, null
  br i1 %tobool54.not, label %if.else76, label %if.then55

if.then55:                                        ; preds = %do.body43
  %cmd_flags56 = getelementptr inbounds %struct.tifm_sd, ptr %private.i, i32 0, i32 2
  %26 = ptrtoint ptr %cmd_flags56 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %cmd_flags56, align 2
  %28 = and i16 %27, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool59.not = icmp eq i16 %28, 0
  br i1 %tobool59.not, label %if.else67, label %if.then60

if.then60:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #9
  %error63 = getelementptr inbounds %struct.mmc_command, ptr %25, i32 0, i32 5
  %29 = ptrtoint ptr %error63 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %cmd_error.0, ptr %error63, align 4
  %30 = ptrtoint ptr %cmd_flags56 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %cmd_flags56, align 2
  %32 = or i16 %31, 16
  store i16 %32, ptr %cmd_flags56, align 2
  br label %if.end115

if.else67:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #9
  %error68 = getelementptr inbounds %struct.mmc_command, ptr %11, i32 0, i32 5
  %33 = ptrtoint ptr %error68 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %cmd_error.0, ptr %error68, align 4
  %34 = ptrtoint ptr %cmd_flags56 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %cmd_flags56, align 2
  %36 = or i16 %35, 8
  store i16 %36, ptr %cmd_flags56, align 2
  %37 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %req, align 4
  %stop74 = getelementptr inbounds %struct.mmc_request, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %stop74 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %stop74, align 4
  tail call fastcc void @tifm_sd_exec(ptr noundef %private.i, ptr noundef %40)
  br label %do.body210

if.else76:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #9
  %error77 = getelementptr inbounds %struct.mmc_command, ptr %11, i32 0, i32 5
  %41 = ptrtoint ptr %error77 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %cmd_error.0, ptr %error77, align 4
  br label %if.end115

if.else79:                                        ; preds = %if.then9
  %and80 = and i32 %5, 16385
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %if.else79.if.end106_crit_edge, label %if.then82

if.else79.if.end106_crit_edge:                    ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end106

if.then82:                                        ; preds = %if.else79
  %cmd_flags83 = getelementptr inbounds %struct.tifm_sd, ptr %private.i, i32 0, i32 2
  %42 = ptrtoint ptr %cmd_flags83 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %cmd_flags83, align 2
  %conv84 = zext i16 %43 to i32
  %and85 = and i32 %conv84, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %if.then87, label %if.else92

if.then87:                                        ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #9
  %or90 = or i16 %43, 1
  %44 = ptrtoint ptr %cmd_flags83 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %or90, ptr %cmd_flags83, align 2
  %45 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sock, align 8
  %add.ptr1.i = getelementptr i8, ptr %46, i32 352
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #7, !srcloc !117
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !134
  %shl.i = shl i32 %48, 16
  %49 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sock, align 8
  %add.ptr7.i = getelementptr i8, ptr %50, i32 348
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #7, !srcloc !117
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !135
  %or.i = or i32 %52, %shl.i
  %resp.i = getelementptr inbounds %struct.mmc_command, ptr %11, i32 0, i32 2
  %53 = ptrtoint ptr %resp.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %or.i, ptr %resp.i, align 4
  %54 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sock, align 8
  %add.ptr15.i = getelementptr i8, ptr %55, i32 344
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i) #7, !srcloc !117
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  %shl19.i = shl i32 %57, 16
  %58 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %sock, align 8
  %add.ptr24.i = getelementptr i8, ptr %59, i32 340
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.i) #7, !srcloc !117
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !137
  %or28.i = or i32 %61, %shl19.i
  %arrayidx30.i = getelementptr %struct.mmc_command, ptr %11, i32 0, i32 2, i32 1
  %62 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %or28.i, ptr %arrayidx30.i, align 4
  %63 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %sock, align 8
  %add.ptr35.i = getelementptr i8, ptr %64, i32 336
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35.i) #7, !srcloc !117
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  %shl39.i = shl i32 %66, 16
  %67 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %sock, align 8
  %add.ptr44.i = getelementptr i8, ptr %68, i32 332
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr44.i) #7, !srcloc !117
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !139
  %or48.i = or i32 %70, %shl39.i
  %arrayidx50.i = getelementptr %struct.mmc_command, ptr %11, i32 0, i32 2, i32 2
  %71 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %or48.i, ptr %arrayidx50.i, align 4
  %72 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %sock, align 8
  %add.ptr55.i = getelementptr i8, ptr %73, i32 328
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr55.i) #7, !srcloc !117
  %75 = tail call i32 @llvm.bswap.i32(i32 %74) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !140
  %shl59.i = shl i32 %75, 16
  %76 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %sock, align 8
  %add.ptr63.i = getelementptr i8, ptr %77, i32 324
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr63.i) #7, !srcloc !117
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !141
  %or68.i = or i32 %79, %shl59.i
  br label %if.end106.sink.split

if.else92:                                        ; preds = %if.then82
  %and95 = and i32 %conv84, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %if.else92.if.end106_crit_edge, label %if.then97

if.else92.if.end106_crit_edge:                    ; preds = %if.else92
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end106

if.then97:                                        ; preds = %if.else92
  call void @__sanitizer_cov_trace_pc() #9
  %or100 = or i16 %43, 16
  %80 = ptrtoint ptr %cmd_flags83 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %or100, ptr %cmd_flags83, align 2
  %stop103 = getelementptr inbounds %struct.mmc_request, ptr %9, i32 0, i32 3
  %81 = ptrtoint ptr %stop103 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %stop103, align 4
  %83 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %sock, align 8
  %add.ptr1.i274 = getelementptr i8, ptr %84, i32 352
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i274) #7, !srcloc !117
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !134
  %shl.i275 = shl i32 %86, 16
  %87 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %sock, align 8
  %add.ptr7.i276 = getelementptr i8, ptr %88, i32 348
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i276) #7, !srcloc !117
  %90 = tail call i32 @llvm.bswap.i32(i32 %89) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !135
  %or.i277 = or i32 %90, %shl.i275
  %resp.i278 = getelementptr inbounds %struct.mmc_command, ptr %82, i32 0, i32 2
  %91 = ptrtoint ptr %resp.i278 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %or.i277, ptr %resp.i278, align 4
  %92 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %sock, align 8
  %add.ptr15.i279 = getelementptr i8, ptr %93, i32 344
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i279) #7, !srcloc !117
  %95 = tail call i32 @llvm.bswap.i32(i32 %94) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  %shl19.i280 = shl i32 %95, 16
  %96 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %sock, align 8
  %add.ptr24.i281 = getelementptr i8, ptr %97, i32 340
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.i281) #7, !srcloc !117
  %99 = tail call i32 @llvm.bswap.i32(i32 %98) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !137
  %or28.i282 = or i32 %99, %shl19.i280
  %arrayidx30.i283 = getelementptr %struct.mmc_command, ptr %82, i32 0, i32 2, i32 1
  %100 = ptrtoint ptr %arrayidx30.i283 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %or28.i282, ptr %arrayidx30.i283, align 4
  %101 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %sock, align 8
  %add.ptr35.i284 = getelementptr i8, ptr %102, i32 336
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35.i284) #7, !srcloc !117
  %104 = tail call i32 @llvm.bswap.i32(i32 %103) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  %shl39.i285 = shl i32 %104, 16
  %105 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %sock, align 8
  %add.ptr44.i286 = getelementptr i8, ptr %106, i32 332
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr44.i286) #7, !srcloc !117
  %108 = tail call i32 @llvm.bswap.i32(i32 %107) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !139
  %or48.i287 = or i32 %108, %shl39.i285
  %arrayidx50.i288 = getelementptr %struct.mmc_command, ptr %82, i32 0, i32 2, i32 2
  %109 = ptrtoint ptr %arrayidx50.i288 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %or48.i287, ptr %arrayidx50.i288, align 4
  %110 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %sock, align 8
  %add.ptr55.i289 = getelementptr i8, ptr %111, i32 328
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr55.i289) #7, !srcloc !117
  %113 = tail call i32 @llvm.bswap.i32(i32 %112) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !140
  %shl59.i290 = shl i32 %113, 16
  %114 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %sock, align 8
  %add.ptr63.i291 = getelementptr i8, ptr %115, i32 324
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr63.i291) #7, !srcloc !117
  %117 = tail call i32 @llvm.bswap.i32(i32 %116) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !141
  %or68.i292 = or i32 %117, %shl59.i290
  br label %if.end106.sink.split

if.end106.sink.split:                             ; preds = %if.then97, %if.then87
  %.sink307 = phi ptr [ %11, %if.then87 ], [ %82, %if.then97 ]
  %or68.i.sink = phi i32 [ %or68.i, %if.then87 ], [ %or68.i292, %if.then97 ]
  %arrayidx70.i = getelementptr %struct.mmc_command, ptr %.sink307, i32 0, i32 2, i32 3
  %118 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %or68.i.sink, ptr %arrayidx70.i, align 4
  br label %if.end106

if.end106:                                        ; preds = %if.end106.sink.split, %if.else92.if.end106_crit_edge, %if.else79.if.end106_crit_edge
  %and107 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %tobool108.not = icmp eq i32 %and107, 0
  br i1 %tobool108.not, label %if.end106.if.end115_crit_edge, label %if.then109

if.end106.if.end115_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end115

if.then109:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #9
  %cmd_flags110 = getelementptr inbounds %struct.tifm_sd, ptr %private.i, i32 0, i32 2
  %119 = ptrtoint ptr %cmd_flags110 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %cmd_flags110, align 2
  %121 = or i16 %120, 4
  store i16 %121, ptr %cmd_flags110, align 2
  br label %if.end115

if.end115:                                        ; preds = %if.then109, %if.end106.if.end115_crit_edge, %if.else76, %if.then60
  %no_dma = getelementptr inbounds %struct.tifm_sd, ptr %private.i, i32 0, i32 1
  %122 = ptrtoint ptr %no_dma to i32
  call void @__asan_load1_noabort(i32 %122)
  %bf.load = load i8, ptr %no_dma, align 4
  %123 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool117.not = icmp eq i8 %123, 0
  br i1 %tobool117.not, label %if.end115.if.end191_crit_edge, label %land.lhs.true

if.end115.if.end191_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end191

land.lhs.true:                                    ; preds = %if.end115
  %data118 = getelementptr inbounds %struct.mmc_command, ptr %11, i32 0, i32 7
  %124 = ptrtoint ptr %data118 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %data118, align 4
  %tobool119.not = icmp eq ptr %125, null
  br i1 %tobool119.not, label %land.lhs.true.if.end191_crit_edge, label %if.then120

land.lhs.true.if.end191_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end191

if.then120:                                       ; preds = %land.lhs.true
  %and121 = and i32 %5, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121)
  %tobool122.not = icmp eq i32 %and121, 0
  br i1 %tobool122.not, label %if.then120.if.end130_crit_edge, label %do.body124

if.then120.if.end130_crit_edge:                   ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end130

do.body124:                                       ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !142
  tail call void @arm_heavy_mb() #7
  %126 = shl nuw nsw i32 %and121, 8
  %127 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %sock, align 8
  %add.ptr129 = getelementptr i8, ptr %128, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr129, i32 %126) #7, !srcloc !120
  br label %if.end130

if.end130:                                        ; preds = %do.body124, %if.then120.if.end130_crit_edge
  %and131 = and i32 %5, 3080
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131)
  %tobool132.not = icmp eq i32 %and131, 0
  br i1 %tobool132.not, label %if.end130.if.end191_crit_edge, label %do.body135

if.end130.if.end191_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end191

do.body135:                                       ; preds = %if.end130
  %129 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !143
  %and.i = and i32 %129, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool148.not = icmp eq i32 %and.i, 0
  br i1 %tobool148.not, label %if.then149, label %do.body135.do.end152_crit_edge

do.body135.do.end152_crit_edge:                   ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end152

if.then149:                                       ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_off() #7
  br label %do.end152

do.end152:                                        ; preds = %if.then149, %do.body135.do.end152_crit_edge
  %130 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %req, align 4
  %cmd.i = getelementptr inbounds %struct.mmc_request, ptr %131, i32 0, i32 1
  %132 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %cmd.i, align 4
  %data.i = getelementptr inbounds %struct.mmc_command, ptr %133, i32 0, i32 7
  %134 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %data.i, align 4
  %sg1.i = getelementptr inbounds %struct.mmc_data, ptr %135, i32 0, i32 12
  %136 = ptrtoint ptr %sg1.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %sg1.i, align 4
  %sg_pos.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 7, i32 1, i32 3
  %138 = ptrtoint ptr %sg_pos.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %sg_pos.i, align 4
  %sg_len.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 7, i32 1, i32 2
  %140 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %sg_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %139, i32 %141)
  %cmp.i = icmp eq i32 %139, %141
  br i1 %cmp.i, label %do.end152.tifm_sd_transfer_data.exit_crit_edge, label %while.cond.preheader.i

do.end152.tifm_sd_transfer_data.exit_crit_edge:   ; preds = %do.end152
  call void @__sanitizer_cov_trace_pc() #9
  br label %tifm_sd_transfer_data.exit

while.cond.preheader.i:                           ; preds = %do.end152
  %block_pos.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4
  %flags40.i = getelementptr inbounds %struct.mmc_data, ptr %135, i32 0, i32 6
  %cmd_flags.i.i = getelementptr inbounds %struct.tifm_sd, ptr %private.i, i32 0, i32 2
  %bounce_buf_data.i.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 7
  br label %while.body.i

while.body.i:                                     ; preds = %if.end49.i.while.body.i_crit_edge, %while.cond.preheader.i
  %t_size.0131.i = phi i32 [ 64, %while.cond.preheader.i ], [ %sub50.i, %if.end49.i.while.body.i_crit_edge ]
  %142 = ptrtoint ptr %sg_pos.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %sg_pos.i, align 4
  %length.i = getelementptr %struct.scatterlist, ptr %137, i32 %143, i32 2
  %144 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %length.i, align 4
  %146 = ptrtoint ptr %block_pos.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %block_pos.i, align 4
  %sub.i = sub i32 %145, %147
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool3.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %while.body.i.if.end22.i_crit_edge

while.body.i.if.end22.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

if.then4.i:                                       ; preds = %while.body.i
  %148 = ptrtoint ptr %block_pos.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 0, ptr %block_pos.i, align 4
  %inc.i = add i32 %143, 1
  %149 = ptrtoint ptr %sg_pos.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %inc.i, ptr %sg_pos.i, align 4
  %150 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %sg_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %151)
  %cmp9.i = icmp eq i32 %inc.i, %151
  br i1 %cmp9.i, label %if.then10.i, label %if.end18.i

if.then10.i:                                      ; preds = %if.then4.i
  %152 = ptrtoint ptr %flags40.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %flags40.i, align 4
  %and.i294 = and i32 %153, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i294)
  %tobool11.not.i = icmp eq i32 %and.i294, 0
  br i1 %tobool11.not.i, label %if.then10.i.tifm_sd_transfer_data.exit_crit_edge, label %land.lhs.true.i

if.then10.i.tifm_sd_transfer_data.exit_crit_edge: ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tifm_sd_transfer_data.exit

land.lhs.true.i:                                  ; preds = %if.then10.i
  %154 = ptrtoint ptr %cmd_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %cmd_flags.i.i, align 2
  %156 = and i16 %155, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %156)
  %tobool13.not.i = icmp eq i16 %156, 0
  br i1 %tobool13.not.i, label %land.lhs.true.i.tifm_sd_transfer_data.exit_crit_edge, label %do.body.i

land.lhs.true.i.tifm_sd_transfer_data.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tifm_sd_transfer_data.exit

do.body.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  tail call void @arm_heavy_mb() #7
  %157 = ptrtoint ptr %bounce_buf_data.i.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %bounce_buf_data.i.i, align 4
  %conv16.i = zext i8 %158 to i32
  %159 = shl nuw i32 %conv16.i, 24
  %160 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %private.i, align 4
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %161, align 8
  %add.ptr.i = getelementptr i8, ptr %163, i32 292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %159) #7, !srcloc !120
  br label %tifm_sd_transfer_data.exit

if.end18.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  %length21.i = getelementptr %struct.scatterlist, ptr %137, i32 %inc.i, i32 2
  %164 = ptrtoint ptr %length21.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %length21.i, align 4
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.end18.i, %while.body.i.if.end22.i_crit_edge
  %cnt.0.i = phi i32 [ %sub.i, %while.body.i.if.end22.i_crit_edge ], [ %165, %if.end18.i ]
  %166 = ptrtoint ptr %sg_pos.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %sg_pos.i, align 4
  %arrayidx24.i = getelementptr %struct.scatterlist, ptr %137, i32 %167
  %168 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %arrayidx24.i, align 4
  %and.i.i.i = and i32 %169, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_page.exit.i, label %do.body2.i.i, !prof !145

do.body2.i.i:                                     ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #7, !srcloc !146
  unreachable

sg_page.exit.i:                                   ; preds = %if.end22.i
  %offset.i = getelementptr %struct.scatterlist, ptr %137, i32 %167, i32 1
  %170 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %offset.i, align 4
  %172 = ptrtoint ptr %block_pos.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %block_pos.i, align 4
  %add.i = add i32 %173, %171
  %and.i.i = and i32 %169, -4
  %174 = inttoptr i32 %and.i.i to ptr
  %shr.i = lshr i32 %add.i, 12
  %add.ptr28.i = getelementptr %struct.page, ptr %174, i32 %shr.i
  %and29.i = and i32 %add.i, 4095
  %sub30.i = sub nuw nsw i32 4096, %and29.i
  %175 = tail call i32 @llvm.umin.i32(i32 %sub30.i, i32 %cnt.0.i) #7
  %176 = tail call i32 @llvm.umin.i32(i32 %175, i32 %t_size.0131.i) #7
  %177 = ptrtoint ptr %flags40.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %flags40.i, align 4
  %and41.i = and i32 %178, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i)
  %tobool42.not.i = icmp eq i32 %and41.i, 0
  br i1 %tobool42.not.i, label %if.else.i, label %if.then43.i

if.then43.i:                                      ; preds = %sg_page.exit.i
  %179 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %private.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %181 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i.i = or i32 %181, 512
  %182 = tail call i32 @llvm.read_register.i32(metadata !107) #7
  %and.i.i.i.i.i.i.i = and i32 %182, -16384
  %183 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %183, i32 0, i32 1
  %184 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %185, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !147
  %186 = tail call i32 @llvm.read_register.i32(metadata !107) #7
  %and.i.i.i1.i.i.i.i = and i32 %186, -16384
  %187 = inttoptr i32 %and.i.i.i1.i.i.i.i to ptr
  %task.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %187, i32 0, i32 2
  %188 = ptrtoint ptr %task.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %task.i.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %189, i32 0, i32 213
  %190 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %pagefault_disabled.i.i.i.i.i.i, align 8
  %inc.i.i.i.i.i.i = add i32 %191, 1
  store i32 %inc.i.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !148
  %call.i.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr28.i, i32 noundef %or.i.i.i) #7
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 %and29.i
  %192 = ptrtoint ptr %cmd_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %cmd_flags.i.i, align 2
  %194 = and i16 %193, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %194)
  %tobool.not.i.i = icmp eq i16 %194, 0
  br i1 %tobool.not.i.i, label %if.then43.i.if.end.i.i_crit_edge, label %if.then.i.i

if.then43.i.if.end.i.i_crit_edge:                 ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #9
  %195 = ptrtoint ptr %bounce_buf_data.i.i to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %bounce_buf_data.i.i, align 4
  %197 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 %196, ptr %add.ptr.i.i, align 1
  %198 = ptrtoint ptr %cmd_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %cmd_flags.i.i, align 2
  %200 = and i16 %199, -65
  store i16 %200, ptr %cmd_flags.i.i, align 2
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then43.i.if.end.i.i_crit_edge
  %pos.0.i.i = phi i32 [ 1, %if.then.i.i ], [ 0, %if.then43.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %pos.0.i.i, i32 %176)
  %cmp50.i.i = icmp ult i32 %pos.0.i.i, %176
  br i1 %cmp50.i.i, label %if.end.i.i.while.body.i.i_crit_edge, label %if.end.i.i.tifm_sd_read_fifo.exit.i_crit_edge

if.end.i.i.tifm_sd_read_fifo.exit.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tifm_sd_read_fifo.exit.i

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end24.i.i.while.body.i.i_crit_edge, %if.end.i.i.while.body.i.i_crit_edge
  %pos.151.i.i = phi i32 [ %inc28.i.i, %if.end24.i.i.while.body.i.i_crit_edge ], [ %pos.0.i.i, %if.end.i.i.while.body.i.i_crit_edge ]
  %201 = ptrtoint ptr %180 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %180, align 8
  %add.ptr7.i.i = getelementptr i8, ptr %202, i32 292
  %203 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i) #7, !srcloc !117
  %204 = tail call i32 @llvm.bswap.i32(i32 %203) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !149
  %conv11.i.i = trunc i32 %204 to i8
  %inc12.i.i = add nuw nsw i32 %pos.151.i.i, 1
  %arrayidx13.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %pos.151.i.i
  %205 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 %conv11.i.i, ptr %arrayidx13.i.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc12.i.i, i32 %176)
  %cmp14.i.i = icmp eq i32 %inc12.i.i, %176
  %shr.i.i = lshr i32 %204, 8
  %conv18.i.i = trunc i32 %shr.i.i to i8
  br i1 %cmp14.i.i, label %if.then16.i.i, label %if.end24.i.i

if.then16.i.i:                                    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv18.i.i.le = trunc i32 %shr.i.i to i8
  %206 = ptrtoint ptr %bounce_buf_data.i.i to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 %conv18.i.i.le, ptr %bounce_buf_data.i.i, align 4
  %207 = ptrtoint ptr %cmd_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %207)
  %208 = load i16, ptr %cmd_flags.i.i, align 2
  %209 = or i16 %208, 64
  store i16 %209, ptr %cmd_flags.i.i, align 2
  br label %tifm_sd_read_fifo.exit.i

if.end24.i.i:                                     ; preds = %while.body.i.i
  %inc28.i.i = add nuw nsw i32 %pos.151.i.i, 2
  %arrayidx29.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %inc12.i.i
  %210 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 %conv18.i.i, ptr %arrayidx29.i.i, align 1
  %cmp.i.i = icmp ult i32 %inc28.i.i, %176
  br i1 %cmp.i.i, label %if.end24.i.i.while.body.i.i_crit_edge, label %if.end24.i.i.tifm_sd_read_fifo.exit.i_crit_edge

if.end24.i.i.tifm_sd_read_fifo.exit.i_crit_edge:  ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tifm_sd_read_fifo.exit.i

if.end24.i.i.while.body.i.i_crit_edge:            ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i

tifm_sd_read_fifo.exit.i:                         ; preds = %if.end24.i.i.tifm_sd_read_fifo.exit.i_crit_edge, %if.then16.i.i, %if.end.i.i.tifm_sd_read_fifo.exit.i_crit_edge
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i.i) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !150
  %211 = tail call i32 @llvm.read_register.i32(metadata !107) #7
  %and.i.i.i1.i.i.i = and i32 %211, -16384
  %212 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %212, i32 0, i32 2
  %213 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %214, i32 0, i32 213
  %215 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %dec.i.i.i.i.i = add i32 %216, -1
  store i32 %dec.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !151
  br label %if.end49.sink.split.i

if.else.i:                                        ; preds = %sg_page.exit.i
  %and45.i = and i32 %178, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i)
  %tobool46.not.i = icmp eq i32 %and45.i, 0
  br i1 %tobool46.not.i, label %if.else.i.if.end49.i_crit_edge, label %if.then47.i

if.else.i.if.end49.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49.i

if.then47.i:                                      ; preds = %if.else.i
  %217 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %private.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %219 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i100.i = or i32 %219, 512
  %220 = tail call i32 @llvm.read_register.i32(metadata !107) #7
  %and.i.i.i.i.i.i101.i = and i32 %220, -16384
  %221 = inttoptr i32 %and.i.i.i.i.i.i101.i to ptr
  %preempt_count.i.i.i.i.i102.i = getelementptr inbounds %struct.thread_info, ptr %221, i32 0, i32 1
  %222 = ptrtoint ptr %preempt_count.i.i.i.i.i102.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load volatile i32, ptr %preempt_count.i.i.i.i.i102.i, align 4
  %add.i.i.i.i103.i = add i32 %223, 1
  store volatile i32 %add.i.i.i.i103.i, ptr %preempt_count.i.i.i.i.i102.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !147
  %224 = tail call i32 @llvm.read_register.i32(metadata !107) #7
  %and.i.i.i1.i.i.i104.i = and i32 %224, -16384
  %225 = inttoptr i32 %and.i.i.i1.i.i.i104.i to ptr
  %task.i.i.i.i.i105.i = getelementptr inbounds %struct.thread_info, ptr %225, i32 0, i32 2
  %226 = ptrtoint ptr %task.i.i.i.i.i105.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %task.i.i.i.i.i105.i, align 8
  %pagefault_disabled.i.i.i.i.i106.i = getelementptr inbounds %struct.task_struct, ptr %227, i32 0, i32 213
  %228 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i106.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %pagefault_disabled.i.i.i.i.i106.i, align 8
  %inc.i.i.i.i.i107.i = add i32 %229, 1
  store i32 %inc.i.i.i.i.i107.i, ptr %pagefault_disabled.i.i.i.i.i106.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !148
  %call.i.i.i108.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr28.i, i32 noundef %or.i.i100.i) #7
  %add.ptr.i109.i = getelementptr i8, ptr %call.i.i.i108.i, i32 %and29.i
  %230 = ptrtoint ptr %cmd_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %230)
  %231 = load i16, ptr %cmd_flags.i.i, align 2
  %232 = and i16 %231, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %232)
  %tobool.not.i111.i = icmp eq i16 %232, 0
  br i1 %tobool.not.i111.i, label %if.then47.i.if.end.i115.i_crit_edge, label %if.then.i113.i

if.then47.i.if.end.i115.i_crit_edge:              ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i115.i

if.then.i113.i:                                   ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #9
  %233 = ptrtoint ptr %bounce_buf_data.i.i to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %bounce_buf_data.i.i, align 4
  %conv1.i.i = zext i8 %234 to i32
  %235 = ptrtoint ptr %add.ptr.i109.i to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %add.ptr.i109.i, align 1
  %conv3.i.i = zext i8 %236 to i32
  %shl.i.i = shl nuw nsw i32 %conv3.i.i, 8
  %or.i.i = or i32 %shl.i.i, %conv1.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @arm_heavy_mb() #7
  %237 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #7
  %238 = ptrtoint ptr %218 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %218, align 8
  %add.ptr5.i.i = getelementptr i8, ptr %239, i32 292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 %237) #7, !srcloc !120
  %240 = ptrtoint ptr %cmd_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %240)
  %241 = load i16, ptr %cmd_flags.i.i, align 2
  %242 = and i16 %241, -65
  store i16 %242, ptr %cmd_flags.i.i, align 2
  br label %if.end.i115.i

if.end.i115.i:                                    ; preds = %if.then.i113.i, %if.then47.i.if.end.i115.i_crit_edge
  %pos.0.i114.i = phi i32 [ 1, %if.then.i113.i ], [ 0, %if.then47.i.if.end.i115.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %pos.0.i114.i, i32 %176)
  %cmp62.i.i = icmp ult i32 %pos.0.i114.i, %176
  br i1 %cmp62.i.i, label %if.end.i115.i.while.body.i117.i_crit_edge, label %if.end.i115.i.tifm_sd_write_fifo.exit.i_crit_edge

if.end.i115.i.tifm_sd_write_fifo.exit.i_crit_edge: ; preds = %if.end.i115.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tifm_sd_write_fifo.exit.i

if.end.i115.i.while.body.i117.i_crit_edge:        ; preds = %if.end.i115.i
  br label %while.body.i117.i

while.body.i117.i:                                ; preds = %if.end25.i.i.while.body.i117.i_crit_edge, %if.end.i115.i.while.body.i117.i_crit_edge
  %pos.163.i.i = phi i32 [ %inc26.i.i, %if.end25.i.i.while.body.i117.i_crit_edge ], [ %pos.0.i114.i, %if.end.i115.i.while.body.i117.i_crit_edge ]
  %inc11.i.i = add nuw nsw i32 %pos.163.i.i, 1
  %arrayidx12.i.i = getelementptr i8, ptr %add.ptr.i109.i, i32 %pos.163.i.i
  %243 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %arrayidx12.i.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc11.i.i, i32 %176)
  %cmp14.i116.i = icmp eq i32 %inc11.i.i, %176
  br i1 %cmp14.i116.i, label %if.then16.i119.i, label %if.end25.i.i

if.then16.i119.i:                                 ; preds = %while.body.i117.i
  call void @__sanitizer_cov_trace_pc() #9
  %245 = ptrtoint ptr %bounce_buf_data.i.i to i32
  call void @__asan_store1_noabort(i32 %245)
  store i8 %244, ptr %bounce_buf_data.i.i, align 4
  %246 = ptrtoint ptr %cmd_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %246)
  %247 = load i16, ptr %cmd_flags.i.i, align 2
  %248 = or i16 %247, 64
  store i16 %248, ptr %cmd_flags.i.i, align 2
  br label %tifm_sd_write_fifo.exit.i

if.end25.i.i:                                     ; preds = %while.body.i117.i
  %conv13.i.i = zext i8 %244 to i32
  %inc26.i.i = add nuw nsw i32 %pos.163.i.i, 2
  %arrayidx27.i.i = getelementptr i8, ptr %add.ptr.i109.i, i32 %inc11.i.i
  %249 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %arrayidx27.i.i, align 1
  %conv28.i.i = zext i8 %250 to i32
  %shl29.i.i = shl nuw nsw i32 %conv28.i.i, 8
  %or31.i.i = or i32 %shl29.i.i, %conv13.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !153
  tail call void @arm_heavy_mb() #7
  %251 = tail call i32 @llvm.bswap.i32(i32 %or31.i.i) #7
  %252 = ptrtoint ptr %218 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %218, align 8
  %add.ptr36.i.i = getelementptr i8, ptr %253, i32 292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i.i, i32 %251) #7, !srcloc !120
  %cmp.i120.i = icmp ult i32 %inc26.i.i, %176
  br i1 %cmp.i120.i, label %if.end25.i.i.while.body.i117.i_crit_edge, label %if.end25.i.i.tifm_sd_write_fifo.exit.i_crit_edge

if.end25.i.i.tifm_sd_write_fifo.exit.i_crit_edge: ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tifm_sd_write_fifo.exit.i

if.end25.i.i.while.body.i117.i_crit_edge:         ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i117.i

tifm_sd_write_fifo.exit.i:                        ; preds = %if.end25.i.i.tifm_sd_write_fifo.exit.i_crit_edge, %if.then16.i119.i, %if.end.i115.i.tifm_sd_write_fifo.exit.i_crit_edge
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i108.i) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !150
  %254 = tail call i32 @llvm.read_register.i32(metadata !107) #7
  %and.i.i.i1.i.i121.i = and i32 %254, -16384
  %255 = inttoptr i32 %and.i.i.i1.i.i121.i to ptr
  %task.i.i.i.i122.i = getelementptr inbounds %struct.thread_info, ptr %255, i32 0, i32 2
  %256 = ptrtoint ptr %task.i.i.i.i122.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %task.i.i.i.i122.i, align 8
  %pagefault_disabled.i.i.i.i123.i = getelementptr inbounds %struct.task_struct, ptr %257, i32 0, i32 213
  %258 = ptrtoint ptr %pagefault_disabled.i.i.i.i123.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %pagefault_disabled.i.i.i.i123.i, align 8
  %dec.i.i.i.i124.i = add i32 %259, -1
  store i32 %dec.i.i.i.i124.i, ptr %pagefault_disabled.i.i.i.i123.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !151
  br label %if.end49.sink.split.i

if.end49.sink.split.i:                            ; preds = %tifm_sd_write_fifo.exit.i, %tifm_sd_read_fifo.exit.i
  %260 = tail call i32 @llvm.read_register.i32(metadata !107) #7
  %and.i.i.i.i.i.i = and i32 %260, -16384
  %261 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %261, i32 0, i32 1
  %262 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %sub.i.i.i127.i = add i32 %263, -1
  store volatile i32 %sub.i.i.i127.i, ptr %preempt_count.i.i.i.i.i, align 4
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.end49.sink.split.i, %if.else.i.if.end49.i_crit_edge
  %sub50.i = sub i32 %t_size.0131.i, %176
  %264 = ptrtoint ptr %block_pos.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %block_pos.i, align 4
  %add52.i = add i32 %265, %176
  store i32 %add52.i, ptr %block_pos.i, align 4
  %tobool.not.i = icmp eq i32 %sub50.i, 0
  br i1 %tobool.not.i, label %if.end49.i.tifm_sd_transfer_data.exit_crit_edge, label %if.end49.i.while.body.i_crit_edge

if.end49.i.while.body.i_crit_edge:                ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

if.end49.i.tifm_sd_transfer_data.exit_crit_edge:  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tifm_sd_transfer_data.exit

tifm_sd_transfer_data.exit:                       ; preds = %if.end49.i.tifm_sd_transfer_data.exit_crit_edge, %do.body.i, %land.lhs.true.i.tifm_sd_transfer_data.exit_crit_edge, %if.then10.i.tifm_sd_transfer_data.exit_crit_edge, %do.end152.tifm_sd_transfer_data.exit_crit_edge
  br i1 %tobool148.not, label %if.then162, label %tifm_sd_transfer_data.exit.do.body164_crit_edge

tifm_sd_transfer_data.exit.do.body164_crit_edge:  ; preds = %tifm_sd_transfer_data.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body164

if.then162:                                       ; preds = %tifm_sd_transfer_data.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_on() #7
  br label %do.body164

do.body164:                                       ; preds = %if.then162, %tifm_sd_transfer_data.exit.do.body164_crit_edge
  %266 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !154
  %and.i.i296 = and i32 %266, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i296)
  %tobool172.not = icmp eq i32 %and.i.i296, 0
  br i1 %tobool172.not, label %if.then181, label %do.body164.do.end184_crit_edge, !prof !155

do.body164.do.end184_crit_edge:                   ; preds = %do.body164
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end184

if.then181:                                       ; preds = %do.body164
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %do.end184

do.end184:                                        ; preds = %if.then181, %do.body164.do.end184_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %129) #7, !srcloc !156
  %and189 = and i32 %5, -2049
  br label %if.end191

if.end191:                                        ; preds = %do.end184, %if.end130.if.end191_crit_edge, %land.lhs.true.if.end191_crit_edge, %if.end115.if.end191_crit_edge
  %host_status.0 = phi i32 [ %and189, %do.end184 ], [ %5, %if.end130.if.end191_crit_edge ], [ %5, %land.lhs.true.if.end191_crit_edge ], [ %5, %if.end115.if.end191_crit_edge ]
  %and192 = and i32 %host_status.0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and192)
  %tobool193.not = icmp eq i32 %and192, 0
  br i1 %tobool193.not, label %if.else199, label %if.then194

if.then194:                                       ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #9
  %cmd_flags195 = getelementptr inbounds %struct.tifm_sd, ptr %private.i, i32 0, i32 2
  %267 = ptrtoint ptr %cmd_flags195 to i32
  call void @__asan_load2_noabort(i32 %267)
  %268 = load i16, ptr %cmd_flags195, align 2
  %269 = and i16 %268, -33
  store i16 %269, ptr %cmd_flags195, align 2
  br label %if.end208

if.else199:                                       ; preds = %if.end191
  %and200 = and i32 %host_status.0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and200)
  %tobool201.not = icmp eq i32 %and200, 0
  br i1 %tobool201.not, label %if.else199.if.end208_crit_edge, label %if.then202

if.else199.if.end208_crit_edge:                   ; preds = %if.else199
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end208

if.then202:                                       ; preds = %if.else199
  call void @__sanitizer_cov_trace_pc() #9
  %cmd_flags203 = getelementptr inbounds %struct.tifm_sd, ptr %private.i, i32 0, i32 2
  %270 = ptrtoint ptr %cmd_flags203 to i32
  call void @__asan_load2_noabort(i32 %270)
  %271 = load i16, ptr %cmd_flags203, align 2
  %272 = or i16 %271, 32
  store i16 %272, ptr %cmd_flags203, align 2
  br label %if.end208

if.end208:                                        ; preds = %if.then202, %if.else199.if.end208_crit_edge, %if.then194
  tail call fastcc void @tifm_sd_check_status(ptr noundef %private.i)
  br label %do.body210

do.body210:                                       ; preds = %if.end208, %if.else67, %do.end.do.body210_crit_edge
  %host_status.1 = phi i32 [ %host_status.0, %if.end208 ], [ %5, %if.else67 ], [ %5, %do.end.do.body210_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !157
  tail call void @arm_heavy_mb() #7
  %273 = tail call i32 @llvm.bswap.i32(i32 %host_status.1)
  %274 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %sock, align 8
  %add.ptr214 = getelementptr i8, ptr %275, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr214, i32 %273) #7, !srcloc !120
  tail call void @_raw_spin_unlock(ptr noundef %lock) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tifm_sd_data_event(ptr noundef %sock) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.tifm_dev, ptr %sock, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #7
  %driver_data.i.i = getelementptr inbounds %struct.tifm_dev, ptr %sock, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 70
  %2 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sock, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 32
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !117
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !158
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tifm_sd_data_event.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tifm_sd_data_event, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !123

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.tifm_dev, ptr %sock, i32 0, i32 6
  %cmd_flags = getelementptr inbounds %struct.tifm_sd, ptr %private.i, i32 0, i32 2
  %6 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %cmd_flags, align 2
  %conv = zext i16 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tifm_sd_data_event.__UNIQUE_ID_ddebug292, ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %5, i32 noundef %conv) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %req = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 7, i32 1, i32 1
  %8 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %req, align 4
  %tobool8.not = icmp eq ptr %9, null
  br i1 %tobool8.not, label %do.end.do.body23_crit_edge, label %if.then9

do.end.do.body23_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body23

if.then9:                                         ; preds = %do.end
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cmd, align 4
  %data = getelementptr inbounds %struct.mmc_command, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %tobool11.not = icmp eq ptr %13, null
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  %or.cond = select i1 %tobool11.not, i1 true, i1 %tobool12.not
  br i1 %or.cond, label %if.then9.do.body23_crit_edge, label %if.then13

if.then9.do.body23_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body23

if.then13:                                        ; preds = %if.then9
  %call14 = tail call fastcc i32 @tifm_sd_set_dma_data(ptr noundef %private.i, ptr noundef nonnull %13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then13.do.body23_crit_edge, label %if.then16

if.then13.do.body23_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body23

if.then16:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  %cmd_flags17 = getelementptr inbounds %struct.tifm_sd, ptr %private.i, i32 0, i32 2
  %14 = ptrtoint ptr %cmd_flags17 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %cmd_flags17, align 2
  %16 = or i16 %15, 2
  store i16 %16, ptr %cmd_flags17, align 2
  tail call fastcc void @tifm_sd_check_status(ptr noundef %private.i)
  br label %do.body23

do.body23:                                        ; preds = %if.then16, %if.then13.do.body23_crit_edge, %if.then9.do.body23_crit_edge, %do.end.do.body23_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !159
  tail call void @arm_heavy_mb() #7
  %17 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sock, align 8
  %add.ptr27 = getelementptr i8, ptr %18, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %4) #7, !srcloc !120
  tail call void @_raw_spin_unlock(ptr noundef %lock) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tifm_sd_initialize_host(ptr nocapture noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !160
  tail call void @arm_heavy_mb() #7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !120
  %clk_div = getelementptr inbounds %struct.tifm_sd, ptr %host, i32 0, i32 4
  %4 = ptrtoint ptr %clk_div to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 61, ptr %clk_div, align 4
  %clk_freq = getelementptr inbounds %struct.tifm_sd, ptr %host, i32 0, i32 3
  %5 = ptrtoint ptr %clk_freq to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 20000000, ptr %clk_freq, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !161
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %add.ptr5 = getelementptr i8, ptr %7, i32 360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 33554432) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !162
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %clk_div to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %clk_div, align 4
  %or = or i32 %9, 2048
  %10 = tail call i32 @llvm.bswap.i32(i32 %or)
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 8
  %add.ptr11 = getelementptr i8, ptr %12, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %10) #7, !srcloc !120
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %add.ptr13 = getelementptr i8, ptr %14, i32 364
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  %16 = and i32 %15, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %if.end, label %entry.do.body25_crit_edge

entry.do.body25_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body25

if.end:                                           ; preds = %entry
  tail call void @msleep(i32 noundef 32) #7
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 8
  %add.ptr13.1 = getelementptr i8, ptr %18, i32 364
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.1) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  %20 = and i32 %19, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.1 = icmp eq i32 %20, 0
  br i1 %tobool.not.1, label %if.end.1, label %if.end.do.body25_crit_edge

if.end.do.body25_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body25

if.end.1:                                         ; preds = %if.end
  tail call void @msleep(i32 noundef 64) #7
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 8
  %add.ptr13.2 = getelementptr i8, ptr %22, i32 364
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.2) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  %24 = and i32 %23, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.2 = icmp eq i32 %24, 0
  br i1 %tobool.not.2, label %if.end.2, label %if.end.1.do.body25_crit_edge

if.end.1.do.body25_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body25

if.end.2:                                         ; preds = %if.end.1
  tail call void @msleep(i32 noundef 128) #7
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 8
  %add.ptr13.3 = getelementptr i8, ptr %26, i32 364
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.3) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  %28 = and i32 %27, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.3 = icmp eq i32 %28, 0
  br i1 %tobool.not.3, label %if.end.3, label %if.end.2.do.body25_crit_edge

if.end.2.do.body25_crit_edge:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body25

if.end.3:                                         ; preds = %if.end.2
  tail call void @msleep(i32 noundef 256) #7
  %init_name.i = getelementptr inbounds %struct.tifm_dev, ptr %1, i32 0, i32 6, i32 3
  %29 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.3.dev_name.exit_crit_edge

if.end.3.dev_name.exit_crit_edge:                 ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #9
  %dev21 = getelementptr inbounds %struct.tifm_dev, ptr %1, i32 0, i32 6
  %31 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev21, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.3.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %32, %if.end.i ], [ %30, %if.end.3.dev_name.exit_crit_edge ]
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %retval.0.i) #10
  br label %cleanup

do.body25:                                        ; preds = %if.end.2.do.body25_crit_edge, %if.end.1.do.body25_crit_edge, %if.end.do.body25_crit_edge, %entry.do.body25_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !164
  tail call void @arm_heavy_mb() #7
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 8
  %add.ptr29 = getelementptr i8, ptr %34, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 0) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !165
  tail call void @arm_heavy_mb() #7
  %35 = ptrtoint ptr %clk_div to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %clk_div, align 4
  %or34 = or i32 %36, 2048
  %37 = tail call i32 @llvm.bswap.i32(i32 %or34)
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 8
  %add.ptr36 = getelementptr i8, ptr %39, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %37) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !166
  tail call void @arm_heavy_mb() #7
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 8
  %add.ptr41 = getelementptr i8, ptr %41, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 8388608) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !167
  tail call void @arm_heavy_mb() #7
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 8
  %add.ptr46 = getelementptr i8, ptr %43, i32 284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 1073741824) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  tail call void @arm_heavy_mb() #7
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 8
  %add.ptr51 = getelementptr i8, ptr %45, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 -2147483648) #7, !srcloc !120
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 8
  %add.ptr58 = getelementptr i8, ptr %47, i32 276
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 8
  %add.ptr66 = getelementptr i8, ptr %50, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66, i32 %48) #7, !srcloc !120
  %51 = and i32 %48, -520028160
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %51)
  %.not = icmp eq i32 %51, 16777216
  br i1 %.not, label %do.body25.do.body86_crit_edge, label %if.end72

do.body25.do.body86_crit_edge:                    ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body86

if.end72:                                         ; preds = %do.body25
  tail call void @msleep(i32 noundef 16) #7
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 8
  %add.ptr58.1 = getelementptr i8, ptr %53, i32 276
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58.1) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 8
  %add.ptr66.1 = getelementptr i8, ptr %56, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66.1, i32 %54) #7, !srcloc !120
  %57 = and i32 %54, -520028160
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %57)
  %.not.1 = icmp eq i32 %57, 16777216
  br i1 %.not.1, label %if.end72.do.body86_crit_edge, label %if.end72.1

if.end72.do.body86_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body86

if.end72.1:                                       ; preds = %if.end72
  tail call void @msleep(i32 noundef 32) #7
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 8
  %add.ptr58.2 = getelementptr i8, ptr %59, i32 276
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58.2) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %1, align 8
  %add.ptr66.2 = getelementptr i8, ptr %62, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66.2, i32 %60) #7, !srcloc !120
  %63 = and i32 %60, -520028160
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %63)
  %.not.2 = icmp eq i32 %63, 16777216
  br i1 %.not.2, label %if.end72.1.do.body86_crit_edge, label %if.end72.2

if.end72.1.do.body86_crit_edge:                   ; preds = %if.end72.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body86

if.end72.2:                                       ; preds = %if.end72.1
  tail call void @msleep(i32 noundef 64) #7
  %init_name.i119 = getelementptr inbounds %struct.tifm_dev, ptr %1, i32 0, i32 6, i32 3
  %64 = ptrtoint ptr %init_name.i119 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %init_name.i119, align 8
  %tobool.not.i120 = icmp eq ptr %65, null
  br i1 %tobool.not.i120, label %if.end.i121, label %if.end72.2.dev_name.exit123_crit_edge

if.end72.2.dev_name.exit123_crit_edge:            ; preds = %if.end72.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit123

if.end.i121:                                      ; preds = %if.end72.2
  call void @__sanitizer_cov_trace_pc() #9
  %dev82 = getelementptr inbounds %struct.tifm_dev, ptr %1, i32 0, i32 6
  %66 = ptrtoint ptr %dev82 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev82, align 4
  br label %dev_name.exit123

dev_name.exit123:                                 ; preds = %if.end.i121, %if.end72.2.dev_name.exit123_crit_edge
  %retval.0.i122 = phi ptr [ %67, %if.end.i121 ], [ %65, %if.end72.2.dev_name.exit123_crit_edge ]
  %call84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %retval.0.i122) #10
  br label %cleanup

do.body86:                                        ; preds = %if.end72.1.do.body86_crit_edge, %if.end72.do.body86_crit_edge, %do.body25.do.body86_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  tail call void @arm_heavy_mb() #7
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 8
  %add.ptr90 = getelementptr i8, ptr %69, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr90, i32 -381616128) #7, !srcloc !120
  br label %cleanup

cleanup:                                          ; preds = %do.body86, %dev_name.exit123, %dev_name.exit
  %retval.0 = phi i32 [ -19, %dev_name.exit ], [ -19, %dev_name.exit123 ], [ 0, %do.body86 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_free_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tifm_unmap_sg(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_request_done(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @tifm_eject(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tifm_sd_request(ptr noundef %mmc, ptr noundef %mrq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmd, align 4
  %data = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %lock = getelementptr inbounds %struct.tifm_dev, ptr %1, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %eject = getelementptr inbounds %struct.tifm_sd, ptr %private.i, i32 0, i32 1
  %6 = ptrtoint ptr %eject to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %eject, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end, label %entry.err_out_crit_edge

entry.err_out_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out

if.end:                                           ; preds = %entry
  %req = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 1
  %7 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %req, align 4
  %tobool7.not = icmp eq ptr %8, null
  br i1 %tobool7.not, label %if.end18, label %do.end11

do.end11:                                         ; preds = %if.end
  %init_name.i = getelementptr inbounds %struct.tifm_dev, ptr %1, i32 0, i32 6, i32 3
  %9 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end11.dev_name.exit_crit_edge

do.end11.dev_name.exit_crit_edge:                 ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #9
  %dev13 = getelementptr inbounds %struct.tifm_dev, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev13, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end11.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %12, %if.end.i ], [ %10, %do.end11.dev_name.exit_crit_edge ]
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %retval.0.i) #10
  br label %err_out

if.end18:                                         ; preds = %if.end
  %cmd_flags = getelementptr inbounds %struct.tifm_sd, ptr %private.i, i32 0, i32 2
  %13 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %cmd_flags, align 2
  %block_pos = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4
  %14 = ptrtoint ptr %block_pos to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %block_pos, align 4
  %sg_pos = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 3
  %15 = ptrtoint ptr %sg_pos to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %sg_pos, align 4
  %data19 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 2
  %16 = ptrtoint ptr %data19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data19, align 4
  %tobool20.not = icmp eq ptr %17, null
  br i1 %tobool20.not, label %if.end18.if.else_crit_edge, label %land.lhs.true

if.end18.if.else_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %if.end18
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %blksz, align 4
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19) #7, !range !172
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %land.lhs.true.if.else_crit_edge, label %if.then23

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then23:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %bf.set = or i8 %bf.load, 32
  br label %if.end32

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end18.if.else_crit_edge
  %22 = load i8, ptr @no_dma, align 1, !range !173
  %bf.shl = shl nuw nsw i8 %22, 5
  %bf.clear30 = and i8 %bf.load, -33
  %bf.set31 = or i8 %bf.shl, %bf.clear30
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then23
  %storemerge = phi i8 [ %bf.set31, %if.else ], [ %bf.set, %if.then23 ]
  %23 = ptrtoint ptr %eject to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %storemerge, ptr %eject, align 4
  %tobool33.not = icmp eq ptr %5, null
  br i1 %tobool33.not, label %if.end32.if.end187_crit_edge, label %if.then34

if.end32.if.end187_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end187

if.then34:                                        ; preds = %if.end32
  %24 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %private.i, align 4
  %26 = load i8, ptr @fixed_timeout, align 1, !range !173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i284 = icmp eq i8 %26, 0
  br i1 %tobool.not.i284, label %if.end.i285, label %if.then34.tifm_sd_set_data_timeout.exit_crit_edge

if.then34.tifm_sd_set_data_timeout.exit_crit_edge: ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  br label %tifm_sd_set_data_timeout.exit

if.end.i285:                                      ; preds = %if.then34
  %timeout_clks.i = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 1
  %27 = ptrtoint ptr %timeout_clks.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %timeout_clks.i, align 4
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %5, align 4
  %clk_freq.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1
  %31 = ptrtoint ptr %clk_freq.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %clk_freq.i, align 4
  %div.i = udiv i32 1000000000, %32
  %clk_div.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1
  %33 = ptrtoint ptr %clk_div.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %clk_div.i, align 4
  %mul.i = mul i32 %34, %div.i
  %div1.i = udiv i32 %30, %mul.i
  %add.i = add i32 %div1.i, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %add.i)
  %cmp.i = icmp ult i32 %add.i, 65535
  br i1 %cmp.i, label %do.body.i, label %if.else.i

do.body.i:                                        ; preds = %if.end.i285
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !174
  tail call void @arm_heavy_mb() #7
  %35 = tail call i32 @llvm.bswap.i32(i32 %add.i) #7
  %36 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %25, align 8
  %add.ptr.i = getelementptr i8, ptr %37, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %35) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !175
  tail call void @arm_heavy_mb() #7
  %38 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %25, align 8
  %add.ptr7.i = getelementptr i8, ptr %39, i32 312
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !176
  %41 = and i32 %40, -536870913
  %42 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %25, align 8
  %add.ptr10.i = getelementptr i8, ptr %43, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %41) #7, !srcloc !120
  br label %tifm_sd_set_data_timeout.exit

if.else.i:                                        ; preds = %if.end.i285
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i = lshr i32 %add.i, 10
  %add11.i = add nuw nsw i32 %shr.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 67107839, i32 %add.i)
  %cmp12.i = icmp ugt i32 %add.i, 67107839
  %spec.store.select.i = select i1 %cmp12.i, i32 0, i32 %add11.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !177
  tail call void @arm_heavy_mb() #7
  %44 = tail call i32 @llvm.bswap.i32(i32 %spec.store.select.i) #7
  %45 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %25, align 8
  %add.ptr19.i = getelementptr i8, ptr %46, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i, i32 %44) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !178
  tail call void @arm_heavy_mb() #7
  %47 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %25, align 8
  %add.ptr26.i = getelementptr i8, ptr %48, i32 312
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26.i) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !179
  %50 = or i32 %49, 536870912
  %51 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %25, align 8
  %add.ptr31.i = getelementptr i8, ptr %52, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31.i, i32 %50) #7, !srcloc !120
  br label %tifm_sd_set_data_timeout.exit

tifm_sd_set_data_timeout.exit:                    ; preds = %if.else.i, %do.body.i, %if.then34.tifm_sd_set_data_timeout.exit_crit_edge
  %flags35 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 6
  %53 = ptrtoint ptr %flags35 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %flags35, align 4
  %and = and i32 %54, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool36.not = icmp eq i32 %and, 0
  br i1 %tobool36.not, label %tifm_sd_set_data_timeout.exit.if.end48_crit_edge, label %land.lhs.true37

tifm_sd_set_data_timeout.exit.if.end48_crit_edge: ; preds = %tifm_sd_set_data_timeout.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

land.lhs.true37:                                  ; preds = %tifm_sd_set_data_timeout.exit
  %stop = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 3
  %55 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %stop, align 4
  %tobool38.not = icmp eq ptr %56, null
  br i1 %tobool38.not, label %do.body40, label %land.lhs.true37.if.end48_crit_edge

land.lhs.true37.if.end48_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

do.body40:                                        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !180
  tail call void @arm_heavy_mb() #7
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 8
  %add.ptr = getelementptr i8, ptr %58, i32 280
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !181
  %60 = or i32 %59, 268435456
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %1, align 8
  %add.ptr47 = getelementptr i8, ptr %62, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 %60) #7, !srcloc !120
  br label %if.end48

if.end48:                                         ; preds = %do.body40, %land.lhs.true37.if.end48_crit_edge, %tifm_sd_set_data_timeout.exit.if.end48_crit_edge
  %63 = ptrtoint ptr %eject to i32
  call void @__asan_load1_noabort(i32 %63)
  %bf.load50 = load i8, ptr %eject, align 4
  %64 = and i8 %bf.load50, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool54.not = icmp eq i8 %64, 0
  br i1 %tobool54.not, label %if.else75, label %do.body56

do.body56:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !182
  tail call void @arm_heavy_mb() #7
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %1, align 8
  %add.ptr62 = getelementptr i8, ptr %66, i32 280
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr62) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !183
  %68 = or i32 %67, 786432
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %1, align 8
  %add.ptr68 = getelementptr i8, ptr %70, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68, i32 %68) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !184
  tail call void @arm_heavy_mb() #7
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %1, align 8
  %add.ptr73 = getelementptr i8, ptr %72, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73, i32 522125312) #7, !srcloc !120
  %sg_len = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 10
  %73 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %sg_len, align 4
  %sg_len74 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 2
  %75 = ptrtoint ptr %sg_len74 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %sg_len74, align 4
  br label %do.body174

if.else75:                                        ; preds = %if.end48
  %bounce_buf = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 1
  %bounce_buf_data = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 7
  %blksz76 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 2
  %76 = ptrtoint ptr %blksz76 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %blksz76, align 4
  tail call void @sg_init_one(ptr noundef %bounce_buf, ptr noundef %bounce_buf_data, i32 noundef %77) #7
  %78 = ptrtoint ptr %flags35 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %flags35, align 4
  %and79 = and i32 %79, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  %cond81 = select i1 %tobool80.not, i32 2, i32 1
  %call82 = tail call i32 @tifm_map_sg(ptr noundef %1, ptr noundef %bounce_buf, i32 noundef 1, i32 noundef %cond81) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call82)
  %cmp83.not = icmp eq i32 %call82, 1
  br i1 %cmp83.not, label %if.end95, label %do.end88

do.end88:                                         ; preds = %if.else75
  %init_name.i286 = getelementptr inbounds %struct.tifm_dev, ptr %1, i32 0, i32 6, i32 3
  %80 = ptrtoint ptr %init_name.i286 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %init_name.i286, align 8
  %tobool.not.i287 = icmp eq ptr %81, null
  br i1 %tobool.not.i287, label %if.end.i288, label %do.end88.dev_name.exit290_crit_edge

do.end88.dev_name.exit290_crit_edge:              ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit290

if.end.i288:                                      ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #9
  %dev90 = getelementptr inbounds %struct.tifm_dev, ptr %1, i32 0, i32 6
  %82 = ptrtoint ptr %dev90 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev90, align 4
  br label %dev_name.exit290

dev_name.exit290:                                 ; preds = %if.end.i288, %do.end88.dev_name.exit290_crit_edge
  %retval.0.i289 = phi ptr [ %83, %if.end.i288 ], [ %81, %do.end88.dev_name.exit290_crit_edge ]
  %call92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %retval.0.i289) #10
  br label %err_out

if.end95:                                         ; preds = %if.else75
  %sg = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 12
  %84 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %sg, align 4
  %sg_len96 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 10
  %86 = ptrtoint ptr %sg_len96 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %sg_len96, align 4
  %88 = ptrtoint ptr %flags35 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %flags35, align 4
  %and98 = and i32 %89, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  %cond100 = select i1 %tobool99.not, i32 2, i32 1
  %call101 = tail call i32 @tifm_map_sg(ptr noundef %1, ptr noundef %85, i32 noundef %87, i32 noundef %cond100) #7
  %sg_len102 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 2
  %90 = ptrtoint ptr %sg_len102 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %call101, ptr %sg_len102, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call101)
  %cmp104 = icmp slt i32 %call101, 1
  br i1 %cmp104, label %do.end109, label %do.body122

do.end109:                                        ; preds = %if.end95
  %init_name.i291 = getelementptr inbounds %struct.tifm_dev, ptr %1, i32 0, i32 6, i32 3
  %91 = ptrtoint ptr %init_name.i291 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %init_name.i291, align 8
  %tobool.not.i292 = icmp eq ptr %92, null
  br i1 %tobool.not.i292, label %if.end.i293, label %do.end109.dev_name.exit295_crit_edge

do.end109.dev_name.exit295_crit_edge:             ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit295

if.end.i293:                                      ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #9
  %dev111 = getelementptr inbounds %struct.tifm_dev, ptr %1, i32 0, i32 6
  %93 = ptrtoint ptr %dev111 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev111, align 4
  br label %dev_name.exit295

dev_name.exit295:                                 ; preds = %if.end.i293, %do.end109.dev_name.exit295_crit_edge
  %retval.0.i294 = phi ptr [ %94, %if.end.i293 ], [ %92, %do.end109.dev_name.exit295_crit_edge ]
  %call113 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %retval.0.i294) #10
  %95 = ptrtoint ptr %flags35 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %flags35, align 4
  %and116 = and i32 %96, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  %cond118 = select i1 %tobool117.not, i32 2, i32 1
  tail call void @tifm_unmap_sg(ptr noundef %1, ptr noundef %bounce_buf, i32 noundef 1, i32 noundef %cond118) #7
  br label %err_out

do.body122:                                       ; preds = %if.end95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !185
  tail call void @arm_heavy_mb() #7
  %97 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %1, align 8
  %add.ptr126 = getelementptr i8, ptr %98, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr126, i32 -65536) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  tail call void @arm_heavy_mb() #7
  %99 = ptrtoint ptr %blksz76 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %blksz76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool.not.i.i = icmp eq i32 %100, 0
  %101 = tail call i32 @llvm.ctlz.i32(i32 %100, i1 true) #7, !range !172
  %sub.i.op.i.op = sub nsw i32 29, %101
  %sub143 = select i1 %tobool.not.i.i, i32 -3, i32 %sub.i.op.i.op
  %102 = tail call i32 @llvm.bswap.i32(i32 %sub143)
  %103 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %1, align 8
  %add.ptr145 = getelementptr i8, ptr %104, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr145, i32 %102) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !187
  tail call void @arm_heavy_mb() #7
  %105 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %1, align 8
  %add.ptr150 = getelementptr i8, ptr %106, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr150, i32 16777216) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !188
  tail call void @arm_heavy_mb() #7
  %107 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %1, align 8
  %add.ptr155 = getelementptr i8, ptr %108, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr155, i32 83886080) #7, !srcloc !120
  %109 = ptrtoint ptr %flags35 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %flags35, align 4
  %and157 = and i32 %110, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and157)
  %tobool158.not = icmp eq i32 %and157, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %111 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %1, align 8
  %add.ptr170 = getelementptr i8, ptr %112, i32 304
  br i1 %tobool158.not, label %do.body166, label %do.body160

do.body160:                                       ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr170, i32 -2147483648) #7, !srcloc !120
  br label %if.end171

do.body166:                                       ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr170, i32 8388608) #7, !srcloc !120
  br label %if.end171

if.end171:                                        ; preds = %do.body166, %do.body160
  %call172 = tail call fastcc i32 @tifm_sd_set_dma_data(ptr noundef %private.i, ptr noundef nonnull %5)
  br label %do.body174

do.body174:                                       ; preds = %if.end171, %do.body56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  tail call void @arm_heavy_mb() #7
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 3
  %113 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %blocks, align 4
  %sub177 = add i32 %114, -1
  %115 = tail call i32 @llvm.bswap.i32(i32 %sub177)
  %116 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %1, align 8
  %add.ptr179 = getelementptr i8, ptr %117, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr179, i32 %115) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !190
  tail call void @arm_heavy_mb() #7
  %blksz183 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 2
  %118 = ptrtoint ptr %blksz183 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %blksz183, align 4
  %sub184 = add i32 %119, -1
  %120 = tail call i32 @llvm.bswap.i32(i32 %sub184)
  %121 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %1, align 8
  %add.ptr186 = getelementptr i8, ptr %122, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr186, i32 %120) #7, !srcloc !120
  br label %if.end187

if.end187:                                        ; preds = %do.body174, %if.end32.if.end187_crit_edge
  %123 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %mrq, ptr %req, align 4
  %timer = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %124 = load volatile i32, ptr @jiffies, align 128
  %timeout_jiffies = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %125 = ptrtoint ptr %timeout_jiffies to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %timeout_jiffies, align 4
  %add = add i32 %126, %124
  %call189 = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %add) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !191
  tail call void @arm_heavy_mb() #7
  %127 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %1, align 8
  %add.ptr196 = getelementptr i8, ptr %128, i32 4
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr196) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !192
  %130 = or i32 %129, 1073741824
  %131 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %1, align 8
  %add.ptr202 = getelementptr i8, ptr %132, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr202, i32 %130) #7, !srcloc !120
  %133 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %cmd, align 4
  tail call fastcc void @tifm_sd_exec(ptr noundef %private.i, ptr noundef %134)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  br label %cleanup

err_out:                                          ; preds = %dev_name.exit295, %dev_name.exit290, %dev_name.exit, %entry.err_out_crit_edge
  %.sink = phi i32 [ -12, %dev_name.exit295 ], [ -12, %dev_name.exit290 ], [ -110, %dev_name.exit ], [ -123, %entry.err_out_crit_edge ]
  %135 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %cmd, align 4
  %error120 = getelementptr inbounds %struct.mmc_command, ptr %136, i32 0, i32 5
  %137 = ptrtoint ptr %error120 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %.sink, ptr %error120, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  tail call void @mmc_request_done(ptr noundef %mmc, ptr noundef %mrq) #7
  br label %cleanup

cleanup:                                          ; preds = %err_out, %if.end187
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tifm_sd_ios(ptr nocapture noundef %mmc, ptr nocapture noundef readonly %ios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  %lock = getelementptr inbounds %struct.tifm_dev, ptr %1, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tifm_sd_ios.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tifm_sd_ios, %if.then)) #7
          to label %do.end18 [label %if.then], !srcloc !123

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev11 = getelementptr inbounds %struct.tifm_dev, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ios, align 4
  %vdd = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 1
  %4 = ptrtoint ptr %vdd to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vdd, align 4
  %conv12 = zext i16 %5 to i32
  %bus_mode = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 3
  %6 = ptrtoint ptr %bus_mode to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bus_mode, align 4
  %conv13 = zext i8 %7 to i32
  %chip_select = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 4
  %8 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %chip_select, align 1
  %conv14 = zext i8 %9 to i32
  %power_mode = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 5
  %10 = ptrtoint ptr %power_mode to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %power_mode, align 2
  %conv15 = zext i8 %11 to i32
  %bus_width = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 6
  %12 = ptrtoint ptr %bus_width to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bus_width, align 1
  %conv16 = zext i8 %13 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tifm_sd_ios.__UNIQUE_ID_ddebug294, ptr noundef %dev11, ptr noundef nonnull @.str.25, i32 noundef %3, i32 noundef %conv12, i32 noundef %conv13, i32 noundef %conv14, i32 noundef %conv15, i32 noundef %conv16) #7
  br label %do.end18

do.end18:                                         ; preds = %if.then, %entry
  %bus_width19 = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 6
  %14 = ptrtoint ptr %bus_width19 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bus_width19, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %15)
  %cmp21 = icmp eq i8 %15, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %add.ptr = getelementptr i8, ptr %17, i32 272
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  br i1 %cmp21, label %do.body24, label %do.body32

do.body24:                                        ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #9
  %19 = or i32 %18, 8388608
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 8
  %add.ptr31 = getelementptr i8, ptr %21, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %19) #7, !srcloc !120
  br label %if.end44

do.body32:                                        ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #9
  %22 = and i32 %18, -8388609
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 8
  %add.ptr43 = getelementptr i8, ptr %24, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 %22) #7, !srcloc !120
  br label %if.end44

if.end44:                                         ; preds = %do.body32, %do.body24
  %25 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ios, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool46.not = icmp eq i32 %26, 0
  br i1 %tobool46.not, label %if.else105, label %if.then47

if.then47:                                        ; preds = %if.end44
  %div = udiv i32 20000000, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000000, i32 %26)
  %tobool49.not = icmp ugt i32 %26, 20000000
  %spec.store.select = select i1 %tobool49.not, i32 1, i32 %div
  %div53 = udiv i32 24000000, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 24000000, i32 %26)
  %tobool54.not = icmp ugt i32 %26, 24000000
  %spec.store.select131 = select i1 %tobool54.not, i32 1, i32 %div53
  %div57 = udiv i32 20000000, %spec.store.select
  call void @__sanitizer_cov_trace_cmp4(i32 %div57, i32 %26)
  %cmp59 = icmp ugt i32 %div57, %26
  %inc = zext i1 %cmp59 to i32
  %spec.select = add nuw nsw i32 %spec.store.select, %inc
  %div63 = udiv i32 24000000, %spec.store.select131
  call void @__sanitizer_cov_trace_cmp4(i32 %div63, i32 %26)
  %cmp65 = icmp ugt i32 %div63, %26
  %inc68 = zext i1 %cmp65 to i32
  %clk_div2.0 = add nuw nsw i32 %spec.store.select131, %inc68
  %div70 = udiv i32 20000000, %spec.select
  %div71 = udiv i32 24000000, %clk_div2.0
  call void @__sanitizer_cov_trace_cmp4(i32 %div70, i32 %div71)
  %cmp72 = icmp ugt i32 %div70, %div71
  %clk_freq = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1
  br i1 %cmp72, label %if.then74, label %if.else88

if.then74:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %clk_freq to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 20000000, ptr %clk_freq, align 4
  %clk_div = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1
  %28 = ptrtoint ptr %clk_div to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %spec.select, ptr %clk_div, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 8
  %add.ptr81 = getelementptr i8, ptr %30, i32 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !194
  %32 = and i32 %31, -65537
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 8
  %add.ptr87 = getelementptr i8, ptr %34, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr87, i32 %32) #7, !srcloc !120
  br label %if.end107

if.else88:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %clk_freq to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 24000000, ptr %clk_freq, align 4
  %clk_div90 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1
  %36 = ptrtoint ptr %clk_div90 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %clk_div2.0, ptr %clk_div90, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !195
  tail call void @arm_heavy_mb() #7
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 8
  %add.ptr97 = getelementptr i8, ptr %38, i32 4
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr97) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !196
  %40 = or i32 %39, 65536
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 8
  %add.ptr103 = getelementptr i8, ptr %42, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr103, i32 %40) #7, !srcloc !120
  br label %if.end107

if.else105:                                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  %clk_div106 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1
  %43 = ptrtoint ptr %clk_div106 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %clk_div106, align 4
  br label %if.end107

if.end107:                                        ; preds = %if.else105, %if.else88, %if.then74
  %clk_div108 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1
  %44 = ptrtoint ptr %clk_div108 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %clk_div108, align 4
  %and109 = and i32 %45, 1023
  store i32 %and109, ptr %clk_div108, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %46 = ptrtoint ptr %clk_div108 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %clk_div108, align 4
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 8
  %add.ptr117 = getelementptr i8, ptr %49, i32 272
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr117) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !198
  %51 = and i32 %50, 16580607
  %52 = tail call i32 @llvm.bswap.i32(i32 %51)
  %or122 = or i32 %52, %47
  %53 = tail call i32 @llvm.bswap.i32(i32 %or122)
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 8
  %add.ptr124 = getelementptr i8, ptr %55, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr124, i32 %53) #7, !srcloc !120
  %bus_mode125 = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 3
  %56 = ptrtoint ptr %bus_mode125 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %bus_mode125, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %57)
  %cmp127 = icmp eq i8 %57, 1
  %open_drain = getelementptr inbounds %struct.tifm_sd, ptr %private.i, i32 0, i32 1
  %58 = ptrtoint ptr %open_drain to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load = load i8, ptr %open_drain, align 4
  %bf.shl = select i1 %cmp127, i8 64, i8 0
  %bf.clear = and i8 %bf.load, -65
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %open_drain, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tifm_sd_ro(ptr nocapture noundef readonly %mmc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  %lock = getelementptr inbounds %struct.tifm_dev, ptr %1, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !199
  %5 = lshr i32 %4, 17
  %.lobit = and i32 %5, 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  ret i32 %.lobit
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tifm_map_sg(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tifm_sd_set_dma_data(ptr nocapture noundef %host, ptr nocapture noundef readonly %r_data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %r_data, i32 0, i32 2
  %2 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %blksz, align 4
  %mul = mul i32 %3, 127
  %sg_pos = getelementptr inbounds %struct.tifm_sd, ptr %host, i32 0, i32 10
  %4 = ptrtoint ptr %sg_pos to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sg_pos, align 4
  %sg_len = getelementptr inbounds %struct.tifm_sd, ptr %host, i32 0, i32 9
  %6 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sg_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp eq i32 %5, %7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmd_flags = getelementptr inbounds %struct.tifm_sd, ptr %host, i32 0, i32 2
  %8 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %cmd_flags, align 2
  %10 = and i16 %9, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not = icmp eq i16 %10, 0
  br i1 %tobool.not, label %if.end.if.end58_crit_edge, label %if.then1

if.end.if.end58_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

if.then1:                                         ; preds = %if.end
  %and4 = and i16 %9, -65
  %11 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %and4, ptr %cmd_flags, align 2
  %12 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !143
  %and.i = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool16.not = icmp eq i32 %and.i, 0
  br i1 %tobool16.not, label %if.then30, label %do.end20

do.end20:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @tifm_sd_bounce_block(ptr noundef %host, ptr noundef %r_data)
  br label %do.body32

if.then30:                                        ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_off() #7
  tail call fastcc void @tifm_sd_bounce_block(ptr noundef %host, ptr noundef %r_data)
  tail call void @trace_hardirqs_on() #7
  br label %do.body32

do.body32:                                        ; preds = %if.then30, %do.end20
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !154
  %and.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool40.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool40.not, label %if.then44, label %do.body32.do.end47_crit_edge, !prof !155

do.body32.do.end47_crit_edge:                     ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end47

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %do.end47

do.end47:                                         ; preds = %if.then44, %do.body32.do.end47_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %12) #7, !srcloc !156
  %14 = ptrtoint ptr %sg_pos to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sg_pos, align 4
  %16 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sg_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp54 = icmp eq i32 %15, %17
  br i1 %cmp54, label %do.end47.cleanup_crit_edge, label %do.end47.if.end58_crit_edge

do.end47.if.end58_crit_edge:                      ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

do.end47.cleanup_crit_edge:                       ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end58:                                         ; preds = %do.end47.if.end58_crit_edge, %if.end.if.end58_crit_edge
  %sg59 = getelementptr inbounds %struct.mmc_data, ptr %r_data, i32 0, i32 12
  %18 = ptrtoint ptr %sg59 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sg59, align 4
  %20 = ptrtoint ptr %sg_pos to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sg_pos, align 4
  %dma_length = getelementptr %struct.scatterlist, ptr %19, i32 %21, i32 4
  %22 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dma_length, align 4
  %block_pos = getelementptr inbounds %struct.tifm_sd, ptr %host, i32 0, i32 11
  %24 = ptrtoint ptr %block_pos to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %block_pos, align 4
  %sub = sub i32 %23, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool61.not = icmp eq i32 %sub, 0
  br i1 %tobool61.not, label %if.then62, label %if.end58.if.end75_crit_edge

if.end58.if.end75_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

if.then62:                                        ; preds = %if.end58
  %26 = ptrtoint ptr %block_pos to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %block_pos, align 4
  %inc = add i32 %21, 1
  %27 = ptrtoint ptr %sg_pos to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %inc, ptr %sg_pos, align 4
  %28 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sg_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %29)
  %cmp67 = icmp eq i32 %inc, %29
  br i1 %cmp67, label %if.then62.cleanup_crit_edge, label %if.end70

if.then62.cleanup_crit_edge:                      ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end70:                                         ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %sg59 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sg59, align 4
  %dma_length74 = getelementptr %struct.scatterlist, ptr %31, i32 %inc, i32 4
  %32 = ptrtoint ptr %dma_length74 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dma_length74, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.end70, %if.end58.if.end75_crit_edge
  %dma_len.0 = phi i32 [ %sub, %if.end58.if.end75_crit_edge ], [ %33, %if.end70 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %dma_len.0, i32 %mul)
  %cmp76 = icmp ult i32 %dma_len.0, %mul
  br i1 %cmp76, label %if.end87, label %if.end87.thread

if.end87.thread:                                  ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %block_pos to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %block_pos, align 4
  %add86 = add i32 %35, %mul
  store i32 %add86, ptr %block_pos, align 4
  br label %if.then89

if.end87:                                         ; preds = %if.end75
  %36 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %blksz, align 4
  %div = udiv i32 %dma_len.0, %37
  %38 = ptrtoint ptr %block_pos to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %block_pos, align 4
  %mul82 = mul i32 %div, %37
  %add = add i32 %39, %mul82
  store i32 %add, ptr %block_pos, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %dma_len.0)
  %tobool88.not = icmp ugt i32 %37, %dma_len.0
  br i1 %tobool88.not, label %if.else93, label %if.end87.if.then89_crit_edge

if.end87.if.then89_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then89

if.then89:                                        ; preds = %if.end87.if.then89_crit_edge, %if.end87.thread
  %dma_blk_cnt.0267 = phi i32 [ 127, %if.end87.thread ], [ %div, %if.end87.if.then89_crit_edge ]
  %dma_off.0266 = phi i32 [ %35, %if.end87.thread ], [ %39, %if.end87.if.then89_crit_edge ]
  %40 = ptrtoint ptr %sg59 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sg59, align 4
  %42 = ptrtoint ptr %sg_pos to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sg_pos, align 4
  %arrayidx92 = getelementptr %struct.scatterlist, ptr %41, i32 %43
  br label %do.body166

if.else93:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dma_len.0)
  %tobool94.not = icmp eq i32 %dma_len.0, 0
  br i1 %tobool94.not, label %if.else93.cleanup_crit_edge, label %if.then95

if.else93.cleanup_crit_edge:                      ; preds = %if.else93
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then95:                                        ; preds = %if.else93
  %flags96 = getelementptr inbounds %struct.mmc_data, ptr %r_data, i32 0, i32 6
  %44 = ptrtoint ptr %flags96 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags96, align 4
  %and97 = and i32 %45, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %if.else158, label %do.body101

do.body101:                                       ; preds = %if.then95
  %46 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !143
  %and.i259 = and i32 %46, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i259)
  %tobool117.not = icmp eq i32 %and.i259, 0
  br i1 %tobool117.not, label %if.then131, label %do.end121

do.end121:                                        ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @tifm_sd_bounce_block(ptr noundef %host, ptr noundef %r_data)
  br label %do.body133

if.then131:                                       ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_off() #7
  tail call fastcc void @tifm_sd_bounce_block(ptr noundef %host, ptr noundef %r_data)
  tail call void @trace_hardirqs_on() #7
  br label %do.body133

do.body133:                                       ; preds = %if.then131, %do.end121
  %47 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !154
  %and.i.i261 = and i32 %47, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i261)
  %tobool141.not = icmp eq i32 %and.i.i261, 0
  br i1 %tobool141.not, label %if.then150, label %do.body133.do.end153_crit_edge, !prof !155

do.body133.do.end153_crit_edge:                   ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end153

if.then150:                                       ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %do.end153

do.end153:                                        ; preds = %if.then150, %do.body133.do.end153_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %46) #7, !srcloc !156
  br label %if.end162

if.else158:                                       ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %cmd_flags, align 2
  %50 = or i16 %49, 64
  store i16 %50, ptr %cmd_flags, align 2
  br label %if.end162

if.end162:                                        ; preds = %if.else158, %do.end153
  %bounce_buf = getelementptr inbounds %struct.tifm_sd, ptr %host, i32 0, i32 12
  br label %do.body166

do.body166:                                       ; preds = %if.end162, %if.then89
  %sg.0 = phi ptr [ %arrayidx92, %if.then89 ], [ %bounce_buf, %if.end162 ]
  %dma_off.1 = phi i32 [ %dma_off.0266, %if.then89 ], [ 0, %if.end162 ]
  %dma_blk_cnt.1 = phi i32 [ %dma_blk_cnt.0267, %if.then89 ], [ 1, %if.end162 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tifm_sd_set_dma_data.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tifm_sd_set_dma_data, %if.then176)) #7
          to label %do.body181 [label %if.then176], !srcloc !123

if.then176:                                       ; preds = %do.body166
  call void @__sanitizer_cov_trace_pc() #9
  %dev177 = getelementptr inbounds %struct.tifm_dev, ptr %1, i32 0, i32 6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tifm_sd_set_dma_data.__UNIQUE_ID_ddebug290, ptr noundef %dev177, ptr noundef nonnull @.str.19, i32 noundef %dma_blk_cnt.1) #7
  br label %do.body181

do.body181:                                       ; preds = %if.then176, %do.body166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !200
  tail call void @arm_heavy_mb() #7
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.0, i32 0, i32 3
  %51 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dma_address, align 4
  %add184 = add i32 %52, %dma_off.1
  %53 = tail call i32 @llvm.bswap.i32(i32 %add184)
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 8
  %add.ptr = getelementptr i8, ptr %55, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %53) #7, !srcloc !120
  %flags185 = getelementptr inbounds %struct.mmc_data, ptr %r_data, i32 0, i32 6
  %56 = ptrtoint ptr %flags185 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %flags185, align 4
  %and186 = and i32 %57, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and186)
  %tobool187.not = icmp eq i32 %and186, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %shl200 = shl i32 %dma_blk_cnt.1, 8
  br i1 %tobool187.not, label %do.body197, label %do.body189

do.body189:                                       ; preds = %do.body181
  call void @__sanitizer_cov_trace_pc() #9
  %or193 = or i32 %shl200, 32769
  %58 = tail call i32 @llvm.bswap.i32(i32 %or193)
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %1, align 8
  %add.ptr195 = getelementptr i8, ptr %60, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr195, i32 %58) #7, !srcloc !120
  br label %cleanup

do.body197:                                       ; preds = %do.body181
  call void @__sanitizer_cov_trace_pc() #9
  %or201 = or i32 %shl200, 1
  %61 = tail call i32 @llvm.bswap.i32(i32 %or201)
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %1, align 8
  %add.ptr203 = getelementptr i8, ptr %63, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr203, i32 %61) #7, !srcloc !120
  br label %cleanup

cleanup:                                          ; preds = %do.body197, %do.body189, %if.else93.cleanup_crit_edge, %if.then62.cleanup_crit_edge, %do.end47.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 1, %do.end47.cleanup_crit_edge ], [ 1, %if.then62.cleanup_crit_edge ], [ 1, %if.else93.cleanup_crit_edge ], [ 0, %do.body197 ], [ 0, %do.body189 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tifm_sd_exec(ptr nocapture noundef readonly %host, ptr nocapture noundef readonly %cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %flags.i = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 3
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 31
  %4 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i, label %do.body.i [
    i32 0, label %entry.sw.epilog.i_crit_edge
    i32 29, label %sw.bb1.i
    i32 21, label %entry.sw.bb3.i_crit_edge
    i32 7, label %sw.bb5.i
    i32 1, label %sw.bb7.i
  ]

entry.sw.bb3.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3.i

entry.sw.epilog.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3.i

sw.bb3.i:                                         ; preds = %sw.bb1.i, %entry.sw.bb3.i_crit_edge
  %rc.0.i = phi i32 [ 256, %entry.sw.bb3.i_crit_edge ], [ 2304, %sw.bb1.i ]
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb7.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mmc/host/tifm_sd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 349, 0\0A.popsection", ""() #7, !srcloc !201
  unreachable

sw.epilog.i:                                      ; preds = %sw.bb7.i, %sw.bb5.i, %sw.bb3.i, %entry.sw.epilog.i_crit_edge
  %rc.1.i = phi i32 [ 768, %sw.bb7.i ], [ 512, %sw.bb5.i ], [ %rc.0.i, %sw.bb3.i ], [ %and.i, %entry.sw.epilog.i_crit_edge ]
  %and13.i = lshr i32 %3, 5
  %5 = and i32 %and13.i, 3
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %5, label %sw.epilog.unreachabledefault.i [
    i32 2, label %sw.epilog.i.tifm_sd_op_flags.exit_crit_edge
    i32 3, label %sw.bb16.i
    i32 0, label %sw.bb18.i
    i32 1, label %sw.bb20.i
  ]

sw.epilog.i.tifm_sd_op_flags.exit_crit_edge:      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tifm_sd_op_flags.exit

sw.bb16.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %or17.i = or i32 %rc.1.i, 4096
  br label %tifm_sd_op_flags.exit

sw.bb18.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %or19.i = or i32 %rc.1.i, 8192
  br label %tifm_sd_op_flags.exit

sw.bb20.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %or21.i = or i32 %rc.1.i, 12288
  br label %tifm_sd_op_flags.exit

sw.epilog.unreachabledefault.i:                   ; preds = %sw.epilog.i
  unreachable

tifm_sd_op_flags.exit:                            ; preds = %sw.bb20.i, %sw.bb18.i, %sw.bb16.i, %sw.epilog.i.tifm_sd_op_flags.exit_crit_edge
  %rc.2.i = phi i32 [ %or21.i, %sw.bb20.i ], [ %or19.i, %sw.bb18.i ], [ %or17.i, %sw.bb16.i ], [ %rc.1.i, %sw.epilog.i.tifm_sd_op_flags.exit_crit_edge ]
  %open_drain = getelementptr inbounds %struct.tifm_sd, ptr %host, i32 0, i32 1
  %7 = ptrtoint ptr %open_drain to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %open_drain, align 4
  %8 = and i8 %bf.load, 64
  %9 = zext i8 %8 to i32
  %10 = or i32 %rc.2.i, %9
  %data = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 7
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %tobool1.not = icmp eq ptr %12, null
  br i1 %tobool1.not, label %tifm_sd_op_flags.exit.do.body_crit_edge, label %land.lhs.true

tifm_sd_op_flags.exit.do.body_crit_edge:          ; preds = %tifm_sd_op_flags.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

land.lhs.true:                                    ; preds = %tifm_sd_op_flags.exit
  call void @__sanitizer_cov_trace_pc() #9
  %flags = getelementptr inbounds %struct.mmc_data, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %and = shl i32 %14, 6
  %15 = and i32 %and, 32768
  %16 = or i32 %15, %10
  br label %do.body

do.body:                                          ; preds = %land.lhs.true, %tifm_sd_op_flags.exit.do.body_crit_edge
  %cmd_mask.1 = phi i32 [ %10, %tifm_sd_op_flags.exit.do.body_crit_edge ], [ %16, %land.lhs.true ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tifm_sd_exec.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tifm_sd_exec, %if.then11)) #7
          to label %do.body14 [label %if.then11], !srcloc !123

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev12 = getelementptr inbounds %struct.tifm_dev, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cmd, align 4
  %arg = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 1
  %19 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tifm_sd_exec.__UNIQUE_ID_ddebug291, ptr noundef %dev12, ptr noundef nonnull @.str.23, i32 noundef %18, i32 noundef %20, i32 noundef %cmd_mask.1) #7
  br label %do.body14

do.body14:                                        ; preds = %if.then11, %do.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !202
  tail call void @arm_heavy_mb() #7
  %arg17 = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 1
  %21 = ptrtoint ptr %arg17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arg17, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %24 = shl i32 %23, 16
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 8
  %add.ptr = getelementptr i8, ptr %26, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %24) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !203
  tail call void @arm_heavy_mb() #7
  %27 = ptrtoint ptr %arg17 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arg17, align 4
  %and23 = and i32 %28, 65535
  %29 = tail call i32 @llvm.bswap.i32(i32 %and23)
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 8
  %add.ptr25 = getelementptr i8, ptr %31, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %29) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !204
  tail call void @arm_heavy_mb() #7
  %32 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cmd, align 4
  %or30 = or i32 %33, %cmd_mask.1
  %34 = tail call i32 @llvm.bswap.i32(i32 %or30)
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 8
  %add.ptr32 = getelementptr i8, ptr %36, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %34) #7, !srcloc !120
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tifm_sd_bounce_block(ptr nocapture noundef %host, ptr nocapture noundef readonly %r_data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sg1 = getelementptr inbounds %struct.mmc_data, ptr %r_data, i32 0, i32 12
  %0 = ptrtoint ptr %sg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sg1, align 4
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %r_data, i32 0, i32 2
  %2 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %blksz, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tifm_sd_bounce_block.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tifm_sd_bounce_block, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !123

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host, align 4
  %dev4 = getelementptr inbounds %struct.tifm_dev, ptr %5, i32 0, i32 6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tifm_sd_bounce_block.__UNIQUE_ID_ddebug285, ptr noundef %dev4, ptr noundef nonnull @.str.21) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool5.not107 = icmp eq i32 %3, 0
  br i1 %tobool5.not107, label %do.end.cleanup_crit_edge, label %while.body.lr.ph

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body.lr.ph:                                 ; preds = %do.end
  %sg_pos = getelementptr inbounds %struct.tifm_sd, ptr %host, i32 0, i32 10
  %block_pos = getelementptr inbounds %struct.tifm_sd, ptr %host, i32 0, i32 11
  %sg_len = getelementptr inbounds %struct.tifm_sd, ptr %host, i32 0, i32 9
  %flags = getelementptr inbounds %struct.mmc_data, ptr %r_data, i32 0, i32 6
  %bounce_buf = getelementptr inbounds %struct.tifm_sd, ptr %host, i32 0, i32 12
  br label %while.body

while.body:                                       ; preds = %if.end47.while.body_crit_edge, %while.body.lr.ph
  %t_size.0108 = phi i32 [ %3, %while.body.lr.ph ], [ %sub48, %if.end47.while.body_crit_edge ]
  %6 = ptrtoint ptr %sg_pos to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sg_pos, align 4
  %length = getelementptr %struct.scatterlist, ptr %1, i32 %7, i32 2
  %8 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length, align 4
  %10 = ptrtoint ptr %block_pos to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %block_pos, align 4
  %sub = sub i32 %9, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool6.not = icmp eq i32 %sub, 0
  br i1 %tobool6.not, label %if.then7, label %while.body.if.end16_crit_edge

while.body.if.end16_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then7:                                         ; preds = %while.body
  %12 = ptrtoint ptr %block_pos to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %block_pos, align 4
  %inc = add i32 %7, 1
  %13 = ptrtoint ptr %sg_pos to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %inc, ptr %sg_pos, align 4
  %14 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sg_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %15)
  %cmp = icmp eq i32 %inc, %15
  br i1 %cmp, label %if.then7.cleanup_crit_edge, label %if.end12

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  %length15 = getelementptr %struct.scatterlist, ptr %1, i32 %inc, i32 2
  %16 = ptrtoint ptr %length15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %length15, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.end12, %while.body.if.end16_crit_edge
  %cnt.0 = phi i32 [ %sub, %while.body.if.end16_crit_edge ], [ %17, %if.end12 ]
  %18 = ptrtoint ptr %sg_pos to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sg_pos, align 4
  %arrayidx18 = getelementptr %struct.scatterlist, ptr %1, i32 %19
  %20 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx18, align 4
  %and.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !145

do.body2.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #7, !srcloc !146
  unreachable

sg_page.exit:                                     ; preds = %if.end16
  %offset = getelementptr %struct.scatterlist, ptr %1, i32 %19, i32 1
  %22 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %offset, align 4
  %24 = ptrtoint ptr %block_pos to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %block_pos, align 4
  %add = add i32 %25, %23
  %and.i = and i32 %21, -4
  %26 = inttoptr i32 %and.i to ptr
  %shr = lshr i32 %add, 12
  %add.ptr = getelementptr %struct.page, ptr %26, i32 %shr
  %and = and i32 %add, 4095
  %sub23 = sub nuw nsw i32 4096, %and
  %27 = tail call i32 @llvm.umin.i32(i32 %sub23, i32 %cnt.0)
  %28 = tail call i32 @llvm.umin.i32(i32 %27, i32 %t_size.0108)
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags, align 4
  %and32 = and i32 %30, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.else, label %if.then34

if.then34:                                        ; preds = %sg_page.exit
  %31 = ptrtoint ptr %bounce_buf to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bounce_buf, align 4
  %and.i.i96 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i96)
  %tobool.i.not.i97 = icmp eq i32 %and.i.i96, 0
  br i1 %tobool.i.not.i97, label %sg_page.exit100, label %do.body2.i98, !prof !145

do.body2.i98:                                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #7, !srcloc !146
  unreachable

sg_page.exit100:                                  ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  %and.i99 = and i32 %32, -4
  %33 = inttoptr i32 %and.i99 to ptr
  %34 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %blksz, align 4
  %sub37 = sub i32 %35, %t_size.0108
  tail call fastcc void @tifm_sd_copy_page(ptr noundef %33, i32 noundef %sub37, ptr noundef %add.ptr, i32 noundef %and, i32 noundef %28)
  br label %if.end47

if.else:                                          ; preds = %sg_page.exit
  %and39 = and i32 %30, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.else.if.end47_crit_edge, label %if.then41

if.else.if.end47_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.then41:                                        ; preds = %if.else
  %36 = ptrtoint ptr %bounce_buf to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bounce_buf, align 4
  %and.i.i101 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i101)
  %tobool.i.not.i102 = icmp eq i32 %and.i.i101, 0
  br i1 %tobool.i.not.i102, label %sg_page.exit105, label %do.body2.i103, !prof !145

do.body2.i103:                                    ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #7, !srcloc !146
  unreachable

sg_page.exit105:                                  ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  %and.i104 = and i32 %37, -4
  %38 = inttoptr i32 %and.i104 to ptr
  %39 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %blksz, align 4
  %sub45 = sub i32 %40, %t_size.0108
  tail call fastcc void @tifm_sd_copy_page(ptr noundef %add.ptr, i32 noundef %and, ptr noundef %38, i32 noundef %sub45, i32 noundef %28)
  br label %if.end47

if.end47:                                         ; preds = %sg_page.exit105, %if.else.if.end47_crit_edge, %sg_page.exit100
  %sub48 = sub i32 %t_size.0108, %28
  %41 = ptrtoint ptr %block_pos to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %block_pos, align 4
  %add50 = add i32 %42, %28
  store i32 %add50, ptr %block_pos, align 4
  %tobool5.not = icmp eq i32 %sub48, 0
  br i1 %tobool5.not, label %if.end47.cleanup_crit_edge, label %if.end47.while.body_crit_edge

if.end47.while.body_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end47.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tifm_sd_copy_page(ptr noundef %dst, i32 noundef %dst_off, ptr noundef %src, i32 noundef %src_off, i32 noundef %count) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %0 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %0, 512
  %1 = tail call i32 @llvm.read_register.i32(metadata !107) #7
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !147
  %5 = tail call i32 @llvm.read_register.i32(metadata !107) #7
  %and.i.i.i1.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 213
  %9 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %10, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !148
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %src, i32 noundef %or.i) #7
  %add.ptr = getelementptr i8, ptr %call.i.i, i32 %src_off
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %11 = load i32, ptr @pgprot_kernel, align 4
  %or.i19 = or i32 %11, 512
  %12 = tail call i32 @llvm.read_register.i32(metadata !107) #7
  %and.i.i.i.i.i20 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i20 to ptr
  %preempt_count.i.i.i.i21 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i21 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i21, align 4
  %add.i.i.i22 = add i32 %15, 1
  store volatile i32 %add.i.i.i22, ptr %preempt_count.i.i.i.i21, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !147
  %16 = tail call i32 @llvm.read_register.i32(metadata !107) #7
  %and.i.i.i1.i.i23 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i1.i.i23 to ptr
  %task.i.i.i.i24 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task.i.i.i.i24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task.i.i.i.i24, align 8
  %pagefault_disabled.i.i.i.i25 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 213
  %20 = ptrtoint ptr %pagefault_disabled.i.i.i.i25 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pagefault_disabled.i.i.i.i25, align 8
  %inc.i.i.i.i26 = add i32 %21, 1
  store i32 %inc.i.i.i.i26, ptr %pagefault_disabled.i.i.i.i25, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !148
  %call.i.i27 = tail call ptr @__kmap_local_page_prot(ptr noundef %dst, i32 noundef %or.i19) #7
  %add.ptr2 = getelementptr i8, ptr %call.i.i27, i32 %dst_off
  %22 = call ptr @memcpy(ptr %add.ptr2, ptr %add.ptr, i32 %count)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i27) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !150
  %23 = tail call i32 @llvm.read_register.i32(metadata !107) #7
  %and.i.i.i1.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 213
  %27 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %28, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !151
  %29 = tail call i32 @llvm.read_register.i32(metadata !107) #7
  %and.i.i.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %32, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !150
  %33 = tail call i32 @llvm.read_register.i32(metadata !107) #7
  %and.i.i.i1.i28 = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i1.i28 to ptr
  %task.i.i.i29 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %task.i.i.i29 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task.i.i.i29, align 8
  %pagefault_disabled.i.i.i30 = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 213
  %37 = ptrtoint ptr %pagefault_disabled.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pagefault_disabled.i.i.i30, align 8
  %dec.i.i.i31 = add i32 %38, -1
  store i32 %dec.i.i.i31, ptr %pagefault_disabled.i.i.i30, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !151
  %39 = tail call i32 @llvm.read_register.i32(metadata !107) #7
  %and.i.i.i.i32 = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i.i32 to ptr
  %preempt_count.i.i.i33 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i.i33 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i.i33, align 4
  %sub.i.i34 = add i32 %42, -1
  store volatile i32 %sub.i.i34, ptr %preempt_count.i.i.i33, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tifm_sd_check_status(ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %req = getelementptr inbounds %struct.tifm_sd, ptr %host, i32 0, i32 8
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %req, align 4
  %cmd1 = getelementptr inbounds %struct.mmc_request, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmd1, align 4
  %error = getelementptr inbounds %struct.mmc_command, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end, label %entry.finish_request_crit_edge

entry.finish_request_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %finish_request

if.end:                                           ; preds = %entry
  %cmd_flags = getelementptr inbounds %struct.tifm_sd, ptr %host, i32 0, i32 2
  %8 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %cmd_flags, align 2
  %conv = zext i16 %9 to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.mmc_command, ptr %5, i32 0, i32 7
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %tobool5.not = icmp eq ptr %11, null
  br i1 %tobool5.not, label %if.end4.finish_request_crit_edge, label %if.then6

if.end4.finish_request_crit_edge:                 ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %finish_request

if.then6:                                         ; preds = %if.end4
  %error8 = getelementptr inbounds %struct.mmc_data, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %error8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %error8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool9.not = icmp eq i32 %13, 0
  br i1 %tobool9.not, label %if.end21, label %if.then10

if.then10:                                        ; preds = %if.then6
  %14 = and i32 %conv, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %14)
  %15 = icmp eq i32 %14, 8
  br i1 %15, label %if.then10.cleanup_crit_edge, label %if.then10.finish_request_crit_edge

if.then10.finish_request_crit_edge:               ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %finish_request

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21:                                         ; preds = %if.then6
  %and24 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end21.cleanup_crit_edge, label %if.end27

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end27:                                         ; preds = %if.end21
  %no_dma = getelementptr inbounds %struct.tifm_sd, ptr %host, i32 0, i32 1
  %16 = ptrtoint ptr %no_dma to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %no_dma, align 4
  %17 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool29.not = icmp eq i8 %17, 0
  %and32 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  %or.cond161 = select i1 %tobool29.not, i1 %tobool33.not, i1 false
  br i1 %or.cond161, label %if.end27.cleanup_crit_edge, label %if.end35

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end35:                                         ; preds = %if.end27
  %flags = getelementptr inbounds %struct.mmc_data, ptr %11, i32 0, i32 6
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 4
  %and37 = and i32 %19, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  %stop105 = getelementptr inbounds %struct.mmc_request, ptr %3, i32 0, i32 3
  %20 = ptrtoint ptr %stop105 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %stop105, align 4
  %tobool106.not = icmp eq ptr %21, null
  br i1 %tobool38.not, label %if.else103, label %if.then39

if.then39:                                        ; preds = %if.end35
  br i1 %tobool106.not, label %if.else82, label %if.then42

if.then42:                                        ; preds = %if.then39
  %and45 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.then47, label %if.else

if.then47:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i16 %9, 8
  %22 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %or, ptr %cmd_flags, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !205
  tail call void @arm_heavy_mb() #7
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 8
  %add.ptr = getelementptr i8, ptr %24, i32 280
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !206
  %26 = or i32 %25, 268435456
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 8
  %add.ptr54 = getelementptr i8, ptr %28, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54, i32 %26) #7, !srcloc !120
  %29 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %req, align 4
  %stop56 = getelementptr inbounds %struct.mmc_request, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %stop56 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %stop56, align 4
  tail call fastcc void @tifm_sd_exec(ptr noundef %host, ptr noundef %32)
  br label %cleanup

if.else:                                          ; preds = %if.then42
  %33 = and i32 %conv, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %33)
  %34 = icmp eq i32 %33, 16
  br i1 %34, label %do.body68, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body68:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !207
  tail call void @arm_heavy_mb() #7
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 8
  %add.ptr74 = getelementptr i8, ptr %36, i32 280
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr74) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  %38 = and i32 %37, -268435457
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 8
  %add.ptr80 = getelementptr i8, ptr %40, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr80, i32 %38) #7, !srcloc !120
  br label %finish_request

if.else82:                                        ; preds = %if.then39
  %41 = and i16 %9, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool86.not = icmp eq i16 %41, 0
  br i1 %tobool86.not, label %do.body89, label %if.else82.cleanup_crit_edge

if.else82.cleanup_crit_edge:                      ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body89:                                        ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void @arm_heavy_mb() #7
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 8
  %add.ptr95 = getelementptr i8, ptr %43, i32 280
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr95) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !210
  %45 = and i32 %44, -268435457
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 8
  %add.ptr101 = getelementptr i8, ptr %47, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr101, i32 %45) #7, !srcloc !120
  br label %finish_request

if.else103:                                       ; preds = %if.end35
  br i1 %tobool106.not, label %if.else103.finish_request_crit_edge, label %if.then107

if.else103.finish_request_crit_edge:              ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #9
  br label %finish_request

if.then107:                                       ; preds = %if.else103
  %and110 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %tobool111.not = icmp eq i32 %and110, 0
  br i1 %tobool111.not, label %if.then112, label %if.else119

if.then112:                                       ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #9
  %or115 = or i16 %9, 8
  %48 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %or115, ptr %cmd_flags, align 2
  %49 = ptrtoint ptr %stop105 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %stop105, align 4
  tail call fastcc void @tifm_sd_exec(ptr noundef %host, ptr noundef %50)
  br label %cleanup

if.else119:                                       ; preds = %if.then107
  %and122 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  br i1 %tobool123.not, label %if.else119.cleanup_crit_edge, label %if.else119.finish_request_crit_edge

if.else119.finish_request_crit_edge:              ; preds = %if.else119
  call void @__sanitizer_cov_trace_pc() #9
  br label %finish_request

if.else119.cleanup_crit_edge:                     ; preds = %if.else119
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

finish_request:                                   ; preds = %if.else119.finish_request_crit_edge, %if.else103.finish_request_crit_edge, %do.body89, %do.body68, %if.then10.finish_request_crit_edge, %if.end4.finish_request_crit_edge, %entry.finish_request_crit_edge
  %state.i = getelementptr inbounds %struct.tifm_sd, ptr %host, i32 0, i32 6, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %finish_request.cleanup_crit_edge

finish_request.cleanup_crit_edge:                 ; preds = %finish_request
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %finish_request
  call void @__sanitizer_cov_trace_pc() #9
  %finish_tasklet = getelementptr inbounds %struct.tifm_sd, ptr %host, i32 0, i32 6
  tail call void @__tasklet_schedule(ptr noundef %finish_tasklet) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %finish_request.cleanup_crit_edge, %if.else119.cleanup_crit_edge, %if.then112, %if.else82.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then47, %if.end27.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.then10.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tifm_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !13, !15, !16, !17, !18, !19, !21, !23, !24, !26, !27, !29, !31, !33, !35, !36, !37, !38, !39, !41, !42, !44, !45, !46, !47, !49, !50, !51, !52, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106}
!llvm.named.register.sp = !{!107}
!llvm.module.flags = !{!108, !109, !110, !111, !112, !113, !114, !115}
!llvm.ident = !{!116}

!0 = !{ptr @__param_no_dma, !1, !"__param_no_dma", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/tifm_sd.c", i32 23, i32 1}
!2 = !{ptr @__UNIQUE_ID_no_dmatype275, !1, !"__UNIQUE_ID_no_dmatype275", i1 false, i1 false}
!3 = !{ptr @__param_fixed_timeout, !4, !"__param_fixed_timeout", i1 false, i1 false}
!4 = !{!"../drivers/mmc/host/tifm_sd.c", i32 24, i32 1}
!5 = !{ptr @__UNIQUE_ID_fixed_timeouttype276, !4, !"__UNIQUE_ID_fixed_timeouttype276", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author299, !7, !"__UNIQUE_ID_author299", i1 false, i1 false}
!7 = !{!"../drivers/mmc/host/tifm_sd.c", i32 1084, i32 1}
!8 = !{ptr @__UNIQUE_ID_description300, !9, !"__UNIQUE_ID_description300", i1 false, i1 false}
!9 = !{!"../drivers/mmc/host/tifm_sd.c", i32 1085, i32 1}
!10 = !{ptr @__UNIQUE_ID_file301, !11, !"__UNIQUE_ID_file301", i1 false, i1 false}
!11 = !{!"../drivers/mmc/host/tifm_sd.c", i32 1086, i32 1}
!12 = !{ptr @__UNIQUE_ID_license302, !11, !"__UNIQUE_ID_license302", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_version303, !14, !"__UNIQUE_ID_version303", i1 false, i1 false}
!14 = !{!"../drivers/mmc/host/tifm_sd.c", i32 1088, i32 1}
!15 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @__modver_attr, !14, !"__modver_attr", i1 false, i1 false}
!19 = !{ptr @__initcall__kmod_tifm_sd__304_1090_tifm_sd_init6, !20, !"__initcall__kmod_tifm_sd__304_1090_tifm_sd_init6", i1 false, i1 false}
!20 = !{!"../drivers/mmc/host/tifm_sd.c", i32 1090, i32 1}
!21 = !{ptr @__exitcall_tifm_sd_exit, !22, !"__exitcall_tifm_sd_exit", i1 false, i1 false}
!22 = !{!"../drivers/mmc/host/tifm_sd.c", i32 1091, i32 1}
!23 = !{ptr @__param_str_no_dma, !1, !"__param_str_no_dma", i1 false, i1 false}
!24 = !{ptr @no_dma, !25, !"no_dma", i1 false, i1 false}
!25 = !{!"../drivers/mmc/host/tifm_sd.c", i32 21, i32 13}
!26 = !{ptr @__param_str_fixed_timeout, !4, !"__param_str_fixed_timeout", i1 false, i1 false}
!27 = !{ptr @fixed_timeout, !28, !"fixed_timeout", i1 false, i1 false}
!28 = !{!"../drivers/mmc/host/tifm_sd.c", i32 22, i32 13}
!29 = !{ptr @tifm_sd_driver, !30, !"tifm_sd_driver", i1 false, i1 false}
!30 = !{!"../drivers/mmc/host/tifm_sd.c", i32 1062, i32 27}
!31 = !{ptr @tifm_sd_id_tbl, !32, !"tifm_sd_id_tbl", i1 false, i1 false}
!32 = !{!"../drivers/mmc/host/tifm_sd.c", i32 1058, i32 30}
!33 = !{ptr @.str.3, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/mmc/host/tifm_sd.c", i32 952, i32 3}
!35 = !{ptr @.str.4, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.5, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @tifm_sd_probe._entry, !34, !"_entry", i1 false, i1 false}
!38 = !{ptr @tifm_sd_probe._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @tifm_sd_probe.__key, !40, !"__key", i1 false, i1 false}
!40 = !{!"../drivers/mmc/host/tifm_sd.c", i32 972, i32 2}
!41 = !{ptr @.str.6, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.7, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mmc/host/tifm_sd.c", i32 750, i32 3}
!44 = !{ptr @.str.8, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @tifm_sd_end_cmd._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @tifm_sd_end_cmd._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.9, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/mmc/host/tifm_sd.c", i32 789, i32 2}
!49 = !{ptr @.str.10, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @tifm_sd_abort._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @tifm_sd_abort._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @tifm_sd_ops, !53, !"tifm_sd_ops", i1 false, i1 false}
!53 = !{!"../drivers/mmc/host/tifm_sd.c", i32 877, i32 34}
!54 = !{ptr @.str.11, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/mmc/host/tifm_sd.c", i32 634, i32 3}
!56 = !{ptr @.str.12, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @tifm_sd_request._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @tifm_sd_request._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.14, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/mmc/host/tifm_sd.c", i32 674, i32 5}
!61 = !{ptr @tifm_sd_request._entry.13, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @tifm_sd_request._entry_ptr.15, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @tifm_sd_request._entry.16, !64, !"_entry", i1 false, i1 false}
!64 = !{!"../drivers/mmc/host/tifm_sd.c", i32 686, i32 5}
!65 = !{ptr @tifm_sd_request._entry_ptr.17, !64, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.18, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/mmc/host/tifm_sd.c", i32 316, i32 2}
!68 = !{ptr @.str.19, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @tifm_sd_set_dma_data.__UNIQUE_ID_ddebug290, !67, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!70 = !{ptr @.str.20, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/mmc/host/tifm_sd.c", i32 230, i32 2}
!72 = !{ptr @.str.21, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @tifm_sd_bounce_block.__UNIQUE_ID_ddebug285, !71, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!74 = !{ptr @.str.22, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/mmc/host/tifm_sd.c", i32 382, i32 2}
!76 = !{ptr @.str.23, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @tifm_sd_exec.__UNIQUE_ID_ddebug291, !75, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!78 = !{ptr @.str.24, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/mmc/host/tifm_sd.c", i32 805, i32 2}
!80 = !{ptr @.str.25, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @tifm_sd_ios.__UNIQUE_ID_ddebug294, !79, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!82 = !{ptr @.str.26, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/mmc/host/tifm_sd.c", i32 514, i32 2}
!84 = !{ptr @.str.27, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @tifm_sd_card_event.__UNIQUE_ID_ddebug293, !83, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!86 = !{ptr @.str.28, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/mmc/host/tifm_sd.c", i32 484, i32 2}
!88 = !{ptr @.str.29, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @tifm_sd_data_event.__UNIQUE_ID_ddebug292, !87, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!90 = !{ptr @.str.30, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/mmc/host/tifm_sd.c", i32 906, i32 3}
!92 = !{ptr @.str.31, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @tifm_sd_initialize_host._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @tifm_sd_initialize_host._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.33, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/mmc/host/tifm_sd.c", i32 932, i32 3}
!97 = !{ptr @tifm_sd_initialize_host._entry.32, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @tifm_sd_initialize_host._entry_ptr.34, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.35, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/mmc/host/tifm_sd.c", i32 1024, i32 2}
!101 = !{ptr @.str.36, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @tifm_sd_remove.__UNIQUE_ID_ddebug297, !100, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!103 = !{ptr @.str.37, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/mmc/host/tifm_sd.c", i32 1043, i32 2}
!105 = !{ptr @.str.38, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @tifm_sd_resume.__UNIQUE_ID_ddebug298, !104, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!107 = !{!"sp"}
!108 = !{i32 1, !"wchar_size", i32 2}
!109 = !{i32 1, !"min_enum_size", i32 4}
!110 = !{i32 8, !"branch-target-enforcement", i32 0}
!111 = !{i32 8, !"sign-return-address", i32 0}
!112 = !{i32 8, !"sign-return-address-all", i32 0}
!113 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!114 = !{i32 7, !"uwtable", i32 1}
!115 = !{i32 7, !"frame-pointer", i32 2}
!116 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!117 = !{i64 4230453}
!118 = !{i64 2155022226}
!119 = !{i64 2155026313}
!120 = !{i64 4230035}
!121 = !{i64 2155027111}
!122 = !{i64 2155027569}
!123 = !{i64 2148333959, i64 2148333964, i64 2148333977, i64 2148334021, i64 2148334055, i64 2148334076}
!124 = !{i64 2154990047}
!125 = !{i64 2154991082}
!126 = !{i64 2154991812}
!127 = !{i64 2154992362}
!128 = !{i64 2154993383}
!129 = !{i64 2154994364}
!130 = !{i64 2154956829}
!131 = !{i64 2154959586}
!132 = !{i64 2154960125}
!133 = !{i64 2154960591}
!134 = !{i64 2154941978}
!135 = !{i64 2154942552}
!136 = !{i64 2154943126}
!137 = !{i64 2154943700}
!138 = !{i64 2154944274}
!139 = !{i64 2154944848}
!140 = !{i64 2154945422}
!141 = !{i64 2154945996}
!142 = !{i64 2154961078}
!143 = !{i64 914041, i64 914102}
!144 = !{i64 2154910388}
!145 = !{!"branch_weights", i32 2000, i32 1}
!146 = !{i64 2154400158, i64 2154400650, i64 2154400195, i64 2154400251, i64 2154400285, i64 2154400309, i64 2154400350, i64 2154400371, i64 2154400399, i64 2154400433}
!147 = !{i64 2154653347}
!148 = !{i64 2153918822}
!149 = !{i64 2154905674}
!150 = !{i64 2153919029}
!151 = !{i64 2154656118}
!152 = !{i64 2154907669}
!153 = !{i64 2154908080}
!154 = !{i64 916773}
!155 = !{!"branch_weights", i32 1, i32 2000}
!156 = !{i64 917058}
!157 = !{i64 2154962995}
!158 = !{i64 2154953316}
!159 = !{i64 2154956064}
!160 = !{i64 2155012715}
!161 = !{i64 2155013146}
!162 = !{i64 2155013604}
!163 = !{i64 2155014415}
!164 = !{i64 2155016295}
!165 = !{i64 2155016734}
!166 = !{i64 2155017223}
!167 = !{i64 2155017657}
!168 = !{i64 2155018084}
!169 = !{i64 2155018820}
!170 = !{i64 2155019055}
!171 = !{i64 2155021389}
!172 = !{i32 0, i32 33}
!173 = !{i8 0, i8 2}
!174 = !{i64 2154963444}
!175 = !{i64 2154964772}
!176 = !{i64 2154965828}
!177 = !{i64 2154966077}
!178 = !{i64 2154967391}
!179 = !{i64 2154968405}
!180 = !{i64 2154971579}
!181 = !{i64 2154972569}
!182 = !{i64 2154973643}
!183 = !{i64 2154974633}
!184 = !{i64 2154974936}
!185 = !{i64 2154979002}
!186 = !{i64 2154979927}
!187 = !{i64 2154981073}
!188 = !{i64 2154981538}
!189 = !{i64 2154982982}
!190 = !{i64 2154983463}
!191 = !{i64 2154984712}
!192 = !{i64 2154985678}
!193 = !{i64 2155006389}
!194 = !{i64 2155007400}
!195 = !{i64 2155008428}
!196 = !{i64 2155009394}
!197 = !{i64 2155010487}
!198 = !{i64 2155011567}
!199 = !{i64 2155012486}
!200 = !{i64 2154928128}
!201 = !{i64 2154930334, i64 2154930825, i64 2154930371, i64 2154930427, i64 2154930461, i64 2154930485, i64 2154930526, i64 2154930547, i64 2154930575, i64 2154930609}
!202 = !{i64 2154940182}
!203 = !{i64 2154940680}
!204 = !{i64 2154941158}
!205 = !{i64 2154947217}
!206 = !{i64 2154948258}
!207 = !{i64 2154949426}
!208 = !{i64 2154950518}
!209 = !{i64 2154951668}
!210 = !{i64 2154952742}
