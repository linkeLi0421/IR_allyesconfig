; ModuleID = '/llk/IR_all_yes/drivers/target/iscsi/cxgbit/cxgbit_target.c_pt.bc'
source_filename = "../drivers/target/iscsi/cxgbit/cxgbit_target.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.165 }
%union.anon.165 = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cxgbit_sock = type { %struct.cxgbit_sock_common, ptr, ptr, ptr, ptr, %struct.list_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i8, %struct.kref, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8 }
%struct.cxgbit_sock_common = type { ptr, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, %struct.cxgbit_wr_wait, i32, i32 }
%struct.__kernel_sockaddr_storage = type { %union.anon.190 }
%union.anon.190 = type { ptr, [124 x i8] }
%struct.cxgbit_wr_wait = type { %struct.completion, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sk_buff_head = type { %union.anon.106, i32, %struct.spinlock }
%union.anon.106 = type { %struct.anon.107 }
%struct.anon.107 = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.cxgbit_device = type { %struct.list_head, %struct.cxgb4_lld_info, [32 x ptr], %struct.spinlock, [4 x [2 x i8]], %struct.cxgbit_list_head, i32, %struct.kref, i32 }
%struct.cxgb4_lld_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i8, i8, i8, i8, i8, i32, i32, i32, i16, i16, i32, i16, [4 x i16], ptr, ptr, i32, i32, i32, i32, i32, i8, i32, i32, i8, i32, i32, i32, i32, ptr, i32, i8, i8, i8 }
%struct.cxgbit_list_head = type { %struct.list_head, %struct.spinlock }
%struct.fw_ofld_tx_data_wr = type { i32, i32, i32, i32 }
%struct.iscsi_datain = type { i8, i32, i32, i32, [112 x i8] }
%struct.iscsi_conn = type { %struct.wait_queue_head, i8, i8, i8, i8, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, ptr, ptr, ptr, i32, %struct.delayed_work, ptr, %struct.timer_list, %struct.timer_list, %struct.timer_list, ptr, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, ptr, ptr, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.completion, i32, ptr, %struct.list_head, [52 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.iscsi_cmd = type { i32, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, [52 x i8], %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.timer_list, ptr, ptr, [5 x %struct.kvec], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.se_cmd, [98 x i8], i32, [4 x i8], ptr, i32, i32, i32, [124 x i8] }
%struct.kvec = type { ptr, i32 }
%struct.se_cmd = type { i32, i8, i16, i8, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.llist_node, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i64, i32, i32, %struct.spinlock, %struct.kref, %struct.completion, %struct.work_struct, ptr, ptr, i32, i32, ptr, ptr, i32, i32, %struct.list_head, ptr, i32, i32, i8, i8, i32, i32, ptr, i32, i32, i64, i32 }
%struct.llist_node = type { ptr }
%struct.iscsi_conn_ops = type { i8, i8, i32, i32, i32, i32 }
%struct.iscsi_datain_req = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, [76 x i8] }
%struct.iscsi_session = type { i8, [6 x i8], i32, i8, i16, i16, i16, i32, i32, i32, i32, %struct.mutex, i32, %struct.atomic_t, %struct.list_head, i32, [8 x i8], i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i64, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.timer_list, ptr, ptr, ptr, [12 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.iscsi_param = type { ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i32, %struct.list_head, [100 x i8] }
%struct.iscsi_login = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [6 x i8], i32, i32, i32, i32, i16, i16, [48 x i8], [48 x i8], ptr, ptr, ptr, ptr, [108 x i8] }
%struct.iscsi_sess_ops = type { [224 x i8], [256 x i8], [224 x i8], [256 x i8], [256 x i8], i16, i16, i8, i8, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8 }
%struct.cxgbi_ppm = type { %struct.kref, ptr, ptr, ptr, ptr, %struct.cxgbi_tag_format, i32, i32, i32, i32, i32, ptr, %struct.spinlock, i32, i32, i32, ptr, [0 x %struct.cxgbi_ppod_data] }
%struct.cxgbi_tag_format = type { [4 x i8], i8, i8, i8, i8, i32, i32, i32, i32, i32 }
%struct.cxgbi_ppod_data = type { i8, i8, i16, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.148, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%union.anon.20 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.148 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.cxgbit_lro_cb = type { ptr, i32, i32, i8, i8 }
%struct.cxgbit_lro_pdu_cb = type { i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.163, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.163 = type { %struct.atomic_t }
%struct.iscsi_scsi_req = type { i8, i8, i16, i8, [3 x i8], %struct.scsi_lun, i32, i32, i32, i32, [16 x i8] }
%struct.scsi_lun = type { [8 x i8] }
%struct.iscsi_hdr = type { i8, i8, [2 x i8], i8, [3 x i8], %struct.scsi_lun, i32, i32, i32, i32, i32, [12 x i8] }
%struct.iscsi_text = type { i8, i8, [2 x i8], i8, [3 x i8], [8 x i8], i32, i32, i32, i32, [16 x i8] }
%struct.iscsi_data = type { i8, i8, [2 x i8], i8, [3 x i8], %struct.scsi_lun, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cxgbit_cmd = type { %struct.scatterlist, %struct.cxgbi_task_tag_info, i8, i8 }
%struct.cxgbi_task_tag_info = type { i8, i8, i16, i32, i32, i32, %struct.cxgbi_pagepod_hdr, i32, i32, ptr }
%struct.cxgbi_pagepod_hdr = type { i32, i32, i32, i32, i64 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.166, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.166 = type { ptr }
%struct.iscsi_nopout = type { i8, i8, i16, i8, [3 x i8], %struct.scsi_lun, i32, i32, i32, i32, [16 x i8] }
%struct.skb_seq_state = type { i32, i32, i32, i32, ptr, ptr, ptr, i32 }

@cxgbit_push_tx_frames.__UNIQUE_ID_ddebug660 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 60, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cxgbit\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cxgbit_push_tx_frames\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/target/iscsi/cxgbit/cxgbit_target.c\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"csk 0x%p, skb %u/%u, wr %d < %u.\0A\00", [62 x i8] zeroinitializer }, align 32
@cxgbit_push_tx_frames.__UNIQUE_ID_ddebug661 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 62, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"csk 0x%p, skb %u/%u, wr %d, left %u, unack %u.\0A\00", [48 x i8] zeroinitializer }, align 32
@cxgbit_push_tx_frames.__UNIQUE_ID_ddebug662 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 70, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"csk 0x%p,%u, skb 0x%p, %u.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"MaxXmitDataSegmentLength\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"MaxXmitDataSegmentLength=%u\00", [36 x i8] zeroinitializer }, align 32
@cxgbit_digest_len = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00\04\04\08", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ErrorRecoveryLevel\00", [45 x i8] zeroinitializer }, align 32
@cxgbit_set_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 734, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013param not found key %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cxgbit_set_params\00", [46 x i8] zeroinitializer }, align 32
@cxgbit_set_params._entry_ptr = internal global ptr @cxgbit_set_params._entry, section ".printk_index", align 4
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HeaderDigest\00", [19 x i8] zeroinitializer }, align 32
@cxgbit_set_digest._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.14, ptr @.str.2, i32 603, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cxgbit_set_digest\00", [46 x i8] zeroinitializer }, align 32
@cxgbit_set_digest._entry_ptr = internal global ptr @cxgbit_set_digest._entry, section ".printk_index", align 4
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CRC32C\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DataDigest\00", [21 x i8] zeroinitializer }, align 32
@cxgbit_set_digest._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.14, ptr @.str.2, i32 613, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cxgbit_set_digest._entry_ptr.18 = internal global ptr @cxgbit_set_digest._entry.17, section ".printk_index", align 4
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DataSequenceInOrder\00", [44 x i8] zeroinitializer }, align 32
@cxgbit_seq_pdu_inorder._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.20, ptr @.str.2, i32 688, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cxgbit_seq_pdu_inorder\00", [41 x i8] zeroinitializer }, align 32
@cxgbit_seq_pdu_inorder._entry_ptr = internal global ptr @cxgbit_seq_pdu_inorder._entry, section ".printk_index", align 4
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Yes\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DataPDUInOrder\00", [17 x i8] zeroinitializer }, align 32
@cxgbit_seq_pdu_inorder._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.20, ptr @.str.2, i32 698, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cxgbit_seq_pdu_inorder._entry_ptr.24 = internal global ptr @cxgbit_seq_pdu_inorder._entry.23, section ".printk_index", align 4
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MaxBurstLength\00", [17 x i8] zeroinitializer }, align 32
@cxgbit_set_iso_npdu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.26, ptr @.str.2, i32 641, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cxgbit_set_iso_npdu\00", [44 x i8] zeroinitializer }, align 32
@cxgbit_set_iso_npdu._entry_ptr = internal global ptr @cxgbit_set_iso_npdu._entry, section ".printk_index", align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@cxgbit_t5_rx_lro_skb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 1543, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016csk 0x%p, tid 0x%x, seq 0x%x != 0x%x.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cxgbit_t5_rx_lro_skb\00", [43 x i8] zeroinitializer }, align 32
@cxgbit_t5_rx_lro_skb._entry_ptr = internal global ptr @cxgbit_t5_rx_lro_skb._entry, section ".printk_index", align 4
@cxgbit_lro_skb_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 1393, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016skb 0x%p, head 0x%p, 0x%p, len %u,%u, frags %u.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cxgbit_lro_skb_dump\00", [44 x i8] zeroinitializer }, align 32
@cxgbit_lro_skb_dump._entry_ptr = internal global ptr @cxgbit_lro_skb_dump._entry, section ".printk_index", align 4
@cxgbit_lro_skb_dump._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.2, i32 1395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016skb 0x%p, lro_cb, csk 0x%p, pdu %u, %u.\0A\00", [53 x i8] zeroinitializer }, align 32
@cxgbit_lro_skb_dump._entry_ptr.34 = internal global ptr @cxgbit_lro_skb_dump._entry.32, section ".printk_index", align 4
@cxgbit_lro_skb_dump._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.31, ptr @.str.2, i32 1401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016skb 0x%p, pdu %d, %u, f 0x%x, seq 0x%x, dcrc 0x%x, frags %u.\0A\00", [32 x i8] zeroinitializer }, align 32
@cxgbit_lro_skb_dump._entry_ptr.37 = internal global ptr @cxgbit_lro_skb_dump._entry.35, section ".printk_index", align 4
@cxgbit_lro_skb_dump._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.31, ptr @.str.2, i32 1405, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016skb 0x%p, frag %d, off %u, sz %u.\0A\00", [59 x i8] zeroinitializer }, align 32
@cxgbit_lro_skb_dump._entry_ptr.40 = internal global ptr @cxgbit_lro_skb_dump._entry.38, section ".printk_index", align 4
@cxgbit_rx_login_pdu.__UNIQUE_ID_ddebug676 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.42, i8 1, i8 77, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cxgbit_rx_login_pdu\00", [44 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [102 x i8], [58 x i8] } { [102 x i8] c"Got Login Command, Flags 0x%02x, ITT: 0x%08x, CmdSN: 0x%08x, ExpStatSN: 0x%08x, CID: %hu, Length: %u\0A\00", [58 x i8] zeroinitializer }, align 32
@cxgbit_rx_opcode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 1307, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\013Received illegal iSCSI Opcode: 0x%02x while in Discovery Session, rejecting.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cxgbit_rx_opcode\00", [47 x i8] zeroinitializer }, align 32
@cxgbit_rx_opcode._entry_ptr = internal global ptr @cxgbit_rx_opcode._entry, section ".printk_index", align 4
@cxgbit_target_rx_opcode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 1273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013Got unknown iSCSI OpCode: 0x%02x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cxgbit_target_rx_opcode\00", [40 x i8] zeroinitializer }, align 32
@cxgbit_target_rx_opcode._entry_ptr = internal global ptr @cxgbit_target_rx_opcode._entry, section ".printk_index", align 4
@cxgbit_allocate_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 844, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013Unable to allocate iscsi_cmd + cxgbit_cmd\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cxgbit_allocate_cmd\00", [44 x i8] zeroinitializer }, align 32
@cxgbit_allocate_cmd._entry_ptr = internal global ptr @cxgbit_allocate_cmd._entry, section ".printk_index", align 4
@cxgbit_handle_immediate_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 864, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013ImmediateData CRC32C DataDigest error\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cxgbit_handle_immediate_data\00", [35 x i8] zeroinitializer }, align 32
@cxgbit_handle_immediate_data._entry_ptr = internal global ptr @cxgbit_handle_immediate_data._entry, section ".printk_index", align 4
@cxgbit_handle_immediate_data._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.2, i32 868, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013Unable to recover from Immediate Data digest failure while in ERL=0.\0A\00", [56 x i8] zeroinitializer }, align 32
@cxgbit_handle_immediate_data._entry_ptr.53 = internal global ptr @cxgbit_handle_immediate_data._entry.51, section ".printk_index", align 4
@cxgbit_handle_iscsi_dataout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.2, i32 1043, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013ITT: 0x%08x, Offset: %u, Length: %u, DataSN: 0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cxgbit_handle_iscsi_dataout\00", [36 x i8] zeroinitializer }, align 32
@cxgbit_handle_iscsi_dataout._entry_ptr = internal global ptr @cxgbit_handle_iscsi_dataout._entry, section ".printk_index", align 4
@cxgbit_handle_iscsi_dataout.__UNIQUE_ID_ddebug671 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.2, ptr @.str.56, i8 1, i8 7, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"DataOut data_len: %u, write_data_done: %u, data_length: %u\0A\00", [36 x i8] zeroinitializer }, align 32
@cxgbit_handle_nop_out._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 1104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013Unable to recover from NOPOUT Ping DataCRC failure while in ERL=0.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cxgbit_handle_nop_out\00", [42 x i8] zeroinitializer }, align 32
@cxgbit_handle_nop_out._entry_ptr = internal global ptr @cxgbit_handle_nop_out._entry, section ".printk_index", align 4
@cxgbit_handle_nop_out._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.2, i32 1114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016Dropping NOPOUT Command CmdSN: 0x%08x due to DataCRC error.\0A\00", [33 x i8] zeroinitializer }, align 32
@cxgbit_handle_nop_out._entry_ptr.61 = internal global ptr @cxgbit_handle_nop_out._entry.59, section ".printk_index", align 4
@cxgbit_handle_nop_out._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.58, ptr @.str.2, i32 1127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013Unable to allocate memory for NOPOUT ping data.\0A\00", [45 x i8] zeroinitializer }, align 32
@cxgbit_handle_nop_out._entry_ptr.64 = internal global ptr @cxgbit_handle_nop_out._entry.62, section ".printk_index", align 4
@cxgbit_handle_nop_out.__UNIQUE_ID_ddebug674 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.2, ptr @.str.65, i8 1, i8 29, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Got %u bytes of NOPOUT ping data.\0A\00", [61 x i8] zeroinitializer }, align 32
@cxgbit_handle_nop_out.__UNIQUE_ID_ddebug675 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.2, ptr @.str.66, i8 1, i8 30, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Ping Data: \22%s\22\0A\00", [47 x i8] zeroinitializer }, align 32
@cxgbit_handle_text_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.2, i32 1172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013Unable to recover from Text Data digest failure while in ERL=0.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cxgbit_handle_text_cmd\00", [41 x i8] zeroinitializer }, align 32
@cxgbit_handle_text_cmd._entry_ptr = internal global ptr @cxgbit_handle_text_cmd._entry, section ".printk_index", align 4
@cxgbit_handle_text_cmd._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str.2, i32 1181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016Dropping Text Command CmdSN: 0x%08x due to DataCRC error.\0A\00", [35 x i8] zeroinitializer }, align 32
@cxgbit_handle_text_cmd._entry_ptr.71 = internal global ptr @cxgbit_handle_text_cmd._entry.69, section ".printk_index", align 4
@cxgbit_handle_text_cmd._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.68, ptr @.str.2, i32 1190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013Unable to allocate text_in of payload_length: %u\0A\00", [44 x i8] zeroinitializer }, align 32
@cxgbit_handle_text_cmd._entry_ptr.74 = internal global ptr @cxgbit_handle_text_cmd._entry.72, section ".printk_index", align 4
@.str.75 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 4, i64 5, i64 6, i64 16]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 238, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 249, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 279, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 579, i32 36 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 589, i32 10 }
@___asan_gen_.101 = private unnamed_addr constant [18 x i8] c"cxgbit_digest_len\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 21, i32 17 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1160, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 731, i32 37 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 734, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 601, i32 36 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 603, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 607, i32 28 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 610, i32 36 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 613, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 685, i32 37 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 688, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 692, i32 28 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 695, i32 37 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 698, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 638, i32 37 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 641, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 1984, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1542, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1391, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1394, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1398, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1403, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1332, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1306, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1273, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 844, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 864, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 866, i32 4 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1040, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1049, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1102, i32 4 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1112, i32 4 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1126, i32 4 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1142, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1144, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1170, i32 4 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1179, i32 4 }
@___asan_gen_.308 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.312 = private constant [47 x i8] c"../drivers/target/iscsi/cxgbit/cxgbit_target.c\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1189, i32 4 }
@___asan_gen_.314 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.315 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 717, i32 2 }
@llvm.compiler.used = appending global [103 x ptr] [ptr @cxgbit_allocate_cmd._entry, ptr @cxgbit_allocate_cmd._entry_ptr, ptr @cxgbit_handle_immediate_data._entry, ptr @cxgbit_handle_immediate_data._entry.51, ptr @cxgbit_handle_immediate_data._entry_ptr, ptr @cxgbit_handle_immediate_data._entry_ptr.53, ptr @cxgbit_handle_iscsi_dataout._entry, ptr @cxgbit_handle_iscsi_dataout._entry_ptr, ptr @cxgbit_handle_nop_out._entry, ptr @cxgbit_handle_nop_out._entry.59, ptr @cxgbit_handle_nop_out._entry.62, ptr @cxgbit_handle_nop_out._entry_ptr, ptr @cxgbit_handle_nop_out._entry_ptr.61, ptr @cxgbit_handle_nop_out._entry_ptr.64, ptr @cxgbit_handle_text_cmd._entry, ptr @cxgbit_handle_text_cmd._entry.69, ptr @cxgbit_handle_text_cmd._entry.72, ptr @cxgbit_handle_text_cmd._entry_ptr, ptr @cxgbit_handle_text_cmd._entry_ptr.71, ptr @cxgbit_handle_text_cmd._entry_ptr.74, ptr @cxgbit_lro_skb_dump._entry, ptr @cxgbit_lro_skb_dump._entry.32, ptr @cxgbit_lro_skb_dump._entry.35, ptr @cxgbit_lro_skb_dump._entry.38, ptr @cxgbit_lro_skb_dump._entry_ptr, ptr @cxgbit_lro_skb_dump._entry_ptr.34, ptr @cxgbit_lro_skb_dump._entry_ptr.37, ptr @cxgbit_lro_skb_dump._entry_ptr.40, ptr @cxgbit_rx_opcode._entry, ptr @cxgbit_rx_opcode._entry_ptr, ptr @cxgbit_seq_pdu_inorder._entry, ptr @cxgbit_seq_pdu_inorder._entry.23, ptr @cxgbit_seq_pdu_inorder._entry_ptr, ptr @cxgbit_seq_pdu_inorder._entry_ptr.24, ptr @cxgbit_set_digest._entry, ptr @cxgbit_set_digest._entry.17, ptr @cxgbit_set_digest._entry_ptr, ptr @cxgbit_set_digest._entry_ptr.18, ptr @cxgbit_set_iso_npdu._entry, ptr @cxgbit_set_iso_npdu._entry_ptr, ptr @cxgbit_set_params._entry, ptr @cxgbit_set_params._entry_ptr, ptr @cxgbit_t5_rx_lro_skb._entry, ptr @cxgbit_t5_rx_lro_skb._entry_ptr, ptr @cxgbit_target_rx_opcode._entry, ptr @cxgbit_target_rx_opcode._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @cxgbit_digest_len, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.25, ptr @.str.26, ptr @skb_queue_head_init.__key, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.73, ptr @.str.75], section "llvm.metadata"
@0 = internal global [80 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_digest_len to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_set_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_set_digest._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_set_digest._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_seq_pdu_inorder._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_seq_pdu_inorder._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_set_iso_npdu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_t5_rx_lro_skb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_lro_skb_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_lro_skb_dump._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_lro_skb_dump._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_lro_skb_dump._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 102, i32 160, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_rx_opcode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_target_rx_opcode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_allocate_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_handle_immediate_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_handle_immediate_data._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_handle_iscsi_dataout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_handle_nop_out._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_handle_nop_out._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_handle_nop_out._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_handle_text_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_handle_text_cmd._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_handle_text_cmd._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cxgbit_push_tx_frames(ptr noundef %csk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %wr_cred = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 22
  %txq = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 7
  %flags25 = getelementptr inbounds %struct.cxgbit_sock_common, ptr %csk, i32 0, i32 5
  %wr_una_cred = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 23
  %qlen.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 7, i32 1
  %txq_idx = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 40
  %wr_max_cred = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 24
  %write_seq = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 32
  %snd_una = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 25
  %snd_win = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 34
  %tid.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 26
  %snd_nxt = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 27
  %wr_pending_head.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 11
  %wr_pending_tail.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 12
  %l2t = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 3
  %0 = ptrtoint ptr %wr_cred to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wr_cred, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not254 = icmp eq i32 %1, 0
  br i1 %tobool.not254, label %entry.while.end_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs:                                         ; preds = %do.end136.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %2 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %txq, align 4
  %cmp.i = icmp eq ptr %3, %txq
  %cmp.not251 = icmp eq ptr %3, null
  %cmp.not = or i1 %cmp.i, %cmp.not251
  br i1 %cmp.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %len = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %cb = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %cb to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cb, align 8
  %8 = and i8 %7, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool3.not = icmp eq i8 %8, 0
  %9 = shl nuw nsw i8 %8, 3
  %10 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  %add.i = add i32 %5, 16
  %spec.select.i = select i1 %tobool.not.i, i32 %5, i32 %add.i, !prof !168
  %add16.i = add i32 %spec.select.i, 32
  %length.1.i = select i1 %tobool3.not, i32 %spec.select.i, i32 %add16.i, !prof !168
  call void @__sanitizer_cov_trace_const_cmp4(i32 271, i32 %length.1.i)
  %cmp.i222 = icmp ugt i32 %length.1.i, 271
  br i1 %cmp.i222, label %if.end.i, label %while.body.if.end13_crit_edge

while.body.if.end13_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.end.i:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 18
  %11 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %head.i.i.i, align 8
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 15, i32 0, i32 19
  %13 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %14 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %12, i32 %conv.i.i.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 19
  %15 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %16 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %div2.i = sdiv i32 %sub.ptr.sub.i.i, 8
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 17
  %17 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %end.i.i, align 4
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %nr_frags.i, align 2
  %conv.i = zext i8 %20 to i32
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 16
  %21 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tail.i.i, align 8
  %cmp.not.i = icmp ne ptr %22, %add.ptr.i.i.i
  %inc.i = zext i1 %cmp.not.i to i32
  %spec.select.i223 = add nsw i32 %conv.i, -1
  %dec.i.i = add nsw i32 %spec.select.i223, %inc.i
  %mul.i.i = mul nsw i32 %dec.i.i, 3
  %div4.i.i = lshr i32 %mul.i.i, 1
  %and.i.i = and i32 %dec.i.i, 1
  %add.i19.i = add nsw i32 %div2.i, 2
  %add1.i.i = add nsw i32 %add.i19.i, %and.i.i
  %add10.i = add i32 %add1.i.i, %div4.i.i
  %mul = shl i32 %add10.i, 3
  br label %if.end13

if.end13:                                         ; preds = %if.end.i, %while.body.if.end13_crit_edge
  %.pn = phi i32 [ %mul, %if.end.i ], [ %5, %while.body.if.end13_crit_edge ]
  %23 = or i8 %9, 15
  %credits_needed.0.in.in = zext i8 %23 to i32
  %credits_needed.0.in = add i32 %.pn, %credits_needed.0.in.in
  %credits_needed.0 = lshr i32 %credits_needed.0.in, 4
  %not.tobool.not.i = xor i1 %tobool.not.i, true
  %add23 = zext i1 %not.tobool.not.i to i32
  %spec.select215 = add nuw nsw i32 %credits_needed.0, %add23
  %call26 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags25) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then28, label %if.end13.if.end33_crit_edge

if.end13.if.end33_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then28:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %call29 = tail call i32 @cxgbit_send_tx_flowc_wr(ptr noundef %csk) #10
  %24 = ptrtoint ptr %wr_cred to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %wr_cred, align 4
  %sub31 = sub i32 %25, %call29
  store i32 %sub31, ptr %wr_cred, align 4
  %26 = ptrtoint ptr %wr_una_cred to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %wr_una_cred, align 4
  %add32 = add i32 %27, %call29
  store i32 %add32, ptr %wr_una_cred, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then28, %if.end13.if.end33_crit_edge
  %flowclen16.0 = phi i32 [ 0, %if.end13.if.end33_crit_edge ], [ %call29, %if.then28 ]
  %28 = ptrtoint ptr %wr_cred to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %wr_cred, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %spec.select215)
  %cmp35 = icmp ult i32 %29, %spec.select215
  br i1 %cmp35, label %do.body, label %if.end50

do.body:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxgbit_push_tx_frames.__UNIQUE_ID_ddebug660, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxgbit_push_tx_frames, %cleanup.thread)) #10
          to label %while.end [label %cleanup.thread], !srcloc !169

cleanup.thread:                                   ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len, align 4
  %data_len = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 7
  %32 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %data_len, align 8
  %34 = ptrtoint ptr %wr_cred to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %wr_cred, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxgbit_push_tx_frames.__UNIQUE_ID_ddebug660, ptr noundef nonnull @.str.3, ptr noundef %csk, i32 noundef %31, i32 noundef %33, i32 noundef %spec.select215, i32 noundef %35) #10
  br label %while.end

if.end50:                                         ; preds = %if.end33
  %36 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %qlen.i, align 4
  %sub.i225 = add i32 %37, -1
  store volatile i32 %sub.i225, ptr %qlen.i, align 4
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %3, align 8
  %prev9.i = getelementptr inbounds %struct.anon.51, ptr %3, i32 0, i32 1
  %40 = ptrtoint ptr %prev9.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev9.i, align 4
  store ptr null, ptr %prev9.i, align 4
  store ptr null, ptr %3, align 8
  %prev17.i = getelementptr inbounds %struct.anon.51, ptr %39, i32 0, i32 1
  %42 = ptrtoint ptr %prev17.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %41, ptr %prev17.i, align 4
  %43 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %39, ptr %41, align 8
  %44 = ptrtoint ptr %txq_idx to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %txq_idx, align 4
  %conv.i226 = shl i16 %45, 1
  %queue_mapping1.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 10
  %46 = ptrtoint ptr %queue_mapping1.i.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv.i226, ptr %queue_mapping1.i.i, align 8
  %add53 = add i32 %flowclen16.0, %spec.select215
  %47 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 15, i32 0, i32 5
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %add53, ptr %47, align 8
  %49 = ptrtoint ptr %wr_cred to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %wr_cred, align 4
  %sub55 = sub i32 %50, %spec.select215
  store i32 %sub55, ptr %wr_cred, align 4
  %51 = ptrtoint ptr %wr_una_cred to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %wr_una_cred, align 4
  %add57 = add i32 %52, %spec.select215
  store i32 %add57, ptr %wr_una_cred, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxgbit_push_tx_frames.__UNIQUE_ID_ddebug661, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxgbit_push_tx_frames, %if.then70)) #10
          to label %do.end77 [label %if.then70], !srcloc !169

if.then70:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %len, align 4
  %data_len72 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 7
  %55 = ptrtoint ptr %data_len72 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %data_len72, align 8
  %57 = ptrtoint ptr %wr_cred to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %wr_cred, align 4
  %59 = ptrtoint ptr %wr_una_cred to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %wr_una_cred, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxgbit_push_tx_frames.__UNIQUE_ID_ddebug661, ptr noundef nonnull @.str.4, ptr noundef %csk, i32 noundef %54, i32 noundef %56, i32 noundef %spec.select215, i32 noundef %58, i32 noundef %60) #10
  br label %do.end77

do.end77:                                         ; preds = %if.then70, %if.end50
  %61 = ptrtoint ptr %cb to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %cb, align 8
  %conv81 = zext i8 %62 to i32
  %and82 = and i32 %conv81, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %if.else104, label %if.then90, !prof !168

if.then90:                                        ; preds = %do.end77
  %extra_len = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 8
  %63 = ptrtoint ptr %extra_len to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %extra_len, align 4
  %add93 = add i32 %64, %5
  %65 = ptrtoint ptr %wr_una_cred to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %wr_una_cred, align 4
  %67 = ptrtoint ptr %wr_max_cred to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %wr_max_cred, align 4
  %div95213 = lshr i32 %68, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %div95213)
  %cmp96.not = icmp ult i32 %66, %div95213
  br i1 %cmp96.not, label %lor.lhs.false, label %if.then90.if.then100_crit_edge

if.then90.if.then100_crit_edge:                   ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then100

lor.lhs.false:                                    ; preds = %if.then90
  %69 = ptrtoint ptr %write_seq to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %write_seq, align 4
  %71 = ptrtoint ptr %snd_una to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %snd_una, align 4
  %73 = ptrtoint ptr %snd_win to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %snd_win, align 4
  %75 = add i32 %72, %74
  %sub.i227 = sub i32 %70, %75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i227)
  %cmp.i228 = icmp slt i32 %sub.i227, 0
  br i1 %cmp.i228, label %lor.lhs.false.if.end102_crit_edge, label %lor.lhs.false.if.then100_crit_edge

lor.lhs.false.if.then100_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then100

lor.lhs.false.if.end102_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end102

if.then100:                                       ; preds = %lor.lhs.false.if.then100_crit_edge, %if.then90.if.then100_crit_edge
  %76 = ptrtoint ptr %wr_una_cred to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %wr_una_cred, align 4
  br label %if.end102

if.end102:                                        ; preds = %if.then100, %lor.lhs.false.if.end102_crit_edge
  %compl.0 = phi i32 [ 2097152, %if.then100 ], [ 0, %lor.lhs.false.if.end102_crit_edge ]
  %77 = ptrtoint ptr %csk to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %csk, align 4
  %79 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %79, align 4
  %conv.i230 = zext i8 %81 to i32
  %adapter_type.i = getelementptr inbounds %struct.cxgbit_device, ptr %78, i32 0, i32 1, i32 13
  %82 = ptrtoint ptr %adapter_type.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %adapter_type.i, align 4
  %84 = ptrtoint ptr %cb to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %cb, align 8
  %86 = and i8 %85, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool8.not.i231 = icmp eq i8 %86, 0
  br i1 %tobool8.not.i231, label %if.end102.cxgbit_tx_data_wr.exit_crit_edge, label %if.then.i232

if.end102.cxgbit_tx_data_wr.exit_crit_edge:       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbit_tx_data_wr.exit

if.then.i232:                                     ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  %or.i = or i32 %conv.i230, 8
  br label %cxgbit_tx_data_wr.exit

cxgbit_tx_data_wr.exit:                           ; preds = %if.then.i232, %if.end102.cxgbit_tx_data_wr.exit_crit_edge
  %submode.0.i = phi i32 [ %or.i, %if.then.i232 ], [ %conv.i230, %if.end102.cxgbit_tx_data_wr.exit_crit_edge ]
  %hdr_size.0.i = phi i32 [ 48, %if.then.i232 ], [ 16, %if.end102.cxgbit_tx_data_wr.exit_crit_edge ]
  %opcode.0.i = phi i32 [ 1157627904, %if.then.i232 ], [ 184549376, %if.end102.cxgbit_tx_data_wr.exit_crit_edge ]
  %immlen.0.i = phi i32 [ 32, %if.then.i232 ], [ 0, %if.end102.cxgbit_tx_data_wr.exit_crit_edge ]
  %87 = and i8 %83, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %87)
  %cmp.i.not.i = icmp eq i8 %87, 80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool4.not.i = icmp eq i8 %81, 0
  %88 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %len, align 4
  %90 = and i8 %85, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool.not.i.i234 = icmp eq i8 %90, 0
  %add.i.i235 = add i32 %89, 16
  %spec.select.i.i236 = select i1 %tobool.not.i.i234, i32 %89, i32 %add.i.i235, !prof !168
  %add16.i.i237 = add i32 %spec.select.i.i236, 32
  %length.1.i.i238 = select i1 %tobool8.not.i231, i32 %spec.select.i.i236, i32 %add16.i.i237, !prof !168
  call void @__sanitizer_cov_trace_const_cmp4(i32 271, i32 %length.1.i.i238)
  %cmp.i40.i = icmp ugt i32 %length.1.i.i238, 271
  %add13.i = select i1 %cmp.i40.i, i32 0, i32 %5
  %spec.select.i239 = add i32 %add13.i, %immlen.0.i
  %data.i.i240 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 19
  %91 = ptrtoint ptr %data.i.i240 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %data.i.i240, align 4
  %idx.neg.i.i = sub nsw i32 0, %hdr_size.0.i
  %add.ptr.i.i = getelementptr i8, ptr %92, i32 %idx.neg.i.i
  store ptr %add.ptr.i.i, ptr %data.i.i240, align 4
  %add.i41.i = add i32 %89, %hdr_size.0.i
  %93 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %add.i41.i, ptr %len, align 4
  %or18.i = or i32 %opcode.0.i, %compl.0
  %or20.i = or i32 %or18.i, %spec.select.i239
  %94 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %or20.i, ptr %add.ptr.i.i, align 4
  %95 = ptrtoint ptr %tid.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %tid.i, align 4
  %shl21.i = shl i32 %96, 8
  %or23.i = or i32 %shl21.i, %spec.select215
  %flowid_len16.i = getelementptr inbounds %struct.fw_ofld_tx_data_wr, ptr %add.ptr.i.i, i32 0, i32 1
  %97 = ptrtoint ptr %flowid_len16.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %or23.i, ptr %flowid_len16.i, align 4
  %plen.i = getelementptr inbounds %struct.fw_ofld_tx_data_wr, ptr %add.ptr.i.i, i32 0, i32 2
  %98 = ptrtoint ptr %plen.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %add93, ptr %plen.i, align 4
  %shl24.i = shl nsw i32 %submode.0.i, 6
  %shl.op.i = select i1 %tobool4.not.i, i32 536881152, i32 536872960
  %or25.i = select i1 %cmp.i.not.i, i32 %shl.op.i, i32 537921536
  %or27.i = or i32 %shl24.i, %or25.i
  %tunnel_to_proxy.i = getelementptr inbounds %struct.fw_ofld_tx_data_wr, ptr %add.ptr.i.i, i32 0, i32 3
  %99 = ptrtoint ptr %tunnel_to_proxy.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %or27.i, ptr %tunnel_to_proxy.i, align 4
  %100 = ptrtoint ptr %snd_nxt to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %snd_nxt, align 4
  %add103 = add i32 %101, %add93
  store i32 %add103, ptr %snd_nxt, align 4
  br label %if.end120

if.else104:                                       ; preds = %do.end77
  %and109 = and i32 %conv81, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %lor.lhs.false111, label %if.else104.if.then117_crit_edge

if.else104.if.then117_crit_edge:                  ; preds = %if.else104
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then117

lor.lhs.false111:                                 ; preds = %if.else104
  %102 = ptrtoint ptr %wr_una_cred to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %wr_una_cred, align 4
  %104 = ptrtoint ptr %wr_max_cred to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %wr_max_cred, align 4
  %div114212 = lshr i32 %105, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %103, i32 %div114212)
  %cmp115.not = icmp ult i32 %103, %div114212
  br i1 %cmp115.not, label %lor.lhs.false111.if.end120_crit_edge, label %lor.lhs.false111.if.then117_crit_edge

lor.lhs.false111.if.then117_crit_edge:            ; preds = %lor.lhs.false111
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then117

lor.lhs.false111.if.end120_crit_edge:             ; preds = %lor.lhs.false111
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end120

if.then117:                                       ; preds = %lor.lhs.false111.if.then117_crit_edge, %if.else104.if.then117_crit_edge
  %data = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 19
  %106 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %data, align 4
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %107, align 8
  %or = or i32 %109, 2097152
  store i32 %or, ptr %107, align 8
  %110 = ptrtoint ptr %wr_una_cred to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %wr_una_cred, align 4
  br label %if.end120

if.end120:                                        ; preds = %if.then117, %lor.lhs.false111.if.end120_crit_edge, %cxgbit_tx_data_wr.exit
  %len1.0 = phi i32 [ %add93, %cxgbit_tx_data_wr.exit ], [ %5, %if.then117 ], [ %5, %lor.lhs.false111.if.end120_crit_edge ]
  %wr_next.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 8
  %111 = ptrtoint ptr %wr_next.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr null, ptr %wr_next.i, align 8
  %users.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 21
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %users.i.i, i32 1, i32 3, i32 1) #10
  %112 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i.i, ptr %users.i.i, i32 1, ptr elementtype(i32) %users.i.i) #10, !srcloc !170
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %112, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end120.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !168

if.end120.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end120
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %113 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %113)
  %.not.i.i.i.i.i = icmp sgt i32 %113, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.skb_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !171

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.skb_get.exit.i_crit_edge:       ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_get.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end120.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end120.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users.i.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %skb_get.exit.i

skb_get.exit.i:                                   ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.skb_get.exit.i_crit_edge
  %114 = ptrtoint ptr %wr_pending_head.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %wr_pending_head.i, align 4
  %tobool.not.i242 = icmp eq ptr %115, null
  br i1 %tobool.not.i242, label %if.then.i243, label %if.else.i

if.then.i243:                                     ; preds = %skb_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %116 = ptrtoint ptr %wr_pending_head.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %3, ptr %wr_pending_head.i, align 4
  br label %cxgbit_sock_enqueue_wr.exit

if.else.i:                                        ; preds = %skb_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %117 = ptrtoint ptr %wr_pending_tail.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %wr_pending_tail.i, align 4
  %wr_next4.i = getelementptr inbounds %struct.sk_buff, ptr %118, i32 0, i32 3, i32 8
  %119 = ptrtoint ptr %wr_next4.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %3, ptr %wr_next4.i, align 8
  br label %cxgbit_sock_enqueue_wr.exit

cxgbit_sock_enqueue_wr.exit:                      ; preds = %if.else.i, %if.then.i243
  %120 = ptrtoint ptr %wr_pending_tail.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %3, ptr %wr_pending_tail.i, align 4
  %121 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %csk, ptr %cb, align 8
  %arp_err_handler.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 4
  %122 = ptrtoint ptr %arp_err_handler.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr @cxgbit_arp_failure_skb_discard, ptr %arp_err_handler.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxgbit_push_tx_frames.__UNIQUE_ID_ddebug662, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxgbit_push_tx_frames, %if.then133)) #10
          to label %do.end136 [label %if.then133], !srcloc !169

if.then133:                                       ; preds = %cxgbit_sock_enqueue_wr.exit
  call void @__sanitizer_cov_trace_pc() #12
  %123 = ptrtoint ptr %tid.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %tid.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxgbit_push_tx_frames.__UNIQUE_ID_ddebug662, ptr noundef nonnull @.str.5, ptr noundef %csk, i32 noundef %124, ptr noundef nonnull %3, i32 noundef %len1.0) #10
  br label %do.end136

do.end136:                                        ; preds = %if.then133, %cxgbit_sock_enqueue_wr.exit
  %125 = ptrtoint ptr %csk to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %csk, align 4
  %127 = ptrtoint ptr %l2t to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %l2t, align 4
  %call138 = tail call i32 @cxgbit_l2t_send(ptr noundef %126, ptr noundef nonnull %3, ptr noundef %128) #10
  %129 = ptrtoint ptr %wr_cred to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %wr_cred, align 4
  %tobool.not = icmp eq i32 %130, 0
  br i1 %tobool.not, label %do.end136.while.end_crit_edge, label %do.end136.land.rhs_crit_edge

do.end136.land.rhs_crit_edge:                     ; preds = %do.end136
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

do.end136.while.end_crit_edge:                    ; preds = %do.end136
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %do.end136.while.end_crit_edge, %cleanup.thread, %do.body, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgbit_send_tx_flowc_wr(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxgbit_arp_failure_skb_discard(ptr nocapture noundef readnone %handle, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgbit_l2t_send(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgbit_xmit_pdu(ptr nocapture noundef readonly %conn, ptr noundef %cmd, ptr noundef %dr, ptr noundef %buf, i32 noundef %buf_len) local_unnamed_addr #0 align 64 {
entry:
  %pad_bytes.i = alloca i32, align 4
  %datain.i.i = alloca %struct.iscsi_datain, align 128
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dr, null
  %context.i6 = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 64
  %0 = ptrtoint ptr %context.i6 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context.i6, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %data_length1.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 70, i32 12
  %2 = ptrtoint ptr %data_length1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_length1.i, align 4
  %conn_ops.i = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 59
  %4 = ptrtoint ptr %conn_ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %conn_ops.i, align 16
  %MaxRecvDataSegmentLength.i = getelementptr inbounds %struct.iscsi_conn_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %MaxRecvDataSegmentLength.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %MaxRecvDataSegmentLength.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %7)
  %cmp.i = icmp ugt i32 %3, %7
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then.if.end.i_crit_edge

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then
  %sub.i = sub i32 0, %3
  %and.i = and i32 %sub.i, 3
  %recovery.i = getelementptr inbounds %struct.iscsi_datain_req, ptr %dr, i32 0, i32 2
  %8 = ptrtoint ptr %recovery.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %recovery.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 %tobool3.not.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true4.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %offset.i = getelementptr inbounds %struct.iscsi_datain, ptr %buf, i32 0, i32 3
  %10 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool5.not.i = icmp eq i32 %11, 0
  br i1 %tobool5.not.i, label %land.lhs.true6.i, label %land.lhs.true4.i.if.end.i_crit_edge

land.lhs.true4.i.if.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true4.i
  %max_iso_npdu.i = getelementptr inbounds %struct.cxgbit_sock, ptr %1, i32 0, i32 21
  %12 = ptrtoint ptr %max_iso_npdu.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_iso_npdu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool7.not.i = icmp eq i32 %13, 0
  br i1 %tobool7.not.i, label %land.lhs.true6.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true6.i.if.end.i_crit_edge:              ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true6.i
  %length.i = getelementptr inbounds %struct.iscsi_datain, ptr %buf, i32 0, i32 2
  %14 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length.i, align 8
  %sub8.i = sub i32 %3, %15
  %sess.i = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 68
  %16 = ptrtoint ptr %sess.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sess.i, align 4
  %tx_data_octets.i = getelementptr inbounds %struct.iscsi_session, ptr %17, i32 0, i32 22
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_data_octets.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %tx_data_octets.i, i32 1, i32 3, i32 1) #10
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_data_octets.i, ptr %tx_data_octets.i, i32 %sub8.i, ptr elementtype(i32) %tx_data_octets.i) #10, !srcloc !172
  %conn1.i.i = getelementptr inbounds %struct.cxgbit_sock, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %conn1.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %conn1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %datain.i.i) #10
  %21 = call ptr @memset(ptr %datain.i.i, i32 255, i32 128)
  %22 = ptrtoint ptr %data_length1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %data_length1.i, align 4
  %conn_ops.i.i = getelementptr inbounds %struct.iscsi_conn, ptr %20, i32 0, i32 59
  %24 = ptrtoint ptr %conn_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %conn_ops.i.i, align 16
  %MaxRecvDataSegmentLength.i.i = getelementptr inbounds %struct.iscsi_conn_ops, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %MaxRecvDataSegmentLength.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %MaxRecvDataSegmentLength.i.i, align 4
  %se_cmd_flags.i.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 70, i32 11
  %28 = ptrtoint ptr %se_cmd_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %se_cmd_flags.i.i, align 16
  %and.i.i = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool5.not164.i.i = icmp eq i32 %23, 0
  br i1 %tobool5.not164.i.i, label %if.then.i.while.end.i.i_crit_edge, label %while.body.lr.ph.i.i

if.then.i.while.end.i.i_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i

while.body.lr.ph.i.i:                             ; preds = %if.then.i
  %add.i.i = add i32 %27, -1
  %submode18.i.i.i = getelementptr inbounds %struct.cxgbit_sock, ptr %1, i32 0, i32 44
  %sess.i.i = getelementptr inbounds %struct.iscsi_conn, ptr %20, i32 0, i32 68
  %stat_sn.i.i = getelementptr inbounds %struct.iscsi_conn, ptr %20, i32 0, i32 16
  %stat_sn54.i.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 20
  %sub.i.i.i = add i32 %27, 3
  %div45.i.i.i = lshr i32 %sub.i.i.i, 2
  %conv23.i.i.i = trunc i32 %div45.i.i.i to i16
  %offset.i.i = getelementptr inbounds %struct.iscsi_datain, ptr %datain.i.i, i32 0, i32 3
  %data_sn.i.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 21
  %data_sn60.i.i = getelementptr inbounds %struct.iscsi_datain, ptr %datain.i.i, i32 0, i32 1
  %read_data_done.i.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 39
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end82.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %set_statsn.0.off0167.i.i = phi i1 [ false, %while.body.lr.ph.i.i ], [ %set_statsn.1.off0.i.i, %if.end82.i.i.while.body.i.i_crit_edge ]
  %tx_data.0166.i.i = phi i32 [ 0, %while.body.lr.ph.i.i ], [ %add83.i.i, %if.end82.i.i.while.body.i.i_crit_edge ]
  %data_length.0165.i.i = phi i32 [ %23, %while.body.lr.ph.i.i ], [ %sub44.i.i, %if.end82.i.i.while.body.i.i_crit_edge ]
  %sub.i.i = add i32 %add.i.i, %data_length.0165.i.i
  %div.i.i = udiv i32 %sub.i.i, %27
  %30 = ptrtoint ptr %max_iso_npdu.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max_iso_npdu.i, align 4
  %32 = call i32 @llvm.umin.i32(i32 %div.i.i, i32 %31) #10
  %mul.i.i = mul i32 %32, %27
  %33 = call i32 @llvm.umin.i32(i32 %mul.i.i, i32 %data_length.0165.i.i) #10
  %call.i.i.i.i = call ptr @__alloc_skb(i32 noundef 172, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %tobool12.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool12.not.i.i.i, label %while.body.i.i.cxgbit_tx_datain_iso.exit.i_crit_edge, label %if.end14.i.i.i

while.body.i.i.cxgbit_tx_datain_iso.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbit_tx_datain_iso.exit.i

if.end14.i.i.i:                                   ; preds = %while.body.i.i
  %data.i61.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %34 = ptrtoint ptr %data.i61.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data.i61.i.i.i, align 4
  %add.ptr.i62.i.i.i = getelementptr i8, ptr %35, i32 124
  store ptr %add.ptr.i62.i.i.i, ptr %data.i61.i.i.i, align 4
  %tail.i63.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %36 = ptrtoint ptr %tail.i63.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tail.i63.i.i.i, align 8
  %add.ptr1.i64.i.i.i = getelementptr i8, ptr %37, i32 124
  store ptr %add.ptr1.i64.i.i.i, ptr %tail.i63.i.i.i, align 8
  %head.i66.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 18
  %38 = ptrtoint ptr %head.i66.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %head.i66.i.i.i, align 8
  %sub.ptr.lhs.cast.i67.i.i.i = ptrtoint ptr %add.ptr.i62.i.i.i to i32
  %sub.ptr.rhs.cast.i68.i.i.i = ptrtoint ptr %39 to i32
  %sub.ptr.sub.i69.i.i.i = sub i32 %sub.ptr.lhs.cast.i67.i.i.i, %sub.ptr.rhs.cast.i68.i.i.i
  %conv.i70.i.i.i = trunc i32 %sub.ptr.sub.i69.i.i.i to i16
  %transport_header.i71.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 15, i32 0, i32 19
  %40 = ptrtoint ptr %transport_header.i71.i.i.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv.i70.i.i.i, ptr %transport_header.i71.i.i.i, align 2
  %data_len.i.i72.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 7
  %41 = ptrtoint ptr %data_len.i.i72.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %data_len.i.i72.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.i.not.i73.i.i.i = icmp eq i32 %42, 0
  br i1 %tobool.i.not.i73.i.i.i, label %if.end16.i.i, label %do.body3.i74.i.i.i, !prof !171

do.body3.i74.i.i.i:                               ; preds = %if.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #10, !srcloc !173
  unreachable

if.end16.i.i:                                     ; preds = %if.end14.i.i.i
  %add.ptr.i76.i.i.i = getelementptr i8, ptr %37, i32 172
  %43 = ptrtoint ptr %tail.i63.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %add.ptr.i76.i.i.i, ptr %tail.i63.i.i.i, align 8
  %len9.i77.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 6
  %44 = ptrtoint ptr %len9.i77.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %len9.i77.i.i.i, align 4
  %add.i78.i.i.i = add i32 %45, 48
  store i32 %add.i78.i.i.i, ptr %len9.i77.i.i.i, align 4
  %46 = ptrtoint ptr %submode18.i.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %submode18.i.i.i, align 2
  %48 = and i8 %47, 1
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 3
  %49 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 3, i32 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %48, ptr %49, align 4
  %idxprom.i.i.i = zext i8 %48 to i32
  %arrayidx25.i.i.i = getelementptr [4 x i8], ptr @cxgbit_digest_len, i32 0, i32 %idxprom.i.i.i
  %51 = ptrtoint ptr %arrayidx25.i.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx25.i.i.i, align 1
  %conv26.i.i.i = zext i8 %52 to i32
  %extra_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 3, i32 8
  %53 = ptrtoint ptr %extra_len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %conv26.i.i.i, ptr %extra_len.i.i.i, align 4
  %54 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %cb.i.i.i, align 8
  %56 = or i8 %55, 1
  store i8 %56, ptr %cb.i.i.i, align 8
  %57 = call ptr @memset(ptr %add.ptr.i62.i.i.i, i32 0, i32 48)
  %58 = load i8, ptr %cb.i.i.i, align 8
  %59 = or i8 %58, 4
  store i8 %59, ptr %cb.i.i.i, align 8
  %60 = load i8, ptr %submode18.i.i.i, align 2
  %61 = and i8 %60, 2
  %62 = load i8, ptr %49, align 4
  %or24152.i.i = or i8 %62, %61
  store i8 %or24152.i.i, ptr %49, align 4
  %idxprom.i.i = zext i8 %or24152.i.i to i32
  %arrayidx29.i.i = getelementptr [4 x i8], ptr @cxgbit_digest_len, i32 0, i32 %idxprom.i.i
  %63 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx29.i.i, align 1
  %conv30.i.i = zext i8 %64 to i32
  %reass.add.i.i = add nuw nsw i32 %conv30.i.i, 48
  %reass.mul.i.i = mul i32 %reass.add.i.i, %32
  %add34.i.i = add i32 %reass.mul.i.i, -48
  store i32 %add34.i.i, ptr %extra_len.i.i.i, align 4
  %65 = call ptr @memset(ptr %datain.i.i, i32 0, i32 128)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_data.0166.i.i)
  %tobool37.not.i.i = icmp eq i32 %tx_data.0166.i.i, 0
  %spec.select160.i.i = zext i1 %tobool37.not.i.i to i8
  %sub44.i.i = sub i32 %data_length.0165.i.i, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub44.i.i)
  %tobool45.not.i.i = icmp eq i32 %sub44.i.i, 0
  br i1 %tobool45.not.i.i, label %if.then46.i.i, label %if.end16.i.i.if.end56.i.i_crit_edge

if.end16.i.i.if.end56.i.i_crit_edge:              ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56.i.i

if.then46.i.i:                                    ; preds = %if.end16.i.i
  %66 = or i8 %spec.select160.i.i, 2
  br i1 %tobool.not.i.i, label %if.then52.i.i, label %if.then46.i.i.if.end56.i.i_crit_edge

if.then46.i.i.if.end56.i.i_crit_edge:             ; preds = %if.then46.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56.i.i

if.then52.i.i:                                    ; preds = %if.then46.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %67 = ptrtoint ptr %datain.i.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 1, ptr %datain.i.i, align 128
  %68 = ptrtoint ptr %sess.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %sess.i.i, align 4
  call void @iscsit_increment_maxcmdsn(ptr noundef %cmd, ptr noundef %69) #10
  %70 = ptrtoint ptr %stat_sn.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %stat_sn.i.i, align 32
  %inc.i.i = add i32 %71, 1
  store i32 %inc.i.i, ptr %stat_sn.i.i, align 32
  %72 = ptrtoint ptr %stat_sn54.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %stat_sn54.i.i, align 16
  br label %if.end56.i.i

if.end56.i.i:                                     ; preds = %if.then52.i.i, %if.then46.i.i.if.end56.i.i_crit_edge, %if.end16.i.i.if.end56.i.i_crit_edge
  %iso_info.sroa.0.2.i.i = phi i8 [ %66, %if.then52.i.i ], [ %66, %if.then46.i.i.if.end56.i.i_crit_edge ], [ %spec.select160.i.i, %if.end16.i.i.if.end56.i.i_crit_edge ]
  %set_statsn.1.off0.i.i = phi i1 [ true, %if.then52.i.i ], [ %set_statsn.0.off0167.i.i, %if.then46.i.i.if.end56.i.i_crit_edge ], [ %set_statsn.0.off0167.i.i, %if.end16.i.i.if.end56.i.i_crit_edge ]
  %add58.i.i = add i32 %33, 48
  %73 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %49, align 4
  %75 = ptrtoint ptr %data.i61.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %data.i61.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %76, i32 -32
  store ptr %add.ptr.i.i.i.i, ptr %data.i61.i.i.i, align 4
  %77 = ptrtoint ptr %len9.i77.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %len9.i77.i.i.i, align 4
  %add.i.i.i.i = add i32 %78, 32
  store i32 %add.i.i.i.i, ptr %len9.i77.i.i.i, align 4
  %trunc.i.i.i = zext i8 %iso_info.sroa.0.2.i.i to i24
  %rev.i.i.i = call i24 @llvm.bitreverse.i24(i24 %trunc.i.i.i) #10
  %mask.i.i.i = and i24 %rev.i.i.i, -4194304
  %or.i.i.i = zext i24 %mask.i.i.i to i32
  %trunc50.i.i.i = zext i8 %74 to i21
  %rev51.i.i.i = call i21 @llvm.bitreverse.i21(i21 %trunc50.i.i.i) #10
  %mask52.i.i.i = and i21 %rev51.i.i.i, -524288
  %or13.i.i.i = zext i21 %mask52.i.i.i to i32
  %or17.i.i.i = or i32 %or.i.i.i, %or13.i.i.i
  %or22.i.i.i = or i32 %or17.i.i.i, 520224768
  %79 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %or22.i.i.i, ptr %add.ptr.i.i.i.i, align 4
  %ahs_len.i.i.i = getelementptr i8, ptr %76, i32 -27
  %80 = ptrtoint ptr %ahs_len.i.i.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %ahs_len.i.i.i, align 1
  %mpdu24.i.i.i = getelementptr i8, ptr %76, i32 -26
  %81 = ptrtoint ptr %mpdu24.i.i.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %conv23.i.i.i, ptr %mpdu24.i.i.i, align 2
  %sub26.i.i.i = add i32 %mul.i.i, 3
  %div2746.i.i.i = lshr i32 %sub26.i.i.i, 2
  %burst_size.i.i.i = getelementptr i8, ptr %76, i32 -24
  %82 = ptrtoint ptr %burst_size.i.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %div2746.i.i.i, ptr %burst_size.i.i.i, align 4
  %len28.i.i.i = getelementptr i8, ptr %76, i32 -20
  %83 = ptrtoint ptr %len28.i.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %add58.i.i, ptr %len28.i.i.i, align 4
  %reserved2_seglen_offset.i.i.i = getelementptr i8, ptr %76, i32 -16
  %84 = call ptr @memset(ptr %reserved2_seglen_offset.i.i.i, i32 0, i32 16)
  %85 = ptrtoint ptr %len9.i77.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %len9.i77.i.i.i, align 4
  %sub.i.i.i.i = add i32 %86, -32
  store i32 %sub.i.i.i.i, ptr %len9.i77.i.i.i, align 4
  %87 = ptrtoint ptr %data_len.i.i72.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %data_len.i.i72.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i.i, i32 %88)
  %cmp.i.i.i.i = icmp ult i32 %sub.i.i.i.i, %88
  br i1 %cmp.i.i.i.i, label %do.body4.i.i.i.i, label %cxgbit_cpl_tx_data_iso.exit.i.i, !prof !168

do.body4.i.i.i.i:                                 ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #10, !srcloc !174
  unreachable

cxgbit_cpl_tx_data_iso.exit.i.i:                  ; preds = %if.end56.i.i
  %89 = ptrtoint ptr %data.i61.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %data.i61.i.i.i, align 4
  %add.ptr.i49.i.i.i = getelementptr i8, ptr %90, i32 32
  store ptr %add.ptr.i49.i.i.i, ptr %data.i61.i.i.i, align 4
  %91 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %tx_data.0166.i.i, ptr %offset.i.i, align 4
  %92 = ptrtoint ptr %data_sn.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %data_sn.i.i, align 4
  %sub59.i.i = add i32 %93, -1
  %94 = ptrtoint ptr %data_sn60.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %sub59.i.i, ptr %data_sn60.i.i, align 4
  call void @iscsit_build_datain_pdu(ptr noundef %cmd, ptr noundef %20, ptr noundef nonnull %datain.i.i, ptr noundef %add.ptr.i49.i.i.i, i1 noundef zeroext %set_statsn.1.off0.i.i) #10
  %call63.i.i = call fastcc i32 @cxgbit_map_skb(ptr noundef %cmd, ptr noundef nonnull %call.i.i.i.i, i32 noundef %tx_data.0166.i.i, i32 noundef %33) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.i.i)
  %tobool64.not.i.i = icmp eq i32 %call63.i.i, 0
  br i1 %tobool64.not.i.i, label %if.end72.i.i, label %if.then71.i.i, !prof !171

if.then71.i.i:                                    ; preds = %cxgbit_cpl_tx_data_iso.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__kfree_skb(ptr noundef nonnull %call.i.i.i.i) #10
  br label %cxgbit_tx_datain_iso.exit.i

if.end72.i.i:                                     ; preds = %cxgbit_cpl_tx_data_iso.exit.i.i
  %call73.i.i = call fastcc i32 @cxgbit_queue_skb(ptr noundef %1, ptr noundef nonnull %call.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73.i.i)
  %tobool74.not.i.i = icmp eq i32 %call73.i.i, 0
  br i1 %tobool74.not.i.i, label %if.end82.i.i, label %if.end72.i.i.cxgbit_tx_datain_iso.exit.i_crit_edge, !prof !171

if.end72.i.i.cxgbit_tx_datain_iso.exit.i_crit_edge: ; preds = %if.end72.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbit_tx_datain_iso.exit.i

if.end82.i.i:                                     ; preds = %if.end72.i.i
  %add83.i.i = add i32 %33, %tx_data.0166.i.i
  %95 = ptrtoint ptr %read_data_done.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %read_data_done.i.i, align 4
  %add85.i.i = add i32 %96, %33
  store i32 %add85.i.i, ptr %read_data_done.i.i, align 4
  %97 = ptrtoint ptr %data_sn.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %data_sn.i.i, align 4
  %add87.i.i = add i32 %98, %32
  store i32 %add87.i.i, ptr %data_sn.i.i, align 4
  br i1 %tobool45.not.i.i, label %if.end82.i.i.while.end.i.i_crit_edge, label %if.end82.i.i.while.body.i.i_crit_edge

if.end82.i.i.while.body.i.i_crit_edge:            ; preds = %if.end82.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

if.end82.i.i.while.end.i.i_crit_edge:             ; preds = %if.end82.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %if.end82.i.i.while.end.i.i_crit_edge, %if.then.i.while.end.i.i_crit_edge
  %99 = ptrtoint ptr %dr to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 1, ptr %dr, align 128
  br label %cxgbit_tx_datain_iso.exit.i

cxgbit_tx_datain_iso.exit.i:                      ; preds = %while.end.i.i, %if.end72.i.i.cxgbit_tx_datain_iso.exit.i_crit_edge, %if.then71.i.i, %while.body.i.i.cxgbit_tx_datain_iso.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %while.end.i.i ], [ -1, %if.then71.i.i ], [ -12, %while.body.i.i.cxgbit_tx_datain_iso.exit.i_crit_edge ], [ -1, %if.end72.i.i.cxgbit_tx_datain_iso.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %datain.i.i) #10
  br label %return

if.end.i:                                         ; preds = %land.lhs.true6.i.if.end.i_crit_edge, %land.lhs.true4.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %if.then.if.end.i_crit_edge
  %call.i.i.i.i.i = tail call ptr @__alloc_skb(i32 noundef 140, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %tobool12.not.i.i.i.i = icmp eq ptr %call.i.i.i.i.i, null
  br i1 %tobool12.not.i.i.i.i, label %if.end.i.return_crit_edge, label %if.end14.i.i.i.i

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end14.i.i.i.i:                                 ; preds = %if.end.i
  %data.i61.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 19
  %100 = ptrtoint ptr %data.i61.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %data.i61.i.i.i.i, align 4
  %add.ptr.i62.i.i.i.i = getelementptr i8, ptr %101, i32 92
  store ptr %add.ptr.i62.i.i.i.i, ptr %data.i61.i.i.i.i, align 4
  %tail.i63.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 16
  %102 = ptrtoint ptr %tail.i63.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %tail.i63.i.i.i.i, align 8
  %add.ptr1.i64.i.i.i.i = getelementptr i8, ptr %103, i32 92
  store ptr %add.ptr1.i64.i.i.i.i, ptr %tail.i63.i.i.i.i, align 8
  %head.i66.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 18
  %104 = ptrtoint ptr %head.i66.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %head.i66.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i67.i.i.i.i = ptrtoint ptr %add.ptr.i62.i.i.i.i to i32
  %sub.ptr.rhs.cast.i68.i.i.i.i = ptrtoint ptr %105 to i32
  %sub.ptr.sub.i69.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i67.i.i.i.i, %sub.ptr.rhs.cast.i68.i.i.i.i
  %conv.i70.i.i.i.i = trunc i32 %sub.ptr.sub.i69.i.i.i.i to i16
  %transport_header.i71.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 15, i32 0, i32 19
  %106 = ptrtoint ptr %transport_header.i71.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %conv.i70.i.i.i.i, ptr %transport_header.i71.i.i.i.i, align 2
  %data_len.i.i72.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 7
  %107 = ptrtoint ptr %data_len.i.i72.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %data_len.i.i72.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool.i.not.i73.i.i.i.i = icmp eq i32 %108, 0
  br i1 %tobool.i.not.i73.i.i.i.i, label %if.end.i.i, label %do.body3.i74.i.i.i.i, !prof !171

do.body3.i74.i.i.i.i:                             ; preds = %if.end14.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #10, !srcloc !173
  unreachable

if.end.i.i:                                       ; preds = %if.end14.i.i.i.i
  %add.ptr.i76.i.i.i.i = getelementptr i8, ptr %103, i32 140
  %109 = ptrtoint ptr %tail.i63.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %add.ptr.i76.i.i.i.i, ptr %tail.i63.i.i.i.i, align 8
  %len9.i77.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 6
  %110 = ptrtoint ptr %len9.i77.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %len9.i77.i.i.i.i, align 4
  %add.i78.i.i.i.i = add i32 %111, 48
  store i32 %add.i78.i.i.i.i, ptr %len9.i77.i.i.i.i, align 4
  %submode18.i.i.i.i = getelementptr inbounds %struct.cxgbit_sock, ptr %1, i32 0, i32 44
  %112 = ptrtoint ptr %submode18.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %submode18.i.i.i.i, align 2
  %114 = and i8 %113, 1
  %cb.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 3
  %115 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 3, i32 4
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %114, ptr %115, align 4
  %idxprom.i.i.i.i = zext i8 %114 to i32
  %arrayidx25.i.i.i.i = getelementptr [4 x i8], ptr @cxgbit_digest_len, i32 0, i32 %idxprom.i.i.i.i
  %117 = ptrtoint ptr %arrayidx25.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx25.i.i.i.i, align 1
  %conv26.i.i.i.i = zext i8 %118 to i32
  %extra_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 3, i32 8
  %119 = ptrtoint ptr %extra_len.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %conv26.i.i.i.i, ptr %extra_len.i.i.i.i, align 4
  %120 = ptrtoint ptr %cb.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %cb.i.i.i.i, align 8
  %122 = or i8 %121, 1
  store i8 %122, ptr %cb.i.i.i.i, align 8
  %pdu.i.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 47
  %123 = call ptr @memcpy(ptr %add.ptr.i62.i.i.i.i, ptr %pdu.i.i, i32 48)
  %length.i.i = getelementptr inbounds %struct.iscsi_datain, ptr %buf, i32 0, i32 2
  %124 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %length.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool4.not.i.i = icmp eq i32 %125, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.if.end16.i26.i_crit_edge, label %if.then5.i.i

if.end.i.i.if.end16.i26.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i26.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %126 = ptrtoint ptr %submode18.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %submode18.i.i.i.i, align 2
  %128 = and i8 %127, 2
  %129 = ptrtoint ptr %115 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %115, align 4
  %or37.i.i = or i8 %130, %128
  store i8 %or37.i.i, ptr %115, align 4
  %idxprom.i24.i = zext i8 %or37.i.i to i32
  %arrayidx12.i.i = getelementptr [4 x i8], ptr @cxgbit_digest_len, i32 0, i32 %idxprom.i24.i
  %131 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %arrayidx12.i.i, align 1
  %conv13.i.i = zext i8 %132 to i32
  %133 = ptrtoint ptr %extra_len.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %conv13.i.i, ptr %extra_len.i.i.i.i, align 4
  br label %if.end16.i26.i

if.end16.i26.i:                                   ; preds = %if.then5.i.i, %if.end.i.i.if.end16.i26.i_crit_edge
  %offset.i25.i = getelementptr inbounds %struct.iscsi_datain, ptr %buf, i32 0, i32 3
  %134 = ptrtoint ptr %offset.i25.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %offset.i25.i, align 4
  %136 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %length.i.i, align 8
  %call18.i.i = tail call fastcc i32 @cxgbit_map_skb(ptr noundef %cmd, ptr noundef nonnull %call.i.i.i.i.i, i32 noundef %135, i32 noundef %137) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i)
  %cmp.i.i = icmp slt i32 %call18.i.i, 0
  br i1 %cmp.i.i, label %if.then20.i.i, label %if.end21.i.i

if.then20.i.i:                                    ; preds = %if.end16.i26.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__kfree_skb(ptr noundef nonnull %call.i.i.i.i.i) #10
  br label %return

if.end21.i.i:                                     ; preds = %if.end16.i26.i
  call void @__sanitizer_cov_trace_pc() #12
  %call22.i.i = tail call fastcc i32 @cxgbit_queue_skb(ptr noundef %1, ptr noundef nonnull %call.i.i.i.i.i) #10
  br label %return

if.else:                                          ; preds = %entry
  %sub.i7 = sub i32 0, %buf_len
  %and.i8 = and i32 %sub.i7, 3
  %add.i = add i32 %and.i8, %buf_len
  %call.i = tail call fastcc ptr @cxgbit_alloc_skb(ptr noundef %1, i32 noundef %add.i) #10
  %tobool.not.i9 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i9, label %if.else.return_crit_edge, label %if.end.i10, !prof !168

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end.i10:                                       ; preds = %if.else
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %138 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %data.i, align 4
  %pdu.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 47
  %140 = call ptr @memcpy(ptr %139, ptr %pdu.i, i32 48)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf_len)
  %tobool4.not.i = icmp eq i32 %buf_len, 0
  br i1 %tobool4.not.i, label %if.end.i10.if.end12.i_crit_edge, label %if.then5.i

if.end.i10.if.end12.i_crit_edge:                  ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i

if.then5.i:                                       ; preds = %if.end.i10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pad_bytes.i) #10
  %141 = ptrtoint ptr %pad_bytes.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 0, ptr %pad_bytes.i, align 4
  %call6.i = tail call i32 @skb_store_bits(ptr noundef nonnull %call.i, i32 noundef 48, ptr noundef %buf, i32 noundef %buf_len) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8)
  %tobool7.not.i11 = icmp eq i32 %and.i8, 0
  br i1 %tobool7.not.i11, label %if.then5.i.if.end11.i_crit_edge, label %if.then8.i

if.then5.i.if.end11.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i

if.then8.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  %add9.i = add i32 %buf_len, 48
  %call10.i = call i32 @skb_store_bits(ptr noundef nonnull %call.i, i32 noundef %add9.i, ptr noundef nonnull %pad_bytes.i, i32 noundef %and.i8) #10
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then8.i, %if.then5.i.if.end11.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pad_bytes.i) #10
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.end11.i, %if.end.i10.if.end12.i_crit_edge
  %142 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3, i32 4
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %142, align 4
  %idxprom.i = zext i8 %144 to i32
  %arrayidx13.i = getelementptr [4 x i8], ptr @cxgbit_digest_len, i32 0, i32 %idxprom.i
  %145 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %arrayidx13.i, align 1
  %conv.i = zext i8 %146 to i32
  %extra_len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3, i32 8
  %147 = ptrtoint ptr %extra_len.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %conv.i, ptr %extra_len.i, align 4
  %call16.i = call fastcc i32 @cxgbit_queue_skb(ptr noundef %1, ptr noundef nonnull %call.i) #10
  br label %return

return:                                           ; preds = %if.end12.i, %if.else.return_crit_edge, %if.end21.i.i, %if.then20.i.i, %if.end.i.return_crit_edge, %cxgbit_tx_datain_iso.exit.i
  %retval.0 = phi i32 [ %retval.0.i.i, %cxgbit_tx_datain_iso.exit.i ], [ %call18.i.i, %if.then20.i.i ], [ %call22.i.i, %if.end21.i.i ], [ -12, %if.end.i.return_crit_edge ], [ %call16.i, %if.end12.i ], [ -12, %if.else.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgbit_validate_params(ptr noundef %conn) local_unnamed_addr #0 align 64 {
entry:
  %max_xmitdsl = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 64
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max_xmitdsl) #10
  %4 = ptrtoint ptr %max_xmitdsl to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %max_xmitdsl, align 4, !annotation !175
  %param_list = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 62
  %5 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %param_list, align 4
  %call = tail call ptr @iscsi_find_param_from_key(ptr noundef nonnull @.str.6, ptr noundef %6) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %value = getelementptr inbounds %struct.iscsi_param, ptr %call, i32 0, i32 1
  %7 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %value, align 4
  %call.i = call i32 @kstrtouint(ptr noundef %8, i32 noundef 0, ptr noundef nonnull %max_xmitdsl) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %9 = ptrtoint ptr %max_xmitdsl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_xmitdsl, align 4
  %mdsl = getelementptr inbounds %struct.cxgbit_device, ptr %3, i32 0, i32 6
  %11 = ptrtoint ptr %mdsl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mdsl, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp5 = icmp ugt i32 %10, %12
  br i1 %cmp5, label %if.then6, label %if.end4.if.end12_crit_edge

if.end4.if.end12_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then6:                                         ; preds = %if.end4
  %call8 = call i32 (ptr, ptr, ...) @iscsi_change_param_sprintf(ptr noundef %conn, ptr noundef nonnull @.str.7, i32 noundef %12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then6.if.end12_crit_edge, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then6.if.end12_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.end12:                                         ; preds = %if.then6.if.end12_crit_edge, %if.end4.if.end12_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ -1, %if.then6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_xmitdsl) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsi_find_param_from_key(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_change_param_sprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgbit_put_login_tx(ptr noundef %conn, ptr noundef %login, i32 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  %erl.i = alloca i8, align 1
  %padding_buf = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 64
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %padding_buf) #10
  %2 = ptrtoint ptr %padding_buf to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %padding_buf, align 4
  %3 = trunc i32 %length to i8
  %4 = sub i8 0, %3
  %conv = and i8 %4, 3
  %conv1 = zext i8 %conv to i32
  %add = add i32 %conv1, %length
  %call = tail call fastcc ptr @cxgbit_alloc_skb(ptr noundef %1, i32 noundef %add)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %rsp = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 18
  %call2 = tail call i32 @skb_store_bits(ptr noundef nonnull %call, i32 noundef 0, ptr noundef %rsp, i32 noundef 48) #10
  %rsp_buf = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 20
  %5 = ptrtoint ptr %rsp_buf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rsp_buf, align 8
  %call3 = tail call i32 @skb_store_bits(ptr noundef nonnull %call, i32 noundef 48, ptr noundef %6, i32 noundef %length) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %tobool4.not = icmp eq i8 %conv, 0
  br i1 %tobool4.not, label %if.end.if.end9_crit_edge, label %if.then5

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %add6 = add i32 %length, 48
  %call8 = call i32 @skb_store_bits(ptr noundef nonnull %call, i32 noundef %add6, ptr noundef nonnull %padding_buf, i32 noundef %conv1) #10
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end.if.end9_crit_edge
  %login_complete = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 7
  %7 = ptrtoint ptr %login_complete to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %login_complete, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool10.not = icmp eq i8 %8, 0
  br i1 %tobool10.not, label %if.end9.if.end16_crit_edge, label %if.then11

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then11:                                        ; preds = %if.end9
  %9 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %context, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %iscsi_ppm.i = getelementptr inbounds %struct.cxgbit_device, ptr %12, i32 0, i32 1, i32 39
  %13 = ptrtoint ptr %iscsi_ppm.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %iscsi_ppm.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %conn_ops4.i = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 59
  %17 = ptrtoint ptr %conn_ops4.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %conn_ops4.i, align 16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %erl.i) #10
  %19 = ptrtoint ptr %erl.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -1, ptr %erl.i, align 1, !annotation !175
  %MaxRecvDataSegmentLength.i = getelementptr inbounds %struct.iscsi_conn_ops, ptr %18, i32 0, i32 2
  %20 = ptrtoint ptr %MaxRecvDataSegmentLength.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %MaxRecvDataSegmentLength.i, align 4
  %mdsl.i = getelementptr inbounds %struct.cxgbit_device, ptr %12, i32 0, i32 6
  %22 = ptrtoint ptr %mdsl.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mdsl.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp.i = icmp ugt i32 %21, %23
  br i1 %cmp.i, label %if.then.i, label %if.then11.if.end.i_crit_edge

if.then11.if.end.i_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %MaxRecvDataSegmentLength.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %MaxRecvDataSegmentLength.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then11.if.end.i_crit_edge
  %conn1.i.i = getelementptr inbounds %struct.cxgbit_sock, ptr %10, i32 0, i32 2
  %25 = ptrtoint ptr %conn1.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %conn1.i.i, align 4
  %param_list.i.i = getelementptr inbounds %struct.iscsi_conn, ptr %26, i32 0, i32 62
  %27 = ptrtoint ptr %param_list.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %param_list.i.i, align 4
  %call.i.i = call ptr @iscsi_find_param_from_key(ptr noundef nonnull @.str.13, ptr noundef %28) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.13) #13
  br label %if.then14

if.end.i.i:                                       ; preds = %if.end.i
  %value.i.i = getelementptr inbounds %struct.iscsi_param, ptr %call.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %value.i.i, align 4
  %call3.i.i = call i32 @strcmp(ptr noundef %30, ptr noundef nonnull dereferenceable(7) @.str.15) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.then5.i.i, label %if.end.i.i.if.end7.i.i_crit_edge

if.end.i.i.if.end7.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %submode.i.i = getelementptr inbounds %struct.cxgbit_sock, ptr %10, i32 0, i32 44
  %31 = ptrtoint ptr %submode.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %submode.i.i, align 2
  %33 = or i8 %32, 1
  store i8 %33, ptr %submode.i.i, align 2
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.then5.i.i, %if.end.i.i.if.end7.i.i_crit_edge
  %34 = ptrtoint ptr %param_list.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %param_list.i.i, align 4
  %call9.i.i = call ptr @iscsi_find_param_from_key(ptr noundef nonnull @.str.16, ptr noundef %35) #10
  %tobool10.not.i.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool10.not.i.i, label %if.then11.i.i, label %if.end18.i.i

if.then11.i.i:                                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %submode12.i.i = getelementptr inbounds %struct.cxgbit_sock, ptr %10, i32 0, i32 44
  %36 = ptrtoint ptr %submode12.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %submode12.i.i, align 2
  %call17.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.16) #13
  br label %if.then14

if.end18.i.i:                                     ; preds = %if.end7.i.i
  %value19.i.i = getelementptr inbounds %struct.iscsi_param, ptr %call9.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %value19.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %value19.i.i, align 4
  %call20.i.i = call i32 @strcmp(ptr noundef %38, ptr noundef nonnull dereferenceable(7) @.str.15) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i)
  %tobool21.not.i.i = icmp eq i32 %call20.i.i, 0
  br i1 %tobool21.not.i.i, label %if.then22.i.i, label %if.end18.i.i.if.end27.i.i_crit_edge

if.end18.i.i.if.end27.i.i_crit_edge:              ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27.i.i

if.then22.i.i:                                    ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %submode23.i.i = getelementptr inbounds %struct.cxgbit_sock, ptr %10, i32 0, i32 44
  %39 = ptrtoint ptr %submode23.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %submode23.i.i, align 2
  %41 = or i8 %40, 2
  store i8 %41, ptr %submode23.i.i, align 2
  br label %if.end27.i.i

if.end27.i.i:                                     ; preds = %if.then22.i.i, %if.end18.i.i.if.end27.i.i_crit_edge
  %call28.i.i = call i32 @cxgbit_setup_conn_digest(ptr noundef %10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i.i)
  %tobool29.not.i.i = icmp eq i32 %call28.i.i, 0
  br i1 %tobool29.not.i.i, label %if.end8.i, label %if.then30.i.i

if.then30.i.i:                                    ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %submode31.i.i = getelementptr inbounds %struct.cxgbit_sock, ptr %10, i32 0, i32 44
  %42 = ptrtoint ptr %submode31.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %submode31.i.i, align 2
  br label %if.then14

if.end8.i:                                        ; preds = %if.end27.i.i
  %login.i = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 41
  %43 = ptrtoint ptr %login.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %login.i, align 8
  %leading_connection.i = getelementptr inbounds %struct.iscsi_login, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %leading_connection.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %leading_connection.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool9.not.i = icmp eq i8 %46, 0
  br i1 %tobool9.not.i, label %if.else.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.end8.i
  %param_list.i = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 62
  %47 = ptrtoint ptr %param_list.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %param_list.i, align 4
  %call11.i = call ptr @iscsi_find_param_from_key(ptr noundef nonnull @.str.10, ptr noundef %48) #10
  %tobool12.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool12.not.i, label %do.end.i, label %if.end15.i

do.end.i:                                         ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10) #13
  br label %if.then14

if.end15.i:                                       ; preds = %if.then10.i
  %value.i = getelementptr inbounds %struct.iscsi_param, ptr %call11.i, i32 0, i32 1
  %49 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %value.i, align 4
  %call16.i = call i32 @kstrtou8(ptr noundef %50, i32 noundef 0, ptr noundef nonnull %erl.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp17.i = icmp slt i32 %call16.i, 0
  br i1 %cmp17.i, label %if.end15.i.if.then14_crit_edge, label %if.end20thread-pre-split.i

if.end15.i.if.then14_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14

if.else.i:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %sess.i = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 68
  %51 = ptrtoint ptr %sess.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %sess.i, align 4
  %sess_ops.i = getelementptr inbounds %struct.iscsi_session, ptr %52, i32 0, i32 47
  %53 = ptrtoint ptr %sess_ops.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sess_ops.i, align 8
  %ErrorRecoveryLevel.i = getelementptr inbounds %struct.iscsi_sess_ops, ptr %54, i32 0, i32 16
  %55 = ptrtoint ptr %ErrorRecoveryLevel.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %ErrorRecoveryLevel.i, align 4
  %57 = ptrtoint ptr %erl.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %erl.i, align 1
  br label %if.end20.i

if.end20thread-pre-split.i:                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %erl.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %.pr.i = load i8, ptr %erl.i, align 1
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.end20thread-pre-split.i, %if.else.i
  %59 = phi i8 [ %.pr.i, %if.end20thread-pre-split.i ], [ %56, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool21.not.i = icmp eq i8 %59, 0
  br i1 %tobool21.not.i, label %if.then22.i, label %if.end20.i.if.end15_crit_edge

if.end20.i.if.end15_crit_edge:                    ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then22.i:                                      ; preds = %if.end20.i
  %60 = ptrtoint ptr %conn1.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %conn1.i.i, align 4
  %login.i.i = getelementptr inbounds %struct.iscsi_conn, ptr %61, i32 0, i32 41
  %62 = ptrtoint ptr %login.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %login.i.i, align 8
  %leading_connection.i.i = getelementptr inbounds %struct.iscsi_login, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %leading_connection.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %leading_connection.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool.not.i83.i = icmp eq i8 %65, 0
  br i1 %tobool.not.i83.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then22.i
  %param_list.i84.i = getelementptr inbounds %struct.iscsi_conn, ptr %61, i32 0, i32 62
  %66 = ptrtoint ptr %param_list.i84.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %param_list.i84.i, align 4
  %call.i85.i = call ptr @iscsi_find_param_from_key(ptr noundef nonnull @.str.19, ptr noundef %67) #10
  %tobool2.not.i.i = icmp eq ptr %call.i85.i, null
  br i1 %tobool2.not.i.i, label %do.end.i86.i, label %if.end.i88.i

do.end.i86.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.19) #13
  br label %if.then14

if.end.i88.i:                                     ; preds = %if.then.i.i
  %value.i87.i = getelementptr inbounds %struct.iscsi_param, ptr %call.i85.i, i32 0, i32 1
  %68 = ptrtoint ptr %value.i87.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %value.i87.i, align 4
  %call5.i.i = call i32 @strcmp(ptr noundef %69, ptr noundef nonnull dereferenceable(4) @.str.21) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end8.i.i, label %if.end.i88.i.if.then28.i_crit_edge

if.end.i88.i.if.then28.i_crit_edge:               ; preds = %if.end.i88.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28.i

if.end8.i.i:                                      ; preds = %if.end.i88.i
  %70 = ptrtoint ptr %param_list.i84.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %param_list.i84.i, align 4
  %call10.i.i = call ptr @iscsi_find_param_from_key(ptr noundef nonnull @.str.22, ptr noundef %71) #10
  %tobool11.not.i.i = icmp eq ptr %call10.i.i, null
  br i1 %tobool11.not.i.i, label %do.end15.i.i, label %if.end18.i93.i

do.end15.i.i:                                     ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call17.i89.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.22) #13
  br label %if.then14

if.end18.i93.i:                                   ; preds = %if.end8.i.i
  %value19.i90.i = getelementptr inbounds %struct.iscsi_param, ptr %call10.i.i, i32 0, i32 1
  %72 = ptrtoint ptr %value19.i90.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %value19.i90.i, align 4
  %call20.i91.i = call i32 @strcmp(ptr noundef %73, ptr noundef nonnull dereferenceable(4) @.str.21) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i91.i)
  %tobool21.not.i92.i = icmp eq i32 %call20.i91.i, 0
  br i1 %tobool21.not.i92.i, label %if.end18.i93.i.if.end35.i_crit_edge, label %if.end18.i93.i.if.then28.i_crit_edge

if.end18.i93.i.if.then28.i_crit_edge:             ; preds = %if.end18.i93.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28.i

if.end18.i93.i.if.end35.i_crit_edge:              ; preds = %if.end18.i93.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35.i

if.else.i.i:                                      ; preds = %if.then22.i
  %sess.i.i = getelementptr inbounds %struct.iscsi_conn, ptr %61, i32 0, i32 68
  %74 = ptrtoint ptr %sess.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %sess.i.i, align 4
  %sess_ops.i.i = getelementptr inbounds %struct.iscsi_session, ptr %75, i32 0, i32 47
  %76 = ptrtoint ptr %sess_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %sess_ops.i.i, align 8
  %DataSequenceInOrder.i.i = getelementptr inbounds %struct.iscsi_sess_ops, ptr %77, i32 0, i32 15
  %78 = ptrtoint ptr %DataSequenceInOrder.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %DataSequenceInOrder.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool24.not.i.i = icmp eq i8 %79, 0
  br i1 %tobool24.not.i.i, label %if.else.i.i.if.then28.i_crit_edge, label %if.end26.i.i

if.else.i.i.if.then28.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28.i

if.end26.i.i:                                     ; preds = %if.else.i.i
  %DataPDUInOrder.i.i = getelementptr inbounds %struct.iscsi_sess_ops, ptr %77, i32 0, i32 14
  %80 = ptrtoint ptr %DataPDUInOrder.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %DataPDUInOrder.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool29.not.i94.i = icmp eq i8 %81, 0
  br i1 %tobool29.not.i94.i, label %if.end26.i.i.if.then28.i_crit_edge, label %if.end26.i.i.if.end35.i_crit_edge

if.end26.i.i.if.end35.i_crit_edge:                ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35.i

if.end26.i.i.if.then28.i_crit_edge:               ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28.i

if.then28.i:                                      ; preds = %if.end26.i.i.if.then28.i_crit_edge, %if.else.i.i.if.then28.i_crit_edge, %if.end18.i93.i.if.then28.i_crit_edge, %if.end.i88.i.if.then28.i_crit_edge
  %adapter_type.i = getelementptr inbounds %struct.cxgbit_device, ptr %12, i32 0, i32 1, i32 13
  %82 = ptrtoint ptr %adapter_type.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %adapter_type.i, align 4
  %84 = and i8 %83, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %84)
  %cmp.i.not.i = icmp eq i8 %84, 80
  br i1 %cmp.i.not.i, label %if.then28.i.enable_ddp.i_crit_edge, label %if.then28.i.if.end15_crit_edge

if.then28.i.if.end15_crit_edge:                   ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then28.i.enable_ddp.i_crit_edge:               ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %enable_ddp.i

if.end35.i:                                       ; preds = %if.end26.i.i.if.end35.i_crit_edge, %if.end18.i93.i.if.end35.i_crit_edge
  %flags.i = getelementptr inbounds %struct.cxgbit_device, ptr %12, i32 0, i32 8
  %85 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %flags.i, align 4
  %87 = and i32 %86, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool37.not.i = icmp eq i32 %87, 0
  br i1 %tobool37.not.i, label %if.end35.i.enable_ddp.i_crit_edge, label %if.then38.i

if.end35.i.enable_ddp.i_crit_edge:                ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %enable_ddp.i

if.then38.i:                                      ; preds = %if.end35.i
  %call39.i = call fastcc i32 @cxgbit_set_iso_npdu(ptr noundef %10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %if.then38.i.enable_ddp.i_crit_edge, label %if.then38.i.if.then14_crit_edge

if.then38.i.if.then14_crit_edge:                  ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14

if.then38.i.enable_ddp.i_crit_edge:               ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %enable_ddp.i

enable_ddp.i:                                     ; preds = %if.then38.i.enable_ddp.i_crit_edge, %if.end35.i.enable_ddp.i_crit_edge, %if.then28.i.enable_ddp.i_crit_edge
  %flags44.i = getelementptr inbounds %struct.cxgbit_device, ptr %12, i32 0, i32 8
  %88 = ptrtoint ptr %flags44.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %flags44.i, align 4
  %90 = and i32 %89, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool46.not.i = icmp eq i32 %90, 0
  br i1 %tobool46.not.i, label %enable_ddp.i.if.end15_crit_edge, label %if.then47.i

enable_ddp.i.if.end15_crit_edge:                  ; preds = %enable_ddp.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then47.i:                                      ; preds = %enable_ddp.i
  %pgsz_idx_dflt.i = getelementptr inbounds %struct.cxgbi_ppm, ptr %16, i32 0, i32 5, i32 1
  %91 = ptrtoint ptr %pgsz_idx_dflt.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %pgsz_idx_dflt.i, align 4
  %conv48.i = zext i8 %92 to i32
  %call49.i = call i32 @cxgbit_setup_conn_pgidx(ptr noundef %10, i32 noundef %conv48.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i)
  %tobool50.not.i = icmp eq i32 %call49.i, 0
  br i1 %tobool50.not.i, label %if.end52.i, label %if.then47.i.if.then14_crit_edge

if.then47.i.if.then14_crit_edge:                  ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14

if.end52.i:                                       ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #12
  %flags54.i = getelementptr inbounds %struct.cxgbit_sock_common, ptr %10, i32 0, i32 5
  call void @_set_bit(i32 noundef 3, ptr noundef %flags54.i) #10
  br label %if.end15

if.then14:                                        ; preds = %if.then47.i.if.then14_crit_edge, %if.then38.i.if.then14_crit_edge, %do.end15.i.i, %do.end.i86.i, %if.end15.i.if.then14_crit_edge, %do.end.i, %if.then30.i.i, %if.then11.i.i, %do.end.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %erl.i) #10
  call void @kfree_skb_reason(ptr noundef nonnull %call, i32 noundef 0) #10
  br label %cleanup

if.end15:                                         ; preds = %if.end52.i, %enable_ddp.i.if.end15_crit_edge, %if.then28.i.if.end15_crit_edge, %if.end20.i.if.end15_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %erl.i) #10
  %flags = getelementptr inbounds %struct.cxgbit_sock_common, ptr %1, i32 0, i32 5
  call void @_set_bit(i32 noundef 2, ptr noundef %flags) #10
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.end9.if.end16_crit_edge
  %call17 = call fastcc i32 @cxgbit_queue_skb(ptr noundef %1, ptr noundef nonnull %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %93 = ptrtoint ptr %login_complete to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %login_complete, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool22.not = icmp eq i8 %94, 0
  br i1 %tobool22.not, label %land.lhs.true, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end20
  %login_failed = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 8
  %95 = ptrtoint ptr %login_failed to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %login_failed, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool23.not = icmp eq i8 %96, 0
  br i1 %tobool23.not, label %if.then24, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then24:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %login_work = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %97 = load ptr, ptr @system_wq, align 4
  %call.i.i48 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %97, ptr noundef %login_work, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %land.lhs.true.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.then14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.then14 ], [ -12, %entry.cleanup_crit_edge ], [ -1, %if.end16.cleanup_crit_edge ], [ 0, %if.then24 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end20.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %padding_buf) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @cxgbit_alloc_skb(ptr nocapture noundef readonly %csk, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  %errcode.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %errcode.i) #10
  %0 = ptrtoint ptr %errcode.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %errcode.i, align 4, !annotation !175
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not.i = icmp eq i32 %len, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %call.i = call ptr @alloc_skb_with_frags(i32 noundef 140, i32 noundef %len, i32 noundef 0, ptr noundef nonnull %errcode.i, i32 noundef 3264) #10
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %if.then.i.__cxgbit_alloc_skb.exit_crit_edge, label %if.end.i

if.then.i.__cxgbit_alloc_skb.exit_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__cxgbit_alloc_skb.exit

if.end.i:                                         ; preds = %if.then.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %1 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 92
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %3 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %4, i32 92
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 18
  %5 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %6 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 19
  %7 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv.i.i, ptr %transport_header.i.i, align 2
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 7
  %8 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool.i.not.i.i, label %__skb_put.exit.i, label %do.body3.i.i, !prof !171

do.body3.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #10, !srcloc !173
  unreachable

__skb_put.exit.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i60.i = getelementptr i8, ptr %4, i32 140
  %10 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr.i60.i, ptr %tail.i.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %11 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len9.i.i, align 4
  %13 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %len, ptr %data_len.i.i.i, align 8
  %add.i.i = add i32 %len, 48
  %add.i = add i32 %add.i.i, %12
  store i32 %add.i, ptr %len9.i.i, align 4
  %submode5.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 44
  %14 = ptrtoint ptr %submode5.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %submode5.i, align 2
  %and.i = and i8 %15, 2
  br label %if.end17.i

if.else.i:                                        ; preds = %entry
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 140, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %tobool12.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool12.not.i, label %if.else.i.__cxgbit_alloc_skb.exit_crit_edge, label %if.end14.i

if.else.i.__cxgbit_alloc_skb.exit_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__cxgbit_alloc_skb.exit

if.end14.i:                                       ; preds = %if.else.i
  %data.i61.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %16 = ptrtoint ptr %data.i61.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i61.i, align 4
  %add.ptr.i62.i = getelementptr i8, ptr %17, i32 92
  store ptr %add.ptr.i62.i, ptr %data.i61.i, align 4
  %tail.i63.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %18 = ptrtoint ptr %tail.i63.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tail.i63.i, align 8
  %add.ptr1.i64.i = getelementptr i8, ptr %19, i32 92
  store ptr %add.ptr1.i64.i, ptr %tail.i63.i, align 8
  %head.i66.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 18
  %20 = ptrtoint ptr %head.i66.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %head.i66.i, align 8
  %sub.ptr.lhs.cast.i67.i = ptrtoint ptr %add.ptr.i62.i to i32
  %sub.ptr.rhs.cast.i68.i = ptrtoint ptr %21 to i32
  %sub.ptr.sub.i69.i = sub i32 %sub.ptr.lhs.cast.i67.i, %sub.ptr.rhs.cast.i68.i
  %conv.i70.i = trunc i32 %sub.ptr.sub.i69.i to i16
  %transport_header.i71.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 19
  %22 = ptrtoint ptr %transport_header.i71.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv.i70.i, ptr %transport_header.i71.i, align 2
  %data_len.i.i72.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %23 = ptrtoint ptr %data_len.i.i72.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %data_len.i.i72.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.i.not.i73.i = icmp eq i32 %24, 0
  br i1 %tobool.i.not.i73.i, label %__skb_put.exit79.i, label %do.body3.i74.i, !prof !171

do.body3.i74.i:                                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #10, !srcloc !173
  unreachable

__skb_put.exit79.i:                               ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i76.i = getelementptr i8, ptr %19, i32 140
  %25 = ptrtoint ptr %tail.i63.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr.i76.i, ptr %tail.i63.i, align 8
  %len9.i77.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %26 = ptrtoint ptr %len9.i77.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len9.i77.i, align 4
  %add.i78.i = add i32 %27, 48
  store i32 %add.i78.i, ptr %len9.i77.i, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %__skb_put.exit79.i, %__skb_put.exit.i
  %skb.0.i = phi ptr [ %call.i, %__skb_put.exit.i ], [ %call.i.i, %__skb_put.exit79.i ]
  %submode.0.i = phi i8 [ %and.i, %__skb_put.exit.i ], [ 0, %__skb_put.exit79.i ]
  %submode18.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 44
  %28 = ptrtoint ptr %submode18.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %submode18.i, align 2
  %30 = and i8 %29, 1
  %or22.i = or i8 %30, %submode.0.i
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 3
  %31 = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 3, i32 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %or22.i, ptr %31, align 4
  %idxprom.i = zext i8 %or22.i to i32
  %arrayidx25.i = getelementptr [4 x i8], ptr @cxgbit_digest_len, i32 0, i32 %idxprom.i
  %33 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx25.i, align 1
  %conv26.i = zext i8 %34 to i32
  %extra_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 3, i32 8
  %35 = ptrtoint ptr %extra_len.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv26.i, ptr %extra_len.i, align 4
  %36 = ptrtoint ptr %cb.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %cb.i, align 8
  %38 = or i8 %37, 1
  store i8 %38, ptr %cb.i, align 8
  br label %__cxgbit_alloc_skb.exit

__cxgbit_alloc_skb.exit:                          ; preds = %if.end17.i, %if.else.i.__cxgbit_alloc_skb.exit_crit_edge, %if.then.i.__cxgbit_alloc_skb.exit_crit_edge
  %retval.1.i = phi ptr [ %skb.0.i, %if.end17.i ], [ null, %if.then.i.__cxgbit_alloc_skb.exit_crit_edge ], [ null, %if.else.i.__cxgbit_alloc_skb.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %errcode.i) #10
  ret ptr %retval.1.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_store_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cxgbit_queue_skb(ptr noundef %csk, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  %backlogq.i = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 17
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %lock_owner = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 19
  %0 = ptrtoint ptr %lock_owner to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %lock_owner, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  %state = getelementptr inbounds %struct.cxgbit_sock_common, ptr %csk, i32 0, i32 4
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %2)
  %cmp.not = icmp eq i32 %2, 3
  br i1 %cmp.not, label %lor.rhs, label %entry.if.then_crit_edge, !prof !171

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.rhs:                                          ; preds = %entry
  %3 = tail call i32 @llvm.read_register.i32(metadata !158) #10
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %stack.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  %11 = and i32 %10, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %lor.rhs.if.then_crit_edge, !prof !171

lor.rhs.if.then_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

signal_pending.exit:                              ; preds = %lor.rhs
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %8, align 4
  %and1.i.i.i.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.not, label %if.end, label %signal_pending.exit.if.then_crit_edge, !prof !171

signal_pending.exit.if.then_crit_edge:            ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %signal_pending.exit.if.then_crit_edge, %lor.rhs.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @__kfree_skb(ptr noundef %skb) #10
  %ppodq = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 8
  tail call fastcc void @__skb_queue_purge(ptr noundef %ppodq)
  br label %unlock

if.end:                                           ; preds = %signal_pending.exit
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  %extra_len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %16 = ptrtoint ptr %extra_len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %extra_len, align 4
  %add = add i32 %17, %15
  %write_seq = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 32
  %18 = ptrtoint ptr %write_seq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %write_seq, align 4
  %add5 = add i32 %add, %19
  store i32 %add5, ptr %write_seq, align 4
  %ppodq6 = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 8
  %txq = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 7
  %20 = ptrtoint ptr %ppodq6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ppodq6, align 4
  %cmp.i.not.i = icmp eq ptr %21, %ppodq6
  br i1 %cmp.i.not.i, label %if.end.skb_queue_splice_tail_init.exit_crit_edge, label %if.then.i

if.end.skb_queue_splice_tail_init.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_queue_splice_tail_init.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 7, i32 0, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i, align 4
  %prev2.i.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 8, i32 0, i32 0, i32 1
  %24 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev2.i.i, align 4
  %prev5.i.i = getelementptr inbounds %struct.anon.51, ptr %21, i32 0, i32 1
  %26 = ptrtoint ptr %prev5.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %23, ptr %prev5.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %21, ptr %23, align 8
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %txq, ptr %25, align 8
  store volatile ptr %25, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 8, i32 1
  %29 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %qlen.i, align 4
  %qlen1.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 7, i32 1
  %31 = ptrtoint ptr %qlen1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %qlen1.i, align 4
  %add.i = add i32 %32, %30
  store i32 %add.i, ptr %qlen1.i, align 4
  %33 = ptrtoint ptr %ppodq6 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %ppodq6, ptr %ppodq6, align 4
  store ptr %ppodq6, ptr %prev2.i.i, align 4
  store i32 0, ptr %qlen.i, align 4
  br label %skb_queue_splice_tail_init.exit

skb_queue_splice_tail_init.exit:                  ; preds = %if.then.i, %if.end.skb_queue_splice_tail_init.exit_crit_edge
  %prev.i.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 7, i32 0, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i, align 4
  %36 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %txq, ptr %skb, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 1
  %37 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %35, ptr %prev10.i.i.i, align 4
  store volatile ptr %skb, ptr %prev.i.i, align 4
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %skb, ptr %35, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 7, i32 1
  %39 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %40, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  tail call void @cxgbit_push_tx_frames(ptr noundef %csk)
  br label %unlock

unlock:                                           ; preds = %skb_queue_splice_tail_init.exit, %if.then
  %ret.0 = phi i32 [ -1, %if.then ], [ 0, %skb_queue_splice_tail_init.exit ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %backlogq.i) #10
  %41 = call ptr @memset(ptr %backlogq.i, i32 255, i32 56)
  %lock.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %backlogq.i, i32 0, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #10
  %42 = ptrtoint ptr %backlogq.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %backlogq.i, ptr %backlogq.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.anon.107, ptr %backlogq.i, i32 0, i32 1
  %43 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %backlogq.i, ptr %prev.i.i.i, align 4
  %qlen.i.i.i22 = getelementptr inbounds %struct.sk_buff_head, ptr %backlogq.i, i32 0, i32 1
  %44 = ptrtoint ptr %qlen.i.i.i22 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %qlen.i.i.i22, align 4
  call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %backlogq1.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 9
  %qlen.i.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 9, i32 1
  %45 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %qlen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not26.i = icmp eq i32 %46, 0
  br i1 %tobool.not26.i, label %unlock.cxgbit_unlock_sock.exit_crit_edge, label %while.body.lr.ph.i

unlock.cxgbit_unlock_sock.exit_crit_edge:         ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbit_unlock_sock.exit

while.body.lr.ph.i:                               ; preds = %unlock
  %prev2.i.i.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 9, i32 0, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %while.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %47 = ptrtoint ptr %backlogq1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %backlogq1.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %48, %backlogq1.i
  br i1 %cmp.i.not.i.i, label %while.body.i.skb_queue_splice_init.exit.i_crit_edge, label %if.then.i.i

while.body.i.skb_queue_splice_init.exit.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_queue_splice_init.exit.i

if.then.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %backlogq.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %backlogq.i, align 4
  %51 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev2.i.i.i, align 4
  %prev5.i.i.i = getelementptr inbounds %struct.anon.51, ptr %48, i32 0, i32 1
  %53 = ptrtoint ptr %prev5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %backlogq.i, ptr %prev5.i.i.i, align 4
  store volatile ptr %48, ptr %backlogq.i, align 8
  %54 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %50, ptr %52, align 8
  %prev35.i.i.i = getelementptr inbounds %struct.anon.51, ptr %50, i32 0, i32 1
  %55 = ptrtoint ptr %prev35.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %52, ptr %prev35.i.i.i, align 4
  %56 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %qlen.i.i, align 4
  %58 = ptrtoint ptr %qlen.i.i.i22 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %qlen.i.i.i22, align 4
  %add.i.i = add i32 %59, %57
  store i32 %add.i.i, ptr %qlen.i.i.i22, align 4
  %60 = ptrtoint ptr %backlogq1.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %backlogq1.i, ptr %backlogq1.i, align 4
  store ptr %backlogq1.i, ptr %prev2.i.i.i, align 4
  store i32 0, ptr %qlen.i.i, align 4
  br label %skb_queue_splice_init.exit.i

skb_queue_splice_init.exit.i:                     ; preds = %if.then.i.i, %while.body.i.skb_queue_splice_init.exit.i_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  %61 = ptrtoint ptr %backlogq.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %backlogq.i, align 4
  %cmp.i.i23.i = icmp eq ptr %62, %backlogq.i
  %tobool.not.i2224.i = icmp eq ptr %62, null
  %tobool.not.i25.i = or i1 %cmp.i.i23.i, %tobool.not.i2224.i
  br i1 %tobool.not.i25.i, label %skb_queue_splice_init.exit.i.while.end.i_crit_edge, label %skb_queue_splice_init.exit.i.while.body7.i_crit_edge

skb_queue_splice_init.exit.i.while.body7.i_crit_edge: ; preds = %skb_queue_splice_init.exit.i
  br label %while.body7.i

skb_queue_splice_init.exit.i.while.end.i_crit_edge: ; preds = %skb_queue_splice_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.body7.i:                                    ; preds = %while.body7.i.while.body7.i_crit_edge, %skb_queue_splice_init.exit.i.while.body7.i_crit_edge
  %63 = phi ptr [ %75, %while.body7.i.while.body7.i_crit_edge ], [ %62, %skb_queue_splice_init.exit.i.while.body7.i_crit_edge ]
  %64 = ptrtoint ptr %qlen.i.i.i22 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %qlen.i.i.i22, align 4
  %sub.i.i.i = add i32 %65, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i.i22, align 4
  %66 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %63, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.51, ptr %63, i32 0, i32 1
  %68 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %63, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.51, ptr %67, i32 0, i32 1
  %70 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %69, ptr %prev17.i.i.i, align 4
  %71 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %67, ptr %69, align 8
  %backlog_fn.i = getelementptr inbounds %struct.sk_buff, ptr %63, i32 0, i32 3, i32 12
  %72 = ptrtoint ptr %backlog_fn.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %backlog_fn.i, align 4
  call void %73(ptr noundef %csk, ptr noundef nonnull %63) #10
  %74 = ptrtoint ptr %backlogq.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %backlogq.i, align 4
  %cmp.i.i.i = icmp eq ptr %75, %backlogq.i
  %tobool.not.i22.i = icmp eq ptr %75, null
  %tobool.not.i.i = or i1 %cmp.i.i.i, %tobool.not.i22.i
  br i1 %tobool.not.i.i, label %while.body7.i.while.end.i_crit_edge, label %while.body7.i.while.body7.i_crit_edge

while.body7.i.while.body7.i_crit_edge:            ; preds = %while.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body7.i

while.body7.i.while.end.i_crit_edge:              ; preds = %while.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.end.i:                                      ; preds = %while.body7.i.while.end.i_crit_edge, %skb_queue_splice_init.exit.i.while.end.i_crit_edge
  call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %76 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %qlen.i.i, align 4
  %tobool.not.i23 = icmp eq i32 %77, 0
  br i1 %tobool.not.i23, label %while.end.i.cxgbit_unlock_sock.exit_crit_edge, label %while.end.i.while.body.i_crit_edge

while.end.i.while.body.i_crit_edge:               ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.end.i.cxgbit_unlock_sock.exit_crit_edge:    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbit_unlock_sock.exit

cxgbit_unlock_sock.exit:                          ; preds = %while.end.i.cxgbit_unlock_sock.exit_crit_edge, %unlock.cxgbit_unlock_sock.exit_crit_edge
  %78 = ptrtoint ptr %lock_owner to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %lock_owner, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %backlogq.i) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgbit_get_login_rx(ptr nocapture noundef readonly %conn, ptr nocapture noundef readnone %login) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 64
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %flags = getelementptr inbounds %struct.cxgbit_sock_common, ptr %1, i32 0, i32 5
  %call10 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not11 = icmp eq i32 %call10, 0
  br i1 %tobool.not11, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.cond:                                       ; preds = %while.body
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %flags) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.cond.while.body_crit_edge, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %entry.while.body_crit_edge
  %call1 = tail call fastcc i32 @cxgbit_wait_rxq(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %while.cond, label %if.then

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #10
  br label %while.end

while.end:                                        ; preds = %if.then, %while.cond.while.end_crit_edge, %entry.while.end_crit_edge
  %ret.1 = phi i32 [ %call1, %if.then ], [ -1, %entry.while.end_crit_edge ], [ 0, %while.cond.while.end_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cxgbit_wait_rxq(ptr noundef %csk) unnamed_addr #0 align 64 {
entry:
  %rxq = alloca %struct.sk_buff_head, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %rxq) #10
  %0 = call ptr @memset(ptr %rxq, i32 255, i32 56)
  %lock.i = getelementptr inbounds %struct.sk_buff_head, ptr %rxq, i32 0, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #10
  %1 = ptrtoint ptr %rxq to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %rxq, ptr %rxq, align 4
  %prev.i.i = getelementptr inbounds %struct.anon.107, ptr %rxq, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %rxq, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %rxq, i32 0, i32 1
  %3 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %qlen.i.i, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1613) #10
  %rxq1.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 6
  %lock.i31 = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 6, i32 2
  call void @_raw_spin_lock_bh(ptr noundef %lock.i31) #10
  %qlen.i.i32 = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %qlen.i.i32 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qlen.i.i32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.then, label %if.then.i

if.then.i:                                        ; preds = %entry
  %6 = ptrtoint ptr %rxq1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rxq1.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %7, %rxq1.i
  br i1 %cmp.i.not.i.i, label %if.then.i.cxgbit_rxq_len.exit.thread_crit_edge, label %if.then.i.i

if.then.i.cxgbit_rxq_len.exit.thread_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbit_rxq_len.exit.thread

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %rxq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rxq, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 6, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev2.i.i.i, align 4
  %prev5.i.i.i = getelementptr inbounds %struct.anon.51, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %prev5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %rxq, ptr %prev5.i.i.i, align 4
  store volatile ptr %7, ptr %rxq, align 8
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %9, ptr %11, align 8
  %prev35.i.i.i = getelementptr inbounds %struct.anon.51, ptr %9, i32 0, i32 1
  %14 = ptrtoint ptr %prev35.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %11, ptr %prev35.i.i.i, align 4
  %15 = ptrtoint ptr %qlen.i.i32 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %qlen.i.i32, align 4
  %17 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %qlen.i.i, align 4
  %add.i.i = add i32 %18, %16
  store i32 %add.i.i, ptr %qlen.i.i, align 4
  %19 = ptrtoint ptr %rxq1.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %rxq1.i, ptr %rxq1.i, align 4
  store ptr %rxq1.i, ptr %prev2.i.i.i, align 4
  store i32 0, ptr %qlen.i.i32, align 4
  br label %cxgbit_rxq_len.exit.thread

cxgbit_rxq_len.exit.thread:                       ; preds = %if.then.i.i, %if.then.i.cxgbit_rxq_len.exit.thread_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i31) #10
  br label %if.end11

if.then:                                          ; preds = %entry
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i31) #10
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %20 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %waitq = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 18
  %call575 = call i32 @prepare_to_wait_event(ptr noundef %waitq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  call void @_raw_spin_lock_bh(ptr noundef %lock.i31) #10
  %21 = ptrtoint ptr %qlen.i.i32 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %qlen.i.i32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i3676 = icmp eq i32 %22, 0
  br i1 %tobool.not.i3676, label %if.then.if.end_crit_edge, label %if.then.if.then.i38_crit_edge

if.then.if.then.i38_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i38

if.then.if.end_crit_edge:                         ; preds = %if.then
  br label %if.end

if.then.i38:                                      ; preds = %cleanup.if.then.i38_crit_edge, %if.then.if.then.i38_crit_edge
  %23 = ptrtoint ptr %rxq1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rxq1.i, align 4
  %cmp.i.not.i.i37 = icmp eq ptr %24, %rxq1.i
  br i1 %cmp.i.not.i.i37, label %if.then.i38.for.end_crit_edge, label %if.then.i.i44

if.then.i38.for.end_crit_edge:                    ; preds = %if.then.i38
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.then.i.i44:                                    ; preds = %if.then.i38
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %rxq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rxq, align 4
  %prev2.i.i.i39 = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 6, i32 0, i32 0, i32 1
  %27 = ptrtoint ptr %prev2.i.i.i39 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev2.i.i.i39, align 4
  %prev5.i.i.i40 = getelementptr inbounds %struct.anon.51, ptr %24, i32 0, i32 1
  %29 = ptrtoint ptr %prev5.i.i.i40 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %rxq, ptr %prev5.i.i.i40, align 4
  store volatile ptr %24, ptr %rxq, align 8
  %30 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %26, ptr %28, align 8
  %prev35.i.i.i41 = getelementptr inbounds %struct.anon.51, ptr %26, i32 0, i32 1
  %31 = ptrtoint ptr %prev35.i.i.i41 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %28, ptr %prev35.i.i.i41, align 4
  %32 = ptrtoint ptr %qlen.i.i32 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %qlen.i.i32, align 4
  %34 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %qlen.i.i, align 4
  %add.i.i43 = add i32 %35, %33
  store i32 %add.i.i43, ptr %qlen.i.i, align 4
  %36 = ptrtoint ptr %rxq1.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %rxq1.i, ptr %rxq1.i, align 4
  store ptr %rxq1.i, ptr %prev2.i.i.i39, align 4
  store i32 0, ptr %qlen.i.i32, align 4
  br label %for.end

if.end:                                           ; preds = %cleanup.if.end_crit_edge, %if.then.if.end_crit_edge
  %call577 = phi i32 [ %call5, %cleanup.if.end_crit_edge ], [ %call575, %if.then.if.end_crit_edge ]
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i31) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call577)
  %tobool.not = icmp eq i32 %call577, 0
  br i1 %tobool.not, label %cleanup, label %if.end.__out_crit_edge

if.end.__out_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %__out

cleanup:                                          ; preds = %if.end
  call void @schedule() #10
  %call5 = call i32 @prepare_to_wait_event(ptr noundef %waitq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  call void @_raw_spin_lock_bh(ptr noundef %lock.i31) #10
  %37 = ptrtoint ptr %qlen.i.i32 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %qlen.i.i32, align 4
  %tobool.not.i36 = icmp eq i32 %38, 0
  br i1 %tobool.not.i36, label %cleanup.if.end_crit_edge, label %cleanup.if.then.i38_crit_edge

cleanup.if.then.i38_crit_edge:                    ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i38

cleanup.if.end_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.end:                                          ; preds = %if.then.i.i44, %if.then.i38.for.end_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i31) #10
  call void @finish_wait(ptr noundef %waitq, ptr noundef nonnull %__wq_entry) #10
  br label %__out

__out:                                            ; preds = %for.end, %if.end.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %if.end11

if.end11:                                         ; preds = %__out, %cxgbit_rxq_len.exit.thread
  %39 = call i32 @llvm.read_register.i32(metadata !158) #10
  %and.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %stack.i.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %44, align 4
  %47 = and i32 %46, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i46 = icmp eq i32 %47, 0
  br i1 %tobool.not.i46, label %signal_pending.exit, label %if.end11.out_crit_edge, !prof !171

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

signal_pending.exit:                              ; preds = %if.end11
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %44, align 4
  %and1.i.i.i.i.i = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool15.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool15.not, label %while.cond.preheader, label %signal_pending.exit.out_crit_edge

signal_pending.exit.out_crit_edge:                ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

while.cond.preheader:                             ; preds = %signal_pending.exit
  %rx_credits.i19.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 33
  %rcv_win.i21.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 35
  %rcv_nxt.i.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 28
  br label %while.cond

while.cond:                                       ; preds = %cxgbit_rx_skb.exit.while.cond_crit_edge, %while.cond.preheader
  %50 = ptrtoint ptr %rxq to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rxq, align 4
  %cmp.i.i = icmp eq ptr %51, %rxq
  %tobool.not.i4765 = icmp eq ptr %51, null
  %tobool.not.i47 = or i1 %cmp.i.i, %tobool.not.i4765
  br i1 %tobool.not.i47, label %while.cond.cleanup24_crit_edge, label %while.body

while.cond.cleanup24_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup24

while.body:                                       ; preds = %while.cond
  %52 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %53, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %54 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %51, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.51, ptr %51, i32 0, i32 1
  %56 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %51, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.51, ptr %55, i32 0, i32 1
  %58 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %57, ptr %prev17.i.i, align 4
  %59 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %55, ptr %57, align 8
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %51, i32 0, i32 3
  %60 = ptrtoint ptr %cb.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %cb.i, align 8
  %62 = and i8 %61, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.not.i51 = icmp eq i8 %62, 0
  br i1 %tobool.not.i51, label %while.body.cxgbit_rx_skb.exit.thread_crit_edge, label %if.then.i52, !prof !168

while.body.cxgbit_rx_skb.exit.thread_crit_edge:   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbit_rx_skb.exit.thread

if.then.i52:                                      ; preds = %while.body
  %63 = ptrtoint ptr %csk to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %csk, align 4
  %adapter_type.i = getelementptr inbounds %struct.cxgbit_device, ptr %64, i32 0, i32 1, i32 13
  %65 = ptrtoint ptr %adapter_type.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %adapter_type.i, align 4
  %67 = and i8 %66, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %67)
  %cmp.i.not.i = icmp eq i8 %67, 80
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %51, i32 0, i32 19
  %68 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %data.i.i, align 4
  br i1 %cmp.i.not.i, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %if.then.i52
  %add.ptr.i.i = getelementptr i8, ptr %69, i32 16
  %70 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %add.ptr.i.i, align 4
  %72 = and i8 %71, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool.not.i.i = icmp eq i8 %72, 0
  br i1 %tobool.not.i.i, label %if.then6.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then6.i.if.end.i.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then6.i
  %seq.i.i = getelementptr i8, ptr %69, i32 24
  %73 = ptrtoint ptr %seq.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %seq.i.i, align 4
  %75 = ptrtoint ptr %rcv_nxt.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %rcv_nxt.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %76)
  %cmp.not.i.i = icmp eq i32 %74, %76
  br i1 %cmp.not.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %do.end.i.i

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %data.i.i.le = getelementptr inbounds %struct.sk_buff, ptr %51, i32 0, i32 19
  %tid.i.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 26
  %77 = ptrtoint ptr %tid.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %tid.i.i, align 4
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %csk, i32 noundef %78, i32 noundef %74, i32 noundef %76) #13
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %51, i32 0, i32 17
  %79 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %end.i.i.i.i, align 4
  %81 = ptrtoint ptr %data.i.i.le to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %data.i.i.le, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %51, i32 0, i32 18
  %83 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %head.i.i.i, align 8
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %51, i32 0, i32 6
  %85 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %51, i32 0, i32 7
  %87 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %data_len.i.i.i, align 8
  %nr_frags.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %80, i32 0, i32 2
  %89 = ptrtoint ptr %nr_frags.i.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %nr_frags.i.i.i, align 2
  %conv.i.i.i = zext i8 %90 to i32
  %call4.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull %51, ptr noundef %84, ptr noundef %82, i32 noundef %86, i32 noundef %88, i32 noundef %conv.i.i.i) #13
  %91 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %82, align 4
  %pdu_idx.i.i.i = getelementptr inbounds %struct.cxgbit_lro_cb, ptr %82, i32 0, i32 3
  %93 = ptrtoint ptr %pdu_idx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %pdu_idx.i.i.i, align 4
  %conv9.i.i.i = zext i8 %94 to i32
  %pdu_totallen.i.i.i = getelementptr inbounds %struct.cxgbit_lro_cb, ptr %82, i32 0, i32 1
  %95 = ptrtoint ptr %pdu_totallen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %pdu_totallen.i.i.i, align 4
  %call10.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull %51, ptr noundef %92, i32 noundef %conv9.i.i.i, i32 noundef %96) #13
  %97 = ptrtoint ptr %pdu_idx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %pdu_idx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %cmp73.not.i.i.i = icmp eq i8 %98, 0
  br i1 %cmp73.not.i.i.i, label %do.end.i.i.for.cond23.preheader.i.i.i_crit_edge, label %do.end17.preheader.i.i.i

do.end.i.i.for.cond23.preheader.i.i.i_crit_edge:  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond23.preheader.i.i.i

do.end17.preheader.i.i.i:                         ; preds = %do.end.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %82, i32 16
  br label %do.end17.i.i.i

for.cond23.preheader.i.i.i:                       ; preds = %do.end17.i.i.i.for.cond23.preheader.i.i.i_crit_edge, %do.end.i.i.for.cond23.preheader.i.i.i_crit_edge
  %99 = ptrtoint ptr %nr_frags.i.i.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %nr_frags.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %cmp2776.not.i.i.i = icmp eq i8 %100, 0
  br i1 %cmp2776.not.i.i.i, label %for.cond23.preheader.i.i.i.cxgbit_rx_skb.exit.thread_crit_edge, label %for.cond23.preheader.i.i.i.do.end32.i.i.i_crit_edge

for.cond23.preheader.i.i.i.do.end32.i.i.i_crit_edge: ; preds = %for.cond23.preheader.i.i.i
  br label %do.end32.i.i.i

for.cond23.preheader.i.i.i.cxgbit_rx_skb.exit.thread_crit_edge: ; preds = %for.cond23.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbit_rx_skb.exit.thread

do.end17.i.i.i:                                   ; preds = %do.end17.i.i.i.do.end17.i.i.i_crit_edge, %do.end17.preheader.i.i.i
  %indvars.iv.i.i.i = phi i32 [ 0, %do.end17.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %do.end17.i.i.i.do.end17.i.i.i_crit_edge ]
  %pdu_cb.075.i.i.i = phi ptr [ %add.ptr.i.i.i, %do.end17.preheader.i.i.i ], [ %incdec.ptr.i.i.i, %do.end17.i.i.i.do.end17.i.i.i_crit_edge ]
  %pdulen.i.i.i = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, ptr %pdu_cb.075.i.i.i, i32 0, i32 7
  %101 = ptrtoint ptr %pdulen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %pdulen.i.i.i, align 4
  %103 = ptrtoint ptr %pdu_cb.075.i.i.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %pdu_cb.075.i.i.i, align 4
  %conv20.i.i.i = zext i8 %104 to i32
  %seq.i.i.i = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, ptr %pdu_cb.075.i.i.i, i32 0, i32 6
  %105 = ptrtoint ptr %seq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %seq.i.i.i, align 4
  %ddigest.i.i.i = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, ptr %pdu_cb.075.i.i.i, i32 0, i32 11
  %107 = ptrtoint ptr %ddigest.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %ddigest.i.i.i, align 4
  %frags.i.i.i = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, ptr %pdu_cb.075.i.i.i, i32 0, i32 1
  %109 = ptrtoint ptr %frags.i.i.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %frags.i.i.i, align 1
  %conv21.i.i.i = zext i8 %110 to i32
  %call22.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %51, i32 noundef %indvars.iv.i.i.i, i32 noundef %102, i32 noundef %conv20.i.i.i, i32 noundef %106, i32 noundef %108, i32 noundef %conv21.i.i.i) #13
  %indvars.iv.next.i.i.i = add nuw nsw i32 %indvars.iv.i.i.i, 1
  %incdec.ptr.i.i.i = getelementptr %struct.cxgbit_lro_pdu_cb, ptr %pdu_cb.075.i.i.i, i32 1
  %111 = ptrtoint ptr %pdu_idx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %pdu_idx.i.i.i, align 4
  %113 = zext i8 %112 to i32
  %cmp.i.i.i = icmp ult i32 %indvars.iv.next.i.i.i, %113
  br i1 %cmp.i.i.i, label %do.end17.i.i.i.do.end17.i.i.i_crit_edge, label %do.end17.i.i.i.for.cond23.preheader.i.i.i_crit_edge

do.end17.i.i.i.for.cond23.preheader.i.i.i_crit_edge: ; preds = %do.end17.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond23.preheader.i.i.i

do.end17.i.i.i.do.end17.i.i.i_crit_edge:          ; preds = %do.end17.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end17.i.i.i

do.end32.i.i.i:                                   ; preds = %do.end32.i.i.i.do.end32.i.i.i_crit_edge, %for.cond23.preheader.i.i.i.do.end32.i.i.i_crit_edge
  %indvars.iv78.i.i.i = phi i32 [ %indvars.iv.next79.i.i.i, %do.end32.i.i.i.do.end32.i.i.i_crit_edge ], [ 0, %for.cond23.preheader.i.i.i.do.end32.i.i.i_crit_edge ]
  %bv_offset.i.i.i.i = getelementptr %struct.skb_shared_info, ptr %80, i32 0, i32 12, i32 %indvars.iv78.i.i.i, i32 2
  %114 = ptrtoint ptr %bv_offset.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %bv_offset.i.i.i.i, align 4
  %bv_len.i.i.i.i = getelementptr %struct.skb_shared_info, ptr %80, i32 0, i32 12, i32 %indvars.iv78.i.i.i, i32 1
  %116 = ptrtoint ptr %bv_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %bv_len.i.i.i.i, align 4
  %call41.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %51, i32 noundef %indvars.iv78.i.i.i, i32 noundef %115, i32 noundef %117) #13
  %indvars.iv.next79.i.i.i = add nuw nsw i32 %indvars.iv78.i.i.i, 1
  %118 = ptrtoint ptr %nr_frags.i.i.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %nr_frags.i.i.i, align 2
  %120 = zext i8 %119 to i32
  %cmp27.i.i.i = icmp ult i32 %indvars.iv.next79.i.i.i, %120
  br i1 %cmp27.i.i.i, label %do.end32.i.i.i.do.end32.i.i.i_crit_edge, label %do.end32.i.i.i.cxgbit_rx_skb.exit.thread_crit_edge

do.end32.i.i.i.cxgbit_rx_skb.exit.thread_crit_edge: ; preds = %do.end32.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbit_rx_skb.exit.thread

do.end32.i.i.i.do.end32.i.i.i_crit_edge:          ; preds = %do.end32.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32.i.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then6.i.if.end.i.i_crit_edge
  %pdu_totallen.i.i = getelementptr inbounds %struct.cxgbit_lro_cb, ptr %69, i32 0, i32 1
  %121 = ptrtoint ptr %pdu_totallen.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %pdu_totallen.i.i, align 4
  %123 = ptrtoint ptr %rcv_nxt.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %rcv_nxt.i.i, align 4
  %add.i.i53 = add i32 %124, %122
  store i32 %add.i.i53, ptr %rcv_nxt.i.i, align 4
  %call7.i.i = call fastcc i32 @cxgbit_process_lro_skb(ptr noundef %csk, ptr noundef nonnull %51) #10
  %125 = ptrtoint ptr %pdu_totallen.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %pdu_totallen.i.i, align 4
  %127 = ptrtoint ptr %rx_credits.i19.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %rx_credits.i19.i, align 4
  %add9.i.i = add i32 %128, %126
  store i32 %add9.i.i, ptr %rx_credits.i19.i, align 4
  %129 = ptrtoint ptr %rcv_win.i21.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %rcv_win.i21.i, align 4
  %div35.i.i = lshr i32 %130, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add9.i.i, i32 %div35.i.i)
  %cmp11.not.i.i = icmp ult i32 %add9.i.i, %div35.i.i
  br i1 %cmp11.not.i.i, label %if.end.i.i.cxgbit_rx_skb.exit_crit_edge, label %if.end.i.i.if.end9.sink.split.i_crit_edge

if.end.i.i.if.end9.sink.split.i_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.sink.split.i

if.end.i.i.cxgbit_rx_skb.exit_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbit_rx_skb.exit

if.else.i:                                        ; preds = %if.then.i52
  %call.i16.i = call fastcc i32 @cxgbit_process_lro_skb(ptr noundef %csk, ptr noundef nonnull %51) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16.i)
  %tobool.not.i17.i = icmp eq i32 %call.i16.i, 0
  br i1 %tobool.not.i17.i, label %if.end.i23.i, label %if.else.i.cxgbit_rx_skb.exit.thread_crit_edge

if.else.i.cxgbit_rx_skb.exit.thread_crit_edge:    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbit_rx_skb.exit.thread

if.end.i23.i:                                     ; preds = %if.else.i
  %pdu_totallen.i18.i = getelementptr inbounds %struct.cxgbit_lro_cb, ptr %69, i32 0, i32 1
  %131 = ptrtoint ptr %pdu_totallen.i18.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %pdu_totallen.i18.i, align 4
  %133 = ptrtoint ptr %rx_credits.i19.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %rx_credits.i19.i, align 4
  %add.i20.i = add i32 %134, %132
  store i32 %add.i20.i, ptr %rx_credits.i19.i, align 4
  %135 = ptrtoint ptr %rcv_win.i21.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %rcv_win.i21.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i20.i, i32 %136)
  %cmp.not.i22.i = icmp ult i32 %add.i20.i, %136
  br i1 %cmp.not.i22.i, label %if.end.i23.i.cxgbit_rx_skb.exit_crit_edge, label %if.then2.i.i

if.end.i23.i.cxgbit_rx_skb.exit_crit_edge:        ; preds = %if.end.i23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbit_rx_skb.exit

if.then2.i.i:                                     ; preds = %if.end.i23.i
  call void @__sanitizer_cov_trace_pc() #12
  %137 = ptrtoint ptr %rx_credits.i19.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 0, ptr %rx_credits.i19.i, align 4
  br label %if.end9.sink.split.i

if.end9.sink.split.i:                             ; preds = %if.then2.i.i, %if.end.i.i.if.end9.sink.split.i_crit_edge
  %ret.0.ph.i = phi i32 [ 0, %if.then2.i.i ], [ %call7.i.i, %if.end.i.i.if.end9.sink.split.i_crit_edge ]
  %call4.i.i = call i32 @cxgbit_rx_data_ack(ptr noundef %csk) #10
  br label %cxgbit_rx_skb.exit

cxgbit_rx_skb.exit.thread:                        ; preds = %if.else.i.cxgbit_rx_skb.exit.thread_crit_edge, %do.end32.i.i.i.cxgbit_rx_skb.exit.thread_crit_edge, %for.cond23.preheader.i.i.i.cxgbit_rx_skb.exit.thread_crit_edge, %while.body.cxgbit_rx_skb.exit.thread_crit_edge
  call void @__kfree_skb(ptr noundef %51) #10
  br label %out

cxgbit_rx_skb.exit:                               ; preds = %if.end9.sink.split.i, %if.end.i23.i.cxgbit_rx_skb.exit_crit_edge, %if.end.i.i.cxgbit_rx_skb.exit_crit_edge
  %ret.0.i = phi i32 [ %call7.i.i, %if.end.i.i.cxgbit_rx_skb.exit_crit_edge ], [ 0, %if.end.i23.i.cxgbit_rx_skb.exit_crit_edge ], [ %ret.0.ph.i, %if.end9.sink.split.i ]
  call void @__kfree_skb(ptr noundef nonnull %51) #10
  %tobool21.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool21.not, label %cxgbit_rx_skb.exit.while.cond_crit_edge, label %cxgbit_rx_skb.exit.out_crit_edge

cxgbit_rx_skb.exit.out_crit_edge:                 ; preds = %cxgbit_rx_skb.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

cxgbit_rx_skb.exit.while.cond_crit_edge:          ; preds = %cxgbit_rx_skb.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

out:                                              ; preds = %cxgbit_rx_skb.exit.out_crit_edge, %cxgbit_rx_skb.exit.thread, %signal_pending.exit.out_crit_edge, %if.end11.out_crit_edge
  %138 = ptrtoint ptr %rxq to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %rxq, align 4
  %cmp.i.i2.i = icmp eq ptr %139, %rxq
  %tobool.not.i13.i = icmp eq ptr %139, null
  %tobool.not.i4.i = or i1 %cmp.i.i2.i, %tobool.not.i13.i
  br i1 %tobool.not.i4.i, label %out.cleanup24_crit_edge, label %out.while.body.i_crit_edge

out.while.body.i_crit_edge:                       ; preds = %out
  br label %while.body.i

out.cleanup24_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup24

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %out.while.body.i_crit_edge
  %140 = phi ptr [ %150, %while.body.i.while.body.i_crit_edge ], [ %139, %out.while.body.i_crit_edge ]
  %141 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i.i = add i32 %142, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i, align 4
  %143 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %140, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.51, ptr %140, i32 0, i32 1
  %145 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %140, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.51, ptr %144, i32 0, i32 1
  %147 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store volatile ptr %146, ptr %prev17.i.i.i, align 4
  %148 = ptrtoint ptr %146 to i32
  call void @__asan_store4_noabort(i32 %148)
  store volatile ptr %144, ptr %146, align 8
  call void @kfree_skb_reason(ptr noundef nonnull %140, i32 noundef 0) #10
  %149 = ptrtoint ptr %rxq to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %rxq, align 4
  %cmp.i.i.i54 = icmp eq ptr %150, %rxq
  %tobool.not.i1.i = icmp eq ptr %150, null
  %tobool.not.i.i55 = or i1 %cmp.i.i.i54, %tobool.not.i1.i
  br i1 %tobool.not.i.i55, label %while.body.i.cleanup24_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i.cleanup24_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup24

cleanup24:                                        ; preds = %while.body.i.cleanup24_crit_edge, %out.cleanup24_crit_edge, %while.cond.cleanup24_crit_edge
  %retval.0 = phi i32 [ -1, %out.cleanup24_crit_edge ], [ -1, %while.body.i.cleanup24_crit_edge ], [ 0, %while.cond.cleanup24_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %rxq) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cxgbit_get_rx_pdu(ptr nocapture noundef %conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 64
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %conn_rx_reset_cpumask.i = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 55
  %conn_cpumask.i = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 54
  br label %while.cond

while.cond:                                       ; preds = %iscsit_thread_check_cpumask.exit.while.cond_crit_edge, %entry
  %call = tail call zeroext i1 @kthread_should_stop() #10
  br i1 %call, label %while.cond.cleanup_crit_edge, label %while.body

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body:                                       ; preds = %while.cond
  %2 = ptrtoint ptr %conn_rx_reset_cpumask.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load5.i = load i8, ptr %conn_rx_reset_cpumask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load5.i)
  %tobool8.not.i = icmp sgt i8 %bf.load5.i, -1
  br i1 %tobool8.not.i, label %while.body.iscsit_thread_check_cpumask.exit_crit_edge, label %if.end10.i

while.body.iscsit_thread_check_cpumask.exit_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %iscsit_thread_check_cpumask.exit

if.end10.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %3 = tail call i32 @llvm.read_register.i32(metadata !158) #10
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %bf.clear13.i = and i8 %bf.load5.i, 127
  %7 = ptrtoint ptr %conn_rx_reset_cpumask.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %bf.clear13.i, ptr %conn_rx_reset_cpumask.i, align 4
  %8 = ptrtoint ptr %conn_cpumask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %conn_cpumask.i, align 16
  %call.i = tail call i32 @set_cpus_allowed_ptr(ptr noundef %6, ptr noundef %9) #10
  br label %iscsit_thread_check_cpumask.exit

iscsit_thread_check_cpumask.exit:                 ; preds = %if.end10.i, %while.body.iscsit_thread_check_cpumask.exit_crit_edge
  %call2 = tail call fastcc i32 @cxgbit_wait_rxq(ptr noundef %1)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %iscsit_thread_check_cpumask.exit.while.cond_crit_edge, label %iscsit_thread_check_cpumask.exit.cleanup_crit_edge

iscsit_thread_check_cpumask.exit.cleanup_crit_edge: ; preds = %iscsit_thread_check_cpumask.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

iscsit_thread_check_cpumask.exit.while.cond_crit_edge: ; preds = %iscsit_thread_check_cpumask.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

cleanup:                                          ; preds = %iscsit_thread_check_cpumask.exit.cleanup_crit_edge, %while.cond.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsit_increment_maxcmdsn(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsit_build_datain_pdu(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cxgbit_map_skb(ptr nocapture noundef readonly %cmd, ptr nocapture noundef %skb, i32 noundef %data_offset, i32 noundef %data_length) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = sub i32 0, %data_length
  %and = and i32 %sub, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 17, i32 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_length)
  %tobool1.not92.not = icmp eq i32 %data_length, 0
  br i1 %tobool1.not92.not, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %rem = and i32 %data_offset, 4095
  %t_data_sg = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 70, i32 39
  %0 = ptrtoint ptr %t_data_sg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t_data_sg, align 4
  %div64 = lshr i32 %data_offset, 12
  %arrayidx = getelementptr %struct.scatterlist, ptr %1, i32 %div64
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %pfmemalloc.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %data_len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  br label %while.body

while.body:                                       ; preds = %skb_fill_page_desc.exit.while.body_crit_edge, %while.body.lr.ph
  %page_off.096 = phi i32 [ %rem, %while.body.lr.ph ], [ 0, %skb_fill_page_desc.exit.while.body_crit_edge ]
  %sg.095 = phi ptr [ %arrayidx, %while.body.lr.ph ], [ %call8, %skb_fill_page_desc.exit.while.body_crit_edge ]
  %i.094 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %skb_fill_page_desc.exit.while.body_crit_edge ]
  %data_length.addr.093 = phi i32 [ %data_length, %while.body.lr.ph ], [ %sub7, %skb_fill_page_desc.exit.while.body_crit_edge ]
  %length = getelementptr inbounds %struct.scatterlist, ptr %sg.095, i32 0, i32 2
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length, align 4
  %sub2 = sub i32 %3, %page_off.096
  %4 = tail call i32 @llvm.umin.i32(i32 %data_length.addr.093, i32 %sub2)
  %5 = ptrtoint ptr %sg.095 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sg.095, align 4
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !171

do.body2.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #10, !srcloc !176
  unreachable

sg_page.exit:                                     ; preds = %while.body
  %and.i = and i32 %6, -4
  %7 = inttoptr i32 %and.i to ptr
  %8 = getelementptr inbounds %struct.page, ptr %7, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  %and.i.i66 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i66)
  %tobool.not.i.i = icmp eq i32 %and.i.i66, 0
  br i1 %tobool.not.i.i, label %sg_page.exit._compound_head.exit.i_crit_edge, label %if.then.i.i, !prof !171

sg_page.exit._compound_head.exit.i_crit_edge:     ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %_compound_head.exit.i

if.then.i.i:                                      ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %10, -1
  %.pre = inttoptr i32 %sub.i.i to ptr
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.then.i.i, %sg_page.exit._compound_head.exit.i_crit_edge
  %.pre-phi = phi ptr [ %7, %sg_page.exit._compound_head.exit.i_crit_edge ], [ %.pre, %if.then.i.i ]
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %.pre-phi, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #10
  %11 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %12, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !168

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %.pre-phi, ptr noundef nonnull @.str.8) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #10, !srcloc !177
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #10
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #10, !srcloc !172
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@cxgbit_map_skb, %if.then.i.i.i.i)) #10
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !169

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__page_ref_mod(ptr noundef %.pre-phi, i32 noundef 1) #10
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %offset = getelementptr inbounds %struct.scatterlist, ptr %sg.095, i32 0, i32 1
  %14 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offset, align 4
  %add = add i32 %15, %page_off.096
  %16 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %end.i.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.skb_shared_info, ptr %17, i32 0, i32 12, i32 %i.094
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %7, ptr %arrayidx.i.i, align 4
  %bv_offset.i.i = getelementptr %struct.skb_shared_info, ptr %17, i32 0, i32 12, i32 %i.094, i32 2
  %19 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add, ptr %bv_offset.i.i, align 4
  %bv_len.i.i.i = getelementptr %struct.skb_shared_info, ptr %17, i32 0, i32 12, i32 %i.094, i32 1
  %20 = ptrtoint ptr %bv_len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %4, ptr %bv_len.i.i.i, align 4
  %21 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %8, align 4
  %and.i.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %get_page.exit._compound_head.exit.i.i_crit_edge, label %if.then.i.i.i, !prof !171

get_page.exit._compound_head.exit.i.i_crit_edge:  ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %_compound_head.exit.i.i

if.then.i.i.i:                                    ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i.i = add i32 %22, -1
  %.pre100 = inttoptr i32 %sub.i.i.i to ptr
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.then.i.i.i, %get_page.exit._compound_head.exit.i.i_crit_edge
  %.pre-phi101 = phi ptr [ %7, %get_page.exit._compound_head.exit.i.i_crit_edge ], [ %.pre100, %if.then.i.i.i ]
  %23 = getelementptr inbounds %struct.page, ptr %.pre-phi101, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %26 = ptrtoint ptr %25 to i32
  %and.i8.i.i = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i8.i.i, 0
  br i1 %tobool.i.not.i.i, label %_compound_head.exit.i.i.skb_fill_page_desc.exit_crit_edge, label %if.then.i.i67

_compound_head.exit.i.i.skb_fill_page_desc.exit_crit_edge: ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_fill_page_desc.exit

if.then.i.i67:                                    ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %pfmemalloc.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load.i.i = load i8, ptr %pfmemalloc.i.i, align 2
  %bf.set.i.i = or i8 %bf.load.i.i, 2
  store i8 %bf.set.i.i, ptr %pfmemalloc.i.i, align 2
  br label %skb_fill_page_desc.exit

skb_fill_page_desc.exit:                          ; preds = %if.then.i.i67, %_compound_head.exit.i.i.skb_fill_page_desc.exit_crit_edge
  %28 = trunc i32 %i.094 to i8
  %conv.i = add i8 %28, 1
  %29 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %end.i.i.i, align 4
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv.i, ptr %nr_frags.i, align 2
  %32 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %data_len, align 8
  %add4 = add i32 %33, %4
  store i32 %add4, ptr %data_len, align 8
  %34 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len, align 4
  %add5 = add i32 %35, %4
  store i32 %add5, ptr %len, align 4
  %36 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %truesize, align 8
  %add6 = add i32 %37, %4
  store i32 %add6, ptr %truesize, align 8
  %sub7 = sub i32 %data_length.addr.093, %4
  %call8 = tail call ptr @sg_next(ptr noundef %sg.095) #10
  %inc = add nuw nsw i32 %i.094, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub7)
  %tobool1.not = icmp ne i32 %sub7, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %spec.select)
  %cmp = icmp ult i32 %inc, %spec.select
  %or.cond = select i1 %tobool1.not, i1 %cmp, i1 false
  br i1 %or.cond, label %skb_fill_page_desc.exit.while.body_crit_edge, label %skb_fill_page_desc.exit.while.end_crit_edge

skb_fill_page_desc.exit.while.end_crit_edge:      ; preds = %skb_fill_page_desc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

skb_fill_page_desc.exit.while.body_crit_edge:     ; preds = %skb_fill_page_desc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %skb_fill_page_desc.exit.while.end_crit_edge, %entry.while.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %inc, %skb_fill_page_desc.exit.while.end_crit_edge ]
  %tobool1.not.lcssa = phi i1 [ false, %entry.while.end_crit_edge ], [ %tobool1.not, %skb_fill_page_desc.exit.while.end_crit_edge ]
  %brmerge = or i1 %tobool.not, %tobool1.not.lcssa
  %.mux = sext i1 %tobool1.not.lcssa to i32
  br i1 %brmerge, label %while.end.cleanup_crit_edge, label %if.then13

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then13:                                        ; preds = %while.end
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3520, i32 noundef 0, i32 noundef 0, ptr noundef null) #10
  %tobool15.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool15.not, label %if.then13.cleanup_crit_edge, label %if.end17

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %if.then13
  %end.i.i.i68 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %38 = ptrtoint ptr %end.i.i.i68 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %end.i.i.i68, align 4
  %arrayidx.i.i69 = getelementptr %struct.skb_shared_info, ptr %39, i32 0, i32 12, i32 %i.0.lcssa
  %40 = ptrtoint ptr %arrayidx.i.i69 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call38.i.i.i, ptr %arrayidx.i.i69, align 4
  %bv_offset.i.i70 = getelementptr %struct.skb_shared_info, ptr %39, i32 0, i32 12, i32 %i.0.lcssa, i32 2
  %41 = ptrtoint ptr %bv_offset.i.i70 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %bv_offset.i.i70, align 4
  %bv_len.i.i.i71 = getelementptr %struct.skb_shared_info, ptr %39, i32 0, i32 12, i32 %i.0.lcssa, i32 1
  %42 = ptrtoint ptr %bv_len.i.i.i71 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %and, ptr %bv_len.i.i.i71, align 4
  %43 = getelementptr inbounds %struct.page, ptr %call38.i.i.i, i32 0, i32 1
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %43, align 4
  %and.i.i.i72 = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i72)
  %tobool.not.i.i.i73 = icmp eq i32 %and.i.i.i72, 0
  br i1 %tobool.not.i.i.i73, label %if.end.i.i.i76, label %if.then.i.i.i75, !prof !171

if.then.i.i.i75:                                  ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i.i74 = add i32 %45, -1
  br label %_compound_head.exit.i.i80

if.end.i.i.i76:                                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %call38.i.i.i to i32
  br label %_compound_head.exit.i.i80

_compound_head.exit.i.i80:                        ; preds = %if.end.i.i.i76, %if.then.i.i.i75
  %retval.0.i.i.i77 = phi i32 [ %sub.i.i.i74, %if.then.i.i.i75 ], [ %46, %if.end.i.i.i76 ]
  %47 = inttoptr i32 %retval.0.i.i.i77 to ptr
  %48 = getelementptr inbounds %struct.page, ptr %47, i32 0, i32 1
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %51 = ptrtoint ptr %50 to i32
  %and.i8.i.i78 = and i32 %51, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i.i78)
  %tobool.i.not.i.i79 = icmp eq i32 %and.i8.i.i78, 0
  br i1 %tobool.i.not.i.i79, label %_compound_head.exit.i.i80.skb_fill_page_desc.exit87_crit_edge, label %if.then.i.i84

_compound_head.exit.i.i80.skb_fill_page_desc.exit87_crit_edge: ; preds = %_compound_head.exit.i.i80
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_fill_page_desc.exit87

if.then.i.i84:                                    ; preds = %_compound_head.exit.i.i80
  call void @__sanitizer_cov_trace_pc() #12
  %pfmemalloc.i.i81 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %52 = ptrtoint ptr %pfmemalloc.i.i81 to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load.i.i82 = load i8, ptr %pfmemalloc.i.i81, align 2
  %bf.set.i.i83 = or i8 %bf.load.i.i82, 2
  store i8 %bf.set.i.i83, ptr %pfmemalloc.i.i81, align 2
  br label %skb_fill_page_desc.exit87

skb_fill_page_desc.exit87:                        ; preds = %if.then.i.i84, %_compound_head.exit.i.i80.skb_fill_page_desc.exit87_crit_edge
  %53 = trunc i32 %i.0.lcssa to i8
  %conv.i85 = add i8 %53, 1
  %54 = ptrtoint ptr %end.i.i.i68 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %end.i.i.i68, align 4
  %nr_frags.i86 = getelementptr inbounds %struct.skb_shared_info, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %nr_frags.i86 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv.i85, ptr %nr_frags.i86, align 2
  %data_len18 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %57 = ptrtoint ptr %data_len18 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %data_len18, align 8
  %add19 = add i32 %58, %and
  store i32 %add19, ptr %data_len18, align 8
  %len20 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %59 = ptrtoint ptr %len20 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %len20, align 4
  %add21 = add i32 %60, %and
  store i32 %add21, ptr %len20, align 4
  %truesize22 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %61 = ptrtoint ptr %truesize22 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %truesize22, align 8
  %add23 = add i32 %62, %and
  store i32 %add23, ptr %truesize22, align 8
  br label %cleanup

cleanup:                                          ; preds = %skb_fill_page_desc.exit87, %if.then13.cleanup_crit_edge, %while.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %.mux, %while.end.cleanup_crit_edge ], [ -1, %if.then13.cleanup_crit_edge ], [ 0, %skb_fill_page_desc.exit87 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kfree_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_skb_with_frags(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cxgbit_set_iso_npdu(ptr nocapture noundef %csk) unnamed_addr #0 align 64 {
entry:
  %mbl = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conn1 = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 2
  %0 = ptrtoint ptr %conn1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn1, align 4
  %conn_ops2 = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 59
  %2 = ptrtoint ptr %conn_ops2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conn_ops2, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mbl) #10
  %4 = ptrtoint ptr %mbl to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %mbl, align 4, !annotation !175
  %login = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 41
  %5 = ptrtoint ptr %login to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %login, align 8
  %leading_connection = getelementptr inbounds %struct.iscsi_login, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %leading_connection to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %leading_connection, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %param_list = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 62
  %9 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %param_list, align 4
  %call = tail call ptr @iscsi_find_param_from_key(ptr noundef nonnull @.str.25, ptr noundef %10) #10
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.25) #13
  br label %cleanup

if.end:                                           ; preds = %if.then
  %value = getelementptr inbounds %struct.iscsi_param, ptr %call, i32 0, i32 1
  %11 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %value, align 4
  %call.i = call i32 @kstrtouint(ptr noundef %12, i32 noundef 0, ptr noundef nonnull %mbl) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sess = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 68
  %13 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sess, align 4
  %sess_ops = getelementptr inbounds %struct.iscsi_session, ptr %14, i32 0, i32 47
  %15 = ptrtoint ptr %sess_ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sess_ops, align 8
  %MaxBurstLength = getelementptr inbounds %struct.iscsi_sess_ops, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %MaxBurstLength to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %MaxBurstLength, align 4
  %19 = ptrtoint ptr %mbl to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %mbl, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.end.if.end9_crit_edge
  %MaxRecvDataSegmentLength = getelementptr inbounds %struct.iscsi_conn_ops, ptr %3, i32 0, i32 2
  %20 = ptrtoint ptr %MaxRecvDataSegmentLength to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %MaxRecvDataSegmentLength, align 4
  %22 = ptrtoint ptr %mbl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mbl, align 4
  %div = udiv i32 %23, %21
  %emss = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 37
  %24 = ptrtoint ptr %emss to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %emss, align 2
  %26 = urem i16 -1, %25
  %27 = xor i16 %26, -1
  %sub = zext i16 %27 to i32
  %add = add i32 %21, 48
  %submode = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 44
  %28 = ptrtoint ptr %submode to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %submode, align 2
  %idxprom = zext i8 %29 to i32
  %arrayidx = getelementptr [4 x i8], ptr @cxgbit_digest_len, i32 0, i32 %idxprom
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx, align 1
  %conv11 = zext i8 %31 to i32
  %add12 = add i32 %add, %conv11
  %div13 = udiv i32 %sub, %add12
  %32 = call i32 @llvm.umin.i32(i32 %div, i32 %div13)
  %max_iso_npdu17 = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 21
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %cmp19 = icmp ult i32 %32, 2
  %storemerge = select i1 %cmp19, i32 0, i32 %32
  %33 = ptrtoint ptr %max_iso_npdu17 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %storemerge, ptr %max_iso_npdu17, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -1, %do.end ], [ -1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mbl) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgbit_setup_conn_pgidx(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgbit_setup_conn_digest(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__skb_queue_purge(ptr noundef %list) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %list, align 4
  %cmp.i.i2 = icmp eq ptr %1, %list
  %tobool.not.i13 = icmp eq ptr %1, null
  %tobool.not.i4 = or i1 %cmp.i.i2, %tobool.not.i13
  br i1 %tobool.not.i4, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %qlen.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %list, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %2 = phi ptr [ %1, %while.body.lr.ph ], [ %12, %while.body.while.body_crit_edge ]
  %3 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %4, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.51, ptr %2, i32 0, i32 1
  %7 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %2, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.51, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %8, ptr %prev17.i.i, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %6, ptr %8, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %2, i32 noundef 0) #10
  %11 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %list, align 4
  %cmp.i.i = icmp eq ptr %12, %list
  %tobool.not.i1 = icmp eq ptr %12, null
  %tobool.not.i = or i1 %cmp.i.i, %tobool.not.i1
  br i1 %tobool.not.i, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cxgbit_process_lro_skb(ptr noundef %csk, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %complete = getelementptr i8, ptr %1, i32 21
  %2 = ptrtoint ptr %complete to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %complete, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %if.end8.thread

if.end8.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pdu_idx963 = getelementptr inbounds %struct.cxgbit_lro_cb, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %pdu_idx963 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pdu_idx963, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool10.not64 = icmp eq i8 %5, 0
  %6 = add i8 %5, -1
  %narrow65 = select i1 %tobool10.not64, i8 0, i8 %6
  br label %for.body.preheader

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 16
  tail call fastcc void @cxgbit_lro_skb_merge(ptr noundef %csk, ptr noundef %skb, i8 noundef zeroext 0)
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %add.ptr, align 4
  %9 = and i8 %8, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not = icmp eq i8 %9, 0
  br i1 %tobool3.not, label %if.then.if.end8_crit_edge, label %if.then4

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then4:                                         ; preds = %if.then
  %lro_hskb = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 15
  %10 = ptrtoint ptr %lro_hskb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lro_hskb, align 4
  %call = tail call fastcc i32 @cxgbit_process_iscsi_pdu(ptr noundef %csk, ptr noundef %11, i32 noundef 0)
  tail call fastcc void @cxgbit_lro_hskb_reset(ptr noundef %csk)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cond = icmp sgt i32 %call, -1
  br i1 %cond, label %if.then4.if.end8_crit_edge, label %if.then4.cleanup34_crit_edge

if.then4.cleanup34_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup34

if.then4.if.end8_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.end8:                                          ; preds = %if.then4.if.end8_crit_edge, %if.then.if.end8_crit_edge
  %ret.1 = phi i32 [ %call, %if.then4.if.end8_crit_edge ], [ 0, %if.then.if.end8_crit_edge ]
  %pdu_idx9 = getelementptr inbounds %struct.cxgbit_lro_cb, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %pdu_idx9 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pdu_idx9, align 4
  %14 = add i8 %13, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %13)
  %15 = icmp ult i8 %13, 2
  br i1 %15, label %if.end8.for.end_crit_edge, label %if.end8.for.body.preheader_crit_edge

if.end8.for.body.preheader_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.preheader

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.preheader:                               ; preds = %if.end8.for.body.preheader_crit_edge, %if.end8.thread
  %narrow70 = phi i8 [ %narrow65, %if.end8.thread ], [ %14, %if.end8.for.body.preheader_crit_edge ]
  %pdu_idx968 = phi ptr [ %pdu_idx963, %if.end8.thread ], [ %pdu_idx9, %if.end8.for.body.preheader_crit_edge ]
  %pdu_idx.067 = phi i32 [ 0, %if.end8.thread ], [ 1, %if.end8.for.body.preheader_crit_edge ]
  %16 = zext i8 %narrow70 to i32
  br label %for.body

for.cond:                                         ; preds = %for.body
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %cmp18.not.not = icmp ult i32 %indvars.iv, %16
  br i1 %cmp18.not.not, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %indvars.iv = phi i32 [ %pdu_idx.067, %for.body.preheader ], [ %indvars.iv.next, %for.cond.for.body_crit_edge ]
  %call21 = tail call fastcc i32 @cxgbit_process_iscsi_pdu(ptr noundef %csk, ptr noundef %skb, i32 noundef %indvars.iv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %for.body.cleanup34_crit_edge, label %for.cond

for.body.cleanup34_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup34

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end8.for.end_crit_edge
  %pdu_idx969 = phi ptr [ %pdu_idx9, %if.end8.for.end_crit_edge ], [ %pdu_idx968, %for.cond.for.end_crit_edge ]
  %ret.2.lcssa = phi i32 [ %ret.1, %if.end8.for.end_crit_edge ], [ %call21, %for.cond.for.end_crit_edge ]
  %complete26 = getelementptr inbounds %struct.cxgbit_lro_cb, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %complete26 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %complete26, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool27.not = icmp eq i8 %18, 0
  br i1 %tobool27.not, label %land.lhs.true, label %for.end.cleanup34_crit_edge

for.end.cleanup34_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup34

land.lhs.true:                                    ; preds = %for.end
  %19 = ptrtoint ptr %pdu_idx969 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %pdu_idx969, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool30.not = icmp eq i8 %20, 0
  br i1 %tobool30.not, label %land.lhs.true.cleanup34_crit_edge, label %if.then31

land.lhs.true.cleanup34_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup34

if.then31:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @cxgbit_lro_skb_merge(ptr noundef %csk, ptr noundef %skb, i8 noundef zeroext %20)
  br label %cleanup34

cleanup34:                                        ; preds = %if.then31, %land.lhs.true.cleanup34_crit_edge, %for.end.cleanup34_crit_edge, %for.body.cleanup34_crit_edge, %if.then4.cleanup34_crit_edge
  %retval.0 = phi i32 [ %ret.2.lcssa, %for.end.cleanup34_crit_edge ], [ %ret.2.lcssa, %if.then31 ], [ %ret.2.lcssa, %land.lhs.true.cleanup34_crit_edge ], [ %call, %if.then4.cleanup34_crit_edge ], [ %call21, %for.body.cleanup34_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgbit_rx_data_ack(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cxgbit_lro_skb_merge(ptr nocapture noundef readonly %csk, ptr nocapture noundef readonly %skb, i8 noundef zeroext %pdu_idx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lro_hskb = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 15
  %0 = ptrtoint ptr %lro_hskb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lro_hskb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 16
  %data2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data2, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 16
  %conv = zext i8 %pdu_idx to i32
  %mul = mul nuw nsw i32 %conv, 36
  %add.ptr4 = getelementptr i8, ptr %add.ptr3, i32 %mul
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %6 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %end.i, align 4
  %end.i177 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %8 = ptrtoint ptr %end.i177 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %end.i177, align 4
  %10 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %add.ptr4, align 4
  %12 = and i8 %11, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %7, i32 0, i32 2
  %13 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %nr_frags, align 2
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %add.ptr, align 4
  %or176 = or i8 %16, %11
  store i8 %or176, ptr %add.ptr, align 4
  %seq = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, ptr %add.ptr4, i32 0, i32 6
  %17 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %seq, align 4
  %seq12 = getelementptr i8, ptr %3, i32 24
  %19 = ptrtoint ptr %seq12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %seq12, align 4
  %hdr = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, ptr %add.ptr4, i32 0, i32 12
  %20 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hdr, align 4
  %hdr13 = getelementptr i8, ptr %3, i32 48
  %22 = ptrtoint ptr %hdr13 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %hdr13, align 4
  %hlen = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, ptr %add.ptr4, i32 0, i32 8
  %23 = ptrtoint ptr %hlen to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hlen, align 4
  %hlen14 = getelementptr i8, ptr %3, i32 32
  %25 = ptrtoint ptr %hlen14 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %hlen14, align 4
  %idxprom = zext i8 %14 to i32
  %arrayidx = getelementptr %struct.skb_shared_info, ptr %7, i32 0, i32 12, i32 %idxprom
  %hfrag_idx16 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, ptr %add.ptr4, i32 0, i32 2
  %26 = ptrtoint ptr %hfrag_idx16 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %hfrag_idx16, align 2
  %idxprom17 = zext i8 %27 to i32
  %arrayidx18 = getelementptr %struct.skb_shared_info, ptr %9, i32 0, i32 12, i32 %idxprom17
  %28 = call ptr @memcpy(ptr %arrayidx, ptr %arrayidx18, i32 12)
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx, align 4
  %31 = getelementptr inbounds %struct.page, ptr %30, i32 0, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %31, align 4
  %and.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !171

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %33, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %30 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %34, %if.end.i.i ]
  %35 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %35, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #10
  %36 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %37, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !168

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %35, ptr noundef nonnull @.str.8) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #10, !srcloc !177
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #10
  %38 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #10, !srcloc !172
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@cxgbit_lro_skb_merge, %if.then.i.i.i.i)) #10
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !169

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__page_ref_mod(ptr noundef %35, i32 noundef 1) #10
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %39 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %nr_frags, align 2
  %inc = add i8 %40, 1
  store i8 %inc, ptr %nr_frags, align 2
  %frags24 = getelementptr i8, ptr %3, i32 17
  %41 = ptrtoint ptr %frags24 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %frags24, align 1
  %inc25 = add i8 %42, 1
  store i8 %inc25, ptr %frags24, align 1
  %hfrag_idx26 = getelementptr i8, ptr %3, i32 18
  %43 = ptrtoint ptr %hfrag_idx26 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %14, ptr %hfrag_idx26, align 2
  %bv_len.i = getelementptr %struct.skb_shared_info, ptr %7, i32 0, i32 12, i32 %idxprom, i32 1
  %44 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bv_len.i, align 4
  %len31 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %46 = ptrtoint ptr %len31 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len31, align 4
  %add = add i32 %47, %45
  store i32 %add, ptr %len31, align 4
  %data_len = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 7
  %48 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %data_len, align 8
  %add32 = add i32 %49, %45
  store i32 %add32, ptr %data_len, align 8
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 20
  %50 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %truesize, align 8
  %add33 = add i32 %51, %45
  store i32 %add33, ptr %truesize, align 8
  br label %if.end

if.end:                                           ; preds = %get_page.exit, %entry.if.end_crit_edge
  %52 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %add.ptr4, align 4
  %54 = and i8 %53, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool37.not = icmp eq i8 %54, 0
  br i1 %tobool37.not, label %if.end.if.end84_crit_edge, label %if.then38

if.end.if.end84_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

if.then38:                                        ; preds = %if.end
  %nr_frags39 = getelementptr inbounds %struct.skb_shared_info, ptr %7, i32 0, i32 2
  %55 = ptrtoint ptr %nr_frags39 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %nr_frags39, align 2
  %57 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %add.ptr, align 4
  %or44175 = or i8 %58, %53
  store i8 %or44175, ptr %add.ptr, align 4
  %dfrag_idx46 = getelementptr i8, ptr %3, i32 20
  %59 = ptrtoint ptr %dfrag_idx46 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %56, ptr %dfrag_idx46, align 4
  %nr_dfrags = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, ptr %add.ptr4, i32 0, i32 3
  %60 = ptrtoint ptr %nr_dfrags to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %nr_dfrags, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %cmp197.not = icmp eq i8 %61, 0
  br i1 %cmp197.not, label %if.then38.for.end_crit_edge, label %for.body.lr.ph

if.then38.for.end_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then38
  %dfrag_idx54 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, ptr %add.ptr4, i32 0, i32 4
  %frags70 = getelementptr i8, ptr %3, i32 17
  br label %for.body

for.body:                                         ; preds = %get_page.exit193.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %get_page.exit193.for.body_crit_edge ]
  %dfrag_idx.0199 = phi i8 [ %56, %for.body.lr.ph ], [ %inc72, %get_page.exit193.for.body_crit_edge ]
  %len.0198 = phi i32 [ 0, %for.body.lr.ph ], [ %add67, %get_page.exit193.for.body_crit_edge ]
  %idxprom51 = zext i8 %dfrag_idx.0199 to i32
  %arrayidx52 = getelementptr %struct.skb_shared_info, ptr %7, i32 0, i32 12, i32 %idxprom51
  %62 = ptrtoint ptr %dfrag_idx54 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %dfrag_idx54, align 4
  %conv55 = zext i8 %63 to i32
  %add57 = add nuw nsw i32 %indvars.iv, %conv55
  %arrayidx58 = getelementptr %struct.skb_shared_info, ptr %9, i32 0, i32 12, i32 %add57
  %64 = call ptr @memcpy(ptr %arrayidx52, ptr %arrayidx58, i32 12)
  %65 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx52, align 4
  %67 = getelementptr inbounds %struct.page, ptr %66, i32 0, i32 1
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %67, align 4
  %and.i.i178 = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i178)
  %tobool.not.i.i179 = icmp eq i32 %and.i.i178, 0
  br i1 %tobool.not.i.i179, label %if.end.i.i182, label %if.then.i.i181, !prof !171

if.then.i.i181:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i180 = add i32 %69, -1
  br label %_compound_head.exit.i188

if.end.i.i182:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %70 = ptrtoint ptr %66 to i32
  br label %_compound_head.exit.i188

_compound_head.exit.i188:                         ; preds = %if.end.i.i182, %if.then.i.i181
  %retval.0.i.i183 = phi i32 [ %sub.i.i180, %if.then.i.i181 ], [ %70, %if.end.i.i182 ]
  %71 = inttoptr i32 %retval.0.i.i183 to ptr
  %_refcount.i.i.i.i184 = getelementptr inbounds %struct.page, ptr %71, i32 0, i32 3
  %call.i.i.i.i.i.i185 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i184, i32 noundef 4) #10
  %72 = ptrtoint ptr %_refcount.i.i.i.i184 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %_refcount.i.i.i.i184, align 4
  %add.i.i186 = add i32 %73, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i186)
  %cmp.i.i187 = icmp ult i32 %add.i.i186, 128
  br i1 %cmp.i.i187, label %if.then.i1.i189, label %do.end5.i.i191, !prof !168

if.then.i1.i189:                                  ; preds = %_compound_head.exit.i188
  call void @__sanitizer_cov_trace_pc() #12
  %74 = inttoptr i32 %retval.0.i.i183 to ptr
  tail call void @dump_page(ptr noundef %74, ptr noundef nonnull @.str.8) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #10, !srcloc !177
  unreachable

do.end5.i.i191:                                   ; preds = %_compound_head.exit.i188
  %call.i.i.i.i9.i.i190 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i184, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i184, i32 1, i32 3, i32 1) #10
  %75 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i184, ptr %_refcount.i.i.i.i184, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i184) #10, !srcloc !172
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@cxgbit_lro_skb_merge, %if.then.i.i.i.i192)) #10
          to label %get_page.exit193 [label %if.then.i.i.i.i192], !srcloc !169

if.then.i.i.i.i192:                               ; preds = %do.end5.i.i191
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__page_ref_mod(ptr noundef %71, i32 noundef 1) #10
  br label %get_page.exit193

get_page.exit193:                                 ; preds = %if.then.i.i.i.i192, %do.end5.i.i191
  %bv_len.i194 = getelementptr %struct.skb_shared_info, ptr %7, i32 0, i32 12, i32 %idxprom51, i32 1
  %76 = ptrtoint ptr %bv_len.i194 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %bv_len.i194, align 4
  %add67 = add i32 %77, %len.0198
  %78 = ptrtoint ptr %nr_frags39 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %nr_frags39, align 2
  %inc69 = add i8 %79, 1
  store i8 %inc69, ptr %nr_frags39, align 2
  %80 = ptrtoint ptr %frags70 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %frags70, align 1
  %inc71 = add i8 %81, 1
  store i8 %inc71, ptr %frags70, align 1
  %inc72 = add i8 %dfrag_idx.0199, 1
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %82 = ptrtoint ptr %nr_dfrags to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %nr_dfrags, align 1
  %84 = zext i8 %83 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %84
  br i1 %cmp, label %get_page.exit193.for.body_crit_edge, label %get_page.exit193.for.end_crit_edge

get_page.exit193.for.end_crit_edge:               ; preds = %get_page.exit193
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

get_page.exit193.for.body_crit_edge:              ; preds = %get_page.exit193
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %get_page.exit193.for.end_crit_edge, %if.then38.for.end_crit_edge
  %len.0.lcssa = phi i32 [ 0, %if.then38.for.end_crit_edge ], [ %add67, %get_page.exit193.for.end_crit_edge ]
  %dlen = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, ptr %add.ptr4, i32 0, i32 9
  %85 = ptrtoint ptr %dlen to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %dlen, align 4
  %dlen74 = getelementptr i8, ptr %3, i32 36
  %87 = ptrtoint ptr %dlen74 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %dlen74, align 4
  %hlen75 = getelementptr i8, ptr %3, i32 32
  %88 = ptrtoint ptr %hlen75 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %hlen75, align 4
  %doffset = getelementptr i8, ptr %3, i32 40
  %90 = ptrtoint ptr %doffset to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %doffset, align 4
  %91 = ptrtoint ptr %nr_dfrags to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %nr_dfrags, align 1
  %nr_dfrags77 = getelementptr i8, ptr %3, i32 19
  %93 = ptrtoint ptr %nr_dfrags77 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %nr_dfrags77, align 1
  %len78 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %94 = ptrtoint ptr %len78 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %len78, align 4
  %add79 = add i32 %95, %len.0.lcssa
  store i32 %add79, ptr %len78, align 4
  %data_len80 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 7
  %96 = ptrtoint ptr %data_len80 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %data_len80, align 8
  %add81 = add i32 %97, %len.0.lcssa
  store i32 %add81, ptr %data_len80, align 8
  %truesize82 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 20
  %98 = ptrtoint ptr %truesize82 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %truesize82, align 8
  %add83 = add i32 %99, %len.0.lcssa
  store i32 %add83, ptr %truesize82, align 8
  br label %if.end84

if.end84:                                         ; preds = %for.end, %if.end.if.end84_crit_edge
  %100 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %add.ptr4, align 4
  %102 = and i8 %101, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool88.not = icmp eq i8 %102, 0
  br i1 %tobool88.not, label %if.end84.if.end108_crit_edge, label %if.then89

if.end84.if.end108_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end108

if.then89:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  %103 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %add.ptr, align 4
  %or94174 = or i8 %104, %101
  %105 = and i8 %or94174, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool99.not = icmp eq i8 %105, 0
  %and103 = and i8 %or94174, -9
  %spec.select = select i1 %tobool99.not, i8 %or94174, i8 %and103
  %106 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %spec.select, ptr %add.ptr, align 4
  %ddigest = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, ptr %add.ptr4, i32 0, i32 11
  %107 = ptrtoint ptr %ddigest to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %ddigest, align 4
  %ddigest106 = getelementptr i8, ptr %3, i32 44
  %109 = ptrtoint ptr %ddigest106 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %ddigest106, align 4
  %pdulen = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, ptr %add.ptr4, i32 0, i32 7
  %110 = ptrtoint ptr %pdulen to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %pdulen, align 4
  %pdulen107 = getelementptr i8, ptr %3, i32 28
  %112 = ptrtoint ptr %pdulen107 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %pdulen107, align 4
  br label %if.end108

if.end108:                                        ; preds = %if.then89, %if.end84.if.end108_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cxgbit_process_iscsi_pdu(ptr noundef %csk, ptr noundef %skb, i32 noundef %idx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 16
  %mul = mul i32 %idx, 36
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %mul
  %pdu_cb2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %pdu_cb2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add.ptr1, ptr %pdu_cb2, align 4
  %skb3 = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 13
  %3 = ptrtoint ptr %skb3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %skb, ptr %skb3, align 4
  %flags = getelementptr inbounds %struct.cxgbit_sock_common, ptr %csk, i32 0, i32 5
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call fastcc i32 @cxgbit_rx_login_pdu(ptr noundef %csk)
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #10
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = ptrtoint ptr %pdu_cb2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdu_cb2, align 4
  %conn2.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 2
  %9 = ptrtoint ptr %conn2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %conn2.i, align 4
  %hdr3.i = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, ptr %8, i32 0, i32 12
  %11 = ptrtoint ptr %hdr3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hdr3.i, align 4
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %8, align 4
  %15 = and i8 %14, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %sess.i = getelementptr inbounds %struct.iscsi_conn, ptr %10, i32 0, i32 68
  %16 = ptrtoint ptr %sess.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sess.i, align 4
  %conn_digest_errors.i = getelementptr inbounds %struct.iscsi_session, ptr %17, i32 0, i32 24
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %conn_digest_errors.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %conn_digest_errors.i, i32 1, i32 3, i32 1) #10
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %conn_digest_errors.i, ptr %conn_digest_errors.i, i32 1, ptr elementtype(i32) %conn_digest_errors.i) #10, !srcloc !172
  br label %transport_err.i

if.end.i:                                         ; preds = %if.else
  %conn_state.i = getelementptr inbounds %struct.iscsi_conn, ptr %10, i32 0, i32 2
  %19 = ptrtoint ptr %conn_state.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %conn_state.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %20)
  %cmp.i = icmp eq i8 %20, 6
  br i1 %cmp.i, label %if.end.i.transport_err.i_crit_edge, label %if.end7.i

if.end.i.transport_err.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %transport_err.i

if.end7.i:                                        ; preds = %if.end.i
  %sess12.i = getelementptr inbounds %struct.iscsi_conn, ptr %10, i32 0, i32 68
  %21 = ptrtoint ptr %sess12.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sess12.i, align 4
  %sess_ops.i = getelementptr inbounds %struct.iscsi_session, ptr %22, i32 0, i32 47
  %23 = ptrtoint ptr %sess_ops.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sess_ops.i, align 8
  %SessionType.i = getelementptr inbounds %struct.iscsi_sess_ops, ptr %24, i32 0, i32 17
  %25 = ptrtoint ptr %SessionType.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %SessionType.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool14.not.i = icmp eq i8 %26, 0
  br i1 %tobool14.not.i, label %if.end7.i.if.end24.i_crit_edge, label %land.lhs.true.i

if.end7.i.if.end24.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.i

land.lhs.true.i:                                  ; preds = %if.end7.i
  %27 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %12, align 4
  %29 = and i8 %28, 63
  %conv15.i = zext i8 %29 to i32
  %and16.i = and i32 %conv15.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %do.end.i, label %land.lhs.true.i.if.end24.i_crit_edge

land.lhs.true.i.if.end24.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.i

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %conv15.i) #13
  %call23.i = tail call i32 @iscsit_add_reject(ptr noundef %10, i8 noundef zeroext 4, ptr noundef %12) #10
  br label %transport_err.i

if.end24.i:                                       ; preds = %land.lhs.true.i.if.end24.i_crit_edge, %if.end7.i.if.end24.i_crit_edge
  %30 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %12, align 4
  %32 = and i8 %31, 63
  %conv6.i.i = zext i8 %32 to i32
  %33 = zext i32 %conv6.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv6.i.i, label %do.end.i.i [
    i32 1, label %sw.bb.i.i
    i32 5, label %sw.bb8.i.i
    i32 0, label %sw.bb10.i.i
    i32 2, label %sw.bb19.i.i
    i32 4, label %sw.bb25.i.i
    i32 6, label %sw.bb40.i.i
    i32 16, label %sw.bb51.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end24.i
  %34 = ptrtoint ptr %csk to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %csk, align 4
  %iscsi_ppm.i.i.i.i = getelementptr inbounds %struct.cxgbit_device, ptr %35, i32 0, i32 1, i32 39
  %36 = ptrtoint ptr %iscsi_ppm.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %iscsi_ppm.i.i.i.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %call2.i.i.i = tail call ptr @iscsit_allocate_cmd(ptr noundef %10, i32 noundef 1) #10
  %tobool.not.i.i.i = icmp eq ptr %call2.i.i.i, null
  br i1 %tobool.not.i.i.i, label %sw.bb.i.i.reject.sink.split.i.i_crit_edge, label %if.end.i.i

sw.bb.i.i.reject.sink.split.i.i_crit_edge:        ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %reject.sink.split.i.i

if.end.i.i:                                       ; preds = %sw.bb.i.i
  %no_ddp_mask.i.i.i = getelementptr inbounds %struct.cxgbi_ppm, ptr %39, i32 0, i32 5, i32 5
  %40 = ptrtoint ptr %no_ddp_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %no_ddp_mask.i.i.i, align 4
  %tag.i.i.i = getelementptr %struct.iscsi_cmd, ptr %call2.i.i.i, i32 1, i32 17
  %42 = ptrtoint ptr %tag.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %tag.i.i.i, align 4
  %setup_ddp.i.i.i = getelementptr %struct.iscsi_cmd, ptr %call2.i.i.i, i32 1, i32 28
  %43 = ptrtoint ptr %setup_ddp.i.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %setup_ddp.i.i.i, align 8
  %44 = ptrtoint ptr %conn2.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %conn2.i, align 4
  %46 = ptrtoint ptr %skb3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %skb3, align 4
  %pdu_cb2.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %47, i32 0, i32 3, i32 8
  %48 = ptrtoint ptr %pdu_cb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pdu_cb2.i.i.i, align 4
  %hdr3.i.i.i = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, ptr %49, i32 0, i32 12
  %50 = ptrtoint ptr %hdr3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hdr3.i.i.i, align 4
  %call.i.i42.i = tail call i32 @iscsit_setup_scsi_cmd(ptr noundef %45, ptr noundef nonnull %call2.i.i.i, ptr noundef %51) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i42.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i42.i, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.transport_err.i_crit_edge, label %if.end.i97.i.i

if.end.i.i.transport_err.i_crit_edge:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %transport_err.i

if.end.i97.i.i:                                   ; preds = %if.end.i.i
  %dlen.i.i.i = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, ptr %49, i32 0, i32 9
  %52 = ptrtoint ptr %dlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dlen.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i96.i.i = icmp eq i32 %53, 0
  br i1 %tobool.not.i96.i.i, label %if.end.i97.i.i.if.end11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i97.i.i.if.end11.i.i.i_crit_edge:          ; preds = %if.end.i97.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i97.i.i
  %data_length.i.i.i = getelementptr inbounds %struct.iscsi_cmd, ptr %call2.i.i.i, i32 0, i32 70, i32 12
  %54 = ptrtoint ptr %data_length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %data_length.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %55)
  %cmp5.i.i.i = icmp eq i32 %53, %55
  br i1 %cmp5.i.i.i, label %land.lhs.true6.i.i.i, label %land.lhs.true.i.i.i.if.end11.i.i.i_crit_edge

land.lhs.true.i.i.i.if.end11.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i.i.i

land.lhs.true6.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %nr_dfrags.i.i.i = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, ptr %49, i32 0, i32 3
  %56 = ptrtoint ptr %nr_dfrags.i.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %nr_dfrags.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %57)
  %cmp7.i.i.i = icmp eq i8 %57, 1
  br i1 %cmp7.i.i.i, label %if.then9.i.i.i, label %land.lhs.true6.i.i.i.if.end11.i.i.i_crit_edge

land.lhs.true6.i.i.i.if.end11.i.i.i_crit_edge:    ; preds = %land.lhs.true6.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i.i.i

if.then9.i.i.i:                                   ; preds = %land.lhs.true6.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %se_cmd_flags.i.i.i = getelementptr inbounds %struct.iscsi_cmd, ptr %call2.i.i.i, i32 0, i32 70, i32 11
  %58 = ptrtoint ptr %se_cmd_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %se_cmd_flags.i.i.i, align 16
  %or.i.i.i = or i32 %59, 4096
  store i32 %or.i.i.i, ptr %se_cmd_flags.i.i.i, align 16
  br label %if.end11.i.i.i

if.end11.i.i.i:                                   ; preds = %if.then9.i.i.i, %land.lhs.true6.i.i.i.if.end11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.end11.i.i.i_crit_edge, %if.end.i97.i.i.if.end11.i.i.i_crit_edge
  %call12.i.i.i = tail call i32 @iscsit_process_scsi_cmd(ptr noundef %45, ptr noundef nonnull %call2.i.i.i, ptr noundef %51) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i.i)
  %cmp13.i.i.i = icmp slt i32 %call12.i.i.i, 0
  br i1 %cmp13.i.i.i, label %if.end11.i.i.i.if.end_crit_edge, label %if.else.i.i.i

if.end11.i.i.i.if.end_crit_edge:                  ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.else.i.i.i:                                    ; preds = %if.end11.i.i.i
  %60 = ptrtoint ptr %dlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dlen.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool22.not.i.i.i = icmp eq i32 %61, 0
  br i1 %tobool22.not.i.i.i, label %if.else.i.i.i.if.end_crit_edge, label %if.end24.i.i.i

if.else.i.i.i.if.end_crit_edge:                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end24.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i.i)
  %cmp16.not.not.i.i.i = icmp eq i32 %call12.i.i.i, 0
  %conn1.i.i.i.i = getelementptr inbounds %struct.iscsi_cmd, ptr %call2.i.i.i, i32 0, i32 66
  %62 = ptrtoint ptr %conn1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %conn1.i.i.i.i, align 8
  br i1 %cmp16.not.not.i.i.i, label %after_immediate_data.i.i.i.i, label %if.end24.i.i.i.if.then2.i.i.i.i_crit_edge

if.end24.i.i.i.if.then2.i.i.i.i_crit_edge:        ; preds = %if.end24.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then2.i.i.i.i

after_immediate_data.i.i.i.i:                     ; preds = %if.end24.i.i.i
  %call.i.i.i.i = tail call fastcc i32 @cxgbit_handle_immediate_data(ptr noundef nonnull %call2.i.i.i, ptr noundef %51) #10
  %64 = zext i32 %call.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %call.i.i.i.i, label %after_immediate_data.i.i.i.i.transport_err.i_crit_edge [
    i32 0, label %after_immediate_data.i.i.i.i.if.then2.i.i.i.i_crit_edge
    i32 1, label %if.then17.i.i.i.i
  ]

after_immediate_data.i.i.i.i.if.then2.i.i.i.i_crit_edge: ; preds = %after_immediate_data.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then2.i.i.i.i

after_immediate_data.i.i.i.i.transport_err.i_crit_edge: ; preds = %after_immediate_data.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %transport_err.i

if.then2.i.i.i.i:                                 ; preds = %after_immediate_data.i.i.i.i.if.then2.i.i.i.i_crit_edge, %if.end24.i.i.i.if.then2.i.i.i.i_crit_edge
  %cmdsn.i.i.i.i = getelementptr inbounds %struct.iscsi_scsi_req, ptr %51, i32 0, i32 8
  %65 = ptrtoint ptr %cmdsn.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %cmdsn.i.i.i.i, align 4
  %call3.i.i.i.i = tail call i32 @iscsit_sequence_cmd(ptr noundef %63, ptr noundef nonnull %call2.i.i.i, ptr noundef %51, i32 noundef %66) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3.i.i.i.i)
  %cmp4.i.i.i.i = icmp eq i32 %call3.i.i.i.i, -1
  br i1 %cmp4.i.i.i.i, label %if.then2.i.i.i.i.transport_err.i_crit_edge, label %if.end6.i.i.i.i

if.then2.i.i.i.i.transport_err.i_crit_edge:       ; preds = %if.then2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %transport_err.i

if.end6.i.i.i.i:                                  ; preds = %if.then2.i.i.i.i
  %sense_reason.i.i.i.i = getelementptr inbounds %struct.iscsi_cmd, ptr %call2.i.i.i, i32 0, i32 77
  %67 = ptrtoint ptr %sense_reason.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %sense_reason.i.i.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool7.not.i.i.i.i = icmp ne i32 %68, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i.i.i.i)
  %cmp8.i.i.i.i = icmp eq i32 %call3.i.i.i.i, 1
  %or.cond.i.i.i.i = select i1 %tobool7.not.i.i.i.i, i1 true, i1 %cmp8.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %if.then9.i.i.i.i, label %if.else.i.i.i.i

if.then9.i.i.i.i:                                 ; preds = %if.end6.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %se_cmd.i.i.i.i = getelementptr inbounds %struct.iscsi_cmd, ptr %call2.i.i.i, i32 0, i32 70
  %call10.i.i.i.i = tail call i32 @target_put_sess_cmd(ptr noundef %se_cmd.i.i.i.i) #10
  br label %if.end

if.else.i.i.i.i:                                  ; preds = %if.end6.i.i.i.i
  %unsolicited_data.i.i.i.i = getelementptr inbounds %struct.iscsi_cmd, ptr %call2.i.i.i, i32 0, i32 12
  %69 = ptrtoint ptr %unsolicited_data.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %unsolicited_data.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool11.not.i.i.i.i = icmp eq i8 %70, 0
  br i1 %tobool11.not.i.i.i.i, label %if.else.i.i.i.i.if.end_crit_edge, label %if.then12.i.i.i.i

if.else.i.i.i.i.if.end_crit_edge:                 ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then12.i.i.i.i:                                ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iscsit_set_unsolicited_dataout(ptr noundef nonnull %call2.i.i.i) #10
  br label %if.end

if.then17.i.i.i.i:                                ; preds = %after_immediate_data.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %i_state.i.i.i.i = getelementptr inbounds %struct.iscsi_cmd, ptr %call2.i.i.i, i32 0, i32 4
  %71 = ptrtoint ptr %i_state.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 41, ptr %i_state.i.i.i.i, align 4
  tail call void @iscsit_add_cmd_to_immediate_queue(ptr noundef nonnull %call2.i.i.i, ptr noundef %63, i8 noundef zeroext 41) #10
  br label %if.end

sw.bb8.i.i:                                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %call9.i.i = tail call fastcc i32 @cxgbit_handle_iscsi_dataout(ptr noundef %csk) #10
  br label %cxgbit_target_rx_opcode.exit.i

sw.bb10.i.i:                                      ; preds = %if.end24.i
  %ttt.i.i = getelementptr inbounds %struct.iscsi_hdr, ptr %12, i32 0, i32 7
  %72 = ptrtoint ptr %ttt.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %ttt.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %73)
  %cmp.i.i = icmp eq i32 %73, -1
  br i1 %cmp.i.i, label %if.then12.i.i, label %sw.bb10.i.i.if.end17.i.i_crit_edge

sw.bb10.i.i.if.end17.i.i_crit_edge:               ; preds = %sw.bb10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.i.i

if.then12.i.i:                                    ; preds = %sw.bb10.i.i
  %74 = ptrtoint ptr %csk to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %csk, align 4
  %iscsi_ppm.i.i99.i.i = getelementptr inbounds %struct.cxgbit_device, ptr %75, i32 0, i32 1, i32 39
  %76 = ptrtoint ptr %iscsi_ppm.i.i99.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %iscsi_ppm.i.i99.i.i, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 4
  %call2.i100.i.i = tail call ptr @iscsit_allocate_cmd(ptr noundef %10, i32 noundef 1) #10
  %tobool.not.i101.i.i = icmp eq ptr %call2.i100.i.i, null
  br i1 %tobool.not.i101.i.i, label %if.then12.i.i.reject.sink.split.i.i_crit_edge, label %cxgbit_allocate_cmd.exit108.i.i

if.then12.i.i.reject.sink.split.i.i_crit_edge:    ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %reject.sink.split.i.i

cxgbit_allocate_cmd.exit108.i.i:                  ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %no_ddp_mask.i104.i.i = getelementptr inbounds %struct.cxgbi_ppm, ptr %79, i32 0, i32 5, i32 5
  %80 = ptrtoint ptr %no_ddp_mask.i104.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %no_ddp_mask.i104.i.i, align 4
  %tag.i105.i.i = getelementptr %struct.iscsi_cmd, ptr %call2.i100.i.i, i32 1, i32 17
  %82 = ptrtoint ptr %tag.i105.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %tag.i105.i.i, align 4
  %setup_ddp.i106.i.i = getelementptr %struct.iscsi_cmd, ptr %call2.i100.i.i, i32 1, i32 28
  %83 = ptrtoint ptr %setup_ddp.i106.i.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 1, ptr %setup_ddp.i106.i.i, align 8
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %cxgbit_allocate_cmd.exit108.i.i, %sw.bb10.i.i.if.end17.i.i_crit_edge
  %cmd.0.i.i = phi ptr [ %call2.i100.i.i, %cxgbit_allocate_cmd.exit108.i.i ], [ null, %sw.bb10.i.i.if.end17.i.i_crit_edge ]
  %call18.i.i = tail call fastcc i32 @cxgbit_handle_nop_out(ptr noundef %csk, ptr noundef %cmd.0.i.i) #10
  br label %cxgbit_target_rx_opcode.exit.i

sw.bb19.i.i:                                      ; preds = %if.end24.i
  %84 = ptrtoint ptr %csk to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %csk, align 4
  %iscsi_ppm.i.i110.i.i = getelementptr inbounds %struct.cxgbit_device, ptr %85, i32 0, i32 1, i32 39
  %86 = ptrtoint ptr %iscsi_ppm.i.i110.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %iscsi_ppm.i.i110.i.i, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 4
  %call2.i111.i.i = tail call ptr @iscsit_allocate_cmd(ptr noundef %10, i32 noundef 1) #10
  %tobool.not.i112.i.i = icmp eq ptr %call2.i111.i.i, null
  br i1 %tobool.not.i112.i.i, label %sw.bb19.i.i.reject.sink.split.i.i_crit_edge, label %if.end23.i.i

sw.bb19.i.i.reject.sink.split.i.i_crit_edge:      ; preds = %sw.bb19.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %reject.sink.split.i.i

if.end23.i.i:                                     ; preds = %sw.bb19.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %no_ddp_mask.i115.i.i = getelementptr inbounds %struct.cxgbi_ppm, ptr %89, i32 0, i32 5, i32 5
  %90 = ptrtoint ptr %no_ddp_mask.i115.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %no_ddp_mask.i115.i.i, align 4
  %tag.i116.i.i = getelementptr %struct.iscsi_cmd, ptr %call2.i111.i.i, i32 1, i32 17
  %92 = ptrtoint ptr %tag.i116.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %tag.i116.i.i, align 4
  %setup_ddp.i117.i.i = getelementptr %struct.iscsi_cmd, ptr %call2.i111.i.i, i32 1, i32 28
  %93 = ptrtoint ptr %setup_ddp.i117.i.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 1, ptr %setup_ddp.i117.i.i, align 8
  %call24.i.i = tail call i32 @iscsit_handle_task_mgt_cmd(ptr noundef %10, ptr noundef nonnull %call2.i111.i.i, ptr noundef %12) #10
  br label %cxgbit_target_rx_opcode.exit.i

sw.bb25.i.i:                                      ; preds = %if.end24.i
  %ttt26.i.i = getelementptr inbounds %struct.iscsi_hdr, ptr %12, i32 0, i32 7
  %94 = ptrtoint ptr %ttt26.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %ttt26.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %95)
  %cmp27.not.i.i = icmp eq i32 %95, -1
  br i1 %cmp27.not.i.i, label %if.else.i.i, label %if.then29.i.i

if.then29.i.i:                                    ; preds = %sw.bb25.i.i
  %itt.i.i = getelementptr inbounds %struct.iscsi_hdr, ptr %12, i32 0, i32 6
  %96 = ptrtoint ptr %itt.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %itt.i.i, align 4
  %call30.i.i = tail call ptr @iscsit_find_cmd_from_itt(ptr noundef %10, i32 noundef %97) #10
  %tobool31.not.i.i = icmp eq ptr %call30.i.i, null
  br i1 %tobool31.not.i.i, label %if.then29.i.i.reject.i.i_crit_edge, label %if.then29.i.i.if.end38.i.i_crit_edge

if.then29.i.i.if.end38.i.i_crit_edge:             ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38.i.i

if.then29.i.i.reject.i.i_crit_edge:               ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %reject.i.i

if.else.i.i:                                      ; preds = %sw.bb25.i.i
  %98 = ptrtoint ptr %csk to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %csk, align 4
  %iscsi_ppm.i.i121.i.i = getelementptr inbounds %struct.cxgbit_device, ptr %99, i32 0, i32 1, i32 39
  %100 = ptrtoint ptr %iscsi_ppm.i.i121.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %iscsi_ppm.i.i121.i.i, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %101, align 4
  %call2.i122.i.i = tail call ptr @iscsit_allocate_cmd(ptr noundef %10, i32 noundef 1) #10
  %tobool.not.i123.i.i = icmp eq ptr %call2.i122.i.i, null
  br i1 %tobool.not.i123.i.i, label %if.else.i.i.reject.sink.split.i.i_crit_edge, label %cxgbit_allocate_cmd.exit130.i.i

if.else.i.i.reject.sink.split.i.i_crit_edge:      ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %reject.sink.split.i.i

cxgbit_allocate_cmd.exit130.i.i:                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %no_ddp_mask.i126.i.i = getelementptr inbounds %struct.cxgbi_ppm, ptr %103, i32 0, i32 5, i32 5
  %104 = ptrtoint ptr %no_ddp_mask.i126.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %no_ddp_mask.i126.i.i, align 4
  %tag.i127.i.i = getelementptr %struct.iscsi_cmd, ptr %call2.i122.i.i, i32 1, i32 17
  %106 = ptrtoint ptr %tag.i127.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %tag.i127.i.i, align 4
  %setup_ddp.i128.i.i = getelementptr %struct.iscsi_cmd, ptr %call2.i122.i.i, i32 1, i32 28
  %107 = ptrtoint ptr %setup_ddp.i128.i.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 1, ptr %setup_ddp.i128.i.i, align 8
  br label %if.end38.i.i

if.end38.i.i:                                     ; preds = %cxgbit_allocate_cmd.exit130.i.i, %if.then29.i.i.if.end38.i.i_crit_edge
  %cmd.1.i.i = phi ptr [ %call30.i.i, %if.then29.i.i.if.end38.i.i_crit_edge ], [ %call2.i122.i.i, %cxgbit_allocate_cmd.exit130.i.i ]
  %108 = ptrtoint ptr %conn2.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %conn2.i, align 4
  %110 = ptrtoint ptr %skb3 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %skb3, align 4
  %pdu_cb2.i133.i.i = getelementptr inbounds %struct.sk_buff, ptr %111, i32 0, i32 3, i32 8
  %112 = ptrtoint ptr %pdu_cb2.i133.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %pdu_cb2.i133.i.i, align 4
  %hdr3.i134.i.i = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, ptr %113, i32 0, i32 12
  %114 = ptrtoint ptr %hdr3.i134.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %hdr3.i134.i.i, align 4
  %dlen.i135.i.i = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, ptr %113, i32 0, i32 9
  %116 = ptrtoint ptr %dlen.i135.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %dlen.i135.i.i, align 4
  %call.i136.i.i = tail call i32 @iscsit_setup_text_cmd(ptr noundef %109, ptr noundef nonnull %cmd.1.i.i, ptr noundef %115) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i136.i.i)
  %cmp.i137.i.i = icmp slt i32 %call.i136.i.i, 0
  br i1 %cmp.i137.i.i, label %if.end38.i.i.transport_err.i_crit_edge, label %if.end.i139.i.i

if.end38.i.i.transport_err.i_crit_edge:           ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %transport_err.i

if.end.i139.i.i:                                  ; preds = %if.end38.i.i
  %118 = ptrtoint ptr %113 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %113, align 4
  %120 = and i8 %119, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool.not.i138.i.i = icmp eq i8 %120, 0
  br i1 %tobool.not.i138.i.i, label %if.end13.i.i.i, label %if.then4.i.i.i

if.then4.i.i.i:                                   ; preds = %if.end.i139.i.i
  %sess.i.i.i = getelementptr inbounds %struct.iscsi_conn, ptr %109, i32 0, i32 68
  %121 = ptrtoint ptr %sess.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %sess.i.i.i, align 4
  %sess_ops.i.i.i = getelementptr inbounds %struct.iscsi_session, ptr %122, i32 0, i32 47
  %123 = ptrtoint ptr %sess_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %sess_ops.i.i.i, align 8
  %ErrorRecoveryLevel.i.i.i = getelementptr inbounds %struct.iscsi_sess_ops, ptr %124, i32 0, i32 16
  %125 = ptrtoint ptr %ErrorRecoveryLevel.i.i.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %ErrorRecoveryLevel.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %tobool5.not.i.i.i = icmp eq i8 %126, 0
  br i1 %tobool5.not.i.i.i, label %do.end.i140.i.i, label %do.end10.i.i.i

do.end.i140.i.i:                                  ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call7.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67) #13
  %127 = ptrtoint ptr %hdr3.i134.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %hdr3.i134.i.i, align 4
  %call31.i.i.i = tail call i32 @iscsit_reject_cmd(ptr noundef nonnull %cmd.1.i.i, i8 noundef zeroext 4, ptr noundef %128) #10
  br label %cxgbit_target_rx_opcode.exit.i

do.end10.i.i.i:                                   ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %cmdsn.i.i.i = getelementptr inbounds %struct.iscsi_text, ptr %115, i32 0, i32 8
  %129 = ptrtoint ptr %cmdsn.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %cmdsn.i.i.i, align 4
  %call12.i141.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef %130) #13
  br label %if.end

if.end13.i.i.i:                                   ; preds = %if.end.i139.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool14.not.i.i.i = icmp eq i32 %117, 0
  br i1 %tobool14.not.i.i.i, label %if.end13.i.i.i.if.end28.i.i.i_crit_edge, label %if.end8.i.i.i.i.i

if.end13.i.i.i.if.end28.i.i.i_crit_edge:          ; preds = %if.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28.i.i.i

if.end8.i.i.i.i.i:                                ; preds = %if.end13.i.i.i
  %call9.i.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %117, i32 noundef 3520) #15
  %tobool17.not.i.i.i = icmp eq ptr %call9.i.i.i.i.i, null
  br i1 %tobool17.not.i.i.i, label %do.end21.i.i.i, label %if.end24.i142.i.i

do.end21.i.i.i:                                   ; preds = %if.end8.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call23.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, i32 noundef %117) #13
  br label %transport_err.i

if.end24.i142.i.i:                                ; preds = %if.end8.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %131 = ptrtoint ptr %skb3 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %skb3, align 4
  %doffset.i.i.i = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, ptr %113, i32 0, i32 10
  %133 = ptrtoint ptr %doffset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %doffset.i.i.i, align 4
  %call26.i.i.i = tail call i32 @skb_copy_bits(ptr noundef %132, i32 noundef %134, ptr noundef nonnull %call9.i.i.i.i.i, i32 noundef %117) #10
  %sub.i.i.i = add i32 %117, -1
  %arrayidx27.i.i.i = getelementptr i8, ptr %call9.i.i.i.i.i, i32 %sub.i.i.i
  %135 = ptrtoint ptr %arrayidx27.i.i.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 0, ptr %arrayidx27.i.i.i, align 1
  %text_in_ptr.i.i.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd.1.i.i, i32 0, i32 45
  %136 = ptrtoint ptr %text_in_ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %call9.i.i.i.i.i, ptr %text_in_ptr.i.i.i, align 4
  br label %if.end28.i.i.i

if.end28.i.i.i:                                   ; preds = %if.end24.i142.i.i, %if.end13.i.i.i.if.end28.i.i.i_crit_edge
  %call29.i.i.i = tail call i32 @iscsit_process_text_cmd(ptr noundef %109, ptr noundef nonnull %cmd.1.i.i, ptr noundef %115) #10
  br label %cxgbit_target_rx_opcode.exit.i

sw.bb40.i.i:                                      ; preds = %if.end24.i
  %137 = ptrtoint ptr %csk to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %csk, align 4
  %iscsi_ppm.i.i145.i.i = getelementptr inbounds %struct.cxgbit_device, ptr %138, i32 0, i32 1, i32 39
  %139 = ptrtoint ptr %iscsi_ppm.i.i145.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %iscsi_ppm.i.i145.i.i, align 4
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %140, align 4
  %call2.i146.i.i = tail call ptr @iscsit_allocate_cmd(ptr noundef %10, i32 noundef 1) #10
  %tobool.not.i147.i.i = icmp eq ptr %call2.i146.i.i, null
  br i1 %tobool.not.i147.i.i, label %sw.bb40.i.i.reject.sink.split.i.i_crit_edge, label %if.end44.i.i

sw.bb40.i.i.reject.sink.split.i.i_crit_edge:      ; preds = %sw.bb40.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %reject.sink.split.i.i

if.end44.i.i:                                     ; preds = %sw.bb40.i.i
  %no_ddp_mask.i150.i.i = getelementptr inbounds %struct.cxgbi_ppm, ptr %142, i32 0, i32 5, i32 5
  %143 = ptrtoint ptr %no_ddp_mask.i150.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %no_ddp_mask.i150.i.i, align 4
  %tag.i151.i.i = getelementptr %struct.iscsi_cmd, ptr %call2.i146.i.i, i32 1, i32 17
  %145 = ptrtoint ptr %tag.i151.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %tag.i151.i.i, align 4
  %setup_ddp.i152.i.i = getelementptr %struct.iscsi_cmd, ptr %call2.i146.i.i, i32 1, i32 28
  %146 = ptrtoint ptr %setup_ddp.i152.i.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 1, ptr %setup_ddp.i152.i.i, align 8
  %call45.i.i = tail call i32 @iscsit_handle_logout_cmd(ptr noundef %10, ptr noundef nonnull %call2.i146.i.i, ptr noundef %12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i.i)
  %cmp46.i.i = icmp sgt i32 %call45.i.i, 0
  br i1 %cmp46.i.i, label %if.then48.i.i, label %if.end44.i.i.cxgbit_target_rx_opcode.exit.i_crit_edge

if.end44.i.i.cxgbit_target_rx_opcode.exit.i_crit_edge: ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbit_target_rx_opcode.exit.i

if.then48.i.i:                                    ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conn_logout_comp.i.i = getelementptr inbounds %struct.iscsi_conn, ptr %10, i32 0, i32 33
  %call49.i.i = tail call i32 @wait_for_completion_timeout(ptr noundef %conn_logout_comp.i.i, i32 noundef 1500) #10
  br label %if.end

sw.bb51.i.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %call52.i.i = tail call i32 @iscsit_handle_snack(ptr noundef %10, ptr noundef %12) #10
  br label %cxgbit_target_rx_opcode.exit.i

do.end.i.i:                                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %call54.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %conv6.i.i) #13
  tail call void @dump_stack() #13
  br label %transport_err.i

reject.sink.split.i.i:                            ; preds = %sw.bb40.i.i.reject.sink.split.i.i_crit_edge, %if.else.i.i.reject.sink.split.i.i_crit_edge, %sw.bb19.i.i.reject.sink.split.i.i_crit_edge, %if.then12.i.i.reject.sink.split.i.i_crit_edge, %sw.bb.i.i.reject.sink.split.i.i_crit_edge
  %call3.i148.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #13
  br label %reject.i.i

reject.i.i:                                       ; preds = %reject.sink.split.i.i, %if.then29.i.i.reject.i.i_crit_edge
  %call55.i.i = tail call i32 @iscsit_add_reject(ptr noundef %10, i8 noundef zeroext 10, ptr noundef %12) #10
  br label %cxgbit_target_rx_opcode.exit.i

cxgbit_target_rx_opcode.exit.i:                   ; preds = %reject.i.i, %sw.bb51.i.i, %if.end44.i.i.cxgbit_target_rx_opcode.exit.i_crit_edge, %if.end28.i.i.i, %do.end.i140.i.i, %if.end23.i.i, %if.end17.i.i, %sw.bb8.i.i
  %retval.0.i.i = phi i32 [ %call55.i.i, %reject.i.i ], [ %call52.i.i, %sw.bb51.i.i ], [ %call45.i.i, %if.end44.i.i.cxgbit_target_rx_opcode.exit.i_crit_edge ], [ %call24.i.i, %if.end23.i.i ], [ %call18.i.i, %if.end17.i.i ], [ %call9.i.i, %sw.bb8.i.i ], [ %call31.i.i.i, %do.end.i140.i.i ], [ %call29.i.i.i, %if.end28.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp26.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp26.i, label %cxgbit_target_rx_opcode.exit.i.transport_err.i_crit_edge, label %cxgbit_target_rx_opcode.exit.i.if.end_crit_edge

cxgbit_target_rx_opcode.exit.i.if.end_crit_edge:  ; preds = %cxgbit_target_rx_opcode.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

cxgbit_target_rx_opcode.exit.i.transport_err.i_crit_edge: ; preds = %cxgbit_target_rx_opcode.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %transport_err.i

transport_err.i:                                  ; preds = %cxgbit_target_rx_opcode.exit.i.transport_err.i_crit_edge, %do.end.i.i, %do.end21.i.i.i, %if.end38.i.i.transport_err.i_crit_edge, %if.then2.i.i.i.i.transport_err.i_crit_edge, %after_immediate_data.i.i.i.i.transport_err.i_crit_edge, %if.end.i.i.transport_err.i_crit_edge, %do.end.i, %if.end.i.transport_err.i_crit_edge, %if.then.i
  br label %if.end

if.end:                                           ; preds = %transport_err.i, %cxgbit_target_rx_opcode.exit.i.if.end_crit_edge, %if.then48.i.i, %do.end10.i.i.i, %if.then17.i.i.i.i, %if.then12.i.i.i.i, %if.else.i.i.i.i.if.end_crit_edge, %if.then9.i.i.i.i, %if.else.i.i.i.if.end_crit_edge, %if.end11.i.i.i.if.end_crit_edge, %if.then
  %ret.0 = phi i32 [ %call4, %if.then ], [ -1, %transport_err.i ], [ 0, %cxgbit_target_rx_opcode.exit.i.if.end_crit_edge ], [ 0, %if.then48.i.i ], [ 0, %if.end11.i.i.i.if.end_crit_edge ], [ 0, %if.else.i.i.i.if.end_crit_edge ], [ 0, %if.then9.i.i.i.i ], [ 0, %if.then12.i.i.i.i ], [ 0, %if.else.i.i.i.i.if.end_crit_edge ], [ 0, %if.then17.i.i.i.i ], [ 0, %do.end10.i.i.i ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cxgbit_lro_hskb_reset(ptr nocapture noundef readonly %csk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lro_hskb = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 15
  %0 = ptrtoint ptr %lro_hskb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lro_hskb, align 4
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end.i, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 52)
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %nr_frags, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp16.not = icmp eq i8 %8, 0
  br i1 %cmp16.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %put_page.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %put_page.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.skb_shared_info, ptr %3, i32 0, i32 12, i32 %indvars.iv
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %11 = getelementptr inbounds %struct.page, ptr %10, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  %and.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !171

if.then.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %13, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %10 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %14, %if.end.i.i ]
  %15 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %15, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  %16 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i.i.i.i = icmp eq i32 %17, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !168

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %18 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %18, ptr noundef nonnull @.str.75) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !179
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !180
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #10
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #10, !srcloc !181
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %19, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !182
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@cxgbit_lro_hskb_reset, %if.then.i.i.i.i.i)) #10
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !169

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %15, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #10
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__put_page(ptr noundef %15) #10
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %20 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %nr_frags, align 2
  %22 = zext i8 %21 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %22
  br i1 %cmp, label %put_page.exit.for.body_crit_edge, label %put_page.exit.for.end_crit_edge

put_page.exit.for.end_crit_edge:                  ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

put_page.exit.for.body_crit_edge:                 ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %put_page.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %23 = ptrtoint ptr %nr_frags to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %nr_frags, align 2
  %data_len = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 7
  %24 = ptrtoint ptr %data_len to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %data_len, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %25 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len, align 4
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 20
  %27 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %truesize, align 8
  %sub = sub i32 %28, %26
  store i32 %sub, ptr %truesize, align 8
  store i32 0, ptr %len, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cxgbit_rx_login_pdu(ptr nocapture noundef readonly %csk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conn1 = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 2
  %0 = ptrtoint ptr %conn1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn1, align 4
  %login2 = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 41
  %2 = ptrtoint ptr %login2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %login2, align 8
  %skb = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 13
  %4 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skb, align 4
  %pdu_cb3 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %pdu_cb3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdu_cb3, align 4
  %req = getelementptr inbounds %struct.iscsi_login, ptr %3, i32 0, i32 17
  %hdr = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hdr, align 4
  %10 = call ptr @memcpy(ptr %req, ptr %9, i32 48)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxgbit_rx_login_pdu.__UNIQUE_ID_ddebug676, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxgbit_rx_login_pdu, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !169

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %flags = getelementptr inbounds %struct.iscsi_login, ptr %3, i32 0, i32 17, i32 1
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %flags, align 1
  %conv = zext i8 %12 to i32
  %itt = getelementptr inbounds %struct.iscsi_login, ptr %3, i32 0, i32 17, i32 16
  %13 = ptrtoint ptr %itt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %itt, align 4
  %cmdsn = getelementptr inbounds %struct.iscsi_login, ptr %3, i32 0, i32 17, i32 24
  %15 = ptrtoint ptr %cmdsn to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cmdsn, align 4
  %exp_statsn = getelementptr inbounds %struct.iscsi_login, ptr %3, i32 0, i32 17, i32 28
  %17 = ptrtoint ptr %exp_statsn to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %exp_statsn, align 4
  %cid = getelementptr inbounds %struct.iscsi_login, ptr %3, i32 0, i32 17, i32 20
  %19 = ptrtoint ptr %cid to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %cid, align 4
  %conv6 = zext i16 %20 to i32
  %dlen = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, ptr %7, i32 0, i32 9
  %21 = ptrtoint ptr %dlen to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dlen, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxgbit_rx_login_pdu.__UNIQUE_ID_ddebug676, ptr noundef nonnull @.str.42, i32 noundef %conv, i32 noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %conv6, i32 noundef %22) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %first_request = getelementptr inbounds %struct.iscsi_login, ptr %3, i32 0, i32 4
  %23 = ptrtoint ptr %first_request to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %first_request, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool7.not = icmp eq i8 %24, 0
  br i1 %tobool7.not, label %do.end.if.end28_crit_edge, label %if.then8

do.end.if.end28_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %tsih = getelementptr inbounds %struct.iscsi_login, ptr %3, i32 0, i32 17, i32 14
  %25 = ptrtoint ptr %tsih to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %tsih, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool11.not = icmp eq i16 %26, 0
  %conv14 = zext i1 %tobool11.not to i8
  %leading_connection = getelementptr inbounds %struct.iscsi_login, ptr %3, i32 0, i32 3
  %27 = ptrtoint ptr %leading_connection to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv14, ptr %leading_connection, align 1
  %flags15 = getelementptr inbounds %struct.iscsi_login, ptr %3, i32 0, i32 17, i32 1
  %28 = ptrtoint ptr %flags15 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %flags15, align 1
  %30 = lshr i8 %29, 2
  %31 = and i8 %30, 3
  %current_stage = getelementptr inbounds %struct.iscsi_login, ptr %3, i32 0, i32 2
  %32 = ptrtoint ptr %current_stage to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %current_stage, align 2
  %min_version = getelementptr inbounds %struct.iscsi_login, ptr %3, i32 0, i32 17, i32 3
  %33 = ptrtoint ptr %min_version to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %min_version, align 1
  %version_min = getelementptr inbounds %struct.iscsi_login, ptr %3, i32 0, i32 5
  %35 = ptrtoint ptr %version_min to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %version_min, align 1
  %max_version = getelementptr inbounds %struct.iscsi_login, ptr %3, i32 0, i32 17, i32 2
  %36 = ptrtoint ptr %max_version to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %max_version, align 2
  %version_max = getelementptr inbounds %struct.iscsi_login, ptr %3, i32 0, i32 6
  %38 = ptrtoint ptr %version_max to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %version_max, align 2
  %isid = getelementptr inbounds %struct.iscsi_login, ptr %3, i32 0, i32 10
  %isid19 = getelementptr inbounds %struct.iscsi_login, ptr %3, i32 0, i32 17, i32 8
  %39 = call ptr @memcpy(ptr %isid, ptr %isid19, i32 6)
  %cmdsn21 = getelementptr inbounds %struct.iscsi_login, ptr %3, i32 0, i32 17, i32 24
  %40 = ptrtoint ptr %cmdsn21 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cmdsn21, align 4
  %cmd_sn = getelementptr inbounds %struct.iscsi_login, ptr %3, i32 0, i32 11
  %42 = ptrtoint ptr %cmd_sn to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %cmd_sn, align 16
  %itt22 = getelementptr inbounds %struct.iscsi_login, ptr %3, i32 0, i32 17, i32 16
  %43 = ptrtoint ptr %itt22 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %itt22, align 4
  %init_task_tag = getelementptr inbounds %struct.iscsi_login, ptr %3, i32 0, i32 12
  %45 = ptrtoint ptr %init_task_tag to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %init_task_tag, align 4
  %exp_statsn23 = getelementptr inbounds %struct.iscsi_login, ptr %3, i32 0, i32 17, i32 28
  %46 = ptrtoint ptr %exp_statsn23 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %exp_statsn23, align 4
  %initial_exp_statsn = getelementptr inbounds %struct.iscsi_login, ptr %3, i32 0, i32 13
  %48 = ptrtoint ptr %initial_exp_statsn to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %initial_exp_statsn, align 8
  %cid24 = getelementptr inbounds %struct.iscsi_login, ptr %3, i32 0, i32 17, i32 20
  %49 = ptrtoint ptr %cid24 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %cid24, align 4
  %cid25 = getelementptr inbounds %struct.iscsi_login, ptr %3, i32 0, i32 15
  %51 = ptrtoint ptr %cid25 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %cid25, align 32
  %tsih27 = getelementptr inbounds %struct.iscsi_login, ptr %3, i32 0, i32 16
  %52 = ptrtoint ptr %tsih27 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %26, ptr %tsih27, align 2
  br label %if.end28

if.end28:                                         ; preds = %if.then8, %do.end.if.end28_crit_edge
  %call29 = tail call i32 @iscsi_target_check_login_request(ptr noundef %1, ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp = icmp slt i32 %call29, 0
  br i1 %cmp, label %if.end28.cleanup_crit_edge, label %if.end32

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end32:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %req_buf = getelementptr inbounds %struct.iscsi_login, ptr %3, i32 0, i32 19
  %53 = ptrtoint ptr %req_buf to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %req_buf, align 4
  %55 = call ptr @memset(ptr %54, i32 0, i32 8192)
  %56 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %skb, align 4
  %doffset = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, ptr %7, i32 0, i32 10
  %58 = ptrtoint ptr %doffset to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %doffset, align 4
  %60 = load ptr, ptr %req_buf, align 4
  %dlen35 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, ptr %7, i32 0, i32 9
  %61 = ptrtoint ptr %dlen35 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %dlen35, align 4
  %call36 = tail call i32 @skb_copy_bits(ptr noundef %57, i32 noundef %59, ptr noundef %60, i32 noundef %62) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.end28.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end32 ], [ -1, %if.end28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_target_check_login_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_add_reject(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cxgbit_handle_iscsi_dataout(ptr nocapture noundef readonly %csk) unnamed_addr #0 align 64 {
entry:
  %cmd = alloca ptr, align 4
  %success = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conn1 = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 2
  %0 = ptrtoint ptr %conn1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd) #10
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %cmd, align 4
  %skb = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 13
  %3 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skb, align 4
  %pdu_cb2 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 3, i32 8
  %5 = ptrtoint ptr %pdu_cb2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdu_cb2, align 4
  %hdr3 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, ptr %6, i32 0, i32 12
  %7 = ptrtoint ptr %hdr3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hdr3, align 4
  %offset = getelementptr inbounds %struct.iscsi_data, ptr %8, i32 0, i32 12
  %9 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offset, align 4
  %dlength = getelementptr inbounds %struct.iscsi_data, ptr %8, i32 0, i32 4
  %11 = ptrtoint ptr %dlength to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %dlength, align 1
  %conv = zext i8 %12 to i32
  %shl = shl nuw nsw i32 %conv, 16
  %arrayidx6 = getelementptr %struct.iscsi_data, ptr %8, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %14 to i32
  %shl8 = shl nuw nsw i32 %conv7, 8
  %or = or i32 %shl8, %shl
  %arrayidx10 = getelementptr %struct.iscsi_data, ptr %8, i32 0, i32 4, i32 2
  %15 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %16 to i32
  %or12 = or i32 %or, %conv11
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %6, align 4
  %19 = and i8 %18, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not = icmp eq i8 %19, 0
  br i1 %tobool.not, label %if.else28, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %success) #10
  %20 = ptrtoint ptr %success to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %success, align 1
  %itt = getelementptr inbounds %struct.iscsi_data, ptr %8, i32 0, i32 6
  %21 = ptrtoint ptr %itt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %itt, align 4
  %call = tail call ptr @iscsit_find_cmd_from_itt_or_dump(ptr noundef %1, i32 noundef %22, i32 noundef 0) #10
  %23 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call, ptr %cmd, align 4
  %tobool16.not = icmp eq ptr %call, null
  br i1 %tobool16.not, label %if.then.cleanup.thread_crit_edge, label %if.end

if.then.cleanup.thread_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.end:                                           ; preds = %if.then
  %write_data_done = getelementptr inbounds %struct.iscsi_cmd, ptr %call, i32 0, i32 40
  %24 = ptrtoint ptr %write_data_done to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %write_data_done, align 128
  %sub = sub i32 %10, %25
  %sess = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 68
  %26 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sess, align 4
  %rx_data_octets = getelementptr inbounds %struct.iscsi_session, ptr %27, i32 0, i32 23
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_data_octets, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %rx_data_octets, i32 1, i32 3, i32 1) #10
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_data_octets, ptr %rx_data_octets, i32 %sub, ptr elementtype(i32) %rx_data_octets) #10, !srcloc !172
  %29 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cmd, align 4
  %write_data_done18 = getelementptr inbounds %struct.iscsi_cmd, ptr %30, i32 0, i32 40
  %31 = ptrtoint ptr %write_data_done18 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %10, ptr %write_data_done18, align 128
  %next_burst_len = getelementptr inbounds %struct.iscsi_cmd, ptr %30, i32 0, i32 42
  %32 = ptrtoint ptr %next_burst_len to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %sub, ptr %next_burst_len, align 8
  %datasn = getelementptr inbounds %struct.iscsi_data, ptr %8, i32 0, i32 11
  %33 = ptrtoint ptr %datasn to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %datasn, align 4
  %data_sn = getelementptr inbounds %struct.iscsi_cmd, ptr %30, i32 0, i32 21
  %35 = ptrtoint ptr %data_sn to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %data_sn, align 4
  %call19 = call i32 @__iscsit_check_dataout_hdr(ptr noundef %1, ptr noundef %8, ptr noundef %30, i32 noundef %or12, ptr noundef nonnull %success) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp = icmp slt i32 %call19, 0
  br i1 %cmp, label %if.end.cleanup.thread_crit_edge, label %cleanup

if.end.cleanup.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end.cleanup.thread_crit_edge, %if.then.cleanup.thread_crit_edge
  %retval.0.ph = phi i32 [ %call19, %if.end.cleanup.thread_crit_edge ], [ 0, %if.then.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %success) #10
  br label %cleanup100

cleanup:                                          ; preds = %if.end
  %36 = ptrtoint ptr %success to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %success, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool22.not.not = icmp eq i8 %37, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %success) #10
  br i1 %tobool22.not.not, label %cleanup.cleanup100_crit_edge, label %cleanup.if.end38_crit_edge

cleanup.if.end38_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

cleanup.cleanup100_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup100

if.else28:                                        ; preds = %entry
  %call29 = call i32 @iscsit_check_dataout_hdr(ptr noundef %1, ptr noundef %8, ptr noundef nonnull %cmd) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.else28.cleanup100_crit_edge, label %if.else33

if.else28.cleanup100_crit_edge:                   ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup100

if.else33:                                        ; preds = %if.else28
  %38 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cmd, align 4
  %tobool34.not = icmp eq ptr %39, null
  br i1 %tobool34.not, label %if.else33.cleanup100_crit_edge, label %if.else33.if.end38_crit_edge

if.else33.if.end38_crit_edge:                     ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.else33.cleanup100_crit_edge:                   ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup100

if.end38:                                         ; preds = %if.else33.if.end38_crit_edge, %cleanup.if.end38_crit_edge
  %40 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %6, align 4
  %42 = and i8 %41, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool42.not = icmp eq i8 %42, 0
  br i1 %tobool42.not, label %do.body49, label %do.end

do.end:                                           ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  %itt44 = getelementptr inbounds %struct.iscsi_data, ptr %8, i32 0, i32 6
  %43 = ptrtoint ptr %itt44 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %itt44, align 4
  %45 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %offset, align 4
  %datasn46 = getelementptr inbounds %struct.iscsi_data, ptr %8, i32 0, i32 11
  %47 = ptrtoint ptr %datasn46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %datasn46, align 4
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %44, i32 noundef %46, i32 noundef %or12, i32 noundef %48) #13
  br label %check_payload

do.body49:                                        ; preds = %if.end38
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxgbit_handle_iscsi_dataout.__UNIQUE_ID_ddebug671, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxgbit_handle_iscsi_dataout, %if.then55)) #10
          to label %do.end59 [label %if.then55], !srcloc !169

if.then55:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cmd, align 4
  %write_data_done56 = getelementptr inbounds %struct.iscsi_cmd, ptr %50, i32 0, i32 40
  %51 = ptrtoint ptr %write_data_done56 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %write_data_done56, align 128
  %data_length = getelementptr inbounds %struct.iscsi_cmd, ptr %50, i32 0, i32 70, i32 12
  %53 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %data_length, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxgbit_handle_iscsi_dataout.__UNIQUE_ID_ddebug671, ptr noundef nonnull @.str.56, i32 noundef %or12, i32 noundef %52, i32 noundef %54) #10
  br label %do.end59

do.end59:                                         ; preds = %if.then55, %do.body49
  %55 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %6, align 4
  %57 = and i8 %56, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool63.not = icmp eq i8 %57, 0
  br i1 %tobool63.not, label %if.then64, label %do.end59.if.end74_crit_edge

do.end59.if.end74_crit_edge:                      ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74

if.then64:                                        ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #12
  %rem = and i32 %10, 4095
  %div155 = lshr i32 %10, 12
  %58 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cmd, align 4
  %t_data_sg = getelementptr inbounds %struct.iscsi_cmd, ptr %59, i32 0, i32 70, i32 39
  %60 = ptrtoint ptr %t_data_sg to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %t_data_sg, align 4
  %arrayidx66 = getelementptr %struct.scatterlist, ptr %61, i32 %div155
  %add = add nuw nsw i32 %or12, %rem
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp71 = icmp eq i32 %add, 0
  %sub68 = add nuw nsw i32 %add, 4095
  %div69156 = lshr i32 %sub68, 12
  %cond = select i1 %cmp71, i32 1, i32 %div69156
  %62 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %skb, align 4
  call fastcc void @cxgbit_skb_copy_to_sg(ptr noundef %63, ptr noundef %arrayidx66, i32 noundef %cond, i32 noundef %rem)
  br label %if.end74

if.end74:                                         ; preds = %if.then64, %do.end59.if.end74_crit_edge
  %64 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cmd, align 4
  %add.ptr.i = getelementptr %struct.iscsi_cmd, ptr %65, i32 1
  %release = getelementptr inbounds %struct.cxgbit_cmd, ptr %add.ptr.i, i32 0, i32 3
  %66 = ptrtoint ptr %release to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %release, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool77.not = icmp eq i8 %67, 0
  br i1 %tobool77.not, label %if.end74.check_payload_crit_edge, label %land.lhs.true

if.end74.check_payload_crit_edge:                 ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  br label %check_payload

land.lhs.true:                                    ; preds = %if.end74
  %sgl = getelementptr %struct.iscsi_cmd, ptr %65, i32 1, i32 26
  %68 = ptrtoint ptr %sgl to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %sgl, align 8
  %tobool79.not = icmp eq ptr %69, null
  br i1 %tobool79.not, label %land.lhs.true.check_payload_crit_edge, label %land.lhs.true80

land.lhs.true.check_payload_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %check_payload

land.lhs.true80:                                  ; preds = %land.lhs.true
  %data_length82 = getelementptr inbounds %struct.iscsi_cmd, ptr %65, i32 0, i32 70, i32 12
  %70 = ptrtoint ptr %data_length82 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %data_length82, align 4
  %write_data_done83 = getelementptr inbounds %struct.iscsi_cmd, ptr %65, i32 0, i32 40
  %72 = ptrtoint ptr %write_data_done83 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %write_data_done83, align 128
  %add84 = add i32 %73, %or12
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %add84)
  %cmp85 = icmp eq i32 %71, %add84
  br i1 %cmp85, label %if.then87, label %land.lhs.true80.check_payload_crit_edge

land.lhs.true80.check_payload_crit_edge:          ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #12
  br label %check_payload

if.then87:                                        ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #12
  %74 = ptrtoint ptr %csk to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %csk, align 4
  %iscsi_ppm.i = getelementptr inbounds %struct.cxgbit_device, ptr %75, i32 0, i32 1, i32 39
  %76 = ptrtoint ptr %iscsi_ppm.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %iscsi_ppm.i, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 4
  %pdev = getelementptr inbounds %struct.cxgbi_ppm, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %81, i32 0, i32 44
  %nents = getelementptr %struct.iscsi_cmd, ptr %65, i32 1, i32 24
  %82 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %nents, align 8
  call void @dma_unmap_sg_attrs(ptr noundef %dev, ptr noundef nonnull %69, i32 noundef %83, i32 noundef 2, i32 noundef 0) #10
  %84 = ptrtoint ptr %nents to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %nents, align 8
  %85 = ptrtoint ptr %sgl to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %sgl, align 8
  br label %check_payload

check_payload:                                    ; preds = %if.then87, %land.lhs.true80.check_payload_crit_edge, %land.lhs.true.check_payload_crit_edge, %if.end74.check_payload_crit_edge, %do.end
  %86 = xor i1 %tobool42.not, true
  %87 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %cmd, align 4
  %call95 = call i32 @iscsit_check_dataout_payload(ptr noundef %88, ptr noundef %8, i1 noundef zeroext %86) #10
  %89 = call i32 @llvm.smin.i32(i32 %call95, i32 0)
  br label %cleanup100

cleanup100:                                       ; preds = %check_payload, %if.else33.cleanup100_crit_edge, %if.else28.cleanup100_crit_edge, %cleanup.cleanup100_crit_edge, %cleanup.thread
  %retval.1 = phi i32 [ 0, %cleanup.cleanup100_crit_edge ], [ %call29, %if.else28.cleanup100_crit_edge ], [ 0, %if.else33.cleanup100_crit_edge ], [ %89, %check_payload ], [ %retval.0.ph, %cleanup.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd) #10
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cxgbit_handle_nop_out(ptr nocapture noundef readonly %csk, ptr noundef %cmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conn1 = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 2
  %0 = ptrtoint ptr %conn1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn1, align 4
  %skb = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 13
  %2 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skb, align 4
  %pdu_cb2 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %pdu_cb2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdu_cb2, align 4
  %hdr3 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %hdr3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hdr3, align 4
  %dlen = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, ptr %5, i32 0, i32 9
  %8 = ptrtoint ptr %dlen to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dlen, align 4
  %call = tail call i32 @iscsit_setup_nop_out(ptr noundef %1, ptr noundef %cmd, ptr noundef %7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %5, align 4
  %12 = and i8 %11, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %if.end13, label %if.then4

if.then4:                                         ; preds = %if.end
  %sess = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 68
  %13 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sess, align 4
  %sess_ops = getelementptr inbounds %struct.iscsi_session, ptr %14, i32 0, i32 47
  %15 = ptrtoint ptr %sess_ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sess_ops, align 8
  %ErrorRecoveryLevel = getelementptr inbounds %struct.iscsi_sess_ops, ptr %16, i32 0, i32 16
  %17 = ptrtoint ptr %ErrorRecoveryLevel to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ErrorRecoveryLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool5.not = icmp eq i8 %18, 0
  br i1 %tobool5.not, label %do.end, label %do.end10

do.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57) #13
  br label %out

do.end10:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  %cmdsn = getelementptr inbounds %struct.iscsi_nopout, ptr %7, i32 0, i32 8
  %19 = ptrtoint ptr %cmdsn to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cmdsn, align 4
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, i32 noundef %20) #13
  br label %out

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool14.not = icmp eq i32 %9, 0
  br i1 %tobool14.not, label %if.end13.if.end56_crit_edge, label %land.lhs.true

if.end13.if.end56_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

land.lhs.true:                                    ; preds = %if.end13
  %ttt = getelementptr inbounds %struct.iscsi_nopout, ptr %7, i32 0, i32 7
  %21 = ptrtoint ptr %ttt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ttt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %cmp15 = icmp eq i32 %22, -1
  br i1 %cmp15, label %if.end8.i.i, label %land.lhs.true.if.end56_crit_edge

land.lhs.true.if.end56_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.end8.i.i:                                      ; preds = %land.lhs.true
  %add = add i32 %9, 1
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #15
  %tobool19.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool19.not, label %do.end23, label %if.end26

do.end23:                                         ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63) #13
  br label %out

if.end26:                                         ; preds = %if.end8.i.i
  %23 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %skb, align 4
  %doffset = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, ptr %5, i32 0, i32 10
  %25 = ptrtoint ptr %doffset to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %doffset, align 4
  %call28 = tail call i32 @skb_copy_bits(ptr noundef %24, i32 noundef %26, ptr noundef nonnull %call9.i.i, i32 noundef %9) #10
  %arrayidx29 = getelementptr i8, ptr %call9.i.i, i32 %9
  %27 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %arrayidx29, align 1
  %buf_ptr = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 44
  %28 = ptrtoint ptr %buf_ptr to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call9.i.i, ptr %buf_ptr, align 16
  %buf_ptr_size = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 24
  %29 = ptrtoint ptr %buf_ptr_size to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %9, ptr %buf_ptr_size, align 64
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxgbit_handle_nop_out.__UNIQUE_ID_ddebug674, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxgbit_handle_nop_out, %if.then36)) #10
          to label %do.body40 [label %if.then36], !srcloc !169

if.then36:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxgbit_handle_nop_out.__UNIQUE_ID_ddebug674, ptr noundef nonnull @.str.65, i32 noundef %9) #10
  br label %do.body40

do.body40:                                        ; preds = %if.then36, %if.end26
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxgbit_handle_nop_out.__UNIQUE_ID_ddebug675, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxgbit_handle_nop_out, %if.then52)) #10
          to label %if.end56 [label %if.then52], !srcloc !169

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxgbit_handle_nop_out.__UNIQUE_ID_ddebug675, ptr noundef nonnull @.str.66, ptr noundef nonnull %call9.i.i) #10
  br label %if.end56

if.end56:                                         ; preds = %if.then52, %do.body40, %land.lhs.true.if.end56_crit_edge, %if.end13.if.end56_crit_edge
  %call57 = tail call i32 @iscsit_process_nop_out(ptr noundef %1, ptr noundef %cmd, ptr noundef %7) #10
  br label %cleanup

out:                                              ; preds = %do.end23, %do.end10, %do.end
  %ret.0 = phi i32 [ 0, %do.end10 ], [ -1, %do.end ], [ -1, %do.end23 ]
  %tobool58.not = icmp eq ptr %cmd, null
  br i1 %tobool58.not, label %out.cleanup_crit_edge, label %if.then59

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then59:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iscsit_free_cmd(ptr noundef nonnull %cmd, i1 noundef zeroext false) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then59, %out.cleanup_crit_edge, %if.end56, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call57, %if.end56 ], [ 0, %entry.cleanup_crit_edge ], [ %ret.0, %if.then59 ], [ %ret.0, %out.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_handle_task_mgt_cmd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsit_find_cmd_from_itt(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_handle_logout_cmd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_handle_snack(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsit_allocate_cmd(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_setup_scsi_cmd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_process_scsi_cmd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cxgbit_handle_immediate_data(ptr noundef %cmd, ptr noundef %hdr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conn1 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 66
  %0 = ptrtoint ptr %conn1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn1, align 8
  %context = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 64
  %2 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context, align 4
  %skb = getelementptr inbounds %struct.cxgbit_sock, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skb, align 4
  %pdu_cb2 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %pdu_cb2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdu_cb2, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 4
  %10 = and i8 %9, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %if.end12, label %do.end

do.end:                                           ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49) #13
  %sess = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 68
  %11 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sess, align 4
  %sess_ops = getelementptr inbounds %struct.iscsi_session, ptr %12, i32 0, i32 47
  %13 = ptrtoint ptr %sess_ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sess_ops, align 8
  %ErrorRecoveryLevel = getelementptr inbounds %struct.iscsi_sess_ops, ptr %14, i32 0, i32 16
  %15 = ptrtoint ptr %ErrorRecoveryLevel to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ErrorRecoveryLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool3.not = icmp eq i8 %16, 0
  br i1 %tobool3.not, label %do.end7, label %if.end

do.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #13
  %call10 = tail call i32 @iscsit_reject_cmd(ptr noundef %cmd, i8 noundef zeroext 2, ptr noundef %hdr) #10
  br label %cleanup

if.end:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = tail call i32 @iscsit_reject_cmd(ptr noundef %cmd, i8 noundef zeroext 2, ptr noundef %hdr) #10
  br label %cleanup

if.end12:                                         ; preds = %entry
  %se_cmd_flags = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 70, i32 11
  %17 = ptrtoint ptr %se_cmd_flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %se_cmd_flags, align 16
  %and13 = and i32 %18, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end12
  %add.ptr.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 17
  %19 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %end.i, align 4
  %dfrag_idx = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, ptr %7, i32 0, i32 4
  %21 = ptrtoint ptr %dfrag_idx to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %dfrag_idx, align 4
  %idxprom = zext i8 %22 to i32
  %arrayidx19 = getelementptr %struct.skb_shared_info, ptr %20, i32 0, i32 12, i32 %idxprom
  tail call void @sg_init_table(ptr noundef %add.ptr.i, i32 noundef 1) #10
  %23 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx19, align 4
  %bv_len.i = getelementptr %struct.skb_shared_info, ptr %20, i32 0, i32 12, i32 %idxprom, i32 1
  %25 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bv_len.i, align 4
  %bv_offset.i = getelementptr %struct.skb_shared_info, ptr %20, i32 0, i32 12, i32 %idxprom, i32 2
  %27 = ptrtoint ptr %bv_offset.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bv_offset.i, align 4
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr.i, align 4
  %31 = ptrtoint ptr %24 to i32
  %and2.i.i = and i32 %31, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i, label %do.body11.i.i, label %do.body5.i.i, !prof !171

do.body5.i.i:                                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !183
  unreachable

do.body11.i.i:                                    ; preds = %if.then15
  %and.i.i.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !171

do.body19.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !srcloc !184
  unreachable

sg_set_page.exit:                                 ; preds = %do.body11.i.i
  %and.i.i = and i32 %30, 3
  %or.i.i = or i32 %and.i.i, %31
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or.i.i, ptr %add.ptr.i, align 4
  %offset1.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 1
  %33 = ptrtoint ptr %offset1.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %28, ptr %offset1.i, align 4
  %length.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 3
  %34 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %26, ptr %length.i, align 4
  %35 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx19, align 4
  %37 = getelementptr inbounds %struct.page, ptr %36, i32 0, i32 1
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %37, align 4
  %and.i.i2 = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i2)
  %tobool.not.i.i3 = icmp eq i32 %and.i.i2, 0
  br i1 %tobool.not.i.i3, label %if.end.i.i, label %if.then.i.i, !prof !171

if.then.i.i:                                      ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %39, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %36 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %40, %if.end.i.i ]
  %41 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %41, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #10
  %42 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %43, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !168

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %41, ptr noundef nonnull @.str.8) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #10, !srcloc !177
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #10
  %44 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #10, !srcloc !172
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@cxgbit_handle_immediate_data, %if.then.i.i.i.i)) #10
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !169

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__page_ref_mod(ptr noundef %41, i32 noundef 1) #10
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %t_data_sg = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 70, i32 39
  %45 = ptrtoint ptr %t_data_sg to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %add.ptr.i, ptr %t_data_sg, align 4
  %t_data_nents = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 70, i32 41
  %46 = ptrtoint ptr %t_data_nents to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %t_data_nents, align 4
  %release = getelementptr inbounds %struct.cxgbit_cmd, ptr %add.ptr.i, i32 0, i32 3
  %47 = ptrtoint ptr %release to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %release, align 1
  br label %if.end35

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %t_data_sg30 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 70, i32 39
  %48 = ptrtoint ptr %t_data_sg30 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %t_data_sg30, align 4
  %dlen = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, ptr %7, i32 0, i32 9
  %50 = ptrtoint ptr %dlen to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dlen, align 4
  %sub = add i32 %51, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub)
  %cmp = icmp ult i32 %sub, 4096
  %div1 = lshr i32 %sub, 12
  %cond = select i1 %cmp, i32 1, i32 %div1
  tail call fastcc void @cxgbit_skb_copy_to_sg(ptr noundef %5, ptr noundef %49, i32 noundef %cond, i32 noundef 0)
  br label %if.end35

if.end35:                                         ; preds = %if.else, %get_page.exit
  %dlen36 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, ptr %7, i32 0, i32 9
  %52 = ptrtoint ptr %dlen36 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dlen36, align 4
  %write_data_done = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 40
  %54 = ptrtoint ptr %write_data_done to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %write_data_done, align 128
  %add37 = add i32 %55, %53
  store i32 %add37, ptr %write_data_done, align 128
  %data_length = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 70, i32 12
  %56 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %data_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add37, i32 %57)
  %cmp40 = icmp eq i32 %add37, %57
  br i1 %cmp40, label %if.then42, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then42:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  %istate_lock = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 52
  tail call void @_raw_spin_lock_bh(ptr noundef %istate_lock) #10
  %cmd_flags = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 15
  %58 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %cmd_flags, align 4
  %or = or i32 %59, 1
  store i32 %or, ptr %cmd_flags, align 4
  %i_state = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 4
  %60 = ptrtoint ptr %i_state to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 6, ptr %i_state, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %istate_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %if.end35.cleanup_crit_edge, %if.end, %do.end7
  %retval.0 = phi i32 [ 1, %if.end ], [ -1, %do.end7 ], [ 0, %if.then42 ], [ 0, %if.end35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_sequence_cmd(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @target_put_sess_cmd(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsit_set_unsolicited_dataout(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsit_add_cmd_to_immediate_queue(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_reject_cmd(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cxgbit_skb_copy_to_sg(ptr noundef %skb, ptr noundef %sg, i32 noundef %nents, i32 noundef %skip) unnamed_addr #0 align 64 {
entry:
  %st = alloca %struct.skb_seq_state, align 4
  %buf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %st) #10
  %0 = call ptr @memset(ptr %st, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #10
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %buf, align 4, !annotation !175
  %pdu_cb1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %pdu_cb1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdu_cb1, align 4
  %doffset = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %doffset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %doffset, align 4
  %dlen = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %dlen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dlen, align 4
  %add = add i32 %7, %5
  call void @skb_prepare_seq_read(ptr noundef %skb, i32 noundef %5, i32 noundef %add, ptr noundef nonnull %st) #10
  %call12 = call i32 @skb_seq_read(i32 noundef 0, ptr noundef nonnull %buf, ptr noundef nonnull %st) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool.not13 = icmp eq i32 %call12, 0
  br i1 %tobool.not13, label %entry.if.then_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %if.end.if.then_crit_edge, %entry.if.then_crit_edge
  call void @skb_abort_seq_read(ptr noundef nonnull %st) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %st) #10
  ret void

if.end:                                           ; preds = %if.end.if.end_crit_edge, %entry.if.end_crit_edge
  %call15 = phi i32 [ %call, %if.end.if.end_crit_edge ], [ %call12, %entry.if.end_crit_edge ]
  %consumed.014 = phi i32 [ %add5, %if.end.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buf, align 4
  %add3 = add i32 %consumed.014, %skip
  %call4 = call i32 @sg_pcopy_from_buffer(ptr noundef %sg, i32 noundef %nents, ptr noundef %9, i32 noundef %call15, i32 noundef %add3) #10
  %add5 = add i32 %call4, %consumed.014
  %call = call i32 @skb_seq_read(i32 noundef %add5, ptr noundef nonnull %buf, ptr noundef nonnull %st) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end.if.then_crit_edge, label %if.end.if.end_crit_edge

if.end.if.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.if.then_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_prepare_seq_read(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_seq_read(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_abort_seq_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_pcopy_from_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsit_find_cmd_from_itt_or_dump(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iscsit_check_dataout_hdr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_check_dataout_hdr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_check_dataout_payload(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_setup_nop_out(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_process_nop_out(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsit_free_cmd(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_setup_text_cmd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_process_text_cmd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_cpus_allowed_ptr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i24 @llvm.bitreverse.i24(i24) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i21 @llvm.bitreverse.i21(i21) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin nounwind }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !30, !31, !33, !35, !36, !37, !39, !41, !43, !44, !46, !48, !49, !50, !52, !54, !56, !57, !59, !61, !62, !63, !65, !66, !68, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !97, !99, !100, !101, !102, !104, !105, !106, !107, !109, !110, !111, !112, !114, !115, !116, !118, !119, !120, !121, !123, !124, !126, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !142, !143, !145, !146, !147, !148, !150, !151, !152, !154, !155, !156}
!llvm.named.register.sp = !{!158}
!llvm.module.flags = !{!159, !160, !161, !162, !163, !164, !165, !166}
!llvm.ident = !{!167}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_target.c", i32 238, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @cxgbit_push_tx_frames.__UNIQUE_ID_ddebug660, !1, !"__UNIQUE_ID_ddebug660", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_target.c", i32 249, i32 3}
!8 = !{ptr @cxgbit_push_tx_frames.__UNIQUE_ID_ddebug661, !7, !"__UNIQUE_ID_ddebug661", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_target.c", i32 279, i32 3}
!11 = !{ptr @cxgbit_push_tx_frames.__UNIQUE_ID_ddebug662, !10, !"__UNIQUE_ID_ddebug662", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_target.c", i32 579, i32 36}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_target.c", i32 589, i32 10}
!16 = distinct !{null, !17, !"hdr_len", i1 false, i1 false}
!17 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_target.c", i32 32, i32 19}
!18 = !{ptr @cxgbit_digest_len, !19, !"cxgbit_digest_len", i1 false, i1 false}
!19 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_target.c", i32 21, i32 17}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!22 = distinct !{null, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_target.c", i32 731, i32 37}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_target.c", i32 734, i32 4}
!28 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @cxgbit_set_params._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @cxgbit_set_params._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_target.c", i32 601, i32 36}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_target.c", i32 603, i32 3}
!35 = !{ptr @cxgbit_set_digest._entry, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @cxgbit_set_digest._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_target.c", i32 607, i32 28}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_target.c", i32 610, i32 36}
!41 = !{ptr @cxgbit_set_digest._entry.17, !42, !"_entry", i1 false, i1 false}
!42 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_target.c", i32 613, i32 3}
!43 = !{ptr @cxgbit_set_digest._entry_ptr.18, !42, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_target.c", i32 685, i32 37}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_target.c", i32 688, i32 4}
!48 = !{ptr @cxgbit_seq_pdu_inorder._entry, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @cxgbit_seq_pdu_inorder._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_target.c", i32 692, i32 28}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_target.c", i32 695, i32 37}
!54 = !{ptr @cxgbit_seq_pdu_inorder._entry.23, !55, !"_entry", i1 false, i1 false}
!55 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_target.c", i32 698, i32 4}
!56 = !{ptr @cxgbit_seq_pdu_inorder._entry_ptr.24, !55, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_target.c", i32 638, i32 37}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_target.c", i32 641, i32 4}
!61 = !{ptr @cxgbit_set_iso_npdu._entry, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @cxgbit_set_iso_npdu._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @skb_queue_head_init.__key, !64, !"__key", i1 false, i1 false}
!64 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!65 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_target.c", i32 1542, i32 3}
!68 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @cxgbit_t5_rx_lro_skb._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @cxgbit_t5_rx_lro_skb._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_target.c", i32 1391, i32 2}
!73 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @cxgbit_lro_skb_dump._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @cxgbit_lro_skb_dump._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_target.c", i32 1394, i32 2}
!78 = !{ptr @cxgbit_lro_skb_dump._entry.32, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @cxgbit_lro_skb_dump._entry_ptr.34, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_target.c", i32 1398, i32 3}
!82 = !{ptr @cxgbit_lro_skb_dump._entry.35, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @cxgbit_lro_skb_dump._entry_ptr.37, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_target.c", i32 1403, i32 3}
!86 = !{ptr @cxgbit_lro_skb_dump._entry.38, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @cxgbit_lro_skb_dump._entry_ptr.40, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_target.c", i32 1332, i32 2}
!90 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @cxgbit_rx_login_pdu.__UNIQUE_ID_ddebug676, !89, !"__UNIQUE_ID_ddebug676", i1 false, i1 false}
!92 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_target.c", i32 1306, i32 3}
!94 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @cxgbit_rx_opcode._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @cxgbit_rx_opcode._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.45, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_target.c", i32 1273, i32 3}
!99 = !{ptr @.str.46, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @cxgbit_target_rx_opcode._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @cxgbit_target_rx_opcode._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_target.c", i32 844, i32 3}
!104 = !{ptr @.str.48, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @cxgbit_allocate_cmd._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @cxgbit_allocate_cmd._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.49, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_target.c", i32 864, i32 3}
!109 = !{ptr @.str.50, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @cxgbit_handle_immediate_data._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @cxgbit_handle_immediate_data._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.52, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_target.c", i32 866, i32 4}
!114 = !{ptr @cxgbit_handle_immediate_data._entry.51, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @cxgbit_handle_immediate_data._entry_ptr.53, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.54, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_target.c", i32 1040, i32 3}
!118 = !{ptr @.str.55, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @cxgbit_handle_iscsi_dataout._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @cxgbit_handle_iscsi_dataout._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.56, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_target.c", i32 1049, i32 2}
!123 = !{ptr @cxgbit_handle_iscsi_dataout.__UNIQUE_ID_ddebug671, !122, !"__UNIQUE_ID_ddebug671", i1 false, i1 false}
!124 = !{ptr @.str.57, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_target.c", i32 1102, i32 4}
!126 = !{ptr @.str.58, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @cxgbit_handle_nop_out._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @cxgbit_handle_nop_out._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.60, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_target.c", i32 1112, i32 4}
!131 = !{ptr @cxgbit_handle_nop_out._entry.59, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @cxgbit_handle_nop_out._entry_ptr.61, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.63, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_target.c", i32 1126, i32 4}
!135 = !{ptr @cxgbit_handle_nop_out._entry.62, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @cxgbit_handle_nop_out._entry_ptr.64, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.65, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_target.c", i32 1142, i32 3}
!139 = !{ptr @cxgbit_handle_nop_out.__UNIQUE_ID_ddebug674, !138, !"__UNIQUE_ID_ddebug674", i1 false, i1 false}
!140 = !{ptr @.str.66, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_target.c", i32 1144, i32 3}
!142 = !{ptr @cxgbit_handle_nop_out.__UNIQUE_ID_ddebug675, !141, !"__UNIQUE_ID_ddebug675", i1 false, i1 false}
!143 = !{ptr @.str.67, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_target.c", i32 1170, i32 4}
!145 = !{ptr @.str.68, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @cxgbit_handle_text_cmd._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @cxgbit_handle_text_cmd._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.70, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_target.c", i32 1179, i32 4}
!150 = !{ptr @cxgbit_handle_text_cmd._entry.69, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @cxgbit_handle_text_cmd._entry_ptr.71, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.73, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_target.c", i32 1189, i32 4}
!154 = !{ptr @cxgbit_handle_text_cmd._entry.72, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @cxgbit_handle_text_cmd._entry_ptr.74, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.75, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../include/linux/mm.h", i32 717, i32 2}
!158 = !{!"sp"}
!159 = !{i32 1, !"wchar_size", i32 2}
!160 = !{i32 1, !"min_enum_size", i32 4}
!161 = !{i32 8, !"branch-target-enforcement", i32 0}
!162 = !{i32 8, !"sign-return-address", i32 0}
!163 = !{i32 8, !"sign-return-address-all", i32 0}
!164 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!165 = !{i32 7, !"uwtable", i32 1}
!166 = !{i32 7, !"frame-pointer", i32 2}
!167 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!168 = !{!"branch_weights", i32 1, i32 2000}
!169 = !{i64 2148937530, i64 2148937535, i64 2148937548, i64 2148937592, i64 2148937626, i64 2148937647}
!170 = !{i64 2148381795, i64 2148381827, i64 2148381856, i64 2148381890, i64 2148381921, i64 2148381944}
!171 = !{!"branch_weights", i32 2000, i32 1}
!172 = !{i64 2148380265, i64 2148380291, i64 2148380320, i64 2148380354, i64 2148380385, i64 2148380408}
!173 = !{i64 2154701942, i64 2154702430, i64 2154701979, i64 2154702035, i64 2154702069, i64 2154702093, i64 2154702134, i64 2154702155, i64 2154702183, i64 2154702217}
!174 = !{i64 2154704910, i64 2154705398, i64 2154704947, i64 2154705003, i64 2154705037, i64 2154705061, i64 2154705102, i64 2154705123, i64 2154705151, i64 2154705185}
!175 = !{!"auto-init"}
!176 = !{i64 2154471848, i64 2154472340, i64 2154471885, i64 2154471941, i64 2154471975, i64 2154471999, i64 2154472040, i64 2154472061, i64 2154472089, i64 2154472123}
!177 = !{i64 2153448910, i64 2153449394, i64 2153448947, i64 2153449003, i64 2153449037, i64 2153449061, i64 2153449102, i64 2153449123, i64 2153449151, i64 2153449185}
!178 = !{i8 0, i8 2}
!179 = !{i64 2153424937, i64 2153425420, i64 2153424974, i64 2153425030, i64 2153425064, i64 2153425088, i64 2153425129, i64 2153425150, i64 2153425178, i64 2153425212}
!180 = !{i64 2148468741}
!181 = !{i64 2148383450, i64 2148383482, i64 2148383511, i64 2148383545, i64 2148383576, i64 2148383599}
!182 = !{i64 2148468970}
!183 = !{i64 2154468290, i64 2154468782, i64 2154468327, i64 2154468383, i64 2154468417, i64 2154468441, i64 2154468482, i64 2154468503, i64 2154468531, i64 2154468565}
!184 = !{i64 2154469900, i64 2154470392, i64 2154469937, i64 2154469993, i64 2154470027, i64 2154470051, i64 2154470092, i64 2154470113, i64 2154470141, i64 2154470175}
