; ModuleID = '/llk/IR_all_yes/drivers/misc/fastrpc.c_pt.bc'
source_filename = "../drivers/misc/fastrpc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rpmsg_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.66 }
%union.anon.66 = type { i32 }
%struct.dma_buf_export_info = type { ptr, ptr, ptr, i32, i32, ptr, ptr }
%struct.dma_buf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.fastrpc_channel_ctx = type { i32, i32, ptr, [13 x %struct.fastrpc_session_ctx], %struct.spinlock, %struct.idr, %struct.list_head, %struct.miscdevice, %struct.kref }
%struct.fastrpc_session_ctx = type { ptr, i32, i8, i8 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.fastrpc_user = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, %struct.spinlock, %struct.mutex }
%struct.fastrpc_invoke_rsp = type { i64, i32 }
%struct.fastrpc_invoke_ctx = type { i32, i32, i32, i32, i32, i32, ptr, i64, i64, %struct.kref, %struct.list_head, %struct.completion, %struct.work_struct, %struct.fastrpc_msg, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fastrpc_msg = type { i32, i32, i64, i32, i32, i64, i64 }
%struct.fastrpc_req_munmap = type { i64, i64 }
%struct.fastrpc_alloc_dma_buf = type { i32, i32, i64 }
%struct.fastrpc_init_create = type { i32, i32, i32, i32, i64 }
%struct.fastrpc_phy_page = type { i64, i64 }
%struct.anon.74 = type { i32, i32, i32, i32, i32, i32 }
%struct.fastrpc_invoke_args = type { i64, i64, i32, i32 }
%struct.fastrpc_invoke = type { i32, i32, i64 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
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
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.fastrpc_buf = type { ptr, ptr, ptr, ptr, i64, i64, %struct.mutex, %struct.list_head, %struct.list_head, i32 }
%struct.fastrpc_mmap_req_msg = type { i32, i32, i64, i32 }
%struct.fastrpc_mmap_rsp_msg = type { i64 }
%struct.fastrpc_req_mmap = type { i32, i32, i64, i64, i64 }
%struct.fastrpc_buf_overlap = type { i64, i64, i32, i64, i64, i64 }
%struct.rpmsg_device = type { %struct.device, %struct.rpmsg_device_id, ptr, i32, i32, ptr, i8, i8, ptr }
%struct.rpmsg_device_id = type { [32 x i8], i32 }
%struct.fastrpc_remote_arg = type { i64, i64 }
%struct.fastrpc_invoke_buf = type { i32, i32 }
%struct.fastrpc_map = type { %struct.list_head, ptr, i32, ptr, ptr, ptr, i64, i64, ptr, i64, %struct.kref }
%struct.anon.10 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_buf = type { i32, ptr, %struct.list_head, ptr, %struct.mutex, i32, %struct.dma_buf_map, ptr, ptr, %struct.spinlock, ptr, %struct.list_head, ptr, ptr, %struct.wait_queue_head, %struct.dma_buf_poll_cb_t, %struct.dma_buf_poll_cb_t, ptr }
%struct.dma_buf_map = type { %union.anon.71, i8 }
%union.anon.71 = type { ptr }
%struct.dma_buf_poll_cb_t = type { %struct.dma_fence_cb, ptr, i32 }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.fastrpc_dma_buf_attachment = type { ptr, %struct.sg_table, %struct.list_head }
%struct.sg_table = type { ptr, i32, i32 }
%struct.dma_buf_attachment = type { ptr, ptr, %struct.list_head, ptr, i32, i8, ptr, ptr, ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.fastrpc_munmap_req_msg = type { i32, i64, i64 }

@__initcall__kmod_fastrpc__239_1769_fastrpc_init6 = internal global ptr @fastrpc_init, section ".initcall6.init", align 4
@__exitcall_fastrpc_exit = internal global ptr @fastrpc_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file240 = internal constant [34 x i8] c"fastrpc.file=drivers/misc/fastrpc\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [23 x i8] c"fastrpc.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns242 = internal constant [26 x i8] c"fastrpc.import_ns=DMA_BUF\00", section ".modinfo", align 1
@fastrpc_cb_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @fastrpc_cb_probe, ptr @fastrpc_cb_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.6, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @fastrpc_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@fastrpc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1756, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013fastrpc: failed to register cb driver\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fastrpc_init\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/misc/fastrpc.c\00", [41 x i8] zeroinitializer }, align 32
@fastrpc_init._entry_ptr = internal global ptr @fastrpc_init._entry, section ".printk_index", align 4
@fastrpc_driver = internal global { %struct.rpmsg_driver, [36 x i8] } { %struct.rpmsg_driver { %struct.device_driver { ptr @.str.17, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @fastrpc_rpmsg_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, ptr @fastrpc_rpmsg_probe, ptr @fastrpc_rpmsg_remove, ptr @fastrpc_rpmsg_callback }, [36 x i8] zeroinitializer }, align 32
@fastrpc_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 1762, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013fastrpc: failed to register rpmsg driver\0A\00", [52 x i8] zeroinitializer }, align 32
@fastrpc_init._entry_ptr.5 = internal global ptr @fastrpc_init._entry.3, section ".printk_index", align 4
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qcom,fastrpc-cb\00", [16 x i8] zeroinitializer }, align 32
@fastrpc_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,fastrpc-compute-cb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qcom,nsessions\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@fastrpc_cb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 1561, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"FastRPC Session ID not specified in DT\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fastrpc_cb_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fastrpc_cb_probe._entry_ptr = internal global ptr @fastrpc_cb_probe._entry, section ".printk_index", align 4
@fastrpc_cb_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.10, ptr @.str.2, i32 1577, ptr @.str.15, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"32-bit DMA enable failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@fastrpc_cb_probe._entry_ptr.16 = internal global ptr @fastrpc_cb_probe._entry.13, section ".printk_index", align 4
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qcom,fastrpc\00", [19 x i8] zeroinitializer }, align 32
@fastrpc_rpmsg_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,fastrpc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@fastrpc_rpmsg_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 1627, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"FastRPC Domain not specified in DT\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fastrpc_rpmsg_probe\00", [44 x i8] zeroinitializer }, align 32
@fastrpc_rpmsg_probe._entry_ptr = internal global ptr @fastrpc_rpmsg_probe._entry, section ".printk_index", align 4
@domains = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], [16 x i8] zeroinitializer }, align 32
@fastrpc_rpmsg_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.2, i32 1639, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"FastRPC Invalid Domain ID %d\0A\00", [34 x i8] zeroinitializer }, align 32
@fastrpc_rpmsg_probe._entry_ptr.23 = internal global ptr @fastrpc_rpmsg_probe._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fastrpc-%s\00", [21 x i8] zeroinitializer }, align 32
@fastrpc_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fastrpc_device_ioctl, ptr @fastrpc_device_ioctl, ptr null, i32 0, ptr @fastrpc_device_open, ptr null, ptr @fastrpc_device_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@fastrpc_rpmsg_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"adsp\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mdsp\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sdsp\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cdsp\00", [27 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@fastrpc_internal_invoke._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.33, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.fastrpc_internal_invoke = private unnamed_addr constant [24 x i8] c"fastrpc_internal_invoke\00", align 1
@fastrpc_internal_invoke._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @__func__.fastrpc_internal_invoke, ptr @.str.2, i32 960, ptr @.str.35, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"user app trying to send a kernel RPC message (%d)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@fastrpc_internal_invoke._entry_ptr = internal global ptr @fastrpc_internal_invoke._entry, section ".printk_index", align 4
@fastrpc_internal_invoke.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @__func__.fastrpc_internal_invoke, ptr @.str.2, ptr @.str.37, i8 0, i8 -3, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fastrpc\00", [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Error: Invoke Failed %d\0A\00", [39 x i8] zeroinitializer }, align 32
@fastrpc_context_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&ctx->put_work)\00", [62 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@fastrpc_get_args._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 883, ptr @.str.15, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Error: get invoke args failed:%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fastrpc_get_args\00", [47 x i8] zeroinitializer }, align 32
@fastrpc_get_args._entry_ptr = internal global ptr @fastrpc_get_args._entry, section ".printk_index", align 4
@fastrpc_create_maps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 757, ptr @.str.15, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Error Creating map %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fastrpc_create_maps\00", [44 x i8] zeroinitializer }, align 32
@fastrpc_create_maps._entry_ptr = internal global ptr @fastrpc_create_maps._entry, section ".printk_index", align 4
@fastrpc_map_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 644, ptr @.str.15, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to attach dmabuf\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fastrpc_map_create\00", [45 x i8] zeroinitializer }, align 32
@fastrpc_map_create._entry_ptr = internal global ptr @fastrpc_map_create._entry, section ".printk_index", align 4
@fastrpc_buf_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&buf->lock\00", [21 x i8] zeroinitializer }, align 32
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@__const.fastrpc_dmabuf_alloc.exp_info = private unnamed_addr constant %struct.dma_buf_export_info { ptr @.str.36, ptr null, ptr null, i32 0, i32 0, ptr null, ptr null }, align 4
@fastrpc_dma_buf_ops = internal constant { %struct.dma_buf_ops, [44 x i8] } { %struct.dma_buf_ops { i8 0, ptr @fastrpc_dma_buf_attach, ptr @fastrpc_dma_buf_detatch, ptr null, ptr null, ptr @fastrpc_map_dma_buf, ptr @fastrpc_unmap_dma_buf, ptr @fastrpc_release, ptr null, ptr null, ptr @fastrpc_mmap, ptr @fastrpc_vmap, ptr null }, [44 x i8] zeroinitializer }, align 32
@fastrpc_dma_buf_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 561, ptr @.str.15, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to get scatterlist from DMA API\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fastrpc_dma_buf_attach\00", [41 x i8] zeroinitializer }, align 32
@fastrpc_dma_buf_attach._entry_ptr = internal global ptr @fastrpc_dma_buf_attach._entry, section ".printk_index", align 4
@fastrpc_req_mmap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 1425, ptr @.str.15, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"flag not supported 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fastrpc_req_mmap\00", [47 x i8] zeroinitializer }, align 32
@fastrpc_req_mmap._entry_ptr = internal global ptr @fastrpc_req_mmap._entry, section ".printk_index", align 4
@fastrpc_req_mmap._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.2, i32 1430, ptr @.str.15, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"adding user allocated pages is not supported\0A\00", [50 x i8] zeroinitializer }, align 32
@fastrpc_req_mmap._entry_ptr.53 = internal global ptr @fastrpc_req_mmap._entry.51, section ".printk_index", align 4
@fastrpc_req_mmap._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.50, ptr @.str.2, i32 1436, ptr @.str.15, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to allocate buffer\0A\00", [37 x i8] zeroinitializer }, align 32
@fastrpc_req_mmap._entry_ptr.56 = internal global ptr @fastrpc_req_mmap._entry.54, section ".printk_index", align 4
@fastrpc_req_mmap._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.50, ptr @.str.2, i32 1461, ptr @.str.15, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mmap error (len 0x%08llx)\0A\00", [37 x i8] zeroinitializer }, align 32
@fastrpc_req_mmap._entry_ptr.59 = internal global ptr @fastrpc_req_mmap._entry.57, section ".printk_index", align 4
@fastrpc_req_mmap.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.50, ptr @.str.2, ptr @.str.60, i8 1, i8 115, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"mmap\09\09pt 0x%09lx OK [len 0x%08llx]\0A\00", [60 x i8] zeroinitializer }, align 32
@fastrpc_req_munmap_impl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 1371, ptr @.str.15, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mmap not in list\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fastrpc_req_munmap_impl\00", [40 x i8] zeroinitializer }, align 32
@fastrpc_req_munmap_impl._entry_ptr = internal global ptr @fastrpc_req_munmap_impl._entry, section ".printk_index", align 4
@fastrpc_req_munmap_impl.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.62, ptr @.str.2, ptr @.str.63, i8 1, i8 90, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"unmmap\09pt 0x%09lx OK\0A\00", [42 x i8] zeroinitializer }, align 32
@fastrpc_req_munmap_impl._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.62, ptr @.str.2, i32 1392, ptr @.str.15, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unmmap\09pt 0x%09lx ERROR\0A\00", [39 x i8] zeroinitializer }, align 32
@fastrpc_req_munmap_impl._entry_ptr.66 = internal global ptr @fastrpc_req_munmap_impl._entry.64, section ".printk_index", align 4
@fastrpc_device_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.67 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&fl->lock\00", [22 x i8] zeroinitializer }, align 32
@fastrpc_device_open.__key.68 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.69 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&fl->mutex\00", [21 x i8] zeroinitializer }, align 32
@fastrpc_device_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.2, i32 1246, ptr @.str.15, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"No session available\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fastrpc_device_open\00", [44 x i8] zeroinitializer }, align 32
@fastrpc_device_open._entry_ptr = internal global ptr @fastrpc_device_open._entry, section ".printk_index", align 4
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.72 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@fastrpc_rpmsg_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.2, i32 1717, ptr @.str.15, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"No context ID matches response\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fastrpc_rpmsg_callback\00", [41 x i8] zeroinitializer }, align 32
@fastrpc_rpmsg_callback._entry_ptr = internal global ptr @fastrpc_rpmsg_callback._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 20996, i64 21000, i64 3222295041, i64 3222295043, i64 3222295047, i64 3222819333, i64 3223343622]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 4294966784, i64 4294967186]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.78 = private unnamed_addr constant [18 x i8] c"fastrpc_cb_driver\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1608, i32 31 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1756, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant [15 x i8] c"fastrpc_driver\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1740, i32 28 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1762, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1612, i32 11 }
@___asan_gen_.105 = private unnamed_addr constant [20 x i8] c"fastrpc_match_table\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1603, i32 34 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1551, i32 37 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1560, i32 41 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1561, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1577, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1745, i32 11 }
@___asan_gen_.141 = private unnamed_addr constant [23 x i8] c"fastrpc_rpmsg_of_match\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1734, i32 34 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1625, i32 47 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1627, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant [8 x i8] c"domains\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 83, i32 20 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1639, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1648, i32 56 }
@___asan_gen_.168 = private unnamed_addr constant [13 x i8] c"fastrpc_fops\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1531, i32 37 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1662, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 83, i32 49 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 83, i32 57 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 84, i32 7 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 84, i32 15 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 230, i32 6 }
@___asan_gen_.193 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 214, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 156, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 960, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1014, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 486, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 87, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 883, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 757, i32 4 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 644, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 302, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant [20 x i8] c"fastrpc_dma_buf_ops\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 609, i32 33 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 561, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1425, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1430, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1436, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1461, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1483, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1371, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1386, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1392, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1235, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1236, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1246, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.349 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 378, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.357 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.358 = private constant [26 x i8] c"../drivers/misc/fastrpc.c\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1717, i32 3 }
@llvm.compiler.used = appending global [118 x ptr] [ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_import_ns242, ptr @__UNIQUE_ID_license241, ptr @__exitcall_fastrpc_exit, ptr @__initcall__kmod_fastrpc__239_1769_fastrpc_init6, ptr @fastrpc_cb_probe._entry, ptr @fastrpc_cb_probe._entry.13, ptr @fastrpc_cb_probe._entry_ptr, ptr @fastrpc_cb_probe._entry_ptr.16, ptr @fastrpc_create_maps._entry, ptr @fastrpc_create_maps._entry_ptr, ptr @fastrpc_device_open._entry, ptr @fastrpc_device_open._entry_ptr, ptr @fastrpc_dma_buf_attach._entry, ptr @fastrpc_dma_buf_attach._entry_ptr, ptr @fastrpc_get_args._entry, ptr @fastrpc_get_args._entry_ptr, ptr @fastrpc_init._entry, ptr @fastrpc_init._entry.3, ptr @fastrpc_init._entry_ptr, ptr @fastrpc_init._entry_ptr.5, ptr @fastrpc_internal_invoke._entry, ptr @fastrpc_internal_invoke._entry_ptr, ptr @fastrpc_map_create._entry, ptr @fastrpc_map_create._entry_ptr, ptr @fastrpc_req_mmap._entry, ptr @fastrpc_req_mmap._entry.51, ptr @fastrpc_req_mmap._entry.54, ptr @fastrpc_req_mmap._entry.57, ptr @fastrpc_req_mmap._entry_ptr, ptr @fastrpc_req_mmap._entry_ptr.53, ptr @fastrpc_req_mmap._entry_ptr.56, ptr @fastrpc_req_mmap._entry_ptr.59, ptr @fastrpc_req_munmap_impl._entry, ptr @fastrpc_req_munmap_impl._entry.64, ptr @fastrpc_req_munmap_impl._entry_ptr, ptr @fastrpc_req_munmap_impl._entry_ptr.66, ptr @fastrpc_rpmsg_callback._entry, ptr @fastrpc_rpmsg_callback._entry_ptr, ptr @fastrpc_rpmsg_probe._entry, ptr @fastrpc_rpmsg_probe._entry.21, ptr @fastrpc_rpmsg_probe._entry_ptr, ptr @fastrpc_rpmsg_probe._entry_ptr.23, ptr @fastrpc_cb_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @fastrpc_driver, ptr @.str.4, ptr @.str.6, ptr @fastrpc_match_table, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @fastrpc_rpmsg_of_match, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @domains, ptr @.str.22, ptr @.str.24, ptr @fastrpc_fops, ptr @fastrpc_rpmsg_probe.__key, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @fastrpc_internal_invoke._rs, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @fastrpc_context_alloc.__key, ptr @.str.38, ptr @init_completion.__key, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @fastrpc_buf_alloc.__key, ptr @.str.46, ptr @fastrpc_dma_buf_ops, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @fastrpc_device_open.__key, ptr @.str.67, ptr @fastrpc_device_open.__key.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @xa_init_flags.__key, ptr @.str.72, ptr @.str.73, ptr @.str.74], section "llvm.metadata"
@0 = internal global [94 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fastrpc_cb_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fastrpc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fastrpc_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fastrpc_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fastrpc_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fastrpc_cb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fastrpc_cb_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fastrpc_rpmsg_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fastrpc_rpmsg_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @domains to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fastrpc_rpmsg_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fastrpc_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fastrpc_rpmsg_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fastrpc_internal_invoke._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fastrpc_internal_invoke._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fastrpc_context_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fastrpc_get_args._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fastrpc_create_maps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fastrpc_map_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fastrpc_buf_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fastrpc_dma_buf_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fastrpc_dma_buf_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fastrpc_req_mmap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fastrpc_req_mmap._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fastrpc_req_mmap._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fastrpc_req_mmap._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fastrpc_req_munmap_impl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fastrpc_req_munmap_impl._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fastrpc_device_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fastrpc_device_open.__key.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fastrpc_device_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fastrpc_rpmsg_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fastrpc_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @fastrpc_cb_driver, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @__register_rpmsg_driver(ptr noundef nonnull @fastrpc_driver, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %do.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #15
  tail call void @platform_driver_unregister(ptr noundef nonnull @fastrpc_cb_driver) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call2, %do.end7 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fastrpc_exit() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @platform_driver_unregister(ptr noundef nonnull @fastrpc_cb_driver) #12
  tail call void @unregister_rpmsg_driver(ptr noundef nonnull @fastrpc_driver) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_rpmsg_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fastrpc_cb_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %sessions = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sessions) #12
  %0 = ptrtoint ptr %sessions to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %sessions, align 4
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %6, ptr noundef nonnull @.str.7, ptr noundef nonnull %sessions, i32 noundef 1, i32 noundef 0) #12
  %lock = getelementptr inbounds %struct.fastrpc_channel_ctx, ptr %4, i32 0, i32 4
  %call5 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %sesscount = getelementptr inbounds %struct.fastrpc_channel_ctx, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %sesscount to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sesscount, align 4
  %arrayidx = getelementptr %struct.fastrpc_channel_ctx, ptr %4, i32 0, i32 3, i32 %8
  %used = getelementptr %struct.fastrpc_channel_ctx, ptr %4, i32 0, i32 3, i32 %8, i32 2
  %9 = ptrtoint ptr %used to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %used, align 4
  %valid = getelementptr %struct.fastrpc_channel_ctx, ptr %4, i32 0, i32 3, i32 %8, i32 3
  %10 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %valid, align 1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev1, ptr %arrayidx, align 4
  %driver_data.i70 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %12 = ptrtoint ptr %driver_data.i70 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx, ptr %driver_data.i70, align 4
  %13 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node, align 8
  %sid = getelementptr %struct.fastrpc_channel_ctx, ptr %4, i32 0, i32 3, i32 %8, i32 1
  %call.i.i71 = call i32 @of_property_read_variable_u32_array(ptr noundef %14, ptr noundef nonnull @.str.8, ptr noundef %sid, i32 noundef 1, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i71)
  %tobool11.not = icmp sgt i32 %call.i.i71, -1
  br i1 %tobool11.not, label %if.end.if.end16_crit_edge, label %do.end15

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

do.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.9) #15
  br label %if.end16

if.end16:                                         ; preds = %do.end15, %if.end.if.end16_crit_edge
  %15 = ptrtoint ptr %sessions to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sessions, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp2072 = icmp sgt i32 %16, 1
  br i1 %cmp2072, label %if.end16.for.body_crit_edge, label %if.end16.if.end31_crit_edge

if.end16.if.end31_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.end16.for.body_crit_edge:                      ; preds = %if.end16
  br label %for.body

for.body:                                         ; preds = %if.end26.for.body_crit_edge, %if.end16.for.body_crit_edge
  %i.073 = phi i32 [ %inc30, %if.end26.for.body_crit_edge ], [ 1, %if.end16.for.body_crit_edge ]
  %17 = ptrtoint ptr %sesscount to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sesscount, align 4
  %inc = add i32 %18, 1
  store i32 %inc, ptr %sesscount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %18)
  %cmp23 = icmp sgt i32 %18, 12
  br i1 %cmp23, label %for.body.if.end31_crit_edge, label %if.end26

for.body.if.end31_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.end26:                                         ; preds = %for.body
  %arrayidx29 = getelementptr %struct.fastrpc_channel_ctx, ptr %4, i32 0, i32 3, i32 %inc
  %19 = call ptr @memcpy(ptr %arrayidx29, ptr %arrayidx, i32 12)
  %inc30 = add nuw nsw i32 %i.073, 1
  %exitcond.not = icmp eq i32 %inc30, %16
  br i1 %exitcond.not, label %if.end26.if.end31_crit_edge, label %if.end26.for.body_crit_edge

if.end26.for.body_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end26.if.end31_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.end31:                                         ; preds = %if.end26.if.end31_crit_edge, %for.body.if.end31_crit_edge, %if.end16.if.end31_crit_edge
  %20 = ptrtoint ptr %sesscount to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sesscount, align 4
  %inc33 = add i32 %21, 1
  store i32 %inc33, ptr %sesscount, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #12
  %call35 = call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef 4294967295) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end31.cleanup_crit_edge, label %do.end40

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end40:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end40, %if.end31.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call35, %do.end40 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end31.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sessions) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fastrpc_cb_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i24 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i24 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i24, align 4
  %lock = getelementptr inbounds %struct.fastrpc_channel_ctx, ptr %3, i32 0, i32 4
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %sid10 = getelementptr inbounds %struct.fastrpc_session_ctx, ptr %5, i32 0, i32 1
  %sesscount = getelementptr inbounds %struct.fastrpc_channel_ctx, ptr %3, i32 0, i32 1
  %sid = getelementptr %struct.fastrpc_channel_ctx, ptr %3, i32 0, i32 3, i32 1, i32 1
  %6 = ptrtoint ptr %sid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sid, align 4
  %8 = ptrtoint ptr %sid10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sid10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp11 = icmp eq i32 %7, %9
  br i1 %cmp11, label %if.then, label %entry.for.inc_crit_edge

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %valid = getelementptr %struct.fastrpc_channel_ctx, ptr %3, i32 0, i32 3, i32 1, i32 3
  %10 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %valid, align 1
  %11 = ptrtoint ptr %sesscount to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sesscount, align 4
  %dec = add i32 %12, -1
  store i32 %dec, ptr %sesscount, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %sid.1 = getelementptr %struct.fastrpc_channel_ctx, ptr %3, i32 0, i32 3, i32 2, i32 1
  %13 = ptrtoint ptr %sid.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sid.1, align 4
  %15 = ptrtoint ptr %sid10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sid10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp11.1 = icmp eq i32 %14, %16
  br i1 %cmp11.1, label %if.then.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  %valid.1 = getelementptr %struct.fastrpc_channel_ctx, ptr %3, i32 0, i32 3, i32 2, i32 3
  %17 = ptrtoint ptr %valid.1 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %valid.1, align 1
  %18 = ptrtoint ptr %sesscount to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sesscount, align 4
  %dec.1 = add i32 %19, -1
  store i32 %dec.1, ptr %sesscount, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %sid.2 = getelementptr %struct.fastrpc_channel_ctx, ptr %3, i32 0, i32 3, i32 3, i32 1
  %20 = ptrtoint ptr %sid.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sid.2, align 4
  %22 = ptrtoint ptr %sid10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sid10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp11.2 = icmp eq i32 %21, %23
  br i1 %cmp11.2, label %if.then.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  %valid.2 = getelementptr %struct.fastrpc_channel_ctx, ptr %3, i32 0, i32 3, i32 3, i32 3
  %24 = ptrtoint ptr %valid.2 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %valid.2, align 1
  %25 = ptrtoint ptr %sesscount to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sesscount, align 4
  %dec.2 = add i32 %26, -1
  store i32 %dec.2, ptr %sesscount, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %sid.3 = getelementptr %struct.fastrpc_channel_ctx, ptr %3, i32 0, i32 3, i32 4, i32 1
  %27 = ptrtoint ptr %sid.3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sid.3, align 4
  %29 = ptrtoint ptr %sid10 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sid10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp11.3 = icmp eq i32 %28, %30
  br i1 %cmp11.3, label %if.then.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  %valid.3 = getelementptr %struct.fastrpc_channel_ctx, ptr %3, i32 0, i32 3, i32 4, i32 3
  %31 = ptrtoint ptr %valid.3 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %valid.3, align 1
  %32 = ptrtoint ptr %sesscount to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sesscount, align 4
  %dec.3 = add i32 %33, -1
  store i32 %dec.3, ptr %sesscount, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %sid.4 = getelementptr %struct.fastrpc_channel_ctx, ptr %3, i32 0, i32 3, i32 5, i32 1
  %34 = ptrtoint ptr %sid.4 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sid.4, align 4
  %36 = ptrtoint ptr %sid10 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sid10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37)
  %cmp11.4 = icmp eq i32 %35, %37
  br i1 %cmp11.4, label %if.then.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  %valid.4 = getelementptr %struct.fastrpc_channel_ctx, ptr %3, i32 0, i32 3, i32 5, i32 3
  %38 = ptrtoint ptr %valid.4 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %valid.4, align 1
  %39 = ptrtoint ptr %sesscount to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sesscount, align 4
  %dec.4 = add i32 %40, -1
  store i32 %dec.4, ptr %sesscount, align 4
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  %sid.5 = getelementptr %struct.fastrpc_channel_ctx, ptr %3, i32 0, i32 3, i32 6, i32 1
  %41 = ptrtoint ptr %sid.5 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %sid.5, align 4
  %43 = ptrtoint ptr %sid10 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sid10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp11.5 = icmp eq i32 %42, %44
  br i1 %cmp11.5, label %if.then.5, label %for.inc.4.for.inc.5_crit_edge

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  %valid.5 = getelementptr %struct.fastrpc_channel_ctx, ptr %3, i32 0, i32 3, i32 6, i32 3
  %45 = ptrtoint ptr %valid.5 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %valid.5, align 1
  %46 = ptrtoint ptr %sesscount to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sesscount, align 4
  %dec.5 = add i32 %47, -1
  store i32 %dec.5, ptr %sesscount, align 4
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %for.inc.4.for.inc.5_crit_edge
  %sid.6 = getelementptr %struct.fastrpc_channel_ctx, ptr %3, i32 0, i32 3, i32 7, i32 1
  %48 = ptrtoint ptr %sid.6 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sid.6, align 4
  %50 = ptrtoint ptr %sid10 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sid10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %51)
  %cmp11.6 = icmp eq i32 %49, %51
  br i1 %cmp11.6, label %if.then.6, label %for.inc.5.for.inc.6_crit_edge

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.6

if.then.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  %valid.6 = getelementptr %struct.fastrpc_channel_ctx, ptr %3, i32 0, i32 3, i32 7, i32 3
  %52 = ptrtoint ptr %valid.6 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %valid.6, align 1
  %53 = ptrtoint ptr %sesscount to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sesscount, align 4
  %dec.6 = add i32 %54, -1
  store i32 %dec.6, ptr %sesscount, align 4
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then.6, %for.inc.5.for.inc.6_crit_edge
  %sid.7 = getelementptr %struct.fastrpc_channel_ctx, ptr %3, i32 0, i32 3, i32 8, i32 1
  %55 = ptrtoint ptr %sid.7 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %sid.7, align 4
  %57 = ptrtoint ptr %sid10 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %sid10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %58)
  %cmp11.7 = icmp eq i32 %56, %58
  br i1 %cmp11.7, label %if.then.7, label %for.inc.6.for.inc.7_crit_edge

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.7

if.then.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #14
  %valid.7 = getelementptr %struct.fastrpc_channel_ctx, ptr %3, i32 0, i32 3, i32 8, i32 3
  %59 = ptrtoint ptr %valid.7 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %valid.7, align 1
  %60 = ptrtoint ptr %sesscount to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %sesscount, align 4
  %dec.7 = add i32 %61, -1
  store i32 %dec.7, ptr %sesscount, align 4
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then.7, %for.inc.6.for.inc.7_crit_edge
  %sid.8 = getelementptr %struct.fastrpc_channel_ctx, ptr %3, i32 0, i32 3, i32 9, i32 1
  %62 = ptrtoint ptr %sid.8 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %sid.8, align 4
  %64 = ptrtoint ptr %sid10 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %sid10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %65)
  %cmp11.8 = icmp eq i32 %63, %65
  br i1 %cmp11.8, label %if.then.8, label %for.inc.7.for.inc.8_crit_edge

for.inc.7.for.inc.8_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.8

if.then.8:                                        ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #14
  %valid.8 = getelementptr %struct.fastrpc_channel_ctx, ptr %3, i32 0, i32 3, i32 9, i32 3
  %66 = ptrtoint ptr %valid.8 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %valid.8, align 1
  %67 = ptrtoint ptr %sesscount to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %sesscount, align 4
  %dec.8 = add i32 %68, -1
  store i32 %dec.8, ptr %sesscount, align 4
  br label %for.inc.8

for.inc.8:                                        ; preds = %if.then.8, %for.inc.7.for.inc.8_crit_edge
  %sid.9 = getelementptr %struct.fastrpc_channel_ctx, ptr %3, i32 0, i32 3, i32 10, i32 1
  %69 = ptrtoint ptr %sid.9 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %sid.9, align 4
  %71 = ptrtoint ptr %sid10 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %sid10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %72)
  %cmp11.9 = icmp eq i32 %70, %72
  br i1 %cmp11.9, label %if.then.9, label %for.inc.8.for.inc.9_crit_edge

for.inc.8.for.inc.9_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.9

if.then.9:                                        ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #14
  %valid.9 = getelementptr %struct.fastrpc_channel_ctx, ptr %3, i32 0, i32 3, i32 10, i32 3
  %73 = ptrtoint ptr %valid.9 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %valid.9, align 1
  %74 = ptrtoint ptr %sesscount to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %sesscount, align 4
  %dec.9 = add i32 %75, -1
  store i32 %dec.9, ptr %sesscount, align 4
  br label %for.inc.9

for.inc.9:                                        ; preds = %if.then.9, %for.inc.8.for.inc.9_crit_edge
  %sid.10 = getelementptr %struct.fastrpc_channel_ctx, ptr %3, i32 0, i32 3, i32 11, i32 1
  %76 = ptrtoint ptr %sid.10 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %sid.10, align 4
  %78 = ptrtoint ptr %sid10 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %sid10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %79)
  %cmp11.10 = icmp eq i32 %77, %79
  br i1 %cmp11.10, label %if.then.10, label %for.inc.9.for.inc.10_crit_edge

for.inc.9.for.inc.10_crit_edge:                   ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.10

if.then.10:                                       ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #14
  %valid.10 = getelementptr %struct.fastrpc_channel_ctx, ptr %3, i32 0, i32 3, i32 11, i32 3
  %80 = ptrtoint ptr %valid.10 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %valid.10, align 1
  %81 = ptrtoint ptr %sesscount to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %sesscount, align 4
  %dec.10 = add i32 %82, -1
  store i32 %dec.10, ptr %sesscount, align 4
  br label %for.inc.10

for.inc.10:                                       ; preds = %if.then.10, %for.inc.9.for.inc.10_crit_edge
  %sid.11 = getelementptr %struct.fastrpc_channel_ctx, ptr %3, i32 0, i32 3, i32 12, i32 1
  %83 = ptrtoint ptr %sid.11 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %sid.11, align 4
  %85 = ptrtoint ptr %sid10 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %sid10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %86)
  %cmp11.11 = icmp eq i32 %84, %86
  br i1 %cmp11.11, label %if.then.11, label %for.inc.10.for.inc.11_crit_edge

for.inc.10.for.inc.11_crit_edge:                  ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.11

if.then.11:                                       ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #14
  %valid.11 = getelementptr %struct.fastrpc_channel_ctx, ptr %3, i32 0, i32 3, i32 12, i32 3
  %87 = ptrtoint ptr %valid.11 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %valid.11, align 1
  %88 = ptrtoint ptr %sesscount to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %sesscount, align 4
  %dec.11 = add i32 %89, -1
  store i32 %dec.11, ptr %sesscount, align 4
  br label %for.inc.11

for.inc.11:                                       ; preds = %if.then.11, %for.inc.10.for.inc.11_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fastrpc_rpmsg_probe(ptr noundef %rpdev) #0 align 64 {
entry:
  %domain = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %domain) #12
  %0 = ptrtoint ptr %domain to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %domain, align 4, !annotation !186
  %of_node = getelementptr inbounds %struct.device, ptr %rpdev, i32 0, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call = call i32 @of_property_read_string(ptr noundef %2, ptr noundef nonnull @.str.18, ptr noundef nonnull %domain) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %do.end

for.cond.preheader:                               ; preds = %entry
  %3 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %domain, align 4
  %call1 = call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.26, ptr noundef %4) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %for.cond.preheader.if.end10_crit_edge, label %for.inc

for.cond.preheader.if.end10_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %rpdev, ptr noundef nonnull @.str.19) #15
  br label %cleanup

for.inc:                                          ; preds = %for.cond.preheader
  %call1.1 = call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.27, ptr noundef %4) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1)
  %tobool2.not.1 = icmp eq i32 %call1.1, 0
  br i1 %tobool2.not.1, label %for.inc.if.end10_crit_edge, label %for.inc.1

for.inc.if.end10_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

for.inc.1:                                        ; preds = %for.inc
  %call1.2 = call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.28, ptr noundef %4) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2)
  %tobool2.not.2 = icmp eq i32 %call1.2, 0
  br i1 %tobool2.not.2, label %for.inc.1.if.end10_crit_edge, label %for.inc.2

for.inc.1.if.end10_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

for.inc.2:                                        ; preds = %for.inc.1
  %call1.3 = call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.29, ptr noundef %4) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.3)
  %tobool2.not.3 = icmp eq i32 %call1.3, 0
  br i1 %tobool2.not.3, label %for.inc.2.if.end10_crit_edge, label %for.inc.3

for.inc.2.if.end10_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

for.inc.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %rpdev, ptr noundef nonnull @.str.22, i32 noundef -1) #15
  br label %cleanup

if.end10:                                         ; preds = %for.inc.2.if.end10_crit_edge, %for.inc.1.if.end10_crit_edge, %for.inc.if.end10_crit_edge, %for.cond.preheader.if.end10_crit_edge
  %i.072.lcssa = phi i32 [ 0, %for.cond.preheader.if.end10_crit_edge ], [ 1, %for.inc.if.end10_crit_edge ], [ 2, %for.inc.1.if.end10_crit_edge ], [ 3, %for.inc.2.if.end10_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 324) #17
  %tobool12.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %miscdev = getelementptr inbounds %struct.fastrpc_channel_ctx, ptr %call7.i.i, i32 0, i32 7
  %6 = ptrtoint ptr %miscdev to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 255, ptr %miscdev, align 8
  %arrayidx15 = getelementptr [4 x ptr], ptr @domains, i32 0, i32 %i.072.lcssa
  %7 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx15, align 4
  %call16 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %rpdev, i32 noundef 3264, ptr noundef nonnull @.str.24, ptr noundef %8) #12
  %name = getelementptr inbounds %struct.fastrpc_channel_ctx, ptr %call7.i.i, i32 0, i32 7, i32 1
  %9 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call16, ptr %name, align 4
  %fops = getelementptr inbounds %struct.fastrpc_channel_ctx, ptr %call7.i.i, i32 0, i32 7, i32 2
  %10 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @fastrpc_fops, ptr %fops, align 8
  %call20 = call i32 @misc_register(ptr noundef %miscdev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.then22

if.then22:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

if.end23:                                         ; preds = %if.end14
  %refcount = getelementptr inbounds %struct.fastrpc_channel_ctx, ptr %call7.i.i, i32 0, i32 8
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #12
  %11 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 1, ptr %refcount, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %rpdev, i32 0, i32 8
  %12 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i, ptr %driver_data.i, align 4
  %call.i = call i32 @dma_set_mask(ptr noundef %rpdev, i64 noundef 4294967295) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end23.dma_set_mask_and_coherent.exit_crit_edge

if.end23.dma_set_mask_and_coherent.exit_crit_edge: ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_set_mask_and_coherent.exit

if.then.i:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i = call i32 @dma_set_coherent_mask(ptr noundef %rpdev, i64 noundef 4294967295) #12
  br label %dma_set_mask_and_coherent.exit

dma_set_mask_and_coherent.exit:                   ; preds = %if.then.i, %if.end23.dma_set_mask_and_coherent.exit_crit_edge
  %users = getelementptr inbounds %struct.fastrpc_channel_ctx, ptr %call7.i.i, i32 0, i32 6
  %13 = ptrtoint ptr %users to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %users, ptr %users, align 8
  %prev.i = getelementptr inbounds %struct.fastrpc_channel_ctx, ptr %call7.i.i, i32 0, i32 6, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %users, ptr %prev.i, align 4
  %lock = getelementptr inbounds %struct.fastrpc_channel_ctx, ptr %call7.i.i, i32 0, i32 4
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.25, ptr noundef nonnull @fastrpc_rpmsg_probe.__key, i16 noundef signext 3) #12
  %ctx_idr = getelementptr inbounds %struct.fastrpc_channel_ctx, ptr %call7.i.i, i32 0, i32 5
  call void @__raw_spin_lock_init(ptr noundef %ctx_idr, ptr noundef nonnull @.str.72, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #12
  %xa_flags.i.i.i = getelementptr inbounds %struct.fastrpc_channel_ctx, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 1
  %15 = ptrtoint ptr %xa_flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 67108868, ptr %xa_flags.i.i.i, align 8
  %xa_head.i.i.i = getelementptr inbounds %struct.fastrpc_channel_ctx, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 2
  %16 = ptrtoint ptr %xa_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %xa_head.i.i.i, align 4
  %idr_base.i.i = getelementptr inbounds %struct.fastrpc_channel_ctx, ptr %call7.i.i, i32 0, i32 5, i32 1
  %17 = ptrtoint ptr %idr_base.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %idr_base.i.i, align 8
  %idr_next.i.i = getelementptr inbounds %struct.fastrpc_channel_ctx, ptr %call7.i.i, i32 0, i32 5, i32 2
  %18 = ptrtoint ptr %idr_next.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %idr_next.i.i, align 4
  %19 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %i.072.lcssa, ptr %call7.i.i, align 8
  %rpdev31 = getelementptr inbounds %struct.fastrpc_channel_ctx, ptr %call7.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %rpdev31 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %rpdev, ptr %rpdev31, align 8
  %21 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %of_node, align 8
  %call33 = call i32 @of_platform_populate(ptr noundef %22, ptr noundef null, ptr noundef null, ptr noundef %rpdev) #12
  br label %cleanup

cleanup:                                          ; preds = %dma_set_mask_and_coherent.exit, %if.then22, %if.end10.cleanup_crit_edge, %for.inc.3, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ -22, %for.inc.3 ], [ %call20, %if.then22 ], [ %call33, %dma_set_mask_and_coherent.exit ], [ -12, %if.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %domain) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fastrpc_rpmsg_remove(ptr noundef %rpdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %rpdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.fastrpc_channel_ctx, ptr %1, i32 0, i32 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %users = getelementptr inbounds %struct.fastrpc_channel_ctx, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %2)
  %user.028 = load ptr, ptr %users, align 4
  %cmp9.not29 = icmp eq ptr %user.028, %users
  br i1 %cmp9.not29, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %fastrpc_notify_users.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %user.030 = phi ptr [ %user.0, %fastrpc_notify_users.exit.for.body_crit_edge ], [ %user.028, %entry.for.body_crit_edge ]
  %lock.i = getelementptr inbounds %struct.fastrpc_user, ptr %user.030, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #12
  %pending.i = getelementptr inbounds %struct.fastrpc_user, ptr %user.030, i32 0, i32 2
  %3 = ptrtoint ptr %pending.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn13.i = load ptr, ptr %pending.i, align 4
  %cmp.not14.i = icmp eq ptr %.pn13.i, %pending.i
  br i1 %cmp.not14.i, label %for.body.fastrpc_notify_users.exit_crit_edge, label %for.body.for.body.i_crit_edge

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.body.fastrpc_notify_users.exit_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %fastrpc_notify_users.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %.pn15.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn13.i, %for.body.for.body.i_crit_edge ]
  %work.i = getelementptr i8, ptr %.pn15.i, i32 8
  tail call void @complete(ptr noundef %work.i) #12
  %4 = ptrtoint ptr %.pn15.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i = load ptr, ptr %.pn15.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %pending.i
  br i1 %cmp.not.i, label %for.body.i.fastrpc_notify_users.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.fastrpc_notify_users.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fastrpc_notify_users.exit

fastrpc_notify_users.exit:                        ; preds = %for.body.i.fastrpc_notify_users.exit_crit_edge, %for.body.fastrpc_notify_users.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #12
  %5 = ptrtoint ptr %user.030 to i32
  call void @__asan_load4_noabort(i32 %5)
  %user.0 = load ptr, ptr %user.030, align 4
  %cmp9.not = icmp eq ptr %user.0, %users
  br i1 %cmp9.not, label %fastrpc_notify_users.exit.for.end_crit_edge, label %fastrpc_notify_users.exit.for.body_crit_edge

fastrpc_notify_users.exit.for.body_crit_edge:     ; preds = %fastrpc_notify_users.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

fastrpc_notify_users.exit.for.end_crit_edge:      ; preds = %fastrpc_notify_users.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %fastrpc_notify_users.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #12
  %miscdev = getelementptr inbounds %struct.fastrpc_channel_ctx, ptr %1, i32 0, i32 7
  tail call void @misc_deregister(ptr noundef %miscdev) #12
  tail call void @of_platform_depopulate(ptr noundef %rpdev) #12
  %rpdev18 = getelementptr inbounds %struct.fastrpc_channel_ctx, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %rpdev18 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %rpdev18, align 4
  %refcount.i = getelementptr inbounds %struct.fastrpc_channel_ctx, ptr %1, i32 0, i32 8
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !187
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #12
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #12, !srcloc !188
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.fastrpc_channel_ctx_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !189

if.end5.i.i.i.i.i.fastrpc_channel_ctx_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fastrpc_channel_ctx_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #12
  br label %fastrpc_channel_ctx_put.exit

if.then.i.i:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !190
  tail call void @kfree(ptr noundef %1) #12
  br label %fastrpc_channel_ctx_put.exit

fastrpc_channel_ctx_put.exit:                     ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.fastrpc_channel_ctx_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fastrpc_rpmsg_callback(ptr noundef %rpdev, ptr nocapture noundef readonly %data, i32 noundef %len, ptr nocapture noundef readnone %priv, i32 noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %len)
  %cmp = icmp ult i32 %len, 16
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.device, ptr %rpdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %data, align 8
  %4 = trunc i64 %3 to i32
  %5 = lshr i32 %4, 4
  %conv = and i32 %5, 255
  %lock = getelementptr inbounds %struct.fastrpc_channel_ctx, ptr %1, i32 0, i32 4
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %ctx_idr = getelementptr inbounds %struct.fastrpc_channel_ctx, ptr %1, i32 0, i32 5
  %call9 = tail call ptr @idr_find(ptr noundef %ctx_idr, i32 noundef %conv) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #12
  %tobool.not = icmp eq ptr %call9, null
  br i1 %tobool.not, label %do.end14, label %if.end16

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %rpdev, ptr noundef nonnull @.str.73) #15
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %retval17 = getelementptr inbounds %struct.fastrpc_invoke_rsp, ptr %data, i32 0, i32 1
  %6 = ptrtoint ptr %retval17 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %retval17, align 8
  %retval18 = getelementptr inbounds %struct.fastrpc_invoke_ctx, ptr %call9, i32 0, i32 2
  %8 = ptrtoint ptr %retval18 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %retval18, align 8
  %work = getelementptr inbounds %struct.fastrpc_invoke_ctx, ptr %call9, i32 0, i32 11
  tail call void @complete(ptr noundef %work) #12
  %put_work = getelementptr inbounds %struct.fastrpc_invoke_ctx, ptr %call9, i32 0, i32 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %9 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %put_work) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %do.end14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ -2, %do.end14 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fastrpc_device_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %req.i = alloca %struct.fastrpc_req_munmap, align 8
  %bp.i = alloca %struct.fastrpc_alloc_dma_buf, align 8
  %exp_info.i = alloca %struct.dma_buf_export_info, align 4
  %buf.i = alloca ptr, align 4
  %init.i = alloca %struct.fastrpc_init_create, align 8
  %pages.i = alloca [1 x %struct.fastrpc_phy_page], align 8
  %map.i = alloca ptr, align 4
  %imem.i = alloca ptr, align 4
  %inbuf.i = alloca %struct.anon.74, align 4
  %args.i24 = alloca [1 x %struct.fastrpc_invoke_args], align 8
  %tgid.i25 = alloca i32, align 4
  %args.i = alloca [1 x %struct.fastrpc_invoke_args], align 8
  %tgid.i = alloca i32, align 4
  %inv.i = alloca %struct.fastrpc_invoke, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = inttoptr i32 %arg to ptr
  %3 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 -1072672253, label %sw.bb
    i32 20996, label %sw.bb1
    i32 21000, label %sw.bb3
    i32 -1072147963, label %sw.bb5
    i32 -1072672255, label %sw.bb7
    i32 -1071623674, label %sw.bb9
    i32 -1072672249, label %sw.bb11
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %inv.i) #12
  %4 = getelementptr inbounds %struct.fastrpc_invoke, ptr %inv.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.fastrpc_invoke, ptr %inv.i, i32 0, i32 2
  %6 = call ptr @memset(ptr %inv.i, i32 255, i32 16)
  tail call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 156) #12
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i.i, label %sw.bb.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

sw.bb.if.then11.i.i.i_crit_edge:                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %sw.bb
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 16, i32 -1226833920) #18, !srcloc !191
  %asmresult.i.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !189

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %inv.i, i32 noundef 16) #12
  %8 = call i32 @llvm.read_register.i32(metadata !176) #12
  %and.i.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #7, !srcloc !192
  %and.i.i.i.i.i = and i32 %10, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #12, !srcloc !193
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !194
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %inv.i, ptr noundef %2, i32 noundef 16) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #12, !srcloc !193
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !194
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !189

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %sw.bb.if.then11.i.i.i_crit_edge
  %res.0.i.i62.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 16, %sw.bb.if.then11.i.i.i_crit_edge ], [ 16, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 16, %res.0.i.i62.i
  %add.ptr.i.i.i = getelementptr i8, ptr %inv.i, i32 %sub.i.i.i
  %11 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i62.i)
  br label %fastrpc_invoke.exit

if.end.i:                                         ; preds = %if.end.i.i.i
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %4, align 4
  %shr.i = lshr i32 %13, 16
  %and.i = and i32 %shr.i, 255
  %shr2.i = lshr i32 %13, 8
  %and3.i = and i32 %shr2.i, 255
  %shr5.i = lshr i32 %13, 4
  %and6.i = and i32 %shr5.i, 15
  %and9.i = and i32 %13, 15
  %add.i = add nuw nsw i32 %and3.i, %and9.i
  %add7.i = add nuw nsw i32 %add.i, %and.i
  %add10.i = add nuw nsw i32 %add7.i, %and6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add10.i)
  %tobool11.not.i = icmp eq i32 %add10.i, 0
  br i1 %tobool11.not.i, label %if.end.i.if.end22.i_crit_edge, label %if.then12.i

if.end.i.if.end22.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22.i

if.then12.i:                                      ; preds = %if.end.i
  %14 = mul nuw nsw i32 %add10.i, 24
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %14, i32 noundef 3520) #19
  %tobool14.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool14.not.i, label %if.then12.i.fastrpc_invoke.exit_crit_edge, label %if.end16.i

if.then12.i.fastrpc_invoke.exit_crit_edge:        ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fastrpc_invoke.exit

if.end16.i:                                       ; preds = %if.then12.i
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %5, align 8
  %conv.i = trunc i64 %16 to i32
  %17 = inttoptr i32 %conv.i to ptr
  call void @__check_object_size(ptr noundef nonnull %call8.i.i.i, i32 noundef %14, i1 noundef zeroext false) #12
  call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 156) #12
  %call.i.i38.i = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i38.i, label %if.end16.i.if.then11.i.i54.i_crit_edge, label %land.lhs.true.i.i41.i

if.end16.i.if.then11.i.i54.i_crit_edge:           ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i54.i

land.lhs.true.i.i41.i:                            ; preds = %if.end16.i
  %18 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %17, i32 %14, i32 -1226833920) #18, !srcloc !191
  %asmresult.i.i39.i = extractvalue { i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i39.i)
  %cmp.i6.i40.i = icmp eq i32 %asmresult.i.i39.i, 0
  br i1 %cmp.i6.i40.i, label %if.end.i.i51.i, label %land.lhs.true.i.i41.i.if.then11.i.i54.i_crit_edge, !prof !189

land.lhs.true.i.i41.i.if.then11.i.i54.i_crit_edge: ; preds = %land.lhs.true.i.i41.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i54.i

if.end.i.i51.i:                                   ; preds = %land.lhs.true.i.i41.i
  %call.i.i.i42.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call8.i.i.i, i32 noundef %14) #12
  %19 = call i32 @llvm.read_register.i32(metadata !176) #12
  %and.i.i.i.i.i.i43.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i.i43.i to ptr
  %cpu_domain.i.i.i.i.i44.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 4
  %21 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i44.i) #7, !srcloc !192
  %and.i.i.i.i45.i = and i32 %21, -13
  %or.i.i.i.i46.i = or i32 %and.i.i.i.i45.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i46.i) #12, !srcloc !193
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !194
  %call1.i.i.i47.i = call i32 @arm_copy_from_user(ptr noundef nonnull %call8.i.i.i, ptr noundef %17, i32 noundef %14) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #12, !srcloc !193
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !194
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i47.i)
  %tobool4.not.i.i50.i = icmp eq i32 %call1.i.i.i47.i, 0
  br i1 %tobool4.not.i.i50.i, label %if.end.i.i51.i.if.end22.i_crit_edge, label %if.end.i.i51.i.if.then11.i.i54.i_crit_edge, !prof !189

if.end.i.i51.i.if.then11.i.i54.i_crit_edge:       ; preds = %if.end.i.i51.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i54.i

if.end.i.i51.i.if.end22.i_crit_edge:              ; preds = %if.end.i.i51.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22.i

if.then11.i.i54.i:                                ; preds = %if.end.i.i51.i.if.then11.i.i54.i_crit_edge, %land.lhs.true.i.i41.i.if.then11.i.i54.i_crit_edge, %if.end16.i.if.then11.i.i54.i_crit_edge
  %res.0.i.i4973.i = phi i32 [ %call1.i.i.i47.i, %if.end.i.i51.i.if.then11.i.i54.i_crit_edge ], [ %14, %if.end16.i.if.then11.i.i54.i_crit_edge ], [ %14, %land.lhs.true.i.i41.i.if.then11.i.i54.i_crit_edge ]
  %sub.i.i52.i = sub i32 %14, %res.0.i.i4973.i
  %add.ptr.i.i53.i = getelementptr i8, ptr %call8.i.i.i, i32 %sub.i.i52.i
  %22 = call ptr @memset(ptr %add.ptr.i.i53.i, i32 0, i32 %res.0.i.i4973.i)
  call void @kfree(ptr noundef nonnull %call8.i.i.i) #12
  br label %fastrpc_invoke.exit

if.end22.i:                                       ; preds = %if.end.i.i51.i.if.end22.i_crit_edge, %if.end.i.if.end22.i_crit_edge
  %args.0.i = phi ptr [ null, %if.end.i.if.end22.i_crit_edge ], [ %call8.i.i.i, %if.end.i.i51.i.if.end22.i_crit_edge ]
  %23 = ptrtoint ptr %inv.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %inv.i, align 8
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %4, align 4
  %call24.i = call fastcc i32 @fastrpc_internal_invoke(ptr noundef %1, i32 noundef 0, i32 noundef %24, i32 noundef %26, ptr noundef %args.0.i) #12
  call void @kfree(ptr noundef %args.0.i) #12
  br label %fastrpc_invoke.exit

fastrpc_invoke.exit:                              ; preds = %if.end22.i, %if.then11.i.i54.i, %if.then12.i.fastrpc_invoke.exit_crit_edge, %if.then11.i.i.i
  %retval.0.i = phi i32 [ -14, %if.then11.i.i54.i ], [ %call24.i, %if.end22.i ], [ -12, %if.then12.i.fastrpc_invoke.exit_crit_edge ], [ -14, %if.then11.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %inv.i) #12
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args.i) #12
  %27 = getelementptr inbounds %struct.fastrpc_invoke_args, ptr %args.i, i32 0, i32 1
  %28 = getelementptr inbounds %struct.fastrpc_invoke_args, ptr %args.i, i32 0, i32 2
  %29 = getelementptr inbounds %struct.fastrpc_invoke_args, ptr %args.i, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tgid.i) #12
  %tgid1.i = getelementptr inbounds %struct.fastrpc_user, ptr %1, i32 0, i32 7
  %30 = ptrtoint ptr %tgid1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tgid1.i, align 4
  %32 = ptrtoint ptr %tgid.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %tgid.i, align 4
  %33 = ptrtoint ptr %tgid.i to i32
  %conv.i23 = zext i32 %33 to i64
  %34 = ptrtoint ptr %args.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %conv.i23, ptr %args.i, align 8
  %35 = ptrtoint ptr %27 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 4, ptr %27, align 8
  %36 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %28, align 8
  %37 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %29, align 4
  %pd5.i = getelementptr inbounds %struct.fastrpc_user, ptr %1, i32 0, i32 8
  %38 = ptrtoint ptr %pd5.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %pd5.i, align 4
  %call.i = call fastcc i32 @fastrpc_internal_invoke(ptr noundef %1, i32 noundef 1, i32 noundef 1, i32 noundef 65536, ptr noundef nonnull %args.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tgid.i) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args.i) #12
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args.i24) #12
  %39 = getelementptr inbounds %struct.fastrpc_invoke_args, ptr %args.i24, i32 0, i32 1
  %40 = getelementptr inbounds %struct.fastrpc_invoke_args, ptr %args.i24, i32 0, i32 2
  %41 = getelementptr inbounds %struct.fastrpc_invoke_args, ptr %args.i24, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tgid.i25) #12
  %tgid1.i26 = getelementptr inbounds %struct.fastrpc_user, ptr %1, i32 0, i32 7
  %42 = ptrtoint ptr %tgid1.i26 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tgid1.i26, align 4
  %44 = ptrtoint ptr %tgid.i25 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %tgid.i25, align 4
  %45 = ptrtoint ptr %tgid.i25 to i32
  %conv.i27 = zext i32 %45 to i64
  %46 = ptrtoint ptr %args.i24 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %conv.i27, ptr %args.i24, align 8
  %47 = ptrtoint ptr %39 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 4, ptr %39, align 8
  %48 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1, ptr %40, align 8
  %49 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %41, align 4
  %pd5.i28 = getelementptr inbounds %struct.fastrpc_user, ptr %1, i32 0, i32 8
  %50 = ptrtoint ptr %pd5.i28 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 2, ptr %pd5.i28, align 4
  %call.i29 = call fastcc i32 @fastrpc_internal_invoke(ptr noundef %1, i32 noundef 1, i32 noundef 1, i32 noundef 65536, ptr noundef nonnull %args.i24) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tgid.i25) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args.i24) #12
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %init.i) #12
  %51 = getelementptr inbounds %struct.fastrpc_init_create, ptr %init.i, i32 0, i32 1
  %52 = getelementptr inbounds %struct.fastrpc_init_create, ptr %init.i, i32 0, i32 2
  %53 = getelementptr inbounds %struct.fastrpc_init_create, ptr %init.i, i32 0, i32 3
  %54 = getelementptr inbounds %struct.fastrpc_init_create, ptr %init.i, i32 0, i32 4
  %55 = call ptr @memset(ptr %init.i, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pages.i) #12
  %56 = getelementptr inbounds %struct.fastrpc_phy_page, ptr %pages.i, i32 0, i32 1
  %57 = call ptr @memset(ptr %pages.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %map.i) #12
  %58 = ptrtoint ptr %map.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %map.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %imem.i) #12
  %59 = ptrtoint ptr %imem.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %imem.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %inbuf.i) #12
  %60 = getelementptr inbounds %struct.anon.74, ptr %inbuf.i, i32 0, i32 1
  %61 = getelementptr inbounds %struct.anon.74, ptr %inbuf.i, i32 0, i32 2
  %62 = getelementptr inbounds %struct.anon.74, ptr %inbuf.i, i32 0, i32 3
  %63 = getelementptr inbounds %struct.anon.74, ptr %inbuf.i, i32 0, i32 4
  %64 = getelementptr inbounds %struct.anon.74, ptr %inbuf.i, i32 0, i32 5
  %65 = call ptr @memset(ptr %inbuf.i, i32 255, i32 24)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %66 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i.i30 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %66, i32 noundef 3520, i32 noundef 144) #17
  %tobool.not.i = icmp eq ptr %call7.i.i.i.i30, null
  br i1 %tobool.not.i, label %sw.bb5.fastrpc_init_create_process.exit_crit_edge, label %if.end8.i.i.i

sw.bb5.fastrpc_init_create_process.exit_crit_edge: ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #14
  br label %fastrpc_init_create_process.exit

if.end8.i.i.i:                                    ; preds = %sw.bb5
  tail call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 156) #12
  %call.i.i.i31 = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i.i31, label %if.end8.i.i.i.if.then11.i.i.i45_crit_edge, label %land.lhs.true.i.i.i34

if.end8.i.i.i.if.then11.i.i.i45_crit_edge:        ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i.i45

land.lhs.true.i.i.i34:                            ; preds = %if.end8.i.i.i
  %67 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 24, i32 -1226833920) #18, !srcloc !191
  %asmresult.i.i.i32 = extractvalue { i32, i32 } %67, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i32)
  %cmp.i6.i.i33 = icmp eq i32 %asmresult.i.i.i32, 0
  br i1 %cmp.i6.i.i33, label %if.end.i.i.i42, label %land.lhs.true.i.i.i34.if.then11.i.i.i45_crit_edge, !prof !189

land.lhs.true.i.i.i34.if.then11.i.i.i45_crit_edge: ; preds = %land.lhs.true.i.i.i34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i.i45

if.end.i.i.i42:                                   ; preds = %land.lhs.true.i.i.i34
  %call.i.i.i.i35 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %init.i, i32 noundef 24) #12
  %68 = call i32 @llvm.read_register.i32(metadata !176) #12
  %and.i.i.i.i.i.i.i36 = and i32 %68, -16384
  %69 = inttoptr i32 %and.i.i.i.i.i.i.i36 to ptr
  %cpu_domain.i.i.i.i.i.i37 = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 4
  %70 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i37) #7, !srcloc !192
  %and.i.i.i.i.i38 = and i32 %70, -13
  %or.i.i.i.i.i39 = or i32 %and.i.i.i.i.i38, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i39) #12, !srcloc !193
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !194
  %call1.i.i.i.i40 = call i32 @arm_copy_from_user(ptr noundef nonnull %init.i, ptr noundef %2, i32 noundef 24) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %70) #12, !srcloc !193
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !194
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i40)
  %tobool4.not.i.i.i41 = icmp eq i32 %call1.i.i.i.i40, 0
  br i1 %tobool4.not.i.i.i41, label %if.end4.i, label %if.end.i.i.i42.if.then11.i.i.i45_crit_edge, !prof !189

if.end.i.i.i42.if.then11.i.i.i45_crit_edge:       ; preds = %if.end.i.i.i42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i.i45

if.then11.i.i.i45:                                ; preds = %if.end.i.i.i42.if.then11.i.i.i45_crit_edge, %land.lhs.true.i.i.i34.if.then11.i.i.i45_crit_edge, %if.end8.i.i.i.if.then11.i.i.i45_crit_edge
  %res.0.i.i150.i = phi i32 [ %call1.i.i.i.i40, %if.end.i.i.i42.if.then11.i.i.i45_crit_edge ], [ 24, %if.end8.i.i.i.if.then11.i.i.i45_crit_edge ], [ 24, %land.lhs.true.i.i.i34.if.then11.i.i.i45_crit_edge ]
  %sub.i.i.i43 = sub i32 24, %res.0.i.i150.i
  %add.ptr.i.i.i44 = getelementptr i8, ptr %init.i, i32 %sub.i.i.i43
  %71 = call ptr @memset(ptr %add.ptr.i.i.i44, i32 0, i32 %res.0.i.i150.i)
  br label %cleanup.sink.split.i

if.end4.i:                                        ; preds = %if.end.i.i.i42
  %72 = ptrtoint ptr %init.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %init.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %73)
  %cmp.i = icmp ugt i32 %73, 2097152
  br i1 %cmp.i, label %if.end4.i.cleanup.sink.split.i_crit_edge, label %if.end6.i

if.end4.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

if.end6.i:                                        ; preds = %if.end4.i
  %tgid.i46 = getelementptr inbounds %struct.fastrpc_user, ptr %1, i32 0, i32 7
  %74 = ptrtoint ptr %tgid.i46 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %tgid.i46, align 4
  %76 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %inbuf.i, align 4
  %77 = call i32 @llvm.read_register.i32(metadata !176) #12
  %and.i.i = and i32 %77, -16384
  %78 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %80, i32 0, i32 101
  %call8.i = call i32 @strlen(ptr noundef %comm.i) #20
  %add.i47 = add i32 %call8.i, 1
  %81 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %add.i47, ptr %60, align 4
  %82 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %73, ptr %61, align 4
  %83 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 1, ptr %62, align 4
  %84 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %52, align 8
  %86 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %63, align 4
  %87 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %53, align 4
  %89 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %64, align 4
  %pd.i = getelementptr inbounds %struct.fastrpc_user, ptr %1, i32 0, i32 8
  %90 = ptrtoint ptr %pd.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 1, ptr %pd.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool14.not.i48 = icmp eq i32 %73, 0
  br i1 %tobool14.not.i48, label %if.end6.i.if.end23.i_crit_edge, label %land.lhs.true.i

if.end6.i.if.end23.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23.i

land.lhs.true.i:                                  ; preds = %if.end6.i
  %91 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool15.not.i = icmp eq i32 %92, 0
  br i1 %tobool15.not.i, label %land.lhs.true.i.if.end23.i_crit_edge, label %if.then16.i

land.lhs.true.i.if.end23.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23.i

if.then16.i:                                      ; preds = %land.lhs.true.i
  %conv.i49 = zext i32 %73 to i64
  %call19.i = call fastcc i32 @fastrpc_map_create(ptr noundef %1, i32 noundef %92, i64 noundef %conv.i49, ptr noundef nonnull %map.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.then16.i.if.end23.i_crit_edge, label %if.then16.i.cleanup.sink.split.i_crit_edge

if.then16.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

if.then16.i.if.end23.i_crit_edge:                 ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then16.i.if.end23.i_crit_edge, %land.lhs.true.i.if.end23.i_crit_edge, %if.end6.i.if.end23.i_crit_edge
  %93 = ptrtoint ptr %init.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %init.i, align 8
  %mul.i = shl i32 %94, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %mul.i)
  %cmp25.i = icmp slt i32 %mul.i, 2097152
  %phi.bo.i = add i32 %mul.i, 1048575
  %phi.bo143.i = and i32 %phi.bo.i, -1048576
  %cond.i = select i1 %cmp25.i, i32 2097152, i32 %phi.bo143.i
  %sctx.i = getelementptr inbounds %struct.fastrpc_user, ptr %1, i32 0, i32 5
  %95 = ptrtoint ptr %sctx.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %sctx.i, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %96, align 4
  %conv28.i = sext i32 %cond.i to i64
  %call29.i = call fastcc i32 @fastrpc_buf_alloc(ptr noundef %1, ptr noundef %98, i64 noundef %conv28.i, ptr noundef nonnull %imem.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.end32.i, label %if.end23.i.err_alloc.i_crit_edge

if.end23.i.err_alloc.i_crit_edge:                 ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_alloc.i

if.end32.i:                                       ; preds = %if.end23.i
  %99 = ptrtoint ptr %imem.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %imem.i, align 4
  %init_mem.i = getelementptr inbounds %struct.fastrpc_user, ptr %1, i32 0, i32 6
  %101 = ptrtoint ptr %init_mem.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %100, ptr %init_mem.i, align 4
  %102 = ptrtoint ptr %inbuf.i to i32
  %conv33.i = zext i32 %102 to i64
  %103 = ptrtoint ptr %call7.i.i.i.i30 to i32
  call void @__asan_store8_noabort(i32 %103)
  store i64 %conv33.i, ptr %call7.i.i.i.i30, align 8
  %length.i = getelementptr inbounds %struct.fastrpc_invoke_args, ptr %call7.i.i.i.i30, i32 0, i32 1
  %104 = ptrtoint ptr %length.i to i32
  call void @__asan_store8_noabort(i32 %104)
  store i64 24, ptr %length.i, align 8
  %fd.i = getelementptr inbounds %struct.fastrpc_invoke_args, ptr %call7.i.i.i.i30, i32 0, i32 2
  %105 = ptrtoint ptr %fd.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 -1, ptr %fd.i, align 8
  %106 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %task.i, align 8
  %comm38.i = getelementptr inbounds %struct.task_struct, ptr %107, i32 0, i32 101
  %108 = ptrtoint ptr %comm38.i to i32
  %conv40.i = zext i32 %108 to i64
  %arrayidx41.i = getelementptr %struct.fastrpc_invoke_args, ptr %call7.i.i.i.i30, i32 1
  %109 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 %conv40.i, ptr %arrayidx41.i, align 8
  %110 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %60, align 4
  %conv44.i = zext i32 %111 to i64
  %length46.i = getelementptr %struct.fastrpc_invoke_args, ptr %call7.i.i.i.i30, i32 1, i32 1
  %112 = ptrtoint ptr %length46.i to i32
  call void @__asan_store8_noabort(i32 %112)
  store i64 %conv44.i, ptr %length46.i, align 8
  %fd48.i = getelementptr %struct.fastrpc_invoke_args, ptr %call7.i.i.i.i30, i32 1, i32 2
  %113 = ptrtoint ptr %fd48.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 -1, ptr %fd48.i, align 8
  %114 = ptrtoint ptr %54 to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %54, align 8
  %arrayidx49.i = getelementptr %struct.fastrpc_invoke_args, ptr %call7.i.i.i.i30, i32 2
  %116 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_store8_noabort(i32 %116)
  store i64 %115, ptr %arrayidx49.i, align 8
  %117 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %61, align 4
  %conv52.i = zext i32 %118 to i64
  %length54.i = getelementptr %struct.fastrpc_invoke_args, ptr %call7.i.i.i.i30, i32 2, i32 1
  %119 = ptrtoint ptr %length54.i to i32
  call void @__asan_store8_noabort(i32 %119)
  store i64 %conv52.i, ptr %length54.i, align 8
  %120 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %51, align 4
  %fd57.i = getelementptr %struct.fastrpc_invoke_args, ptr %call7.i.i.i.i30, i32 2, i32 2
  %122 = ptrtoint ptr %fd57.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %fd57.i, align 8
  %phys.i = getelementptr inbounds %struct.fastrpc_buf, ptr %100, i32 0, i32 4
  %123 = ptrtoint ptr %phys.i to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %phys.i, align 8
  %125 = ptrtoint ptr %pages.i to i32
  call void @__asan_store8_noabort(i32 %125)
  store i64 %124, ptr %pages.i, align 8
  %size.i = getelementptr inbounds %struct.fastrpc_buf, ptr %100, i32 0, i32 5
  %126 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %size.i, align 8
  %128 = ptrtoint ptr %56 to i32
  call void @__asan_store8_noabort(i32 %128)
  store i64 %127, ptr %56, align 8
  %129 = ptrtoint ptr %pages.i to i32
  %conv62.i = zext i32 %129 to i64
  %arrayidx63.i = getelementptr %struct.fastrpc_invoke_args, ptr %call7.i.i.i.i30, i32 3
  %130 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_store8_noabort(i32 %130)
  store i64 %conv62.i, ptr %arrayidx63.i, align 8
  %length66.i = getelementptr %struct.fastrpc_invoke_args, ptr %call7.i.i.i.i30, i32 3, i32 1
  %131 = ptrtoint ptr %length66.i to i32
  call void @__asan_store8_noabort(i32 %131)
  store i64 16, ptr %length66.i, align 8
  %fd68.i = getelementptr %struct.fastrpc_invoke_args, ptr %call7.i.i.i.i30, i32 3, i32 2
  %132 = ptrtoint ptr %fd68.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 -1, ptr %fd68.i, align 8
  %133 = ptrtoint ptr %63 to i32
  %conv70.i = zext i32 %133 to i64
  %arrayidx71.i = getelementptr %struct.fastrpc_invoke_args, ptr %call7.i.i.i.i30, i32 4
  %134 = ptrtoint ptr %arrayidx71.i to i32
  call void @__asan_store8_noabort(i32 %134)
  store i64 %conv70.i, ptr %arrayidx71.i, align 8
  %length74.i = getelementptr %struct.fastrpc_invoke_args, ptr %call7.i.i.i.i30, i32 4, i32 1
  %135 = ptrtoint ptr %length74.i to i32
  call void @__asan_store8_noabort(i32 %135)
  store i64 4, ptr %length74.i, align 8
  %fd76.i = getelementptr %struct.fastrpc_invoke_args, ptr %call7.i.i.i.i30, i32 4, i32 2
  %136 = ptrtoint ptr %fd76.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 -1, ptr %fd76.i, align 8
  %137 = ptrtoint ptr %64 to i32
  %conv78.i = zext i32 %137 to i64
  %arrayidx79.i = getelementptr %struct.fastrpc_invoke_args, ptr %call7.i.i.i.i30, i32 5
  %138 = ptrtoint ptr %arrayidx79.i to i32
  call void @__asan_store8_noabort(i32 %138)
  store i64 %conv78.i, ptr %arrayidx79.i, align 8
  %length82.i = getelementptr %struct.fastrpc_invoke_args, ptr %call7.i.i.i.i30, i32 5, i32 1
  %139 = ptrtoint ptr %length82.i to i32
  call void @__asan_store8_noabort(i32 %139)
  store i64 4, ptr %length82.i, align 8
  %fd84.i = getelementptr %struct.fastrpc_invoke_args, ptr %call7.i.i.i.i30, i32 5, i32 2
  %140 = ptrtoint ptr %fd84.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 -1, ptr %fd84.i, align 8
  %141 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %52, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %tobool86.not.i = icmp eq i32 %142, 0
  %spec.store.select.i = select i1 %tobool86.not.i, i32 100925440, i32 117833728
  %call89.i = call fastcc i32 @fastrpc_internal_invoke(ptr noundef %1, i32 noundef 1, i32 noundef 1, i32 noundef %spec.store.select.i, ptr noundef nonnull %call7.i.i.i.i30) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89.i)
  %tobool90.not.i = icmp eq i32 %call89.i, 0
  br i1 %tobool90.not.i, label %if.end32.i.cleanup.sink.split.i_crit_edge, label %err_invoke.i

if.end32.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

err_invoke.i:                                     ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #14
  %143 = ptrtoint ptr %init_mem.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr null, ptr %init_mem.i, align 4
  %dev.i.i = getelementptr inbounds %struct.fastrpc_buf, ptr %100, i32 0, i32 2
  %144 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %dev.i.i, align 8
  %146 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %146)
  %147 = load i64, ptr %size.i, align 8
  %conv.i.i = trunc i64 %147 to i32
  %virt.i.i = getelementptr inbounds %struct.fastrpc_buf, ptr %100, i32 0, i32 3
  %148 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %virt.i.i, align 4
  %150 = ptrtoint ptr %phys.i to i32
  call void @__asan_load8_noabort(i32 %150)
  %151 = load i64, ptr %phys.i, align 8
  %conv1.i.i = trunc i64 %151 to i32
  call void @dma_free_attrs(ptr noundef %145, i32 noundef %conv.i.i, ptr noundef %149, i32 noundef %conv1.i.i, i32 noundef 0) #12
  call void @kfree(ptr noundef %100) #12
  br label %err_alloc.i

err_alloc.i:                                      ; preds = %err_invoke.i, %if.end23.i.err_alloc.i_crit_edge
  %err.0.i = phi i32 [ %call29.i, %if.end23.i.err_alloc.i_crit_edge ], [ %call89.i, %err_invoke.i ]
  %152 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %map.i, align 4
  %tobool94.not.i = icmp eq ptr %153, null
  br i1 %tobool94.not.i, label %err_alloc.i.cleanup.sink.split.i_crit_edge, label %if.then95.i

err_alloc.i.cleanup.sink.split.i_crit_edge:       ; preds = %err_alloc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

if.then95.i:                                      ; preds = %err_alloc.i
  %lock.i = getelementptr inbounds %struct.fastrpc_user, ptr %1, i32 0, i32 9
  call void @_raw_spin_lock(ptr noundef %lock.i) #12
  %call.i.i146.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %153) #12
  br i1 %call.i.i146.i, label %if.end.i.i147.i, label %if.then95.i.list_del.exit.i_crit_edge

if.then95.i.list_del.exit.i_crit_edge:            ; preds = %if.then95.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i147.i:                                  ; preds = %if.then95.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %153, i32 0, i32 1
  %154 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %prev.i.i.i, align 4
  %156 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %153, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %157, i32 0, i32 1
  %158 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %155, ptr %prev1.i.i.i.i, align 4
  %159 = ptrtoint ptr %155 to i32
  call void @__asan_store4_noabort(i32 %159)
  store volatile ptr %157, ptr %155, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i147.i, %if.then95.i.list_del.exit.i_crit_edge
  %160 = ptrtoint ptr %153 to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr inttoptr (i32 256 to ptr), ptr %153, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %153, i32 0, i32 1
  %161 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef %lock.i) #12
  call fastcc void @fastrpc_map_put(ptr noundef nonnull %153) #12
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %list_del.exit.i, %err_alloc.i.cleanup.sink.split.i_crit_edge, %if.end32.i.cleanup.sink.split.i_crit_edge, %if.then16.i.cleanup.sink.split.i_crit_edge, %if.end4.i.cleanup.sink.split.i_crit_edge, %if.then11.i.i.i45
  %retval.0.ph.i = phi i32 [ 0, %if.end32.i.cleanup.sink.split.i_crit_edge ], [ %call19.i, %if.then16.i.cleanup.sink.split.i_crit_edge ], [ %err.0.i, %list_del.exit.i ], [ %err.0.i, %err_alloc.i.cleanup.sink.split.i_crit_edge ], [ -22, %if.end4.i.cleanup.sink.split.i_crit_edge ], [ -14, %if.then11.i.i.i45 ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i30) #12
  br label %fastrpc_init_create_process.exit

fastrpc_init_create_process.exit:                 ; preds = %cleanup.sink.split.i, %sw.bb5.fastrpc_init_create_process.exit_crit_edge
  %retval.0.i50 = phi i32 [ -12, %sw.bb5.fastrpc_init_create_process.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %inbuf.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %imem.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %map.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pages.i) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %init.i) #12
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %bp.i) #12
  %162 = getelementptr inbounds %struct.fastrpc_alloc_dma_buf, ptr %bp.i, i32 0, i32 2
  %163 = call ptr @memset(ptr %bp.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %exp_info.i) #12
  %164 = call ptr @memcpy(ptr %exp_info.i, ptr @__const.fastrpc_dmabuf_alloc.exp_info, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #12
  %165 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr null, ptr %buf.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 156) #12
  %call.i.i.i51 = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i.i51, label %sw.bb7.if.then11.i.i.i65_crit_edge, label %land.lhs.true.i.i.i54

sw.bb7.if.then11.i.i.i65_crit_edge:               ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i.i65

land.lhs.true.i.i.i54:                            ; preds = %sw.bb7
  %166 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 16, i32 -1226833920) #18
  %asmresult.i.i.i52 = extractvalue { i32, i32 } %166, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i52)
  %cmp.i6.i.i53 = icmp eq i32 %asmresult.i.i.i52, 0
  br i1 %cmp.i6.i.i53, label %if.end.i.i.i62, label %land.lhs.true.i.i.i54.if.then11.i.i.i65_crit_edge, !prof !189

land.lhs.true.i.i.i54.if.then11.i.i.i65_crit_edge: ; preds = %land.lhs.true.i.i.i54
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i.i65

if.end.i.i.i62:                                   ; preds = %land.lhs.true.i.i.i54
  %call.i.i.i.i55 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %bp.i, i32 noundef 16) #12
  %167 = call i32 @llvm.read_register.i32(metadata !176) #12
  %and.i.i.i.i.i.i.i56 = and i32 %167, -16384
  %168 = inttoptr i32 %and.i.i.i.i.i.i.i56 to ptr
  %cpu_domain.i.i.i.i.i.i57 = getelementptr inbounds %struct.thread_info, ptr %168, i32 0, i32 4
  %169 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i57) #7, !srcloc !192
  %and.i.i.i.i.i58 = and i32 %169, -13
  %or.i.i.i.i.i59 = or i32 %and.i.i.i.i.i58, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i59) #12, !srcloc !193
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !194
  %call1.i.i.i.i60 = call i32 @arm_copy_from_user(ptr noundef nonnull %bp.i, ptr noundef %2, i32 noundef 16) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %169) #12, !srcloc !193
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !194
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i60)
  %tobool4.not.i.i.i61 = icmp eq i32 %call1.i.i.i.i60, 0
  br i1 %tobool4.not.i.i.i61, label %if.end.i67, label %if.end.i.i.i62.if.then11.i.i.i65_crit_edge, !prof !189

if.end.i.i.i62.if.then11.i.i.i65_crit_edge:       ; preds = %if.end.i.i.i62
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i.i65

if.then11.i.i.i65:                                ; preds = %if.end.i.i.i62.if.then11.i.i.i65_crit_edge, %land.lhs.true.i.i.i54.if.then11.i.i.i65_crit_edge, %sw.bb7.if.then11.i.i.i65_crit_edge
  %res.0.i.i44.i = phi i32 [ %call1.i.i.i.i60, %if.end.i.i.i62.if.then11.i.i.i65_crit_edge ], [ 16, %sw.bb7.if.then11.i.i.i65_crit_edge ], [ 16, %land.lhs.true.i.i.i54.if.then11.i.i.i65_crit_edge ]
  %sub.i.i.i63 = sub i32 16, %res.0.i.i44.i
  %add.ptr.i.i.i64 = getelementptr i8, ptr %bp.i, i32 %sub.i.i.i63
  %170 = call ptr @memset(ptr %add.ptr.i.i.i64, i32 0, i32 %res.0.i.i44.i)
  br label %fastrpc_dmabuf_alloc.exit

if.end.i67:                                       ; preds = %if.end.i.i.i62
  %sctx.i66 = getelementptr inbounds %struct.fastrpc_user, ptr %1, i32 0, i32 5
  %171 = ptrtoint ptr %sctx.i66 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %sctx.i66, align 4
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %172, align 4
  %175 = ptrtoint ptr %162 to i32
  call void @__asan_load8_noabort(i32 %175)
  %176 = load i64, ptr %162, align 8
  %call1.i = call fastcc i32 @fastrpc_buf_alloc(ptr noundef %1, ptr noundef %174, i64 noundef %176, ptr noundef nonnull %buf.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i69, label %if.end.i67.fastrpc_dmabuf_alloc.exit_crit_edge

if.end.i67.fastrpc_dmabuf_alloc.exit_crit_edge:   ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #14
  br label %fastrpc_dmabuf_alloc.exit

if.end4.i69:                                      ; preds = %if.end.i67
  %ops.i = getelementptr inbounds %struct.dma_buf_export_info, ptr %exp_info.i, i32 0, i32 2
  %177 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr @fastrpc_dma_buf_ops, ptr %ops.i, align 4
  %178 = ptrtoint ptr %162 to i32
  call void @__asan_load8_noabort(i32 %178)
  %179 = load i64, ptr %162, align 8
  %conv.i68 = trunc i64 %179 to i32
  %size6.i = getelementptr inbounds %struct.dma_buf_export_info, ptr %exp_info.i, i32 0, i32 3
  %180 = ptrtoint ptr %size6.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %conv.i68, ptr %size6.i, align 4
  %flags.i = getelementptr inbounds %struct.dma_buf_export_info, ptr %exp_info.i, i32 0, i32 4
  %181 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 2, ptr %flags.i, align 4
  %182 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %buf.i, align 4
  %priv.i = getelementptr inbounds %struct.dma_buf_export_info, ptr %exp_info.i, i32 0, i32 6
  %184 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %183, ptr %priv.i, align 4
  %call7.i = call ptr @dma_buf_export(ptr noundef nonnull %exp_info.i) #12
  %dmabuf.i = getelementptr inbounds %struct.fastrpc_buf, ptr %183, i32 0, i32 1
  %185 = ptrtoint ptr %dmabuf.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr %call7.i, ptr %dmabuf.i, align 4
  %cmp.i.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then10.i, label %if.end13.i

if.then10.i:                                      ; preds = %if.end4.i69
  call void @__sanitizer_cov_trace_pc() #14
  %186 = ptrtoint ptr %call7.i to i32
  %dev.i.i70 = getelementptr inbounds %struct.fastrpc_buf, ptr %183, i32 0, i32 2
  %187 = ptrtoint ptr %dev.i.i70 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %dev.i.i70, align 8
  %size.i.i = getelementptr inbounds %struct.fastrpc_buf, ptr %183, i32 0, i32 5
  %189 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load8_noabort(i32 %189)
  %190 = load i64, ptr %size.i.i, align 8
  %conv.i.i71 = trunc i64 %190 to i32
  %virt.i.i72 = getelementptr inbounds %struct.fastrpc_buf, ptr %183, i32 0, i32 3
  %191 = ptrtoint ptr %virt.i.i72 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %virt.i.i72, align 4
  %phys.i.i = getelementptr inbounds %struct.fastrpc_buf, ptr %183, i32 0, i32 4
  %193 = ptrtoint ptr %phys.i.i to i32
  call void @__asan_load8_noabort(i32 %193)
  %194 = load i64, ptr %phys.i.i, align 8
  %conv1.i.i73 = trunc i64 %194 to i32
  call void @dma_free_attrs(ptr noundef %188, i32 noundef %conv.i.i71, ptr noundef %192, i32 noundef %conv1.i.i73, i32 noundef 0) #12
  call void @kfree(ptr noundef %183) #12
  br label %fastrpc_dmabuf_alloc.exit

if.end13.i:                                       ; preds = %if.end4.i69
  %call15.i = call i32 @dma_buf_fd(ptr noundef %call7.i, i32 noundef 3) #12
  %195 = ptrtoint ptr %bp.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %call15.i, ptr %bp.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp.i74 = icmp slt i32 %call15.i, 0
  br i1 %cmp.i74, label %if.then18.i, label %if.end8.i.i35.i

if.then18.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  %196 = ptrtoint ptr %dmabuf.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %dmabuf.i, align 4
  call void @dma_buf_put(ptr noundef %197) #12
  br label %fastrpc_dmabuf_alloc.exit

if.end8.i.i35.i:                                  ; preds = %if.end13.i
  call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 174) #12
  %call.i.i36.i = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i36.i, label %if.end8.i.i35.i.fastrpc_dmabuf_alloc.exit_crit_edge, label %copy_to_user.exit.i

if.end8.i.i35.i.fastrpc_dmabuf_alloc.exit_crit_edge: ; preds = %if.end8.i.i35.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fastrpc_dmabuf_alloc.exit

copy_to_user.exit.i:                              ; preds = %if.end8.i.i35.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i40.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %bp.i, i32 noundef 16) #12
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %bp.i, i32 noundef 16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool22.not.i = icmp eq i32 %call.i12.i.i.i, 0
  %spec.select.i = select i1 %tobool22.not.i, i32 0, i32 -14
  br label %fastrpc_dmabuf_alloc.exit

fastrpc_dmabuf_alloc.exit:                        ; preds = %copy_to_user.exit.i, %if.end8.i.i35.i.fastrpc_dmabuf_alloc.exit_crit_edge, %if.then18.i, %if.then10.i, %if.end.i67.fastrpc_dmabuf_alloc.exit_crit_edge, %if.then11.i.i.i65
  %retval.0.i75 = phi i32 [ %186, %if.then10.i ], [ -22, %if.then18.i ], [ %call1.i, %if.end.i67.fastrpc_dmabuf_alloc.exit_crit_edge ], [ -14, %if.then11.i.i.i65 ], [ -14, %if.end8.i.i35.i.fastrpc_dmabuf_alloc.exit_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %exp_info.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %bp.i) #12
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call10 = tail call fastcc i32 @fastrpc_req_mmap(ptr noundef %1, ptr noundef %2)
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %req.i) #12
  %198 = call ptr @memset(ptr %req.i, i32 255, i32 16)
  tail call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 156) #12
  %call.i.i.i76 = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i.i76, label %sw.bb11.if.then11.i.i.i90_crit_edge, label %land.lhs.true.i.i.i79

sw.bb11.if.then11.i.i.i90_crit_edge:              ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i.i90

land.lhs.true.i.i.i79:                            ; preds = %sw.bb11
  %199 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 16, i32 -1226833920) #18, !srcloc !191
  %asmresult.i.i.i77 = extractvalue { i32, i32 } %199, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i77)
  %cmp.i6.i.i78 = icmp eq i32 %asmresult.i.i.i77, 0
  br i1 %cmp.i6.i.i78, label %if.end.i.i.i87, label %land.lhs.true.i.i.i79.if.then11.i.i.i90_crit_edge, !prof !189

land.lhs.true.i.i.i79.if.then11.i.i.i90_crit_edge: ; preds = %land.lhs.true.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i.i90

if.end.i.i.i87:                                   ; preds = %land.lhs.true.i.i.i79
  %call.i.i.i.i80 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %req.i, i32 noundef 16) #12
  %200 = call i32 @llvm.read_register.i32(metadata !176) #12
  %and.i.i.i.i.i.i.i81 = and i32 %200, -16384
  %201 = inttoptr i32 %and.i.i.i.i.i.i.i81 to ptr
  %cpu_domain.i.i.i.i.i.i82 = getelementptr inbounds %struct.thread_info, ptr %201, i32 0, i32 4
  %202 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i82) #7, !srcloc !192
  %and.i.i.i.i.i83 = and i32 %202, -13
  %or.i.i.i.i.i84 = or i32 %and.i.i.i.i.i83, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i84) #12, !srcloc !193
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !194
  %call1.i.i.i.i85 = call i32 @arm_copy_from_user(ptr noundef nonnull %req.i, ptr noundef %2, i32 noundef 16) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %202) #12, !srcloc !193
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !194
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i85)
  %tobool4.not.i.i.i86 = icmp eq i32 %call1.i.i.i.i85, 0
  br i1 %tobool4.not.i.i.i86, label %if.end.i92, label %if.end.i.i.i87.if.then11.i.i.i90_crit_edge, !prof !189

if.end.i.i.i87.if.then11.i.i.i90_crit_edge:       ; preds = %if.end.i.i.i87
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i.i90

if.then11.i.i.i90:                                ; preds = %if.end.i.i.i87.if.then11.i.i.i90_crit_edge, %land.lhs.true.i.i.i79.if.then11.i.i.i90_crit_edge, %sw.bb11.if.then11.i.i.i90_crit_edge
  %res.0.i.i4.i = phi i32 [ %call1.i.i.i.i85, %if.end.i.i.i87.if.then11.i.i.i90_crit_edge ], [ 16, %sw.bb11.if.then11.i.i.i90_crit_edge ], [ 16, %land.lhs.true.i.i.i79.if.then11.i.i.i90_crit_edge ]
  %sub.i.i.i88 = sub i32 16, %res.0.i.i4.i
  %add.ptr.i.i.i89 = getelementptr i8, ptr %req.i, i32 %sub.i.i.i88
  %203 = call ptr @memset(ptr %add.ptr.i.i.i89, i32 0, i32 %res.0.i.i4.i)
  br label %fastrpc_req_munmap.exit

if.end.i92:                                       ; preds = %if.end.i.i.i87
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i91 = call fastcc i32 @fastrpc_req_munmap_impl(ptr noundef %1, ptr noundef nonnull %req.i) #12
  br label %fastrpc_req_munmap.exit

fastrpc_req_munmap.exit:                          ; preds = %if.end.i92, %if.then11.i.i.i90
  %retval.0.i93 = phi i32 [ %call1.i91, %if.end.i92 ], [ -14, %if.then11.i.i.i90 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req.i) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %fastrpc_req_munmap.exit, %sw.bb9, %fastrpc_dmabuf_alloc.exit, %fastrpc_init_create_process.exit, %sw.bb3, %sw.bb1, %fastrpc_invoke.exit, %entry.sw.epilog_crit_edge
  %err.0 = phi i32 [ %retval.0.i93, %fastrpc_req_munmap.exit ], [ %call10, %sw.bb9 ], [ %retval.0.i75, %fastrpc_dmabuf_alloc.exit ], [ %retval.0.i50, %fastrpc_init_create_process.exit ], [ %call.i29, %sw.bb3 ], [ %call.i, %sw.bb1 ], [ %retval.0.i, %fastrpc_invoke.exit ], [ -25, %entry.sw.epilog_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fastrpc_device_open(ptr nocapture noundef readnone %inode, ptr nocapture noundef %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 188) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 -280
  %refcount.i = getelementptr i8, ptr %1, i32 40
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #12
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #12, !srcloc !195
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !196

if.end.if.end15.sink.split.i.i.i.i.i_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.fastrpc_channel_ctx_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !189

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.fastrpc_channel_ctx_get.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fastrpc_channel_ctx_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i) #12
  br label %fastrpc_channel_ctx_get.exit

fastrpc_channel_ctx_get.exit:                     ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.fastrpc_channel_ctx_get.exit_crit_edge
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %private_data, align 4
  %lock = getelementptr inbounds %struct.fastrpc_user, ptr %call7.i.i, i32 0, i32 9
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.67, ptr noundef nonnull @fastrpc_device_open.__key, i16 noundef signext 3) #12
  %mutex = getelementptr inbounds %struct.fastrpc_user, ptr %call7.i.i, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.69, ptr noundef nonnull @fastrpc_device_open.__key.68) #12
  %pending = getelementptr inbounds %struct.fastrpc_user, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %pending, ptr %pending, align 8
  %prev.i = getelementptr inbounds %struct.fastrpc_user, ptr %call7.i.i, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %pending, ptr %prev.i, align 4
  %maps = getelementptr inbounds %struct.fastrpc_user, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %maps to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %maps, ptr %maps, align 8
  %prev.i53 = getelementptr inbounds %struct.fastrpc_user, ptr %call7.i.i, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i53 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %maps, ptr %prev.i53, align 4
  %mmaps = getelementptr inbounds %struct.fastrpc_user, ptr %call7.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %mmaps to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %mmaps, ptr %mmaps, align 8
  %prev.i54 = getelementptr inbounds %struct.fastrpc_user, ptr %call7.i.i, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %prev.i54 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %mmaps, ptr %prev.i54, align 4
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i55 = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i55 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %prev.i55, align 4
  %14 = tail call i32 @llvm.read_register.i32(metadata !176) #12
  %and.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task, align 8
  %tgid = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 69
  %18 = ptrtoint ptr %tgid to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tgid, align 4
  %tgid7 = getelementptr inbounds %struct.fastrpc_user, ptr %call7.i.i, i32 0, i32 7
  %20 = ptrtoint ptr %tgid7 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %tgid7, align 4
  %cctx8 = getelementptr inbounds %struct.fastrpc_user, ptr %call7.i.i, i32 0, i32 4
  %21 = ptrtoint ptr %cctx8 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr, ptr %cctx8, align 8
  %lock.i = getelementptr i8, ptr %1, i32 -112
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %sesscount.i = getelementptr i8, ptr %1, i32 -276
  %22 = ptrtoint ptr %sesscount.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sesscount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp529.i = icmp sgt i32 %23, 0
  br i1 %cmp529.i, label %fastrpc_channel_ctx_get.exit.for.body.i_crit_edge, label %fastrpc_channel_ctx_get.exit.fastrpc_session_alloc.exit.thread_crit_edge

fastrpc_channel_ctx_get.exit.fastrpc_session_alloc.exit.thread_crit_edge: ; preds = %fastrpc_channel_ctx_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %fastrpc_session_alloc.exit.thread

fastrpc_channel_ctx_get.exit.for.body.i_crit_edge: ; preds = %fastrpc_channel_ctx_get.exit
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %fastrpc_channel_ctx_get.exit.for.body.i_crit_edge
  %i.030.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %fastrpc_channel_ctx_get.exit.for.body.i_crit_edge ]
  %used.i = getelementptr %struct.fastrpc_channel_ctx, ptr %add.ptr, i32 0, i32 3, i32 %i.030.i, i32 2
  %24 = ptrtoint ptr %used.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %used.i, align 4, !range !197
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i = icmp eq i8 %25, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %valid.i = getelementptr %struct.fastrpc_channel_ctx, ptr %add.ptr, i32 0, i32 3, i32 %i.030.i, i32 3
  %26 = ptrtoint ptr %valid.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %valid.i, align 1, !range !197
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool10.not.i = icmp eq i8 %27, 0
  br i1 %tobool10.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %fastrpc_session_alloc.exit

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.030.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %23
  br i1 %exitcond.not.i, label %for.inc.i.fastrpc_session_alloc.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.fastrpc_session_alloc.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fastrpc_session_alloc.exit.thread

fastrpc_session_alloc.exit.thread:                ; preds = %for.inc.i.fastrpc_session_alloc.exit.thread_crit_edge, %fastrpc_channel_ctx_get.exit.fastrpc_session_alloc.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #12
  %sctx58 = getelementptr inbounds %struct.fastrpc_user, ptr %call7.i.i, i32 0, i32 5
  %28 = ptrtoint ptr %sctx58 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %sctx58, align 4
  br label %do.end15

fastrpc_session_alloc.exit:                       ; preds = %land.lhs.true.i
  %arrayidx.le.i = getelementptr %struct.fastrpc_channel_ctx, ptr %add.ptr, i32 0, i32 3, i32 %i.030.i
  %29 = ptrtoint ptr %used.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %used.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #12
  %sctx = getelementptr inbounds %struct.fastrpc_user, ptr %call7.i.i, i32 0, i32 5
  %30 = ptrtoint ptr %sctx to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %arrayidx.le.i, ptr %sctx, align 4
  %tobool11.not = icmp eq ptr %arrayidx.le.i, null
  br i1 %tobool11.not, label %fastrpc_session_alloc.exit.do.end15_crit_edge, label %do.body19

fastrpc_session_alloc.exit.do.end15_crit_edge:    ; preds = %fastrpc_session_alloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end15

do.end15:                                         ; preds = %fastrpc_session_alloc.exit.do.end15_crit_edge, %fastrpc_session_alloc.exit.thread
  %rpdev = getelementptr i8, ptr %1, i32 -272
  %31 = ptrtoint ptr %rpdev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rpdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.70) #15
  tail call void @mutex_destroy(ptr noundef %mutex) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

do.body19:                                        ; preds = %fastrpc_session_alloc.exit
  %call23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %users = getelementptr i8, ptr %1, i32 -8
  %prev.i56 = getelementptr i8, ptr %1, i32 -4
  %33 = ptrtoint ptr %prev.i56 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i56, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %call7.i.i, ptr noundef %34, ptr noundef %users) #12
  br i1 %call.i.i, label %if.end.i.i, label %do.body19.list_add_tail.exit_crit_edge

do.body19.list_add_tail.exit_crit_edge:           ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %prev.i56 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call7.i.i, ptr %prev.i56, align 4
  %36 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %users, ptr %call7.i.i, align 8
  %37 = ptrtoint ptr %prev.i55 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev.i55, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %call7.i.i, ptr %34, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.body19.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call23) #12
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %do.end15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ -16, %do.end15 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fastrpc_device_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef %file) #0 align 64 {
entry:
  %args.i = alloca [1 x %struct.fastrpc_invoke_args], align 8
  %tgid.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %cctx1 = getelementptr inbounds %struct.fastrpc_user, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %cctx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cctx1, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args.i) #12
  %4 = getelementptr inbounds %struct.fastrpc_invoke_args, ptr %args.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.fastrpc_invoke_args, ptr %args.i, i32 0, i32 2
  %6 = getelementptr inbounds %struct.fastrpc_invoke_args, ptr %args.i, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tgid.i) #12
  %tgid1.i = getelementptr inbounds %struct.fastrpc_user, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %tgid1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tgid1.i, align 4
  %9 = ptrtoint ptr %tgid.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %tgid.i, align 4
  %10 = ptrtoint ptr %tgid.i to i32
  %conv.i = zext i32 %10 to i64
  %11 = ptrtoint ptr %args.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv.i, ptr %args.i, align 8
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 4, ptr %4, align 8
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %5, align 8
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %6, align 4
  %call.i = call fastcc i32 @fastrpc_internal_invoke(ptr noundef %1, i32 noundef 1, i32 noundef 1, i32 noundef 16842752, ptr noundef nonnull %args.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tgid.i) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args.i) #12
  %lock = getelementptr inbounds %struct.fastrpc_channel_ctx, ptr %3, i32 0, i32 4
  %call4 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #12
  %init_mem = getelementptr inbounds %struct.fastrpc_user, ptr %1, i32 0, i32 6
  %23 = ptrtoint ptr %init_mem to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %init_mem, align 4
  %tobool.not = icmp eq ptr %24, null
  br i1 %tobool.not, label %list_del.exit.if.end_crit_edge, label %if.then

list_del.exit.if.end_crit_edge:                   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.fastrpc_buf, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i, align 8
  %size.i = getelementptr inbounds %struct.fastrpc_buf, ptr %24, i32 0, i32 5
  %27 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %size.i, align 8
  %conv.i105 = trunc i64 %28 to i32
  %virt.i = getelementptr inbounds %struct.fastrpc_buf, ptr %24, i32 0, i32 3
  %29 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %virt.i, align 4
  %phys.i = getelementptr inbounds %struct.fastrpc_buf, ptr %24, i32 0, i32 4
  %31 = ptrtoint ptr %phys.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %phys.i, align 8
  %conv1.i = trunc i64 %32 to i32
  call void @dma_free_attrs(ptr noundef %26, i32 noundef %conv.i105, ptr noundef %30, i32 noundef %conv1.i, i32 noundef 0) #12
  call void @kfree(ptr noundef nonnull %24) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %list_del.exit.if.end_crit_edge
  %pending = getelementptr inbounds %struct.fastrpc_user, ptr %1, i32 0, i32 2
  %33 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pending, align 4
  %cmp16.not130 = icmp eq ptr %34, %pending
  br i1 %cmp16.not130, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %list_del.exit111.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn.in131 = phi ptr [ %.pn, %list_del.exit111.for.body_crit_edge ], [ %34, %if.end.for.body_crit_edge ]
  %ctx.0 = getelementptr i8, ptr %.pn.in131, i32 -52
  %35 = ptrtoint ptr %.pn.in131 to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pn = load ptr, ptr %.pn.in131, align 4
  %call.i.i106 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in131) #12
  br i1 %call.i.i106, label %if.end.i.i109, label %for.body.list_del.exit111_crit_edge

for.body.list_del.exit111_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit111

if.end.i.i109:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i107 = getelementptr inbounds %struct.list_head, ptr %.pn.in131, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i.i107 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i.i107, align 4
  %38 = ptrtoint ptr %.pn.in131 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %.pn.in131, align 4
  %prev1.i.i.i108 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %prev1.i.i.i108 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev1.i.i.i108, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %39, ptr %37, align 4
  br label %list_del.exit111

list_del.exit111:                                 ; preds = %if.end.i.i109, %for.body.list_del.exit111_crit_edge
  %42 = ptrtoint ptr %.pn.in131 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in131, align 4
  %prev.i110 = getelementptr inbounds %struct.list_head, ptr %.pn.in131, i32 0, i32 1
  %43 = ptrtoint ptr %prev.i110 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i110, align 4
  call fastcc void @fastrpc_context_put(ptr noundef %ctx.0)
  %cmp16.not = icmp eq ptr %.pn, %pending
  br i1 %cmp16.not, label %list_del.exit111.for.end_crit_edge, label %list_del.exit111.for.body_crit_edge

list_del.exit111.for.body_crit_edge:              ; preds = %list_del.exit111
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

list_del.exit111.for.end_crit_edge:               ; preds = %list_del.exit111
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %list_del.exit111.for.end_crit_edge, %if.end.for.end_crit_edge
  %maps = getelementptr inbounds %struct.fastrpc_user, ptr %1, i32 0, i32 1
  %44 = ptrtoint ptr %maps to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %maps, align 4
  %cmp36.not133 = icmp eq ptr %45, %maps
  br i1 %cmp36.not133, label %for.end.for.end47_crit_edge, label %for.end.for.body39_crit_edge

for.end.for.body39_crit_edge:                     ; preds = %for.end
  br label %for.body39

for.end.for.end47_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end47

for.body39:                                       ; preds = %list_del.exit117.for.body39_crit_edge, %for.end.for.body39_crit_edge
  %map.0134 = phi ptr [ %m.0, %list_del.exit117.for.body39_crit_edge ], [ %45, %for.end.for.body39_crit_edge ]
  %46 = ptrtoint ptr %map.0134 to i32
  call void @__asan_load4_noabort(i32 %46)
  %m.0 = load ptr, ptr %map.0134, align 8
  %call.i.i112 = call zeroext i1 @__list_del_entry_valid(ptr noundef %map.0134) #12
  br i1 %call.i.i112, label %if.end.i.i115, label %for.body39.list_del.exit117_crit_edge

for.body39.list_del.exit117_crit_edge:            ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit117

if.end.i.i115:                                    ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i113 = getelementptr inbounds %struct.list_head, ptr %map.0134, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i.i113 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev.i.i113, align 4
  %49 = ptrtoint ptr %map.0134 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %map.0134, align 4
  %prev1.i.i.i114 = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %prev1.i.i.i114 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %prev1.i.i.i114, align 4
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %50, ptr %48, align 4
  br label %list_del.exit117

list_del.exit117:                                 ; preds = %if.end.i.i115, %for.body39.list_del.exit117_crit_edge
  %53 = ptrtoint ptr %map.0134 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr inttoptr (i32 256 to ptr), ptr %map.0134, align 4
  %prev.i116 = getelementptr inbounds %struct.list_head, ptr %map.0134, i32 0, i32 1
  %54 = ptrtoint ptr %prev.i116 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i116, align 4
  call fastcc void @fastrpc_map_put(ptr noundef %map.0134)
  %cmp36.not = icmp eq ptr %m.0, %maps
  br i1 %cmp36.not, label %list_del.exit117.for.end47_crit_edge, label %list_del.exit117.for.body39_crit_edge

list_del.exit117.for.body39_crit_edge:            ; preds = %list_del.exit117
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body39

list_del.exit117.for.end47_crit_edge:             ; preds = %list_del.exit117
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end47

for.end47:                                        ; preds = %list_del.exit117.for.end47_crit_edge, %for.end.for.end47_crit_edge
  %mmaps = getelementptr inbounds %struct.fastrpc_user, ptr %1, i32 0, i32 3
  %55 = ptrtoint ptr %mmaps to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mmaps, align 4
  %cmp60.not136 = icmp eq ptr %56, %mmaps
  br i1 %cmp60.not136, label %for.end47.for.end71_crit_edge, label %for.end47.for.body63_crit_edge

for.end47.for.body63_crit_edge:                   ; preds = %for.end47
  br label %for.body63

for.end47.for.end71_crit_edge:                    ; preds = %for.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end71

for.body63:                                       ; preds = %list_del.exit123.for.body63_crit_edge, %for.end47.for.body63_crit_edge
  %.pn102.in137 = phi ptr [ %.pn102, %list_del.exit123.for.body63_crit_edge ], [ %56, %for.end47.for.body63_crit_edge ]
  %buf.0 = getelementptr i8, ptr %.pn102.in137, i32 -132
  %57 = ptrtoint ptr %.pn102.in137 to i32
  call void @__asan_load4_noabort(i32 %57)
  %.pn102 = load ptr, ptr %.pn102.in137, align 4
  %call.i.i118 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn102.in137) #12
  br i1 %call.i.i118, label %if.end.i.i121, label %for.body63.list_del.exit123_crit_edge

for.body63.list_del.exit123_crit_edge:            ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit123

if.end.i.i121:                                    ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i119 = getelementptr inbounds %struct.list_head, ptr %.pn102.in137, i32 0, i32 1
  %58 = ptrtoint ptr %prev.i.i119 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %prev.i.i119, align 4
  %60 = ptrtoint ptr %.pn102.in137 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %.pn102.in137, align 4
  %prev1.i.i.i120 = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %prev1.i.i.i120 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %59, ptr %prev1.i.i.i120, align 4
  %63 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %61, ptr %59, align 4
  br label %list_del.exit123

list_del.exit123:                                 ; preds = %if.end.i.i121, %for.body63.list_del.exit123_crit_edge
  %64 = ptrtoint ptr %.pn102.in137 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn102.in137, align 4
  %prev.i122 = getelementptr inbounds %struct.list_head, ptr %.pn102.in137, i32 0, i32 1
  %65 = ptrtoint ptr %prev.i122 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i122, align 4
  %dev.i124 = getelementptr i8, ptr %.pn102.in137, i32 -124
  %66 = ptrtoint ptr %dev.i124 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev.i124, align 8
  %size.i125 = getelementptr i8, ptr %.pn102.in137, i32 -108
  %68 = ptrtoint ptr %size.i125 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %size.i125, align 8
  %conv.i126 = trunc i64 %69 to i32
  %virt.i127 = getelementptr i8, ptr %.pn102.in137, i32 -120
  %70 = ptrtoint ptr %virt.i127 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %virt.i127, align 4
  %phys.i128 = getelementptr i8, ptr %.pn102.in137, i32 -116
  %72 = ptrtoint ptr %phys.i128 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %phys.i128, align 8
  %conv1.i129 = trunc i64 %73 to i32
  call void @dma_free_attrs(ptr noundef %67, i32 noundef %conv.i126, ptr noundef %71, i32 noundef %conv1.i129, i32 noundef 0) #12
  call void @kfree(ptr noundef %buf.0) #12
  %cmp60.not = icmp eq ptr %.pn102, %mmaps
  br i1 %cmp60.not, label %list_del.exit123.for.end71_crit_edge, label %list_del.exit123.for.body63_crit_edge

list_del.exit123.for.body63_crit_edge:            ; preds = %list_del.exit123
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body63

list_del.exit123.for.end71_crit_edge:             ; preds = %list_del.exit123
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end71

for.end71:                                        ; preds = %list_del.exit123.for.end71_crit_edge, %for.end47.for.end71_crit_edge
  %sctx = getelementptr inbounds %struct.fastrpc_user, ptr %1, i32 0, i32 5
  %74 = ptrtoint ptr %sctx to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %sctx, align 4
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %used.i = getelementptr inbounds %struct.fastrpc_session_ctx, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %used.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %used.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2.i) #12
  %refcount.i = getelementptr inbounds %struct.fastrpc_channel_ctx, ptr %3, i32 0, i32 8
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !187
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #12
  %77 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #12, !srcloc !188
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %77, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %for.end71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.fastrpc_channel_ctx_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !189

if.end5.i.i.i.i.i.fastrpc_channel_ctx_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fastrpc_channel_ctx_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #12
  br label %fastrpc_channel_ctx_put.exit

if.then.i.i:                                      ; preds = %for.end71
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !190
  call void @kfree(ptr noundef %3) #12
  br label %fastrpc_channel_ctx_put.exit

fastrpc_channel_ctx_put.exit:                     ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.fastrpc_channel_ctx_put.exit_crit_edge
  %mutex = getelementptr inbounds %struct.fastrpc_user, ptr %1, i32 0, i32 10
  call void @mutex_destroy(ptr noundef %mutex) #12
  call void @kfree(ptr noundef %1) #12
  %78 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr null, ptr %private_data, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fastrpc_req_mmap(ptr noundef %fl, ptr noundef %argp) unnamed_addr #0 align 64 {
entry:
  %args = alloca [3 x %struct.fastrpc_invoke_args], align 8
  %buf = alloca ptr, align 4
  %req_msg = alloca %struct.fastrpc_mmap_req_msg, align 8
  %rsp_msg = alloca %struct.fastrpc_mmap_rsp_msg, align 8
  %req_unmap = alloca %struct.fastrpc_req_munmap, align 8
  %pages = alloca %struct.fastrpc_phy_page, align 8
  %req = alloca %struct.fastrpc_req_mmap, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args) #12
  %0 = call ptr @memset(ptr %args, i32 0, i32 72)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #12
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %buf, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %req_msg) #12
  %2 = call ptr @memset(ptr %req_msg, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rsp_msg) #12
  %3 = ptrtoint ptr %rsp_msg to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %rsp_msg, align 8, !annotation !186
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %req_unmap) #12
  %4 = getelementptr inbounds %struct.fastrpc_req_munmap, ptr %req_unmap, i32 0, i32 1
  %5 = call ptr @memset(ptr %req_unmap, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pages) #12
  %6 = getelementptr inbounds %struct.fastrpc_phy_page, ptr %pages, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %req) #12
  %7 = getelementptr inbounds %struct.fastrpc_req_mmap, ptr %req, i32 0, i32 1
  %8 = getelementptr inbounds %struct.fastrpc_req_mmap, ptr %req, i32 0, i32 2
  %9 = getelementptr inbounds %struct.fastrpc_req_mmap, ptr %req, i32 0, i32 3
  %10 = getelementptr inbounds %struct.fastrpc_req_mmap, ptr %req, i32 0, i32 4
  %sctx = getelementptr inbounds %struct.fastrpc_user, ptr %fl, i32 0, i32 5
  %11 = call ptr @memset(ptr %req, i32 255, i32 32)
  %12 = ptrtoint ptr %sctx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sctx, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 156) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %16 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %argp, i32 32, i32 -1226833920) #18
  %asmresult.i.i = extractvalue { i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !189

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %req, i32 noundef 32) #12
  %17 = call i32 @llvm.read_register.i32(metadata !176) #12
  %and.i.i.i.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 4
  %19 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !192
  %and.i.i.i.i = and i32 %19, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #12, !srcloc !193
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !194
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %req, ptr noundef %argp, i32 noundef 32) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #12, !srcloc !193
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !194
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !189

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i109 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 32, %entry.if.then11.i.i_crit_edge ], [ 32, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 32, %res.0.i.i109
  %add.ptr.i.i = getelementptr i8, ptr %req, i32 %sub.i.i
  %20 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i109)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %21 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %22)
  %cmp.not = icmp eq i32 %22, 4096
  br i1 %cmp.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.49, i32 noundef %22) #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %23 = ptrtoint ptr %8 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %8, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %24)
  %tobool5.not = icmp eq i64 %24, 0
  br i1 %tobool5.not, label %if.end10, label %do.end9

do.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.52) #15
  br label %cleanup

if.end10:                                         ; preds = %if.end4
  %25 = ptrtoint ptr %sctx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sctx, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %29 = ptrtoint ptr %9 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %9, align 8
  %call13 = call fastcc i32 @fastrpc_buf_alloc(ptr noundef %fl, ptr noundef %28, i64 noundef %30, ptr noundef nonnull %buf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end19, label %do.end18

do.end18:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.55) #15
  br label %cleanup

if.end19:                                         ; preds = %if.end10
  %tgid = getelementptr inbounds %struct.fastrpc_user, ptr %fl, i32 0, i32 7
  %31 = ptrtoint ptr %tgid to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tgid, align 4
  %33 = ptrtoint ptr %req_msg to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %req_msg, align 8
  %34 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %7, align 4
  %flags21 = getelementptr inbounds %struct.fastrpc_mmap_req_msg, ptr %req_msg, i32 0, i32 1
  %36 = ptrtoint ptr %flags21 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %flags21, align 4
  %37 = ptrtoint ptr %8 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %8, align 8
  %vaddr = getelementptr inbounds %struct.fastrpc_mmap_req_msg, ptr %req_msg, i32 0, i32 2
  %39 = ptrtoint ptr %vaddr to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %vaddr, align 8
  %num = getelementptr inbounds %struct.fastrpc_mmap_req_msg, ptr %req_msg, i32 0, i32 3
  %40 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 16, ptr %num, align 8
  %41 = ptrtoint ptr %req_msg to i32
  %conv = zext i32 %41 to i64
  %42 = ptrtoint ptr %args to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %conv, ptr %args, align 8
  %length = getelementptr inbounds %struct.fastrpc_invoke_args, ptr %args, i32 0, i32 1
  %43 = ptrtoint ptr %length to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 24, ptr %length, align 8
  %44 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %buf, align 4
  %phys = getelementptr inbounds %struct.fastrpc_buf, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %phys to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %phys, align 8
  %48 = ptrtoint ptr %pages to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %47, ptr %pages, align 8
  %size24 = getelementptr inbounds %struct.fastrpc_buf, ptr %45, i32 0, i32 5
  %49 = ptrtoint ptr %size24 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %size24, align 8
  %51 = ptrtoint ptr %6 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %50, ptr %6, align 8
  %52 = ptrtoint ptr %pages to i32
  %conv26 = zext i32 %52 to i64
  %arrayidx27 = getelementptr inbounds [3 x %struct.fastrpc_invoke_args], ptr %args, i32 0, i32 1
  %53 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %conv26, ptr %arrayidx27, align 8
  %length30 = getelementptr inbounds [3 x %struct.fastrpc_invoke_args], ptr %args, i32 0, i32 1, i32 1
  %54 = ptrtoint ptr %length30 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 16, ptr %length30, align 8
  %55 = ptrtoint ptr %rsp_msg to i32
  %conv31 = zext i32 %55 to i64
  %arrayidx32 = getelementptr inbounds [3 x %struct.fastrpc_invoke_args], ptr %args, i32 0, i32 2
  %56 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %conv31, ptr %arrayidx32, align 8
  %length35 = getelementptr inbounds [3 x %struct.fastrpc_invoke_args], ptr %args, i32 0, i32 2, i32 1
  %57 = ptrtoint ptr %length35 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 8, ptr %length35, align 8
  %call37 = call fastcc i32 @fastrpc_internal_invoke(ptr noundef %fl, i32 noundef 1, i32 noundef 1, i32 noundef 67240192, ptr noundef nonnull %args)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end44, label %do.end42

do.end42:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  %58 = ptrtoint ptr %size24 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %size24, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.58, i64 noundef %59) #15
  call fastcc void @fastrpc_buf_free(ptr noundef %45)
  br label %cleanup

if.end44:                                         ; preds = %if.end19
  %60 = ptrtoint ptr %rsp_msg to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %rsp_msg, align 8
  %conv46 = trunc i64 %61 to i32
  %raddr = getelementptr inbounds %struct.fastrpc_buf, ptr %45, i32 0, i32 9
  %62 = ptrtoint ptr %raddr to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %conv46, ptr %raddr, align 4
  %63 = ptrtoint ptr %10 to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %61, ptr %10, align 8
  %lock = getelementptr inbounds %struct.fastrpc_user, ptr %fl, i32 0, i32 9
  call void @_raw_spin_lock(ptr noundef %lock) #12
  %node = getelementptr inbounds %struct.fastrpc_buf, ptr %45, i32 0, i32 8
  %mmaps = getelementptr inbounds %struct.fastrpc_user, ptr %fl, i32 0, i32 3
  %prev.i = getelementptr inbounds %struct.fastrpc_user, ptr %fl, i32 0, i32 3, i32 1
  %64 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %prev.i, align 4
  %call.i.i105 = call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %65, ptr noundef %mmaps) #12
  br i1 %call.i.i105, label %if.end.i.i106, label %if.end44.if.end8.i.i98_crit_edge

if.end44.if.end8.i.i98_crit_edge:                 ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i98

if.end.i.i106:                                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  %66 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %node, ptr %prev.i, align 4
  %67 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %mmaps, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.fastrpc_buf, ptr %45, i32 0, i32 8, i32 1
  %68 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %65, ptr %prev3.i.i, align 4
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %node, ptr %65, align 4
  br label %if.end8.i.i98

if.end8.i.i98:                                    ; preds = %if.end.i.i106, %if.end44.if.end8.i.i98_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock) #12
  call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 174) #12
  %call.i.i99 = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i99, label %if.end8.i.i98.if.then51_crit_edge, label %copy_to_user.exit

if.end8.i.i98.if.then51_crit_edge:                ; preds = %if.end8.i.i98
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then51

copy_to_user.exit:                                ; preds = %if.end8.i.i98
  %call.i.i.i103 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %req, i32 noundef 32) #12
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %argp, ptr noundef nonnull %req, i32 noundef 32) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool50.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool50.not, label %do.body59, label %copy_to_user.exit.if.then51_crit_edge

copy_to_user.exit.if.then51_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then51

if.then51:                                        ; preds = %copy_to_user.exit.if.then51_crit_edge, %if.end8.i.i98.if.then51_crit_edge
  %70 = ptrtoint ptr %raddr to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %raddr, align 4
  %conv53 = zext i32 %71 to i64
  %72 = ptrtoint ptr %req_unmap to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %conv53, ptr %req_unmap, align 8
  %73 = ptrtoint ptr %size24 to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %size24, align 8
  %75 = ptrtoint ptr %4 to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %74, ptr %4, align 8
  %call57 = call fastcc i32 @fastrpc_req_munmap_impl(ptr noundef %fl, ptr noundef nonnull %req_unmap)
  br label %cleanup

do.body59:                                        ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fastrpc_req_mmap.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fastrpc_req_mmap, %if.then64)) #12
          to label %cleanup [label %if.then64], !srcloc !198

if.then64:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #14
  %76 = ptrtoint ptr %raddr to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %raddr, align 4
  %78 = ptrtoint ptr %size24 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %size24, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fastrpc_req_mmap.__UNIQUE_ID_ddebug238, ptr noundef %15, ptr noundef nonnull @.str.60, i32 noundef %77, i64 noundef %79) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then64, %do.body59, %if.then51, %do.end42, %do.end18, %do.end9, %do.end, %if.then11.i.i
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end9 ], [ %call13, %do.end18 ], [ %call37, %do.end42 ], [ -14, %if.then51 ], [ 0, %if.then64 ], [ 0, %do.body59 ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %req) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pages) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req_unmap) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rsp_msg) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %req_msg) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #12
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fastrpc_internal_invoke(ptr noundef %fl, i32 noundef %kernel, i32 noundef %handle, i32 noundef %sc, ptr noundef %args) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sctx = getelementptr inbounds %struct.fastrpc_user, ptr %fl, i32 0, i32 5
  %0 = ptrtoint ptr %sctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sctx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %cctx = getelementptr inbounds %struct.fastrpc_user, ptr %fl, i32 0, i32 4
  %2 = ptrtoint ptr %cctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cctx, align 4
  %rpdev = getelementptr inbounds %struct.fastrpc_channel_ctx, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %rpdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rpdev, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %handle)
  %cmp = icmp eq i32 %handle, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %kernel)
  %tobool4.not = icmp eq i32 %kernel, 0
  %or.cond = and i1 %tobool4.not, %cmp
  br i1 %or.cond, label %do.body, label %if.end13

do.body:                                          ; preds = %if.end3
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @fastrpc_internal_invoke._rs, ptr noundef nonnull @__func__.fastrpc_internal_invoke) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %sctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sctx, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.34, i32 noundef 1) #15
  br label %cleanup

if.end13:                                         ; preds = %if.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 232) #17
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end13.if.then16_crit_edge, label %if.end.i

if.end13.if.then16_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then16

if.end.i:                                         ; preds = %if.end13
  %node.i = getelementptr inbounds %struct.fastrpc_invoke_ctx, ptr %call7.i.i.i, i32 0, i32 10
  %11 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %node.i, ptr %node.i, align 4
  %prev.i.i = getelementptr inbounds %struct.fastrpc_invoke_ctx, ptr %call7.i.i.i, i32 0, i32 10, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %node.i, ptr %prev.i.i, align 8
  %fl.i = getelementptr inbounds %struct.fastrpc_invoke_ctx, ptr %call7.i.i.i, i32 0, i32 14
  %13 = ptrtoint ptr %fl.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %fl, ptr %fl.i, align 8
  %shr.i = lshr i32 %sc, 16
  %and.i = and i32 %shr.i, 255
  %shr3.i = lshr i32 %sc, 8
  %and4.i = and i32 %shr3.i, 255
  %add.i = add nuw nsw i32 %and.i, %and4.i
  %shr5.i = lshr i32 %sc, 4
  %and6.i = and i32 %shr5.i, 15
  %and8.i = and i32 %sc, 15
  %add7.i = add nuw nsw i32 %and6.i, %and8.i
  %add9.i = add nuw nsw i32 %add7.i, %add.i
  %14 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add9.i, ptr %call7.i.i.i, align 8
  %nbufs.i = getelementptr inbounds %struct.fastrpc_invoke_ctx, ptr %call7.i.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %nbufs.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add.i, ptr %nbufs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add9.i)
  %tobool16.not.i = icmp eq i32 %add9.i, 0
  br i1 %tobool16.not.i, label %if.end.i.if.end34.i_crit_edge, label %if.end7.i.i.i

if.end.i.if.end34.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34.i

if.end7.i.i.i:                                    ; preds = %if.end.i
  %16 = shl nuw nsw i32 %add9.i, 2
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %16, i32 noundef 3520) #19
  %maps.i = getelementptr inbounds %struct.fastrpc_invoke_ctx, ptr %call7.i.i.i, i32 0, i32 16
  %17 = ptrtoint ptr %maps.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call8.i.i.i, ptr %maps.i, align 8
  %tobool21.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool21.not.i, label %if.end7.i.i.i.if.then16.sink.split_crit_edge, label %if.end24.i

if.end7.i.i.i.if.then16.sink.split_crit_edge:     ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then16.sink.split

if.end24.i:                                       ; preds = %if.end7.i.i.i
  %18 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %call7.i.i.i, align 8
  %20 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %19, i32 48) #12
  %21 = extractvalue { i32, i1 } %20, 1
  br i1 %21, label %kcalloc.exit33.thread.i, label %if.end7.i.i31.i, !prof !196

kcalloc.exit33.thread.i:                          ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  %olaps47.i = getelementptr inbounds %struct.fastrpc_invoke_ctx, ptr %call7.i.i.i, i32 0, i32 19
  %22 = ptrtoint ptr %olaps47.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %olaps47.i, align 4
  br label %if.then29.i

if.end7.i.i31.i:                                  ; preds = %if.end24.i
  %23 = extractvalue { i32, i1 } %20, 0
  %call8.i.i30.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %23, i32 noundef 3520) #19
  %olaps.i = getelementptr inbounds %struct.fastrpc_invoke_ctx, ptr %call7.i.i.i, i32 0, i32 19
  %24 = ptrtoint ptr %olaps.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call8.i.i30.i, ptr %olaps.i, align 4
  %tobool28.not.i = icmp eq ptr %call8.i.i30.i, null
  br i1 %tobool28.not.i, label %if.end7.i.i31.i.if.then29.i_crit_edge, label %if.end32.i

if.end7.i.i31.i.if.then29.i_crit_edge:            ; preds = %if.end7.i.i31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then29.i

if.then29.i:                                      ; preds = %if.end7.i.i31.i.if.then29.i_crit_edge, %kcalloc.exit33.thread.i
  %25 = ptrtoint ptr %maps.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %maps.i, align 8
  tail call void @kfree(ptr noundef %26) #12
  br label %if.then16.sink.split

if.end32.i:                                       ; preds = %if.end7.i.i31.i
  %args33.i = getelementptr inbounds %struct.fastrpc_invoke_ctx, ptr %call7.i.i.i, i32 0, i32 18
  %27 = ptrtoint ptr %args33.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %args, ptr %args33.i, align 8
  %28 = ptrtoint ptr %nbufs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nbufs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp125.i.i = icmp sgt i32 %29, 0
  br i1 %cmp125.i.i, label %if.end32.i.for.body.i.i_crit_edge, label %if.end32.i.for.end.i.i_crit_edge

if.end32.i.for.end.i.i_crit_edge:                 ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i

if.end32.i.for.body.i.i_crit_edge:                ; preds = %if.end32.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end32.i.for.body.i.i_crit_edge
  %i.0126.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end32.i.for.body.i.i_crit_edge ]
  %30 = ptrtoint ptr %args33.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %args33.i, align 8
  %arrayidx.i.i = getelementptr %struct.fastrpc_invoke_args, ptr %31, i32 %i.0126.i.i
  %32 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %arrayidx.i.i, align 8
  %34 = ptrtoint ptr %olaps.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %olaps.i, align 4
  %arrayidx1.i.i = getelementptr %struct.fastrpc_buf_overlap, ptr %35, i32 %i.0126.i.i
  %36 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %33, ptr %arrayidx1.i.i, align 8
  %37 = load ptr, ptr %olaps.i, align 4
  %arrayidx3.i.i = getelementptr %struct.fastrpc_buf_overlap, ptr %37, i32 %i.0126.i.i
  %38 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %arrayidx3.i.i, align 8
  %40 = load ptr, ptr %args33.i, align 8
  %length.i.i = getelementptr %struct.fastrpc_invoke_args, ptr %40, i32 %i.0126.i.i, i32 1
  %41 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %length.i.i, align 8
  %add.i.i = add i64 %42, %39
  %end.i.i = getelementptr %struct.fastrpc_buf_overlap, ptr %37, i32 %i.0126.i.i, i32 1
  %43 = ptrtoint ptr %end.i.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %add.i.i, ptr %end.i.i, align 8
  %44 = load ptr, ptr %olaps.i, align 4
  %raix.i.i = getelementptr %struct.fastrpc_buf_overlap, ptr %44, i32 %i.0126.i.i, i32 2
  %45 = ptrtoint ptr %raix.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %i.0126.i.i, ptr %raix.i.i, align 8
  %inc.i.i = add nuw nsw i32 %i.0126.i.i, 1
  %46 = ptrtoint ptr %nbufs.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nbufs.i, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %47
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.for.end.i.i_crit_edge

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %if.end32.i.for.end.i.i_crit_edge
  %.lcssa.i.i = phi i32 [ %29, %if.end32.i.for.end.i.i_crit_edge ], [ %47, %for.body.i.i.for.end.i.i_crit_edge ]
  %48 = ptrtoint ptr %olaps.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %olaps.i, align 4
  tail call void @sort(ptr noundef %49, i32 noundef %.lcssa.i.i, i32 noundef 48, ptr noundef nonnull @olaps_cmp, ptr noundef null) #12
  %50 = ptrtoint ptr %nbufs.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %nbufs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp15127.i.i = icmp sgt i32 %51, 0
  br i1 %cmp15127.i.i, label %for.end.i.i.for.body16.i.i_crit_edge, label %for.end.i.i.if.end34.i_crit_edge

for.end.i.i.if.end34.i_crit_edge:                 ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34.i

for.end.i.i.for.body16.i.i_crit_edge:             ; preds = %for.end.i.i
  br label %for.body16.i.i

for.body16.i.i:                                   ; preds = %for.inc67.i.i.for.body16.i.i_crit_edge, %for.end.i.i.for.body16.i.i_crit_edge
  %i.1129.i.i = phi i32 [ %inc68.i.i, %for.inc67.i.i.for.body16.i.i_crit_edge ], [ 0, %for.end.i.i.for.body16.i.i_crit_edge ]
  %max_end.0128.i.i = phi i64 [ %max_end.1.i.i, %for.inc67.i.i.for.body16.i.i_crit_edge ], [ 0, %for.end.i.i.for.body16.i.i_crit_edge ]
  %52 = ptrtoint ptr %olaps.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %olaps.i, align 4
  %arrayidx18.i.i = getelementptr %struct.fastrpc_buf_overlap, ptr %53, i32 %i.1129.i.i
  %54 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %arrayidx18.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %55, i64 %max_end.0128.i.i)
  %cmp20.i.i = icmp ult i64 %55, %max_end.0128.i.i
  br i1 %cmp20.i.i, label %if.then.i.i, label %if.else47.i.i

if.then.i.i:                                      ; preds = %for.body16.i.i
  %mstart.i.i = getelementptr %struct.fastrpc_buf_overlap, ptr %53, i32 %i.1129.i.i, i32 3
  %56 = ptrtoint ptr %mstart.i.i to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %max_end.0128.i.i, ptr %mstart.i.i, align 8
  %57 = ptrtoint ptr %olaps.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %olaps.i, align 4
  %end25.i.i = getelementptr %struct.fastrpc_buf_overlap, ptr %58, i32 %i.1129.i.i, i32 1
  %59 = ptrtoint ptr %end25.i.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %end25.i.i, align 8
  %mend.i.i = getelementptr %struct.fastrpc_buf_overlap, ptr %58, i32 %i.1129.i.i, i32 4
  %61 = ptrtoint ptr %mend.i.i to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %60, ptr %mend.i.i, align 8
  %62 = load ptr, ptr %olaps.i, align 4
  %arrayidx29.i.i = getelementptr %struct.fastrpc_buf_overlap, ptr %62, i32 %i.1129.i.i
  %63 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %arrayidx29.i.i, align 8
  %sub.i.i = sub i64 %max_end.0128.i.i, %64
  %offset.i.i = getelementptr %struct.fastrpc_buf_overlap, ptr %62, i32 %i.1129.i.i, i32 5
  %65 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %sub.i.i, ptr %offset.i.i, align 8
  %66 = load ptr, ptr %olaps.i, align 4
  %end35.i.i = getelementptr %struct.fastrpc_buf_overlap, ptr %66, i32 %i.1129.i.i, i32 1
  %67 = ptrtoint ptr %end35.i.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %end35.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %68, i64 %max_end.0128.i.i)
  %cmp36.i.i = icmp ugt i64 %68, %max_end.0128.i.i
  br i1 %cmp36.i.i, label %if.then.i.i.for.inc67.i.i_crit_edge, label %if.else.i.i

if.then.i.i.for.inc67.i.i_crit_edge:              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc67.i.i

if.else.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %mend43.i.i = getelementptr %struct.fastrpc_buf_overlap, ptr %66, i32 %i.1129.i.i, i32 4
  %69 = ptrtoint ptr %mend43.i.i to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 0, ptr %mend43.i.i, align 8
  %70 = ptrtoint ptr %olaps.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %olaps.i, align 4
  %mstart46.i.i = getelementptr %struct.fastrpc_buf_overlap, ptr %71, i32 %i.1129.i.i, i32 3
  %72 = ptrtoint ptr %mstart46.i.i to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 0, ptr %mstart46.i.i, align 8
  br label %for.inc67.i.i

if.else47.i.i:                                    ; preds = %for.body16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %end50.i.i = getelementptr %struct.fastrpc_buf_overlap, ptr %53, i32 %i.1129.i.i, i32 1
  %73 = ptrtoint ptr %end50.i.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %end50.i.i, align 8
  %mend53.i.i = getelementptr %struct.fastrpc_buf_overlap, ptr %53, i32 %i.1129.i.i, i32 4
  %75 = ptrtoint ptr %mend53.i.i to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %74, ptr %mend53.i.i, align 8
  %76 = ptrtoint ptr %olaps.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %olaps.i, align 4
  %arrayidx55.i.i = getelementptr %struct.fastrpc_buf_overlap, ptr %77, i32 %i.1129.i.i
  %78 = ptrtoint ptr %arrayidx55.i.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %arrayidx55.i.i, align 8
  %mstart59.i.i = getelementptr %struct.fastrpc_buf_overlap, ptr %77, i32 %i.1129.i.i, i32 3
  %80 = ptrtoint ptr %mstart59.i.i to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %79, ptr %mstart59.i.i, align 8
  %81 = load ptr, ptr %olaps.i, align 4
  %offset62.i.i = getelementptr %struct.fastrpc_buf_overlap, ptr %81, i32 %i.1129.i.i, i32 5
  %82 = ptrtoint ptr %offset62.i.i to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 0, ptr %offset62.i.i, align 8
  %83 = load ptr, ptr %olaps.i, align 4
  %end65.i.i = getelementptr %struct.fastrpc_buf_overlap, ptr %83, i32 %i.1129.i.i, i32 1
  %84 = ptrtoint ptr %end65.i.i to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %end65.i.i, align 8
  br label %for.inc67.i.i

for.inc67.i.i:                                    ; preds = %if.else47.i.i, %if.else.i.i, %if.then.i.i.for.inc67.i.i_crit_edge
  %max_end.1.i.i = phi i64 [ %max_end.0128.i.i, %if.else.i.i ], [ %85, %if.else47.i.i ], [ %68, %if.then.i.i.for.inc67.i.i_crit_edge ]
  %inc68.i.i = add nuw nsw i32 %i.1129.i.i, 1
  %86 = ptrtoint ptr %nbufs.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %nbufs.i, align 4
  %cmp15.i.i = icmp slt i32 %inc68.i.i, %87
  br i1 %cmp15.i.i, label %for.inc67.i.i.for.body16.i.i_crit_edge, label %for.inc67.i.i.if.end34.i_crit_edge

for.inc67.i.i.if.end34.i_crit_edge:               ; preds = %for.inc67.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34.i

for.inc67.i.i.for.body16.i.i_crit_edge:           ; preds = %for.inc67.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body16.i.i

if.end34.i:                                       ; preds = %for.inc67.i.i.if.end34.i_crit_edge, %for.end.i.i.if.end34.i_crit_edge, %if.end.i.if.end34.i_crit_edge
  %refcount.i.i = getelementptr inbounds %struct.fastrpc_channel_ctx, ptr %3, i32 0, i32 8
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #12
  %88 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #12, !srcloc !195
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %88, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.end34.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !196

if.end34.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.end34.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %89 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %89)
  %.not.i.i.i.i.i.i = icmp sgt i32 %89, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.fastrpc_channel_ctx_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !189

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.fastrpc_channel_ctx_get.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fastrpc_channel_ctx_get.exit.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.end34.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.end34.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef %.sink.i.i.i.i.i.i) #12
  br label %fastrpc_channel_ctx_get.exit.i

fastrpc_channel_ctx_get.exit.i:                   ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.fastrpc_channel_ctx_get.exit.i_crit_edge
  %sc35.i = getelementptr inbounds %struct.fastrpc_invoke_ctx, ptr %call7.i.i.i, i32 0, i32 5
  %90 = ptrtoint ptr %sc35.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %sc, ptr %sc35.i, align 4
  %retval36.i = getelementptr inbounds %struct.fastrpc_invoke_ctx, ptr %call7.i.i.i, i32 0, i32 2
  %91 = ptrtoint ptr %retval36.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 -1, ptr %retval36.i, align 8
  %92 = tail call i32 @llvm.read_register.i32(metadata !176) #12
  %and.i.i = and i32 %92, -16384
  %93 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %93, i32 0, i32 2
  %94 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %95, i32 0, i32 68
  %96 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %pid.i, align 8
  %pid38.i = getelementptr inbounds %struct.fastrpc_invoke_ctx, ptr %call7.i.i.i, i32 0, i32 3
  %98 = ptrtoint ptr %pid38.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %pid38.i, align 4
  %tgid.i = getelementptr inbounds %struct.fastrpc_user, ptr %fl, i32 0, i32 7
  %99 = ptrtoint ptr %tgid.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %tgid.i, align 4
  %tgid39.i = getelementptr inbounds %struct.fastrpc_invoke_ctx, ptr %call7.i.i.i, i32 0, i32 4
  %101 = ptrtoint ptr %tgid39.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %tgid39.i, align 8
  %cctx40.i = getelementptr inbounds %struct.fastrpc_invoke_ctx, ptr %call7.i.i.i, i32 0, i32 20
  %102 = ptrtoint ptr %cctx40.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %3, ptr %cctx40.i, align 8
  %work.i = getelementptr inbounds %struct.fastrpc_invoke_ctx, ptr %call7.i.i.i, i32 0, i32 11
  %103 = ptrtoint ptr %work.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %work.i, align 4
  %wait.i.i = getelementptr inbounds %struct.fastrpc_invoke_ctx, ptr %call7.i.i.i, i32 0, i32 11, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.39, ptr noundef nonnull @init_completion.__key) #12
  %put_work.i = getelementptr inbounds %struct.fastrpc_invoke_ctx, ptr %call7.i.i.i, i32 0, i32 12
  tail call void @__init_work(ptr noundef %put_work.i, i32 noundef 0) #12
  %104 = ptrtoint ptr %put_work.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 -64, ptr %put_work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.fastrpc_invoke_ctx, ptr %call7.i.i.i, i32 0, i32 12, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.38, ptr noundef nonnull @fastrpc_context_alloc.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry44.i = getelementptr inbounds %struct.fastrpc_invoke_ctx, ptr %call7.i.i.i, i32 0, i32 12, i32 1
  %105 = ptrtoint ptr %entry44.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store volatile ptr %entry44.i, ptr %entry44.i, align 8
  %prev.i34.i = getelementptr inbounds %struct.fastrpc_invoke_ctx, ptr %call7.i.i.i, i32 0, i32 12, i32 1, i32 1
  %106 = ptrtoint ptr %prev.i34.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %entry44.i, ptr %prev.i34.i, align 4
  %func.i = getelementptr inbounds %struct.fastrpc_invoke_ctx, ptr %call7.i.i.i, i32 0, i32 12, i32 2
  %107 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr @fastrpc_context_put_wq, ptr %func.i, align 8
  %lock.i = getelementptr inbounds %struct.fastrpc_user, ptr %fl, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #12
  %pending.i = getelementptr inbounds %struct.fastrpc_user, ptr %fl, i32 0, i32 2
  %prev.i35.i = getelementptr inbounds %struct.fastrpc_user, ptr %fl, i32 0, i32 2, i32 1
  %108 = ptrtoint ptr %prev.i35.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %prev.i35.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %109, ptr noundef %pending.i) #12
  br i1 %call.i.i.i, label %if.end.i.i36.i, label %fastrpc_channel_ctx_get.exit.i.list_add_tail.exit.i_crit_edge

fastrpc_channel_ctx_get.exit.i.list_add_tail.exit.i_crit_edge: ; preds = %fastrpc_channel_ctx_get.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit.i

if.end.i.i36.i:                                   ; preds = %fastrpc_channel_ctx_get.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %110 = ptrtoint ptr %prev.i35.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %node.i, ptr %prev.i35.i, align 4
  %111 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %pending.i, ptr %node.i, align 4
  %112 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %109, ptr %prev.i.i, align 8
  %113 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %113)
  store volatile ptr %node.i, ptr %109, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i36.i, %fastrpc_channel_ctx_get.exit.i.list_add_tail.exit.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #12
  %lock50.i = getelementptr inbounds %struct.fastrpc_channel_ctx, ptr %3, i32 0, i32 4
  %call52.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock50.i) #12
  %ctx_idr.i = getelementptr inbounds %struct.fastrpc_channel_ctx, ptr %3, i32 0, i32 5
  %call57.i = tail call i32 @idr_alloc_cyclic(ptr noundef %ctx_idr.i, ptr noundef nonnull %call7.i.i.i, i32 noundef 1, i32 noundef 256, i32 noundef 2592) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %cmp58.i = icmp slt i32 %call57.i, 0
  br i1 %cmp58.i, label %if.then60.i, label %if.end62.i

if.then60.i:                                      ; preds = %list_add_tail.exit.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock50.i, i32 noundef %call52.i) #12
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #12
  %call.i.i37.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.i) #12
  br i1 %call.i.i37.i, label %if.end.i.i38.i, label %if.then60.i.list_del.exit.i_crit_edge

if.then60.i.list_del.exit.i_crit_edge:            ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i38.i:                                   ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #14
  %114 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %prev.i.i, align 8
  %116 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %node.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %117, i32 0, i32 1
  %118 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %115, ptr %prev1.i.i.i.i, align 4
  %119 = ptrtoint ptr %115 to i32
  call void @__asan_store4_noabort(i32 %119)
  store volatile ptr %117, ptr %115, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i38.i, %if.then60.i.list_del.exit.i_crit_edge
  %120 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr inttoptr (i32 256 to ptr), ptr %node.i, align 4
  %121 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #12
  %call.i.i.i.i.i.i.i41.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !187
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #12
  %122 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #12, !srcloc !188
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %122, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i42.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i42.i, label %if.end5.i.i.i.i.i.i.fastrpc_channel_ctx_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !189

if.end5.i.i.i.i.i.i.fastrpc_channel_ctx_put.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fastrpc_channel_ctx_put.exit.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #12
  br label %fastrpc_channel_ctx_put.exit.i

if.then.i.i.i:                                    ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !190
  tail call void @kfree(ptr noundef %3) #12
  br label %fastrpc_channel_ctx_put.exit.i

fastrpc_channel_ctx_put.exit.i:                   ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.fastrpc_channel_ctx_put.exit.i_crit_edge
  %maps68.i = getelementptr inbounds %struct.fastrpc_invoke_ctx, ptr %call7.i.i.i, i32 0, i32 16
  %123 = ptrtoint ptr %maps68.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %maps68.i, align 8
  tail call void @kfree(ptr noundef %124) #12
  %olaps69.i = getelementptr inbounds %struct.fastrpc_invoke_ctx, ptr %call7.i.i.i, i32 0, i32 19
  %125 = ptrtoint ptr %olaps69.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %olaps69.i, align 4
  tail call void @kfree(ptr noundef %126) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  %127 = inttoptr i32 %call57.i to ptr
  br label %fastrpc_context_alloc.exit

if.end62.i:                                       ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %shl.i = shl i32 %call57.i, 4
  %conv63.i = sext i32 %shl.i to i64
  %ctxid.i = getelementptr inbounds %struct.fastrpc_invoke_ctx, ptr %call7.i.i.i, i32 0, i32 7
  %128 = ptrtoint ptr %ctxid.i to i32
  call void @__asan_store8_noabort(i32 %128)
  store i64 %conv63.i, ptr %ctxid.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock50.i, i32 noundef %call52.i) #12
  %refcount.i = getelementptr inbounds %struct.fastrpc_invoke_ctx, ptr %call7.i.i.i, i32 0, i32 9
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #12
  %129 = ptrtoint ptr %refcount.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store volatile i32 1, ptr %refcount.i, align 8
  br label %fastrpc_context_alloc.exit

fastrpc_context_alloc.exit:                       ; preds = %if.end62.i, %fastrpc_channel_ctx_put.exit.i
  %retval.0.i109 = phi ptr [ %127, %fastrpc_channel_ctx_put.exit.i ], [ %call7.i.i.i, %if.end62.i ]
  %cmp.i = icmp ugt ptr %retval.0.i109, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %fastrpc_context_alloc.exit.if.then16_crit_edge, label %if.end18

fastrpc_context_alloc.exit.if.then16_crit_edge:   ; preds = %fastrpc_context_alloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then16

if.then16.sink.split:                             ; preds = %if.then29.i, %if.end7.i.i.i.if.then16.sink.split_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %if.then16

if.then16:                                        ; preds = %if.then16.sink.split, %fastrpc_context_alloc.exit.if.then16_crit_edge, %if.end13.if.then16_crit_edge
  %retval.0.i109131 = phi ptr [ %retval.0.i109, %fastrpc_context_alloc.exit.if.then16_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end13.if.then16_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then16.sink.split ]
  %130 = ptrtoint ptr %retval.0.i109131 to i32
  br label %cleanup

if.end18:                                         ; preds = %fastrpc_context_alloc.exit
  %131 = ptrtoint ptr %retval.0.i109 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %retval.0.i109, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool19.not = icmp eq i32 %132, 0
  br i1 %tobool19.not, label %if.end18.if.end25_crit_edge, label %if.then20

if.end18.if.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then20:                                        ; preds = %if.end18
  %call21 = tail call fastcc i32 @fastrpc_get_args(i32 noundef %kernel, ptr noundef %retval.0.i109)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then20.if.end25_crit_edge, label %if.then20.bail_crit_edge

if.then20.bail_crit_edge:                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %bail

if.then20.if.end25_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.end25:                                         ; preds = %if.then20.if.end25_crit_edge, %if.end18.if.end25_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !199
  %fl1.i = getelementptr inbounds %struct.fastrpc_invoke_ctx, ptr %retval.0.i109, i32 0, i32 14
  %133 = ptrtoint ptr %fl1.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %fl1.i, align 8
  %msg2.i = getelementptr inbounds %struct.fastrpc_invoke_ctx, ptr %retval.0.i109, i32 0, i32 13
  %cctx3.i = getelementptr inbounds %struct.fastrpc_user, ptr %134, i32 0, i32 4
  %135 = ptrtoint ptr %cctx3.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %cctx3.i, align 4
  %tgid.i110 = getelementptr inbounds %struct.fastrpc_user, ptr %134, i32 0, i32 7
  %137 = ptrtoint ptr %tgid.i110 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %tgid.i110, align 4
  %139 = ptrtoint ptr %msg2.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %138, ptr %msg2.i, align 8
  %140 = tail call i32 @llvm.read_register.i32(metadata !176) #12
  %and.i.i111 = and i32 %140, -16384
  %141 = inttoptr i32 %and.i.i111 to ptr
  %task.i112 = getelementptr inbounds %struct.thread_info, ptr %141, i32 0, i32 2
  %142 = ptrtoint ptr %task.i112 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %task.i112, align 8
  %pid4.i = getelementptr inbounds %struct.task_struct, ptr %143, i32 0, i32 68
  %144 = ptrtoint ptr %pid4.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %pid4.i, align 8
  %tid.i = getelementptr inbounds %struct.fastrpc_invoke_ctx, ptr %retval.0.i109, i32 0, i32 13, i32 1
  %146 = ptrtoint ptr %tid.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %145, ptr %tid.i, align 4
  br i1 %tobool4.not, label %if.end25.if.end.i115_crit_edge, label %if.then.i

if.end25.if.end.i115_crit_edge:                   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i115

if.then.i:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  %147 = ptrtoint ptr %msg2.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 0, ptr %msg2.i, align 8
  br label %if.end.i115

if.end.i115:                                      ; preds = %if.then.i, %if.end25.if.end.i115_crit_edge
  %ctxid.i114 = getelementptr inbounds %struct.fastrpc_invoke_ctx, ptr %retval.0.i109, i32 0, i32 7
  %148 = ptrtoint ptr %ctxid.i114 to i32
  call void @__asan_load8_noabort(i32 %148)
  %149 = load i64, ptr %ctxid.i114, align 8
  %pd.i = getelementptr inbounds %struct.fastrpc_user, ptr %134, i32 0, i32 8
  %150 = ptrtoint ptr %pd.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %pd.i, align 4
  %conv.i = sext i32 %151 to i64
  %or.i = or i64 %149, %conv.i
  %ctx6.i = getelementptr inbounds %struct.fastrpc_invoke_ctx, ptr %retval.0.i109, i32 0, i32 13, i32 2
  %152 = ptrtoint ptr %ctx6.i to i32
  call void @__asan_store8_noabort(i32 %152)
  store i64 %or.i, ptr %ctx6.i, align 8
  %handle7.i = getelementptr inbounds %struct.fastrpc_invoke_ctx, ptr %retval.0.i109, i32 0, i32 13, i32 3
  %153 = ptrtoint ptr %handle7.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %handle, ptr %handle7.i, align 8
  %sc.i = getelementptr inbounds %struct.fastrpc_invoke_ctx, ptr %retval.0.i109, i32 0, i32 5
  %154 = ptrtoint ptr %sc.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %sc.i, align 4
  %sc8.i = getelementptr inbounds %struct.fastrpc_invoke_ctx, ptr %retval.0.i109, i32 0, i32 13, i32 4
  %156 = ptrtoint ptr %sc8.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %155, ptr %sc8.i, align 4
  %buf.i = getelementptr inbounds %struct.fastrpc_invoke_ctx, ptr %retval.0.i109, i32 0, i32 17
  %157 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %buf.i, align 4
  %tobool9.not.i = icmp eq ptr %158, null
  br i1 %tobool9.not.i, label %if.end.i115.cond.end.i_crit_edge, label %cond.true.i

if.end.i115.cond.end.i_crit_edge:                 ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #14
  %phys.i = getelementptr inbounds %struct.fastrpc_buf, ptr %158, i32 0, i32 4
  %159 = ptrtoint ptr %phys.i to i32
  call void @__asan_load8_noabort(i32 %159)
  %160 = load i64, ptr %phys.i, align 8
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.end.i115.cond.end.i_crit_edge
  %cond.i = phi i64 [ %160, %cond.true.i ], [ 0, %if.end.i115.cond.end.i_crit_edge ]
  %addr.i = getelementptr inbounds %struct.fastrpc_invoke_ctx, ptr %retval.0.i109, i32 0, i32 13, i32 5
  %161 = ptrtoint ptr %addr.i to i32
  call void @__asan_store8_noabort(i32 %161)
  store i64 %cond.i, ptr %addr.i, align 8
  %msg_sz.i = getelementptr inbounds %struct.fastrpc_invoke_ctx, ptr %retval.0.i109, i32 0, i32 8
  %162 = ptrtoint ptr %msg_sz.i to i32
  call void @__asan_load8_noabort(i32 %162)
  %163 = load i64, ptr %msg_sz.i, align 8
  %add.i116 = add i64 %163, 4095
  %div1.i = and i64 %add.i116, -4096
  %size.i = getelementptr inbounds %struct.fastrpc_invoke_ctx, ptr %retval.0.i109, i32 0, i32 13, i32 6
  %164 = ptrtoint ptr %size.i to i32
  call void @__asan_store8_noabort(i32 %164)
  store i64 %div1.i, ptr %size.i, align 8
  %refcount.i.i117 = getelementptr inbounds %struct.fastrpc_invoke_ctx, ptr %retval.0.i109, i32 0, i32 9
  %call.i.i.i.i.i.i.i.i118 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i117, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i117, i32 1, i32 3, i32 1) #12
  %165 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i117, ptr %refcount.i.i117, i32 1, ptr elementtype(i32) %refcount.i.i117) #12, !srcloc !195
  %asmresult.i.i.i.i.i.i.i.i119 = extractvalue { i32, i32, i32 } %165, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i119)
  %tobool1.not.i.i.i.i.i.i120 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i119, 0
  br i1 %tobool1.not.i.i.i.i.i.i120, label %cond.end.i.if.end15.sink.split.i.i.i.i.i.i125_crit_edge, label %if.else.i.i.i.i.i.i123, !prof !196

cond.end.i.if.end15.sink.split.i.i.i.i.i.i125_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i.i125

if.else.i.i.i.i.i.i123:                           ; preds = %cond.end.i
  %add.i.i.i.i.i.i121 = add i32 %asmresult.i.i.i.i.i.i.i.i119, 1
  %166 = or i32 %add.i.i.i.i.i.i121, %asmresult.i.i.i.i.i.i.i.i119
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %166)
  %.not.i.i.i.i.i.i122 = icmp sgt i32 %166, -1
  br i1 %.not.i.i.i.i.i.i122, label %if.else.i.i.i.i.i.i123.fastrpc_context_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.i123.if.end15.sink.split.i.i.i.i.i.i125_crit_edge, !prof !189

if.else.i.i.i.i.i.i123.if.end15.sink.split.i.i.i.i.i.i125_crit_edge: ; preds = %if.else.i.i.i.i.i.i123
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i.i125

if.else.i.i.i.i.i.i123.fastrpc_context_get.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i123
  call void @__sanitizer_cov_trace_pc() #14
  br label %fastrpc_context_get.exit.i

if.end15.sink.split.i.i.i.i.i.i125:               ; preds = %if.else.i.i.i.i.i.i123.if.end15.sink.split.i.i.i.i.i.i125_crit_edge, %cond.end.i.if.end15.sink.split.i.i.i.i.i.i125_crit_edge
  %.sink.i.i.i.i.i.i124 = phi i32 [ 2, %cond.end.i.if.end15.sink.split.i.i.i.i.i.i125_crit_edge ], [ 1, %if.else.i.i.i.i.i.i123.if.end15.sink.split.i.i.i.i.i.i125_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i117, i32 noundef %.sink.i.i.i.i.i.i124) #12
  br label %fastrpc_context_get.exit.i

fastrpc_context_get.exit.i:                       ; preds = %if.end15.sink.split.i.i.i.i.i.i125, %if.else.i.i.i.i.i.i123.fastrpc_context_get.exit.i_crit_edge
  %rpdev.i = getelementptr inbounds %struct.fastrpc_channel_ctx, ptr %136, i32 0, i32 2
  %167 = ptrtoint ptr %rpdev.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %rpdev.i, align 4
  %ept.i = getelementptr inbounds %struct.rpmsg_device, ptr %168, i32 0, i32 5
  %169 = ptrtoint ptr %ept.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %ept.i, align 8
  %call14.i = tail call i32 @rpmsg_send(ptr noundef %170, ptr noundef %msg2.i, i32 noundef 40) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end30, label %fastrpc_invoke_send.exit

fastrpc_invoke_send.exit:                         ; preds = %fastrpc_context_get.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @fastrpc_context_put(ptr noundef %retval.0.i109) #12
  br label %bail

if.end30:                                         ; preds = %fastrpc_context_get.exit.i
  %work37 = getelementptr inbounds %struct.fastrpc_invoke_ctx, ptr %retval.0.i109, i32 0, i32 11
  br i1 %tobool4.not, label %if.end39, label %if.then32

if.then32:                                        ; preds = %if.end30
  %call33 = tail call i32 @wait_for_completion_timeout(ptr noundef %work37, i32 noundef 1000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.then32.do.body63_crit_edge, label %if.then32.if.end42_crit_edge

if.then32.if.end42_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

if.then32.do.body63_crit_edge:                    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body63

if.end39:                                         ; preds = %if.end30
  %call38 = tail call i32 @wait_for_completion_interruptible(ptr noundef %work37) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool40.not = icmp eq i32 %call38, 0
  br i1 %tobool40.not, label %if.end39.if.end42_crit_edge, label %if.end39.bail_crit_edge

if.end39.bail_crit_edge:                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %bail

if.end39.if.end42_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

if.end42:                                         ; preds = %if.end39.if.end42_crit_edge, %if.then32.if.end42_crit_edge
  %retval43 = getelementptr inbounds %struct.fastrpc_invoke_ctx, ptr %retval.0.i109, i32 0, i32 2
  %171 = ptrtoint ptr %retval43 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %retval43, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %tobool44.not = icmp eq i32 %172, 0
  br i1 %tobool44.not, label %if.end46, label %if.end42.bail_crit_edge

if.end42.bail_crit_edge:                          ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %bail

if.end46:                                         ; preds = %if.end42
  %173 = ptrtoint ptr %retval.0.i109 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %retval.0.i109, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %174)
  %tobool48.not = icmp eq i32 %174, 0
  br i1 %tobool48.not, label %if.end46.if.then58_crit_edge, label %if.then49

if.end46.if.then58_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then58

if.then49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !200
  %call50 = tail call fastcc i32 @fastrpc_put_args(ptr noundef %retval.0.i109, i32 noundef %kernel)
  br label %bail

bail:                                             ; preds = %if.then49, %if.end42.bail_crit_edge, %if.end39.bail_crit_edge, %fastrpc_invoke_send.exit, %if.then20.bail_crit_edge
  %err.1 = phi i32 [ %call21, %if.then20.bail_crit_edge ], [ %call14.i, %fastrpc_invoke_send.exit ], [ %call38, %if.end39.bail_crit_edge ], [ %172, %if.end42.bail_crit_edge ], [ %call50, %if.then49 ]
  %175 = zext i32 %err.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %175, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %err.1, label %bail.if.then58_crit_edge [
    i32 -512, label %bail.do.body63_crit_edge
    i32 -110, label %bail.do.body63_crit_edge146
  ]

bail.do.body63_crit_edge146:                      ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body63

bail.do.body63_crit_edge:                         ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body63

bail.if.then58_crit_edge:                         ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then58

if.then58:                                        ; preds = %bail.if.then58_crit_edge, %if.end46.if.then58_crit_edge
  %err.1140 = phi i32 [ %err.1, %bail.if.then58_crit_edge ], [ 0, %if.end46.if.then58_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #12
  %node = getelementptr inbounds %struct.fastrpc_invoke_ctx, ptr %retval.0.i109, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.then58.list_del.exit_crit_edge

if.then58.list_del.exit_crit_edge:                ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i126 = getelementptr inbounds %struct.fastrpc_invoke_ctx, ptr %retval.0.i109, i32 0, i32 10, i32 1
  %176 = ptrtoint ptr %prev.i.i126 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %prev.i.i126, align 4
  %178 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %179, i32 0, i32 1
  %180 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %177, ptr %prev1.i.i.i, align 4
  %181 = ptrtoint ptr %177 to i32
  call void @__asan_store4_noabort(i32 %181)
  store volatile ptr %179, ptr %177, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then58.list_del.exit_crit_edge
  %182 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr inttoptr (i32 256 to ptr), ptr %node, align 4
  %prev.i = getelementptr inbounds %struct.fastrpc_invoke_ctx, ptr %retval.0.i109, i32 0, i32 10, i32 1
  %183 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #12
  tail call fastcc void @fastrpc_context_put(ptr noundef %retval.0.i109)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1140)
  %tobool61.not = icmp eq i32 %err.1140, 0
  br i1 %tobool61.not, label %list_del.exit.cleanup_crit_edge, label %list_del.exit.do.body63_crit_edge

list_del.exit.do.body63_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body63

list_del.exit.cleanup_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body63:                                        ; preds = %list_del.exit.do.body63_crit_edge, %bail.do.body63_crit_edge, %bail.do.body63_crit_edge146, %if.then32.do.body63_crit_edge
  %err.1141 = phi i32 [ %err.1, %bail.do.body63_crit_edge ], [ %err.1, %bail.do.body63_crit_edge146 ], [ %err.1140, %list_del.exit.do.body63_crit_edge ], [ -110, %if.then32.do.body63_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fastrpc_internal_invoke.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fastrpc_internal_invoke, %if.then68)) #12
          to label %cleanup [label %if.then68], !srcloc !198

if.then68:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #14
  %184 = ptrtoint ptr %sctx to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %sctx, align 4
  %186 = ptrtoint ptr %185 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %185, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fastrpc_internal_invoke.__UNIQUE_ID_ddebug234, ptr noundef %187, ptr noundef nonnull @.str.37, i32 noundef %err.1141) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then68, %do.body63, %list_del.exit.cleanup_crit_edge, %if.then16, %do.end, %do.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %130, %if.then16 ], [ -22, %entry.cleanup_crit_edge ], [ -32, %if.end.cleanup_crit_edge ], [ -1, %do.end ], [ -1, %do.body.cleanup_crit_edge ], [ %err.1141, %if.then68 ], [ 0, %list_del.exit.cleanup_crit_edge ], [ %err.1141, %do.body63 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fastrpc_get_args(i32 noundef %kernel, ptr noundef %ctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fl = getelementptr inbounds %struct.fastrpc_invoke_ctx, ptr %ctx, i32 0, i32 14
  %0 = ptrtoint ptr %fl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fl, align 8
  %sctx = getelementptr inbounds %struct.fastrpc_user, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %sctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sctx, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %sc = getelementptr inbounds %struct.fastrpc_invoke_ctx, ptr %ctx, i32 0, i32 5
  %6 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sc, align 4
  %shr = lshr i32 %7, 16
  %and = and i32 %shr, 255
  %8 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ctx, align 8
  %mul.i = mul i32 %9, 40
  %add1.i = add i32 %mul.i, 384
  %add.i = add i32 %mul.i, 511
  %and.i = and i32 %add.i, -128
  %conv.i = sext i32 %and.i to i64
  %nbufs.i = getelementptr inbounds %struct.fastrpc_invoke_ctx, ptr %ctx, i32 0, i32 1
  %10 = ptrtoint ptr %nbufs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nbufs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp37.i = icmp sgt i32 %11, 0
  br i1 %cmp37.i, label %for.body.lr.ph.i, label %entry.fastrpc_get_payload_size.exit_crit_edge

entry.fastrpc_get_payload_size.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %fastrpc_get_payload_size.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %olaps.i = getelementptr inbounds %struct.fastrpc_invoke_ctx, ptr %ctx, i32 0, i32 19
  %12 = ptrtoint ptr %olaps.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %olaps.i, align 4
  %args.i = getelementptr inbounds %struct.fastrpc_invoke_ctx, ptr %ctx, i32 0, i32 18
  %14 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %args.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %if.end22.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %oix.039.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end22.i.for.body.i_crit_edge ]
  %size.038.i = phi i64 [ %conv.i, %for.body.lr.ph.i ], [ %size.2.i, %if.end22.i.for.body.i_crit_edge ]
  %raix.i = getelementptr %struct.fastrpc_buf_overlap, ptr %13, i32 %oix.039.i, i32 2
  %16 = ptrtoint ptr %raix.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %raix.i, align 8
  %fd.i = getelementptr %struct.fastrpc_invoke_args, ptr %15, i32 %17, i32 2
  %18 = ptrtoint ptr %fd.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fd.i, align 8
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %19, label %for.body.i.if.end22.i_crit_edge [
    i32 0, label %for.body.i.if.then.i373_crit_edge
    i32 -1, label %for.body.i.if.then.i373_crit_edge484
  ]

for.body.i.if.then.i373_crit_edge484:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i373

for.body.i.if.then.i373_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i373

for.body.i.if.end22.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22.i

if.then.i373:                                     ; preds = %for.body.i.if.then.i373_crit_edge, %for.body.i.if.then.i373_crit_edge484
  %offset.i = getelementptr %struct.fastrpc_buf_overlap, ptr %13, i32 %oix.039.i, i32 5
  %21 = ptrtoint ptr %offset.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %offset.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %22)
  %cmp12.i = icmp eq i64 %22, 0
  %add15.i = add i64 %size.038.i, 127
  %and16.i = and i64 %add15.i, -128
  %size.1.i = select i1 %cmp12.i, i64 %and16.i, i64 %size.038.i
  %mend.i = getelementptr %struct.fastrpc_buf_overlap, ptr %13, i32 %oix.039.i, i32 4
  %23 = ptrtoint ptr %mend.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %mend.i, align 8
  %mstart.i = getelementptr %struct.fastrpc_buf_overlap, ptr %13, i32 %oix.039.i, i32 3
  %25 = ptrtoint ptr %mstart.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %mstart.i, align 8
  %sub.i = sub i64 %24, %26
  %add21.i = add i64 %sub.i, %size.1.i
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then.i373, %for.body.i.if.end22.i_crit_edge
  %size.2.i = phi i64 [ %add21.i, %if.then.i373 ], [ %size.038.i, %for.body.i.if.end22.i_crit_edge ]
  %inc.i = add nuw nsw i32 %oix.039.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %11
  br i1 %exitcond.not.i, label %if.end22.i.fastrpc_get_payload_size.exit_crit_edge, label %if.end22.i.for.body.i_crit_edge

if.end22.i.for.body.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

if.end22.i.fastrpc_get_payload_size.exit_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fastrpc_get_payload_size.exit

fastrpc_get_payload_size.exit:                    ; preds = %if.end22.i.fastrpc_get_payload_size.exit_crit_edge, %entry.fastrpc_get_payload_size.exit_crit_edge
  %size.0.lcssa.i = phi i64 [ %conv.i, %entry.fastrpc_get_payload_size.exit_crit_edge ], [ %size.2.i, %if.end22.i.fastrpc_get_payload_size.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp47.i = icmp sgt i32 %9, 0
  br i1 %cmp47.i, label %for.body.lr.ph.i375, label %fastrpc_get_payload_size.exit.if.end_crit_edge

fastrpc_get_payload_size.exit.if.end_crit_edge:   ; preds = %fastrpc_get_payload_size.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.body.lr.ph.i375:                              ; preds = %fastrpc_get_payload_size.exit
  %args.i374 = getelementptr inbounds %struct.fastrpc_invoke_ctx, ptr %ctx, i32 0, i32 18
  %maps.i = getelementptr inbounds %struct.fastrpc_invoke_ctx, ptr %ctx, i32 0, i32 16
  br label %for.body.i376

for.body.i376:                                    ; preds = %for.inc.i.for.body.i376_crit_edge, %for.body.lr.ph.i375
  %i.048.i = phi i32 [ 0, %for.body.lr.ph.i375 ], [ %inc.i379, %for.inc.i.for.body.i376_crit_edge ]
  %27 = ptrtoint ptr %args.i374 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %args.i374, align 8
  %reserved.i = getelementptr %struct.fastrpc_invoke_args, ptr %28, i32 %i.048.i, i32 3
  %29 = ptrtoint ptr %reserved.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %reserved.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i376.cleanup213_crit_edge

for.body.i376.cleanup213_crit_edge:               ; preds = %for.body.i376
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup213

if.end.i:                                         ; preds = %for.body.i376
  %fd.i377 = getelementptr %struct.fastrpc_invoke_args, ptr %28, i32 %i.048.i, i32 2
  %31 = ptrtoint ptr %fd.i377 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fd.i377, align 8
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %32, label %lor.lhs.false9.i [
    i32 0, label %if.end.i.for.inc.i_crit_edge
    i32 -1, label %if.end.i.for.inc.i_crit_edge485
  ]

if.end.i.for.inc.i_crit_edge485:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

lor.lhs.false9.i:                                 ; preds = %if.end.i
  %length.i = getelementptr %struct.fastrpc_invoke_args, ptr %28, i32 %i.048.i, i32 1
  %34 = ptrtoint ptr %length.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %35)
  %cmp12.i378 = icmp eq i64 %35, 0
  br i1 %cmp12.i378, label %lor.lhs.false9.i.for.inc.i_crit_edge, label %if.end14.i

lor.lhs.false9.i.for.inc.i_crit_edge:             ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end14.i:                                       ; preds = %lor.lhs.false9.i
  %36 = ptrtoint ptr %fl to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fl, align 8
  %38 = ptrtoint ptr %maps.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %maps.i, align 8
  %arrayidx22.i = getelementptr ptr, ptr %39, i32 %i.048.i
  %call.i = tail call fastcc i32 @fastrpc_map_create(ptr noundef %37, i32 noundef %32, i64 noundef %35, ptr noundef %arrayidx22.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool23.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool23.not.i, label %if.end14.i.for.inc.i_crit_edge, label %do.end.i

if.end14.i.for.inc.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

do.end.i:                                         ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.42, i32 noundef %call.i) #15
  br label %cleanup213

for.inc.i:                                        ; preds = %if.end14.i.for.inc.i_crit_edge, %lor.lhs.false9.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge485
  %inc.i379 = add nuw nsw i32 %i.048.i, 1
  %40 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ctx, align 8
  %cmp.i = icmp slt i32 %inc.i379, %41
  br i1 %cmp.i, label %for.inc.i.for.body.i376_crit_edge, label %for.inc.i.if.end_crit_edge

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.inc.i.for.body.i376_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i376

if.end:                                           ; preds = %for.inc.i.if.end_crit_edge, %fastrpc_get_payload_size.exit.if.end_crit_edge
  %msg_sz = getelementptr inbounds %struct.fastrpc_invoke_ctx, ptr %ctx, i32 0, i32 8
  %42 = ptrtoint ptr %msg_sz to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %size.0.lcssa.i, ptr %msg_sz, align 8
  %43 = ptrtoint ptr %fl to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %fl, align 8
  %buf = getelementptr inbounds %struct.fastrpc_invoke_ctx, ptr %ctx, i32 0, i32 17
  %call5 = tail call fastcc i32 @fastrpc_buf_alloc(ptr noundef %44, ptr noundef %5, i64 noundef %size.0.lcssa.i, ptr noundef %buf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup213_crit_edge

if.end.cleanup213_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup213

if.end8:                                          ; preds = %if.end
  %45 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %buf, align 4
  %virt = getelementptr inbounds %struct.fastrpc_buf, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %virt, align 4
  %49 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ctx, align 8
  %mul = shl i32 %50, 4
  %add.ptr = getelementptr i8, ptr %48, i32 %mul
  %mul15 = mul i32 %50, 24
  %add.ptr16 = getelementptr i8, ptr %48, i32 %mul15
  %rpra19 = getelementptr inbounds %struct.fastrpc_invoke_ctx, ptr %ctx, i32 0, i32 15
  %51 = ptrtoint ptr %rpra19 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %rpra19, align 4
  %52 = ptrtoint ptr %nbufs.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %nbufs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp421 = icmp sgt i32 %53, 0
  br i1 %cmp421, label %for.body.lr.ph, label %if.end8.for.cond173.preheader_crit_edge

if.end8.for.cond173.preheader_crit_edge:          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond173.preheader

for.body.lr.ph:                                   ; preds = %if.end8
  %conv = sext i32 %add1.i to i64
  %sub = sub i64 %size.0.lcssa.i, %conv
  %54 = ptrtoint ptr %48 to i32
  %add = add i32 %add1.i, %54
  %olaps = getelementptr inbounds %struct.fastrpc_invoke_ctx, ptr %ctx, i32 0, i32 19
  %args21 = getelementptr inbounds %struct.fastrpc_invoke_ctx, ptr %ctx, i32 0, i32 18
  %maps = getelementptr inbounds %struct.fastrpc_invoke_ctx, ptr %ctx, i32 0, i32 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %kernel)
  %tobool157.not = icmp eq i32 %kernel, 0
  br label %for.body

for.cond173.preheader:                            ; preds = %for.inc.for.cond173.preheader_crit_edge, %if.end8.for.cond173.preheader_crit_edge
  %.lcssa = phi i32 [ %53, %if.end8.for.cond173.preheader_crit_edge ], [ %161, %for.inc.for.cond173.preheader_crit_edge ]
  %55 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ctx, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %.lcssa, i32 %56)
  %cmp175427 = icmp slt i32 %.lcssa, %56
  br i1 %cmp175427, label %for.body177.lr.ph, label %for.cond173.preheader.cleanup213_crit_edge

for.cond173.preheader.cleanup213_crit_edge:       ; preds = %for.cond173.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup213

for.body177.lr.ph:                                ; preds = %for.cond173.preheader
  %args178 = getelementptr inbounds %struct.fastrpc_invoke_ctx, ptr %ctx, i32 0, i32 18
  %maps197 = getelementptr inbounds %struct.fastrpc_invoke_ctx, ptr %ctx, i32 0, i32 16
  br label %for.body177

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %args.0426 = phi i32 [ %add, %for.body.lr.ph ], [ %args.3, %for.inc.for.body_crit_edge ]
  %rlen.0425 = phi i64 [ %sub, %for.body.lr.ph ], [ %rlen.3, %for.inc.for.body_crit_edge ]
  %oix.0422 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %57 = ptrtoint ptr %olaps to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %olaps, align 4
  %raix = getelementptr %struct.fastrpc_buf_overlap, ptr %58, i32 %oix.0422, i32 2
  %59 = ptrtoint ptr %raix to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %raix, align 8
  %61 = ptrtoint ptr %args21 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %args21, align 8
  %length = getelementptr %struct.fastrpc_invoke_args, ptr %62, i32 %60, i32 1
  %63 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %length, align 8
  %arrayidx23 = getelementptr %struct.fastrpc_remote_arg, ptr %48, i32 %60
  %65 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 0, ptr %arrayidx23, align 8
  %len25 = getelementptr %struct.fastrpc_remote_arg, ptr %48, i32 %60, i32 1
  %66 = ptrtoint ptr %len25 to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %64, ptr %len25, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %64)
  %tobool26.not = icmp eq i64 %64, 0
  %not.tobool26.not = xor i1 %tobool26.not, true
  %cond = zext i1 %not.tobool26.not to i32
  %arrayidx27 = getelementptr %struct.fastrpc_invoke_buf, ptr %add.ptr, i32 %60
  %67 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %cond, ptr %arrayidx27, align 4
  %pgidx = getelementptr inbounds %struct.fastrpc_invoke_buf, ptr %arrayidx27, i32 0, i32 1
  %68 = ptrtoint ptr %pgidx to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %60, ptr %pgidx, align 4
  br i1 %tobool26.not, label %for.body.for.inc_crit_edge, label %if.end31

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end31:                                         ; preds = %for.body
  %69 = ptrtoint ptr %maps to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %maps, align 8
  %arrayidx32 = getelementptr ptr, ptr %70, i32 %60
  %71 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx32, align 4
  %tobool33.not = icmp eq ptr %72, null
  br i1 %tobool33.not, label %if.else, label %if.then34

if.then34:                                        ; preds = %if.end31
  %73 = ptrtoint ptr %args21 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %args21, align 8
  %arrayidx36 = getelementptr %struct.fastrpc_invoke_args, ptr %74, i32 %60
  %75 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %arrayidx36, align 8
  %77 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %76, ptr %arrayidx23, align 8
  %78 = ptrtoint ptr %maps to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %maps, align 8
  %arrayidx40 = getelementptr ptr, ptr %79, i32 %60
  %80 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx40, align 4
  %phys = getelementptr inbounds %struct.fastrpc_map, ptr %81, i32 0, i32 6
  %82 = ptrtoint ptr %phys to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %phys, align 8
  %arrayidx41 = getelementptr %struct.fastrpc_phy_page, ptr %add.ptr16, i32 %60
  %84 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %83, ptr %arrayidx41, align 8
  %85 = tail call i32 @llvm.read_register.i32(metadata !176) #12
  %and.i380 = and i32 %85, -16384
  %86 = inttoptr i32 %and.i380 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %86, i32 0, i32 2
  %87 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %task, align 8
  %mm = getelementptr inbounds %struct.task_struct, ptr %88, i32 0, i32 53
  %89 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %mm, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@fastrpc_get_args, %if.then.i.i381)) #12
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i381], !srcloc !198

if.then.i.i381:                                   ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %90, i1 noundef zeroext false) #12
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i381, %if.then34
  %mmap_lock.i = getelementptr inbounds %struct.anon.10, ptr %90, i32 0, i32 15
  tail call void @down_read(ptr noundef %mmap_lock.i) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@fastrpc_get_args, %if.then.i3.i)) #12
          to label %mmap_read_lock.exit [label %if.then.i3.i], !srcloc !198

if.then.i3.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %90, i1 noundef zeroext false, i1 noundef zeroext true) #12
  br label %mmap_read_lock.exit

mmap_read_lock.exit:                              ; preds = %if.then.i3.i, %__mmap_lock_trace_start_locking.exit.i
  %91 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %task, align 8
  %mm45 = getelementptr inbounds %struct.task_struct, ptr %92, i32 0, i32 53
  %93 = ptrtoint ptr %mm45 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %mm45, align 8
  %95 = ptrtoint ptr %args21 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %args21, align 8
  %arrayidx47 = getelementptr %struct.fastrpc_invoke_args, ptr %96, i32 %60
  %97 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %arrayidx47, align 8
  %conv49 = trunc i64 %98 to i32
  %call50 = tail call ptr @find_vma(ptr noundef %94, i32 noundef %conv49) #12
  %tobool51.not = icmp eq ptr %call50, null
  br i1 %tobool51.not, label %mmap_read_lock.exit.if.end61_crit_edge, label %if.then52

mmap_read_lock.exit.if.end61_crit_edge:           ; preds = %mmap_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

if.then52:                                        ; preds = %mmap_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  %99 = ptrtoint ptr %args21 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %args21, align 8
  %arrayidx54 = getelementptr %struct.fastrpc_invoke_args, ptr %100, i32 %60
  %101 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %arrayidx54, align 8
  %103 = ptrtoint ptr %call50 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %call50, align 4
  %conv56 = zext i32 %104 to i64
  %sub57 = sub i64 %102, %conv56
  %105 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %arrayidx41, align 8
  %add60 = add i64 %sub57, %106
  store i64 %add60, ptr %arrayidx41, align 8
  br label %if.end61

if.end61:                                         ; preds = %if.then52, %mmap_read_lock.exit.if.end61_crit_edge
  %107 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %task, align 8
  %mm64 = getelementptr inbounds %struct.task_struct, ptr %108, i32 0, i32 53
  %109 = ptrtoint ptr %mm64 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %mm64, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@fastrpc_get_args, %if.then.i.i382)) #12
          to label %mmap_read_unlock.exit [label %if.then.i.i382], !srcloc !198

if.then.i.i382:                                   ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__mmap_lock_do_trace_released(ptr noundef %110, i1 noundef zeroext false) #12
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i382, %if.end61
  %mmap_lock.i383 = getelementptr inbounds %struct.anon.10, ptr %110, i32 0, i32 15
  tail call void @up_read(ptr noundef %mmap_lock.i383) #12
  %111 = ptrtoint ptr %args21 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %args21, align 8
  %arrayidx66 = getelementptr %struct.fastrpc_invoke_args, ptr %112, i32 %60
  %113 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %arrayidx66, align 8
  %shr69 = and i64 %114, -4096
  %115 = xor i64 %shr69, -1
  %add73 = add i64 %64, 4096
  %shr76372 = add i64 %add73, %114
  %116 = add i64 %shr76372, %115
  %mul79 = and i64 %116, -4096
  %size = getelementptr inbounds %struct.fastrpc_phy_page, ptr %arrayidx41, i32 0, i32 1
  %117 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %117)
  store i64 %mul79, ptr %size, align 8
  br label %if.end143

if.else:                                          ; preds = %if.end31
  %118 = ptrtoint ptr %olaps to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %olaps, align 4
  %offset = getelementptr %struct.fastrpc_buf_overlap, ptr %119, i32 %oix.0422, i32 5
  %120 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %offset, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %121)
  %cmp83 = icmp eq i64 %121, 0
  br i1 %cmp83, label %if.then85, label %if.else.if.end93_crit_edge

if.else.if.end93_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end93

if.then85:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %add86 = add i32 %args.0426, 127
  %and87 = and i32 %add86, -128
  %sub88 = sub i32 %and87, %args.0426
  %conv89 = zext i32 %sub88 to i64
  %sub90 = sub i64 %rlen.0425, %conv89
  br label %if.end93

if.end93:                                         ; preds = %if.then85, %if.else.if.end93_crit_edge
  %rlen.1 = phi i64 [ %sub90, %if.then85 ], [ %rlen.0425, %if.else.if.end93_crit_edge ]
  %args.1 = phi i32 [ %and87, %if.then85 ], [ %args.0426, %if.else.if.end93_crit_edge ]
  %mend = getelementptr %struct.fastrpc_buf_overlap, ptr %119, i32 %oix.0422, i32 4
  %122 = ptrtoint ptr %mend to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %mend, align 8
  %mstart = getelementptr %struct.fastrpc_buf_overlap, ptr %119, i32 %oix.0422, i32 3
  %124 = ptrtoint ptr %mstart to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %mstart, align 8
  %sub98 = sub i64 %123, %125
  %conv99 = trunc i64 %sub98 to i32
  %conv100 = sext i32 %conv99 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %rlen.1, i64 %conv100)
  %cmp101 = icmp ult i64 %rlen.1, %conv100
  br i1 %cmp101, label %if.end93.cleanup213_crit_edge, label %if.end104

if.end93.cleanup213_crit_edge:                    ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup213

if.end104:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #14
  %conv105 = zext i32 %args.1 to i64
  %sub109 = sub i64 %conv105, %121
  %126 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store8_noabort(i32 %126)
  store i64 %sub109, ptr %arrayidx23, align 8
  %127 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %buf, align 4
  %phys113 = getelementptr inbounds %struct.fastrpc_buf, ptr %128, i32 0, i32 4
  %129 = ptrtoint ptr %phys113 to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %phys113, align 8
  %131 = ptrtoint ptr %olaps to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %olaps, align 4
  %offset116 = getelementptr %struct.fastrpc_buf_overlap, ptr %132, i32 %oix.0422, i32 5
  %133 = ptrtoint ptr %offset116 to i32
  call void @__asan_load8_noabort(i32 %133)
  %134 = load i64, ptr %offset116, align 8
  %135 = add i64 %size.0.lcssa.i, %130
  %136 = add i64 %rlen.1, %134
  %add119 = sub i64 %135, %136
  %arrayidx120 = getelementptr %struct.fastrpc_phy_page, ptr %add.ptr16, i32 %60
  %and124 = and i64 %add119, -4096
  %137 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_store8_noabort(i32 %137)
  store i64 %and124, ptr %arrayidx120, align 8
  %shr128 = and i32 %args.1, -4096
  %sub135369 = zext i32 %shr128 to i64
  %138 = xor i64 %sub135369, -1
  %add131 = add i64 %64, 4096
  %shr134370 = add i64 %add131, %conv105
  %139 = add i64 %shr134370, %138
  %mul137 = and i64 %139, -4096
  %size139 = getelementptr inbounds %struct.fastrpc_phy_page, ptr %arrayidx120, i32 0, i32 1
  %140 = ptrtoint ptr %size139 to i32
  call void @__asan_store8_noabort(i32 %140)
  store i64 %mul137, ptr %size139, align 8
  %add140 = add i32 %args.1, %conv99
  %sub142 = sub i64 %rlen.1, %conv100
  br label %if.end143

if.end143:                                        ; preds = %if.end104, %mmap_read_unlock.exit
  %rlen.2 = phi i64 [ %rlen.0425, %mmap_read_unlock.exit ], [ %sub142, %if.end104 ]
  %args.2 = phi i32 [ %args.0426, %mmap_read_unlock.exit ], [ %add140, %if.end104 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %and)
  %cmp144 = icmp slt i32 %60, %and
  br i1 %cmp144, label %land.lhs.true, label %if.end143.for.inc_crit_edge

if.end143.for.inc_crit_edge:                      ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end143
  %141 = ptrtoint ptr %maps to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %maps, align 8
  %arrayidx147 = getelementptr ptr, ptr %142, i32 %60
  %143 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %arrayidx147, align 4
  %tobool148.not = icmp eq ptr %144, null
  br i1 %tobool148.not, label %if.then149, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then149:                                       ; preds = %land.lhs.true
  %145 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %arrayidx23, align 8
  %conv152 = trunc i64 %146 to i32
  %147 = inttoptr i32 %conv152 to ptr
  %148 = ptrtoint ptr %args21 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %args21, align 8
  %arrayidx154 = getelementptr %struct.fastrpc_invoke_args, ptr %149, i32 %60
  %150 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_load8_noabort(i32 %150)
  %151 = load i64, ptr %arrayidx154, align 8
  %conv156 = trunc i64 %151 to i32
  %152 = inttoptr i32 %conv156 to ptr
  %conv159 = trunc i64 %64 to i32
  br i1 %tobool157.not, label %if.end8.i.i, label %if.else164

if.end8.i.i:                                      ; preds = %if.then149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv159)
  %cmp9.i.i = icmp slt i32 %conv159, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end8.i.i
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.do.end_crit_edge, label %if.then27.i.i, !prof !189

land.rhs16.i.i.do.end_crit_edge:                  ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %do.end

if.then.i.i.i:                                    ; preds = %if.end8.i.i
  tail call void @__check_object_size(ptr noundef %147, i32 noundef %conv159, i1 noundef zeroext false) #12
  tail call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 156) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %153 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %152, i32 %conv159, i32 -1226833920) #18, !srcloc !191
  %asmresult.i.i = extractvalue { i32, i32 } %153, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !189

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %147, i32 noundef %conv159) #12
  %154 = tail call i32 @llvm.read_register.i32(metadata !176) #12
  %and.i.i.i.i.i.i = and i32 %154, -16384
  %155 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %155, i32 0, i32 4
  %156 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !192
  %and.i.i.i.i = and i32 %156, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #12, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !194
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %147, ptr noundef %152, i32 noundef %conv159) #12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %156) #12, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !194
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %conv159, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %conv159, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.for.inc_crit_edge, label %if.then11.i.i, !prof !189

if.end.i.i.for.inc_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv152.le = trunc i64 %146 to i32
  %157 = inttoptr i32 %conv152.le to ptr
  %conv159.le = trunc i64 %64 to i32
  %sub.i.i = sub i32 %conv159.le, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %157, i32 %sub.i.i
  %158 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %do.end

if.else164:                                       ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #14
  %159 = call ptr @memcpy(ptr %147, ptr %152, i32 %conv159)
  br label %for.inc

for.inc:                                          ; preds = %if.else164, %if.end.i.i.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %if.end143.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %rlen.3 = phi i64 [ %rlen.0425, %for.body.for.inc_crit_edge ], [ %rlen.2, %land.lhs.true.for.inc_crit_edge ], [ %rlen.2, %if.end143.for.inc_crit_edge ], [ %rlen.2, %if.end.i.i.for.inc_crit_edge ], [ %rlen.2, %if.else164 ]
  %args.3 = phi i32 [ %args.0426, %for.body.for.inc_crit_edge ], [ %args.2, %land.lhs.true.for.inc_crit_edge ], [ %args.2, %if.end143.for.inc_crit_edge ], [ %args.2, %if.end.i.i.for.inc_crit_edge ], [ %args.2, %if.else164 ]
  %inc = add nuw nsw i32 %oix.0422, 1
  %160 = ptrtoint ptr %nbufs.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %nbufs.i, align 4
  %cmp = icmp slt i32 %inc, %161
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.cond173.preheader_crit_edge

for.inc.for.cond173.preheader_crit_edge:          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond173.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body177:                                      ; preds = %for.body177.for.body177_crit_edge, %for.body177.lr.ph
  %i.0428 = phi i32 [ %.lcssa, %for.body177.lr.ph ], [ %inc208, %for.body177.for.body177_crit_edge ]
  %162 = ptrtoint ptr %args178 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %args178, align 8
  %arrayidx179 = getelementptr %struct.fastrpc_invoke_args, ptr %163, i32 %i.0428
  %164 = ptrtoint ptr %arrayidx179 to i32
  call void @__asan_load8_noabort(i32 %164)
  %165 = load i64, ptr %arrayidx179, align 8
  %arrayidx181 = getelementptr %struct.fastrpc_remote_arg, ptr %48, i32 %i.0428
  %166 = ptrtoint ptr %arrayidx181 to i32
  call void @__asan_store8_noabort(i32 %166)
  store i64 %165, ptr %arrayidx181, align 8
  %167 = load ptr, ptr %args178, align 8
  %length185 = getelementptr %struct.fastrpc_invoke_args, ptr %167, i32 %i.0428, i32 1
  %168 = ptrtoint ptr %length185 to i32
  call void @__asan_load8_noabort(i32 %168)
  %169 = load i64, ptr %length185, align 8
  %len187 = getelementptr %struct.fastrpc_remote_arg, ptr %48, i32 %i.0428, i32 1
  %170 = ptrtoint ptr %len187 to i32
  call void @__asan_store8_noabort(i32 %170)
  store i64 %169, ptr %len187, align 8
  %171 = load ptr, ptr %args178, align 8
  %length190 = getelementptr %struct.fastrpc_invoke_args, ptr %171, i32 %i.0428, i32 1
  %172 = ptrtoint ptr %length190 to i32
  call void @__asan_load8_noabort(i32 %172)
  %173 = load i64, ptr %length190, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %173)
  %tobool191.not = icmp ne i64 %173, 0
  %cond192 = zext i1 %tobool191.not to i32
  %arrayidx193 = getelementptr %struct.fastrpc_invoke_buf, ptr %add.ptr, i32 %i.0428
  %174 = ptrtoint ptr %arrayidx193 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %cond192, ptr %arrayidx193, align 4
  %pgidx196 = getelementptr inbounds %struct.fastrpc_invoke_buf, ptr %arrayidx193, i32 0, i32 1
  %175 = ptrtoint ptr %pgidx196 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %i.0428, ptr %pgidx196, align 4
  %176 = ptrtoint ptr %maps197 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %maps197, align 8
  %arrayidx198 = getelementptr ptr, ptr %177, i32 %i.0428
  %178 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %arrayidx198, align 4
  %phys199 = getelementptr inbounds %struct.fastrpc_map, ptr %179, i32 0, i32 6
  %180 = ptrtoint ptr %phys199 to i32
  call void @__asan_load8_noabort(i32 %180)
  %181 = load i64, ptr %phys199, align 8
  %arrayidx200 = getelementptr %struct.fastrpc_phy_page, ptr %add.ptr16, i32 %i.0428
  %182 = ptrtoint ptr %arrayidx200 to i32
  call void @__asan_store8_noabort(i32 %182)
  store i64 %181, ptr %arrayidx200, align 8
  %183 = load ptr, ptr %maps197, align 8
  %arrayidx203 = getelementptr ptr, ptr %183, i32 %i.0428
  %184 = ptrtoint ptr %arrayidx203 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %arrayidx203, align 4
  %size204 = getelementptr inbounds %struct.fastrpc_map, ptr %185, i32 0, i32 7
  %186 = ptrtoint ptr %size204 to i32
  call void @__asan_load8_noabort(i32 %186)
  %187 = load i64, ptr %size204, align 8
  %size206 = getelementptr inbounds %struct.fastrpc_phy_page, ptr %arrayidx200, i32 0, i32 1
  %188 = ptrtoint ptr %size206 to i32
  call void @__asan_store8_noabort(i32 %188)
  store i64 %187, ptr %size206, align 8
  %inc208 = add nsw i32 %i.0428, 1
  %189 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %ctx, align 8
  %cmp175 = icmp slt i32 %inc208, %190
  br i1 %cmp175, label %for.body177.for.body177_crit_edge, label %for.body177.cleanup213_crit_edge

for.body177.cleanup213_crit_edge:                 ; preds = %for.body177
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup213

for.body177.for.body177_crit_edge:                ; preds = %for.body177
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body177

do.end:                                           ; preds = %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.40, i32 noundef -14) #15
  br label %cleanup213

cleanup213:                                       ; preds = %do.end, %for.body177.cleanup213_crit_edge, %if.end93.cleanup213_crit_edge, %for.cond173.preheader.cleanup213_crit_edge, %if.end.cleanup213_crit_edge, %do.end.i, %for.body.i376.cleanup213_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end.cleanup213_crit_edge ], [ -14, %do.end ], [ -22, %do.end.i ], [ 0, %for.cond173.preheader.cleanup213_crit_edge ], [ 0, %for.body177.cleanup213_crit_edge ], [ 0, %if.end93.cleanup213_crit_edge ], [ -22, %for.body.i376.cleanup213_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fastrpc_put_args(ptr nocapture noundef readonly %ctx, i32 noundef %kernel) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rpra1 = getelementptr inbounds %struct.fastrpc_invoke_ctx, ptr %ctx, i32 0, i32 15
  %0 = ptrtoint ptr %rpra1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rpra1, align 4
  %sc = getelementptr inbounds %struct.fastrpc_invoke_ctx, ptr %ctx, i32 0, i32 5
  %2 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sc, align 4
  %shr = lshr i32 %3, 16
  %and = and i32 %shr, 255
  %nbufs = getelementptr inbounds %struct.fastrpc_invoke_ctx, ptr %ctx, i32 0, i32 1
  %4 = ptrtoint ptr %nbufs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nbufs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %5)
  %cmp39 = icmp slt i32 %and, %5
  br i1 %cmp39, label %for.body.lr.ph, label %entry.cleanup17_crit_edge

entry.cleanup17_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup17

for.body.lr.ph:                                   ; preds = %entry
  %maps = getelementptr inbounds %struct.fastrpc_invoke_ctx, ptr %ctx, i32 0, i32 16
  %args = getelementptr inbounds %struct.fastrpc_invoke_ctx, ptr %ctx, i32 0, i32 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %kernel)
  %tobool7.not = icmp eq i32 %kernel, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.040 = phi i32 [ %and, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %maps to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %maps, align 8
  %arrayidx = getelementptr ptr, ptr %7, i32 %i.040
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %for.body
  %arrayidx2 = getelementptr %struct.fastrpc_remote_arg, ptr %1, i32 %i.040
  %10 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx2, align 8
  %conv = trunc i64 %11 to i32
  %12 = inttoptr i32 %conv to ptr
  %13 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %args, align 8
  %arrayidx3 = getelementptr %struct.fastrpc_invoke_args, ptr %14, i32 %i.040
  %15 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %arrayidx3, align 8
  %conv4 = trunc i64 %16 to i32
  %17 = inttoptr i32 %conv4 to ptr
  %len6 = getelementptr %struct.fastrpc_remote_arg, ptr %1, i32 %i.040, i32 1
  %18 = ptrtoint ptr %len6 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %len6, align 8
  %conv9 = trunc i64 %19 to i32
  br i1 %tobool7.not, label %if.end8.i.i, label %if.else

if.end8.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv9)
  %cmp9.i.i = icmp slt i32 %conv9, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end8.i.i
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.cleanup17_crit_edge, label %if.then27.i.i, !prof !189

land.rhs16.i.i.cleanup17_crit_edge:               ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup17

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %cleanup17

if.then.i.i.i:                                    ; preds = %if.end8.i.i
  tail call void @__check_object_size(ptr noundef %12, i32 noundef %conv9, i1 noundef zeroext true) #12
  tail call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 174) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %20 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %17, i32 %conv9, i32 -1226833920) #18, !srcloc !201
  %asmresult.i.i = extractvalue { i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %12, i32 noundef %conv9) #12
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %17, ptr noundef %12, i32 noundef %conv9) #12
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %conv9, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %conv9, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool10.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool10.not, label %copy_to_user.exit.for.inc_crit_edge, label %copy_to_user.exit.cleanup17_crit_edge

copy_to_user.exit.cleanup17_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup17

copy_to_user.exit.for.inc_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %21 = call ptr @memcpy(ptr %17, ptr %12, i32 %conv9)
  br label %for.inc

for.inc:                                          ; preds = %if.else, %copy_to_user.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.040, 1
  %22 = ptrtoint ptr %nbufs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nbufs, align 4
  %cmp = icmp slt i32 %inc, %23
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup17_crit_edge

for.inc.cleanup17_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup17

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup17:                                        ; preds = %for.inc.cleanup17_crit_edge, %copy_to_user.exit.cleanup17_crit_edge, %if.then27.i.i, %land.rhs16.i.i.cleanup17_crit_edge, %entry.cleanup17_crit_edge
  %retval.3 = phi i32 [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup17_crit_edge ], [ 0, %entry.cleanup17_crit_edge ], [ -14, %copy_to_user.exit.cleanup17_crit_edge ], [ 0, %for.inc.cleanup17_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fastrpc_context_put(ptr noundef %ctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %refcount = getelementptr inbounds %struct.fastrpc_invoke_ctx, ptr %ctx, i32 0, i32 9
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !187
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #12, !srcloc !188
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !189

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #12
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !190
  %cctx1.i = getelementptr %struct.fastrpc_invoke_ctx, ptr %ctx, i32 0, i32 20
  %1 = ptrtoint ptr %cctx1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cctx1.i, align 8
  %3 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ctx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp26.i = icmp sgt i32 %4, 0
  br i1 %cmp26.i, label %for.body.lr.ph.i, label %if.then.i.for.end.i_crit_edge

if.then.i.for.end.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.then.i
  %maps.i = getelementptr %struct.fastrpc_invoke_ctx, ptr %ctx, i32 0, i32 16
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.027.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %5 = ptrtoint ptr %maps.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %maps.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %6, i32 %i.027.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  tail call fastcc void @fastrpc_map_put(ptr noundef %8) #12
  %inc.i = add nuw nsw i32 %i.027.i, 1
  %9 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ctx, align 8
  %cmp.i = icmp slt i32 %inc.i, %10
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.then.i.for.end.i_crit_edge
  %buf.i = getelementptr %struct.fastrpc_invoke_ctx, ptr %ctx, i32 0, i32 17
  %11 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buf.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %for.end.i.do.body3.i_crit_edge, label %if.then.i1

for.end.i.do.body3.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body3.i

if.then.i1:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i.i = getelementptr inbounds %struct.fastrpc_buf, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i.i, align 8
  %size.i.i = getelementptr inbounds %struct.fastrpc_buf, ptr %12, i32 0, i32 5
  %15 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %size.i.i, align 8
  %conv.i.i = trunc i64 %16 to i32
  %virt.i.i = getelementptr inbounds %struct.fastrpc_buf, ptr %12, i32 0, i32 3
  %17 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %virt.i.i, align 4
  %phys.i.i = getelementptr inbounds %struct.fastrpc_buf, ptr %12, i32 0, i32 4
  %19 = ptrtoint ptr %phys.i.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %phys.i.i, align 8
  %conv1.i.i = trunc i64 %20 to i32
  tail call void @dma_free_attrs(ptr noundef %14, i32 noundef %conv.i.i, ptr noundef %18, i32 noundef %conv1.i.i, i32 noundef 0) #12
  tail call void @kfree(ptr noundef nonnull %12) #12
  br label %do.body3.i

do.body3.i:                                       ; preds = %if.then.i1, %for.end.i.do.body3.i_crit_edge
  %lock.i = getelementptr inbounds %struct.fastrpc_channel_ctx, ptr %2, i32 0, i32 4
  %call6.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %ctx_idr.i = getelementptr inbounds %struct.fastrpc_channel_ctx, ptr %2, i32 0, i32 5
  %ctxid.i = getelementptr %struct.fastrpc_invoke_ctx, ptr %ctx, i32 0, i32 7
  %21 = ptrtoint ptr %ctxid.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %ctxid.i, align 8
  %shr.i = lshr i64 %22, 4
  %conv9.i = trunc i64 %shr.i to i32
  %call10.i = tail call ptr @idr_remove(ptr noundef %ctx_idr.i, i32 noundef %conv9.i) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call6.i) #12
  %maps12.i = getelementptr %struct.fastrpc_invoke_ctx, ptr %ctx, i32 0, i32 16
  %23 = ptrtoint ptr %maps12.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %maps12.i, align 8
  tail call void @kfree(ptr noundef %24) #12
  %olaps.i = getelementptr %struct.fastrpc_invoke_ctx, ptr %ctx, i32 0, i32 19
  %25 = ptrtoint ptr %olaps.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %olaps.i, align 4
  tail call void @kfree(ptr noundef %26) #12
  tail call void @kfree(ptr noundef %ctx) #12
  %refcount.i.i = getelementptr inbounds %struct.fastrpc_channel_ctx, ptr %2, i32 0, i32 8
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !187
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #12
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #12, !srcloc !188
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !189

if.end5.i.i.i.i.i.i.kref_put.exit_crit_edge:      ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kref_put.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #12
  br label %kref_put.exit

if.then.i.i.i:                                    ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !190
  tail call void @kfree(ptr noundef %2) #12
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.kref_put.exit_crit_edge, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fastrpc_context_put_wq(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -116
  tail call fastcc void @fastrpc_context_put(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc_cyclic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @olaps_cmp(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %a, align 8
  %2 = ptrtoint ptr %b to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %b, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %3)
  %cmp = icmp eq i64 %1, %3
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %3)
  %cmp4 = icmp ult i64 %1, %3
  %cond = select i1 %cmp4, i32 -1, i32 1
  %end = getelementptr inbounds %struct.fastrpc_buf_overlap, ptr %b, i32 0, i32 1
  %4 = ptrtoint ptr %end to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %end, align 8
  %end6 = getelementptr inbounds %struct.fastrpc_buf_overlap, ptr %a, i32 0, i32 1
  %6 = ptrtoint ptr %end6 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %end6, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %7)
  %cmp7 = icmp eq i64 %5, %7
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %7)
  %cmp12 = icmp ult i64 %5, %7
  %cond13 = select i1 %cmp12, i32 -1, i32 1
  %cond15 = select i1 %cmp7, i32 0, i32 %cond13
  %cond20 = select i1 %cmp, i32 %cond15, i32 %cond
  ret i32 %cond20
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fastrpc_buf_alloc(ptr noundef %fl, ptr noundef %dev, i64 noundef %size, ptr nocapture noundef writeonly %obuf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 144) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %attachments = getelementptr inbounds %struct.fastrpc_buf, ptr %call7.i.i, i32 0, i32 7
  %1 = ptrtoint ptr %attachments to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %attachments, ptr %attachments, align 4
  %prev.i = getelementptr inbounds %struct.fastrpc_buf, ptr %call7.i.i, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %attachments, ptr %prev.i, align 8
  %node = getelementptr inbounds %struct.fastrpc_buf, ptr %call7.i.i, i32 0, i32 8
  %3 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %node, ptr %node, align 4
  %prev.i45 = getelementptr inbounds %struct.fastrpc_buf, ptr %call7.i.i, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %prev.i45 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %node, ptr %prev.i45, align 8
  %lock = getelementptr inbounds %struct.fastrpc_buf, ptr %call7.i.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.46, ptr noundef nonnull @fastrpc_buf_alloc.__key) #12
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %fl, ptr %call7.i.i, align 8
  %virt = getelementptr inbounds %struct.fastrpc_buf, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %virt to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %virt, align 4
  %phys = getelementptr inbounds %struct.fastrpc_buf, ptr %call7.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %phys to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 0, ptr %phys, align 8
  %size2 = getelementptr inbounds %struct.fastrpc_buf, ptr %call7.i.i, i32 0, i32 5
  %8 = ptrtoint ptr %size2 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %size, ptr %size2, align 8
  %dev3 = getelementptr inbounds %struct.fastrpc_buf, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev, ptr %dev3, align 8
  %raddr = getelementptr inbounds %struct.fastrpc_buf, ptr %call7.i.i, i32 0, i32 9
  %10 = ptrtoint ptr %raddr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %raddr, align 4
  %conv = trunc i64 %size to i32
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %conv, ptr noundef %phys, i32 noundef 3264, i32 noundef 0) #12
  %11 = ptrtoint ptr %virt to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %virt, align 4
  %tobool9.not = icmp eq ptr %call.i, null
  br i1 %tobool9.not, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_destroy(ptr noundef %lock) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %sctx = getelementptr inbounds %struct.fastrpc_user, ptr %fl, i32 0, i32 5
  %12 = ptrtoint ptr %sctx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sctx, align 4
  %tobool13.not = icmp eq ptr %13, null
  br i1 %tobool13.not, label %if.end12.if.end21_crit_edge, label %land.lhs.true

if.end12.if.end21_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

land.lhs.true:                                    ; preds = %if.end12
  %sid = getelementptr inbounds %struct.fastrpc_session_ctx, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %sid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool15.not = icmp eq i32 %15, 0
  br i1 %tobool15.not, label %land.lhs.true.if.end21_crit_edge, label %if.then16

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %conv1944 = zext i32 %15 to i64
  %shl = shl nuw i64 %conv1944, 32
  %16 = ptrtoint ptr %phys to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %phys, align 8
  %add = add i64 %17, %shl
  store i64 %add, ptr %phys, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %land.lhs.true.if.end21_crit_edge, %if.end12.if.end21_crit_edge
  %18 = ptrtoint ptr %obuf to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i, ptr %obuf, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end21 ], [ -12, %if.then10 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vma(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fastrpc_map_create(ptr noundef %fl, i32 noundef %fd, i64 noundef %len, ptr nocapture noundef writeonly %ppmap) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sctx = getelementptr inbounds %struct.fastrpc_user, ptr %fl, i32 0, i32 5
  %0 = ptrtoint ptr %sctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sctx, align 4
  %mutex.i = getelementptr inbounds %struct.fastrpc_user, ptr %fl, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #12
  %maps.i = getelementptr inbounds %struct.fastrpc_user, ptr %fl, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %map.0.in.i = phi ptr [ %maps.i, %entry ], [ %map.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %map.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %map.0.i = load ptr, ptr %map.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %map.0.i, %maps.i
  br i1 %cmp.not.i, label %if.end, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %fd2.i = getelementptr inbounds %struct.fastrpc_map, ptr %map.0.i, i32 0, i32 2
  %3 = ptrtoint ptr %fd2.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fd2.i, align 4
  %cmp3.i = icmp eq i32 %4, %fd
  br i1 %cmp3.i, label %if.then.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

if.then.i:                                        ; preds = %for.body.i
  %tobool.not.i.i = icmp eq ptr %map.0.i, null
  br i1 %tobool.not.i.i, label %if.then.i.fastrpc_map_find.exit.thread_crit_edge, label %if.then.i.i

if.then.i.fastrpc_map_find.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fastrpc_map_find.exit.thread

if.then.i.i:                                      ; preds = %if.then.i
  %refcount.i.i = getelementptr inbounds %struct.fastrpc_map, ptr %map.0.i, i32 0, i32 10
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #12
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #12, !srcloc !195
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !196

if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %6 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %.not.i.i.i.i.i.i = icmp sgt i32 %6, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.fastrpc_map_find.exit.thread_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !189

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.fastrpc_map_find.exit.thread_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fastrpc_map_find.exit.thread

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef %.sink.i.i.i.i.i.i) #12
  br label %fastrpc_map_find.exit.thread

fastrpc_map_find.exit.thread:                     ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.fastrpc_map_find.exit.thread_crit_edge, %if.then.i.fastrpc_map_find.exit.thread_crit_edge
  %7 = ptrtoint ptr %ppmap to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %map.0.i, ptr %ppmap, align 4
  tail call void @mutex_unlock(ptr noundef %mutex.i) #12
  br label %cleanup

if.end:                                           ; preds = %for.cond.i
  tail call void @mutex_unlock(ptr noundef %mutex.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 72) #17
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %fl5 = getelementptr inbounds %struct.fastrpc_map, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %fl5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %fl, ptr %fl5, align 8
  %fd6 = getelementptr inbounds %struct.fastrpc_map, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %fd6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %fd, ptr %fd6, align 4
  %call7 = tail call ptr @dma_buf_get(i32 noundef %fd) #12
  %buf = getelementptr inbounds %struct.fastrpc_map, ptr %call7.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7, ptr %buf, align 8
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end4.get_err_crit_edge, label %if.end13

if.end4.get_err_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_err

if.end13:                                         ; preds = %if.end4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %call15 = tail call ptr @dma_buf_attach(ptr noundef %call7, ptr noundef %15) #12
  %attach = getelementptr inbounds %struct.fastrpc_map, ptr %call7.i.i, i32 0, i32 5
  %16 = ptrtoint ptr %attach to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call15, ptr %attach, align 8
  %cmp.i87 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i87, label %do.end, label %if.end22

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.44) #15
  %19 = ptrtoint ptr %attach to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %attach, align 8
  br label %attach_err

if.end22:                                         ; preds = %if.end13
  %call24 = tail call ptr @dma_buf_map_attachment(ptr noundef %call15, i32 noundef 0) #12
  %table = getelementptr inbounds %struct.fastrpc_map, ptr %call7.i.i, i32 0, i32 4
  %21 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call24, ptr %table, align 4
  %cmp.i88 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i88, label %if.then27, label %if.end30

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %buf, align 8
  %24 = ptrtoint ptr %attach to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %attach, align 8
  tail call void @dma_buf_detach(ptr noundef %23, ptr noundef %25) #12
  br label %attach_err

if.end30:                                         ; preds = %if.end22
  %26 = ptrtoint ptr %call24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call24, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dma_address, align 4
  %conv = zext i32 %29 to i64
  %phys = getelementptr inbounds %struct.fastrpc_map, ptr %call7.i.i, i32 0, i32 6
  %30 = ptrtoint ptr %phys to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %conv, ptr %phys, align 8
  %31 = ptrtoint ptr %sctx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sctx, align 4
  %sid = getelementptr inbounds %struct.fastrpc_session_ctx, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %sid to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sid, align 4
  %conv3385 = zext i32 %34 to i64
  %shl = shl nuw i64 %conv3385, 32
  %add = or i64 %shl, %conv
  store i64 %add, ptr %phys, align 8
  %size = getelementptr inbounds %struct.fastrpc_map, ptr %call7.i.i, i32 0, i32 7
  %35 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %len, ptr %size, align 8
  %36 = load ptr, ptr %call24, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  %and.i.i.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_virt.exit, label %do.body2.i.i, !prof !189

do.body2.i.i:                                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #12, !srcloc !202
  unreachable

sg_virt.exit:                                     ; preds = %if.end30
  %and.i.i = and i32 %38, -4
  %39 = inttoptr i32 %and.i.i to ptr
  %call1.i = tail call ptr @page_address(ptr noundef %39) #12
  %offset.i = getelementptr inbounds %struct.scatterlist, ptr %36, i32 0, i32 1
  %40 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call1.i, i32 %41
  %va = getelementptr inbounds %struct.fastrpc_map, ptr %call7.i.i, i32 0, i32 8
  %42 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %add.ptr.i, ptr %va, align 8
  %len38 = getelementptr inbounds %struct.fastrpc_map, ptr %call7.i.i, i32 0, i32 9
  %43 = ptrtoint ptr %len38 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %len, ptr %len38, align 8
  %refcount = getelementptr inbounds %struct.fastrpc_map, ptr %call7.i.i, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #12
  %44 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile i32 1, ptr %refcount, align 8
  %lock = getelementptr inbounds %struct.fastrpc_user, ptr %fl, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  %prev.i89 = getelementptr inbounds %struct.fastrpc_user, ptr %fl, i32 0, i32 1, i32 1
  %45 = ptrtoint ptr %prev.i89 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i89, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %46, ptr noundef %maps.i) #12
  br i1 %call.i.i, label %if.end.i.i, label %sg_virt.exit.list_add_tail.exit_crit_edge

sg_virt.exit.list_add_tail.exit_crit_edge:        ; preds = %sg_virt.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %sg_virt.exit
  call void @__sanitizer_cov_trace_pc() #14
  %47 = ptrtoint ptr %prev.i89 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call7.i.i, ptr %prev.i89, align 4
  %48 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %maps.i, ptr %call7.i.i, align 8
  %49 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %call7.i.i, ptr %46, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %sg_virt.exit.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  %51 = ptrtoint ptr %ppmap to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call7.i.i, ptr %ppmap, align 4
  br label %cleanup

attach_err:                                       ; preds = %if.then27, %do.end
  %err.0.in = phi ptr [ %20, %do.end ], [ %call24, %if.then27 ]
  %52 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %buf, align 8
  tail call void @dma_buf_put(ptr noundef %53) #12
  br label %get_err

get_err:                                          ; preds = %attach_err, %if.end4.get_err_crit_edge
  %err.1.in = phi ptr [ %err.0.in, %attach_err ], [ %call7, %if.end4.get_err_crit_edge ]
  %err.1 = ptrtoint ptr %err.1.in to i32
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %get_err, %list_add_tail.exit, %if.end.cleanup_crit_edge, %fastrpc_map_find.exit.thread
  %retval.0 = phi i32 [ %err.1, %get_err ], [ 0, %list_add_tail.exit ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %fastrpc_map_find.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_buf_get(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_buf_attach(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_buf_map_attachment(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_buf_detach(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_buf_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpmsg_send(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fastrpc_map_put(ptr noundef %map) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %map, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %refcount = getelementptr inbounds %struct.fastrpc_map, ptr %map, i32 0, i32 10
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !187
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #12, !srcloc !188
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !189

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #12
  br label %if.end

if.then.i:                                        ; preds = %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !190
  %table.i = getelementptr %struct.fastrpc_map, ptr %map, i32 0, i32 4
  %1 = ptrtoint ptr %table.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %table.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.then.i.fastrpc_free_map.exit_crit_edge, label %if.then.i2

if.then.i.fastrpc_free_map.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fastrpc_free_map.exit

if.then.i2:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %attach.i = getelementptr %struct.fastrpc_map, ptr %map, i32 0, i32 5
  %3 = ptrtoint ptr %attach.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %attach.i, align 8
  tail call void @dma_buf_unmap_attachment(ptr noundef %4, ptr noundef nonnull %2, i32 noundef 0) #12
  %buf.i = getelementptr %struct.fastrpc_map, ptr %map, i32 0, i32 3
  %5 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buf.i, align 8
  %7 = ptrtoint ptr %attach.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %attach.i, align 8
  tail call void @dma_buf_detach(ptr noundef %6, ptr noundef %8) #12
  %9 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %buf.i, align 8
  tail call void @dma_buf_put(ptr noundef %10) #12
  br label %fastrpc_free_map.exit

fastrpc_free_map.exit:                            ; preds = %if.then.i2, %if.then.i.fastrpc_free_map.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %map) #12
  br label %if.end

if.end:                                           ; preds = %fastrpc_free_map.exit, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fastrpc_buf_free(ptr noundef %buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.fastrpc_buf, ptr %buf, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %size = getelementptr inbounds %struct.fastrpc_buf, ptr %buf, i32 0, i32 5
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %size, align 8
  %conv = trunc i64 %3 to i32
  %virt = getelementptr inbounds %struct.fastrpc_buf, ptr %buf, i32 0, i32 3
  %4 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %virt, align 4
  %phys = getelementptr inbounds %struct.fastrpc_buf, ptr %buf, i32 0, i32 4
  %6 = ptrtoint ptr %phys to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %phys, align 8
  %conv1 = trunc i64 %7 to i32
  tail call void @dma_free_attrs(ptr noundef %1, i32 noundef %conv, ptr noundef %5, i32 noundef %conv1, i32 noundef 0) #12
  tail call void @kfree(ptr noundef %buf) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_buf_unmap_attachment(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_buf_export(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_buf_fd(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fastrpc_dma_buf_attach(ptr nocapture noundef readonly %dmabuf, ptr nocapture noundef %attachment) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dma_buf, ptr %dmabuf, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 24) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.fastrpc_buf, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  %sgt = getelementptr inbounds %struct.fastrpc_dma_buf_attachment, ptr %call7.i.i, i32 0, i32 1
  %virt = getelementptr inbounds %struct.fastrpc_buf, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %virt, align 4
  %phys = getelementptr inbounds %struct.fastrpc_buf, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %phys to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %phys, align 8
  %conv = trunc i64 %8 to i32
  %size = getelementptr inbounds %struct.fastrpc_buf, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %size, align 8
  %conv1 = trunc i64 %10 to i32
  %call2 = tail call i32 @dma_get_sgtable_attrs(ptr noundef %4, ptr noundef %sgt, ptr noundef %6, i32 noundef %conv, i32 noundef %conv1, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.47) #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %dev7 = getelementptr inbounds %struct.dma_buf_attachment, ptr %attachment, i32 0, i32 1
  %13 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev7, align 4
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %call7.i.i, align 8
  %node = getelementptr inbounds %struct.fastrpc_dma_buf_attachment, ptr %call7.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %node, ptr %node, align 8
  %prev.i = getelementptr inbounds %struct.fastrpc_dma_buf_attachment, ptr %call7.i.i, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %node, ptr %prev.i, align 4
  %priv9 = getelementptr inbounds %struct.dma_buf_attachment, ptr %attachment, i32 0, i32 8
  %18 = ptrtoint ptr %priv9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i, ptr %priv9, align 4
  %lock = getelementptr inbounds %struct.fastrpc_buf, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %attachments = getelementptr inbounds %struct.fastrpc_buf, ptr %1, i32 0, i32 7
  %19 = ptrtoint ptr %attachments to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %attachments, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %attachments, ptr noundef %20) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end6.list_add.exit_crit_edge

if.end6.list_add.exit_crit_edge:                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %node, ptr %prev1.i.i, align 4
  %22 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %20, ptr %node, align 8
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %attachments, ptr %prev.i, align 4
  %24 = ptrtoint ptr %attachments to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %node, ptr %attachments, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end6.list_add.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #12
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %list_add.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fastrpc_dma_buf_detatch(ptr nocapture noundef readonly %dmabuf, ptr nocapture noundef readonly %attachment) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dma_buf_attachment, ptr %attachment, i32 0, i32 8
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %priv1 = getelementptr inbounds %struct.dma_buf, ptr %dmabuf, i32 0, i32 12
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 4
  %lock = getelementptr inbounds %struct.fastrpc_buf, ptr %3, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %node = getelementptr inbounds %struct.fastrpc_dma_buf_attachment, ptr %1, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.fastrpc_dma_buf_attachment, ptr %1, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %10 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %node, align 4
  %prev.i = getelementptr inbounds %struct.fastrpc_dma_buf_attachment, ptr %1, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #12
  %sgt = getelementptr inbounds %struct.fastrpc_dma_buf_attachment, ptr %1, i32 0, i32 1
  tail call void @sg_free_table(ptr noundef %sgt) #12
  tail call void @kfree(ptr noundef %1) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @fastrpc_map_dma_buf(ptr nocapture noundef readonly %attachment, i32 noundef %dir) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dma_buf_attachment, ptr %attachment, i32 0, i32 8
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %sgt = getelementptr inbounds %struct.fastrpc_dma_buf_attachment, ptr %1, i32 0, i32 1
  %dev = getelementptr inbounds %struct.dma_buf_attachment, ptr %attachment, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call = tail call i32 @dma_map_sgtable(ptr noundef %3, ptr noundef %sgt, i32 noundef %dir, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %4 = inttoptr i32 %call to ptr
  %spec.select = select i1 %tobool.not, ptr %sgt, ptr %4
  ret ptr %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fastrpc_unmap_dma_buf(ptr nocapture noundef readonly %attach, ptr nocapture noundef readonly %table, i32 noundef %dir) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.dma_buf_attachment, ptr %attach, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %2 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %table, align 4
  %orig_nents.i = getelementptr inbounds %struct.sg_table, ptr %table, i32 0, i32 2
  %4 = ptrtoint ptr %orig_nents.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %orig_nents.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %1, ptr noundef %3, i32 noundef %5, i32 noundef %dir, i32 noundef 0) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fastrpc_release(ptr nocapture noundef readonly %dmabuf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dma_buf, ptr %dmabuf, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %dev.i = getelementptr inbounds %struct.fastrpc_buf, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 8
  %size.i = getelementptr inbounds %struct.fastrpc_buf, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %size.i, align 8
  %conv.i = trunc i64 %5 to i32
  %virt.i = getelementptr inbounds %struct.fastrpc_buf, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %virt.i, align 4
  %phys.i = getelementptr inbounds %struct.fastrpc_buf, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %phys.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %phys.i, align 8
  %conv1.i = trunc i64 %9 to i32
  tail call void @dma_free_attrs(ptr noundef %3, i32 noundef %conv.i, ptr noundef %7, i32 noundef %conv1.i, i32 noundef 0) #12
  tail call void @kfree(ptr noundef %1) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fastrpc_mmap(ptr nocapture noundef readonly %dmabuf, ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dma_buf, ptr %dmabuf, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %2 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vm_end, align 4
  %4 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vma, align 4
  %sub = sub i32 %3, %5
  %dev = getelementptr inbounds %struct.fastrpc_buf, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %virt = getelementptr inbounds %struct.fastrpc_buf, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %virt, align 4
  %phys = getelementptr inbounds %struct.fastrpc_buf, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %phys to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %phys, align 8
  %conv = trunc i64 %11 to i32
  %call = tail call i32 @dma_mmap_attrs(ptr noundef %7, ptr noundef %vma, ptr noundef %9, i32 noundef %conv, i32 noundef %sub, i32 noundef 0) #12
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fastrpc_vmap(ptr nocapture noundef readonly %dmabuf, ptr nocapture noundef writeonly %map) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dma_buf, ptr %dmabuf, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %virt = getelementptr inbounds %struct.fastrpc_buf, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %virt, align 4
  %4 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %map, align 4
  %is_iomem.i = getelementptr inbounds %struct.dma_buf_map, ptr %map, i32 0, i32 1
  %5 = ptrtoint ptr %is_iomem.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %is_iomem.i, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_get_sgtable_attrs(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sgtable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_mmap_attrs(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fastrpc_req_munmap_impl(ptr noundef %fl, ptr nocapture noundef readonly %req) unnamed_addr #0 align 64 {
entry:
  %args = alloca [1 x %struct.fastrpc_invoke_args], align 8
  %req_msg = alloca %struct.fastrpc_munmap_req_msg, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args) #12
  %0 = call ptr @memset(ptr %args, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %req_msg) #12
  %1 = call ptr @memset(ptr %req_msg, i32 255, i32 24)
  %sctx = getelementptr inbounds %struct.fastrpc_user, ptr %fl, i32 0, i32 5
  %2 = ptrtoint ptr %sctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sctx, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %lock = getelementptr inbounds %struct.fastrpc_user, ptr %fl, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  %mmaps = getelementptr inbounds %struct.fastrpc_user, ptr %fl, i32 0, i32 3
  %6 = ptrtoint ptr %mmaps to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmaps, align 4
  %cmp.not83 = icmp eq ptr %7, %mmaps
  br i1 %cmp.not83, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %8 = ptrtoint ptr %req to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %req, align 8
  %size10 = getelementptr inbounds %struct.fastrpc_req_munmap, ptr %req, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %.pn.in84 = phi ptr [ %7, %for.body.lr.ph ], [ %.pn85, %if.end.for.body_crit_edge ]
  %10 = ptrtoint ptr %.pn.in84 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn85 = load ptr, ptr %.pn.in84, align 4
  %raddr = getelementptr i8, ptr %.pn.in84, i32 8
  %11 = ptrtoint ptr %raddr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %raddr, align 4
  %conv = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %conv)
  %cmp8 = icmp eq i64 %9, %conv
  br i1 %cmp8, label %land.lhs.true, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %size = getelementptr i8, ptr %.pn.in84, i32 -108
  %13 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %size, align 8
  %15 = ptrtoint ptr %size10 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %size10, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %16)
  %cmp11 = icmp eq i64 %14, %16
  br i1 %cmp11, label %land.lhs.true.for.end_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %cmp.not = icmp eq ptr %.pn85, %mmaps
  br i1 %cmp.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %land.lhs.true.for.end_crit_edge, %entry.for.end_crit_edge
  %.pn.in.lcssa81 = phi ptr [ %mmaps, %entry.for.end_crit_edge ], [ %.pn.in84, %land.lhs.true.for.end_crit_edge ], [ %mmaps, %if.end.for.end_crit_edge ]
  %buf.0.le = getelementptr i8, ptr %.pn.in.lcssa81, i32 -132
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  %tobool.not = icmp eq ptr %buf.0.le, null
  br i1 %tobool.not, label %do.end, label %if.end20

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.61) #15
  br label %cleanup

if.end20:                                         ; preds = %for.end
  %tgid = getelementptr inbounds %struct.fastrpc_user, ptr %fl, i32 0, i32 7
  %17 = ptrtoint ptr %tgid to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tgid, align 4
  %19 = ptrtoint ptr %req_msg to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %req_msg, align 8
  %size21 = getelementptr i8, ptr %.pn.in.lcssa81, i32 -108
  %20 = ptrtoint ptr %size21 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %size21, align 8
  %size22 = getelementptr inbounds %struct.fastrpc_munmap_req_msg, ptr %req_msg, i32 0, i32 2
  %22 = ptrtoint ptr %size22 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %size22, align 8
  %raddr23 = getelementptr i8, ptr %.pn.in.lcssa81, i32 8
  %23 = ptrtoint ptr %raddr23 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %raddr23, align 4
  %conv24 = zext i32 %24 to i64
  %vaddr = getelementptr inbounds %struct.fastrpc_munmap_req_msg, ptr %req_msg, i32 0, i32 1
  %25 = ptrtoint ptr %vaddr to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %conv24, ptr %vaddr, align 8
  %26 = ptrtoint ptr %req_msg to i32
  %conv25 = zext i32 %26 to i64
  %27 = ptrtoint ptr %args to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %conv25, ptr %args, align 8
  %length = getelementptr inbounds %struct.fastrpc_invoke_args, ptr %args, i32 0, i32 1
  %28 = ptrtoint ptr %length to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 24, ptr %length, align 8
  %call = call fastcc i32 @fastrpc_internal_invoke(ptr noundef %fl, i32 noundef 1, i32 noundef 1, i32 noundef 83951616, ptr noundef nonnull %args)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool28.not = icmp eq i32 %call, 0
  br i1 %tobool28.not, label %do.body30, label %do.end47

do.body30:                                        ; preds = %if.end20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fastrpc_req_munmap_impl.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fastrpc_req_munmap_impl, %if.then37)) #12
          to label %do.end41 [label %if.then37], !srcloc !198

if.then37:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %raddr23 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %raddr23, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fastrpc_req_munmap_impl.__UNIQUE_ID_ddebug237, ptr noundef %5, ptr noundef nonnull @.str.63, i32 noundef %30) #12
  br label %do.end41

do.end41:                                         ; preds = %if.then37, %do.body30
  call void @_raw_spin_lock(ptr noundef %lock) #12
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in.lcssa81) #12
  br i1 %call.i.i, label %if.end.i.i, label %do.end41.list_del.exit_crit_edge

do.end41.list_del.exit_crit_edge:                 ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in.lcssa81, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i, align 4
  %33 = ptrtoint ptr %.pn.in.lcssa81 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %.pn.in.lcssa81, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev1.i.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %32, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.end41.list_del.exit_crit_edge
  %37 = ptrtoint ptr %.pn.in.lcssa81 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in.lcssa81, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in.lcssa81, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @_raw_spin_unlock(ptr noundef %lock) #12
  %dev.i = getelementptr i8, ptr %.pn.in.lcssa81, i32 -124
  %39 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i, align 8
  %41 = ptrtoint ptr %size21 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %size21, align 8
  %conv.i = trunc i64 %42 to i32
  %virt.i = getelementptr i8, ptr %.pn.in.lcssa81, i32 -120
  %43 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %virt.i, align 4
  %phys.i = getelementptr i8, ptr %.pn.in.lcssa81, i32 -116
  %45 = ptrtoint ptr %phys.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %phys.i, align 8
  %conv1.i = trunc i64 %46 to i32
  call void @dma_free_attrs(ptr noundef %40, i32 noundef %conv.i, ptr noundef %44, i32 noundef %conv1.i, i32 noundef 0) #12
  call void @kfree(ptr noundef nonnull %buf.0.le) #12
  br label %cleanup

do.end47:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %47 = ptrtoint ptr %raddr23 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %raddr23, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.65, i32 noundef %48) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end47, %list_del.exit, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call, %do.end47 ], [ 0, %list_del.exit ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %req_msg) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_platform_depopulate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_rpmsg_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 94)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 94)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nobuiltin }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind readnone }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !13, !14, !15, !17, !18, !19, !21, !23, !25, !27, !29, !30, !31, !32, !33, !34, !36, !37, !38, !39, !41, !43, !45, !47, !49, !51, !52, !53, !54, !56, !57, !58, !60, !62, !63, !65, !67, !69, !71, !73, !75, !77, !78, !80, !82, !84, !85, !86, !87, !88, !89, !90, !92, !93, !94, !96, !97, !99, !100, !102, !103, !104, !105, !107, !108, !109, !110, !112, !113, !114, !115, !117, !118, !120, !122, !123, !124, !125, !127, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !147, !148, !149, !150, !152, !153, !155, !156, !157, !159, !160, !162, !163, !165, !166, !167, !168, !170, !171, !173, !174, !175}
!llvm.named.register.sp = !{!176}
!llvm.module.flags = !{!177, !178, !179, !180, !181, !182, !183, !184}
!llvm.ident = !{!185}

!0 = !{ptr @__initcall__kmod_fastrpc__239_1769_fastrpc_init6, !1, !"__initcall__kmod_fastrpc__239_1769_fastrpc_init6", i1 false, i1 false}
!1 = !{!"../drivers/misc/fastrpc.c", i32 1769, i32 1}
!2 = !{ptr @__exitcall_fastrpc_exit, !3, !"__exitcall_fastrpc_exit", i1 false, i1 false}
!3 = !{!"../drivers/misc/fastrpc.c", i32 1776, i32 1}
!4 = !{ptr @__UNIQUE_ID_file240, !5, !"__UNIQUE_ID_file240", i1 false, i1 false}
!5 = !{!"../drivers/misc/fastrpc.c", i32 1778, i32 1}
!6 = !{ptr @__UNIQUE_ID_license241, !5, !"__UNIQUE_ID_license241", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_import_ns242, !8, !"__UNIQUE_ID_import_ns242", i1 false, i1 false}
!8 = !{!"../drivers/misc/fastrpc.c", i32 1779, i32 1}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/misc/fastrpc.c", i32 1756, i32 3}
!11 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @fastrpc_init._entry, !10, !"_entry", i1 false, i1 false}
!14 = !{ptr @fastrpc_init._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/misc/fastrpc.c", i32 1762, i32 3}
!17 = !{ptr @fastrpc_init._entry.3, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @fastrpc_init._entry_ptr.5, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/misc/fastrpc.c", i32 1612, i32 11}
!21 = !{ptr @fastrpc_cb_driver, !22, !"fastrpc_cb_driver", i1 false, i1 false}
!22 = !{!"../drivers/misc/fastrpc.c", i32 1608, i32 31}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/misc/fastrpc.c", i32 1551, i32 37}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/misc/fastrpc.c", i32 1560, i32 41}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/misc/fastrpc.c", i32 1561, i32 3}
!29 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @fastrpc_cb_probe._entry, !28, !"_entry", i1 false, i1 false}
!33 = !{ptr @fastrpc_cb_probe._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/misc/fastrpc.c", i32 1577, i32 3}
!36 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @fastrpc_cb_probe._entry.13, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @fastrpc_cb_probe._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @fastrpc_match_table, !40, !"fastrpc_match_table", i1 false, i1 false}
!40 = !{!"../drivers/misc/fastrpc.c", i32 1603, i32 34}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/misc/fastrpc.c", i32 1745, i32 11}
!43 = !{ptr @fastrpc_driver, !44, !"fastrpc_driver", i1 false, i1 false}
!44 = !{!"../drivers/misc/fastrpc.c", i32 1740, i32 28}
!45 = !{ptr @fastrpc_rpmsg_of_match, !46, !"fastrpc_rpmsg_of_match", i1 false, i1 false}
!46 = !{!"../drivers/misc/fastrpc.c", i32 1734, i32 34}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/misc/fastrpc.c", i32 1625, i32 47}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/misc/fastrpc.c", i32 1627, i32 3}
!51 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @fastrpc_rpmsg_probe._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @fastrpc_rpmsg_probe._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/misc/fastrpc.c", i32 1639, i32 3}
!56 = !{ptr @fastrpc_rpmsg_probe._entry.21, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @fastrpc_rpmsg_probe._entry_ptr.23, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/misc/fastrpc.c", i32 1648, i32 56}
!60 = !{ptr @fastrpc_rpmsg_probe.__key, !61, !"__key", i1 false, i1 false}
!61 = !{!"../drivers/misc/fastrpc.c", i32 1662, i32 2}
!62 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/misc/fastrpc.c", i32 83, i32 49}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/misc/fastrpc.c", i32 83, i32 57}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/misc/fastrpc.c", i32 84, i32 7}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/misc/fastrpc.c", i32 84, i32 15}
!71 = !{ptr @domains, !72, !"domains", i1 false, i1 false}
!72 = !{!"../drivers/misc/fastrpc.c", i32 83, i32 20}
!73 = !{ptr @fastrpc_fops, !74, !"fastrpc_fops", i1 false, i1 false}
!74 = !{!"../drivers/misc/fastrpc.c", i32 1531, i32 37}
!75 = distinct !{null, !76, !"__already_done", i1 false, i1 false}
!76 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!77 = !{ptr @.str.30, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.31, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!80 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!82 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/misc/fastrpc.c", i32 960, i32 3}
!84 = !{ptr @fastrpc_internal_invoke._rs, !83, !"_rs", i1 false, i1 false}
!85 = !{ptr @__func__.fastrpc_internal_invoke, !83, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @fastrpc_internal_invoke._entry, !83, !"_entry", i1 false, i1 false}
!89 = !{ptr @fastrpc_internal_invoke._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.36, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/misc/fastrpc.c", i32 1014, i32 3}
!92 = !{ptr @.str.37, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @fastrpc_internal_invoke.__UNIQUE_ID_ddebug234, !91, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!94 = !{ptr @fastrpc_context_alloc.__key, !95, !"__key", i1 false, i1 false}
!95 = !{!"../drivers/misc/fastrpc.c", i32 486, i32 2}
!96 = !{ptr @.str.38, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @init_completion.__key, !98, !"__key", i1 false, i1 false}
!98 = !{!"../include/linux/completion.h", i32 87, i32 2}
!99 = !{ptr @.str.39, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.40, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/misc/fastrpc.c", i32 883, i32 3}
!102 = !{ptr @.str.41, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @fastrpc_get_args._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @fastrpc_get_args._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.42, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/misc/fastrpc.c", i32 757, i32 4}
!107 = !{ptr @.str.43, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @fastrpc_create_maps._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @fastrpc_create_maps._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.44, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/misc/fastrpc.c", i32 644, i32 3}
!112 = !{ptr @.str.45, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @fastrpc_map_create._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @fastrpc_map_create._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @fastrpc_buf_alloc.__key, !116, !"__key", i1 false, i1 false}
!116 = !{!"../drivers/misc/fastrpc.c", i32 302, i32 2}
!117 = !{ptr @.str.46, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @fastrpc_dma_buf_ops, !119, !"fastrpc_dma_buf_ops", i1 false, i1 false}
!119 = !{!"../drivers/misc/fastrpc.c", i32 609, i32 33}
!120 = !{ptr @.str.47, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/misc/fastrpc.c", i32 561, i32 3}
!122 = !{ptr @.str.48, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @fastrpc_dma_buf_attach._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @fastrpc_dma_buf_attach._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.49, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/misc/fastrpc.c", i32 1425, i32 3}
!127 = !{ptr @.str.50, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @fastrpc_req_mmap._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @fastrpc_req_mmap._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.52, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/misc/fastrpc.c", i32 1430, i32 3}
!132 = !{ptr @fastrpc_req_mmap._entry.51, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @fastrpc_req_mmap._entry_ptr.53, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.55, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/misc/fastrpc.c", i32 1436, i32 3}
!136 = !{ptr @fastrpc_req_mmap._entry.54, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @fastrpc_req_mmap._entry_ptr.56, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.58, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/misc/fastrpc.c", i32 1461, i32 3}
!140 = !{ptr @fastrpc_req_mmap._entry.57, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @fastrpc_req_mmap._entry_ptr.59, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.60, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/misc/fastrpc.c", i32 1483, i32 2}
!144 = !{ptr @fastrpc_req_mmap.__UNIQUE_ID_ddebug238, !143, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!145 = !{ptr @.str.61, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/misc/fastrpc.c", i32 1371, i32 3}
!147 = !{ptr @.str.62, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @fastrpc_req_munmap_impl._entry, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @fastrpc_req_munmap_impl._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.63, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/misc/fastrpc.c", i32 1386, i32 3}
!152 = !{ptr @fastrpc_req_munmap_impl.__UNIQUE_ID_ddebug237, !151, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!153 = !{ptr @.str.65, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/misc/fastrpc.c", i32 1392, i32 3}
!155 = !{ptr @fastrpc_req_munmap_impl._entry.64, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @fastrpc_req_munmap_impl._entry_ptr.66, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @fastrpc_device_open.__key, !158, !"__key", i1 false, i1 false}
!158 = !{!"../drivers/misc/fastrpc.c", i32 1235, i32 2}
!159 = !{ptr @.str.67, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @fastrpc_device_open.__key.68, !161, !"__key", i1 false, i1 false}
!161 = !{!"../drivers/misc/fastrpc.c", i32 1236, i32 2}
!162 = !{ptr @.str.69, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @.str.70, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/misc/fastrpc.c", i32 1246, i32 3}
!165 = !{ptr @.str.71, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @fastrpc_device_open._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @fastrpc_device_open._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @xa_init_flags.__key, !169, !"__key", i1 false, i1 false}
!169 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!170 = !{ptr @.str.72, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.73, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/misc/fastrpc.c", i32 1717, i32 3}
!173 = !{ptr @.str.74, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @fastrpc_rpmsg_callback._entry, !172, !"_entry", i1 false, i1 false}
!175 = !{ptr @fastrpc_rpmsg_callback._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!176 = !{!"sp"}
!177 = !{i32 1, !"wchar_size", i32 2}
!178 = !{i32 1, !"min_enum_size", i32 4}
!179 = !{i32 8, !"branch-target-enforcement", i32 0}
!180 = !{i32 8, !"sign-return-address", i32 0}
!181 = !{i32 8, !"sign-return-address-all", i32 0}
!182 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!183 = !{i32 7, !"uwtable", i32 1}
!184 = !{i32 7, !"frame-pointer", i32 2}
!185 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!186 = !{!"auto-init"}
!187 = !{i64 2148620094}
!188 = !{i64 2148534534, i64 2148534566, i64 2148534595, i64 2148534629, i64 2148534660, i64 2148534683}
!189 = !{!"branch_weights", i32 2000, i32 1}
!190 = !{i64 2149654035}
!191 = !{i64 2153349343, i64 2153349368}
!192 = !{i64 5844898}
!193 = !{i64 5845095}
!194 = !{i64 2153330328}
!195 = !{i64 2148532069, i64 2148532101, i64 2148532130, i64 2148532164, i64 2148532195, i64 2148532218}
!196 = !{!"branch_weights", i32 1, i32 2000}
!197 = !{i8 0, i8 2}
!198 = !{i64 2148355137, i64 2148355142, i64 2148355155, i64 2148355199, i64 2148355233, i64 2148355254}
!199 = !{i64 2154189468}
!200 = !{i64 2154189580}
!201 = !{i64 2153350024, i64 2153350049}
!202 = !{i64 2153838807, i64 2153839299, i64 2153838844, i64 2153838900, i64 2153838934, i64 2153838958, i64 2153838999, i64 2153839020, i64 2153839048, i64 2153839082}
