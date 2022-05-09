; ModuleID = '/llk/IR_all_yes/drivers/memstick/host/tifm_ms.c_pt.bc'
source_filename = "../drivers/memstick/host/tifm_ms.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.tifm_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tifm_device_id = type { i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.memstick_host = type { %struct.mutex, i32, i32, %struct.work_struct, %struct.device, ptr, i32, i8, ptr, ptr, [60 x i8], [0 x i32] }
%struct.memstick_request = type { i8, i8, i8, i32, %union.anon.71 }
%union.anon.71 = type { %struct.scatterlist }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.tifm_ms = type { ptr, %struct.timer_list, ptr, %struct.tasklet_struct, i32, i32, i32, i8, i8, i8, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.73, i32 }
%union.anon.73 = type { ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%union.anon.53 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.anon.72 = type { i8, [15 x i8] }

@__param_str_no_dma = internal constant [15 x i8] c"tifm_ms.no_dma\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@no_dma = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_no_dma = internal constant %struct.kernel_param { ptr @__param_str_no_dma, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @no_dma } }, section "__param", align 4
@__UNIQUE_ID_no_dmatype248 = internal constant [29 x i8] c"tifm_ms.parmtype=no_dma:bool\00", section ".modinfo", align 1
@tifm_ms_driver = internal global { %struct.tifm_driver, [32 x i8] } { %struct.tifm_driver { ptr @tifm_ms_id_tbl, ptr @tifm_ms_probe, ptr @tifm_ms_remove, ptr @tifm_ms_suspend, ptr @tifm_ms_resume, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [32 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author259 = internal constant [26 x i8] c"tifm_ms.author=Alex Dubov\00", section ".modinfo", align 1
@__UNIQUE_ID_description260 = internal constant [53 x i8] c"tifm_ms.description=TI FlashMedia MemoryStick driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file261 = internal constant [43 x i8] c"tifm_ms.file=drivers/memstick/host/tifm_ms\00", section ".modinfo", align 1
@__UNIQUE_ID_license262 = internal constant [20 x i8] c"tifm_ms.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_tifm_ms__263_682_tifm_ms_init6 = internal global ptr @tifm_ms_init, section ".initcall6.init", align 4
@__exitcall_tifm_ms_exit = internal global ptr @tifm_ms_exit, section ".exitcall.exit", align 4
@tifm_ms_id_tbl = internal global { [2 x %struct.tifm_device_id], [30 x i8] } { [2 x %struct.tifm_device_id] [%struct.tifm_device_id { i8 2 }, %struct.tifm_device_id zeroinitializer], [30 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tifm_ms\00", [24 x i8] zeroinitializer }, align 32
@tifm_ms_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 560, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014%s : card gone, unexpectedly\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tifm_ms_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/memstick/host/tifm_ms.c\00", [32 x i8] zeroinitializer }, align 32
@tifm_ms_probe._entry_ptr = internal global ptr @tifm_ms_probe._entry, section ".printk_index", align 4
@tifm_ms_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"(&host->timer)\00", [17 x i8] zeroinitializer }, align 32
@tifm_ms_abort.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.3, ptr @.str.6, i8 0, i8 -121, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tifm_ms_abort\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"status %x\0A\00", [21 x i8] zeroinitializer }, align 32
@tifm_ms_abort._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.3, i32 546, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013%s : card failed to respond for a long period of time (%x, %x)\0A\00", [62 x i8] zeroinitializer }, align 32
@tifm_ms_abort._entry_ptr = internal global ptr @tifm_ms_abort._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@tifm_ms_issue_cmd.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.3, ptr @.str.9, i8 0, i8 82, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tifm_ms_issue_cmd\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"executing TPC %x, %x\0A\00", [42 x i8] zeroinitializer }, align 32
@tifm_ms_card_event.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.3, ptr @.str.11, i8 0, i8 106, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tifm_ms_card_event\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"host event: host_status %x, flags %x\0A\00", [58 x i8] zeroinitializer }, align 32
@tifm_ms_complete_cmd.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.3, ptr @.str.13, i8 0, i8 90, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tifm_ms_complete_cmd\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TPC complete\0A\00", [18 x i8] zeroinitializer }, align 32
@tifm_ms_data_event.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.3, ptr @.str.15, i8 0, i8 98, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tifm_ms_data_event\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"data event: fifo_status %x, host_status %x, flags %x\0A\00", [42 x i8] zeroinitializer }, align 32
@tifm_ms_transfer_data.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.3, ptr @.str.17, i8 0, i8 49, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tifm_ms_transfer_data\00", [42 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"fifo data transfer, %d, %d\0A\00", [36 x i8] zeroinitializer }, align 32
@tifm_ms_transfer_data.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.3, ptr @.str.18, i8 0, i8 58, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"fifo data transfer, %d remaining\0A\00", [62 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.22 = private unnamed_addr constant [7 x i8] c"no_dma\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 21, i32 13 }
@___asan_gen_.25 = private unnamed_addr constant [15 x i8] c"tifm_ms_driver\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 655, i32 27 }
@___asan_gen_.28 = private unnamed_addr constant [15 x i8] c"tifm_ms_id_tbl\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 651, i32 30 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 657, i32 12 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 559, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 573, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 540, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 542, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 330, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 426, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 360, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 391, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 197, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.95 = private constant [35 x i8] c"../drivers/memstick/host/tifm_ms.c\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 233, i32 2 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__UNIQUE_ID_author259, ptr @__UNIQUE_ID_description260, ptr @__UNIQUE_ID_file261, ptr @__UNIQUE_ID_license262, ptr @__UNIQUE_ID_no_dmatype248, ptr @__exitcall_tifm_ms_exit, ptr @__initcall__kmod_tifm_ms__263_682_tifm_ms_init6, ptr @__param_no_dma, ptr @tifm_ms_abort._entry, ptr @tifm_ms_abort._entry_ptr, ptr @tifm_ms_exit, ptr @tifm_ms_probe._entry, ptr @tifm_ms_probe._entry_ptr, ptr @no_dma, ptr @tifm_ms_driver, ptr @tifm_ms_id_tbl, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @tifm_ms_probe.__key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @no_dma to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tifm_ms_driver to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tifm_ms_id_tbl to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tifm_ms_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tifm_ms_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tifm_ms_abort._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tifm_ms_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @tifm_unregister_driver(ptr noundef nonnull @tifm_ms_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tifm_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tifm_ms_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tifm_register_driver(ptr noundef nonnull @tifm_ms_driver) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tifm_ms_probe(ptr noundef %sock) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sock, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
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
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %retval.0.i) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev5 = getelementptr inbounds %struct.tifm_dev, ptr %sock, i32 0, i32 6
  %call6 = tail call ptr @memstick_alloc_host(i32 noundef 100, ptr noundef %dev5) #7
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %private.i = getelementptr inbounds %struct.memstick_host, ptr %call6, i32 0, i32 11
  %driver_data.i.i = getelementptr inbounds %struct.tifm_dev, ptr %sock, i32 0, i32 6, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call6, ptr %driver_data.i.i, align 4
  %9 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %sock, ptr %private.i, align 4
  %timeout_jiffies = getelementptr inbounds %struct.memstick_host, ptr %call6, i32 1, i32 0, i32 5, i32 7
  %10 = ptrtoint ptr %timeout_jiffies to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 100, ptr %timeout_jiffies, align 4
  %timer = getelementptr inbounds %struct.memstick_host, ptr %call6, i32 1, i32 0, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @tifm_ms_abort, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @tifm_ms_probe.__key) #7
  %notify = getelementptr inbounds %struct.memstick_host, ptr %call6, i32 1, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %call6 to i32
  tail call void @tasklet_init(ptr noundef %notify, ptr noundef nonnull @tifm_ms_req_tasklet, i32 noundef %11) #7
  %request = getelementptr inbounds %struct.memstick_host, ptr %call6, i32 0, i32 8
  %12 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @tifm_ms_submit_req, ptr %request, align 4
  %set_param = getelementptr inbounds %struct.memstick_host, ptr %call6, i32 0, i32 9
  %13 = ptrtoint ptr %set_param to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @tifm_ms_set_param, ptr %set_param, align 64
  %card_event = getelementptr inbounds %struct.tifm_dev, ptr %sock, i32 0, i32 4
  %14 = ptrtoint ptr %card_event to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @tifm_ms_card_event, ptr %card_event, align 8
  %data_event = getelementptr inbounds %struct.tifm_dev, ptr %sock, i32 0, i32 5
  %15 = ptrtoint ptr %data_event to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @tifm_ms_data_event, ptr %data_event, align 4
  %call16 = tail call i32 @tifm_has_ms_pif(ptr noundef %sock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end9.if.end19_crit_edge, label %if.then18

if.end9.if.end19_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then18:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %caps = getelementptr inbounds %struct.memstick_host, ptr %call6, i32 0, i32 2
  %16 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %caps, align 32
  %or = or i32 %17, 2
  store i32 %or, ptr %caps, align 32
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end9.if.end19_crit_edge
  %call20 = tail call i32 @memstick_add_host(ptr noundef nonnull %call6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end19.cleanup_crit_edge, label %if.end23

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @memstick_free_host(ptr noundef nonnull %call6) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end19.cleanup_crit_edge, %if.end.cleanup_crit_edge, %dev_name.exit
  %retval.0 = phi i32 [ %call20, %if.end23 ], [ -5, %dev_name.exit ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tifm_ms_remove(ptr noundef %sock) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.tifm_dev, ptr %sock, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %request = getelementptr inbounds %struct.memstick_host, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @tifm_ms_dummy_submit, ptr %request, align 4
  %notify = getelementptr inbounds %struct.memstick_host, ptr %1, i32 1, i32 0, i32 3, i32 1
  tail call void @tasklet_kill(ptr noundef %notify) #7
  %lock = getelementptr inbounds %struct.tifm_dev, ptr %sock, i32 0, i32 1
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %eject = getelementptr inbounds %struct.memstick_host, ptr %1, i32 1, i32 1
  %3 = ptrtoint ptr %eject to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %eject, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %eject, align 4
  %req = getelementptr inbounds %struct.memstick_host, ptr %1, i32 1, i32 0, i32 3
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end39_crit_edge, label %if.then

entry.if.end39_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then:                                          ; preds = %entry
  %timer = getelementptr inbounds %struct.memstick_host, ptr %1, i32 1, i32 0, i32 1
  %call7 = tail call i32 @del_timer(ptr noundef %timer) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sock, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -65536) #7, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sock, align 8
  %add.ptr15 = getelementptr i8, ptr %9, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 33554432) #7, !srcloc !76
  %10 = ptrtoint ptr %eject to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load16 = load i8, ptr %eject, align 4
  %11 = and i8 %bf.load16, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool18.not = icmp eq i8 %11, 0
  br i1 %tobool18.not, label %if.then.if.end_crit_edge, label %if.then19

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then19:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %req, align 4
  %14 = getelementptr inbounds %struct.memstick_request, ptr %13, i32 0, i32 4
  %data_dir = getelementptr inbounds %struct.memstick_request, ptr %13, i32 0, i32 1
  %15 = ptrtoint ptr %data_dir to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load22 = load i8, ptr %data_dir, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load22)
  %cmp25 = icmp sgt i8 %bf.load22, -1
  %cond = select i1 %cmp25, i32 1, i32 2
  tail call void @tifm_unmap_sg(ptr noundef %sock, ptr noundef %14, i32 noundef 1, i32 noundef %cond) #7
  br label %if.end

if.end:                                           ; preds = %if.then19, %if.then.if.end_crit_edge
  %16 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %req, align 4
  %error = getelementptr inbounds %struct.memstick_request, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -62, ptr %error, align 4
  %call3060 = tail call i32 @memstick_next_req(ptr noundef %1, ptr noundef %req) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3060)
  %tobool31.not61 = icmp eq i32 %call3060, 0
  br i1 %tobool31.not61, label %if.end.if.then32_crit_edge, label %if.end.if.end39_crit_edge

if.end.if.end39_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.end.if.then32_crit_edge:                       ; preds = %if.end
  br label %if.then32

if.then32:                                        ; preds = %if.then32.if.then32_crit_edge, %if.end.if.then32_crit_edge
  %19 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %req, align 4
  %error34 = getelementptr inbounds %struct.memstick_request, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %error34 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -62, ptr %error34, align 4
  %call30 = tail call i32 @memstick_next_req(ptr noundef %1, ptr noundef %req) #7
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then32.if.then32_crit_edge, label %if.then32.if.end39_crit_edge

if.then32.if.end39_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then32.if.then32_crit_edge:                    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then32

if.end39:                                         ; preds = %if.then32.if.end39_crit_edge, %if.end.if.end39_crit_edge, %entry.if.end39_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #7
  tail call void @memstick_remove_host(ptr noundef %1) #7
  tail call void @memstick_free_host(ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tifm_ms_suspend(ptr nocapture noundef readonly %sock, [1 x i32] %state.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.tifm_dev, ptr %sock, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @memstick_suspend_host(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tifm_ms_resume(ptr nocapture noundef readonly %sock) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.tifm_dev, ptr %sock, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @memstick_resume_host(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memstick_alloc_host(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tifm_ms_abort(ptr nocapture noundef readonly %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tifm_ms_abort.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tifm_ms_abort, %do.end13)) #7
          to label %if.then [label %do.end13], !srcloc !78

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %dev5 = getelementptr inbounds %struct.tifm_dev, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %add.ptr7 = getelementptr i8, ptr %3, i32 396
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #7, !srcloc !73
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tifm_ms_abort.__UNIQUE_ID_ddebug258, ptr noundef %dev5, ptr noundef nonnull @.str.6, i32 noundef %5) #7
  br label %do.end13

do.end13:                                         ; preds = %if.then, %entry
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  %init_name.i = getelementptr inbounds %struct.tifm_dev, ptr %7, i32 0, i32 6, i32 3
  %8 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end13.dev_name.exit_crit_edge

do.end13.dev_name.exit_crit_edge:                 ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #9
  %dev16 = getelementptr inbounds %struct.tifm_dev, ptr %7, i32 0, i32 6
  %10 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev16, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end13.dev_name.exit_crit_edge
  %retval.0.i29 = phi ptr [ %11, %if.end.i ], [ %9, %do.end13.dev_name.exit_crit_edge ]
  %req = getelementptr i8, ptr %t, i32 48
  %12 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %req, align 4
  %tobool18.not = icmp eq ptr %13, null
  br i1 %tobool18.not, label %dev_name.exit.cond.end_crit_edge, label %cond.true

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 4
  %conv = zext i8 %15 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %dev_name.exit.cond.end_crit_edge
  %cond = phi i32 [ %conv, %cond.true ], [ 0, %dev_name.exit.cond.end_crit_edge ]
  %cmd_flags = getelementptr i8, ptr %t, i32 89
  %16 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %cmd_flags, align 1
  %conv20 = zext i8 %17 to i32
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %retval.0.i29, i32 noundef %cond, i32 noundef %conv20) #10
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 4
  tail call void @tifm_eject(ptr noundef %19) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tifm_ms_req_tasklet(i32 noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %data to ptr
  %private.i = getelementptr inbounds %struct.memstick_host, ptr %0, i32 0, i32 11
  %1 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private.i, align 4
  %lock = getelementptr inbounds %struct.tifm_dev, ptr %2, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %req = getelementptr inbounds %struct.memstick_host, ptr %0, i32 1, i32 0, i32 3
  %3 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %req, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  %eject = getelementptr inbounds %struct.memstick_host, ptr %0, i32 1, i32 1
  %5 = ptrtoint ptr %eject to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %eject, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool6.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool6.not, label %if.then.do.body19_crit_edge, label %do.body8.preheader

if.then.do.body19_crit_edge:                      ; preds = %if.then
  br label %do.body19

do.body8.preheader:                               ; preds = %if.then
  %call1046 = tail call i32 @memstick_next_req(ptr noundef %0, ptr noundef %req) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1046)
  %tobool11.not47 = icmp eq i32 %call1046, 0
  br i1 %tobool11.not47, label %do.body8.preheader.if.then12_crit_edge, label %do.body8.preheader.cleanup_crit_edge

do.body8.preheader.cleanup_crit_edge:             ; preds = %do.body8.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body8.preheader.if.then12_crit_edge:           ; preds = %do.body8.preheader
  br label %if.then12

if.then12:                                        ; preds = %if.then12.if.then12_crit_edge, %do.body8.preheader.if.then12_crit_edge
  %6 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %req, align 4
  %error = getelementptr inbounds %struct.memstick_request, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -62, ptr %error, align 4
  %call10 = tail call i32 @memstick_next_req(ptr noundef %0, ptr noundef %req) #7
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12.if.then12_crit_edge, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then12.if.then12_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

do.body19:                                        ; preds = %land.rhs.do.body19_crit_edge, %if.then.do.body19_crit_edge
  %call21 = tail call i32 @memstick_next_req(ptr noundef %0, ptr noundef %req) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool23.not = icmp eq i32 %call21, 0
  br i1 %tobool23.not, label %land.rhs, label %do.body19.cleanup_crit_edge

do.body19.cleanup_crit_edge:                      ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.rhs:                                         ; preds = %do.body19
  %call24 = tail call fastcc i32 @tifm_ms_issue_cmd(ptr noundef %private.i)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %land.rhs.cleanup_crit_edge, label %land.rhs.do.body19_crit_edge

land.rhs.do.body19_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body19

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %land.rhs.cleanup_crit_edge, %do.body19.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %do.body8.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tifm_ms_submit_req(ptr noundef %msh) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.memstick_host, ptr %msh, i32 1, i32 0, i32 4
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.tasklet_schedule.exit_crit_edge

entry.tasklet_schedule.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %tasklet_schedule.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %notify = getelementptr inbounds %struct.memstick_host, ptr %msh, i32 1, i32 0, i32 3, i32 1
  tail call void @__tasklet_schedule(ptr noundef %notify) #7
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i, %entry.tasklet_schedule.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tifm_ms_set_param(ptr nocapture noundef %msh, i32 noundef %param, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.memstick_host, ptr %msh, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  %2 = zext i32 %param to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %param, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb25
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %3 = zext i32 %value to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %value, label %sw.bb.cleanup_crit_edge [
    i32 1, label %if.then
    i32 0, label %do.body13
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %mode_mask = getelementptr inbounds %struct.memstick_host, ptr %msh, i32 1, i32 0, i32 5, i32 3
  %4 = ptrtoint ptr %mode_mask to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 16400, ptr %mode_mask, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %add.ptr = getelementptr i8, ptr %6, i32 400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 8388608) #7, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  tail call void @arm_heavy_mb() #7
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  %add.ptr5 = getelementptr i8, ptr %8, i32 400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 655360) #7, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  tail call void @arm_heavy_mb() #7
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  %add.ptr10 = getelementptr i8, ptr %10, i32 396
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 -1) #7, !srcloc !76
  br label %cleanup

do.body13:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  tail call void @arm_heavy_mb() #7
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 8
  %add.ptr17 = getelementptr i8, ptr %12, i32 400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 655360) #7, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !84
  tail call void @arm_heavy_mb() #7
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %add.ptr22 = getelementptr i8, ptr %14, i32 396
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 -1) #7, !srcloc !76
  br label %cleanup

sw.bb25:                                          ; preds = %entry
  %15 = zext i32 %value to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %value, label %sw.bb25.cleanup_crit_edge [
    i32 0, label %if.then27
    i32 1, label %if.then40
  ]

sw.bb25.cleanup_crit_edge:                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then27:                                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #9
  %mode_mask28 = getelementptr inbounds %struct.memstick_host, ptr %msh, i32 1, i32 0, i32 5, i32 3
  %16 = ptrtoint ptr %mode_mask28 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 16400, ptr %mode_mask28, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  tail call void @arm_heavy_mb() #7
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 8
  %add.ptr33 = getelementptr i8, ptr %18, i32 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33) #7, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  %20 = and i32 %19, -65537
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 8
  %add.ptr37 = getelementptr i8, ptr %22, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 %20) #7, !srcloc !76
  br label %cleanup

if.then40:                                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #9
  %mode_mask41 = getelementptr inbounds %struct.memstick_host, ptr %msh, i32 1, i32 0, i32 5, i32 3
  %23 = ptrtoint ptr %mode_mask41 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %mode_mask41, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  tail call void @arm_heavy_mb() #7
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 8
  %add.ptr48 = getelementptr i8, ptr %25, i32 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr48) #7, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  %27 = or i32 %26, 65536
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 8
  %add.ptr53 = getelementptr i8, ptr %29, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53, i32 %27) #7, !srcloc !76
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %if.then27, %sw.bb25.cleanup_crit_edge, %do.body13, %if.then, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb25.cleanup_crit_edge ], [ 0, %if.then27 ], [ 0, %if.then40 ], [ 0, %if.then ], [ 0, %do.body13 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tifm_ms_card_event(ptr noundef %sock) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.tifm_dev, ptr %sock, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #7
  %driver_data.i.i = getelementptr inbounds %struct.tifm_dev, ptr %sock, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %private.i = getelementptr inbounds %struct.memstick_host, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sock, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 396
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !73
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tifm_ms_card_event.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tifm_ms_card_event, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !78

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.tifm_dev, ptr %sock, i32 0, i32 6
  %cmd_flags = getelementptr inbounds %struct.tifm_ms, ptr %private.i, i32 0, i32 8
  %6 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cmd_flags, align 1
  %conv = zext i8 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tifm_ms_card_event.__UNIQUE_ID_ddebug257, ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %5, i32 noundef %conv) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %req = getelementptr inbounds %struct.memstick_host, ptr %1, i32 1, i32 0, i32 3
  %8 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %req, align 4
  %tobool9.not = icmp eq ptr %9, null
  br i1 %tobool9.not, label %if.end53.critedge, label %if.then10

if.then10:                                        ; preds = %do.end
  %and = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.else, label %if.then10.if.end20.sink.split_crit_edge

if.then10.if.end20.sink.split_crit_edge:          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.sink.split

if.else:                                          ; preds = %if.then10
  %and14 = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.else.if.end20_crit_edge, label %if.else.if.end20.sink.split_crit_edge

if.else.if.end20.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.sink.split

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.end20.sink.split:                              ; preds = %if.else.if.end20.sink.split_crit_edge, %if.then10.if.end20.sink.split_crit_edge
  %.sink = phi i32 [ -62, %if.then10.if.end20.sink.split_crit_edge ], [ -84, %if.else.if.end20.sink.split_crit_edge ]
  %error18 = getelementptr inbounds %struct.memstick_request, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %error18 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.sink, ptr %error18, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.end20.sink.split, %if.else.if.end20_crit_edge
  %and21 = and i32 %5, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end20.if.end27_crit_edge, label %if.then23

if.end20.if.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %cmd_flags24 = getelementptr inbounds %struct.tifm_ms, ptr %private.i, i32 0, i32 8
  %11 = ptrtoint ptr %cmd_flags24 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %cmd_flags24, align 1
  %13 = or i8 %12, 1
  store i8 %13, ptr %cmd_flags24, align 1
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %if.end20.if.end27_crit_edge
  %and28 = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end27.if.end35_crit_edge, label %if.then30

if.end27.if.end35_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %cmd_flags31 = getelementptr inbounds %struct.tifm_ms, ptr %private.i, i32 0, i32 8
  %14 = ptrtoint ptr %cmd_flags31 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %cmd_flags31, align 1
  %16 = or i8 %15, 4
  store i8 %16, ptr %cmd_flags31, align 1
  br label %if.end35

if.end35:                                         ; preds = %if.then30, %if.end27.if.end35_crit_edge
  %17 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %req, align 4
  %error.i = getelementptr inbounds %struct.memstick_request, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end35.if.end18.i_crit_edge

if.end35.if.end18.i_crit_edge:                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i

if.then.i:                                        ; preds = %if.end35
  %cmd_flags.i = getelementptr inbounds %struct.tifm_ms, ptr %private.i, i32 0, i32 8
  %21 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %cmd_flags.i, align 1
  %conv.i = zext i8 %22 to i32
  %23 = and i32 %conv.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %23)
  %.not.i = icmp eq i32 %23, 3
  br i1 %.not.i, label %if.end8.i, label %if.end53.critedge74

if.end8.i:                                        ; preds = %if.then.i
  %need_card_int.i = getelementptr inbounds %struct.memstick_request, ptr %18, i32 0, i32 1
  %24 = ptrtoint ptr %need_card_int.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load.i = load i8, ptr %need_card_int.i, align 1
  %25 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool11.not.i = icmp ne i8 %25, 0
  %and14.i = and i32 %conv.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  %or.cond.i = select i1 %tobool11.not.i, i1 %tobool15.not.i, i1 false
  br i1 %or.cond.i, label %if.end53.critedge77, label %if.end8.i.if.end18.i_crit_edge

if.end8.i.if.end18.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.end8.i.if.end18.i_crit_edge, %if.end35.if.end18.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  tail call void @arm_heavy_mb() #7
  %26 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sock, align 8
  %add.ptr44 = getelementptr i8, ptr %27, i32 400
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr44) #7, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  %29 = or i32 %28, 524288
  %30 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sock, align 8
  %add.ptr50 = getelementptr i8, ptr %31, i32 400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 %29) #7, !srcloc !76
  tail call fastcc void @tifm_ms_complete_cmd(ptr noundef %private.i)
  br label %if.end53

if.end53.critedge:                                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  tail call void @arm_heavy_mb() #7
  %32 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sock, align 8
  %add.ptr44.c = getelementptr i8, ptr %33, i32 400
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr44.c) #7, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  %35 = or i32 %34, 524288
  %36 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sock, align 8
  %add.ptr50.c = getelementptr i8, ptr %37, i32 400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50.c, i32 %35) #7, !srcloc !76
  br label %if.end53

if.end53.critedge74:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  tail call void @arm_heavy_mb() #7
  %38 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sock, align 8
  %add.ptr44.c75 = getelementptr i8, ptr %39, i32 400
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr44.c75) #7, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  %41 = or i32 %40, 524288
  %42 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sock, align 8
  %add.ptr50.c76 = getelementptr i8, ptr %43, i32 400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50.c76, i32 %41) #7, !srcloc !76
  br label %if.end53

if.end53.critedge77:                              ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  tail call void @arm_heavy_mb() #7
  %44 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sock, align 8
  %add.ptr44.c78 = getelementptr i8, ptr %45, i32 400
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr44.c78) #7, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  %47 = or i32 %46, 524288
  %48 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sock, align 8
  %add.ptr50.c79 = getelementptr i8, ptr %49, i32 400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50.c79, i32 %47) #7, !srcloc !76
  br label %if.end53

if.end53:                                         ; preds = %if.end53.critedge77, %if.end53.critedge74, %if.end53.critedge, %if.end18.i
  tail call void @_raw_spin_unlock(ptr noundef %lock) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tifm_ms_data_event(ptr noundef %sock) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.tifm_dev, ptr %sock, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #7
  %driver_data.i.i = getelementptr inbounds %struct.tifm_dev, ptr %sock, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %private.i = getelementptr inbounds %struct.memstick_host, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sock, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 32
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !73
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !92
  %6 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sock, align 8
  %add.ptr7 = getelementptr i8, ptr %7, i32 396
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #7, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tifm_ms_data_event.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tifm_ms_data_event, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !78

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %dev = getelementptr inbounds %struct.tifm_dev, ptr %sock, i32 0, i32 6
  %cmd_flags = getelementptr inbounds %struct.tifm_ms, ptr %private.i, i32 0, i32 8
  %10 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %cmd_flags, align 1
  %conv = zext i8 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tifm_ms_data_event.__UNIQUE_ID_ddebug256, ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %5, i32 noundef %9, i32 noundef %conv) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %req = getelementptr inbounds %struct.memstick_host, ptr %1, i32 1, i32 0, i32 3
  %12 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %req, align 4
  %tobool16.not = icmp eq ptr %13, null
  br i1 %tobool16.not, label %do.end.do.body47_crit_edge, label %if.then17

do.end.do.body47_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body47

if.then17:                                        ; preds = %do.end
  %use_dma = getelementptr inbounds %struct.memstick_host, ptr %1, i32 1, i32 1
  %14 = ptrtoint ptr %use_dma to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %use_dma, align 4
  %15 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool19.not = icmp eq i8 %15, 0
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  %or.cond = select i1 %tobool19.not, i1 true, i1 %tobool20.not
  br i1 %or.cond, label %if.then17.if.end26_crit_edge, label %if.then21

if.then17.if.end26_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then21:                                        ; preds = %if.then17
  %cmd_flags22 = getelementptr inbounds %struct.tifm_ms, ptr %private.i, i32 0, i32 8
  %16 = ptrtoint ptr %cmd_flags22 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %cmd_flags22, align 1
  %18 = or i8 %17, 2
  store i8 %18, ptr %cmd_flags22, align 1
  %error.i = getelementptr inbounds %struct.memstick_request, ptr %13, i32 0, i32 3
  %19 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then21.if.end18.i_crit_edge

if.then21.if.end18.i_crit_edge:                   ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i

if.then.i:                                        ; preds = %if.then21
  %conv.i = zext i8 %18 to i32
  %21 = and i32 %conv.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %21)
  %.not.i = icmp eq i32 %21, 3
  br i1 %.not.i, label %if.end8.i, label %if.then.i.if.end26_crit_edge

if.then.i.if.end26_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.end8.i:                                        ; preds = %if.then.i
  %need_card_int.i = getelementptr inbounds %struct.memstick_request, ptr %13, i32 0, i32 1
  %22 = ptrtoint ptr %need_card_int.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load.i = load i8, ptr %need_card_int.i, align 1
  %23 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool11.not.i = icmp ne i8 %23, 0
  %and14.i = and i32 %conv.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  %or.cond.i = select i1 %tobool11.not.i, i1 %tobool15.not.i, i1 false
  br i1 %or.cond.i, label %if.end8.i.if.end26_crit_edge, label %if.end8.i.if.end18.i_crit_edge

if.end8.i.if.end18.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i

if.end8.i.if.end26_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.end18.i:                                       ; preds = %if.end8.i.if.end18.i_crit_edge, %if.then21.if.end18.i_crit_edge
  br label %if.end26

if.end26:                                         ; preds = %if.end18.i, %if.end8.i.if.end26_crit_edge, %if.then.i.if.end26_crit_edge, %if.then17.if.end26_crit_edge
  %rc.0 = phi i32 [ 1, %if.then17.if.end26_crit_edge ], [ 0, %if.end18.i ], [ 1, %if.then.i.if.end26_crit_edge ], [ 1, %if.end8.i.if.end26_crit_edge ]
  %24 = ptrtoint ptr %use_dma to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load28 = load i8, ptr %use_dma, align 4
  %25 = and i8 %bf.load28, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool31.not = icmp ne i8 %25, 0
  %and33 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  %or.cond74 = select i1 %tobool31.not, i1 true, i1 %tobool34.not
  br i1 %or.cond74, label %if.end26.do.body47_crit_edge, label %if.then35

if.end26.do.body47_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body47

if.then35:                                        ; preds = %if.end26
  %call36 = tail call fastcc i32 @tifm_ms_transfer_data(ptr noundef %private.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.then38, label %if.then35.do.body47_crit_edge

if.then35.do.body47_crit_edge:                    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body47

if.then38:                                        ; preds = %if.then35
  %cmd_flags39 = getelementptr inbounds %struct.tifm_ms, ptr %private.i, i32 0, i32 8
  %26 = ptrtoint ptr %cmd_flags39 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %cmd_flags39, align 1
  %28 = or i8 %27, 2
  store i8 %28, ptr %cmd_flags39, align 1
  %29 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %req, align 4
  %error.i77 = getelementptr inbounds %struct.memstick_request, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %error.i77 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %error.i77, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i78 = icmp eq i32 %32, 0
  br i1 %tobool.not.i78, label %if.then.i82, label %if.then38.if.end18.i90_crit_edge

if.then38.if.end18.i90_crit_edge:                 ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i90

if.then.i82:                                      ; preds = %if.then38
  %conv.i80 = zext i8 %28 to i32
  %33 = and i32 %conv.i80, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %33)
  %.not.i81 = icmp eq i32 %33, 3
  br i1 %.not.i81, label %if.end8.i89, label %if.then.i82.do.body47_crit_edge

if.then.i82.do.body47_crit_edge:                  ; preds = %if.then.i82
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body47

if.end8.i89:                                      ; preds = %if.then.i82
  %need_card_int.i83 = getelementptr inbounds %struct.memstick_request, ptr %30, i32 0, i32 1
  %34 = ptrtoint ptr %need_card_int.i83 to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load.i84 = load i8, ptr %need_card_int.i83, align 1
  %35 = and i8 %bf.load.i84, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool11.not.i85 = icmp ne i8 %35, 0
  %and14.i86 = and i32 %conv.i80, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i86)
  %tobool15.not.i87 = icmp eq i32 %and14.i86, 0
  %or.cond.i88 = select i1 %tobool11.not.i85, i1 %tobool15.not.i87, i1 false
  br i1 %or.cond.i88, label %if.end8.i89.do.body47_crit_edge, label %if.end8.i89.if.end18.i90_crit_edge

if.end8.i89.if.end18.i90_crit_edge:               ; preds = %if.end8.i89
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i90

if.end8.i89.do.body47_crit_edge:                  ; preds = %if.end8.i89
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body47

if.end18.i90:                                     ; preds = %if.end8.i89.if.end18.i90_crit_edge, %if.then38.if.end18.i90_crit_edge
  br label %do.body47

do.body47:                                        ; preds = %if.end18.i90, %if.end8.i89.do.body47_crit_edge, %if.then.i82.do.body47_crit_edge, %if.then35.do.body47_crit_edge, %if.end26.do.body47_crit_edge, %do.end.do.body47_crit_edge
  %rc.1 = phi i32 [ %rc.0, %if.end26.do.body47_crit_edge ], [ %rc.0, %if.then35.do.body47_crit_edge ], [ 1, %do.end.do.body47_crit_edge ], [ 0, %if.end18.i90 ], [ 1, %if.then.i82.do.body47_crit_edge ], [ 1, %if.end8.i89.do.body47_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  %36 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sock, align 8
  %add.ptr51 = getelementptr i8, ptr %37, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 %4) #7, !srcloc !76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.1)
  %tobool52.not = icmp eq i32 %rc.1, 0
  br i1 %tobool52.not, label %if.then53, label %do.body47.if.end54_crit_edge

do.body47.if.end54_crit_edge:                     ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

if.then53:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @tifm_ms_complete_cmd(ptr noundef %private.i)
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %do.body47.if.end54_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tifm_has_ms_pif(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memstick_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @memstick_free_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tifm_eject(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memstick_next_req(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tifm_ms_issue_cmd(ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %cmd_flags = getelementptr inbounds %struct.tifm_ms, ptr %host, i32 0, i32 8
  %block_pos = getelementptr inbounds %struct.tifm_ms, ptr %host, i32 0, i32 5
  %2 = ptrtoint ptr %block_pos to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %block_pos, align 4
  %io_word = getelementptr inbounds %struct.tifm_ms, ptr %host, i32 0, i32 10
  %3 = ptrtoint ptr %io_word to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %io_word, align 4
  %4 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 0, ptr %cmd_flags, align 1
  %5 = load i8, ptr @no_dma, align 1, !range !95
  %use_dma = getelementptr inbounds %struct.tifm_ms, ptr %host, i32 0, i32 7
  %6 = ptrtoint ptr %use_dma to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %use_dma, align 4
  %bf.value = shl nuw nsw i8 %5, 6
  %bf.clear = and i8 %bf.load, -65
  %7 = or i8 %bf.clear, %bf.value
  %bf.set = xor i8 %7, 64
  store i8 %bf.set, ptr %use_dma, align 4
  %req = getelementptr inbounds %struct.tifm_ms, ptr %host, i32 0, i32 2
  %8 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %req, align 4
  %long_data = getelementptr inbounds %struct.memstick_request, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %long_data to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load2 = load i8, ptr %long_data, align 1
  %11 = and i8 %bf.load2, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool4.not = icmp eq i8 %11, 0
  br i1 %tobool4.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %length = getelementptr inbounds %struct.memstick_request, ptr %9, i32 0, i32 4, i32 0, i32 2
  %12 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %length, align 4
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13) #7, !range !96
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %if.then.do.body_crit_edge, label %if.then.do.body.sink.split_crit_edge

if.then.do.body.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.sink.split

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %16 = getelementptr inbounds %struct.memstick_request, ptr %9, i32 0, i32 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 4
  %conv13 = zext i8 %18 to i32
  br label %do.body.sink.split

do.body.sink.split:                               ; preds = %if.else, %if.then.do.body.sink.split_crit_edge
  %data_len.0.ph = phi i32 [ %conv13, %if.else ], [ %13, %if.then.do.body.sink.split_crit_edge ]
  %19 = ptrtoint ptr %use_dma to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %bf.clear, ptr %use_dma, align 4
  br label %do.body

do.body:                                          ; preds = %do.body.sink.split, %if.then.do.body_crit_edge
  %data_len.0 = phi i32 [ %13, %if.then.do.body_crit_edge ], [ %data_len.0.ph, %do.body.sink.split ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  tail call void @arm_heavy_mb() #7
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 8
  %add.ptr = getelementptr i8, ptr %21, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -65536) #7, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  tail call void @arm_heavy_mb() #7
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 8
  %add.ptr23 = getelementptr i8, ptr %23, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 16777216) #7, !srcloc !76
  %24 = ptrtoint ptr %use_dma to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load25 = load i8, ptr %use_dma, align 4
  %25 = and i8 %bf.load25, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool28.not = icmp eq i8 %25, 0
  br i1 %tobool28.not, label %do.body91, label %if.then29

if.then29:                                        ; preds = %do.body
  %26 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %req, align 4
  %28 = getelementptr inbounds %struct.memstick_request, ptr %27, i32 0, i32 4
  %data_dir = getelementptr inbounds %struct.memstick_request, ptr %27, i32 0, i32 1
  %29 = ptrtoint ptr %data_dir to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load32 = load i8, ptr %data_dir, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load32)
  %cmp = icmp sgt i8 %bf.load32, -1
  %cond = select i1 %cmp, i32 2, i32 1
  %call36 = tail call i32 @tifm_map_sg(ptr noundef %1, ptr noundef %28, i32 noundef 1, i32 noundef %cond) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call36)
  %cmp37.not = icmp eq i32 %call36, 1
  %30 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %req, align 4
  br i1 %cmp37.not, label %if.end43, label %if.then39

if.then39:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  %error = getelementptr inbounds %struct.memstick_request, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -12, ptr %error, align 4
  %33 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %req, align 4
  %error42 = getelementptr inbounds %struct.memstick_request, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %error42 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %error42, align 4
  br label %cleanup

if.end43:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  %dma_length = getelementptr inbounds %struct.memstick_request, ptr %31, i32 0, i32 4, i32 0, i32 4
  %37 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dma_length, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !99
  tail call void @arm_heavy_mb() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i.i = icmp eq i32 %38, 0
  %39 = tail call i32 @llvm.ctlz.i32(i32 %38, i1 true) #7, !range !96
  %sub.i.op.i.op = sub nsw i32 29, %39
  %sub57 = select i1 %tobool.not.i.i, i32 -3, i32 %sub.i.op.i.op
  %40 = tail call i32 @llvm.bswap.i32(i32 %sub57)
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 8
  %add.ptr59 = getelementptr i8, ptr %42, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59, i32 %40) #7, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !100
  tail call void @arm_heavy_mb() #7
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 8
  %add.ptr64 = getelementptr i8, ptr %44, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64, i32 83886080) #7, !srcloc !76
  %45 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %req, align 4
  %data_dir66 = getelementptr inbounds %struct.memstick_request, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %data_dir66 to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load67 = load i8, ptr %data_dir66, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load67)
  %cmp70 = icmp slt i8 %bf.load67, 0
  %spec.select = select i1 %cmp70, i32 33025, i32 257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 8
  %add.ptr78 = getelementptr i8, ptr %49, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78, i32 83886080) #7, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %50 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %req, align 4
  %dma_address = getelementptr inbounds %struct.memstick_request, ptr %51, i32 0, i32 4, i32 0, i32 3
  %52 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dma_address, align 4
  %54 = tail call i32 @llvm.bswap.i32(i32 %53)
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 8
  %add.ptr84 = getelementptr i8, ptr %56, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84, i32 %54) #7, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  tail call void @arm_heavy_mb() #7
  %57 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 8
  %add.ptr89 = getelementptr i8, ptr %59, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr89, i32 %57) #7, !srcloc !76
  br label %if.end102

do.body91:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !104
  tail call void @arm_heavy_mb() #7
  %mode_mask = getelementptr inbounds %struct.tifm_ms, ptr %host, i32 0, i32 4
  %60 = ptrtoint ptr %mode_mask to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %mode_mask, align 4
  %or94 = or i32 %61, 9735
  %62 = tail call i32 @llvm.bswap.i32(i32 %or94)
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %1, align 8
  %add.ptr96 = getelementptr i8, ptr %64, i32 400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr96, i32 %62) #7, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  tail call void @arm_heavy_mb() #7
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %1, align 8
  %add.ptr101 = getelementptr i8, ptr %66, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr101, i32 134217728) #7, !srcloc !76
  br label %if.end102

if.end102:                                        ; preds = %do.body91, %if.end43
  %data_len.1 = phi i32 [ %38, %if.end43 ], [ %data_len.0, %do.body91 ]
  %timer = getelementptr inbounds %struct.tifm_ms, ptr %host, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %67 = load volatile i32, ptr @jiffies, align 128
  %timeout_jiffies = getelementptr inbounds %struct.tifm_ms, ptr %host, i32 0, i32 6
  %68 = ptrtoint ptr %timeout_jiffies to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %timeout_jiffies, align 4
  %add = add i32 %69, %67
  %call103 = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %add) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !106
  tail call void @arm_heavy_mb() #7
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %1, align 8
  %add.ptr108 = getelementptr i8, ptr %71, i32 4
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr108) #7, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !107
  %73 = or i32 %72, 1073741824
  %74 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %1, align 8
  %add.ptr113 = getelementptr i8, ptr %75, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr113, i32 %73) #7, !srcloc !76
  %76 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %req, align 4
  %error115 = getelementptr inbounds %struct.memstick_request, ptr %77, i32 0, i32 3
  %78 = ptrtoint ptr %error115 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %error115, align 4
  %79 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %1, align 8
  %add.ptr119 = getelementptr i8, ptr %80, i32 400
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr119) #7, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !108
  %82 = ptrtoint ptr %use_dma to i32
  call void @__asan_load1_noabort(i32 %82)
  %bf.load125 = load i8, ptr %use_dma, align 4
  %83 = and i8 %bf.load125, 64
  %84 = and i32 %81, -524545
  %85 = or i32 %84, 524288
  %86 = tail call i32 @llvm.bswap.i32(i32 %85)
  %87 = zext i8 %83 to i32
  %88 = shl nuw nsw i32 %87, 10
  %sys_param.1 = or i32 %88, %86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  tail call void @arm_heavy_mb() #7
  %89 = tail call i32 @llvm.bswap.i32(i32 %sys_param.1)
  %90 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %1, align 8
  %add.ptr137 = getelementptr i8, ptr %91, i32 400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr137, i32 %89) #7, !srcloc !76
  %92 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %req, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %93, align 4
  %96 = and i8 %95, 15
  %and140 = zext i8 %96 to i32
  %shl = shl nuw nsw i32 %and140, 12
  %or141 = or i32 %shl, %data_len.1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !110
  tail call void @arm_heavy_mb() #7
  %97 = tail call i32 @llvm.bswap.i32(i32 %or141)
  %98 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %1, align 8
  %add.ptr146 = getelementptr i8, ptr %99, i32 388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr146, i32 %97) #7, !srcloc !76
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tifm_ms_issue_cmd.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tifm_ms_issue_cmd, %cleanup)) #7
          to label %if.then158 [label %cleanup], !srcloc !78

if.then158:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #9
  %dev159 = getelementptr inbounds %struct.tifm_dev, ptr %1, i32 0, i32 6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tifm_ms_issue_cmd.__UNIQUE_ID_ddebug254, ptr noundef %dev159, ptr noundef nonnull @.str.9, i32 noundef %or141, i32 noundef %sys_param.1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then158, %if.end102, %if.then39
  %retval.0 = phi i32 [ %36, %if.then39 ], [ 0, %if.then158 ], [ 0, %if.end102 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tifm_map_sg(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tifm_ms_complete_cmd(ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %driver_data.i.i = getelementptr inbounds %struct.tifm_dev, ptr %1, i32 0, i32 6, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %timer = getelementptr inbounds %struct.tifm_ms, ptr %host, i32 0, i32 1
  %call1 = tail call i32 @del_timer(ptr noundef %timer) #7
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 396
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !73
  %7 = lshr i32 %6, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !111
  %conv = trunc i32 %7 to i8
  %req = getelementptr inbounds %struct.tifm_ms, ptr %host, i32 0, i32 2
  %8 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %req, align 4
  %int_reg = getelementptr inbounds %struct.memstick_request, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %int_reg to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %int_reg, align 2
  %11 = load ptr, ptr %req, align 4
  %int_reg5 = getelementptr inbounds %struct.memstick_request, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %int_reg5 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %int_reg5, align 2
  %and7 = and i8 %13, 1
  %shl = shl i8 %13, 4
  %and11 = and i8 %shl, -32
  %or = or i8 %and11, %and7
  store i8 %or, ptr %int_reg5, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  tail call void @arm_heavy_mb() #7
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  %add.ptr16 = getelementptr i8, ptr %15, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 -65536) #7, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  tail call void @arm_heavy_mb() #7
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %add.ptr21 = getelementptr i8, ptr %17, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 33554432) #7, !srcloc !76
  %use_dma = getelementptr inbounds %struct.tifm_ms, ptr %host, i32 0, i32 7
  %18 = ptrtoint ptr %use_dma to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %use_dma, align 4
  %19 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not = icmp eq i8 %19, 0
  br i1 %tobool.not, label %entry.do.body28_crit_edge, label %if.then

entry.do.body28_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body28

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %req, align 4
  %22 = getelementptr inbounds %struct.memstick_request, ptr %21, i32 0, i32 4
  %data_dir = getelementptr inbounds %struct.memstick_request, ptr %21, i32 0, i32 1
  %23 = ptrtoint ptr %data_dir to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load24 = load i8, ptr %data_dir, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load24)
  %cmp = icmp sgt i8 %bf.load24, -1
  %cond = select i1 %cmp, i32 2, i32 1
  tail call void @tifm_unmap_sg(ptr noundef %1, ptr noundef %22, i32 noundef 1, i32 noundef %cond) #7
  br label %do.body28

do.body28:                                        ; preds = %if.then, %entry.do.body28_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 8
  %add.ptr34 = getelementptr i8, ptr %25, i32 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34) #7, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !115
  %27 = and i32 %26, -1073741825
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 8
  %add.ptr40 = getelementptr i8, ptr %29, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 %27) #7, !srcloc !76
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tifm_ms_complete_cmd.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tifm_ms_complete_cmd, %do.body53)) #7
          to label %if.then48 [label %do.body53], !srcloc !78

if.then48:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #9
  %dev49 = getelementptr inbounds %struct.tifm_dev, ptr %1, i32 0, i32 6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tifm_ms_complete_cmd.__UNIQUE_ID_ddebug255, ptr noundef %dev49, ptr noundef nonnull @.str.13) #7
  br label %do.body53

do.body53:                                        ; preds = %land.rhs.do.body53_crit_edge, %if.then48, %do.body28
  %call55 = tail call i32 @memstick_next_req(ptr noundef %3, ptr noundef %req) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool57.not = icmp eq i32 %call55, 0
  br i1 %tobool57.not, label %land.rhs, label %do.body53.do.end60_crit_edge

do.body53.do.end60_crit_edge:                     ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end60

land.rhs:                                         ; preds = %do.body53
  %call58 = tail call fastcc i32 @tifm_ms_issue_cmd(ptr noundef %host)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.rhs.do.end60_crit_edge, label %land.rhs.do.body53_crit_edge

land.rhs.do.body53_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body53

land.rhs.do.end60_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end60

do.end60:                                         ; preds = %land.rhs.do.end60_crit_edge, %do.body53.do.end60_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tifm_unmap_sg(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tifm_ms_transfer_data(ptr nocapture noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %req = getelementptr inbounds %struct.tifm_ms, ptr %host, i32 0, i32 2
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %req, align 4
  %long_data = getelementptr inbounds %struct.memstick_request, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %long_data to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %long_data, align 1
  %5 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %length2 = getelementptr inbounds %struct.memstick_request, ptr %3, i32 0, i32 4, i32 0, i32 2
  %6 = ptrtoint ptr %length2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length2, align 4
  %block_pos = getelementptr inbounds %struct.tifm_ms, ptr %host, i32 0, i32 5
  %8 = ptrtoint ptr %block_pos to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %block_pos, align 4
  %sub = sub i32 %7, %9
  %offset = getelementptr inbounds %struct.memstick_request, ptr %3, i32 0, i32 4, i32 0, i32 1
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset, align 4
  %add = add i32 %11, %9
  br label %do.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %12 = getelementptr inbounds %struct.memstick_request, ptr %3, i32 0, i32 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 4
  %conv = zext i8 %14 to i32
  %block_pos6 = getelementptr inbounds %struct.tifm_ms, ptr %host, i32 0, i32 5
  %15 = ptrtoint ptr %block_pos6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %block_pos6, align 4
  %sub7 = sub i32 %conv, %16
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then
  %off.0 = phi i32 [ %add, %if.then ], [ 0, %if.else ]
  %length.0 = phi i32 [ %sub, %if.then ], [ %sub7, %if.else ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tifm_ms_transfer_data.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tifm_ms_transfer_data, %do.end)) #7
          to label %if.then12 [label %do.end], !srcloc !78

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev13 = getelementptr inbounds %struct.tifm_dev, ptr %1, i32 0, i32 6
  %block_pos14 = getelementptr inbounds %struct.tifm_ms, ptr %host, i32 0, i32 5
  %17 = ptrtoint ptr %block_pos14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %block_pos14, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tifm_ms_transfer_data.__UNIQUE_ID_ddebug249, ptr noundef %dev13, ptr noundef nonnull @.str.17, i32 noundef %length.0, i32 noundef %18) #7
  br label %do.end

do.end:                                           ; preds = %if.then12, %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length.0)
  %tobool16.not295 = icmp eq i32 %length.0, 0
  br i1 %tobool16.not295, label %do.end.do.body131_crit_edge, label %while.body.lr.ph

do.end.do.body131_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body131

while.body.lr.ph:                                 ; preds = %do.end
  %block_pos53 = getelementptr inbounds %struct.tifm_ms, ptr %host, i32 0, i32 5
  %io_pos.i268 = getelementptr inbounds %struct.tifm_ms, ptr %host, i32 0, i32 9
  %io_word.i269 = getelementptr inbounds %struct.tifm_ms, ptr %host, i32 0, i32 10
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %length.1298 = phi i32 [ %length.0, %while.body.lr.ph ], [ %sub129, %cleanup.while.body_crit_edge ]
  %off.1297 = phi i32 [ %off.0, %while.body.lr.ph ], [ %add130, %cleanup.while.body_crit_edge ]
  %flags.0296 = phi i32 [ 0, %while.body.lr.ph ], [ %flags.1, %cleanup.while.body_crit_edge ]
  %19 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %req, align 4
  %long_data18 = getelementptr inbounds %struct.memstick_request, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %long_data18 to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load19 = load i8, ptr %long_data18, align 1
  %22 = and i8 %bf.load19, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool22.not = icmp eq i8 %22, 0
  %23 = getelementptr inbounds %struct.memstick_request, ptr %20, i32 0, i32 4
  br i1 %tobool22.not, label %if.else51, label %if.then23

if.then23:                                        ; preds = %while.body
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %and.i.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !116

do.body2.i:                                       ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #7, !srcloc !117
  unreachable

sg_page.exit:                                     ; preds = %if.then23
  %and.i = and i32 %25, -4
  %26 = inttoptr i32 %and.i to ptr
  %shr = lshr i32 %off.1297, 12
  %add.ptr = getelementptr %struct.page, ptr %26, i32 %shr
  %and = and i32 %off.1297, 4095
  %sub26 = sub nuw nsw i32 4096, %and
  %27 = tail call i32 @llvm.umin.i32(i32 %sub26, i32 %length.1298)
  %28 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !118
  %and.i265 = and i32 %28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i265)
  %tobool44.not = icmp eq i32 %and.i265, 0
  br i1 %tobool44.not, label %if.then45, label %sg_page.exit.do.end48_crit_edge

sg_page.exit.do.end48_crit_edge:                  ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end48

if.then45:                                        ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_off() #7
  br label %do.end48

do.end48:                                         ; preds = %if.then45, %sg_page.exit.do.end48_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %29 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %29, 512
  %30 = tail call i32 @llvm.read_register.i32(metadata !63) #7
  %and.i.i.i.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %33, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !119
  %34 = tail call i32 @llvm.read_register.i32(metadata !63) #7
  %and.i.i.i1.i.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 213
  %38 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %39, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !120
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr, i32 noundef %or.i) #7
  %add.ptr50 = getelementptr i8, ptr %call.i.i, i32 %and
  br label %if.end60

if.else51:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %data = getelementptr inbounds %struct.anon.72, ptr %23, i32 0, i32 1
  %40 = ptrtoint ptr %block_pos53 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %block_pos53, align 4
  %add.ptr54 = getelementptr i8, ptr %data, i32 %41
  %42 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %23, align 4
  %conv57 = zext i8 %43 to i32
  %sub59 = sub i32 %conv57, %41
  br label %if.end60

if.end60:                                         ; preds = %if.else51, %do.end48
  %p_off.0 = phi i32 [ %and, %do.end48 ], [ -1, %if.else51 ]
  %flags.1 = phi i32 [ %28, %do.end48 ], [ %flags.0296, %if.else51 ]
  %buf.0 = phi ptr [ %add.ptr50, %do.end48 ], [ %add.ptr54, %if.else51 ]
  %p_cnt.0 = phi i32 [ %27, %do.end48 ], [ %sub59, %if.else51 ]
  %44 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %req, align 4
  %data_dir = getelementptr inbounds %struct.memstick_request, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %data_dir to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load62 = load i8, ptr %data_dir, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load62)
  %cmp65 = icmp slt i8 %bf.load62, 0
  %47 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %host, align 4
  %49 = ptrtoint ptr %io_pos.i268 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %io_pos.i268, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i = icmp eq i8 %50, 0
  br i1 %cmp65, label %cond.true67, label %cond.false69

cond.true67:                                      ; preds = %if.end60
  br i1 %tobool.not.i, label %cond.true67.if.else.i_crit_edge, label %while.cond.preheader.i

cond.true67.if.else.i_crit_edge:                  ; preds = %cond.true67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

while.cond.preheader.i:                           ; preds = %cond.true67
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %50)
  %cmp151.i = icmp ugt i8 %50, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %p_cnt.0)
  %tobool3.not152.i = icmp eq i32 %p_cnt.0, 0
  %or.cond150153.i = or i1 %tobool3.not152.i, %cmp151.i
  br i1 %or.cond150153.i, label %while.cond.preheader.i.if.end.i_crit_edge, label %while.body.i

while.cond.preheader.i.if.end.i_crit_edge:        ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

while.body.i:                                     ; preds = %while.cond.preheader.i
  %51 = zext i8 %50 to i32
  %52 = ptrtoint ptr %buf.0 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %buf.0, align 1
  %conv4.i = zext i8 %53 to i32
  %mul.i = shl nuw nsw i32 %51, 3
  %shl.i = shl nuw i32 %conv4.i, %mul.i
  %54 = ptrtoint ptr %io_word.i269 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %io_word.i269, align 4
  %or.i266 = or i32 %shl.i, %55
  store i32 %or.i266, ptr %io_word.i269, align 4
  %indvars.iv.next.i = add nuw nsw i32 %51, 1
  %56 = trunc i32 %indvars.iv.next.i to i8
  %57 = ptrtoint ptr %io_pos.i268 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %io_pos.i268, align 2
  %dec.i = add i32 %p_cnt.0, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %50)
  %cmp.i = icmp ugt i8 %50, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool3.not.i = icmp eq i32 %dec.i, 0
  %or.cond150.i = select i1 %cmp.i, i1 true, i1 %tobool3.not.i
  br i1 %or.cond150.i, label %while.body.i.if.end.i.loopexit_crit_edge, label %while.body.i.1

while.body.i.if.end.i.loopexit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.loopexit

while.body.i.1:                                   ; preds = %while.body.i
  %arrayidx.i.1 = getelementptr i8, ptr %buf.0, i32 1
  %58 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx.i.1, align 1
  %conv4.i.1 = zext i8 %59 to i32
  %mul.i.1 = shl nuw nsw i32 %indvars.iv.next.i, 3
  %shl.i.1 = shl nuw i32 %conv4.i.1, %mul.i.1
  %60 = ptrtoint ptr %io_word.i269 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %io_word.i269, align 4
  %or.i266.1 = or i32 %shl.i.1, %61
  store i32 %or.i266.1, ptr %io_word.i269, align 4
  %indvars.iv.next.i.1 = add nuw nsw i32 %51, 2
  %62 = trunc i32 %indvars.iv.next.i.1 to i8
  %63 = ptrtoint ptr %io_pos.i268 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %io_pos.i268, align 2
  %dec.i.1 = add i32 %p_cnt.0, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %50)
  %cmp.i.1 = icmp ugt i8 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.1)
  %tobool3.not.i.1 = icmp eq i32 %dec.i.1, 0
  %or.cond150.i.1 = select i1 %cmp.i.1, i1 true, i1 %tobool3.not.i.1
  br i1 %or.cond150.i.1, label %while.body.i.1.if.end.i.loopexit_crit_edge, label %while.body.i.2

while.body.i.1.if.end.i.loopexit_crit_edge:       ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.loopexit

while.body.i.2:                                   ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.2 = getelementptr i8, ptr %buf.0, i32 2
  %64 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx.i.2, align 1
  %conv4.i.2 = zext i8 %65 to i32
  %mul.i.2 = shl nuw nsw i32 %indvars.iv.next.i.1, 3
  %shl.i.2 = shl nuw i32 %conv4.i.2, %mul.i.2
  %66 = ptrtoint ptr %io_word.i269 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %io_word.i269, align 4
  %or.i266.2 = or i32 %shl.i.2, %67
  store i32 %or.i266.2, ptr %io_word.i269, align 4
  %indvars.iv.next.i.2 = add nuw nsw i32 %51, 3
  %68 = trunc i32 %indvars.iv.next.i.2 to i8
  %69 = ptrtoint ptr %io_pos.i268 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %io_pos.i268, align 2
  %dec.i.2 = add i32 %p_cnt.0, -3
  br label %if.end.i.loopexit

if.end.i.loopexit:                                ; preds = %while.body.i.2, %while.body.i.1.if.end.i.loopexit_crit_edge, %while.body.i.if.end.i.loopexit_crit_edge
  %inc.i.lcssa = phi i32 [ 1, %while.body.i.if.end.i.loopexit_crit_edge ], [ 2, %while.body.i.1.if.end.i.loopexit_crit_edge ], [ 3, %while.body.i.2 ]
  %indvars.iv.next.i.lcssa = phi i32 [ %indvars.iv.next.i, %while.body.i.if.end.i.loopexit_crit_edge ], [ %indvars.iv.next.i.1, %while.body.i.1.if.end.i.loopexit_crit_edge ], [ %indvars.iv.next.i.2, %while.body.i.2 ]
  %dec.i.lcssa = phi i32 [ %dec.i, %while.body.i.if.end.i.loopexit_crit_edge ], [ %dec.i.1, %while.body.i.1.if.end.i.loopexit_crit_edge ], [ %dec.i.2, %while.body.i.2 ]
  %70 = trunc i32 %indvars.iv.next.i.lcssa to i8
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i.loopexit, %while.cond.preheader.i.if.end.i_crit_edge
  %.pr.i = phi i8 [ %50, %while.cond.preheader.i.if.end.i_crit_edge ], [ %70, %if.end.i.loopexit ]
  %off.0.lcssa.i = phi i32 [ 0, %while.cond.preheader.i.if.end.i_crit_edge ], [ %inc.i.lcssa, %if.end.i.loopexit ]
  %length.addr.0.lcssa.i = phi i32 [ %p_cnt.0, %while.cond.preheader.i.if.end.i_crit_edge ], [ %dec.i.lcssa, %if.end.i.loopexit ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %.pr.i)
  %cmp11.i = icmp eq i8 %.pr.i, 4
  br i1 %cmp11.i, label %land.lhs.true.i, label %if.end.i.if.else.i_crit_edge

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %71 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %48, align 8
  %add.ptr.i = getelementptr i8, ptr %72, i32 396
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  %74 = and i32 %73, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool14.not.i = icmp eq i32 %74, 0
  br i1 %tobool14.not.i, label %do.body.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

do.body.i:                                        ; preds = %land.lhs.true.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  tail call void @arm_heavy_mb() #7
  %75 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %48, align 8
  %add.ptr19.i = getelementptr i8, ptr %76, i32 400
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.i) #7, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  %78 = or i32 %77, 65536
  %79 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %48, align 8
  %add.ptr25.i = getelementptr i8, ptr %80, i32 400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 %78) #7, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  tail call void @arm_heavy_mb() #7
  %81 = ptrtoint ptr %io_word.i269 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %io_word.i269, align 4
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #7
  %84 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %48, align 8
  %add.ptr31.i = getelementptr i8, ptr %85, i32 392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31.i, i32 %83) #7, !srcloc !76
  %86 = ptrtoint ptr %io_pos.i268 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %io_pos.i268, align 2
  %87 = ptrtoint ptr %io_word.i269 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %io_word.i269, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length.addr.0.lcssa.i)
  %tobool39.not.old.i = icmp eq i32 %length.addr.0.lcssa.i, 0
  br i1 %tobool39.not.old.i, label %do.body.i.cond.end71_crit_edge, label %do.body.i.while.cond42.preheader.i_crit_edge

do.body.i.while.cond42.preheader.i_crit_edge:     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond42.preheader.i

do.body.i.cond.end71_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end71

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end.i.if.else.i_crit_edge, %cond.true67.if.else.i_crit_edge
  %length.addr.1149.i = phi i32 [ %length.addr.0.lcssa.i, %land.lhs.true.i.if.else.i_crit_edge ], [ %length.addr.0.lcssa.i, %if.end.i.if.else.i_crit_edge ], [ %p_cnt.0, %cond.true67.if.else.i_crit_edge ]
  %off.1148.i = phi i32 [ %off.0.lcssa.i, %land.lhs.true.i.if.else.i_crit_edge ], [ %off.0.lcssa.i, %if.end.i.if.else.i_crit_edge ], [ 0, %cond.true67.if.else.i_crit_edge ]
  %88 = ptrtoint ptr %io_pos.i268 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %io_pos.i268, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool35.not.i = icmp ne i8 %89, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length.addr.1149.i)
  %tobool39.not.i = icmp eq i32 %length.addr.1149.i, 0
  %or.cond144.i = select i1 %tobool35.not.i, i1 true, i1 %tobool39.not.i
  br i1 %or.cond144.i, label %if.else.i.cond.end71_crit_edge, label %if.else.i.while.cond42.preheader.i_crit_edge

if.else.i.while.cond42.preheader.i_crit_edge:     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond42.preheader.i

if.else.i.cond.end71_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end71

while.cond42.preheader.i:                         ; preds = %if.else.i.while.cond42.preheader.i_crit_edge, %do.body.i.while.cond42.preheader.i_crit_edge
  %off.2.ph.i = phi i32 [ %off.1148.i, %if.else.i.while.cond42.preheader.i_crit_edge ], [ %off.0.lcssa.i, %do.body.i.while.cond42.preheader.i_crit_edge ]
  %length.addr.2.ph.i = phi i32 [ %length.addr.1149.i, %if.else.i.while.cond42.preheader.i_crit_edge ], [ %length.addr.0.lcssa.i, %do.body.i.while.cond42.preheader.i_crit_edge ]
  %90 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %48, align 8
  %add.ptr46157.i = getelementptr i8, ptr %91, i32 396
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46157.i) #7, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  %93 = and i32 %92, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool51.not158.i = icmp ne i32 %93, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %length.addr.2.ph.i)
  %cmp53159.i = icmp ult i32 %length.addr.2.ph.i, 4
  %or.cond160.i = select i1 %tobool51.not158.i, i1 true, i1 %cmp53159.i
  br i1 %or.cond160.i, label %while.cond42.preheader.i.while.end73.i_crit_edge, label %while.cond42.preheader.i.do.body57.i_crit_edge

while.cond42.preheader.i.do.body57.i_crit_edge:   ; preds = %while.cond42.preheader.i
  br label %do.body57.i

while.cond42.preheader.i.while.end73.i_crit_edge: ; preds = %while.cond42.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end73.i

do.body57.i:                                      ; preds = %do.body57.i.do.body57.i_crit_edge, %while.cond42.preheader.i.do.body57.i_crit_edge
  %length.addr.2162.i = phi i32 [ %sub.i, %do.body57.i.do.body57.i_crit_edge ], [ %length.addr.2.ph.i, %while.cond42.preheader.i.do.body57.i_crit_edge ]
  %off.2161.i = phi i32 [ %add.i, %do.body57.i.do.body57.i_crit_edge ], [ %off.2.ph.i, %while.cond42.preheader.i.do.body57.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !126
  tail call void @arm_heavy_mb() #7
  %94 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %48, align 8
  %add.ptr63.i = getelementptr i8, ptr %95, i32 400
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr63.i) #7, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  %97 = or i32 %96, 65536
  %98 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %48, align 8
  %add.ptr69.i = getelementptr i8, ptr %99, i32 400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69.i, i32 %97) #7, !srcloc !76
  %add.ptr70.i = getelementptr i8, ptr %buf.0, i32 %off.2161.i
  %100 = ptrtoint ptr %add.ptr70.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %add.ptr70.i, align 4
  %102 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %48, align 8
  %add.ptr72.i = getelementptr i8, ptr %103, i32 392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr72.i, i32 %101) #7, !srcloc !76
  %sub.i = add i32 %length.addr.2162.i, -4
  %add.i = add i32 %off.2161.i, 4
  %104 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %48, align 8
  %add.ptr46.i = getelementptr i8, ptr %105, i32 396
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46.i) #7, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  %107 = and i32 %106, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool51.not.i = icmp ne i32 %107, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i)
  %cmp53.i = icmp ult i32 %sub.i, 4
  %or.cond.i = select i1 %tobool51.not.i, i1 true, i1 %cmp53.i
  br i1 %or.cond.i, label %do.body57.i.while.end73.i_crit_edge, label %do.body57.i.do.body57.i_crit_edge

do.body57.i.do.body57.i_crit_edge:                ; preds = %do.body57.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body57.i

do.body57.i.while.end73.i_crit_edge:              ; preds = %do.body57.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end73.i

while.end73.i:                                    ; preds = %do.body57.i.while.end73.i_crit_edge, %while.cond42.preheader.i.while.end73.i_crit_edge
  %off.2.lcssa.i = phi i32 [ %off.2.ph.i, %while.cond42.preheader.i.while.end73.i_crit_edge ], [ %add.i, %do.body57.i.while.end73.i_crit_edge ]
  %length.addr.2.lcssa.i = phi i32 [ %length.addr.2.ph.i, %while.cond42.preheader.i.while.end73.i_crit_edge ], [ %sub.i, %do.body57.i.while.end73.i_crit_edge ]
  %108 = zext i32 %length.addr.2.lcssa.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %108, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %length.addr.2.lcssa.i, label %while.end73.i.sw.epilog.i_crit_edge [
    i32 3, label %sw.bb.i
    i32 2, label %while.end73.i.sw.bb82.i_crit_edge
    i32 1, label %while.end73.i.sw.bb91.i_crit_edge
  ]

while.end73.i.sw.bb91.i_crit_edge:                ; preds = %while.end73.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb91.i

while.end73.i.sw.bb82.i_crit_edge:                ; preds = %while.end73.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb82.i

while.end73.i.sw.epilog.i_crit_edge:              ; preds = %while.end73.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %while.end73.i
  call void @__sanitizer_cov_trace_pc() #9
  %add74.i = add i32 %off.2.lcssa.i, 2
  %arrayidx75.i = getelementptr i8, ptr %buf.0, i32 %add74.i
  %109 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx75.i, align 1
  %conv76.i = zext i8 %110 to i32
  %shl77.i = shl nuw nsw i32 %conv76.i, 16
  %111 = ptrtoint ptr %io_word.i269 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %io_word.i269, align 4
  %or79.i = or i32 %shl77.i, %112
  store i32 %or79.i, ptr %io_word.i269, align 4
  %113 = ptrtoint ptr %io_pos.i268 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %io_pos.i268, align 2
  %inc81.i = add i8 %114, 1
  store i8 %inc81.i, ptr %io_pos.i268, align 2
  br label %sw.bb82.i

sw.bb82.i:                                        ; preds = %sw.bb.i, %while.end73.i.sw.bb82.i_crit_edge
  %add83.i = add i32 %off.2.lcssa.i, 1
  %arrayidx84.i = getelementptr i8, ptr %buf.0, i32 %add83.i
  %115 = ptrtoint ptr %arrayidx84.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx84.i, align 1
  %conv85.i = zext i8 %116 to i32
  %shl86.i = shl nuw nsw i32 %conv85.i, 8
  %117 = ptrtoint ptr %io_word.i269 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %io_word.i269, align 4
  %or88.i = or i32 %shl86.i, %118
  store i32 %or88.i, ptr %io_word.i269, align 4
  %119 = ptrtoint ptr %io_pos.i268 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %io_pos.i268, align 2
  %inc90.i = add i8 %120, 1
  store i8 %inc90.i, ptr %io_pos.i268, align 2
  br label %sw.bb91.i

sw.bb91.i:                                        ; preds = %sw.bb82.i, %while.end73.i.sw.bb91.i_crit_edge
  %arrayidx92.i = getelementptr i8, ptr %buf.0, i32 %off.2.lcssa.i
  %121 = ptrtoint ptr %arrayidx92.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx92.i, align 1
  %conv93.i = zext i8 %122 to i32
  %123 = ptrtoint ptr %io_word.i269 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %io_word.i269, align 4
  %or95.i = or i32 %124, %conv93.i
  store i32 %or95.i, ptr %io_word.i269, align 4
  %125 = ptrtoint ptr %io_pos.i268 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %io_pos.i268, align 2
  %inc97.i = add i8 %126, 1
  store i8 %inc97.i, ptr %io_pos.i268, align 2
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb91.i, %while.end73.i.sw.epilog.i_crit_edge
  %127 = ptrtoint ptr %io_pos.i268 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %io_pos.i268, align 2
  %conv99.i = zext i8 %128 to i32
  %add100.i = add i32 %off.2.lcssa.i, %conv99.i
  br label %cond.end71

cond.false69:                                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %p_cnt.0)
  %tobool1.not86.i = icmp eq i32 %p_cnt.0, 0
  %or.cond87.i = or i1 %tobool1.not86.i, %tobool.not.i
  br i1 %or.cond87.i, label %cond.false69.while.end.i_crit_edge, label %cond.false69.while.body.i276_crit_edge

cond.false69.while.body.i276_crit_edge:           ; preds = %cond.false69
  br label %while.body.i276

cond.false69.while.end.i_crit_edge:               ; preds = %cond.false69
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.body.i276:                                  ; preds = %while.body.i276.while.body.i276_crit_edge, %cond.false69.while.body.i276_crit_edge
  %length.addr.089.i = phi i32 [ %dec.i273, %while.body.i276.while.body.i276_crit_edge ], [ %p_cnt.0, %cond.false69.while.body.i276_crit_edge ]
  %off.088.i = phi i32 [ %inc.i271, %while.body.i276.while.body.i276_crit_edge ], [ 0, %cond.false69.while.body.i276_crit_edge ]
  %129 = ptrtoint ptr %io_word.i269 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %io_word.i269, align 4
  %conv2.i = trunc i32 %130 to i8
  %inc.i271 = add nuw i32 %off.088.i, 1
  %arrayidx.i272 = getelementptr i8, ptr %buf.0, i32 %off.088.i
  %131 = ptrtoint ptr %arrayidx.i272 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %conv2.i, ptr %arrayidx.i272, align 1
  %132 = load i32, ptr %io_word.i269, align 4
  %shr.i = lshr i32 %132, 8
  store i32 %shr.i, ptr %io_word.i269, align 4
  %dec.i273 = add i32 %length.addr.089.i, -1
  %133 = ptrtoint ptr %io_pos.i268 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %io_pos.i268, align 2
  %dec5.i = add i8 %134, -1
  store i8 %dec5.i, ptr %io_pos.i268, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec5.i)
  %tobool.not.i274 = icmp eq i8 %dec5.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i273)
  %tobool1.not.i = icmp eq i32 %dec.i273, 0
  %or.cond.i275 = select i1 %tobool.not.i274, i1 true, i1 %tobool1.not.i
  br i1 %or.cond.i275, label %while.body.i276.while.end.i_crit_edge, label %while.body.i276.while.body.i276_crit_edge

while.body.i276.while.body.i276_crit_edge:        ; preds = %while.body.i276
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i276

while.body.i276.while.end.i_crit_edge:            ; preds = %while.body.i276
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i276.while.end.i_crit_edge, %cond.false69.while.end.i_crit_edge
  %off.0.lcssa.i277 = phi i32 [ 0, %cond.false69.while.end.i_crit_edge ], [ %inc.i271, %while.body.i276.while.end.i_crit_edge ]
  %length.addr.0.lcssa.i278 = phi i32 [ %p_cnt.0, %cond.false69.while.end.i_crit_edge ], [ %dec.i273, %while.body.i276.while.end.i_crit_edge ]
  %tobool1.not.lcssa.i = phi i1 [ %tobool1.not86.i, %cond.false69.while.end.i_crit_edge ], [ %tobool1.not.i, %while.body.i276.while.end.i_crit_edge ]
  br i1 %tobool1.not.lcssa.i, label %while.end.i.cond.end71_crit_edge, label %while.cond7.preheader.i

while.end.i.cond.end71_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end71

while.cond7.preheader.i:                          ; preds = %while.end.i
  %135 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %48, align 8
  %add.ptr93.i = getelementptr i8, ptr %136, i32 396
  %137 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr93.i) #7, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  %138 = and i32 %137, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool10.not94.i = icmp ne i32 %138, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %length.addr.0.lcssa.i278)
  %cmp95.i = icmp ult i32 %length.addr.0.lcssa.i278, 4
  %or.cond8496.i = select i1 %tobool10.not94.i, i1 true, i1 %cmp95.i
  br i1 %or.cond8496.i, label %while.cond7.preheader.i.while.end19.i_crit_edge, label %while.cond7.preheader.i.if.end14.i_crit_edge

while.cond7.preheader.i.if.end14.i_crit_edge:     ; preds = %while.cond7.preheader.i
  br label %if.end14.i

while.cond7.preheader.i.while.end19.i_crit_edge:  ; preds = %while.cond7.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end19.i

if.end14.i:                                       ; preds = %if.end14.i.if.end14.i_crit_edge, %while.cond7.preheader.i.if.end14.i_crit_edge
  %length.addr.198.i = phi i32 [ %sub.i279, %if.end14.i.if.end14.i_crit_edge ], [ %length.addr.0.lcssa.i278, %while.cond7.preheader.i.if.end14.i_crit_edge ]
  %off.197.i = phi i32 [ %add.i280, %if.end14.i.if.end14.i_crit_edge ], [ %off.0.lcssa.i277, %while.cond7.preheader.i.if.end14.i_crit_edge ]
  %139 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %48, align 8
  %add.ptr16.i = getelementptr i8, ptr %140, i32 392
  %141 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i) #7, !srcloc !73
  %add.ptr18.i = getelementptr i8, ptr %buf.0, i32 %off.197.i
  %142 = ptrtoint ptr %add.ptr18.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %141, ptr %add.ptr18.i, align 4
  %sub.i279 = add i32 %length.addr.198.i, -4
  %add.i280 = add i32 %off.197.i, 4
  %143 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %48, align 8
  %add.ptr.i281 = getelementptr i8, ptr %144, i32 396
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i281) #7, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  %146 = and i32 %145, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %tobool10.not.i = icmp ne i32 %146, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i279)
  %cmp.i282 = icmp ult i32 %sub.i279, 4
  %or.cond84.i = select i1 %tobool10.not.i, i1 true, i1 %cmp.i282
  br i1 %or.cond84.i, label %if.end14.i.while.end19.i_crit_edge, label %if.end14.i.if.end14.i_crit_edge

if.end14.i.if.end14.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i

if.end14.i.while.end19.i_crit_edge:               ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end19.i

while.end19.i:                                    ; preds = %if.end14.i.while.end19.i_crit_edge, %while.cond7.preheader.i.while.end19.i_crit_edge
  %off.1.lcssa.i = phi i32 [ %off.0.lcssa.i277, %while.cond7.preheader.i.while.end19.i_crit_edge ], [ %add.i280, %if.end14.i.while.end19.i_crit_edge ]
  %length.addr.1.lcssa.i = phi i32 [ %length.addr.0.lcssa.i278, %while.cond7.preheader.i.while.end19.i_crit_edge ], [ %sub.i279, %if.end14.i.while.end19.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length.addr.1.lcssa.i)
  %tobool20.not.i = icmp eq i32 %length.addr.1.lcssa.i, 0
  br i1 %tobool20.not.i, label %while.end19.i.cond.end71_crit_edge, label %land.lhs.true.i283

while.end19.i.cond.end71_crit_edge:               ; preds = %while.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end71

land.lhs.true.i283:                               ; preds = %while.end19.i
  %147 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %48, align 8
  %add.ptr24.i = getelementptr i8, ptr %148, i32 396
  %149 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.i) #7, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  %150 = and i32 %149, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %tobool29.not.i = icmp eq i32 %150, 0
  br i1 %tobool29.not.i, label %if.then30.i, label %land.lhs.true.i283.cond.end71_crit_edge

land.lhs.true.i283.cond.end71_crit_edge:          ; preds = %land.lhs.true.i283
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end71

if.then30.i:                                      ; preds = %land.lhs.true.i283
  %151 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %48, align 8
  %add.ptr34.i = getelementptr i8, ptr %152, i32 392
  %153 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i) #7, !srcloc !73
  %154 = tail call i32 @llvm.bswap.i32(i32 %153) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !130
  %155 = ptrtoint ptr %io_word.i269 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %io_word.i269, align 4
  %156 = ptrtoint ptr %io_pos.i268 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 4, ptr %io_pos.i268, align 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then30.i
  %length.addr.2102.i = phi i32 [ %length.addr.1.lcssa.i, %if.then30.i ], [ %dec49.i, %for.inc.i.for.body.i_crit_edge ]
  %off.2101.i = phi i32 [ %off.1.lcssa.i, %if.then30.i ], [ %inc45.i, %for.inc.i.for.body.i_crit_edge ]
  %157 = ptrtoint ptr %io_word.i269 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %io_word.i269, align 4
  %conv44.i = trunc i32 %158 to i8
  %inc45.i = add i32 %off.2101.i, 1
  %arrayidx46.i = getelementptr i8, ptr %buf.0, i32 %off.2101.i
  %159 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %conv44.i, ptr %arrayidx46.i, align 1
  %160 = load i32, ptr %io_word.i269, align 4
  %shr48.i = lshr i32 %160, 8
  store i32 %shr48.i, ptr %io_word.i269, align 4
  %dec49.i = add i32 %length.addr.2102.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec49.i)
  %tobool50.not.i = icmp eq i32 %dec49.i, 0
  br i1 %tobool50.not.i, label %for.body.i.cond.end71_crit_edge, label %for.inc.i

for.body.i.cond.end71_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end71

for.inc.i:                                        ; preds = %for.body.i
  %161 = ptrtoint ptr %io_pos.i268 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %io_pos.i268, align 2
  %dec54.i = add i8 %162, -1
  store i8 %dec54.i, ptr %io_pos.i268, align 2
  %tobool41.not.i = icmp eq i8 %dec54.i, 0
  br i1 %tobool41.not.i, label %for.inc.i.cond.end71_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.cond.end71_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end71

cond.end71:                                       ; preds = %for.inc.i.cond.end71_crit_edge, %for.body.i.cond.end71_crit_edge, %land.lhs.true.i283.cond.end71_crit_edge, %while.end19.i.cond.end71_crit_edge, %while.end.i.cond.end71_crit_edge, %sw.epilog.i, %if.else.i.cond.end71_crit_edge, %do.body.i.cond.end71_crit_edge
  %cond72 = phi i32 [ %add100.i, %sw.epilog.i ], [ %off.1148.i, %if.else.i.cond.end71_crit_edge ], [ %off.0.lcssa.i, %do.body.i.cond.end71_crit_edge ], [ %off.0.lcssa.i277, %while.end.i.cond.end71_crit_edge ], [ %off.1.lcssa.i, %land.lhs.true.i283.cond.end71_crit_edge ], [ %off.1.lcssa.i, %while.end19.i.cond.end71_crit_edge ], [ %inc45.i, %for.body.i.cond.end71_crit_edge ], [ %inc45.i, %for.inc.i.cond.end71_crit_edge ]
  %163 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %req, align 4
  %long_data74 = getelementptr inbounds %struct.memstick_request, ptr %164, i32 0, i32 1
  %165 = ptrtoint ptr %long_data74 to i32
  call void @__asan_load1_noabort(i32 %165)
  %bf.load75 = load i8, ptr %long_data74, align 1
  %166 = and i8 %bf.load75, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %166)
  %tobool78.not = icmp eq i8 %166, 0
  br i1 %tobool78.not, label %cond.end71.if.end123_crit_edge, label %do.end83

cond.end71.if.end123_crit_edge:                   ; preds = %cond.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end123

do.end83:                                         ; preds = %cond.end71
  %idx.neg = sub nsw i32 0, %p_off.0
  %add.ptr84 = getelementptr i8, ptr %buf.0, i32 %idx.neg
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr84) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !131
  %167 = tail call i32 @llvm.read_register.i32(metadata !63) #7
  %and.i.i.i1.i = and i32 %167, -16384
  %168 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %168, i32 0, i32 2
  %169 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %170, i32 0, i32 213
  %171 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %172, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !132
  %173 = tail call i32 @llvm.read_register.i32(metadata !63) #7
  %and.i.i.i.i = and i32 %173, -16384
  %174 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %174, i32 0, i32 1
  %175 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %176, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  %and.i285 = and i32 %flags.1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i285)
  %tobool95.not = icmp eq i32 %and.i285, 0
  br i1 %tobool95.not, label %if.then96, label %do.end83.do.body98_crit_edge

do.end83.do.body98_crit_edge:                     ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body98

if.then96:                                        ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_on() #7
  br label %do.body98

do.body98:                                        ; preds = %if.then96, %do.end83.do.body98_crit_edge
  %177 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !133
  %and.i.i286 = and i32 %177, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i286)
  %tobool106.not = icmp eq i32 %and.i.i286, 0
  br i1 %tobool106.not, label %if.then115, label %do.body98.do.end118_crit_edge, !prof !134

do.body98.do.end118_crit_edge:                    ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end118

if.then115:                                       ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %do.end118

do.end118:                                        ; preds = %if.then115, %do.body98.do.end118_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %flags.1) #7, !srcloc !135
  br label %if.end123

if.end123:                                        ; preds = %do.end118, %cond.end71.if.end123_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond72)
  %tobool124.not = icmp eq i32 %cond72, 0
  br i1 %tobool124.not, label %if.end123.do.body131_crit_edge, label %cleanup

if.end123.do.body131_crit_edge:                   ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body131

cleanup:                                          ; preds = %if.end123
  %178 = ptrtoint ptr %block_pos53 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %block_pos53, align 4
  %add128 = add i32 %179, %cond72
  store i32 %add128, ptr %block_pos53, align 4
  %sub129 = sub i32 %length.1298, %cond72
  %add130 = add i32 %cond72, %off.1297
  %tobool16.not = icmp eq i32 %sub129, 0
  br i1 %tobool16.not, label %cleanup.do.body131_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

cleanup.do.body131_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body131

do.body131:                                       ; preds = %cleanup.do.body131_crit_edge, %if.end123.do.body131_crit_edge, %do.end.do.body131_crit_edge
  %length.1.lcssa = phi i32 [ 0, %do.end.do.body131_crit_edge ], [ %length.1298, %if.end123.do.body131_crit_edge ], [ 0, %cleanup.do.body131_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tifm_ms_transfer_data.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tifm_ms_transfer_data, %do.end149)) #7
          to label %if.then145 [label %do.end149], !srcloc !78

if.then145:                                       ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #9
  %dev146 = getelementptr inbounds %struct.tifm_dev, ptr %1, i32 0, i32 6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tifm_ms_transfer_data.__UNIQUE_ID_ddebug253, ptr noundef %dev146, ptr noundef nonnull @.str.18, i32 noundef %length.1.lcssa) #7
  br label %do.end149

do.end149:                                        ; preds = %if.then145, %do.body131
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length.1.lcssa)
  %tobool150.not = icmp eq i32 %length.1.lcssa, 0
  br i1 %tobool150.not, label %land.lhs.true, label %do.end149.if.else194_crit_edge

do.end149.if.else194_crit_edge:                   ; preds = %do.end149
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else194

land.lhs.true:                                    ; preds = %do.end149
  %180 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %req, align 4
  %data_dir152 = getelementptr inbounds %struct.memstick_request, ptr %181, i32 0, i32 1
  %182 = ptrtoint ptr %data_dir152 to i32
  call void @__asan_load1_noabort(i32 %182)
  %bf.load153 = load i8, ptr %data_dir152, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load153)
  %cmp156 = icmp slt i8 %bf.load153, 0
  br i1 %cmp156, label %if.then158, label %land.lhs.true.if.else194_crit_edge

land.lhs.true.if.else194_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else194

if.then158:                                       ; preds = %land.lhs.true
  %io_pos = getelementptr inbounds %struct.tifm_ms, ptr %host, i32 0, i32 9
  %183 = ptrtoint ptr %io_pos to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %io_pos, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %184)
  %tobool159.not = icmp eq i8 %184, 0
  br i1 %tobool159.not, label %if.then158.do.body176_crit_edge, label %do.body161

if.then158.do.body176_crit_edge:                  ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body176

do.body161:                                       ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  tail call void @arm_heavy_mb() #7
  %185 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %1, align 8
  %add.ptr164 = getelementptr i8, ptr %186, i32 400
  %187 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr164) #7, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !137
  %188 = or i32 %187, 65536
  %189 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %1, align 8
  %add.ptr169 = getelementptr i8, ptr %190, i32 400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr169, i32 %188) #7, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  tail call void @arm_heavy_mb() #7
  %io_word = getelementptr inbounds %struct.tifm_ms, ptr %host, i32 0, i32 10
  %191 = ptrtoint ptr %io_word to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %io_word, align 4
  %193 = tail call i32 @llvm.bswap.i32(i32 %192)
  %194 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %1, align 8
  %add.ptr174 = getelementptr i8, ptr %195, i32 392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr174, i32 %193) #7, !srcloc !76
  br label %do.body176

do.body176:                                       ; preds = %do.body161, %if.then158.do.body176_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !139
  tail call void @arm_heavy_mb() #7
  %196 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %1, align 8
  %add.ptr182 = getelementptr i8, ptr %197, i32 400
  %198 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr182) #7, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !140
  %199 = or i32 %198, 65536
  %200 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %1, align 8
  %add.ptr188 = getelementptr i8, ptr %201, i32 400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr188, i32 %199) #7, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !141
  tail call void @arm_heavy_mb() #7
  %202 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %1, align 8
  %add.ptr193 = getelementptr i8, ptr %203, i32 392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr193, i32 0) #7, !srcloc !76
  br label %if.end202

if.else194:                                       ; preds = %land.lhs.true.if.else194_crit_edge, %do.end149.if.else194_crit_edge
  %204 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %1, align 8
  %add.ptr198 = getelementptr i8, ptr %205, i32 392
  %206 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr198) #7, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !142
  br label %if.end202

if.end202:                                        ; preds = %if.else194, %do.body176
  ret i32 %length.1.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @tifm_ms_dummy_submit(ptr nocapture noundef %msh) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @memstick_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @memstick_suspend_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @memstick_resume_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tifm_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !25, !26, !27, !28, !29, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62}
!llvm.named.register.sp = !{!63}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @__param_no_dma, !1, !"__param_no_dma", i1 false, i1 false}
!1 = !{!"../drivers/memstick/host/tifm_ms.c", i32 22, i32 1}
!2 = !{ptr @__UNIQUE_ID_no_dmatype248, !1, !"__UNIQUE_ID_no_dmatype248", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author259, !4, !"__UNIQUE_ID_author259", i1 false, i1 false}
!4 = !{!"../drivers/memstick/host/tifm_ms.c", i32 677, i32 1}
!5 = !{ptr @__UNIQUE_ID_description260, !6, !"__UNIQUE_ID_description260", i1 false, i1 false}
!6 = !{!"../drivers/memstick/host/tifm_ms.c", i32 678, i32 1}
!7 = !{ptr @__UNIQUE_ID_file261, !8, !"__UNIQUE_ID_file261", i1 false, i1 false}
!8 = !{!"../drivers/memstick/host/tifm_ms.c", i32 679, i32 1}
!9 = !{ptr @__UNIQUE_ID_license262, !8, !"__UNIQUE_ID_license262", i1 false, i1 false}
!10 = !{ptr @__initcall__kmod_tifm_ms__263_682_tifm_ms_init6, !11, !"__initcall__kmod_tifm_ms__263_682_tifm_ms_init6", i1 false, i1 false}
!11 = !{!"../drivers/memstick/host/tifm_ms.c", i32 682, i32 1}
!12 = !{ptr @__exitcall_tifm_ms_exit, !13, !"__exitcall_tifm_ms_exit", i1 false, i1 false}
!13 = !{!"../drivers/memstick/host/tifm_ms.c", i32 683, i32 1}
!14 = !{ptr @no_dma, !15, !"no_dma", i1 false, i1 false}
!15 = !{!"../drivers/memstick/host/tifm_ms.c", i32 21, i32 13}
!16 = !{ptr @__param_str_no_dma, !1, !"__param_str_no_dma", i1 false, i1 false}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/memstick/host/tifm_ms.c", i32 657, i32 12}
!19 = !{ptr @tifm_ms_driver, !20, !"tifm_ms_driver", i1 false, i1 false}
!20 = !{!"../drivers/memstick/host/tifm_ms.c", i32 655, i32 27}
!21 = !{ptr @tifm_ms_id_tbl, !22, !"tifm_ms_id_tbl", i1 false, i1 false}
!22 = !{!"../drivers/memstick/host/tifm_ms.c", i32 651, i32 30}
!23 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/memstick/host/tifm_ms.c", i32 559, i32 3}
!25 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @tifm_ms_probe._entry, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @tifm_ms_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @tifm_ms_probe.__key, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/memstick/host/tifm_ms.c", i32 573, i32 2}
!31 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/memstick/host/tifm_ms.c", i32 540, i32 2}
!34 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @tifm_ms_abort.__UNIQUE_ID_ddebug258, !33, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!36 = !{ptr @.str.7, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/memstick/host/tifm_ms.c", i32 542, i32 2}
!38 = !{ptr @tifm_ms_abort._entry, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @tifm_ms_abort._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.8, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/memstick/host/tifm_ms.c", i32 330, i32 2}
!42 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @tifm_ms_issue_cmd.__UNIQUE_ID_ddebug254, !41, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!44 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/memstick/host/tifm_ms.c", i32 426, i32 2}
!46 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @tifm_ms_card_event.__UNIQUE_ID_ddebug257, !45, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!48 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/memstick/host/tifm_ms.c", i32 360, i32 2}
!50 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @tifm_ms_complete_cmd.__UNIQUE_ID_ddebug255, !49, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!52 = !{ptr @.str.14, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/memstick/host/tifm_ms.c", i32 391, i32 2}
!54 = !{ptr @.str.15, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @tifm_ms_data_event.__UNIQUE_ID_ddebug256, !53, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!56 = !{ptr @.str.16, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/memstick/host/tifm_ms.c", i32 197, i32 2}
!58 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @tifm_ms_transfer_data.__UNIQUE_ID_ddebug249, !57, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!60 = !{ptr @.str.18, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/memstick/host/tifm_ms.c", i32 233, i32 2}
!62 = !{ptr @tifm_ms_transfer_data.__UNIQUE_ID_ddebug253, !61, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!63 = !{!"sp"}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{i64 4218106}
!74 = !{i64 2154625248}
!75 = !{i64 2154627621}
!76 = !{i64 4217688}
!77 = !{i64 2154628087}
!78 = !{i64 2148321612, i64 2148321617, i64 2148321630, i64 2148321674, i64 2148321708, i64 2148321729}
!79 = !{i64 2154622853}
!80 = !{i64 2154612675}
!81 = !{i64 2154613126}
!82 = !{i64 2154613584}
!83 = !{i64 2154614046}
!84 = !{i64 2154614504}
!85 = !{i64 2154615762}
!86 = !{i64 2154616773}
!87 = !{i64 2154617803}
!88 = !{i64 2154618769}
!89 = !{i64 2154607510}
!90 = !{i64 2154611087}
!91 = !{i64 2154612052}
!92 = !{i64 2154603281}
!93 = !{i64 2154603807}
!94 = !{i64 2154606769}
!95 = !{i8 0, i8 2}
!96 = !{i32 0, i32 33}
!97 = !{i64 2154585987}
!98 = !{i64 2154586454}
!99 = !{i64 2154587345}
!100 = !{i64 2154588412}
!101 = !{i64 2154588912}
!102 = !{i64 2154589423}
!103 = !{i64 2154589932}
!104 = !{i64 2154590542}
!105 = !{i64 2154591151}
!106 = !{i64 2154592387}
!107 = !{i64 2154593353}
!108 = !{i64 2154593891}
!109 = !{i64 2154594145}
!110 = !{i64 2154594573}
!111 = !{i64 2154597602}
!112 = !{i64 2154597860}
!113 = !{i64 2154598326}
!114 = !{i64 2154599557}
!115 = !{i64 2154600538}
!116 = !{!"branch_weights", i32 2000, i32 1}
!117 = !{i64 2154387811, i64 2154388303, i64 2154387848, i64 2154387904, i64 2154387938, i64 2154387962, i64 2154388003, i64 2154388024, i64 2154388052, i64 2154388086}
!118 = !{i64 901694, i64 901755}
!119 = !{i64 2154520345}
!120 = !{i64 2153906475}
!121 = !{i64 2154565805}
!122 = !{i64 2154566827}
!123 = !{i64 2154567792}
!124 = !{i64 2154568036}
!125 = !{i64 2154568783}
!126 = !{i64 2154569805}
!127 = !{i64 2154570770}
!128 = !{i64 2154564207}
!129 = !{i64 2154564753}
!130 = !{i64 2154565271}
!131 = !{i64 2153906682}
!132 = !{i64 2154523116}
!133 = !{i64 904426}
!134 = !{!"branch_weights", i32 1, i32 2000}
!135 = !{i64 904711}
!136 = !{i64 2154581393}
!137 = !{i64 2154582358}
!138 = !{i64 2154582602}
!139 = !{i64 2154583837}
!140 = !{i64 2154584802}
!141 = !{i64 2154585034}
!142 = !{i64 2154585729}
