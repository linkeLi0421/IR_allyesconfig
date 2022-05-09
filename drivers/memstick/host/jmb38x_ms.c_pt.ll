; ModuleID = '/llk/IR_all_yes/drivers/memstick/host/jmb38x_ms.c_pt.bc'
source_filename = "../drivers/memstick/host/jmb38x_ms.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.71, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.71 = type { ptr }
%struct.jmb38x_ms = type { ptr, i32, [0 x ptr] }
%struct.memstick_host = type { %struct.mutex, i32, i32, %struct.work_struct, %struct.device, ptr, i32, i8, ptr, ptr, [60 x i8], [0 x i32] }
%struct.memstick_request = type { i8, i8, i8, i32, %union.anon.72 }
%union.anon.72 = type { %struct.scatterlist }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.jmb38x_ms_host = type { ptr, ptr, %struct.spinlock, %struct.tasklet_struct, i32, [32 x i8], i32, i32, i32, %struct.timer_list, ptr, ptr, i8, i8, i8, [2 x i32] }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.75, i32 }
%union.anon.75 = type { ptr }
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
%struct.anon.73 = type { i8, [15 x i8] }

@__param_str_no_dma = internal constant [17 x i8] c"jmb38x_ms.no_dma\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@no_dma = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_no_dma = internal constant %struct.kernel_param { ptr @__param_str_no_dma, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @no_dma } }, section "__param", align 4
@__UNIQUE_ID_no_dmatype248 = internal constant [31 x i8] c"jmb38x_ms.parmtype=no_dma:bool\00", section ".modinfo", align 1
@__initcall__kmod_jmb38x_ms__275_1025_jmb38x_ms_driver_init6 = internal global ptr @jmb38x_ms_driver_init, section ".initcall6.init", align 4
@jmb38x_ms_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @jmb38x_ms_id_tbl, ptr @jmb38x_ms_probe, ptr @jmb38x_ms_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @jmb38x_ms_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_jmb38x_ms_driver_exit = internal global ptr @jmb38x_ms_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author276 = internal constant [28 x i8] c"jmb38x_ms.author=Alex Dubov\00", section ".modinfo", align 1
@__UNIQUE_ID_description277 = internal constant [56 x i8] c"jmb38x_ms.description=JMicron jmb38x MemoryStick driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file278 = internal constant [47 x i8] c"jmb38x_ms.file=drivers/memstick/host/jmb38x_ms\00", section ".modinfo", align 1
@__UNIQUE_ID_license279 = internal constant [22 x i8] c"jmb38x_ms.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"jmb38x_ms\00", [22 x i8] zeroinitializer }, align 32
@jmb38x_ms_id_tbl = internal global { [4 x %struct.pci_device_id], [32 x i8] } { [4 x %struct.pci_device_id] [%struct.pci_device_id { i32 6523, i32 9091, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6523, i32 9096, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6523, i32 9107, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@jmb38x_ms_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @jmb38x_ms_suspend, ptr @jmb38x_ms_resume, ptr @jmb38x_ms_suspend, ptr @jmb38x_ms_resume, ptr @jmb38x_ms_suspend, ptr @jmb38x_ms_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@jmb38x_ms_pmos.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -62, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"jmb38x_ms_pmos\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/memstick/host/jmb38x_ms.c\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"JMB38x: set PMOS0 val 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@jmb38x_ms_pmos.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 -60, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"JMB38x: set PMOS1 val 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@jmb38x_ms_pmos.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 -59, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Clock Control by PCI config is disabled!\0A\00", [54 x i8] zeroinitializer }, align 32
@jmb38x_ms_alloc_host.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&host->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"jmb38x_ms:slot%d\00", [47 x i8] zeroinitializer }, align 32
@jmb38x_ms_alloc_host.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"(&host->timer)\00", [17 x i8] zeroinitializer }, align 32
@jmb38x_ms_req_tasklet.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 -102, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"jmb38x_ms_req_tasklet\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tasklet req %d\0A\00", [16 x i8] zeroinitializer }, align 32
@jmb38x_ms_issue_cmd.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 93, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"jmb38x_ms_issue_cmd\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"no media status\0A\00", [47 x i8] zeroinitializer }, align 32
@jmb38x_ms_issue_cmd.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.14, i8 0, i8 94, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"control %08x\0A\00", [18 x i8] zeroinitializer }, align 32
@jmb38x_ms_issue_cmd.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.15, i8 0, i8 94, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"status %08x\0A\00", [19 x i8] zeroinitializer }, align 32
@jmb38x_ms_issue_cmd.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.16, i8 0, i8 94, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hstatus %08x\0A\00", [18 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@jmb38x_ms_issue_cmd.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.17, i8 0, i8 115, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"executing TPC %08x, len %x\0A\00", [36 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@jmb38x_ms_set_param.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 -81, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"jmb38x_ms_set_param\00", [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"power on\0A\00", [22 x i8] zeroinitializer }, align 32
@jmb38x_ms_set_param.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.20, i8 0, i8 -79, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"power off\0A\00", [21 x i8] zeroinitializer }, align 32
@jmb38x_ms_set_param.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.21, i8 0, i8 -78, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Set Host Interface Mode to %d\0A\00", [33 x i8] zeroinitializer }, align 32
@jmb38x_ms_reset.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 0, i8 -94, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"jmb38x_ms_reset\00", [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"reset_req timeout\0A\00", [45 x i8] zeroinitializer }, align 32
@jmb38x_ms_reset.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.24, i8 0, i8 -90, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reset timeout\0A\00", [17 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@jmb38x_ms_abort.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 -107, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"jmb38x_ms_abort\00", [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"abort\0A\00", [25 x i8] zeroinitializer }, align 32
@jmb38x_ms_complete_cmd.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.28, i8 0, i8 118, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"jmb38x_ms_complete_cmd\00", [41 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"c control %08x\0A\00", [16 x i8] zeroinitializer }, align 32
@jmb38x_ms_complete_cmd.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.29, i8 0, i8 119, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"c status %08x\0A\00", [17 x i8] zeroinitializer }, align 32
@jmb38x_ms_complete_cmd.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.30, i8 0, i8 119, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"c hstatus %08x\0A\00", [16 x i8] zeroinitializer }, align 32
@jmb38x_ms_isr.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.32, i8 0, i8 -125, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"jmb38x_ms_isr\00", [18 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"irq_status = %08x\0A\00", [45 x i8] zeroinitializer }, align 32
@jmb38x_ms_isr.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.33, i8 0, i8 -123, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TPC_ERR\0A\00", [23 x i8] zeroinitializer }, align 32
@jmb38x_ms_isr.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.34, i8 0, i8 -113, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"media changed\0A\00", [17 x i8] zeroinitializer }, align 32
@jmb38x_ms_remove.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.36, i8 0, i8 -10, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"jmb38x_ms_remove\00", [47 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"interrupts off\0A\00", [16 x i8] zeroinitializer }, align 32
@jmb38x_ms_remove.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.37, i8 0, i8 -8, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"host removed\0A\00", [18 x i8] zeroinitializer }, align 32
@switch.table.jmb38x_ms_set_param = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 344064, i32 328216, i32 328240], [20 x i8] zeroinitializer }, align 32
@switch.table.jmb38x_ms_set_param.38 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 150994944, i32 150994944, i32 167772160], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.41 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.42 = private unnamed_addr constant [7 x i8] c"no_dma\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 20, i32 13 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"jmb38x_ms_driver\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 1017, i32 26 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 1025, i32 1 }
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"jmb38x_ms_id_tbl\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 1008, i32 29 }
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"jmb38x_ms_pm_ops\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 1015, i32 8 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 776, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 785, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 791, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 864, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 866, i32 49 }
@___asan_gen_.81 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 877, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 617, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 372, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 377, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 378, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 379, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 461, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 702, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 709, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 714, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 650, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 664, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 597, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 474, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 476, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 478, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 524, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 535, i32 5 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 575, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 986, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.169 = private constant [37 x i8] c"../drivers/memstick/host/jmb38x_ms.c\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 995, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant [33 x i8] c"switch.table.jmb38x_ms_set_param\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [36 x i8] c"switch.table.jmb38x_ms_set_param.38\00", align 1
@llvm.compiler.used = appending global [54 x ptr] [ptr @__UNIQUE_ID_author276, ptr @__UNIQUE_ID_description277, ptr @__UNIQUE_ID_file278, ptr @__UNIQUE_ID_license279, ptr @__UNIQUE_ID_no_dmatype248, ptr @__exitcall_jmb38x_ms_driver_exit, ptr @__initcall__kmod_jmb38x_ms__275_1025_jmb38x_ms_driver_init6, ptr @__param_no_dma, ptr @jmb38x_ms_driver_exit, ptr @no_dma, ptr @jmb38x_ms_driver, ptr @.str, ptr @jmb38x_ms_id_tbl, ptr @jmb38x_ms_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @jmb38x_ms_alloc_host.__key, ptr @.str.6, ptr @.str.7, ptr @jmb38x_ms_alloc_host.__key.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @switch.table.jmb38x_ms_set_param, ptr @switch.table.jmb38x_ms_set_param.38], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @no_dma to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jmb38x_ms_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jmb38x_ms_id_tbl to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jmb38x_ms_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jmb38x_ms_alloc_host.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jmb38x_ms_alloc_host.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.jmb38x_ms_set_param to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.jmb38x_ms_set_param.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @jmb38x_ms_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @jmb38x_ms_driver, ptr noundef null, ptr noundef nonnull @.str) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @jmb38x_ms_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pci_unregister_driver(ptr noundef nonnull @jmb38x_ms_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jmb38x_ms_probe(ptr noundef %pdev, ptr nocapture noundef readnone %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @pci_enable_device(ptr noundef %pdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  tail call void @pci_set_master(ptr noundef %pdev) #9
  %call5 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  tail call fastcc void @jmb38x_ms_pmos(ptr noundef %pdev, i32 noundef 1)
  %arrayidx.i = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0
  %flags.i = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 3
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end8.err_out.thread101_crit_edge, label %if.end.i

if.end8.err_out.thread101_crit_edge:              ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out.thread101

if.end.i:                                         ; preds = %if.end8
  %end.i = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %2 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp3.i = icmp eq i32 %3, 0
  br i1 %cmp3.i, label %if.end.i.err_out.thread101_crit_edge, label %cond.end.i

if.end.i.err_out.thread101_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out.thread101

cond.end.i:                                       ; preds = %if.end.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 8
  %sub.i = sub i32 %3, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %sub.i)
  %cmp9.not.i = icmp eq i32 %sub.i, 255
  br i1 %cmp9.not.i, label %if.end11.i, label %cond.end.i.err_out.thread101_crit_edge

cond.end.i.err_out.thread101_crit_edge:           ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out.thread101

if.end11.i:                                       ; preds = %cond.end.i
  %arrayidx.1.i = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1
  %flags.1.i = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1, i32 3
  %6 = ptrtoint ptr %flags.1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.1.i, align 4
  %and.1.i = and i32 %7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool.not.1.i, label %if.end11.i.if.end8.i.i_crit_edge, label %if.end.1.i

if.end11.i.if.end8.i.i_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i

if.end.1.i:                                       ; preds = %if.end11.i
  %end.1.i = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1, i32 1
  %8 = ptrtoint ptr %end.1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp3.1.i = icmp eq i32 %9, 0
  br i1 %cmp3.1.i, label %if.end.1.i.if.end8.i.i_crit_edge, label %cond.end.1.i

if.end.1.i.if.end8.i.i_crit_edge:                 ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i

cond.end.1.i:                                     ; preds = %if.end.1.i
  %10 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.1.i, align 8
  %sub.1.i = sub i32 %9, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %sub.1.i)
  %cmp9.not.1.i = icmp eq i32 %sub.1.i, 255
  br i1 %cmp9.not.1.i, label %if.end11.1.i, label %cond.end.1.i.if.end8.i.i_crit_edge

cond.end.1.i.if.end8.i.i_crit_edge:               ; preds = %cond.end.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i

if.end11.1.i:                                     ; preds = %cond.end.1.i
  %arrayidx.2.i = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2
  %flags.2.i = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2, i32 3
  %12 = ptrtoint ptr %flags.2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.2.i, align 4
  %and.2.i = and i32 %13, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i)
  %tobool.not.2.i = icmp eq i32 %and.2.i, 0
  br i1 %tobool.not.2.i, label %if.end11.1.i.if.end8.i.i_crit_edge, label %if.end.2.i

if.end11.1.i.if.end8.i.i_crit_edge:               ; preds = %if.end11.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i

if.end.2.i:                                       ; preds = %if.end11.1.i
  %end.2.i = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2, i32 1
  %14 = ptrtoint ptr %end.2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %end.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp3.2.i = icmp eq i32 %15, 0
  br i1 %cmp3.2.i, label %if.end.2.i.if.end8.i.i_crit_edge, label %cond.end.2.i

if.end.2.i.if.end8.i.i_crit_edge:                 ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i

cond.end.2.i:                                     ; preds = %if.end.2.i
  %16 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.2.i, align 8
  %sub.2.i = sub i32 %15, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %sub.2.i)
  %cmp9.not.2.i = icmp eq i32 %sub.2.i, 255
  br i1 %cmp9.not.2.i, label %if.end11.2.i, label %cond.end.2.i.if.end8.i.i_crit_edge

cond.end.2.i.if.end8.i.i_crit_edge:               ; preds = %cond.end.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i

if.end11.2.i:                                     ; preds = %cond.end.2.i
  %arrayidx.3.i = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 3
  %flags.3.i = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 3, i32 3
  %18 = ptrtoint ptr %flags.3.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags.3.i, align 4
  %and.3.i = and i32 %19, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i)
  %tobool.not.3.i = icmp eq i32 %and.3.i, 0
  br i1 %tobool.not.3.i, label %if.end11.2.i.if.end8.i.i_crit_edge, label %if.end.3.i

if.end11.2.i.if.end8.i.i_crit_edge:               ; preds = %if.end11.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i

if.end.3.i:                                       ; preds = %if.end11.2.i
  %end.3.i = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 3, i32 1
  %20 = ptrtoint ptr %end.3.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %end.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp3.3.i = icmp eq i32 %21, 0
  br i1 %cmp3.3.i, label %if.end.3.i.if.end8.i.i_crit_edge, label %cond.end.3.i

if.end.3.i.if.end8.i.i_crit_edge:                 ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i

cond.end.3.i:                                     ; preds = %if.end.3.i
  %22 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.3.i, align 8
  %sub.3.i = sub i32 %21, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %sub.3.i)
  %cmp9.not.3.i = icmp eq i32 %sub.3.i, 255
  br i1 %cmp9.not.3.i, label %if.end11.3.i, label %cond.end.3.i.if.end8.i.i_crit_edge

cond.end.3.i.if.end8.i.i_crit_edge:               ; preds = %cond.end.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i

if.end11.3.i:                                     ; preds = %cond.end.3.i
  %arrayidx.4.i = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 4
  %flags.4.i = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 4, i32 3
  %24 = ptrtoint ptr %flags.4.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags.4.i, align 4
  %and.4.i = and i32 %25, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4.i)
  %tobool.not.4.i = icmp eq i32 %and.4.i, 0
  br i1 %tobool.not.4.i, label %if.end11.3.i.if.end8.i.i_crit_edge, label %if.end.4.i

if.end11.3.i.if.end8.i.i_crit_edge:               ; preds = %if.end11.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i

if.end.4.i:                                       ; preds = %if.end11.3.i
  %end.4.i = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 4, i32 1
  %26 = ptrtoint ptr %end.4.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %end.4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp3.4.i = icmp eq i32 %27, 0
  br i1 %cmp3.4.i, label %if.end.4.i.if.end8.i.i_crit_edge, label %cond.end.4.i

if.end.4.i.if.end8.i.i_crit_edge:                 ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i

cond.end.4.i:                                     ; preds = %if.end.4.i
  %28 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.4.i, align 8
  %sub.4.i = sub i32 %27, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %sub.4.i)
  %cmp9.not.4.i = icmp eq i32 %sub.4.i, 255
  br i1 %cmp9.not.4.i, label %if.end11.4.i, label %cond.end.4.i.if.end8.i.i_crit_edge

cond.end.4.i.if.end8.i.i_crit_edge:               ; preds = %cond.end.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i

if.end11.4.i:                                     ; preds = %cond.end.4.i
  %arrayidx.5.i = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 5
  %flags.5.i = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 5, i32 3
  %30 = ptrtoint ptr %flags.5.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags.5.i, align 4
  %and.5.i = and i32 %31, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5.i)
  %tobool.not.5.i = icmp eq i32 %and.5.i, 0
  br i1 %tobool.not.5.i, label %if.end11.4.i.if.end8.i.i_crit_edge, label %if.end.5.i

if.end11.4.i.if.end8.i.i_crit_edge:               ; preds = %if.end11.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i

if.end.5.i:                                       ; preds = %if.end11.4.i
  %end.5.i = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 5, i32 1
  %32 = ptrtoint ptr %end.5.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %end.5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp3.5.i = icmp eq i32 %33, 0
  br i1 %cmp3.5.i, label %if.end.5.i.if.end8.i.i_crit_edge, label %cond.end.5.i

if.end.5.i.if.end8.i.i_crit_edge:                 ; preds = %if.end.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i

cond.end.5.i:                                     ; preds = %if.end.5.i
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.5.i, align 8
  %sub.5.i = sub i32 %33, %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %sub.5.i)
  %cmp9.not.5.i = icmp eq i32 %sub.5.i, 255
  %spec.select.i = select i1 %cmp9.not.5.i, i32 6, i32 5
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %cond.end.5.i, %if.end.5.i.if.end8.i.i_crit_edge, %if.end11.4.i.if.end8.i.i_crit_edge, %cond.end.4.i.if.end8.i.i_crit_edge, %if.end.4.i.if.end8.i.i_crit_edge, %if.end11.3.i.if.end8.i.i_crit_edge, %cond.end.3.i.if.end8.i.i_crit_edge, %if.end.3.i.if.end8.i.i_crit_edge, %if.end11.2.i.if.end8.i.i_crit_edge, %cond.end.2.i.if.end8.i.i_crit_edge, %if.end.2.i.if.end8.i.i_crit_edge, %if.end11.1.i.if.end8.i.i_crit_edge, %cond.end.1.i.if.end8.i.i_crit_edge, %if.end.1.i.if.end8.i.i_crit_edge, %if.end11.i.if.end8.i.i_crit_edge
  %rc.0.lcssa.i.ph = phi i32 [ %spec.select.i, %cond.end.5.i ], [ 5, %if.end.5.i.if.end8.i.i_crit_edge ], [ 5, %if.end11.4.i.if.end8.i.i_crit_edge ], [ 4, %cond.end.4.i.if.end8.i.i_crit_edge ], [ 4, %if.end.4.i.if.end8.i.i_crit_edge ], [ 4, %if.end11.3.i.if.end8.i.i_crit_edge ], [ 3, %cond.end.3.i.if.end8.i.i_crit_edge ], [ 3, %if.end.3.i.if.end8.i.i_crit_edge ], [ 3, %if.end11.2.i.if.end8.i.i_crit_edge ], [ 2, %cond.end.2.i.if.end8.i.i_crit_edge ], [ 2, %if.end.2.i.if.end8.i.i_crit_edge ], [ 2, %if.end11.1.i.if.end8.i.i_crit_edge ], [ 1, %cond.end.1.i.if.end8.i.i_crit_edge ], [ 1, %if.end.1.i.if.end8.i.i_crit_edge ], [ 1, %if.end11.i.if.end8.i.i_crit_edge ]
  %36 = shl nuw nsw i32 %rc.0.lcssa.i.ph, 2
  %spec.select.i84105 = add nuw nsw i32 %36, 8
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i84105, i32 noundef 3520) #12
  %tobool16.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool16.not, label %if.end8.i.i.if.then41_crit_edge, label %for.body.preheader

if.end8.i.i.if.then41_crit_edge:                  ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then41

for.body.preheader:                               ; preds = %if.end8.i.i
  %37 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %pdev, ptr %call9.i.i, align 128
  %host_cnt = getelementptr inbounds %struct.jmb38x_ms, ptr %call9.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %host_cnt to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %rc.0.lcssa.i.ph, ptr %host_cnt, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %39 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call9.i.i, ptr %driver_data.i.i, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %cnt.0120 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %40 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call9.i.i, align 128
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44
  %call.i = tail call ptr @memstick_alloc_host(i32 noundef 192, ptr noundef %dev.i) #9
  %tobool.not.i85 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i85, label %for.body.jmb38x_ms_alloc_host.exit.thread_crit_edge, label %if.end.i89

for.body.jmb38x_ms_alloc_host.exit.thread_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %jmb38x_ms_alloc_host.exit.thread

if.end.i89:                                       ; preds = %for.body
  %private.i.i = getelementptr inbounds %struct.memstick_host, ptr %call.i, i32 0, i32 11
  %msh2.i = getelementptr inbounds %struct.memstick_host, ptr %call.i, i32 1, i32 4, i32 0, i32 6
  %42 = ptrtoint ptr %msh2.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i, ptr %msh2.i, align 4
  %43 = ptrtoint ptr %private.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call9.i.i, ptr %private.i.i, align 4
  %44 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call9.i.i, align 128
  %arrayidx.i86 = getelementptr %struct.pci_dev, ptr %45, i32 0, i32 47, i32 %cnt.0120
  %46 = ptrtoint ptr %arrayidx.i86 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i86, align 8
  %end.i87 = getelementptr %struct.pci_dev, ptr %45, i32 0, i32 47, i32 %cnt.0120, i32 1
  %48 = ptrtoint ptr %end.i87 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %end.i87, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp.i = icmp eq i32 %49, 0
  %sub.i88 = sub i32 1, %47
  %add.i = add i32 %sub.i88, %49
  %cond.i = select i1 %cmp.i, i32 0, i32 %add.i
  %call15.i = tail call ptr @ioremap(i32 noundef %47, i32 noundef %cond.i) #9
  %addr.i = getelementptr inbounds %struct.memstick_host, ptr %call.i, i32 1, i32 0, i32 1
  %50 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call15.i, ptr %addr.i, align 4
  %tobool17.not.i = icmp eq ptr %call15.i, null
  br i1 %tobool17.not.i, label %if.end.i89.err_out_free.i_crit_edge, label %do.body.i

if.end.i89.err_out_free.i_crit_edge:              ; preds = %if.end.i89
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out_free.i

do.body.i:                                        ; preds = %if.end.i89
  %lock.i = getelementptr inbounds %struct.memstick_host, ptr %call.i, i32 1, i32 0, i32 1, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @jmb38x_ms_alloc_host.__key, i16 noundef signext 3) #9
  %id.i = getelementptr inbounds %struct.memstick_host, ptr %call.i, i32 1, i32 0, i32 5, i32 2
  %51 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %cnt.0120, ptr %id.i, align 4
  %host_id.i = getelementptr inbounds %struct.memstick_host, ptr %call.i, i32 1, i32 0, i32 5, i32 3
  %call22.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %host_id.i, i32 noundef 32, ptr noundef nonnull @.str.7, i32 noundef %cnt.0120) #9
  %52 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %call9.i.i, align 128
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %53, i32 0, i32 46
  %54 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %irq.i, align 4
  %irq24.i = getelementptr inbounds %struct.memstick_host, ptr %call.i, i32 1, i32 3, i32 2
  %56 = ptrtoint ptr %irq24.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %irq24.i, align 4
  %timeout_jiffies.i = getelementptr inbounds %struct.memstick_host, ptr %call.i, i32 1, i32 3, i32 3, i32 1
  %57 = ptrtoint ptr %timeout_jiffies.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 100, ptr %timeout_jiffies.i, align 4
  %notify.i = getelementptr inbounds %struct.memstick_host, ptr %call.i, i32 1, i32 0, i32 3
  %58 = ptrtoint ptr %call.i to i32
  tail call void @tasklet_init(ptr noundef %notify.i, ptr noundef nonnull @jmb38x_ms_req_tasklet, i32 noundef %58) #9
  %request.i = getelementptr inbounds %struct.memstick_host, ptr %call.i, i32 0, i32 8
  %59 = ptrtoint ptr %request.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @jmb38x_ms_submit_req, ptr %request.i, align 4
  %set_param.i = getelementptr inbounds %struct.memstick_host, ptr %call.i, i32 0, i32 9
  %60 = ptrtoint ptr %set_param.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @jmb38x_ms_set_param, ptr %set_param.i, align 64
  %caps.i = getelementptr inbounds %struct.memstick_host, ptr %call.i, i32 0, i32 2
  %61 = ptrtoint ptr %caps.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 6, ptr %caps.i, align 32
  %timer.i = getelementptr inbounds %struct.memstick_host, ptr %call.i, i32 1, i32 3, i32 3, i32 1, i32 1
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @jmb38x_ms_abort, i32 noundef 0, ptr noundef nonnull @.str.9, ptr noundef nonnull @jmb38x_ms_alloc_host.__key.8) #9
  %62 = ptrtoint ptr %irq24.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %irq24.i, align 4
  %call.i.i = tail call i32 @request_threaded_irq(i32 noundef %63, ptr noundef nonnull @jmb38x_ms_isr, ptr noundef null, i32 noundef 128, ptr noundef %host_id.i, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool33.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool33.not.i, label %if.end26, label %if.end35.i

if.end35.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %addr.i, align 4
  tail call void @iounmap(ptr noundef %65) #9
  br label %err_out_free.i

err_out_free.i:                                   ; preds = %if.end35.i, %if.end.i89.err_out_free.i_crit_edge
  tail call void @memstick_free_host(ptr noundef nonnull %call.i) #9
  br label %jmb38x_ms_alloc_host.exit.thread

jmb38x_ms_alloc_host.exit.thread:                 ; preds = %err_out_free.i, %for.body.jmb38x_ms_alloc_host.exit.thread_crit_edge
  %arrayidx96 = getelementptr %struct.jmb38x_ms, ptr %call9.i.i, i32 0, i32 2, i32 %cnt.0120
  br label %for.end

if.end26:                                         ; preds = %do.body.i
  %arrayidx = getelementptr %struct.jmb38x_ms, ptr %call9.i.i, i32 0, i32 2, i32 %cnt.0120
  %66 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call.i, ptr %arrayidx, align 4
  %call29 = tail call i32 @memstick_add_host(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %for.inc, label %if.then31

if.then31:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %67 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx, align 4
  tail call fastcc void @jmb38x_ms_free_host(ptr noundef %68)
  br label %for.end

for.inc:                                          ; preds = %if.end26
  %inc = add nuw nsw i32 %cnt.0120, 1
  %69 = ptrtoint ptr %host_cnt to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %host_cnt, align 4
  %cmp = icmp slt i32 %inc, %70
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.then31, %jmb38x_ms_alloc_host.exit.thread
  %arrayidx96.sink = phi ptr [ %arrayidx96, %jmb38x_ms_alloc_host.exit.thread ], [ %arrayidx, %if.then31 ]
  %71 = ptrtoint ptr %arrayidx96.sink to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %arrayidx96.sink, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt.0120)
  %tobool37.not = icmp eq i32 %cnt.0120, 0
  br i1 %tobool37.not, label %if.end39, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end39:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %72 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #9
  br label %if.then41

err_out.thread101:                                ; preds = %cond.end.i.err_out.thread101_crit_edge, %if.end.i.err_out.thread101_crit_edge, %if.end8.err_out.thread101_crit_edge
  tail call void @pci_release_regions(ptr noundef %pdev) #9
  br label %cleanup

if.then41:                                        ; preds = %if.end39, %if.end8.i.i.if.then41_crit_edge
  %rc.0 = phi i32 [ -19, %if.end39 ], [ -12, %if.end8.i.i.if.then41_crit_edge ]
  tail call void @pci_release_regions(ptr noundef %pdev) #9
  tail call void @pci_disable_device(ptr noundef %pdev) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %err_out.thread101, %for.end.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ %rc.0, %if.then41 ], [ -19, %err_out.thread101 ], [ %call5, %if.end4.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jmb38x_ms_remove(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %host_cnt = getelementptr inbounds %struct.jmb38x_ms, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %host_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %host_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp97 = icmp sgt i32 %3, 0
  br i1 %cmp97, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %do.end60.for.body_crit_edge, %entry.for.body_crit_edge
  %cnt.098 = phi i32 [ %inc, %do.end60.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.jmb38x_ms, ptr %1, i32 0, i32 2, i32 %cnt.098
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end:                                           ; preds = %for.body
  %request = getelementptr inbounds %struct.memstick_host, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @jmb38x_ms_dummy_submit, ptr %request, align 4
  %notify = getelementptr inbounds %struct.memstick_host, ptr %5, i32 1, i32 0, i32 3
  tail call void @tasklet_kill(ptr noundef %notify) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !120
  tail call void @arm_heavy_mb() #9
  %addr = getelementptr inbounds %struct.memstick_host, ptr %5, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %addr, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #9, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void @arm_heavy_mb() #9
  %9 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %addr, align 4
  %add.ptr10 = getelementptr i8, ptr %10, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 0) #9, !srcloc !121
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jmb38x_ms_remove.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@jmb38x_ms_remove, %do.body23)) #9
          to label %if.then17 [label %do.body23], !srcloc !123

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %dev18 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jmb38x_ms_remove.__UNIQUE_ID_ddebug273, ptr noundef %dev18, ptr noundef nonnull @.str.36) #9
  br label %do.body23

do.body23:                                        ; preds = %if.then17, %if.end
  %lock = getelementptr inbounds %struct.memstick_host, ptr %5, i32 1, i32 0, i32 1, i32 1
  %call27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %req = getelementptr inbounds %struct.memstick_host, ptr %5, i32 1, i32 4, i32 0, i32 7
  %13 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %req, align 4
  %tobool32.not = icmp eq ptr %14, null
  br i1 %tobool32.not, label %do.body23.if.end37_crit_edge, label %if.then33

do.body23.if.end37_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then33:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #11
  %error = getelementptr inbounds %struct.memstick_request, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -62, ptr %error, align 4
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  tail call fastcc void @jmb38x_ms_complete_cmd(ptr noundef %17, i32 noundef 1)
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %do.body23.if.end37_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call27) #9
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  tail call void @memstick_remove_host(ptr noundef %19) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jmb38x_ms_remove.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@jmb38x_ms_remove, %do.end60)) #9
          to label %if.then55 [label %do.end60], !srcloc !123

if.then55:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %dev57 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jmb38x_ms_remove.__UNIQUE_ID_ddebug274, ptr noundef %dev57, ptr noundef nonnull @.str.37) #9
  br label %do.end60

do.end60:                                         ; preds = %if.then55, %if.end37
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  %irq.i = getelementptr inbounds %struct.memstick_host, ptr %23, i32 1, i32 3, i32 2
  %24 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq.i, align 4
  %call1.i = tail call ptr @free_irq(i32 noundef %25, ptr noundef %23) #9
  %addr.i = getelementptr inbounds %struct.memstick_host, ptr %23, i32 1, i32 0, i32 1
  %26 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %addr.i, align 4
  tail call void @iounmap(ptr noundef %27) #9
  tail call void @memstick_free_host(ptr noundef %23) #9
  %inc = add nuw nsw i32 %cnt.098, 1
  %28 = ptrtoint ptr %host_cnt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %host_cnt, align 4
  %cmp = icmp slt i32 %inc, %29
  br i1 %cmp, label %do.end60.for.body_crit_edge, label %do.end60.for.end_crit_edge

do.end60.for.end_crit_edge:                       ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

do.end60.for.body_crit_edge:                      ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %do.end60.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call fastcc void @jmb38x_ms_pmos(ptr noundef %dev, i32 noundef 0)
  %30 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @pci_release_regions(ptr noundef %dev) #9
  tail call void @pci_disable_device(ptr noundef %dev) #9
  tail call void @kfree(ptr noundef %1) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @jmb38x_ms_pmos(ptr noundef %pdev, i32 noundef %flag) unnamed_addr #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #9
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !124
  %call = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 174, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flag)
  %tobool.not = icmp eq i32 %flag, 0
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %val, align 1
  %3 = and i8 %2, -72
  %masksel = select i1 %tobool.not, i8 0, i8 71
  %storemerge = or i8 %3, %masksel
  store i8 %storemerge, ptr %val, align 1
  %call4 = call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 174, i8 noundef zeroext %storemerge) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jmb38x_ms_pmos.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@jmb38x_ms_pmos, %do.end)) #9
          to label %if.then10 [label %do.end], !srcloc !123

if.then10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %val, align 1
  %conv11 = zext i8 %5 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jmb38x_ms_pmos.__UNIQUE_ID_ddebug270, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %conv11) #9
  br label %do.end

do.end:                                           ; preds = %if.then10, %entry
  %flags = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1, i32 3
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool13.not = icmp eq i32 %7, 0
  br i1 %tobool13.not, label %do.end.if.end47_crit_edge, label %if.then14

do.end.if.end47_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

if.then14:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %call15 = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 189, ptr noundef nonnull %val) #9
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %val, align 1
  %10 = and i8 %9, -75
  %masksel11 = select i1 %tobool.not, i8 0, i8 74
  %storemerge1 = or i8 %10, %masksel11
  store i8 %storemerge1, ptr %val, align 1
  %call26 = call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 189, i8 noundef zeroext %storemerge1) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jmb38x_ms_pmos.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@jmb38x_ms_pmos, %if.end47)) #9
          to label %if.then41 [label %if.end47], !srcloc !123

if.then41:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %dev42 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %val, align 1
  %conv43 = zext i8 %12 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jmb38x_ms_pmos.__UNIQUE_ID_ddebug271, ptr noundef %dev42, ptr noundef nonnull @.str.4, i32 noundef %conv43) #9
  br label %if.end47

if.end47:                                         ; preds = %if.then41, %if.then14, %do.end.if.end47_crit_edge
  %call48 = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 185, ptr noundef nonnull %val) #9
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %val, align 1
  %15 = and i8 %14, -16
  %call52 = call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 185, i8 noundef zeroext %15) #9
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %val, align 1
  %18 = or i8 %17, 1
  %call56 = call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 185, i8 noundef zeroext %18) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jmb38x_ms_pmos.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@jmb38x_ms_pmos, %do.end75)) #9
          to label %if.then71 [label %do.end75], !srcloc !123

if.then71:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  %dev72 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jmb38x_ms_pmos.__UNIQUE_ID_ddebug272, ptr noundef %dev72, ptr noundef nonnull @.str.5) #9
  br label %do.end75

do.end75:                                         ; preds = %if.then71, %if.end47
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memstick_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @jmb38x_ms_free_host(ptr noundef %msh) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.memstick_host, ptr %msh, i32 1, i32 3, i32 2
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %1, ptr noundef %msh) #9
  %addr = getelementptr inbounds %struct.memstick_host, ptr %msh, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %addr, align 4
  tail call void @iounmap(ptr noundef %3) #9
  tail call void @memstick_free_host(ptr noundef %msh) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memstick_alloc_host(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jmb38x_ms_req_tasklet(i32 noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %data to ptr
  %private.i = getelementptr inbounds %struct.memstick_host, ptr %0, i32 0, i32 11
  %lock = getelementptr inbounds %struct.memstick_host, ptr %0, i32 1, i32 0, i32 1, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %req = getelementptr inbounds %struct.memstick_host, ptr %0, i32 1, i32 4, i32 0, i32 7
  %1 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %req, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.do.body6_crit_edge, label %entry.if.end24_crit_edge

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

entry.do.body6_crit_edge:                         ; preds = %entry
  br label %do.body6

do.body6:                                         ; preds = %land.rhs.do.body6_crit_edge, %entry.do.body6_crit_edge
  %call8 = tail call i32 @memstick_next_req(ptr noundef %0, ptr noundef %req) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jmb38x_ms_req_tasklet.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@jmb38x_ms_req_tasklet, %do.cond19)) #9
          to label %if.then16 [label %do.cond19], !srcloc !123

if.then16:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jmb38x_ms_req_tasklet.__UNIQUE_ID_ddebug264, ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %call8) #9
  br label %do.cond19

do.cond19:                                        ; preds = %if.then16, %do.body6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool20.not = icmp eq i32 %call8, 0
  br i1 %tobool20.not, label %land.rhs, label %do.cond19.if.end24_crit_edge

do.cond19.if.end24_crit_edge:                     ; preds = %do.cond19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

land.rhs:                                         ; preds = %do.cond19
  %call21 = tail call fastcc i32 @jmb38x_ms_issue_cmd(ptr noundef %0)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %land.rhs.if.end24_crit_edge, label %land.rhs.do.body6_crit_edge

land.rhs.do.body6_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body6

land.rhs.if.end24_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.end24:                                         ; preds = %land.rhs.if.end24_crit_edge, %do.cond19.if.end24_crit_edge, %entry.if.end24_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jmb38x_ms_submit_req(ptr noundef %msh) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.memstick_host, ptr %msh, i32 1, i32 0, i32 3, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.tasklet_schedule.exit_crit_edge

entry.tasklet_schedule.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tasklet_schedule.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %notify = getelementptr inbounds %struct.memstick_host, ptr %msh, i32 1, i32 0, i32 3
  tail call void @__tasklet_schedule(ptr noundef %notify) #9
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i, %entry.tasklet_schedule.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jmb38x_ms_set_param(ptr nocapture noundef %msh, i32 noundef %param, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.memstick_host, ptr %msh, i32 0, i32 11
  %addr = getelementptr inbounds %struct.memstick_host, ptr %msh, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 24
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !125
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !126
  %4 = zext i32 %param to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %param, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %do.body71
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %5 = zext i32 %value to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %value, label %sw.bb.cleanup_crit_edge [
    i32 1, label %if.then
    i32 0, label %if.then30
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %sw.bb
  %call3 = tail call fastcc i32 @jmb38x_ms_reset(ptr noundef %private.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !127
  tail call void @arm_heavy_mb() #9
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %addr, align 4
  %add.ptr6 = getelementptr i8, ptr %7, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 -956301312) #9, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !128
  tail call void @arm_heavy_mb() #9
  %id = getelementptr inbounds %struct.memstick_host, ptr %msh, i32 1, i32 0, i32 5, i32 2
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool10.not = icmp eq i32 %9, 0
  %cond = select i1 %tobool10.not, i32 1603207168, i32 252641280
  %10 = tail call i32 @llvm.bswap.i32(i32 %cond)
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %addr, align 4
  %add.ptr12 = getelementptr i8, ptr %12, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %10) #9, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !129
  tail call void @arm_heavy_mb() #9
  %13 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %addr, align 4
  %add.ptr17 = getelementptr i8, ptr %14, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 1057947648) #9, !srcloc !121
  tail call void @msleep(i32 noundef 10) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jmb38x_ms_set_param.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@jmb38x_ms_set_param, %cleanup)) #9
          to label %if.then25 [label %cleanup], !srcloc !123

if.then25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %private.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jmb38x_ms_set_param.__UNIQUE_ID_ddebug267, ptr noundef %dev, ptr noundef nonnull @.str.19) #9
  br label %cleanup

if.then30:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %and = and i32 %3, -193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !130
  tail call void @arm_heavy_mb() #9
  %19 = tail call i32 @llvm.bswap.i32(i32 %and)
  %20 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %addr, align 4
  %add.ptr35 = getelementptr i8, ptr %21, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 %19) #9, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !131
  tail call void @arm_heavy_mb() #9
  %22 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %addr, align 4
  %add.ptr40 = getelementptr i8, ptr %23, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 0) #9, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !132
  tail call void @arm_heavy_mb() #9
  %24 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %addr, align 4
  %add.ptr45 = getelementptr i8, ptr %25, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 65407) #9, !srcloc !121
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jmb38x_ms_set_param.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@jmb38x_ms_set_param, %cleanup)) #9
          to label %if.then60 [label %cleanup], !srcloc !123

if.then60:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %private.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %dev63 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jmb38x_ms_set_param.__UNIQUE_ID_ddebug268, ptr noundef %dev63, ptr noundef nonnull @.str.20) #9
  br label %cleanup

do.body71:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jmb38x_ms_set_param.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@jmb38x_ms_set_param, %do.end91)) #9
          to label %if.then85 [label %do.end91], !srcloc !123

if.then85:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %private.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %dev88 = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jmb38x_ms_set_param.__UNIQUE_ID_ddebug269, ptr noundef %dev88, ptr noundef nonnull @.str.21, i32 noundef %value) #9
  br label %do.end91

do.end91:                                         ; preds = %if.then85, %do.body71
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %value)
  %34 = icmp ult i32 %value, 3
  br i1 %34, label %switch.lookup, label %do.end91.cleanup_crit_edge

do.end91.cleanup_crit_edge:                       ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

switch.lookup:                                    ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #11
  %and92 = and i32 %3, -344633
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.jmb38x_ms_set_param, i32 0, i32 %value
  %35 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %35)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.cast = trunc i32 %value to i24
  %switch.shiftamt = shl i24 %switch.cast, 3
  %switch.downshift = lshr i24 1024, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %switch.gep189 = getelementptr inbounds [3 x i32], ptr @switch.table.jmb38x_ms_set_param.38, i32 0, i32 %value
  %36 = ptrtoint ptr %switch.gep189 to i32
  call void @__asan_load4_noabort(i32 %36)
  %switch.load190 = load i32, ptr %switch.gep189, align 4
  %or98 = or i32 %and92, %switch.load
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !133
  tail call void @arm_heavy_mb() #9
  %37 = tail call i32 @llvm.bswap.i32(i32 %or98)
  %38 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %addr, align 4
  %add.ptr121 = getelementptr i8, ptr %39, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr121, i32 %37) #9, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !134
  tail call void @arm_heavy_mb() #9
  %40 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %addr, align 4
  %add.ptr126 = getelementptr i8, ptr %41, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr126, i32 0) #9, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !135
  tail call void @arm_heavy_mb() #9
  %42 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %addr, align 4
  %add.ptr131 = getelementptr i8, ptr %43, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr131, i32 %switch.load190) #9, !srcloc !121
  %44 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %private.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %call134 = tail call i32 @pci_write_config_byte(ptr noundef %47, i32 noundef 177, i8 noundef zeroext %switch.masked) #9
  %conv135 = trunc i32 %value to i8
  %ifmode = getelementptr inbounds %struct.jmb38x_ms_host, ptr %private.i, i32 0, i32 14
  %48 = ptrtoint ptr %ifmode to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv135, ptr %ifmode, align 2
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %do.end91.cleanup_crit_edge, %if.then60, %if.then30, %if.then25, %if.end, %if.then.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %do.end91.cleanup_crit_edge ], [ 0, %if.then25 ], [ 0, %if.then60 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %switch.lookup ], [ 0, %if.end ], [ 0, %if.then30 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jmb38x_ms_abort(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %msh1 = getelementptr i8, ptr %t, i32 48
  %0 = ptrtoint ptr %msh1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msh1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jmb38x_ms_abort.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@jmb38x_ms_abort, %do.body7)) #9
          to label %if.then [label %do.body7], !srcloc !123

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %t, i32 -124
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jmb38x_ms_abort.__UNIQUE_ID_ddebug263, ptr noundef %dev, ptr noundef nonnull @.str.26) #9
  br label %do.body7

do.body7:                                         ; preds = %if.then, %entry
  %lock = getelementptr i8, ptr %t, i32 -116
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %req = getelementptr i8, ptr %t, i32 52
  %6 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %req, align 4
  %tobool15.not = icmp eq ptr %7, null
  br i1 %tobool15.not, label %do.body7.if.end18_crit_edge, label %if.then16

do.body7.if.end18_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then16:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  %error = getelementptr inbounds %struct.memstick_request, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -62, ptr %error, align 4
  tail call fastcc void @jmb38x_ms_complete_cmd(ptr noundef %1, i32 noundef 0)
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %do.body7.if.end18_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call10) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jmb38x_ms_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.memstick_host, ptr %dev_id, i32 0, i32 11
  %lock = getelementptr inbounds %struct.memstick_host, ptr %dev_id, i32 1, i32 0, i32 1, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %addr = getelementptr inbounds %struct.memstick_host, ptr %dev_id, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 36
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !125
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !136
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jmb38x_ms_isr.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@jmb38x_ms_isr, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !123

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jmb38x_ms_isr.__UNIQUE_ID_ddebug260, ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef %3) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %8 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %2, label %if.end11 [
    i32 0, label %do.end.cleanup_crit_edge
    i32 -1, label %do.end.cleanup_crit_edge223
  ]

do.end.cleanup_crit_edge223:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %do.end
  %req = getelementptr inbounds %struct.memstick_host, ptr %dev_id, i32 1, i32 4, i32 0, i32 7
  %9 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %req, align 4
  %tobool12.not = icmp eq ptr %10, null
  br i1 %tobool12.not, label %if.end11.if.end118_crit_edge, label %if.then13

if.end11.if.end118_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end118

if.then13:                                        ; preds = %if.end11
  %and = and i32 %3, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %if.else49, label %if.then15

if.then15:                                        ; preds = %if.then13
  %and16 = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  %error = getelementptr inbounds %struct.memstick_request, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -84, ptr %error, align 4
  br label %if.end118

if.else:                                          ; preds = %if.then15
  %and20 = and i32 %3, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.else44, label %do.body23

do.body23:                                        ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jmb38x_ms_isr.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@jmb38x_ms_isr, %do.end43)) #9
          to label %if.then37 [label %do.end43], !srcloc !123

if.then37:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %private.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %dev40 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jmb38x_ms_isr.__UNIQUE_ID_ddebug261, ptr noundef %dev40, ptr noundef nonnull @.str.33) #9
  br label %do.end43

do.end43:                                         ; preds = %if.then37, %do.body23
  tail call fastcc void @jmb38x_ms_complete_cmd(ptr noundef %dev_id, i32 noundef 0)
  br label %if.end118

if.else44:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %error46 = getelementptr inbounds %struct.memstick_request, ptr %10, i32 0, i32 3
  %16 = ptrtoint ptr %error46 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -62, ptr %error46, align 4
  br label %if.end118

if.else49:                                        ; preds = %if.then13
  %cmd_flags = getelementptr inbounds %struct.memstick_host, ptr %dev_id, i32 1, i32 4, i32 0, i32 7, i32 0, i32 1
  %17 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %cmd_flags, align 4
  %19 = and i8 %18, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool51.not = icmp eq i8 %19, 0
  br i1 %tobool51.not, label %if.else60, label %if.then52

if.then52:                                        ; preds = %if.else49
  %and53 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.then52.if.end75_crit_edge, label %if.then52.if.end75.sink.split_crit_edge

if.then52.if.end75.sink.split_crit_edge:          ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75.sink.split

if.then52.if.end75_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

if.else60:                                        ; preds = %if.else49
  %and61 = and i32 %3, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.else60.if.end65_crit_edge, label %if.then63

if.else60.if.end65_crit_edge:                     ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

if.then63:                                        ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @jmb38x_ms_transfer_data(ptr noundef %private.i)
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %if.else60.if.end65_crit_edge
  %and66 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.end65.if.end75_crit_edge, label %if.then68

if.end65.if.end75_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

if.then68:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @jmb38x_ms_transfer_data(ptr noundef %private.i)
  %20 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %cmd_flags, align 4
  br label %if.end75.sink.split

if.end75.sink.split:                              ; preds = %if.then68, %if.then52.if.end75.sink.split_crit_edge
  %.sink222 = phi i8 [ %21, %if.then68 ], [ %18, %if.then52.if.end75.sink.split_crit_edge ]
  %22 = or i8 %.sink222, 2
  %23 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %cmd_flags, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.end75.sink.split, %if.end65.if.end75_crit_edge, %if.then52.if.end75_crit_edge
  %and76 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.end75.if.end118_crit_edge, label %if.then78

if.end75.if.end118_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end118

if.then78:                                        ; preds = %if.end75
  %24 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %cmd_flags, align 4
  %26 = or i8 %25, 1
  store i8 %26, ptr %cmd_flags, align 4
  %27 = and i8 %25, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool86.not = icmp eq i8 %27, 0
  br i1 %tobool86.not, label %if.then78.if.end118_crit_edge, label %if.then87

if.then78.if.end118_crit_edge:                    ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end118

if.then87:                                        ; preds = %if.then78
  %28 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %req, align 4
  %data_dir = getelementptr inbounds %struct.memstick_request, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %data_dir to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load = load i8, ptr %data_dir, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %cmp90 = icmp sgt i8 %bf.load, -1
  br i1 %cmp90, label %if.then92, label %if.then87.if.end110_crit_edge

if.then87.if.end110_crit_edge:                    ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end110

if.then92:                                        ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %addr, align 4
  %add.ptr96 = getelementptr i8, ptr %32, i32 12
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr96) #9, !srcloc !125
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !137
  %io_word = getelementptr inbounds %struct.memstick_host, ptr %dev_id, i32 1, i32 4, i32 0, i32 7, i32 0, i32 1, i32 1
  %35 = ptrtoint ptr %io_word to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %io_word, align 4
  %36 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %addr, align 4
  %add.ptr103 = getelementptr i8, ptr %37, i32 16
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr103) #9, !srcloc !125
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !138
  %arrayidx108 = getelementptr %struct.memstick_host, ptr %dev_id, i32 1, i32 4, i32 0, i32 7, i32 0, i32 2
  %40 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %arrayidx108, align 4
  %io_pos = getelementptr inbounds %struct.jmb38x_ms_host, ptr %private.i, i32 0, i32 13
  %41 = ptrtoint ptr %io_pos to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 8, ptr %io_pos, align 1
  tail call fastcc void @jmb38x_ms_transfer_data(ptr noundef %private.i)
  br label %if.end110

if.end110:                                        ; preds = %if.then92, %if.then87.if.end110_crit_edge
  %42 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %cmd_flags, align 4
  %44 = or i8 %43, 2
  store i8 %44, ptr %cmd_flags, align 4
  br label %if.end118

if.end118:                                        ; preds = %if.end110, %if.then78.if.end118_crit_edge, %if.end75.if.end118_crit_edge, %if.else44, %do.end43, %if.then18, %if.end11.if.end118_crit_edge
  %and119 = and i32 %3, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %tobool120.not = icmp eq i32 %and119, 0
  br i1 %tobool120.not, label %if.end118.do.body144_crit_edge, label %do.body122

if.end118.do.body144_crit_edge:                   ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body144

do.body122:                                       ; preds = %if.end118
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jmb38x_ms_isr.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@jmb38x_ms_isr, %do.end142)) #9
          to label %if.then136 [label %do.end142], !srcloc !123

if.then136:                                       ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %private.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %dev139 = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jmb38x_ms_isr.__UNIQUE_ID_ddebug262, ptr noundef %dev139, ptr noundef nonnull @.str.34) #9
  br label %do.end142

do.end142:                                        ; preds = %if.then136, %do.body122
  tail call void @memstick_detect_change(ptr noundef %dev_id) #9
  br label %do.body144

do.body144:                                       ; preds = %do.end142, %if.end118.do.body144_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !139
  tail call void @arm_heavy_mb() #9
  %49 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %addr, align 4
  %add.ptr148 = getelementptr i8, ptr %50, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr148, i32 %2) #9, !srcloc !121
  %51 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %req, align 4
  %tobool150.not = icmp eq ptr %52, null
  br i1 %tobool150.not, label %do.body144.cleanup_crit_edge, label %land.lhs.true

do.body144.cleanup_crit_edge:                     ; preds = %do.body144
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %do.body144
  %cmd_flags151 = getelementptr inbounds %struct.memstick_host, ptr %dev_id, i32 1, i32 4, i32 0, i32 7, i32 0, i32 1
  %53 = ptrtoint ptr %cmd_flags151 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %cmd_flags151, align 4
  %55 = and i8 %54, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %55)
  %.not = icmp eq i8 %55, 3
  br i1 %.not, label %land.lhs.true.if.then164_crit_edge, label %lor.lhs.false160

land.lhs.true.if.then164_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then164

lor.lhs.false160:                                 ; preds = %land.lhs.true
  %error162 = getelementptr inbounds %struct.memstick_request, ptr %52, i32 0, i32 3
  %56 = ptrtoint ptr %error162 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %error162, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool163.not = icmp eq i32 %57, 0
  br i1 %tobool163.not, label %lor.lhs.false160.cleanup_crit_edge, label %lor.lhs.false160.if.then164_crit_edge

lor.lhs.false160.if.then164_crit_edge:            ; preds = %lor.lhs.false160
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then164

lor.lhs.false160.cleanup_crit_edge:               ; preds = %lor.lhs.false160
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then164:                                       ; preds = %lor.lhs.false160.if.then164_crit_edge, %land.lhs.true.if.then164_crit_edge
  tail call fastcc void @jmb38x_ms_complete_cmd(ptr noundef %dev_id, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.then164, %lor.lhs.false160.cleanup_crit_edge, %do.body144.cleanup_crit_edge, %do.end.cleanup_crit_edge, %do.end.cleanup_crit_edge223
  %retval.0 = phi i32 [ 0, %do.end.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge223 ], [ 1, %if.then164 ], [ 1, %lor.lhs.false160.cleanup_crit_edge ], [ 1, %do.body144.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @memstick_free_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memstick_next_req(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @jmb38x_ms_issue_cmd(ptr noundef %msh) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.memstick_host, ptr %msh, i32 0, i32 11
  %addr = getelementptr inbounds %struct.memstick_host, ptr %msh, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 32
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !140
  %3 = and i32 %2, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.body, label %do.body13

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jmb38x_ms_issue_cmd.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@jmb38x_ms_issue_cmd, %do.end)) #9
          to label %if.then9 [label %do.end], !srcloc !123

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.memstick_host, ptr %msh, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jmb38x_ms_issue_cmd.__UNIQUE_ID_ddebug252, ptr noundef %dev, ptr noundef nonnull @.str.13) #9
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %req = getelementptr inbounds %struct.memstick_host, ptr %msh, i32 1, i32 4, i32 0, i32 7
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req, align 4
  %error = getelementptr inbounds %struct.memstick_request, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -62, ptr %error, align 4
  %7 = load ptr, ptr %req, align 4
  %error11 = getelementptr inbounds %struct.memstick_request, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %error11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %error11, align 4
  br label %cleanup

do.body13:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jmb38x_ms_issue_cmd.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@jmb38x_ms_issue_cmd, %do.body39)) #9
          to label %if.then27 [label %do.body39], !srcloc !123

if.then27:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #11
  %dev28 = getelementptr inbounds %struct.memstick_host, ptr %msh, i32 0, i32 4
  %10 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %addr, align 4
  %add.ptr32 = getelementptr i8, ptr %11, i32 24
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32) #9, !srcloc !125
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !141
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jmb38x_ms_issue_cmd.__UNIQUE_ID_ddebug253, ptr noundef %dev28, ptr noundef nonnull @.str.14, i32 noundef %13) #9
  br label %do.body39

do.body39:                                        ; preds = %if.then27, %do.body13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jmb38x_ms_issue_cmd.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@jmb38x_ms_issue_cmd, %do.body65)) #9
          to label %if.then53 [label %do.body65], !srcloc !123

if.then53:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #11
  %dev54 = getelementptr inbounds %struct.memstick_host, ptr %msh, i32 0, i32 4
  %14 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %addr, align 4
  %add.ptr58 = getelementptr i8, ptr %15, i32 36
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58) #9, !srcloc !125
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !142
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jmb38x_ms_issue_cmd.__UNIQUE_ID_ddebug254, ptr noundef %dev54, ptr noundef nonnull @.str.15, i32 noundef %17) #9
  br label %do.body65

do.body65:                                        ; preds = %if.then53, %do.body39
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jmb38x_ms_issue_cmd.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@jmb38x_ms_issue_cmd, %do.end90)) #9
          to label %if.then79 [label %do.end90], !srcloc !123

if.then79:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #11
  %dev80 = getelementptr inbounds %struct.memstick_host, ptr %msh, i32 0, i32 4
  %18 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %addr, align 4
  %add.ptr84 = getelementptr i8, ptr %19, i32 32
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84) #9, !srcloc !125
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !143
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jmb38x_ms_issue_cmd.__UNIQUE_ID_ddebug255, ptr noundef %dev80, ptr noundef nonnull @.str.16, i32 noundef %21) #9
  br label %do.end90

do.end90:                                         ; preds = %if.then79, %do.body65
  %cmd_flags = getelementptr inbounds %struct.memstick_host, ptr %msh, i32 1, i32 4, i32 0, i32 7, i32 0, i32 1
  %22 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %cmd_flags, align 4
  %block_pos = getelementptr inbounds %struct.memstick_host, ptr %msh, i32 1, i32 3, i32 3
  %23 = ptrtoint ptr %block_pos to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %block_pos, align 4
  %io_pos = getelementptr inbounds %struct.jmb38x_ms_host, ptr %private.i, i32 0, i32 13
  %24 = ptrtoint ptr %io_pos to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %io_pos, align 1
  %io_word = getelementptr inbounds %struct.memstick_host, ptr %msh, i32 1, i32 4, i32 0, i32 7, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %io_word to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %io_word, align 4
  %arrayidx92 = getelementptr %struct.memstick_host, ptr %msh, i32 1, i32 4, i32 0, i32 7, i32 0, i32 2
  %26 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %arrayidx92, align 4
  %req93 = getelementptr inbounds %struct.memstick_host, ptr %msh, i32 1, i32 4, i32 0, i32 7
  %27 = ptrtoint ptr %req93 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %req93, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 4
  %conv = zext i8 %30 to i32
  %shl = shl nuw nsw i32 %conv, 16
  %data_dir = getelementptr inbounds %struct.memstick_request, ptr %28, i32 0, i32 1
  %31 = ptrtoint ptr %data_dir to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load = load i8, ptr %data_dir, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %cmp398 = icmp slt i8 %bf.load, 0
  %spec.select.v = select i1 %cmp398, i32 32768, i32 49152
  %spec.select = or i32 %spec.select.v, %shl
  %32 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool103.not = icmp eq i8 %32, 0
  br i1 %tobool103.not, label %do.end90.if.end112_crit_edge, label %if.then104

do.end90.if.end112_crit_edge:                     ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end112

if.then104:                                       ; preds = %do.end90
  %ifmode = getelementptr inbounds %struct.jmb38x_ms_host, ptr %private.i, i32 0, i32 14
  %33 = ptrtoint ptr %ifmode to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ifmode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp106 = icmp eq i8 %34, 0
  br i1 %cmp106, label %if.then108, label %if.else

if.then108:                                       ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #11
  %or109 = or i32 %spec.select, 2048
  br label %if.end112

if.else:                                          ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #11
  %or110 = or i32 %spec.select, 8192
  br label %if.end112

if.end112:                                        ; preds = %if.else, %if.then108, %do.end90.if.end112_crit_edge
  %cmd.1 = phi i32 [ %or109, %if.then108 ], [ %or110, %if.else ], [ %spec.select, %do.end90.if.end112_crit_edge ]
  %35 = load i8, ptr @no_dma, align 1, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool113.not = icmp eq i8 %35, 0
  br i1 %tobool113.not, label %if.then114, label %if.end112.if.end119_crit_edge

if.end112.if.end119_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end119

if.then114:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 8, ptr %cmd_flags, align 4
  br label %if.end119

if.end119:                                        ; preds = %if.then114, %if.end112.if.end119_crit_edge
  %37 = ptrtoint ptr %req93 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %req93, align 4
  %long_data = getelementptr inbounds %struct.memstick_request, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %long_data to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load121 = load i8, ptr %long_data, align 1
  %40 = and i8 %bf.load121, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool124.not = icmp eq i8 %40, 0
  br i1 %tobool124.not, label %if.else127, label %if.then125

if.then125:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #11
  %length = getelementptr inbounds %struct.memstick_request, ptr %38, i32 0, i32 4, i32 0, i32 2
  %41 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %length, align 4
  br label %if.end135

if.else127:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #11
  %43 = getelementptr inbounds %struct.memstick_request, ptr %38, i32 0, i32 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %43, align 4
  %conv130 = zext i8 %45 to i32
  %46 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %cmd_flags, align 4
  %48 = and i8 %47, -9
  store i8 %48, ptr %cmd_flags, align 4
  br label %if.end135

if.end135:                                        ; preds = %if.else127, %if.then125
  %data_len.0 = phi i32 [ %42, %if.then125 ], [ %conv130, %if.else127 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %data_len.0)
  %cmp136 = icmp ult i32 %data_len.0, 9
  br i1 %cmp136, label %if.then138, label %if.end135.if.end150_crit_edge

if.end135.if.end150_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end150

if.then138:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #11
  %and139 = and i32 %cmd.1, -32784
  %49 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %cmd_flags, align 4
  %or145 = or i32 %data_len.0, %and139
  %51 = and i8 %50, -13
  %52 = or i8 %51, 4
  store i8 %52, ptr %cmd_flags, align 4
  br label %if.end150

if.end150:                                        ; preds = %if.then138, %if.end135.if.end150_crit_edge
  %cmd.2 = phi i32 [ %or145, %if.then138 ], [ %cmd.1, %if.end135.if.end150_crit_edge ]
  %53 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %cmd_flags, align 4
  %conv152 = zext i8 %54 to i32
  %and153 = and i32 %conv152, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and153)
  %tobool154.not = icmp eq i32 %and153, 0
  br i1 %tobool154.not, label %if.else193, label %if.then155

if.then155:                                       ; preds = %if.end150
  %55 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %private.i, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %dev156 = getelementptr inbounds %struct.pci_dev, ptr %58, i32 0, i32 44
  %59 = ptrtoint ptr %req93 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %req93, align 4
  %61 = getelementptr inbounds %struct.memstick_request, ptr %60, i32 0, i32 4
  %data_dir159 = getelementptr inbounds %struct.memstick_request, ptr %60, i32 0, i32 1
  %62 = ptrtoint ptr %data_dir159 to i32
  call void @__asan_load1_noabort(i32 %62)
  %bf.load160 = load i8, ptr %data_dir159, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load160)
  %cmp163 = icmp sgt i8 %bf.load160, -1
  %cond = select i1 %cmp163, i32 2, i32 1
  %call165 = tail call i32 @dma_map_sg_attrs(ptr noundef %dev156, ptr noundef %61, i32 noundef 1, i32 noundef %cond, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call165)
  %cmp166.not = icmp eq i32 %call165, 1
  %63 = ptrtoint ptr %req93 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %req93, align 4
  br i1 %cmp166.not, label %if.end173, label %if.then168

if.then168:                                       ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #11
  %error170 = getelementptr inbounds %struct.memstick_request, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %error170 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -12, ptr %error170, align 4
  %66 = ptrtoint ptr %req93 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %req93, align 4
  %error172 = getelementptr inbounds %struct.memstick_request, ptr %67, i32 0, i32 3
  %68 = ptrtoint ptr %error172 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %error172, align 4
  br label %cleanup

if.end173:                                        ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #11
  %dma_length = getelementptr inbounds %struct.memstick_request, ptr %64, i32 0, i32 4, i32 0, i32 4
  %70 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %dma_length, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !145
  tail call void @arm_heavy_mb() #9
  %72 = ptrtoint ptr %req93 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %req93, align 4
  %dma_address = getelementptr inbounds %struct.memstick_request, ptr %73, i32 0, i32 4, i32 0, i32 3
  %74 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %dma_address, align 4
  %76 = tail call i32 @llvm.bswap.i32(i32 %75)
  %77 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %addr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %76) #9, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !146
  tail call void @arm_heavy_mb() #9
  %and184 = and i32 %71, 4095
  %or185 = or i32 %and184, 65536
  %79 = tail call i32 @llvm.bswap.i32(i32 %or185)
  %80 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %addr, align 4
  %add.ptr187 = getelementptr i8, ptr %81, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr187, i32 %79) #9, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  tail call void @arm_heavy_mb() #9
  %82 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %addr, align 4
  %add.ptr192 = getelementptr i8, ptr %83, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr192, i32 16777216) #9, !srcloc !121
  br label %if.end265

if.else193:                                       ; preds = %if.end150
  %and196 = and i32 %conv152, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and196)
  %tobool197.not = icmp eq i32 %and196, 0
  br i1 %tobool197.not, label %do.body199, label %if.else232

do.body199:                                       ; preds = %if.else193
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !148
  tail call void @arm_heavy_mb() #9
  %and202 = and i32 %data_len.0, 4095
  %or203 = or i32 %and202, 65536
  %84 = tail call i32 @llvm.bswap.i32(i32 %or203)
  %85 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %addr, align 4
  %add.ptr205 = getelementptr i8, ptr %86, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr205, i32 %84) #9, !srcloc !121
  %87 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %addr, align 4
  %add.ptr209 = getelementptr i8, ptr %88, i32 40
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr209) #9, !srcloc !125
  %90 = tail call i32 @llvm.bswap.i32(i32 %89)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !149
  %91 = ptrtoint ptr %req93 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %req93, align 4
  %data_dir214 = getelementptr inbounds %struct.memstick_request, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %data_dir214 to i32
  call void @__asan_load1_noabort(i32 %93)
  %bf.load215 = load i8, ptr %data_dir214, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load215)
  %cmp218 = icmp sgt i8 %bf.load215, -1
  %cond220 = select i1 %cmp218, i32 64, i32 128
  %or221 = or i32 %cond220, %90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !150
  tail call void @arm_heavy_mb() #9
  %94 = tail call i32 @llvm.bswap.i32(i32 %or221)
  %95 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %addr, align 4
  %add.ptr226 = getelementptr i8, ptr %96, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr226, i32 %94) #9, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !151
  tail call void @arm_heavy_mb() #9
  %97 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %addr, align 4
  %add.ptr231 = getelementptr i8, ptr %98, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr231, i32 %94) #9, !srcloc !121
  br label %if.end265

if.else232:                                       ; preds = %if.else193
  %and233 = and i32 %cmd.2, -32784
  %or236 = or i8 %54, 4
  %99 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %or236, ptr %cmd_flags, align 4
  %and238 = and i32 %data_len.0, 15
  %or239 = or i32 %and233, %and238
  %100 = ptrtoint ptr %req93 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %req93, align 4
  %data_dir241 = getelementptr inbounds %struct.memstick_request, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %data_dir241 to i32
  call void @__asan_load1_noabort(i32 %102)
  %bf.load242 = load i8, ptr %data_dir241, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load242)
  %cmp245 = icmp slt i8 %bf.load242, 0
  br i1 %cmp245, label %if.then247, label %if.else232.if.end265_crit_edge

if.else232.if.end265_crit_edge:                   ; preds = %if.else232
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end265

if.then247:                                       ; preds = %if.else232
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @jmb38x_ms_transfer_data(ptr noundef %private.i)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  %103 = ptrtoint ptr %io_word to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %io_word, align 4
  %105 = tail call i32 @llvm.bswap.i32(i32 %104)
  %106 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %addr, align 4
  %add.ptr255 = getelementptr i8, ptr %107, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr255, i32 %105) #9, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  tail call void @arm_heavy_mb() #9
  %108 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx92, align 4
  %110 = tail call i32 @llvm.bswap.i32(i32 %109)
  %111 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %addr, align 4
  %add.ptr262 = getelementptr i8, ptr %112, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr262, i32 %110) #9, !srcloc !121
  br label %if.end265

if.end265:                                        ; preds = %if.then247, %if.else232.if.end265_crit_edge, %do.body199, %if.end173
  %cmd.3 = phi i32 [ %cmd.2, %if.end173 ], [ %or239, %if.then247 ], [ %or239, %if.else232.if.end265_crit_edge ], [ %cmd.2, %do.body199 ]
  %data_len.1 = phi i32 [ %71, %if.end173 ], [ %data_len.0, %if.then247 ], [ %data_len.0, %if.else232.if.end265_crit_edge ], [ %data_len.0, %do.body199 ]
  %timer = getelementptr inbounds %struct.memstick_host, ptr %msh, i32 1, i32 3, i32 3, i32 1, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %113 = load volatile i32, ptr @jiffies, align 128
  %timeout_jiffies = getelementptr inbounds %struct.memstick_host, ptr %msh, i32 1, i32 3, i32 3, i32 1
  %114 = ptrtoint ptr %timeout_jiffies to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %timeout_jiffies, align 4
  %add = add i32 %115, %113
  %call266 = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %add) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  tail call void @arm_heavy_mb() #9
  %116 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %addr, align 4
  %add.ptr273 = getelementptr i8, ptr %117, i32 24
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr273) #9, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !155
  %119 = or i32 %118, 262144
  %120 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %addr, align 4
  %add.ptr279 = getelementptr i8, ptr %121, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr279, i32 %119) #9, !srcloc !121
  %122 = ptrtoint ptr %req93 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %req93, align 4
  %error281 = getelementptr inbounds %struct.memstick_request, ptr %123, i32 0, i32 3
  %124 = ptrtoint ptr %error281 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 0, ptr %error281, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !156
  tail call void @arm_heavy_mb() #9
  %125 = tail call i32 @llvm.bswap.i32(i32 %cmd.3)
  %126 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %addr, align 4
  %add.ptr286 = getelementptr i8, ptr %127, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr286, i32 %125) #9, !srcloc !121
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jmb38x_ms_issue_cmd.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@jmb38x_ms_issue_cmd, %cleanup)) #9
          to label %if.then301 [label %cleanup], !srcloc !123

if.then301:                                       ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #11
  %dev302 = getelementptr inbounds %struct.memstick_host, ptr %msh, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jmb38x_ms_issue_cmd.__UNIQUE_ID_ddebug256, ptr noundef %dev302, ptr noundef nonnull @.str.17, i32 noundef %cmd.3, i32 noundef %data_len.1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then301, %if.end265, %if.then168, %do.end
  %retval.0 = phi i32 [ %69, %if.then168 ], [ %9, %do.end ], [ 0, %if.then301 ], [ 0, %if.end265 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @jmb38x_ms_transfer_data(ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %req = getelementptr inbounds %struct.jmb38x_ms_host, ptr %host, i32 0, i32 11
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  %long_data = getelementptr inbounds %struct.memstick_request, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %long_data to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %long_data, align 1
  %3 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %length2 = getelementptr inbounds %struct.memstick_request, ptr %1, i32 0, i32 4, i32 0, i32 2
  %4 = ptrtoint ptr %length2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length2, align 4
  %block_pos = getelementptr inbounds %struct.jmb38x_ms_host, ptr %host, i32 0, i32 7
  %6 = ptrtoint ptr %block_pos to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %block_pos, align 4
  %sub = sub i32 %5, %7
  %offset = getelementptr inbounds %struct.memstick_request, ptr %1, i32 0, i32 4, i32 0, i32 1
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset, align 4
  %add = add i32 %9, %7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %10 = getelementptr inbounds %struct.memstick_request, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 4
  %conv = zext i8 %12 to i32
  %block_pos6 = getelementptr inbounds %struct.jmb38x_ms_host, ptr %host, i32 0, i32 7
  %13 = ptrtoint ptr %block_pos6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %block_pos6, align 4
  %sub7 = sub i32 %conv, %14
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %off.0 = phi i32 [ %add, %if.then ], [ 0, %if.else ]
  %length.0 = phi i32 [ %sub, %if.then ], [ %sub7, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length.0)
  %tobool8.not71 = icmp eq i32 %length.0, 0
  br i1 %tobool8.not71, label %if.end.land.lhs.true_crit_edge, label %while.body.lr.ph

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

while.body.lr.ph:                                 ; preds = %if.end
  %block_pos40 = getelementptr inbounds %struct.jmb38x_ms_host, ptr %host, i32 0, i32 7
  %cmd_flags65 = getelementptr inbounds %struct.jmb38x_ms_host, ptr %host, i32 0, i32 12
  %io_pos.i41 = getelementptr inbounds %struct.jmb38x_ms_host, ptr %host, i32 0, i32 13
  %io_word.i42 = getelementptr inbounds %struct.jmb38x_ms_host, ptr %host, i32 0, i32 15
  %arrayidx18.i = getelementptr %struct.jmb38x_ms_host, ptr %host, i32 0, i32 15, i32 1
  %addr.i32 = getelementptr inbounds %struct.jmb38x_ms_host, ptr %host, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %length.174 = phi i32 [ %length.0, %while.body.lr.ph ], [ %sub127, %cleanup.while.body_crit_edge ]
  %off.173 = phi i32 [ %off.0, %while.body.lr.ph ], [ %add128, %cleanup.while.body_crit_edge ]
  %flags.072 = phi i32 [ 0, %while.body.lr.ph ], [ %flags.1, %cleanup.while.body_crit_edge ]
  %15 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %req, align 4
  %long_data10 = getelementptr inbounds %struct.memstick_request, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %long_data10 to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load11 = load i8, ptr %long_data10, align 1
  %18 = and i8 %bf.load11, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool14.not = icmp eq i8 %18, 0
  %19 = getelementptr inbounds %struct.memstick_request, ptr %16, i32 0, i32 4
  br i1 %tobool14.not, label %if.else38, label %if.then15

if.then15:                                        ; preds = %while.body
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %and.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !157

do.body2.i:                                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #9, !srcloc !158
  unreachable

sg_page.exit:                                     ; preds = %if.then15
  %and.i = and i32 %21, -4
  %22 = inttoptr i32 %and.i to ptr
  %shr = lshr i32 %off.173, 12
  %add.ptr = getelementptr %struct.page, ptr %22, i32 %shr
  %and = and i32 %off.173, 4095
  %sub17 = sub nuw nsw i32 4096, %and
  %23 = tail call i32 @llvm.umin.i32(i32 %sub17, i32 %length.174)
  %24 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !159
  %and.i1 = and i32 %24, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1)
  %tobool31.not = icmp eq i32 %and.i1, 0
  br i1 %tobool31.not, label %if.then32, label %sg_page.exit.do.end35_crit_edge

sg_page.exit.do.end35_crit_edge:                  ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end35

if.then32:                                        ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_off() #9
  br label %do.end35

do.end35:                                         ; preds = %if.then32, %sg_page.exit.do.end35_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %25 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %25, 512
  %26 = tail call i32 @llvm.read_register.i32(metadata !110) #9
  %and.i.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %29, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !160
  %30 = tail call i32 @llvm.read_register.i32(metadata !110) #9
  %and.i.i.i1.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 213
  %34 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %35, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !161
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr, i32 noundef %or.i) #9
  %add.ptr37 = getelementptr i8, ptr %call.i.i, i32 %and
  br label %if.end47

if.else38:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %data = getelementptr inbounds %struct.anon.73, ptr %19, i32 0, i32 1
  %36 = ptrtoint ptr %block_pos40 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %block_pos40, align 4
  %add.ptr41 = getelementptr i8, ptr %data, i32 %37
  %38 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %19, align 4
  %conv44 = zext i8 %39 to i32
  %sub46 = sub i32 %conv44, %37
  br label %if.end47

if.end47:                                         ; preds = %if.else38, %do.end35
  %p_off.0 = phi i32 [ %and, %do.end35 ], [ -1, %if.else38 ]
  %flags.1 = phi i32 [ %24, %do.end35 ], [ %flags.072, %if.else38 ]
  %buf.0 = phi ptr [ %add.ptr37, %do.end35 ], [ %add.ptr41, %if.else38 ]
  %p_cnt.0 = phi i32 [ %23, %do.end35 ], [ %sub46, %if.else38 ]
  %40 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %req, align 4
  %data_dir = getelementptr inbounds %struct.memstick_request, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %data_dir to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load49 = load i8, ptr %data_dir, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load49)
  %cmp52 = icmp slt i8 %bf.load49, 0
  %43 = ptrtoint ptr %cmd_flags65 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %cmd_flags65, align 4
  %45 = and i8 %44, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool57.not = icmp eq i8 %45, 0
  %46 = ptrtoint ptr %io_pos.i41 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %io_pos.i41, align 1
  br i1 %cmp52, label %if.then54, label %if.else64

if.then54:                                        ; preds = %if.end47
  br i1 %tobool57.not, label %cond.true58, label %cond.false60

cond.true58:                                      ; preds = %if.then54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not.i = icmp eq i8 %47, 0
  br i1 %tobool.not.i, label %cond.true58.if.else.i_crit_edge, label %while.cond.preheader.i

cond.true58.if.else.i_crit_edge:                  ; preds = %cond.true58
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

while.cond.preheader.i:                           ; preds = %cond.true58
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %47)
  %cmp126.i = icmp ugt i8 %47, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %p_cnt.0)
  %tobool3.not127.i = icmp eq i32 %p_cnt.0, 0
  %or.cond125128.i = or i1 %tobool3.not127.i, %cmp126.i
  br i1 %or.cond125128.i, label %while.cond.preheader.i.if.end.i_crit_edge, label %while.body.i

while.cond.preheader.i.if.end.i_crit_edge:        ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

while.body.i:                                     ; preds = %while.cond.preheader.i
  %48 = zext i8 %47 to i32
  %49 = ptrtoint ptr %buf.0 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %buf.0, align 1
  %conv4.i = zext i8 %50 to i32
  %mul.i = shl nuw nsw i32 %48, 3
  %shl.i = shl nuw i32 %conv4.i, %mul.i
  %51 = ptrtoint ptr %io_word.i42 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %io_word.i42, align 4
  %or.i2 = or i32 %shl.i, %52
  store i32 %or.i2, ptr %io_word.i42, align 4
  %indvars.iv.next.i = add nuw nsw i32 %48, 1
  %53 = trunc i32 %indvars.iv.next.i to i8
  %54 = ptrtoint ptr %io_pos.i41 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %io_pos.i41, align 1
  %dec.i = add i32 %p_cnt.0, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %47)
  %cmp.i = icmp ugt i8 %47, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool3.not.i = icmp eq i32 %dec.i, 0
  %or.cond125.i = select i1 %cmp.i, i1 true, i1 %tobool3.not.i
  br i1 %or.cond125.i, label %while.body.i.if.end.i.loopexit_crit_edge, label %while.body.i.1

while.body.i.if.end.i.loopexit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.loopexit

while.body.i.1:                                   ; preds = %while.body.i
  %arrayidx.i.1 = getelementptr i8, ptr %buf.0, i32 1
  %55 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx.i.1, align 1
  %conv4.i.1 = zext i8 %56 to i32
  %mul.i.1 = shl nuw nsw i32 %indvars.iv.next.i, 3
  %shl.i.1 = shl nuw i32 %conv4.i.1, %mul.i.1
  %57 = ptrtoint ptr %io_word.i42 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %io_word.i42, align 4
  %or.i2.1 = or i32 %shl.i.1, %58
  store i32 %or.i2.1, ptr %io_word.i42, align 4
  %indvars.iv.next.i.1 = add nuw nsw i32 %48, 2
  %59 = trunc i32 %indvars.iv.next.i.1 to i8
  %60 = ptrtoint ptr %io_pos.i41 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %io_pos.i41, align 1
  %dec.i.1 = add i32 %p_cnt.0, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %47)
  %cmp.i.1 = icmp ugt i8 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.1)
  %tobool3.not.i.1 = icmp eq i32 %dec.i.1, 0
  %or.cond125.i.1 = select i1 %cmp.i.1, i1 true, i1 %tobool3.not.i.1
  br i1 %or.cond125.i.1, label %while.body.i.1.if.end.i.loopexit_crit_edge, label %while.body.i.2

while.body.i.1.if.end.i.loopexit_crit_edge:       ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.loopexit

while.body.i.2:                                   ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.2 = getelementptr i8, ptr %buf.0, i32 2
  %61 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx.i.2, align 1
  %conv4.i.2 = zext i8 %62 to i32
  %mul.i.2 = shl nuw nsw i32 %indvars.iv.next.i.1, 3
  %shl.i.2 = shl nuw i32 %conv4.i.2, %mul.i.2
  %63 = ptrtoint ptr %io_word.i42 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %io_word.i42, align 4
  %or.i2.2 = or i32 %shl.i.2, %64
  store i32 %or.i2.2, ptr %io_word.i42, align 4
  %indvars.iv.next.i.2 = add nuw nsw i32 %48, 3
  %65 = trunc i32 %indvars.iv.next.i.2 to i8
  %66 = ptrtoint ptr %io_pos.i41 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %io_pos.i41, align 1
  %dec.i.2 = add i32 %p_cnt.0, -3
  br label %if.end.i.loopexit

if.end.i.loopexit:                                ; preds = %while.body.i.2, %while.body.i.1.if.end.i.loopexit_crit_edge, %while.body.i.if.end.i.loopexit_crit_edge
  %inc.i.lcssa = phi i32 [ 1, %while.body.i.if.end.i.loopexit_crit_edge ], [ 2, %while.body.i.1.if.end.i.loopexit_crit_edge ], [ 3, %while.body.i.2 ]
  %indvars.iv.next.i.lcssa = phi i32 [ %indvars.iv.next.i, %while.body.i.if.end.i.loopexit_crit_edge ], [ %indvars.iv.next.i.1, %while.body.i.1.if.end.i.loopexit_crit_edge ], [ %indvars.iv.next.i.2, %while.body.i.2 ]
  %dec.i.lcssa = phi i32 [ %dec.i, %while.body.i.if.end.i.loopexit_crit_edge ], [ %dec.i.1, %while.body.i.1.if.end.i.loopexit_crit_edge ], [ %dec.i.2, %while.body.i.2 ]
  %67 = trunc i32 %indvars.iv.next.i.lcssa to i8
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i.loopexit, %while.cond.preheader.i.if.end.i_crit_edge
  %.pr.i = phi i8 [ %47, %while.cond.preheader.i.if.end.i_crit_edge ], [ %67, %if.end.i.loopexit ]
  %off.0.lcssa.i = phi i32 [ 0, %while.cond.preheader.i.if.end.i_crit_edge ], [ %inc.i.lcssa, %if.end.i.loopexit ]
  %length.addr.0.lcssa.i = phi i32 [ %p_cnt.0, %while.cond.preheader.i.if.end.i_crit_edge ], [ %dec.i.lcssa, %if.end.i.loopexit ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %.pr.i)
  %cmp12.i = icmp eq i8 %.pr.i, 4
  br i1 %cmp12.i, label %land.lhs.true.i, label %if.end.i.if.else.i_crit_edge

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %68 = ptrtoint ptr %addr.i32 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %addr.i32, align 4
  %add.ptr.i = getelementptr i8, ptr %69, i32 32
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !162
  %71 = and i32 %70, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool15.not.i = icmp eq i32 %71, 0
  br i1 %tobool15.not.i, label %do.body.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

do.body.i:                                        ; preds = %land.lhs.true.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  tail call void @arm_heavy_mb() #9
  %72 = ptrtoint ptr %io_word.i42 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %io_word.i42, align 4
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #9
  %75 = ptrtoint ptr %addr.i32 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %addr.i32, align 4
  %add.ptr20.i = getelementptr i8, ptr %76, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 %74) #9, !srcloc !121
  %77 = ptrtoint ptr %io_pos.i41 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %io_pos.i41, align 1
  %78 = ptrtoint ptr %io_word.i42 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %io_word.i42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length.addr.0.lcssa.i)
  %tobool29.not.old.i = icmp eq i32 %length.addr.0.lcssa.i, 0
  br i1 %tobool29.not.old.i, label %do.body.i.if.end75_crit_edge, label %do.body.i.while.cond32.preheader.i_crit_edge

do.body.i.while.cond32.preheader.i_crit_edge:     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond32.preheader.i

do.body.i.if.end75_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end.i.if.else.i_crit_edge, %cond.true58.if.else.i_crit_edge
  %length.addr.1124.i = phi i32 [ %length.addr.0.lcssa.i, %land.lhs.true.i.if.else.i_crit_edge ], [ %length.addr.0.lcssa.i, %if.end.i.if.else.i_crit_edge ], [ %p_cnt.0, %cond.true58.if.else.i_crit_edge ]
  %off.1123.i = phi i32 [ %off.0.lcssa.i, %land.lhs.true.i.if.else.i_crit_edge ], [ %off.0.lcssa.i, %if.end.i.if.else.i_crit_edge ], [ 0, %cond.true58.if.else.i_crit_edge ]
  %79 = ptrtoint ptr %io_pos.i41 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %io_pos.i41, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool25.not.i = icmp ne i8 %80, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length.addr.1124.i)
  %tobool29.not.i = icmp eq i32 %length.addr.1124.i, 0
  %or.cond119.i = select i1 %tobool25.not.i, i1 true, i1 %tobool29.not.i
  br i1 %or.cond119.i, label %if.else.i.if.end75_crit_edge, label %if.else.i.while.cond32.preheader.i_crit_edge

if.else.i.while.cond32.preheader.i_crit_edge:     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond32.preheader.i

if.else.i.if.end75_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

while.cond32.preheader.i:                         ; preds = %if.else.i.while.cond32.preheader.i_crit_edge, %do.body.i.while.cond32.preheader.i_crit_edge
  %off.2.ph.i = phi i32 [ %off.1123.i, %if.else.i.while.cond32.preheader.i_crit_edge ], [ %off.0.lcssa.i, %do.body.i.while.cond32.preheader.i_crit_edge ]
  %length.addr.2.ph.i = phi i32 [ %length.addr.1124.i, %if.else.i.while.cond32.preheader.i_crit_edge ], [ %length.addr.0.lcssa.i, %do.body.i.while.cond32.preheader.i_crit_edge ]
  %81 = ptrtoint ptr %addr.i32 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %addr.i32, align 4
  %add.ptr36132.i = getelementptr i8, ptr %82, i32 32
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36132.i) #9, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !164
  %84 = and i32 %83, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool41.not133.i = icmp ne i32 %84, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %length.addr.2.ph.i)
  %cmp43134.i = icmp ult i32 %length.addr.2.ph.i, 4
  %or.cond135.i = select i1 %tobool41.not133.i, i1 true, i1 %cmp43134.i
  br i1 %or.cond135.i, label %while.cond32.preheader.i.while.end50.i_crit_edge, label %while.cond32.preheader.i.if.end46.i_crit_edge

while.cond32.preheader.i.if.end46.i_crit_edge:    ; preds = %while.cond32.preheader.i
  br label %if.end46.i

while.cond32.preheader.i.while.end50.i_crit_edge: ; preds = %while.cond32.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end50.i

if.end46.i:                                       ; preds = %if.end46.i.if.end46.i_crit_edge, %while.cond32.preheader.i.if.end46.i_crit_edge
  %length.addr.2137.i = phi i32 [ %sub.i, %if.end46.i.if.end46.i_crit_edge ], [ %length.addr.2.ph.i, %while.cond32.preheader.i.if.end46.i_crit_edge ]
  %off.2136.i = phi i32 [ %add.i, %if.end46.i.if.end46.i_crit_edge ], [ %off.2.ph.i, %while.cond32.preheader.i.if.end46.i_crit_edge ]
  %add.ptr47.i = getelementptr i8, ptr %buf.0, i32 %off.2136.i
  %85 = ptrtoint ptr %add.ptr47.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %add.ptr47.i, align 4
  %87 = ptrtoint ptr %addr.i32 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %addr.i32, align 4
  %add.ptr49.i = getelementptr i8, ptr %88, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49.i, i32 %86) #9, !srcloc !121
  %sub.i = add i32 %length.addr.2137.i, -4
  %add.i = add i32 %off.2136.i, 4
  %89 = ptrtoint ptr %addr.i32 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %addr.i32, align 4
  %add.ptr36.i = getelementptr i8, ptr %90, i32 32
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36.i) #9, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !164
  %92 = and i32 %91, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool41.not.i = icmp ne i32 %92, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i)
  %cmp43.i = icmp ult i32 %sub.i, 4
  %or.cond.i = select i1 %tobool41.not.i, i1 true, i1 %cmp43.i
  br i1 %or.cond.i, label %if.end46.i.while.end50.i_crit_edge, label %if.end46.i.if.end46.i_crit_edge

if.end46.i.if.end46.i_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46.i

if.end46.i.while.end50.i_crit_edge:               ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end50.i

while.end50.i:                                    ; preds = %if.end46.i.while.end50.i_crit_edge, %while.cond32.preheader.i.while.end50.i_crit_edge
  %off.2.lcssa.i = phi i32 [ %off.2.ph.i, %while.cond32.preheader.i.while.end50.i_crit_edge ], [ %add.i, %if.end46.i.while.end50.i_crit_edge ]
  %length.addr.2.lcssa.i = phi i32 [ %length.addr.2.ph.i, %while.cond32.preheader.i.while.end50.i_crit_edge ], [ %sub.i, %if.end46.i.while.end50.i_crit_edge ]
  %93 = zext i32 %length.addr.2.lcssa.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %length.addr.2.lcssa.i, label %while.end50.i.sw.epilog.i_crit_edge [
    i32 3, label %sw.bb.i
    i32 2, label %while.end50.i.sw.bb60.i_crit_edge
    i32 1, label %while.end50.i.sw.bb70.i_crit_edge
  ]

while.end50.i.sw.bb70.i_crit_edge:                ; preds = %while.end50.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb70.i

while.end50.i.sw.bb60.i_crit_edge:                ; preds = %while.end50.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb60.i

while.end50.i.sw.epilog.i_crit_edge:              ; preds = %while.end50.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %while.end50.i
  call void @__sanitizer_cov_trace_pc() #11
  %add51.i = add i32 %off.2.lcssa.i, 2
  %arrayidx52.i = getelementptr i8, ptr %buf.0, i32 %add51.i
  %94 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx52.i, align 1
  %conv53.i = zext i8 %95 to i32
  %shl54.i = shl nuw nsw i32 %conv53.i, 16
  %96 = ptrtoint ptr %io_word.i42 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %io_word.i42, align 4
  %or57.i = or i32 %shl54.i, %97
  store i32 %or57.i, ptr %io_word.i42, align 4
  %98 = ptrtoint ptr %io_pos.i41 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %io_pos.i41, align 1
  %inc59.i = add i8 %99, 1
  store i8 %inc59.i, ptr %io_pos.i41, align 1
  br label %sw.bb60.i

sw.bb60.i:                                        ; preds = %sw.bb.i, %while.end50.i.sw.bb60.i_crit_edge
  %add61.i = add i32 %off.2.lcssa.i, 1
  %arrayidx62.i = getelementptr i8, ptr %buf.0, i32 %add61.i
  %100 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx62.i, align 1
  %conv63.i = zext i8 %101 to i32
  %shl64.i = shl nuw nsw i32 %conv63.i, 8
  %102 = ptrtoint ptr %io_word.i42 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %io_word.i42, align 4
  %or67.i = or i32 %shl64.i, %103
  store i32 %or67.i, ptr %io_word.i42, align 4
  %104 = ptrtoint ptr %io_pos.i41 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %io_pos.i41, align 1
  %inc69.i = add i8 %105, 1
  store i8 %inc69.i, ptr %io_pos.i41, align 1
  br label %sw.bb70.i

sw.bb70.i:                                        ; preds = %sw.bb60.i, %while.end50.i.sw.bb70.i_crit_edge
  %arrayidx71.i = getelementptr i8, ptr %buf.0, i32 %off.2.lcssa.i
  %106 = ptrtoint ptr %arrayidx71.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx71.i, align 1
  %conv72.i = zext i8 %107 to i32
  %108 = ptrtoint ptr %io_word.i42 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %io_word.i42, align 4
  %or75.i = or i32 %109, %conv72.i
  store i32 %or75.i, ptr %io_word.i42, align 4
  %110 = ptrtoint ptr %io_pos.i41 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %io_pos.i41, align 1
  %inc77.i = add i8 %111, 1
  store i8 %inc77.i, ptr %io_pos.i41, align 1
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb70.i, %while.end50.i.sw.epilog.i_crit_edge
  %112 = ptrtoint ptr %io_pos.i41 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %io_pos.i41, align 1
  %conv79.i = zext i8 %113 to i32
  %add80.i = add i32 %off.2.lcssa.i, %conv79.i
  br label %if.end75

cond.false60:                                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %47)
  %cmp66.i = icmp ugt i8 %47, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %p_cnt.0)
  %tobool.not67.i = icmp eq i32 %p_cnt.0, 0
  %or.cond68.i = or i1 %tobool.not67.i, %cmp66.i
  br i1 %or.cond68.i, label %cond.false60.while.end.i_crit_edge, label %while.body.i17

cond.false60.while.end.i_crit_edge:               ; preds = %cond.false60
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.body.i17:                                   ; preds = %cond.false60
  %114 = zext i8 %47 to i32
  %mul.i7 = shl nuw nsw i32 %114, 3
  %shl.i8 = shl nuw i32 255, %mul.i7
  %neg.i = xor i32 %shl.i8, -1
  %115 = ptrtoint ptr %io_word.i42 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %io_word.i42, align 4
  %and.i9 = and i32 %116, %neg.i
  store i32 %and.i9, ptr %io_word.i42, align 4
  %117 = ptrtoint ptr %buf.0 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %buf.0, align 1
  %conv5.i = zext i8 %118 to i32
  %shl9.i = shl nuw i32 %conv5.i, %mul.i7
  %or.i11 = or i32 %shl9.i, %and.i9
  store i32 %or.i11, ptr %io_word.i42, align 4
  %indvars.iv.next.i12 = add nuw nsw i32 %114, 1
  %119 = trunc i32 %indvars.iv.next.i12 to i8
  %120 = ptrtoint ptr %io_pos.i41 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %119, ptr %io_pos.i41, align 1
  %dec.i13 = add i32 %p_cnt.0, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %47)
  %cmp.i14 = icmp ugt i8 %47, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i13)
  %tobool.not.i15 = icmp eq i32 %dec.i13, 0
  %or.cond.i16 = select i1 %cmp.i14, i1 true, i1 %tobool.not.i15
  br i1 %or.cond.i16, label %while.body.i17.while.end.i_crit_edge, label %while.body.i17.1

while.body.i17.while.end.i_crit_edge:             ; preds = %while.body.i17
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.body.i17.1:                                 ; preds = %while.body.i17
  %mul.i7.1 = shl nuw nsw i32 %indvars.iv.next.i12, 3
  %shl.i8.1 = shl nuw i32 255, %mul.i7.1
  %neg.i.1 = xor i32 %shl.i8.1, -1
  %121 = ptrtoint ptr %io_word.i42 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %io_word.i42, align 4
  %and.i9.1 = and i32 %122, %neg.i.1
  store i32 %and.i9.1, ptr %io_word.i42, align 4
  %arrayidx4.i.1 = getelementptr i8, ptr %buf.0, i32 1
  %123 = ptrtoint ptr %arrayidx4.i.1 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx4.i.1, align 1
  %conv5.i.1 = zext i8 %124 to i32
  %shl9.i.1 = shl nuw i32 %conv5.i.1, %mul.i7.1
  %or.i11.1 = or i32 %shl9.i.1, %and.i9.1
  store i32 %or.i11.1, ptr %io_word.i42, align 4
  %indvars.iv.next.i12.1 = add nuw nsw i32 %114, 2
  %125 = trunc i32 %indvars.iv.next.i12.1 to i8
  %126 = ptrtoint ptr %io_pos.i41 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %125, ptr %io_pos.i41, align 1
  %dec.i13.1 = add i32 %p_cnt.0, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %47)
  %cmp.i14.1 = icmp ugt i8 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i13.1)
  %tobool.not.i15.1 = icmp eq i32 %dec.i13.1, 0
  %or.cond.i16.1 = select i1 %cmp.i14.1, i1 true, i1 %tobool.not.i15.1
  br i1 %or.cond.i16.1, label %while.body.i17.1.while.end.i_crit_edge, label %while.body.i17.2

while.body.i17.1.while.end.i_crit_edge:           ; preds = %while.body.i17.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.body.i17.2:                                 ; preds = %while.body.i17.1
  %mul.i7.2 = shl nuw nsw i32 %indvars.iv.next.i12.1, 3
  %shl.i8.2 = shl nuw i32 255, %mul.i7.2
  %neg.i.2 = xor i32 %shl.i8.2, -1
  %127 = ptrtoint ptr %io_word.i42 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %io_word.i42, align 4
  %and.i9.2 = and i32 %128, %neg.i.2
  store i32 %and.i9.2, ptr %io_word.i42, align 4
  %arrayidx4.i.2 = getelementptr i8, ptr %buf.0, i32 2
  %129 = ptrtoint ptr %arrayidx4.i.2 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx4.i.2, align 1
  %conv5.i.2 = zext i8 %130 to i32
  %shl9.i.2 = shl nuw i32 %conv5.i.2, %mul.i7.2
  %or.i11.2 = or i32 %shl9.i.2, %and.i9.2
  store i32 %or.i11.2, ptr %io_word.i42, align 4
  %indvars.iv.next.i12.2 = add nuw nsw i32 %114, 3
  %131 = trunc i32 %indvars.iv.next.i12.2 to i8
  %132 = ptrtoint ptr %io_pos.i41 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %131, ptr %io_pos.i41, align 1
  %dec.i13.2 = add i32 %p_cnt.0, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cmp.i14.2 = icmp ne i8 %47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i13.2)
  %tobool.not.i15.2 = icmp eq i32 %dec.i13.2, 0
  %or.cond.i16.2 = select i1 %cmp.i14.2, i1 true, i1 %tobool.not.i15.2
  br i1 %or.cond.i16.2, label %while.body.i17.2.while.end.i_crit_edge, label %while.body.i17.3

while.body.i17.2.while.end.i_crit_edge:           ; preds = %while.body.i17.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.body.i17.3:                                 ; preds = %while.body.i17.2
  call void @__sanitizer_cov_trace_pc() #11
  %mul.i7.3 = shl nuw nsw i32 %indvars.iv.next.i12.2, 3
  %shl.i8.3 = shl nuw i32 255, %mul.i7.3
  %neg.i.3 = xor i32 %shl.i8.3, -1
  %133 = ptrtoint ptr %io_word.i42 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %io_word.i42, align 4
  %and.i9.3 = and i32 %134, %neg.i.3
  store i32 %and.i9.3, ptr %io_word.i42, align 4
  %arrayidx4.i.3 = getelementptr i8, ptr %buf.0, i32 3
  %135 = ptrtoint ptr %arrayidx4.i.3 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx4.i.3, align 1
  %conv5.i.3 = zext i8 %136 to i32
  %shl9.i.3 = shl nuw i32 %conv5.i.3, %mul.i7.3
  %or.i11.3 = or i32 %shl9.i.3, %and.i9.3
  store i32 %or.i11.3, ptr %io_word.i42, align 4
  %indvars.iv.next.i12.3 = add i8 %47, 4
  %137 = ptrtoint ptr %io_pos.i41 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %indvars.iv.next.i12.3, ptr %io_pos.i41, align 1
  %dec.i13.3 = add i32 %p_cnt.0, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i13.3)
  %tobool.not.i15.3 = icmp eq i32 %dec.i13.3, 0
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i17.3, %while.body.i17.2.while.end.i_crit_edge, %while.body.i17.1.while.end.i_crit_edge, %while.body.i17.while.end.i_crit_edge, %cond.false60.while.end.i_crit_edge
  %length.addr.0.lcssa.i18 = phi i32 [ %p_cnt.0, %cond.false60.while.end.i_crit_edge ], [ %dec.i13, %while.body.i17.while.end.i_crit_edge ], [ %dec.i13.1, %while.body.i17.1.while.end.i_crit_edge ], [ %dec.i13.2, %while.body.i17.2.while.end.i_crit_edge ], [ %dec.i13.3, %while.body.i17.3 ]
  %off.0.lcssa.i19 = phi i32 [ 0, %cond.false60.while.end.i_crit_edge ], [ 1, %while.body.i17.while.end.i_crit_edge ], [ 2, %while.body.i17.1.while.end.i_crit_edge ], [ 3, %while.body.i17.2.while.end.i_crit_edge ], [ 4, %while.body.i17.3 ]
  %tobool.not.lcssa.i = phi i1 [ %tobool.not67.i, %cond.false60.while.end.i_crit_edge ], [ %tobool.not.i15, %while.body.i17.while.end.i_crit_edge ], [ %tobool.not.i15.1, %while.body.i17.1.while.end.i_crit_edge ], [ %tobool.not.i15.2, %while.body.i17.2.while.end.i_crit_edge ], [ %tobool.not.i15.3, %while.body.i17.3 ]
  br i1 %tobool.not.lcssa.i, label %while.end.i.if.end75_crit_edge, label %while.cond15.preheader.i

while.end.i.if.end75_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

while.cond15.preheader.i:                         ; preds = %while.end.i
  %138 = ptrtoint ptr %io_pos.i41 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %io_pos.i41, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %139)
  %cmp1874.i = icmp ugt i8 %139, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length.addr.0.lcssa.i18)
  %tobool21.not75.i = icmp eq i32 %length.addr.0.lcssa.i18, 0
  %or.cond6576.i = select i1 %cmp1874.i, i1 true, i1 %tobool21.not75.i
  br i1 %or.cond6576.i, label %while.cond15.preheader.i.if.end75_crit_edge, label %while.body23.i

while.cond15.preheader.i.if.end75_crit_edge:      ; preds = %while.cond15.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

while.body23.i:                                   ; preds = %while.cond15.preheader.i
  %140 = zext i8 %139 to i32
  %mul26.i = shl nuw nsw i32 %140, 3
  %shl27.i = shl i32 255, %mul26.i
  %neg28.i = xor i32 %shl27.i, -1
  %141 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %arrayidx18.i, align 4
  %and31.i = and i32 %142, %neg28.i
  store i32 %and31.i, ptr %arrayidx18.i, align 4
  %inc32.i = add nuw nsw i32 %off.0.lcssa.i19, 1
  %arrayidx33.i = getelementptr i8, ptr %buf.0, i32 %off.0.lcssa.i19
  %143 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx33.i, align 1
  %conv34.i = zext i8 %144 to i32
  %shl38.i = shl i32 %conv34.i, %mul26.i
  %or41.i = or i32 %shl38.i, %and31.i
  store i32 %or41.i, ptr %arrayidx18.i, align 4
  %indvars.iv.next82.i = add nuw nsw i32 %140, 1
  %145 = trunc i32 %indvars.iv.next82.i to i8
  %146 = ptrtoint ptr %io_pos.i41 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %145, ptr %io_pos.i41, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %139)
  %cmp18.i = icmp ugt i8 %139, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %length.addr.0.lcssa.i18)
  %tobool21.not.i = icmp eq i32 %length.addr.0.lcssa.i18, 1
  %or.cond65.i = select i1 %cmp18.i, i1 true, i1 %tobool21.not.i
  br i1 %or.cond65.i, label %while.body23.i.if.end75_crit_edge, label %while.body23.i.1

while.body23.i.if.end75_crit_edge:                ; preds = %while.body23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

while.body23.i.1:                                 ; preds = %while.body23.i
  %mul26.i.1 = shl nuw nsw i32 %indvars.iv.next82.i, 3
  %shl27.i.1 = shl i32 255, %mul26.i.1
  %neg28.i.1 = xor i32 %shl27.i.1, -1
  %147 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %arrayidx18.i, align 4
  %and31.i.1 = and i32 %148, %neg28.i.1
  store i32 %and31.i.1, ptr %arrayidx18.i, align 4
  %inc32.i.1 = add nuw nsw i32 %off.0.lcssa.i19, 2
  %arrayidx33.i.1 = getelementptr i8, ptr %buf.0, i32 %inc32.i
  %149 = ptrtoint ptr %arrayidx33.i.1 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %arrayidx33.i.1, align 1
  %conv34.i.1 = zext i8 %150 to i32
  %shl38.i.1 = shl i32 %conv34.i.1, %mul26.i.1
  %or41.i.1 = or i32 %shl38.i.1, %and31.i.1
  store i32 %or41.i.1, ptr %arrayidx18.i, align 4
  %indvars.iv.next82.i.1 = add nuw nsw i32 %140, 2
  %151 = trunc i32 %indvars.iv.next82.i.1 to i8
  %152 = ptrtoint ptr %io_pos.i41 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %151, ptr %io_pos.i41, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %139)
  %cmp18.i.1 = icmp ugt i8 %139, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %length.addr.0.lcssa.i18)
  %tobool21.not.i.1 = icmp eq i32 %length.addr.0.lcssa.i18, 2
  %or.cond65.i.1 = select i1 %cmp18.i.1, i1 true, i1 %tobool21.not.i.1
  br i1 %or.cond65.i.1, label %while.body23.i.1.if.end75_crit_edge, label %while.body23.i.2

while.body23.i.1.if.end75_crit_edge:              ; preds = %while.body23.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

while.body23.i.2:                                 ; preds = %while.body23.i.1
  %mul26.i.2 = shl nuw nsw i32 %indvars.iv.next82.i.1, 3
  %shl27.i.2 = shl i32 255, %mul26.i.2
  %neg28.i.2 = xor i32 %shl27.i.2, -1
  %153 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %arrayidx18.i, align 4
  %and31.i.2 = and i32 %154, %neg28.i.2
  store i32 %and31.i.2, ptr %arrayidx18.i, align 4
  %inc32.i.2 = add nuw nsw i32 %off.0.lcssa.i19, 3
  %arrayidx33.i.2 = getelementptr i8, ptr %buf.0, i32 %inc32.i.1
  %155 = ptrtoint ptr %arrayidx33.i.2 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %arrayidx33.i.2, align 1
  %conv34.i.2 = zext i8 %156 to i32
  %shl38.i.2 = shl i32 %conv34.i.2, %mul26.i.2
  %or41.i.2 = or i32 %shl38.i.2, %and31.i.2
  store i32 %or41.i.2, ptr %arrayidx18.i, align 4
  %indvars.iv.next82.i.2 = add nuw nsw i32 %140, 3
  %157 = trunc i32 %indvars.iv.next82.i.2 to i8
  %158 = ptrtoint ptr %io_pos.i41 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %157, ptr %io_pos.i41, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %139)
  %cmp18.i.2 = icmp ugt i8 %139, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %length.addr.0.lcssa.i18)
  %tobool21.not.i.2 = icmp eq i32 %length.addr.0.lcssa.i18, 3
  %or.cond65.i.2 = select i1 %cmp18.i.2, i1 true, i1 %tobool21.not.i.2
  br i1 %or.cond65.i.2, label %while.body23.i.2.if.end75_crit_edge, label %while.body23.i.3

while.body23.i.2.if.end75_crit_edge:              ; preds = %while.body23.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

while.body23.i.3:                                 ; preds = %while.body23.i.2
  %mul26.i.3 = shl nuw nsw i32 %indvars.iv.next82.i.2, 3
  %shl27.i.3 = shl i32 255, %mul26.i.3
  %neg28.i.3 = xor i32 %shl27.i.3, -1
  %159 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %arrayidx18.i, align 4
  %and31.i.3 = and i32 %160, %neg28.i.3
  store i32 %and31.i.3, ptr %arrayidx18.i, align 4
  %inc32.i.3 = add nuw nsw i32 %off.0.lcssa.i19, 4
  %arrayidx33.i.3 = getelementptr i8, ptr %buf.0, i32 %inc32.i.2
  %161 = ptrtoint ptr %arrayidx33.i.3 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %arrayidx33.i.3, align 1
  %conv34.i.3 = zext i8 %162 to i32
  %shl38.i.3 = shl i32 %conv34.i.3, %mul26.i.3
  %or41.i.3 = or i32 %shl38.i.3, %and31.i.3
  store i32 %or41.i.3, ptr %arrayidx18.i, align 4
  %indvars.iv.next82.i.3 = add nuw nsw i32 %140, 4
  %163 = trunc i32 %indvars.iv.next82.i.3 to i8
  %164 = ptrtoint ptr %io_pos.i41 to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 %163, ptr %io_pos.i41, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %139)
  %cmp18.i.3 = icmp ugt i8 %139, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %length.addr.0.lcssa.i18)
  %tobool21.not.i.3 = icmp eq i32 %length.addr.0.lcssa.i18, 4
  %or.cond65.i.3 = select i1 %cmp18.i.3, i1 true, i1 %tobool21.not.i.3
  br i1 %or.cond65.i.3, label %while.body23.i.3.if.end75_crit_edge, label %while.body23.i.4

while.body23.i.3.if.end75_crit_edge:              ; preds = %while.body23.i.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

while.body23.i.4:                                 ; preds = %while.body23.i.3
  %mul26.i.4 = shl nuw nsw i32 %indvars.iv.next82.i.3, 3
  %shl27.i.4 = shl i32 255, %mul26.i.4
  %neg28.i.4 = xor i32 %shl27.i.4, -1
  %165 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %arrayidx18.i, align 4
  %and31.i.4 = and i32 %166, %neg28.i.4
  store i32 %and31.i.4, ptr %arrayidx18.i, align 4
  %inc32.i.4 = add nuw nsw i32 %off.0.lcssa.i19, 5
  %arrayidx33.i.4 = getelementptr i8, ptr %buf.0, i32 %inc32.i.3
  %167 = ptrtoint ptr %arrayidx33.i.4 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %arrayidx33.i.4, align 1
  %conv34.i.4 = zext i8 %168 to i32
  %shl38.i.4 = shl i32 %conv34.i.4, %mul26.i.4
  %or41.i.4 = or i32 %shl38.i.4, %and31.i.4
  store i32 %or41.i.4, ptr %arrayidx18.i, align 4
  %indvars.iv.next82.i.4 = add nuw nsw i32 %140, 5
  %169 = trunc i32 %indvars.iv.next82.i.4 to i8
  %170 = ptrtoint ptr %io_pos.i41 to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 %169, ptr %io_pos.i41, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %139)
  %cmp18.i.4 = icmp ugt i8 %139, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %length.addr.0.lcssa.i18)
  %tobool21.not.i.4 = icmp eq i32 %length.addr.0.lcssa.i18, 5
  %or.cond65.i.4 = select i1 %cmp18.i.4, i1 true, i1 %tobool21.not.i.4
  br i1 %or.cond65.i.4, label %while.body23.i.4.if.end75_crit_edge, label %while.body23.i.5

while.body23.i.4.if.end75_crit_edge:              ; preds = %while.body23.i.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

while.body23.i.5:                                 ; preds = %while.body23.i.4
  %mul26.i.5 = shl nuw nsw i32 %indvars.iv.next82.i.4, 3
  %shl27.i.5 = shl i32 255, %mul26.i.5
  %neg28.i.5 = xor i32 %shl27.i.5, -1
  %171 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %arrayidx18.i, align 4
  %and31.i.5 = and i32 %172, %neg28.i.5
  store i32 %and31.i.5, ptr %arrayidx18.i, align 4
  %inc32.i.5 = add nuw nsw i32 %off.0.lcssa.i19, 6
  %arrayidx33.i.5 = getelementptr i8, ptr %buf.0, i32 %inc32.i.4
  %173 = ptrtoint ptr %arrayidx33.i.5 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %arrayidx33.i.5, align 1
  %conv34.i.5 = zext i8 %174 to i32
  %shl38.i.5 = shl i32 %conv34.i.5, %mul26.i.5
  %or41.i.5 = or i32 %shl38.i.5, %and31.i.5
  store i32 %or41.i.5, ptr %arrayidx18.i, align 4
  %indvars.iv.next82.i.5 = add nuw nsw i32 %140, 6
  %175 = trunc i32 %indvars.iv.next82.i.5 to i8
  %176 = ptrtoint ptr %io_pos.i41 to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %175, ptr %io_pos.i41, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %139)
  %cmp18.i.5 = icmp ugt i8 %139, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %length.addr.0.lcssa.i18)
  %tobool21.not.i.5 = icmp eq i32 %length.addr.0.lcssa.i18, 6
  %or.cond65.i.5 = select i1 %cmp18.i.5, i1 true, i1 %tobool21.not.i.5
  br i1 %or.cond65.i.5, label %while.body23.i.5.if.end75_crit_edge, label %while.body23.i.6

while.body23.i.5.if.end75_crit_edge:              ; preds = %while.body23.i.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

while.body23.i.6:                                 ; preds = %while.body23.i.5
  %mul26.i.6 = shl nuw nsw i32 %indvars.iv.next82.i.5, 3
  %shl27.i.6 = shl i32 255, %mul26.i.6
  %neg28.i.6 = xor i32 %shl27.i.6, -1
  %177 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %arrayidx18.i, align 4
  %and31.i.6 = and i32 %178, %neg28.i.6
  store i32 %and31.i.6, ptr %arrayidx18.i, align 4
  %inc32.i.6 = add nuw nsw i32 %off.0.lcssa.i19, 7
  %arrayidx33.i.6 = getelementptr i8, ptr %buf.0, i32 %inc32.i.5
  %179 = ptrtoint ptr %arrayidx33.i.6 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %arrayidx33.i.6, align 1
  %conv34.i.6 = zext i8 %180 to i32
  %shl38.i.6 = shl i32 %conv34.i.6, %mul26.i.6
  %or41.i.6 = or i32 %shl38.i.6, %and31.i.6
  store i32 %or41.i.6, ptr %arrayidx18.i, align 4
  %indvars.iv.next82.i.6 = add nuw nsw i32 %140, 7
  %181 = trunc i32 %indvars.iv.next82.i.6 to i8
  %182 = ptrtoint ptr %io_pos.i41 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 %181, ptr %io_pos.i41, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %cmp18.i.6 = icmp ne i8 %139, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %length.addr.0.lcssa.i18)
  %tobool21.not.i.6 = icmp eq i32 %length.addr.0.lcssa.i18, 7
  %or.cond65.i.6 = select i1 %cmp18.i.6, i1 true, i1 %tobool21.not.i.6
  br i1 %or.cond65.i.6, label %while.body23.i.6.if.end75_crit_edge, label %while.body23.i.7

while.body23.i.6.if.end75_crit_edge:              ; preds = %while.body23.i.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

while.body23.i.7:                                 ; preds = %while.body23.i.6
  call void @__sanitizer_cov_trace_pc() #11
  %mul26.i.7 = shl nuw nsw i32 %indvars.iv.next82.i.6, 3
  %shl27.i.7 = shl i32 255, %mul26.i.7
  %neg28.i.7 = xor i32 %shl27.i.7, -1
  %183 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %arrayidx18.i, align 4
  %and31.i.7 = and i32 %184, %neg28.i.7
  store i32 %and31.i.7, ptr %arrayidx18.i, align 4
  %inc32.i.7 = add nuw nsw i32 %off.0.lcssa.i19, 8
  %arrayidx33.i.7 = getelementptr i8, ptr %buf.0, i32 %inc32.i.6
  %185 = ptrtoint ptr %arrayidx33.i.7 to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %arrayidx33.i.7, align 1
  %conv34.i.7 = zext i8 %186 to i32
  %shl38.i.7 = shl i32 %conv34.i.7, %mul26.i.7
  %or41.i.7 = or i32 %shl38.i.7, %and31.i.7
  store i32 %or41.i.7, ptr %arrayidx18.i, align 4
  %indvars.iv.next82.i.7 = add i8 %139, 8
  %187 = ptrtoint ptr %io_pos.i41 to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 %indvars.iv.next82.i.7, ptr %io_pos.i41, align 1
  br label %if.end75

if.else64:                                        ; preds = %if.end47
  br i1 %tobool57.not, label %cond.true69, label %cond.false71

cond.true69:                                      ; preds = %if.else64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not89.i = icmp eq i8 %47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %p_cnt.0)
  %tobool1.not90.i = icmp eq i32 %p_cnt.0, 0
  %or.cond91.i = or i1 %tobool1.not90.i, %tobool.not89.i
  br i1 %or.cond91.i, label %cond.true69.while.end.i31_crit_edge, label %cond.true69.while.body.i28_crit_edge

cond.true69.while.body.i28_crit_edge:             ; preds = %cond.true69
  br label %while.body.i28

cond.true69.while.end.i31_crit_edge:              ; preds = %cond.true69
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i31

while.body.i28:                                   ; preds = %while.body.i28.while.body.i28_crit_edge, %cond.true69.while.body.i28_crit_edge
  %length.addr.093.i = phi i32 [ %dec.i25, %while.body.i28.while.body.i28_crit_edge ], [ %p_cnt.0, %cond.true69.while.body.i28_crit_edge ]
  %off.092.i = phi i32 [ %inc.i24, %while.body.i28.while.body.i28_crit_edge ], [ 0, %cond.true69.while.body.i28_crit_edge ]
  %188 = ptrtoint ptr %io_word.i42 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %io_word.i42, align 4
  %conv2.i = trunc i32 %189 to i8
  %inc.i24 = add nuw i32 %off.092.i, 1
  %arrayidx3.i = getelementptr i8, ptr %buf.0, i32 %off.092.i
  %190 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 %conv2.i, ptr %arrayidx3.i, align 1
  %191 = load i32, ptr %io_word.i42, align 4
  %shr.i = lshr i32 %191, 8
  store i32 %shr.i, ptr %io_word.i42, align 4
  %dec.i25 = add i32 %length.addr.093.i, -1
  %192 = ptrtoint ptr %io_pos.i41 to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %io_pos.i41, align 1
  %dec7.i = add i8 %193, -1
  store i8 %dec7.i, ptr %io_pos.i41, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec7.i)
  %tobool.not.i26 = icmp eq i8 %dec7.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i25)
  %tobool1.not.i = icmp eq i32 %dec.i25, 0
  %or.cond.i27 = select i1 %tobool.not.i26, i1 true, i1 %tobool1.not.i
  br i1 %or.cond.i27, label %while.body.i28.while.end.i31_crit_edge, label %while.body.i28.while.body.i28_crit_edge

while.body.i28.while.body.i28_crit_edge:          ; preds = %while.body.i28
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i28

while.body.i28.while.end.i31_crit_edge:           ; preds = %while.body.i28
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i31

while.end.i31:                                    ; preds = %while.body.i28.while.end.i31_crit_edge, %cond.true69.while.end.i31_crit_edge
  %off.0.lcssa.i29 = phi i32 [ 0, %cond.true69.while.end.i31_crit_edge ], [ %inc.i24, %while.body.i28.while.end.i31_crit_edge ]
  %length.addr.0.lcssa.i30 = phi i32 [ %p_cnt.0, %cond.true69.while.end.i31_crit_edge ], [ %dec.i25, %while.body.i28.while.end.i31_crit_edge ]
  %tobool1.not.lcssa.i = phi i1 [ %tobool1.not90.i, %cond.true69.while.end.i31_crit_edge ], [ %tobool1.not.i, %while.body.i28.while.end.i31_crit_edge ]
  br i1 %tobool1.not.lcssa.i, label %while.end.i31.if.end75_crit_edge, label %while.cond9.preheader.i

while.end.i31.if.end75_crit_edge:                 ; preds = %while.end.i31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

while.cond9.preheader.i:                          ; preds = %while.end.i31
  %194 = ptrtoint ptr %addr.i32 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %addr.i32, align 4
  %add.ptr97.i = getelementptr i8, ptr %195, i32 32
  %196 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr97.i) #9, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  %197 = and i32 %196, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %197)
  %tobool12.not98.i = icmp ne i32 %197, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %length.addr.0.lcssa.i30)
  %cmp99.i = icmp ult i32 %length.addr.0.lcssa.i30, 4
  %or.cond88100.i = select i1 %tobool12.not98.i, i1 true, i1 %cmp99.i
  br i1 %or.cond88100.i, label %while.cond9.preheader.i.while.end21.i_crit_edge, label %while.cond9.preheader.i.if.end16.i_crit_edge

while.cond9.preheader.i.if.end16.i_crit_edge:     ; preds = %while.cond9.preheader.i
  br label %if.end16.i

while.cond9.preheader.i.while.end21.i_crit_edge:  ; preds = %while.cond9.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end21.i

if.end16.i:                                       ; preds = %if.end16.i.if.end16.i_crit_edge, %while.cond9.preheader.i.if.end16.i_crit_edge
  %length.addr.1102.i = phi i32 [ %sub.i34, %if.end16.i.if.end16.i_crit_edge ], [ %length.addr.0.lcssa.i30, %while.cond9.preheader.i.if.end16.i_crit_edge ]
  %off.1101.i = phi i32 [ %add.i35, %if.end16.i.if.end16.i_crit_edge ], [ %off.0.lcssa.i29, %while.cond9.preheader.i.if.end16.i_crit_edge ]
  %198 = ptrtoint ptr %addr.i32 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %addr.i32, align 4
  %add.ptr18.i = getelementptr i8, ptr %199, i32 28
  %200 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i) #9, !srcloc !125
  %add.ptr20.i33 = getelementptr i8, ptr %buf.0, i32 %off.1101.i
  %201 = ptrtoint ptr %add.ptr20.i33 to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %200, ptr %add.ptr20.i33, align 4
  %sub.i34 = add i32 %length.addr.1102.i, -4
  %add.i35 = add i32 %off.1101.i, 4
  %202 = ptrtoint ptr %addr.i32 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %addr.i32, align 4
  %add.ptr.i36 = getelementptr i8, ptr %203, i32 32
  %204 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i36) #9, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  %205 = and i32 %204, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %205)
  %tobool12.not.i = icmp ne i32 %205, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i34)
  %cmp.i37 = icmp ult i32 %sub.i34, 4
  %or.cond88.i = select i1 %tobool12.not.i, i1 true, i1 %cmp.i37
  br i1 %or.cond88.i, label %if.end16.i.while.end21.i_crit_edge, label %if.end16.i.if.end16.i_crit_edge

if.end16.i.if.end16.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i

if.end16.i.while.end21.i_crit_edge:               ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end21.i

while.end21.i:                                    ; preds = %if.end16.i.while.end21.i_crit_edge, %while.cond9.preheader.i.while.end21.i_crit_edge
  %off.1.lcssa.i = phi i32 [ %off.0.lcssa.i29, %while.cond9.preheader.i.while.end21.i_crit_edge ], [ %add.i35, %if.end16.i.while.end21.i_crit_edge ]
  %length.addr.1.lcssa.i = phi i32 [ %length.addr.0.lcssa.i30, %while.cond9.preheader.i.while.end21.i_crit_edge ], [ %sub.i34, %if.end16.i.while.end21.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length.addr.1.lcssa.i)
  %tobool22.not.i = icmp eq i32 %length.addr.1.lcssa.i, 0
  br i1 %tobool22.not.i, label %while.end21.i.if.end75_crit_edge, label %land.lhs.true.i38

while.end21.i.if.end75_crit_edge:                 ; preds = %while.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

land.lhs.true.i38:                                ; preds = %while.end21.i
  %206 = ptrtoint ptr %addr.i32 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %addr.i32, align 4
  %add.ptr26.i = getelementptr i8, ptr %207, i32 32
  %208 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26.i) #9, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %209 = and i32 %208, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %209)
  %tobool31.not.i = icmp eq i32 %209, 0
  br i1 %tobool31.not.i, label %if.then32.i, label %land.lhs.true.i38.if.end75_crit_edge

land.lhs.true.i38.if.end75_crit_edge:             ; preds = %land.lhs.true.i38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

if.then32.i:                                      ; preds = %land.lhs.true.i38
  %210 = ptrtoint ptr %addr.i32 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %addr.i32, align 4
  %add.ptr36.i39 = getelementptr i8, ptr %211, i32 28
  %212 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36.i39) #9, !srcloc !125
  %213 = tail call i32 @llvm.bswap.i32(i32 %212) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !167
  %214 = ptrtoint ptr %io_word.i42 to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %213, ptr %io_word.i42, align 4
  %215 = ptrtoint ptr %io_pos.i41 to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 4, ptr %io_pos.i41, align 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then32.i
  %length.addr.2107.i = phi i32 [ %length.addr.1.lcssa.i, %if.then32.i ], [ %dec54.i, %for.inc.i.for.body.i_crit_edge ]
  %off.2106.i = phi i32 [ %off.1.lcssa.i, %if.then32.i ], [ %inc49.i, %for.inc.i.for.body.i_crit_edge ]
  %216 = ptrtoint ptr %io_word.i42 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %io_word.i42, align 4
  %conv48.i = trunc i32 %217 to i8
  %inc49.i = add i32 %off.2106.i, 1
  %arrayidx50.i = getelementptr i8, ptr %buf.0, i32 %off.2106.i
  %218 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 %conv48.i, ptr %arrayidx50.i, align 1
  %219 = load i32, ptr %io_word.i42, align 4
  %shr53.i = lshr i32 %219, 8
  store i32 %shr53.i, ptr %io_word.i42, align 4
  %dec54.i = add i32 %length.addr.2107.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec54.i)
  %tobool55.not.i = icmp eq i32 %dec54.i, 0
  br i1 %tobool55.not.i, label %for.body.i.if.end75_crit_edge, label %for.inc.i

for.body.i.if.end75_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

for.inc.i:                                        ; preds = %for.body.i
  %220 = ptrtoint ptr %io_pos.i41 to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %io_pos.i41, align 1
  %dec59.i = add i8 %221, -1
  store i8 %dec59.i, ptr %io_pos.i41, align 1
  %tobool44.not.i = icmp eq i8 %dec59.i, 0
  br i1 %tobool44.not.i, label %for.inc.i.if.end75_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.if.end75_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

cond.false71:                                     ; preds = %if.else64
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %47)
  %cmp46.i = icmp ult i8 %47, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %p_cnt.0)
  %tobool.not47.i = icmp eq i32 %p_cnt.0, 0
  %or.cond48.i = or i1 %tobool.not47.i, %cmp46.i
  br i1 %or.cond48.i, label %cond.false71.while.end.i57_crit_edge, label %cond.false71.while.body.i53_crit_edge

cond.false71.while.body.i53_crit_edge:            ; preds = %cond.false71
  br label %while.body.i53

cond.false71.while.end.i57_crit_edge:             ; preds = %cond.false71
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i57

while.body.i53:                                   ; preds = %while.body.i53.while.body.i53_crit_edge, %cond.false71.while.body.i53_crit_edge
  %off.050.i = phi i32 [ %inc.i45, %while.body.i53.while.body.i53_crit_edge ], [ 0, %cond.false71.while.body.i53_crit_edge ]
  %length.addr.049.i = phi i32 [ %dec.i48, %while.body.i53.while.body.i53_crit_edge ], [ %p_cnt.0, %cond.false71.while.body.i53_crit_edge ]
  %222 = ptrtoint ptr %io_word.i42 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %io_word.i42, align 4
  %conv2.i44 = trunc i32 %223 to i8
  %inc.i45 = add nuw i32 %off.050.i, 1
  %arrayidx3.i46 = getelementptr i8, ptr %buf.0, i32 %off.050.i
  %224 = ptrtoint ptr %arrayidx3.i46 to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 %conv2.i44, ptr %arrayidx3.i46, align 1
  %225 = load i32, ptr %io_word.i42, align 4
  %shr.i47 = lshr i32 %225, 8
  store i32 %shr.i47, ptr %io_word.i42, align 4
  %dec.i48 = add i32 %length.addr.049.i, -1
  %226 = ptrtoint ptr %io_pos.i41 to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %io_pos.i41, align 1
  %dec7.i49 = add i8 %227, -1
  store i8 %dec7.i49, ptr %io_pos.i41, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %dec7.i49)
  %cmp.i50 = icmp ult i8 %dec7.i49, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i48)
  %tobool.not.i51 = icmp eq i32 %dec.i48, 0
  %or.cond.i52 = select i1 %cmp.i50, i1 true, i1 %tobool.not.i51
  br i1 %or.cond.i52, label %while.body.i53.while.end.i57_crit_edge, label %while.body.i53.while.body.i53_crit_edge

while.body.i53.while.body.i53_crit_edge:          ; preds = %while.body.i53
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i53

while.body.i53.while.end.i57_crit_edge:           ; preds = %while.body.i53
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i57

while.end.i57:                                    ; preds = %while.body.i53.while.end.i57_crit_edge, %cond.false71.while.end.i57_crit_edge
  %length.addr.0.lcssa.i54 = phi i32 [ %p_cnt.0, %cond.false71.while.end.i57_crit_edge ], [ %dec.i48, %while.body.i53.while.end.i57_crit_edge ]
  %off.0.lcssa.i55 = phi i32 [ 0, %cond.false71.while.end.i57_crit_edge ], [ %inc.i45, %while.body.i53.while.end.i57_crit_edge ]
  %tobool.not.lcssa.i56 = phi i1 [ %tobool.not47.i, %cond.false71.while.end.i57_crit_edge ], [ %tobool.not.i51, %while.body.i53.while.end.i57_crit_edge ]
  br i1 %tobool.not.lcssa.i56, label %while.end.i57.if.end75_crit_edge, label %while.cond9.preheader.i58

while.end.i57.if.end75_crit_edge:                 ; preds = %while.end.i57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

while.cond9.preheader.i58:                        ; preds = %while.end.i57
  %228 = ptrtoint ptr %io_pos.i41 to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %io_pos.i41, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %229)
  %tobool12.not54.i = icmp eq i8 %229, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length.addr.0.lcssa.i54)
  %tobool14.not55.i = icmp eq i32 %length.addr.0.lcssa.i54, 0
  %or.cond4556.i = select i1 %tobool12.not54.i, i1 true, i1 %tobool14.not55.i
  br i1 %or.cond4556.i, label %while.cond9.preheader.i58.if.end75_crit_edge, label %while.cond9.preheader.i58.while.body16.i_crit_edge

while.cond9.preheader.i58.while.body16.i_crit_edge: ; preds = %while.cond9.preheader.i58
  br label %while.body16.i

while.cond9.preheader.i58.if.end75_crit_edge:     ; preds = %while.cond9.preheader.i58
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

while.body16.i:                                   ; preds = %while.body16.i.while.body16.i_crit_edge, %while.cond9.preheader.i58.while.body16.i_crit_edge
  %off.158.i = phi i32 [ %inc21.i, %while.body16.i.while.body16.i_crit_edge ], [ %off.0.lcssa.i55, %while.cond9.preheader.i58.while.body16.i_crit_edge ]
  %length.addr.157.i = phi i32 [ %dec26.i, %while.body16.i.while.body16.i_crit_edge ], [ %length.addr.0.lcssa.i54, %while.cond9.preheader.i58.while.body16.i_crit_edge ]
  %230 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %arrayidx18.i, align 4
  %conv20.i = trunc i32 %231 to i8
  %inc21.i = add i32 %off.158.i, 1
  %arrayidx22.i = getelementptr i8, ptr %buf.0, i32 %off.158.i
  %232 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store1_noabort(i32 %232)
  store i8 %conv20.i, ptr %arrayidx22.i, align 1
  %233 = load i32, ptr %arrayidx18.i, align 4
  %shr25.i = lshr i32 %233, 8
  store i32 %shr25.i, ptr %arrayidx18.i, align 4
  %dec26.i = add i32 %length.addr.157.i, -1
  %234 = ptrtoint ptr %io_pos.i41 to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %io_pos.i41, align 1
  %dec28.i = add i8 %235, -1
  store i8 %dec28.i, ptr %io_pos.i41, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec28.i)
  %tobool12.not.i59 = icmp eq i8 %dec28.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec26.i)
  %tobool14.not.i = icmp eq i32 %dec26.i, 0
  %or.cond45.i = select i1 %tobool12.not.i59, i1 true, i1 %tobool14.not.i
  br i1 %or.cond45.i, label %while.body16.i.if.end75_crit_edge, label %while.body16.i.while.body16.i_crit_edge

while.body16.i.while.body16.i_crit_edge:          ; preds = %while.body16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body16.i

while.body16.i.if.end75_crit_edge:                ; preds = %while.body16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

if.end75:                                         ; preds = %while.body16.i.if.end75_crit_edge, %while.cond9.preheader.i58.if.end75_crit_edge, %while.end.i57.if.end75_crit_edge, %for.inc.i.if.end75_crit_edge, %for.body.i.if.end75_crit_edge, %land.lhs.true.i38.if.end75_crit_edge, %while.end21.i.if.end75_crit_edge, %while.end.i31.if.end75_crit_edge, %while.body23.i.7, %while.body23.i.6.if.end75_crit_edge, %while.body23.i.5.if.end75_crit_edge, %while.body23.i.4.if.end75_crit_edge, %while.body23.i.3.if.end75_crit_edge, %while.body23.i.2.if.end75_crit_edge, %while.body23.i.1.if.end75_crit_edge, %while.body23.i.if.end75_crit_edge, %while.cond15.preheader.i.if.end75_crit_edge, %while.end.i.if.end75_crit_edge, %sw.epilog.i, %if.else.i.if.end75_crit_edge, %do.body.i.if.end75_crit_edge
  %t_size.0 = phi i32 [ %add80.i, %sw.epilog.i ], [ %off.1123.i, %if.else.i.if.end75_crit_edge ], [ %off.0.lcssa.i, %do.body.i.if.end75_crit_edge ], [ %off.0.lcssa.i19, %while.end.i.if.end75_crit_edge ], [ %off.0.lcssa.i19, %while.cond15.preheader.i.if.end75_crit_edge ], [ %off.0.lcssa.i29, %while.end.i31.if.end75_crit_edge ], [ %off.1.lcssa.i, %land.lhs.true.i38.if.end75_crit_edge ], [ %off.1.lcssa.i, %while.end21.i.if.end75_crit_edge ], [ %off.0.lcssa.i55, %while.end.i57.if.end75_crit_edge ], [ %off.0.lcssa.i55, %while.cond9.preheader.i58.if.end75_crit_edge ], [ %inc32.i, %while.body23.i.if.end75_crit_edge ], [ %inc32.i.1, %while.body23.i.1.if.end75_crit_edge ], [ %inc32.i.2, %while.body23.i.2.if.end75_crit_edge ], [ %inc32.i.3, %while.body23.i.3.if.end75_crit_edge ], [ %inc32.i.4, %while.body23.i.4.if.end75_crit_edge ], [ %inc32.i.5, %while.body23.i.5.if.end75_crit_edge ], [ %inc32.i.6, %while.body23.i.6.if.end75_crit_edge ], [ %inc32.i.7, %while.body23.i.7 ], [ %inc49.i, %for.body.i.if.end75_crit_edge ], [ %inc49.i, %for.inc.i.if.end75_crit_edge ], [ %inc21.i, %while.body16.i.if.end75_crit_edge ]
  %236 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %req, align 4
  %long_data77 = getelementptr inbounds %struct.memstick_request, ptr %237, i32 0, i32 1
  %238 = ptrtoint ptr %long_data77 to i32
  call void @__asan_load1_noabort(i32 %238)
  %bf.load78 = load i8, ptr %long_data77, align 1
  %239 = and i8 %bf.load78, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %239)
  %tobool81.not = icmp eq i8 %239, 0
  br i1 %tobool81.not, label %if.end75.if.end121_crit_edge, label %do.end86

if.end75.if.end121_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end121

do.end86:                                         ; preds = %if.end75
  %idx.neg = sub nsw i32 0, %p_off.0
  %add.ptr87 = getelementptr i8, ptr %buf.0, i32 %idx.neg
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr87) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !168
  %240 = tail call i32 @llvm.read_register.i32(metadata !110) #9
  %and.i.i.i1.i = and i32 %240, -16384
  %241 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %241, i32 0, i32 2
  %242 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %243, i32 0, i32 213
  %244 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %245, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !169
  %246 = tail call i32 @llvm.read_register.i32(metadata !110) #9
  %and.i.i.i.i = and i32 %246, -16384
  %247 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %247, i32 0, i32 1
  %248 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %249, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  %and.i61 = and i32 %flags.1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i61)
  %tobool98.not = icmp eq i32 %and.i61, 0
  br i1 %tobool98.not, label %if.then99, label %do.end86.do.body101_crit_edge

do.end86.do.body101_crit_edge:                    ; preds = %do.end86
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body101

if.then99:                                        ; preds = %do.end86
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_on() #9
  br label %do.body101

do.body101:                                       ; preds = %if.then99, %do.end86.do.body101_crit_edge
  %250 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !170
  %and.i.i62 = and i32 %250, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i62)
  %tobool109.not = icmp eq i32 %and.i.i62, 0
  br i1 %tobool109.not, label %if.then113, label %do.body101.do.end116_crit_edge, !prof !171

do.body101.do.end116_crit_edge:                   ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end116

if.then113:                                       ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end116

do.end116:                                        ; preds = %if.then113, %do.body101.do.end116_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %flags.1) #9, !srcloc !172
  br label %if.end121

if.end121:                                        ; preds = %do.end116, %if.end75.if.end121_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t_size.0)
  %tobool122.not = icmp eq i32 %t_size.0, 0
  br i1 %tobool122.not, label %if.end121.if.end166_crit_edge, label %cleanup

if.end121.if.end166_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end166

cleanup:                                          ; preds = %if.end121
  %251 = ptrtoint ptr %block_pos40 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %block_pos40, align 4
  %add126 = add i32 %252, %t_size.0
  store i32 %add126, ptr %block_pos40, align 4
  %sub127 = sub i32 %length.174, %t_size.0
  %add128 = add i32 %t_size.0, %off.173
  %tobool8.not = icmp eq i32 %sub127, 0
  br i1 %tobool8.not, label %cleanup.land.lhs.true_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

cleanup.land.lhs.true_crit_edge:                  ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %cleanup.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %253 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %req, align 4
  %data_dir131 = getelementptr inbounds %struct.memstick_request, ptr %254, i32 0, i32 1
  %255 = ptrtoint ptr %data_dir131 to i32
  call void @__asan_load1_noabort(i32 %255)
  %bf.load132 = load i8, ptr %data_dir131, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load132)
  %cmp135 = icmp slt i8 %bf.load132, 0
  br i1 %cmp135, label %if.then137, label %land.lhs.true.if.end166_crit_edge

land.lhs.true.if.end166_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end166

if.then137:                                       ; preds = %land.lhs.true
  %cmd_flags138 = getelementptr inbounds %struct.jmb38x_ms_host, ptr %host, i32 0, i32 12
  %256 = ptrtoint ptr %cmd_flags138 to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %cmd_flags138, align 4
  %258 = and i8 %257, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %258)
  %tobool141.not = icmp eq i8 %258, 0
  br i1 %tobool141.not, label %if.else154, label %do.body143

do.body143:                                       ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !173
  tail call void @arm_heavy_mb() #9
  %io_word = getelementptr inbounds %struct.jmb38x_ms_host, ptr %host, i32 0, i32 15
  %259 = ptrtoint ptr %io_word to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %io_word, align 4
  %261 = tail call i32 @llvm.bswap.i32(i32 %260)
  %addr = getelementptr inbounds %struct.jmb38x_ms_host, ptr %host, i32 0, i32 1
  %262 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %addr, align 4
  %add.ptr146 = getelementptr i8, ptr %263, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr146, i32 %261) #9, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !174
  tail call void @arm_heavy_mb() #9
  %arrayidx151 = getelementptr %struct.jmb38x_ms_host, ptr %host, i32 0, i32 15, i32 1
  %264 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %arrayidx151, align 4
  %266 = tail call i32 @llvm.bswap.i32(i32 %265)
  %267 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %addr, align 4
  %add.ptr153 = getelementptr i8, ptr %268, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr153, i32 %266) #9, !srcloc !121
  br label %if.end166

if.else154:                                       ; preds = %if.then137
  %io_pos = getelementptr inbounds %struct.jmb38x_ms_host, ptr %host, i32 0, i32 13
  %269 = ptrtoint ptr %io_pos to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %io_pos, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %270)
  %tobool155.not = icmp eq i8 %270, 0
  br i1 %tobool155.not, label %if.else154.if.end166_crit_edge, label %do.body157

if.else154.if.end166_crit_edge:                   ; preds = %if.else154
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end166

do.body157:                                       ; preds = %if.else154
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !175
  tail call void @arm_heavy_mb() #9
  %io_word160 = getelementptr inbounds %struct.jmb38x_ms_host, ptr %host, i32 0, i32 15
  %271 = ptrtoint ptr %io_word160 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %io_word160, align 4
  %273 = tail call i32 @llvm.bswap.i32(i32 %272)
  %addr162 = getelementptr inbounds %struct.jmb38x_ms_host, ptr %host, i32 0, i32 1
  %274 = ptrtoint ptr %addr162 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %addr162, align 4
  %add.ptr163 = getelementptr i8, ptr %275, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr163, i32 %273) #9, !srcloc !121
  br label %if.end166

if.end166:                                        ; preds = %do.body157, %if.else154.if.end166_crit_edge, %do.body143, %land.lhs.true.if.end166_crit_edge, %if.end121.if.end166_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @jmb38x_ms_reset(ptr nocapture noundef readonly %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !176
  tail call void @arm_heavy_mb() #9
  %addr = getelementptr inbounds %struct.jmb38x_ms_host, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 24
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !177
  %3 = or i32 %2, 1082130432
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %addr, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #9, !srcloc !121
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %cnt.0100 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %addr, align 4
  %add.ptr7 = getelementptr i8, ptr %7, i32 24
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #9, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !178
  %9 = and i32 %8, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %for.body.do.body22_crit_edge, label %if.end

for.body.do.body22_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body22

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748) #9
  %inc = add nuw nsw i32 %cnt.0100, 1
  %exitcond.not = icmp eq i32 %inc, 20
  br i1 %exitcond.not, label %do.body11, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.body11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jmb38x_ms_reset.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@jmb38x_ms_reset, %do.body22)) #9
          to label %if.then18 [label %do.body22], !srcloc !123

if.then18:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %host, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jmb38x_ms_reset.__UNIQUE_ID_ddebug265, ptr noundef %dev, ptr noundef nonnull @.str.23) #9
  br label %do.body22

do.body22:                                        ; preds = %if.then18, %do.body11, %for.body.do.body22_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !179
  tail call void @arm_heavy_mb() #9
  %15 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %addr, align 4
  %add.ptr28 = getelementptr i8, ptr %16, i32 24
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #9, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !180
  %18 = or i32 %17, 1073807360
  %19 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %addr, align 4
  %add.ptr34 = getelementptr i8, ptr %20, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 %18) #9, !srcloc !121
  br label %for.body37

for.body37:                                       ; preds = %if.end48.for.body37_crit_edge, %do.body22
  %cnt.1101 = phi i32 [ 0, %do.body22 ], [ %inc50, %if.end48.for.body37_crit_edge ]
  %21 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %addr, align 4
  %add.ptr41 = getelementptr i8, ptr %22, i32 24
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #9, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !181
  %24 = and i32 %23, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool46.not = icmp eq i32 %24, 0
  br i1 %tobool46.not, label %do.body73, label %if.end48

if.end48:                                         ; preds = %for.body37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748) #9
  %inc50 = add nuw nsw i32 %cnt.1101, 1
  %exitcond102.not = icmp eq i32 %inc50, 20
  br i1 %exitcond102.not, label %do.body52, label %if.end48.for.body37_crit_edge

if.end48.for.body37_crit_edge:                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body37

do.body52:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jmb38x_ms_reset.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@jmb38x_ms_reset, %cleanup)) #9
          to label %if.then66 [label %cleanup], !srcloc !123

if.then66:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %host, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %dev69 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jmb38x_ms_reset.__UNIQUE_ID_ddebug266, ptr noundef %dev69, ptr noundef nonnull @.str.24) #9
  br label %cleanup

do.body73:                                        ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !182
  tail call void @arm_heavy_mb() #9
  %30 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %addr, align 4
  %add.ptr77 = getelementptr i8, ptr %31, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr77, i32 528486144) #9, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  tail call void @arm_heavy_mb() #9
  %32 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %addr, align 4
  %add.ptr82 = getelementptr i8, ptr %33, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82, i32 528486144) #9, !srcloc !121
  br label %cleanup

cleanup:                                          ; preds = %do.body73, %if.then66, %do.body52
  %retval.0 = phi i32 [ 0, %do.body73 ], [ -5, %if.then66 ], [ -5, %do.body52 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @jmb38x_ms_complete_cmd(ptr noundef %msh, i32 noundef %last) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.memstick_host, ptr %msh, i32 0, i32 11
  %timer = getelementptr inbounds %struct.memstick_host, ptr %msh, i32 1, i32 3, i32 3, i32 1, i32 1
  %call1 = tail call i32 @del_timer(ptr noundef %timer) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jmb38x_ms_complete_cmd.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@jmb38x_ms_complete_cmd, %do.body9)) #9
          to label %if.then [label %do.body9], !srcloc !123

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.memstick_host, ptr %msh, i32 0, i32 4
  %addr = getelementptr inbounds %struct.memstick_host, ptr %msh, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 24
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !125
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jmb38x_ms_complete_cmd.__UNIQUE_ID_ddebug257, ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %3) #9
  br label %do.body9

do.body9:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jmb38x_ms_complete_cmd.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@jmb38x_ms_complete_cmd, %do.body35)) #9
          to label %if.then23 [label %do.body35], !srcloc !123

if.then23:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  %dev24 = getelementptr inbounds %struct.memstick_host, ptr %msh, i32 0, i32 4
  %addr27 = getelementptr inbounds %struct.memstick_host, ptr %msh, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %addr27 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %addr27, align 4
  %add.ptr28 = getelementptr i8, ptr %5, i32 36
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #9, !srcloc !125
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !185
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jmb38x_ms_complete_cmd.__UNIQUE_ID_ddebug258, ptr noundef %dev24, ptr noundef nonnull @.str.29, i32 noundef %7) #9
  br label %do.body35

do.body35:                                        ; preds = %if.then23, %do.body9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jmb38x_ms_complete_cmd.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@jmb38x_ms_complete_cmd, %do.end60)) #9
          to label %if.then49 [label %do.end60], !srcloc !123

if.then49:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #11
  %dev50 = getelementptr inbounds %struct.memstick_host, ptr %msh, i32 0, i32 4
  %addr53 = getelementptr inbounds %struct.memstick_host, ptr %msh, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %addr53 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %addr53, align 4
  %add.ptr54 = getelementptr i8, ptr %9, i32 32
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr54) #9, !srcloc !125
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jmb38x_ms_complete_cmd.__UNIQUE_ID_ddebug259, ptr noundef %dev50, ptr noundef nonnull @.str.30, i32 noundef %11) #9
  br label %do.end60

do.end60:                                         ; preds = %if.then49, %do.body35
  %addr63 = getelementptr inbounds %struct.memstick_host, ptr %msh, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %addr63 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %addr63, align 4
  %add.ptr64 = getelementptr i8, ptr %13, i32 32
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr64) #9, !srcloc !125
  %15 = lshr i32 %14, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !187
  %conv = trunc i32 %15 to i8
  %req = getelementptr inbounds %struct.memstick_host, ptr %msh, i32 1, i32 4, i32 0, i32 7
  %16 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %req, align 4
  %int_reg = getelementptr inbounds %struct.memstick_request, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %int_reg to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv, ptr %int_reg, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !188
  tail call void @arm_heavy_mb() #9
  %19 = ptrtoint ptr %addr63 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %addr63, align 4
  %add.ptr72 = getelementptr i8, ptr %20, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr72, i32 0) #9, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !189
  tail call void @arm_heavy_mb() #9
  %21 = ptrtoint ptr %addr63 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %addr63, align 4
  %add.ptr77 = getelementptr i8, ptr %22, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr77, i32 0) #9, !srcloc !121
  %cmd_flags = getelementptr inbounds %struct.memstick_host, ptr %msh, i32 1, i32 4, i32 0, i32 7, i32 0, i32 1
  %23 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %cmd_flags, align 4
  %25 = and i8 %24, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool80.not = icmp eq i8 %25, 0
  br i1 %tobool80.not, label %if.else, label %if.then81

if.then81:                                        ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %private.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %dev82 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  %30 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %req, align 4
  %32 = getelementptr inbounds %struct.memstick_request, ptr %31, i32 0, i32 4
  %data_dir = getelementptr inbounds %struct.memstick_request, ptr %31, i32 0, i32 1
  %33 = ptrtoint ptr %data_dir to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load = load i8, ptr %data_dir, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %cmp = icmp sgt i8 %bf.load, -1
  %cond = select i1 %cmp, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev82, ptr noundef %32, i32 noundef 1, i32 noundef %cond, i32 noundef 0) #9
  br label %do.body117

if.else:                                          ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %addr63 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %addr63, align 4
  %add.ptr90 = getelementptr i8, ptr %35, i32 40
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr90) #9, !srcloc !125
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !190
  %38 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %req, align 4
  %data_dir95 = getelementptr inbounds %struct.memstick_request, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %data_dir95 to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load96 = load i8, ptr %data_dir95, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load96)
  %cmp99194 = icmp slt i8 %bf.load96, 0
  %t_val.0.v = select i1 %cmp99194, i32 -129, i32 -65
  %t_val.0 = and i32 %t_val.0.v, %37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !191
  tail call void @arm_heavy_mb() #9
  %41 = tail call i32 @llvm.bswap.i32(i32 %t_val.0)
  %42 = ptrtoint ptr %addr63 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %addr63, align 4
  %add.ptr110 = getelementptr i8, ptr %43, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr110, i32 %41) #9, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !192
  tail call void @arm_heavy_mb() #9
  %44 = ptrtoint ptr %addr63 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %addr63, align 4
  %add.ptr115 = getelementptr i8, ptr %45, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr115, i32 %41) #9, !srcloc !121
  br label %do.body117

do.body117:                                       ; preds = %if.else, %if.then81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !193
  tail call void @arm_heavy_mb() #9
  %46 = ptrtoint ptr %addr63 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %addr63, align 4
  %add.ptr123 = getelementptr i8, ptr %47, i32 24
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr123) #9, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  %49 = and i32 %48, -262145
  %50 = ptrtoint ptr %addr63 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %addr63, align 4
  %add.ptr129 = getelementptr i8, ptr %51, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr129, i32 %49) #9, !srcloc !121
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %last)
  %tobool130.not = icmp eq i32 %last, 0
  br i1 %tobool130.not, label %do.body117.do.body132_crit_edge, label %do.body141.preheader

do.body117.do.body132_crit_edge:                  ; preds = %do.body117
  br label %do.body132

do.body141.preheader:                             ; preds = %do.body117
  %call143196 = tail call i32 @memstick_next_req(ptr noundef %msh, ptr noundef %req) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143196)
  %tobool144.not197 = icmp eq i32 %call143196, 0
  br i1 %tobool144.not197, label %do.body141.preheader.if.then145_crit_edge, label %do.body141.preheader.if.end153_crit_edge

do.body141.preheader.if.end153_crit_edge:         ; preds = %do.body141.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end153

do.body141.preheader.if.then145_crit_edge:        ; preds = %do.body141.preheader
  br label %if.then145

do.body132:                                       ; preds = %land.rhs.do.body132_crit_edge, %do.body117.do.body132_crit_edge
  %call134 = tail call i32 @memstick_next_req(ptr noundef %msh, ptr noundef %req) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool136.not = icmp eq i32 %call134, 0
  br i1 %tobool136.not, label %land.rhs, label %do.body132.if.end153_crit_edge

do.body132.if.end153_crit_edge:                   ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end153

land.rhs:                                         ; preds = %do.body132
  %call137 = tail call fastcc i32 @jmb38x_ms_issue_cmd(ptr noundef %msh)
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %land.rhs.if.end153_crit_edge, label %land.rhs.do.body132_crit_edge

land.rhs.do.body132_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body132

land.rhs.if.end153_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end153

if.then145:                                       ; preds = %if.then145.if.then145_crit_edge, %do.body141.preheader.if.then145_crit_edge
  %52 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %req, align 4
  %error = getelementptr inbounds %struct.memstick_request, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -62, ptr %error, align 4
  %call143 = tail call i32 @memstick_next_req(ptr noundef %msh, ptr noundef %req) #9
  %tobool144.not = icmp eq i32 %call143, 0
  br i1 %tobool144.not, label %if.then145.if.then145_crit_edge, label %if.then145.if.end153_crit_edge

if.then145.if.end153_crit_edge:                   ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end153

if.then145.if.then145_crit_edge:                  ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then145

if.end153:                                        ; preds = %if.then145.if.end153_crit_edge, %land.rhs.if.end153_crit_edge, %do.body132.if.end153_crit_edge, %do.body141.preheader.if.end153_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @memstick_detect_change(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @jmb38x_ms_dummy_submit(ptr nocapture noundef %msh) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @memstick_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jmb38x_ms_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %host_cnt = getelementptr inbounds %struct.jmb38x_ms, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %host_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %host_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp10 = icmp sgt i32 %3, 0
  br i1 %cmp10, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %cnt.011 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.jmb38x_ms, ptr %1, i32 0, i32 2, i32 %cnt.011
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end:                                           ; preds = %for.body
  tail call void @memstick_suspend_host(ptr noundef nonnull %5) #9
  %inc = add nuw nsw i32 %cnt.011, 1
  %6 = ptrtoint ptr %host_cnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %host_cnt, align 4
  %cmp = icmp slt i32 %inc, %7
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %call3 = tail call i32 @device_wakeup_disable(ptr noundef %dev) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jmb38x_ms_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  tail call fastcc void @jmb38x_ms_pmos(ptr noundef %add.ptr, i32 noundef 1)
  %host_cnt = getelementptr inbounds %struct.jmb38x_ms, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %host_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %host_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp14 = icmp sgt i32 %3, 0
  br i1 %cmp14, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %rc.015 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.jmb38x_ms, ptr %1, i32 0, i32 2, i32 %rc.015
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end:                                           ; preds = %for.body
  tail call void @memstick_resume_host(ptr noundef nonnull %5) #9
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  tail call void @memstick_detect_change(ptr noundef %7) #9
  %inc = add nuw nsw i32 %rc.015, 1
  %8 = ptrtoint ptr %host_cnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %host_cnt, align 4
  %cmp = icmp slt i32 %inc, %9
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @memstick_suspend_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @memstick_resume_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !13, !15, !16, !17, !19, !21, !23, !24, !25, !26, !28, !29, !31, !32, !34, !35, !37, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !53, !54, !56, !57, !59, !60, !62, !63, !64, !66, !67, !69, !70, !72, !73, !74, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !90, !91, !93, !94, !95, !97, !98, !100, !101, !103, !104, !105, !107, !108}
!llvm.named.register.sp = !{!110}
!llvm.module.flags = !{!111, !112, !113, !114, !115, !116, !117, !118}
!llvm.ident = !{!119}

!0 = !{ptr @__param_no_dma, !1, !"__param_no_dma", i1 false, i1 false}
!1 = !{!"../drivers/memstick/host/jmb38x_ms.c", i32 21, i32 1}
!2 = !{ptr @__UNIQUE_ID_no_dmatype248, !1, !"__UNIQUE_ID_no_dmatype248", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_jmb38x_ms__275_1025_jmb38x_ms_driver_init6, !4, !"__initcall__kmod_jmb38x_ms__275_1025_jmb38x_ms_driver_init6", i1 false, i1 false}
!4 = !{!"../drivers/memstick/host/jmb38x_ms.c", i32 1025, i32 1}
!5 = !{ptr @__exitcall_jmb38x_ms_driver_exit, !4, !"__exitcall_jmb38x_ms_driver_exit", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author276, !7, !"__UNIQUE_ID_author276", i1 false, i1 false}
!7 = !{!"../drivers/memstick/host/jmb38x_ms.c", i32 1027, i32 1}
!8 = !{ptr @__UNIQUE_ID_description277, !9, !"__UNIQUE_ID_description277", i1 false, i1 false}
!9 = !{!"../drivers/memstick/host/jmb38x_ms.c", i32 1028, i32 1}
!10 = !{ptr @__UNIQUE_ID_file278, !11, !"__UNIQUE_ID_file278", i1 false, i1 false}
!11 = !{!"../drivers/memstick/host/jmb38x_ms.c", i32 1029, i32 1}
!12 = !{ptr @__UNIQUE_ID_license279, !11, !"__UNIQUE_ID_license279", i1 false, i1 false}
!13 = !{ptr @no_dma, !14, !"no_dma", i1 false, i1 false}
!14 = !{!"../drivers/memstick/host/jmb38x_ms.c", i32 20, i32 13}
!15 = !{ptr @__param_str_no_dma, !1, !"__param_str_no_dma", i1 false, i1 false}
!16 = !{ptr @.str, !4, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @jmb38x_ms_driver, !18, !"jmb38x_ms_driver", i1 false, i1 false}
!18 = !{!"../drivers/memstick/host/jmb38x_ms.c", i32 1017, i32 26}
!19 = !{ptr @jmb38x_ms_id_tbl, !20, !"jmb38x_ms_id_tbl", i1 false, i1 false}
!20 = !{!"../drivers/memstick/host/jmb38x_ms.c", i32 1008, i32 29}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/memstick/host/jmb38x_ms.c", i32 776, i32 2}
!23 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @jmb38x_ms_pmos.__UNIQUE_ID_ddebug270, !22, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!26 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/memstick/host/jmb38x_ms.c", i32 785, i32 3}
!28 = !{ptr @jmb38x_ms_pmos.__UNIQUE_ID_ddebug271, !27, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/memstick/host/jmb38x_ms.c", i32 791, i32 2}
!31 = !{ptr @jmb38x_ms_pmos.__UNIQUE_ID_ddebug272, !30, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!32 = !{ptr @jmb38x_ms_alloc_host.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/memstick/host/jmb38x_ms.c", i32 864, i32 2}
!34 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/memstick/host/jmb38x_ms.c", i32 866, i32 49}
!37 = !{ptr @jmb38x_ms_alloc_host.__key.8, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/memstick/host/jmb38x_ms.c", i32 877, i32 2}
!39 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/memstick/host/jmb38x_ms.c", i32 617, i32 4}
!42 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @jmb38x_ms_req_tasklet.__UNIQUE_ID_ddebug264, !41, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/memstick/host/jmb38x_ms.c", i32 372, i32 3}
!46 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @jmb38x_ms_issue_cmd.__UNIQUE_ID_ddebug252, !45, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/memstick/host/jmb38x_ms.c", i32 377, i32 2}
!50 = !{ptr @jmb38x_ms_issue_cmd.__UNIQUE_ID_ddebug253, !49, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!51 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/memstick/host/jmb38x_ms.c", i32 378, i32 2}
!53 = !{ptr @jmb38x_ms_issue_cmd.__UNIQUE_ID_ddebug254, !52, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!54 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/memstick/host/jmb38x_ms.c", i32 379, i32 2}
!56 = !{ptr @jmb38x_ms_issue_cmd.__UNIQUE_ID_ddebug255, !55, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!57 = !{ptr @.str.17, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/memstick/host/jmb38x_ms.c", i32 461, i32 2}
!59 = !{ptr @jmb38x_ms_issue_cmd.__UNIQUE_ID_ddebug256, !58, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!60 = !{ptr @.str.18, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/memstick/host/jmb38x_ms.c", i32 702, i32 4}
!62 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @jmb38x_ms_set_param.__UNIQUE_ID_ddebug267, !61, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!64 = !{ptr @.str.20, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/memstick/host/jmb38x_ms.c", i32 709, i32 4}
!66 = !{ptr @jmb38x_ms_set_param.__UNIQUE_ID_ddebug268, !65, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!67 = !{ptr @.str.21, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/memstick/host/jmb38x_ms.c", i32 714, i32 3}
!69 = !{ptr @jmb38x_ms_set_param.__UNIQUE_ID_ddebug269, !68, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!70 = !{ptr @.str.22, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/memstick/host/jmb38x_ms.c", i32 650, i32 2}
!72 = !{ptr @.str.23, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @jmb38x_ms_reset.__UNIQUE_ID_ddebug265, !71, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!74 = !{ptr @.str.24, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/memstick/host/jmb38x_ms.c", i32 664, i32 2}
!76 = !{ptr @jmb38x_ms_reset.__UNIQUE_ID_ddebug266, !75, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!77 = !{ptr @.str.25, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/memstick/host/jmb38x_ms.c", i32 597, i32 2}
!79 = !{ptr @.str.26, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @jmb38x_ms_abort.__UNIQUE_ID_ddebug263, !78, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!81 = !{ptr @.str.27, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/memstick/host/jmb38x_ms.c", i32 474, i32 2}
!83 = !{ptr @.str.28, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @jmb38x_ms_complete_cmd.__UNIQUE_ID_ddebug257, !82, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!85 = !{ptr @.str.29, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/memstick/host/jmb38x_ms.c", i32 476, i32 2}
!87 = !{ptr @jmb38x_ms_complete_cmd.__UNIQUE_ID_ddebug258, !86, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!88 = !{ptr @.str.30, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/memstick/host/jmb38x_ms.c", i32 478, i32 2}
!90 = !{ptr @jmb38x_ms_complete_cmd.__UNIQUE_ID_ddebug259, !89, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!91 = !{ptr @.str.31, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/memstick/host/jmb38x_ms.c", i32 524, i32 2}
!93 = !{ptr @.str.32, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @jmb38x_ms_isr.__UNIQUE_ID_ddebug260, !92, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!95 = !{ptr @.str.33, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/memstick/host/jmb38x_ms.c", i32 535, i32 5}
!97 = !{ptr @jmb38x_ms_isr.__UNIQUE_ID_ddebug261, !96, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!98 = !{ptr @.str.34, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/memstick/host/jmb38x_ms.c", i32 575, i32 3}
!100 = !{ptr @jmb38x_ms_isr.__UNIQUE_ID_ddebug262, !99, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!101 = !{ptr @.str.35, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/memstick/host/jmb38x_ms.c", i32 986, i32 3}
!103 = !{ptr @.str.36, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @jmb38x_ms_remove.__UNIQUE_ID_ddebug273, !102, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!105 = !{ptr @.str.37, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/memstick/host/jmb38x_ms.c", i32 995, i32 3}
!107 = !{ptr @jmb38x_ms_remove.__UNIQUE_ID_ddebug274, !106, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!108 = !{ptr @jmb38x_ms_pm_ops, !109, !"jmb38x_ms_pm_ops", i1 false, i1 false}
!109 = !{!"../drivers/memstick/host/jmb38x_ms.c", i32 1015, i32 8}
!110 = !{!"sp"}
!111 = !{i32 1, !"wchar_size", i32 2}
!112 = !{i32 1, !"min_enum_size", i32 4}
!113 = !{i32 8, !"branch-target-enforcement", i32 0}
!114 = !{i32 8, !"sign-return-address", i32 0}
!115 = !{i32 8, !"sign-return-address-all", i32 0}
!116 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!117 = !{i32 7, !"uwtable", i32 1}
!118 = !{i32 7, !"frame-pointer", i32 2}
!119 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!120 = !{i64 2154658665}
!121 = !{i64 4221727}
!122 = !{i64 2154659072}
!123 = !{i64 2148325651, i64 2148325656, i64 2148325669, i64 2148325713, i64 2148325747, i64 2148325768}
!124 = !{!"auto-init"}
!125 = !{i64 4222145}
!126 = !{i64 2154636847}
!127 = !{i64 2154637109}
!128 = !{i64 2154637579}
!129 = !{i64 2154638089}
!130 = !{i64 2154640735}
!131 = !{i64 2154641159}
!132 = !{i64 2154641578}
!133 = !{i64 2154646790}
!134 = !{i64 2154647229}
!135 = !{i64 2154647663}
!136 = !{i64 2154611013}
!137 = !{i64 2154616149}
!138 = !{i64 2154616675}
!139 = !{i64 2154619166}
!140 = !{i64 2154576956}
!141 = !{i64 2154582002}
!142 = !{i64 2154584812}
!143 = !{i64 2154587599}
!144 = !{i8 0, i8 2}
!145 = !{i64 2154588122}
!146 = !{i64 2154588689}
!147 = !{i64 2154589278}
!148 = !{i64 2154589776}
!149 = !{i64 2154590664}
!150 = !{i64 2154590917}
!151 = !{i64 2154591340}
!152 = !{i64 2154591776}
!153 = !{i64 2154592221}
!154 = !{i64 2154593453}
!155 = !{i64 2154594419}
!156 = !{i64 2154594644}
!157 = !{!"branch_weights", i32 2000, i32 1}
!158 = !{i64 2154384102, i64 2154384594, i64 2154384139, i64 2154384195, i64 2154384229, i64 2154384253, i64 2154384294, i64 2154384315, i64 2154384343, i64 2154384377}
!159 = !{i64 905733, i64 905794}
!160 = !{i64 2154513595}
!161 = !{i64 2153902766}
!162 = !{i64 2154569393}
!163 = !{i64 2154569620}
!164 = !{i64 2154570339}
!165 = !{i64 2154567885}
!166 = !{i64 2154568402}
!167 = !{i64 2154568888}
!168 = !{i64 2153902973}
!169 = !{i64 2154516366}
!170 = !{i64 908465}
!171 = !{!"branch_weights", i32 1, i32 2000}
!172 = !{i64 908750}
!173 = !{i64 2154575349}
!174 = !{i64 2154575794}
!175 = !{i64 2154576237}
!176 = !{i64 2154626741}
!177 = !{i64 2154627746}
!178 = !{i64 2154628287}
!179 = !{i64 2154631618}
!180 = !{i64 2154632623}
!181 = !{i64 2154633164}
!182 = !{i64 2154635666}
!183 = !{i64 2154636120}
!184 = !{i64 2154600038}
!185 = !{i64 2154602866}
!186 = !{i64 2154605671}
!187 = !{i64 2154606165}
!188 = !{i64 2154606378}
!189 = !{i64 2154606767}
!190 = !{i64 2154607616}
!191 = !{i64 2154607869}
!192 = !{i64 2154608292}
!193 = !{i64 2154609507}
!194 = !{i64 2154610488}
