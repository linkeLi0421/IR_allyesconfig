; ModuleID = '/llk/IR_all_yes/fs/cifs/transport.c_pt.bc'
source_filename = "../fs/cifs/transport.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.109 }
%union.anon.109 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.mid_q_entry = type { %struct.list_head, %struct.kref, ptr, i64, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i32, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.smb_hdr = type <{ i32, [4 x i8], i8, %union.anon.184, i8, i16, i16, %union.anon.186, [2 x i8], i16, i16, i16, i16, i8 }>
%union.anon.184 = type { i32 }
%union.anon.186 = type { %struct.anon.187 }
%struct.anon.187 = type { i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.99, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.10 }
%struct.llist_node = type { ptr }
%union.anon.10 = type { i32 }
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
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.12 }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.99 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.TCP_Server_Info = type { %struct.list_head, %struct.list_head, i64, i32, [16 x i8], ptr, ptr, i32, ptr, ptr, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.list_head, i8, i8, i8, i8, i32, i32, i32, i32, %struct.spinlock, %struct.mutex, ptr, [16 x i8], i16, i8, i8, i8, i32, i32, i8, [16 x i8], i16, i8, i32, i32, i32, i32, i32, i64, [8 x i8], [16 x i8], i32, i32, %struct.session_key, i32, %struct.cifs_secmech, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.delayed_work, %struct.delayed_work, ptr, ptr, i32, i32, %struct.atomic_t, %struct.atomic_t, [19 x %struct.atomic_t], [19 x %struct.atomic_t], [19 x i64], [19 x i32], [19 x i32], i32, i32, i32, i16, i16, i16, [64 x i8], i8, i8, %struct.delayed_work, %struct.mutex, i32, i32, i8, ptr, i8, %struct.__kernel_sockaddr_storage, i8, %struct.mutex, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.session_key = type { i32, ptr }
%struct.cifs_secmech = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.__kernel_sockaddr_storage = type { %union.anon.125 }
%union.anon.125 = type { ptr, [124 x i8] }
%struct.smb_version_values = type { ptr, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i16, i16, i32 }
%struct.smb_version_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.smb_rqst = type { ptr, i32, ptr, i32, i32, i32, i32 }
%struct.kvec = type { ptr, i32 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.39, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.36, %union.anon.37 }
%union.anon.36 = type { ptr }
%union.anon.37 = type { i64 }
%union.anon.39 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.cifs_credits = type { i32, i32 }
%struct.cifs_ses = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.mutex, ptr, i32, i32, i32, ptr, ptr, ptr, i64, %struct.kuid_t, %struct.kuid_t, i32, [49 x i8], ptr, ptr, ptr, ptr, %struct.session_key, ptr, i32, i8, i8, i16, [16 x i8], [32 x i8], [32 x i8], [64 x i8], %struct.spinlock, ptr, i32, i32, %struct.spinlock, [16 x %struct.cifs_chan], i32, i32, %struct.atomic_t, i32 }
%struct.cifs_chan = type { ptr, [16 x i8] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.cifs_tcon = type { %struct.list_head, i32, %struct.list_head, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.spinlock, ptr, [1285 x i8], ptr, ptr, i32, i16, i32, %struct.atomic_t, %union.anon.127, i64, i64, %struct.spinlock, %struct.FILE_SYSTEM_DEVICE_INFO, %struct.FILE_SYSTEM_ATTRIBUTE_INFO, %struct.FILE_SYSTEM_UNIX_INFO, i16, i8, i8, i8, i8, i8, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i64, ptr, %struct.list_head, %struct.cached_fid, %struct.list_head }
%union.anon.127 = type { %struct.anon.129 }
%struct.anon.129 = type { [19 x %struct.atomic_t], [19 x %struct.atomic_t] }
%struct.FILE_SYSTEM_DEVICE_INFO = type { i32, i32 }
%struct.FILE_SYSTEM_ATTRIBUTE_INFO = type { i32, i32, i32, [52 x i8] }
%struct.FILE_SYSTEM_UNIX_INFO = type <{ i16, i16, i64 }>
%struct.cached_fid = type { i8, i32, %struct.kref, ptr, %struct.mutex, ptr, ptr, %struct.work_struct, %struct.smb2_file_all_info }
%struct.smb2_file_all_info = type <{ i64, i64, i64, i64, i32, i32, i64, i64, i32, i8, i8, i16, i64, i32, i32, i64, i32, i32, i32, [1 x i8] }>
%struct.smb_com_lock_req = type <{ %struct.smb_hdr, i8, i8, i16, i16, i8, i8, i32, i16, i16, i16, [1 x %struct.locking_andx_range] }>
%struct.locking_andx_range = type { i16, i16, i32, i32, i32, i32 }

@AllocMidQEntry._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.AllocMidQEntry = private unnamed_addr constant [15 x i8] c"AllocMidQEntry\00", align 1
@AllocMidQEntry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.AllocMidQEntry, ptr @.str.2, i32 46, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013CIFS: VFS: Null TCP session in AllocMidQEntry\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fs/cifs/transport.c\00", [44 x i8] zeroinitializer }, align 32
@AllocMidQEntry._entry_ptr = internal global ptr @AllocMidQEntry._entry, section ".printk_index", align 4
@cifs_mid_poolp = external dso_local local_unnamed_addr global ptr, align 4
@cifsFYI = external dso_local local_unnamed_addr global i32, align 4
@AllocMidQEntry._rs.3 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@AllocMidQEntry.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @__func__.AllocMidQEntry, ptr @.str.2, ptr @.str.5, i8 0, i8 14, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cifs\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"CIFS: %s: For smb_command %d\0A\00", [34 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@midCount = external dso_local global %struct.atomic_t, align 4
@GlobalMid_Lock = external dso_local global %struct.spinlock, align 4
@SendReceiveNoRsp._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@SendReceiveNoRsp.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 -31, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SendReceiveNoRsp\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"CIFS: SendRcvNoRsp flags %d rc %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@cifs_check_receive._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.cifs_check_receive = private unnamed_addr constant [19 x i8] c"cifs_check_receive\00", align 1
@cifs_check_receive._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @__func__.cifs_check_receive, ptr @.str.2, i32 977, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013CIFS: VFS: \\\\%s SMB signature verification returned error = %d\0A\00", [62 x i8] zeroinitializer }, align 32
@cifs_check_receive._entry_ptr = internal global ptr @cifs_check_receive._entry, section ".printk_index", align 4
@compound_send_recv._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.compound_send_recv = private unnamed_addr constant [19 x i8] c"compound_send_recv\00", align 1
@compound_send_recv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.compound_send_recv, ptr @.str.2, i32 1078, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013CIFS: VFS: Null session\0A\00", [37 x i8] zeroinitializer }, align 32
@compound_send_recv._entry_ptr = internal global ptr @compound_send_recv._entry, section ".printk_index", align 4
@cifs_tcp_ses_lock = external dso_local global %struct.spinlock, align 4
@compound_send_recv._rs.11 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@compound_send_recv.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @__func__.compound_send_recv, ptr @.str.2, ptr @.str.12, i8 1, i8 46, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"CIFS: %s: \\\\%s Cancelling wait for mid %llu cmd: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@compound_send_recv._rs.13 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@compound_send_recv.descriptor.14 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @__func__.compound_send_recv, ptr @.str.2, ptr @.str.15, i8 1, i8 53, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"CIFS: %s: Bad MID state?\0A\00", [38 x i8] zeroinitializer }, align 32
@SendReceive._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.SendReceive = private unnamed_addr constant [12 x i8] c"SendReceive\00", align 1
@SendReceive._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @__func__.SendReceive, ptr @.str.2, i32 1355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013CIFS: VFS: Null smb session\0A\00", [33 x i8] zeroinitializer }, align 32
@SendReceive._entry_ptr = internal global ptr @SendReceive._entry, section ".printk_index", align 4
@SendReceive._rs.17 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@SendReceive._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @__func__.SendReceive, ptr @.str.2, i32 1360, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013CIFS: VFS: Null tcp session\0A\00", [33 x i8] zeroinitializer }, align 32
@SendReceive._entry_ptr.20 = internal global ptr @SendReceive._entry.18, section ".printk_index", align 4
@CIFSMaxBufSize = external dso_local local_unnamed_addr global i32, align 4
@SendReceive._rs.21 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@SendReceive._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @__func__.SendReceive, ptr @.str.2, i32 1377, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013CIFS: VFS: \\\\%s Invalid length, greater than maximum frame, %d\0A\00", [62 x i8] zeroinitializer }, align 32
@SendReceive._entry_ptr.24 = internal global ptr @SendReceive._entry.22, section ".printk_index", align 4
@SendReceive._rs.25 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@SendReceive._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @__func__.SendReceive, ptr @.str.2, i32 1443, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013CIFS: VFS: \\\\%s Bad MID state?\0A\00", [62 x i8] zeroinitializer }, align 32
@SendReceive._entry_ptr.28 = internal global ptr @SendReceive._entry.26, section ".printk_index", align 4
@SendReceiveBlockingLock._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.SendReceiveBlockingLock = private unnamed_addr constant [24 x i8] c"SendReceiveBlockingLock\00", align 1
@SendReceiveBlockingLock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @__func__.SendReceiveBlockingLock, ptr @.str.2, i32 1498, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@SendReceiveBlockingLock._entry_ptr = internal global ptr @SendReceiveBlockingLock._entry, section ".printk_index", align 4
@SendReceiveBlockingLock._rs.29 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@SendReceiveBlockingLock._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @__func__.SendReceiveBlockingLock, ptr @.str.2, i32 1505, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@SendReceiveBlockingLock._entry_ptr.31 = internal global ptr @SendReceiveBlockingLock._entry.30, section ".printk_index", align 4
@SendReceiveBlockingLock._rs.32 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@SendReceiveBlockingLock._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @__func__.SendReceiveBlockingLock, ptr @.str.2, i32 1522, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013CIFS: VFS: %s Invalid length, greater than maximum frame, %d\0A\00", [32 x i8] zeroinitializer }, align 32
@SendReceiveBlockingLock._entry_ptr.35 = internal global ptr @SendReceiveBlockingLock._entry.33, section ".printk_index", align 4
@SendReceiveBlockingLock._rs.36 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@SendReceiveBlockingLock._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @__func__.SendReceiveBlockingLock, ptr @.str.2, i32 1627, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013CIFS: VFS: %s Bad MID state?\0A\00", [32 x i8] zeroinitializer }, align 32
@SendReceiveBlockingLock._entry_ptr.39 = internal global ptr @SendReceiveBlockingLock._entry.37, section ".printk_index", align 4
@_cifs_mid_q_entry_release._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__._cifs_mid_q_entry_release = private unnamed_addr constant [26 x i8] c"_cifs_mid_q_entry_release\00", align 1
@_cifs_mid_q_entry_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @__func__._cifs_mid_q_entry_release, ptr @.str.2, i32 102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013CIFS: VFS: \\\\%s Invalid mid allocation time\0A\00", [49 x i8] zeroinitializer }, align 32
@_cifs_mid_q_entry_release._entry_ptr = internal global ptr @_cifs_mid_q_entry_release._entry, section ".printk_index", align 4
@slow_rsp_threshold = external dso_local local_unnamed_addr global i32, align 4
@_cifs_mid_q_entry_release.__UNIQUE_ID_ddebug678 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @__func__._cifs_mid_q_entry_release, ptr @.str.2, ptr @.str.41, i8 0, i8 35, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"slow rsp: cmd %d mid %llu\00", [38 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"CIFS: slow rsp: cmd %d mid %llu\00", [32 x i8] zeroinitializer }, align 32
@_cifs_mid_q_entry_release._rs.43 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@_cifs_mid_q_entry_release._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @__func__._cifs_mid_q_entry_release, ptr @.str.2, i32 146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016CIFS: A: 0x%lx S: 0x%lx R: 0x%lx\0A\00", [60 x i8] zeroinitializer }, align 32
@_cifs_mid_q_entry_release._entry_ptr.46 = internal global ptr @_cifs_mid_q_entry_release._entry.44, section ".printk_index", align 4
@__tracepoint_smb3_slow_rsp = external dso_local global %struct.tracepoint, align 4
@.str.47 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/cifs/trace.h\00", [16 x i8] zeroinitializer }, align 32
@trace_smb3_slow_rsp.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.48 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__smb_send_rqst._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__smb_send_rqst.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.50, ptr @.str.2, ptr @.str.51, i8 0, i8 82, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"__smb_send_rqst\00", [16 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"CIFS: %s: signal pending before send request\0A\00", [50 x i8] zeroinitializer }, align 32
@__smb_send_rqst._rs.52 = internal global %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__smb_send_rqst.descriptor.53 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.50, ptr @.str.2, ptr @.str.54, i8 0, i8 91, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"CIFS: %s: Sending smb: smb_len=%u\0A\00", [61 x i8] zeroinitializer }, align 32
@__smb_send_rqst._rs.55 = internal global %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__smb_send_rqst.descriptor.56 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.50, ptr @.str.2, ptr @.str.57, i8 0, i8 104, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"CIFS: %s: signal is pending after attempt to send\0A\00", [45 x i8] zeroinitializer }, align 32
@__smb_send_rqst._rs.58 = internal global %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__smb_send_rqst.descriptor.59 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.50, ptr @.str.2, ptr @.str.60, i8 0, i8 106, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"CIFS: %s: partial send (wanted=%u sent=%zu): terminating session\0A\00", [62 x i8] zeroinitializer }, align 32
@__smb_send_rqst._rs.61 = internal global %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__smb_send_rqst._entry = internal constant %struct.pi_entry { ptr @.str.62, ptr @.str.50, ptr @.str.2, i32 440, ptr null, ptr null }, align 1
@.str.62 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013CIFS: VFS: \\\\%s Error %d sending data on socket to server\0A\00", [35 x i8] zeroinitializer }, align 32
@__smb_send_rqst._entry_ptr = internal global ptr @__smb_send_rqst._entry, section ".printk_index", align 4
@smb_send_kvec._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.smb_send_kvec = private unnamed_addr constant [14 x i8] c"smb_send_kvec\00", align 1
@smb_send_kvec._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @__func__.smb_send_kvec, ptr @.str.2, i32 233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013CIFS: VFS: \\\\%s sends on sock %p stuck for 15 seconds\0A\00", [39 x i8] zeroinitializer }, align 32
@smb_send_kvec._entry_ptr = internal global ptr @smb_send_kvec._entry, section ".printk_index", align 4
@smb_send_kvec._rs.64 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb_send_kvec._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @__func__.smb_send_kvec, ptr @.str.2, i32 246, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013CIFS: VFS: \\\\%s tcp sent no data\0A\00", [60 x i8] zeroinitializer }, align 32
@smb_send_kvec._entry_ptr.67 = internal global ptr @smb_send_kvec._entry.65, section ".printk_index", align 4
@__tracepoint_smb3_partial_send_reconnect = external dso_local global %struct.tracepoint, align 4
@trace_smb3_partial_send_reconnect.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@wait_for_free_credits._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@wait_for_free_credits.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.68, ptr @.str.2, ptr @.str.69, i8 0, i8 -119, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wait_for_free_credits\00", [42 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"CIFS: %s: %s: remove %u credits total=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@wait_for_free_credits._rs.70 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@wait_for_free_credits._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.68, ptr @.str.2, i32 572, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013CIFS: VFS: \\\\%s wait timed out after %d ms\0A\00", [50 x i8] zeroinitializer }, align 32
@wait_for_free_credits._entry_ptr = internal global ptr @wait_for_free_credits._entry, section ".printk_index", align 4
@wait_for_free_credits._rs.72 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@wait_for_free_credits._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.68, ptr @.str.2, i32 625, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wait_for_free_credits._entry_ptr.74 = internal global ptr @wait_for_free_credits._entry.73, section ".printk_index", align 4
@wait_for_free_credits._rs.75 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@wait_for_free_credits.descriptor.76 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.68, ptr @.str.2, ptr @.str.69, i8 0, i8 -93, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__tracepoint_smb3_add_credits = external dso_local global %struct.tracepoint, align 4
@trace_smb3_add_credits.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_smb3_credit_timeout = external dso_local global %struct.tracepoint, align 4
@trace_smb3_credit_timeout.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@smb_send_rqst._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.smb_send_rqst = private unnamed_addr constant [14 x i8] c"smb_send_rqst\00", align 1
@smb_send_rqst._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @__func__.smb_send_rqst, ptr @.str.2, i32 463, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\013CIFS: VFS: \\\\%s Encryption requested but transform callback is missing\0A\00", [54 x i8] zeroinitializer }, align 32
@smb_send_rqst._entry_ptr = internal global ptr @smb_send_rqst._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@wait_for_compound_request._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@wait_for_compound_request.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.78, ptr @.str.2, ptr @.str.79, i8 0, i8 -80, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wait_for_compound_request\00", [38 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"CIFS: %s: %s: %d requests in flight, needed %d total=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@__tracepoint_smb3_insufficient_credits = external dso_local global %struct.tracepoint, align 4
@trace_smb3_insufficient_credits.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.80 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/freezer.h\00", [40 x i8] zeroinitializer }, align 32
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@cifs_sync_mid_result._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_sync_mid_result.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.81, ptr @.str.2, ptr @.str.82, i8 0, i8 -28, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cifs_sync_mid_result\00", [43 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"CIFS: %s: %s: cmd=%d mid=%llu state=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@cifs_sync_mid_result._rs.83 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_sync_mid_result._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.81, ptr @.str.2, i32 936, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013CIFS: VFS: \\\\%s %s: invalid mid state mid=%llu state=%d\0A\00", [37 x i8] zeroinitializer }, align 32
@cifs_sync_mid_result._entry_ptr = internal global ptr @cifs_sync_mid_result._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.87 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 7]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967259]
@__sancov_gen_cov_switch_values.89 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 46, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 56, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 903, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 976, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1078, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1209, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1237, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1355, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1360, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1376, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1443, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1498, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1505, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1521, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1627, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 102, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 141, i32 4 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 143, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant [19 x i8] c"../fs/cifs/trace.h\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 530, i32 1 }
@___asan_gen_.254 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 108, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 329, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 365, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 418, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 426, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 439, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 232, i32 5 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 246, i32 4 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 547, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 571, i32 5 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 624, i32 6 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 654, i32 4 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 463, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 705, i32 4 }
@___asan_gen_.338 = private unnamed_addr constant [27 x i8] c"../include/linux/freezer.h\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 57, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 913, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.352 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.355 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.356 = private constant [23 x i8] c"../fs/cifs/transport.c\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 935, i32 3 }
@llvm.compiler.used = appending global [110 x ptr] [ptr @AllocMidQEntry._entry, ptr @AllocMidQEntry._entry_ptr, ptr @SendReceive._entry, ptr @SendReceive._entry.18, ptr @SendReceive._entry.22, ptr @SendReceive._entry.26, ptr @SendReceive._entry_ptr, ptr @SendReceive._entry_ptr.20, ptr @SendReceive._entry_ptr.24, ptr @SendReceive._entry_ptr.28, ptr @SendReceiveBlockingLock._entry, ptr @SendReceiveBlockingLock._entry.30, ptr @SendReceiveBlockingLock._entry.33, ptr @SendReceiveBlockingLock._entry.37, ptr @SendReceiveBlockingLock._entry_ptr, ptr @SendReceiveBlockingLock._entry_ptr.31, ptr @SendReceiveBlockingLock._entry_ptr.35, ptr @SendReceiveBlockingLock._entry_ptr.39, ptr @__smb_send_rqst._entry, ptr @__smb_send_rqst._entry_ptr, ptr @_cifs_mid_q_entry_release._entry, ptr @_cifs_mid_q_entry_release._entry.44, ptr @_cifs_mid_q_entry_release._entry_ptr, ptr @_cifs_mid_q_entry_release._entry_ptr.46, ptr @cifs_check_receive._entry, ptr @cifs_check_receive._entry_ptr, ptr @cifs_sync_mid_result._entry, ptr @cifs_sync_mid_result._entry_ptr, ptr @compound_send_recv._entry, ptr @compound_send_recv._entry_ptr, ptr @smb_send_kvec._entry, ptr @smb_send_kvec._entry.65, ptr @smb_send_kvec._entry_ptr, ptr @smb_send_kvec._entry_ptr.67, ptr @smb_send_rqst._entry, ptr @smb_send_rqst._entry_ptr, ptr @wait_for_free_credits._entry, ptr @wait_for_free_credits._entry.73, ptr @wait_for_free_credits._entry_ptr, ptr @wait_for_free_credits._entry_ptr.74, ptr @AllocMidQEntry._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @AllocMidQEntry._rs.3, ptr @.str.4, ptr @.str.5, ptr @SendReceiveNoRsp._rs, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @cifs_check_receive._rs, ptr @.str.9, ptr @compound_send_recv._rs, ptr @.str.10, ptr @compound_send_recv._rs.11, ptr @.str.12, ptr @compound_send_recv._rs.13, ptr @.str.15, ptr @SendReceive._rs, ptr @.str.16, ptr @SendReceive._rs.17, ptr @.str.19, ptr @SendReceive._rs.21, ptr @.str.23, ptr @SendReceive._rs.25, ptr @.str.27, ptr @SendReceiveBlockingLock._rs, ptr @SendReceiveBlockingLock._rs.29, ptr @SendReceiveBlockingLock._rs.32, ptr @.str.34, ptr @SendReceiveBlockingLock._rs.36, ptr @.str.38, ptr @_cifs_mid_q_entry_release._rs, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @_cifs_mid_q_entry_release._rs.43, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.62, ptr @smb_send_kvec._rs, ptr @.str.63, ptr @smb_send_kvec._rs.64, ptr @.str.66, ptr @wait_for_free_credits._rs, ptr @.str.68, ptr @.str.69, ptr @wait_for_free_credits._rs.70, ptr @.str.71, ptr @wait_for_free_credits._rs.72, ptr @wait_for_free_credits._rs.75, ptr @smb_send_rqst._rs, ptr @.str.77, ptr @wait_for_compound_request._rs, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @cifs_sync_mid_result._rs, ptr @.str.81, ptr @.str.82, ptr @cifs_sync_mid_result._rs.83, ptr @.str.84], section "llvm.metadata"
@0 = internal global [89 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @AllocMidQEntry._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @AllocMidQEntry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @AllocMidQEntry._rs.3 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SendReceiveNoRsp._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_check_receive._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_check_receive._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @compound_send_recv._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @compound_send_recv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @compound_send_recv._rs.11 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @compound_send_recv._rs.13 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SendReceive._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SendReceive._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SendReceive._rs.17 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SendReceive._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SendReceive._rs.21 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SendReceive._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SendReceive._rs.25 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SendReceive._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SendReceiveBlockingLock._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SendReceiveBlockingLock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SendReceiveBlockingLock._rs.29 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SendReceiveBlockingLock._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SendReceiveBlockingLock._rs.32 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SendReceiveBlockingLock._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SendReceiveBlockingLock._rs.36 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SendReceiveBlockingLock._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_cifs_mid_q_entry_release._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_cifs_mid_q_entry_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_cifs_mid_q_entry_release._rs.43 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_cifs_mid_q_entry_release._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_send_kvec._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_send_kvec._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_send_kvec._rs.64 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_send_kvec._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_for_free_credits._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_for_free_credits._rs.70 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_for_free_credits._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_for_free_credits._rs.72 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_for_free_credits._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_for_free_credits._rs.75 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_send_rqst._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_send_rqst._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_for_compound_request._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_sync_mid_result._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_sync_mid_result._rs.83 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_sync_mid_result._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cifs_wake_up_task(ptr nocapture noundef readonly %mid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %callback_data = getelementptr inbounds %struct.mid_q_entry, ptr %mid, i32 0, i32 14
  %0 = ptrtoint ptr %callback_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %callback_data, align 4
  %call = tail call i32 @wake_up_process(ptr noundef %1) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @AllocMidQEntry(ptr nocapture noundef readonly %smb_buffer, ptr noundef %server) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %server, null
  br i1 %cmp, label %do.body1, label %if.end9

do.body1:                                         ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @AllocMidQEntry._rs, ptr noundef nonnull @__func__.AllocMidQEntry) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body1.cleanup_crit_edge, label %do.end

do.body1.cleanup_crit_edge:                       ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #15
  br label %cleanup

if.end9:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifs_mid_poolp to i32))
  %0 = load ptr, ptr @cifs_mid_poolp, align 4
  %call10 = tail call noalias ptr @mempool_alloc(ptr noundef %0, i32 noundef 3136) #12
  %1 = call ptr @memset(ptr %call10, i32 0, i32 96)
  %refcount = getelementptr inbounds %struct.mid_q_entry, ptr %call10, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #12
  %2 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 1, ptr %refcount, align 4
  %Mid.i = getelementptr inbounds %struct.smb_hdr, ptr %smb_buffer, i32 0, i32 12
  %3 = ptrtoint ptr %Mid.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %Mid.i, align 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #12
  %conv = zext i16 %5 to i64
  %mid = getelementptr inbounds %struct.mid_q_entry, ptr %call10, i32 0, i32 3
  %6 = ptrtoint ptr %mid to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %conv, ptr %mid, align 8
  %7 = tail call i32 @llvm.read_register.i32(metadata !187) #12
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 68
  %11 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pid, align 8
  %pid13 = getelementptr inbounds %struct.mid_q_entry, ptr %call10, i32 0, i32 6
  %13 = ptrtoint ptr %pid13 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %pid13, align 4
  %Command = getelementptr inbounds %struct.smb_hdr, ptr %smb_buffer, i32 0, i32 2
  %14 = ptrtoint ptr %Command to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %Command, align 1
  %conv14 = zext i8 %15 to i16
  %16 = shl nuw i16 %conv14, 8
  %command = getelementptr inbounds %struct.mid_q_entry, ptr %call10, i32 0, i32 20
  %17 = ptrtoint ptr %command to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %command, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %18 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %if.end9.do.end37_crit_edge, label %do.body19

if.end9.do.end37_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end37

do.body19:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @AllocMidQEntry.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@AllocMidQEntry, %land.lhs.true)) #12
          to label %do.end37 [label %land.lhs.true], !srcloc !197

land.lhs.true:                                    ; preds = %do.body19
  %call25 = tail call i32 @___ratelimit(ptr noundef nonnull @AllocMidQEntry._rs.3, ptr noundef nonnull @__func__.AllocMidQEntry) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %land.lhs.true.do.end37_crit_edge, label %if.then27

land.lhs.true.do.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end37

if.then27:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %Command to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %Command, align 1
  %conv29 = zext i8 %20 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @AllocMidQEntry.descriptor, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2, i32 noundef %conv29) #12
  br label %do.end37

do.end37:                                         ; preds = %if.then27, %land.lhs.true.do.end37_crit_edge, %do.body19, %if.end9.do.end37_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %when_alloc = getelementptr inbounds %struct.mid_q_entry, ptr %call10, i32 0, i32 8
  %22 = ptrtoint ptr %when_alloc to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %when_alloc, align 4
  %server38 = getelementptr inbounds %struct.mid_q_entry, ptr %call10, i32 0, i32 2
  %23 = ptrtoint ptr %server38 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %server, ptr %server38, align 4
  %24 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task, align 8
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #12
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #12, !srcloc !198
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %do.end37.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !199

do.end37.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %do.end37
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %27 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %.not.i.i.i.i = icmp sgt i32 %27, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_task_struct.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !200

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_task_struct.exit_crit_edge:   ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_task_struct.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %do.end37.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %do.end37.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef %.sink.i.i.i.i) #12
  br label %get_task_struct.exit

get_task_struct.exit:                             ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_task_struct.exit_crit_edge
  %28 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task, align 8
  %creator = getelementptr inbounds %struct.mid_q_entry, ptr %call10, i32 0, i32 15
  %30 = ptrtoint ptr %creator to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %creator, align 8
  %callback = getelementptr inbounds %struct.mid_q_entry, ptr %call10, i32 0, i32 12
  %31 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @cifs_wake_up_task, ptr %callback, align 4
  %32 = load ptr, ptr %task, align 8
  %callback_data = getelementptr inbounds %struct.mid_q_entry, ptr %call10, i32 0, i32 14
  %33 = ptrtoint ptr %callback_data to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %callback_data, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @midCount, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr nonnull @midCount, i32 1, i32 3, i32 1) #12
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @midCount, ptr nonnull @midCount, i32 1, ptr nonnull elementtype(i32) @midCount) #12, !srcloc !201
  %mid_state = getelementptr inbounds %struct.mid_q_entry, ptr %call10, i32 0, i32 18
  %35 = ptrtoint ptr %mid_state to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %mid_state, align 4
  br label %cleanup

cleanup:                                          ; preds = %get_task_struct.exit, %do.end, %do.body1.cleanup_crit_edge
  %retval.0 = phi ptr [ %call10, %get_task_struct.exit ], [ null, %do.end ], [ null, %do.body1.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cifs_mid_q_entry_release(ptr noundef %midEntry) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @GlobalMid_Lock) #12
  %refcount = getelementptr inbounds %struct.mid_q_entry, ptr %midEntry, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !202
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #12, !srcloc !203
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !200

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #12
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !204
  tail call fastcc void @_cifs_mid_q_entry_release(ptr noundef %refcount) #12
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @GlobalMid_Lock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_cifs_mid_q_entry_release(ptr noundef %refcount) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %refcount, i32 -8
  %server = getelementptr i8, ptr %refcount, i32 4
  %0 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %server, align 4
  %vals = getelementptr inbounds %struct.TCP_Server_Info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %vals to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vals, align 8
  %lock_cmd = getelementptr inbounds %struct.smb_version_values, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %lock_cmd to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %lock_cmd, align 4
  %command1 = getelementptr i8, ptr %refcount, i32 76
  %6 = ptrtoint ptr %command1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %command1, align 4
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %resp_buf = getelementptr i8, ptr %refcount, i32 60
  %9 = ptrtoint ptr %resp_buf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %resp_buf, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %mid_flags = getelementptr i8, ptr %refcount, i32 72
  %11 = ptrtoint ptr %mid_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mid_flags, align 8
  %and = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true5

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %mid_state = getelementptr i8, ptr %refcount, i32 68
  %13 = ptrtoint ptr %mid_state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mid_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %cmp = icmp eq i32 %14, 4
  br i1 %cmp, label %land.lhs.true6, label %land.lhs.true5.if.end_crit_edge

land.lhs.true5.if.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true6:                                   ; preds = %land.lhs.true5
  %ops = getelementptr inbounds %struct.TCP_Server_Info, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops, align 4
  %handle_cancelled_mid = getelementptr inbounds %struct.smb_version_operations, ptr %16, i32 0, i32 21
  %17 = ptrtoint ptr %handle_cancelled_mid to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %handle_cancelled_mid, align 4
  %tobool7.not = icmp eq ptr %18, null
  br i1 %tobool7.not, label %land.lhs.true6.if.end_crit_edge, label %if.then

land.lhs.true6.if.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 %18(ptr noundef %add.ptr, ptr noundef %1) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true6.if.end_crit_edge, %land.lhs.true5.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %mid_state10 = getelementptr i8, ptr %refcount, i32 68
  %19 = ptrtoint ptr %mid_state10 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %mid_state10, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @midCount, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr nonnull @midCount, i32 1, i32 3, i32 1) #12
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @midCount, ptr nonnull @midCount, i32 1, ptr nonnull elementtype(i32) @midCount) #12, !srcloc !205
  %large_buf = getelementptr i8, ptr %refcount, i32 84
  %21 = ptrtoint ptr %large_buf to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load = load i8, ptr %large_buf, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  %22 = ptrtoint ptr %resp_buf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %resp_buf, align 4
  br i1 %bf.cast.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @cifs_buf_release(ptr noundef %23) #12
  br label %if.end14

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @cifs_small_buf_release(ptr noundef %23) #12
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %when_alloc = getelementptr i8, ptr %refcount, i32 28
  %25 = ptrtoint ptr %when_alloc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %when_alloc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp15 = icmp ult i32 %24, %26
  br i1 %cmp15, label %do.body17, label %if.end14.if.end35_crit_edge

if.end14.if.end35_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

do.body17:                                        ; preds = %if.end14
  %tobool18.not = icmp eq ptr %1, null
  br i1 %tobool18.not, label %do.body17.if.end23_crit_edge, label %land.lhs.true19

do.body17.if.end23_crit_edge:                     ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

land.lhs.true19:                                  ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #14
  %hostname = getelementptr inbounds %struct.TCP_Server_Info, ptr %1, i32 0, i32 8
  %27 = ptrtoint ptr %hostname to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hostname, align 8
  %tobool20.not = icmp eq ptr %28, null
  %spec.select = select i1 %tobool20.not, ptr @.str.8, ptr %28
  br label %if.end23

if.end23:                                         ; preds = %land.lhs.true19, %do.body17.if.end23_crit_edge
  %sn.0 = phi ptr [ @.str.8, %do.body17.if.end23_crit_edge ], [ %spec.select, %land.lhs.true19 ]
  %call24 = tail call i32 @___ratelimit(ptr noundef nonnull @_cifs_mid_q_entry_release._rs, ptr noundef nonnull @__func__._cifs_mid_q_entry_release) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end23.if.end35_crit_edge, label %do.end

if.end23.if.end35_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

do.end:                                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull %sn.0) #15
  br label %if.end35

if.end35:                                         ; preds = %do.end, %if.end23.if.end35_crit_edge, %if.end14.if.end35_crit_edge
  %29 = ptrtoint ptr %when_alloc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %when_alloc, align 4
  %sub = sub i32 %24, %30
  %conv = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 19, i16 %8)
  %cmp37 = icmp ult i16 %8, 19
  br i1 %cmp37, label %if.then39, label %if.end35.if.end77_crit_edge

if.end35.if.end77_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end77

if.then39:                                        ; preds = %if.end35
  %arrayidx = getelementptr %struct.TCP_Server_Info, ptr %1, i32 0, i32 67, i32 %conv
  %call.i.i199 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef 4) #12
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp41 = icmp eq i32 %32, 0
  %arrayidx45 = getelementptr %struct.TCP_Server_Info, ptr %1, i32 0, i32 70, i32 %conv
  br i1 %cmp41, label %if.then43, label %if.else48

if.then43:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %sub, ptr %arrayidx45, align 4
  %arrayidx47 = getelementptr %struct.TCP_Server_Info, ptr %1, i32 0, i32 71, i32 %conv
  br label %if.end70.sink.split

if.else48:                                        ; preds = %if.then39
  %34 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx45, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %sub)
  %cmp52 = icmp ult i32 %35, %sub
  br i1 %cmp52, label %if.else48.if.end70.sink.split_crit_edge, label %if.else58

if.else48.if.end70.sink.split_crit_edge:          ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70.sink.split

if.else58:                                        ; preds = %if.else48
  %arrayidx61 = getelementptr %struct.TCP_Server_Info, ptr %1, i32 0, i32 71, i32 %conv
  %36 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx61, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %sub)
  %cmp62 = icmp ugt i32 %37, %sub
  br i1 %cmp62, label %if.else58.if.end70.sink.split_crit_edge, label %if.else58.if.end70_crit_edge

if.else58.if.end70_crit_edge:                     ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

if.else58.if.end70.sink.split_crit_edge:          ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70.sink.split

if.end70.sink.split:                              ; preds = %if.else58.if.end70.sink.split_crit_edge, %if.else48.if.end70.sink.split_crit_edge, %if.then43
  %arrayidx45.sink = phi ptr [ %arrayidx47, %if.then43 ], [ %arrayidx45, %if.else48.if.end70.sink.split_crit_edge ], [ %arrayidx61, %if.else58.if.end70.sink.split_crit_edge ]
  %38 = ptrtoint ptr %arrayidx45.sink to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %sub, ptr %arrayidx45.sink, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.end70.sink.split, %if.else58.if.end70_crit_edge
  %call.i.i200 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #12
  %39 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx, ptr %arrayidx, i32 1, ptr elementtype(i32) %arrayidx) #12, !srcloc !201
  %conv74 = zext i32 %sub to i64
  %arrayidx76 = getelementptr %struct.TCP_Server_Info, ptr %1, i32 0, i32 69, i32 %conv
  %40 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %arrayidx76, align 8
  %add = add i64 %41, %conv74
  store i64 %add, ptr %arrayidx76, align 8
  br label %if.end77

if.end77:                                         ; preds = %if.end70, %if.end35.if.end77_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @slow_rsp_threshold to i32))
  %42 = load i32, ptr @slow_rsp_threshold, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp78.not = icmp eq i32 %42, 0
  br i1 %cmp78.not, label %if.end77.if.end132_crit_edge, label %land.lhs.true80

if.end77.if.end132_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end132

land.lhs.true80:                                  ; preds = %if.end77
  %43 = ptrtoint ptr %when_alloc to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %when_alloc, align 4
  %mul = mul i32 %42, 100
  %add82 = sub i32 %mul, %24
  %sub83 = add i32 %add82, %44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub83)
  %cmp84 = icmp slt i32 %sub83, 0
  br i1 %cmp84, label %land.lhs.true86, label %land.lhs.true80.if.end132_crit_edge

land.lhs.true80.if.end132_crit_edge:              ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end132

land.lhs.true86:                                  ; preds = %land.lhs.true80
  %45 = ptrtoint ptr %command1 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %command1, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %46, i16 %5)
  %cmp90.not = icmp eq i16 %46, %5
  br i1 %cmp90.not, label %land.lhs.true86.if.end132_crit_edge, label %if.then92

land.lhs.true86.if.end132_crit_edge:              ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end132

if.then92:                                        ; preds = %land.lhs.true86
  br i1 %cmp37, label %if.then96, label %if.then92.if.end99_crit_edge

if.then92.if.end99_crit_edge:                     ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end99

if.then96:                                        ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx98 = getelementptr %struct.TCP_Server_Info, ptr %1, i32 0, i32 68, i32 %conv
  %call.i.i201 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx98, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %arrayidx98, i32 1, i32 3, i32 1) #12
  %47 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx98, ptr %arrayidx98, i32 1, ptr elementtype(i32) %arrayidx98) #12, !srcloc !201
  br label %if.end99

if.end99:                                         ; preds = %if.then96, %if.then92.if.end99_crit_edge
  %mid = getelementptr i8, ptr %refcount, i32 8
  %48 = ptrtoint ptr %mid to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %mid, align 8
  %pid = getelementptr i8, ptr %refcount, i32 20
  %50 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pid, align 4
  %when_sent = getelementptr i8, ptr %refcount, i32 32
  %52 = ptrtoint ptr %when_sent to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %when_sent, align 8
  %when_received = getelementptr i8, ptr %refcount, i32 36
  %54 = ptrtoint ptr %when_received to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %when_received, align 4
  tail call fastcc void @trace_smb3_slow_rsp(i16 noundef zeroext %8, i64 noundef %49, i32 noundef %51, i32 noundef %53, i32 noundef %55)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %56 = load i32, ptr @cifsFYI, align 4
  %and100 = and i32 %56, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %if.end99.if.end132_crit_edge, label %do.body103

if.end99.if.end132_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end132

do.body103:                                       ; preds = %if.end99
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_cifs_mid_q_entry_release.__UNIQUE_ID_ddebug678, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_cifs_mid_q_entry_release, %if.then109)) #12
          to label %do.end115 [label %if.then109], !srcloc !197

if.then109:                                       ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #14
  %57 = ptrtoint ptr %command1 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %command1, align 4
  %conv111 = zext i16 %58 to i32
  %59 = ptrtoint ptr %mid to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %mid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_cifs_mid_q_entry_release.__UNIQUE_ID_ddebug678, ptr noundef nonnull @.str.42, i32 noundef %conv111, i64 noundef %60) #12
  br label %do.end115

do.end115:                                        ; preds = %if.then109, %do.body103
  %call116 = tail call i32 @___ratelimit(ptr noundef nonnull @_cifs_mid_q_entry_release._rs.43, ptr noundef nonnull @__func__._cifs_mid_q_entry_release) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %do.end115.if.end132_crit_edge, label %do.end121

do.end115.if.end132_crit_edge:                    ; preds = %do.end115
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end132

do.end121:                                        ; preds = %do.end115
  call void @__sanitizer_cov_trace_pc() #14
  %61 = ptrtoint ptr %when_alloc to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %when_alloc, align 4
  %sub124 = sub i32 %24, %62
  %63 = ptrtoint ptr %when_sent to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %when_sent, align 8
  %sub126 = sub i32 %24, %64
  %65 = ptrtoint ptr %when_received to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %when_received, align 4
  %sub128 = sub i32 %24, %66
  %call129 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %sub124, i32 noundef %sub126, i32 noundef %sub128) #15
  br label %if.end132

if.end132:                                        ; preds = %do.end121, %do.end115.if.end132_crit_edge, %if.end99.if.end132_crit_edge, %land.lhs.true86.if.end132_crit_edge, %land.lhs.true80.if.end132_crit_edge, %if.end77.if.end132_crit_edge
  %creator = getelementptr i8, ptr %refcount, i32 56
  %67 = ptrtoint ptr %creator to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %creator, align 8
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %68, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !202
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #12
  %69 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #12, !srcloc !203
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %69, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end132
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_task_struct.exit_crit_edge, label %if.then10.i.i.i.i, !prof !200

if.end5.i.i.i.i.put_task_struct.exit_crit_edge:   ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_task_struct.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #12
  br label %put_task_struct.exit

if.then.i:                                        ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !204
  tail call void @__put_task_struct(ptr noundef %68) #12
  br label %put_task_struct.exit

put_task_struct.exit:                             ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_task_struct.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifs_mid_poolp to i32))
  %70 = load ptr, ptr @cifs_mid_poolp, align 4
  tail call void @mempool_free(ptr noundef %add.ptr, ptr noundef %70) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @DeleteMidQEntry(ptr noundef %midEntry) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @GlobalMid_Lock) #12
  %refcount.i = getelementptr inbounds %struct.mid_q_entry, ptr %midEntry, i32 0, i32 1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !202
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #12, !srcloc !203
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cifs_mid_q_entry_release.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !200

if.end5.i.i.i.i.i.cifs_mid_q_entry_release.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cifs_mid_q_entry_release.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #12
  br label %cifs_mid_q_entry_release.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !204
  tail call fastcc void @_cifs_mid_q_entry_release(ptr noundef %refcount.i) #12
  br label %cifs_mid_q_entry_release.exit

cifs_mid_q_entry_release.exit:                    ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cifs_mid_q_entry_release.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @GlobalMid_Lock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cifs_delete_mid(ptr noundef %mid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @GlobalMid_Lock) #12
  %mid_flags = getelementptr inbounds %struct.mid_q_entry, ptr %mid, i32 0, i32 19
  %0 = ptrtoint ptr %mid_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mid_flags, align 8
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mid) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %mid, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %mid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mid, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %8 = ptrtoint ptr %mid to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %mid, ptr %mid, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %mid, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %mid, ptr %prev.i3.i, align 4
  %10 = ptrtoint ptr %mid_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mid_flags, align 8
  %or = or i32 %11, 2
  store i32 %or, ptr %mid_flags, align 8
  br label %if.end

if.end:                                           ; preds = %list_del_init.exit, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @GlobalMid_Lock) #12
  tail call void @_raw_spin_lock(ptr noundef nonnull @GlobalMid_Lock) #12
  %refcount.i.i = getelementptr inbounds %struct.mid_q_entry, ptr %mid, i32 0, i32 1
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !202
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #12
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #12, !srcloc !203
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.DeleteMidQEntry.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !200

if.end5.i.i.i.i.i.i.DeleteMidQEntry.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %DeleteMidQEntry.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #12
  br label %DeleteMidQEntry.exit

if.then.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !204
  tail call fastcc void @_cifs_mid_q_entry_release(ptr noundef %refcount.i.i) #12
  br label %DeleteMidQEntry.exit

DeleteMidQEntry.exit:                             ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.DeleteMidQEntry.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @GlobalMid_Lock) #12
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smb_rqst_len(ptr nocapture noundef readonly %server, ptr nocapture noundef readonly %rqst) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vals = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 6
  %0 = ptrtoint ptr %vals to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vals, align 8
  %header_preamble_size = getelementptr inbounds %struct.smb_version_values, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %header_preamble_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %header_preamble_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %rq_nvec = getelementptr inbounds %struct.smb_rqst, ptr %rqst, i32 0, i32 1
  %4 = ptrtoint ptr %rq_nvec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rq_nvec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp1 = icmp ugt i32 %5, 1
  br i1 %cmp1, label %land.lhs.true2, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %6 = ptrtoint ptr %rqst to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rqst, align 4
  %iov_len = getelementptr inbounds %struct.kvec, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iov_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp3 = icmp eq i32 %9, 4
  br i1 %cmp3, label %if.end.thread, label %land.lhs.true2.if.end_crit_edge

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.thread:                                    ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx5 = getelementptr %struct.kvec, ptr %7, i32 1
  %sub = add i32 %5, -1
  br label %for.body.preheader

if.end:                                           ; preds = %land.lhs.true2.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %rqst to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rqst, align 4
  %rq_nvec8 = getelementptr inbounds %struct.smb_rqst, ptr %rqst, i32 0, i32 1
  %12 = ptrtoint ptr %rq_nvec8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rq_nvec8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp945.not = icmp eq i32 %13, 0
  br i1 %cmp945.not, label %if.end.for.end_crit_edge, label %if.end.for.body.preheader_crit_edge

if.end.for.body.preheader_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.preheader

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.preheader:                               ; preds = %if.end.for.body.preheader_crit_edge, %if.end.thread
  %nvec.052 = phi i32 [ %sub, %if.end.thread ], [ %13, %if.end.for.body.preheader_crit_edge ]
  %iov.051 = phi ptr [ %arrayidx5, %if.end.thread ], [ %11, %if.end.for.body.preheader_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %buflen.047 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %i.046 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %iov_len11 = getelementptr %struct.kvec, ptr %iov.051, i32 %i.046, i32 1
  %14 = ptrtoint ptr %iov_len11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iov_len11, align 4
  %add = add i32 %15, %buflen.047
  %inc = add nuw i32 %i.046, 1
  %exitcond.not = icmp eq i32 %inc, %nvec.052
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %buflen.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %rq_npages = getelementptr inbounds %struct.smb_rqst, ptr %rqst, i32 0, i32 4
  %16 = ptrtoint ptr %rq_npages to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rq_npages, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %17, label %if.else17 [
    i32 0, label %for.end.if.end25_crit_edge
    i32 1, label %if.then15
  ]

for.end.if.end25_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then15:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %rq_tailsz = getelementptr inbounds %struct.smb_rqst, ptr %rqst, i32 0, i32 6
  %19 = ptrtoint ptr %rq_tailsz to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rq_tailsz, align 4
  %add16 = add i32 %20, %buflen.0.lcssa
  br label %if.end25

if.else17:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %rq_pagesz = getelementptr inbounds %struct.smb_rqst, ptr %rqst, i32 0, i32 5
  %21 = ptrtoint ptr %rq_pagesz to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rq_pagesz, align 4
  %sub19 = add i32 %17, -1
  %mul = mul i32 %22, %sub19
  %rq_offset = getelementptr inbounds %struct.smb_rqst, ptr %rqst, i32 0, i32 3
  %23 = ptrtoint ptr %rq_offset to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rq_offset, align 4
  %rq_tailsz22 = getelementptr inbounds %struct.smb_rqst, ptr %rqst, i32 0, i32 6
  %25 = ptrtoint ptr %rq_tailsz22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rq_tailsz22, align 4
  %sub20 = sub i32 %buflen.0.lcssa, %24
  %add21 = add i32 %sub20, %mul
  %add23 = add i32 %add21, %26
  br label %if.end25

if.end25:                                         ; preds = %if.else17, %if.then15, %for.end.if.end25_crit_edge
  %buflen.1 = phi i32 [ %add16, %if.then15 ], [ %add23, %if.else17 ], [ %buflen.0.lcssa, %for.end.if.end25_crit_edge ]
  ret i32 %buflen.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smb_send(ptr noundef %server, ptr noundef %smb_buffer, i32 noundef %smb_buf_length) local_unnamed_addr #0 align 64 {
entry:
  %iov = alloca [2 x %struct.kvec], align 4
  %rqst = alloca %struct.smb_rqst, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iov) #12
  %0 = getelementptr inbounds %struct.kvec, ptr %iov, i32 0, i32 1
  %1 = getelementptr inbounds [2 x %struct.kvec], ptr %iov, i32 0, i32 1
  %2 = getelementptr inbounds [2 x %struct.kvec], ptr %iov, i32 0, i32 1, i32 1
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %rqst) #12
  %3 = getelementptr inbounds %struct.smb_rqst, ptr %rqst, i32 0, i32 1
  %4 = getelementptr inbounds %struct.smb_rqst, ptr %rqst, i32 0, i32 2
  %5 = ptrtoint ptr %rqst to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %iov, ptr %rqst, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %3, align 4
  %7 = call ptr @memset(ptr %4, i32 0, i32 20)
  %8 = ptrtoint ptr %iov to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %smb_buffer, ptr %iov, align 4
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %0, align 4
  %add.ptr = getelementptr i8, ptr %smb_buffer, i32 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %smb_buf_length, ptr %2, align 4
  %call = call fastcc i32 @__smb_send_rqst(ptr noundef %server, i32 noundef 1, ptr noundef nonnull %rqst)
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %rqst) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iov) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__smb_send_rqst(ptr noundef %server, i32 noundef %num_rqst, ptr noundef %rqst) unnamed_addr #0 align 64 {
entry:
  %mask = alloca %struct.sigset_t, align 4
  %oldmask = alloca %struct.sigset_t, align 4
  %sent = alloca i32, align 4
  %smb_msg = alloca %struct.msghdr, align 8
  %rfc1002_marker = alloca i32, align 4
  %hiov = alloca %struct.kvec, align 4
  %bvec = alloca %struct.bio_vec, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mask) #12
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mask, align 4, !annotation !206
  %1 = getelementptr inbounds [2 x i32], ptr %mask, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !206
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %oldmask) #12
  %3 = ptrtoint ptr %oldmask to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %oldmask, align 4, !annotation !206
  %4 = getelementptr inbounds [2 x i32], ptr %oldmask, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !206
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sent) #12
  %6 = ptrtoint ptr %sent to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %sent, align 4, !annotation !206
  %ssocket1 = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 9
  %7 = ptrtoint ptr %ssocket1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ssocket1, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %smb_msg) #12
  %9 = call ptr @memset(ptr %smb_msg, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rfc1002_marker) #12
  %10 = ptrtoint ptr %rfc1002_marker to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %rfc1002_marker, align 4, !annotation !206
  %rdma = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 57
  %11 = ptrtoint ptr %rdma to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %rdma, align 2, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %smbd_conn = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 58
  %13 = ptrtoint ptr %smbd_conn to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %smbd_conn, align 4
  %tobool2.not = icmp eq ptr %14, null
  br i1 %tobool2.not, label %if.then.smbd_done_crit_edge, label %if.then3

if.then.smbd_done_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %smbd_done

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @smbd_send(ptr noundef %server, i32 noundef %num_rqst, ptr noundef %rqst) #12
  br label %smbd_done

if.end4:                                          ; preds = %entry
  %cmp = icmp eq ptr %8, null
  br i1 %cmp, label %if.end4.cleanup224_crit_edge, label %if.end6

if.end4.cleanup224_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup224

if.end6:                                          ; preds = %if.end4
  %15 = tail call i32 @llvm.read_register.i32(metadata !187) #12
  %and.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %stack.i.i.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %20, align 4
  %and1.i.i.i.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.not.i, label %if.end6.if.end28_crit_edge, label %fatal_signal_pending.exit

if.end6.if.end28_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

fatal_signal_pending.exit:                        ; preds = %if.end6
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 116, i32 1
  %23 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %signal.i.i, align 4
  %25 = and i32 %24, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool9.not = icmp eq i32 %25, 0
  br i1 %tobool9.not, label %fatal_signal_pending.exit.if.end28_crit_edge, label %do.body11

fatal_signal_pending.exit.if.end28_crit_edge:     ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

do.body11:                                        ; preds = %fatal_signal_pending.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %26 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %do.body11.cleanup224_crit_edge, label %do.body14

do.body11.cleanup224_crit_edge:                   ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup224

do.body14:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__smb_send_rqst.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__smb_send_rqst, %land.lhs.true)) #12
          to label %cleanup224 [label %land.lhs.true], !srcloc !197

land.lhs.true:                                    ; preds = %do.body14
  %call19 = tail call i32 @___ratelimit(ptr noundef nonnull @__smb_send_rqst._rs, ptr noundef nonnull @.str.50) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %land.lhs.true.cleanup224_crit_edge, label %if.then21

land.lhs.true.cleanup224_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup224

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__smb_send_rqst.descriptor, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.2) #12
  br label %cleanup224

if.end28:                                         ; preds = %fatal_signal_pending.exit.if.end28_crit_edge, %if.end6.if.end28_crit_edge
  %sk = getelementptr inbounds %struct.socket, ptr %8, i32 0, i32 4
  %27 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sk, align 16
  tail call void @tcp_sock_set_cork(ptr noundef %28, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_rqst)
  %cmp29337.not = icmp eq i32 %num_rqst, 0
  br i1 %cmp29337.not, label %if.end28.for.end_crit_edge, label %for.body.lr.ph

if.end28.for.end_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end28
  %vals.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 6
  %29 = ptrtoint ptr %vals.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vals.i, align 8
  %header_preamble_size.i = getelementptr inbounds %struct.smb_version_values, ptr %30, i32 0, i32 7
  %31 = ptrtoint ptr %header_preamble_size.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %header_preamble_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i = icmp eq i32 %32, 0
  br label %for.body

for.body:                                         ; preds = %smb_rqst_len.exit.for.body_crit_edge, %for.body.lr.ph
  %send_length.0343 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %smb_rqst_len.exit.for.body_crit_edge ]
  %j.0338 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %smb_rqst_len.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.smb_rqst, ptr %rqst, i32 %j.0338
  br i1 %cmp.i, label %land.lhs.true.i, label %for.body.if.end.i_crit_edge

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body
  %rq_nvec.i = getelementptr %struct.smb_rqst, ptr %rqst, i32 %j.0338, i32 1
  %33 = ptrtoint ptr %rq_nvec.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rq_nvec.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp1.i = icmp ugt i32 %34, 1
  br i1 %cmp1.i, label %land.lhs.true2.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx, align 4
  %iov_len.i = getelementptr inbounds %struct.kvec, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %iov_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %38)
  %cmp3.i = icmp eq i32 %38, 4
  br i1 %cmp3.i, label %if.end.thread.i, label %land.lhs.true2.i.if.end.i_crit_edge

land.lhs.true2.i.if.end.i_crit_edge:              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.end.thread.i:                                  ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx5.i = getelementptr %struct.kvec, ptr %36, i32 1
  %sub.i = add i32 %34, -1
  br label %for.body.preheader.i

if.end.i:                                         ; preds = %land.lhs.true2.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %for.body.if.end.i_crit_edge
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx, align 4
  %rq_nvec8.i = getelementptr %struct.smb_rqst, ptr %rqst, i32 %j.0338, i32 1
  %41 = ptrtoint ptr %rq_nvec8.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rq_nvec8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp945.not.i = icmp eq i32 %42, 0
  br i1 %cmp945.not.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.for.body.preheader.i_crit_edge

if.end.i.for.body.preheader.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.preheader.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.preheader.i:                             ; preds = %if.end.i.for.body.preheader.i_crit_edge, %if.end.thread.i
  %nvec.052.i = phi i32 [ %sub.i, %if.end.thread.i ], [ %42, %if.end.i.for.body.preheader.i_crit_edge ]
  %iov.051.i = phi ptr [ %arrayidx5.i, %if.end.thread.i ], [ %40, %if.end.i.for.body.preheader.i_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %buflen.047.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %i.046.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %iov_len11.i = getelementptr %struct.kvec, ptr %iov.051.i, i32 %i.046.i, i32 1
  %43 = ptrtoint ptr %iov_len11.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %iov_len11.i, align 4
  %add.i = add i32 %44, %buflen.047.i
  %inc.i = add nuw i32 %i.046.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %nvec.052.i
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %buflen.0.lcssa.i = phi i32 [ 0, %if.end.i.for.end.i_crit_edge ], [ %add.i, %for.body.i.for.end.i_crit_edge ]
  %rq_npages.i = getelementptr %struct.smb_rqst, ptr %rqst, i32 %j.0338, i32 4
  %45 = ptrtoint ptr %rq_npages.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rq_npages.i, align 4
  %47 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %46, label %if.else17.i [
    i32 0, label %for.end.i.smb_rqst_len.exit_crit_edge
    i32 1, label %if.then15.i
  ]

for.end.i.smb_rqst_len.exit_crit_edge:            ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %smb_rqst_len.exit

if.then15.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %rq_tailsz.i = getelementptr %struct.smb_rqst, ptr %rqst, i32 %j.0338, i32 6
  %48 = ptrtoint ptr %rq_tailsz.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rq_tailsz.i, align 4
  %add16.i = add i32 %49, %buflen.0.lcssa.i
  br label %smb_rqst_len.exit

if.else17.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %rq_pagesz.i = getelementptr %struct.smb_rqst, ptr %rqst, i32 %j.0338, i32 5
  %50 = ptrtoint ptr %rq_pagesz.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rq_pagesz.i, align 4
  %sub19.i = add i32 %46, -1
  %mul.i = mul i32 %51, %sub19.i
  %rq_offset.i = getelementptr %struct.smb_rqst, ptr %rqst, i32 %j.0338, i32 3
  %52 = ptrtoint ptr %rq_offset.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rq_offset.i, align 4
  %rq_tailsz22.i = getelementptr %struct.smb_rqst, ptr %rqst, i32 %j.0338, i32 6
  %54 = ptrtoint ptr %rq_tailsz22.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rq_tailsz22.i, align 4
  %sub20.i = sub i32 %buflen.0.lcssa.i, %53
  %add21.i = add i32 %sub20.i, %mul.i
  %add23.i = add i32 %add21.i, %55
  br label %smb_rqst_len.exit

smb_rqst_len.exit:                                ; preds = %if.else17.i, %if.then15.i, %for.end.i.smb_rqst_len.exit_crit_edge
  %buflen.1.i = phi i32 [ %add16.i, %if.then15.i ], [ %add23.i, %if.else17.i ], [ %buflen.0.lcssa.i, %for.end.i.smb_rqst_len.exit_crit_edge ]
  %add = add i32 %buflen.1.i, %send_length.0343
  %inc = add nuw i32 %j.0338, 1
  %exitcond.not = icmp eq i32 %inc, %num_rqst
  br i1 %exitcond.not, label %smb_rqst_len.exit.for.end_crit_edge, label %smb_rqst_len.exit.for.body_crit_edge

smb_rqst_len.exit.for.body_crit_edge:             ; preds = %smb_rqst_len.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

smb_rqst_len.exit.for.end_crit_edge:              ; preds = %smb_rqst_len.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %smb_rqst_len.exit.for.end_crit_edge, %if.end28.for.end_crit_edge
  %send_length.0.lcssa = phi i32 [ 0, %if.end28.for.end_crit_edge ], [ %add, %smb_rqst_len.exit.for.end_crit_edge ]
  %56 = ptrtoint ptr %rfc1002_marker to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %send_length.0.lcssa, ptr %rfc1002_marker, align 4
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -1, ptr %1, align 4
  %58 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 -1, ptr %mask, align 4
  %call31 = call i32 @sigprocmask(i32 noundef 0, ptr noundef nonnull %mask, ptr noundef nonnull %oldmask) #12
  %vals = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 6
  %59 = ptrtoint ptr %vals to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %vals, align 8
  %header_preamble_size = getelementptr inbounds %struct.smb_version_values, ptr %60, i32 0, i32 7
  %61 = ptrtoint ptr %header_preamble_size to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %header_preamble_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp32 = icmp eq i32 %62, 0
  br i1 %cmp32, label %if.then33, label %for.end.do.body42_crit_edge

for.end.do.body42_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body42

if.then33:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %hiov) #12
  %63 = getelementptr inbounds %struct.kvec, ptr %hiov, i32 0, i32 1
  %64 = ptrtoint ptr %hiov to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %rfc1002_marker, ptr %hiov, align 4
  %65 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 4, ptr %63, align 4
  %msg_iter = getelementptr inbounds %struct.msghdr, ptr %smb_msg, i32 0, i32 2
  call void @iov_iter_kvec(ptr noundef %msg_iter, i32 noundef 1, ptr noundef nonnull %hiov, i32 noundef 1, i32 noundef 4) #12
  %call34 = call fastcc i32 @smb_send_kvec(ptr noundef %server, ptr noundef nonnull %smb_msg, ptr noundef nonnull %sent)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  %66 = ptrtoint ptr %sent to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %sent, align 4
  %add39 = add i32 %send_length.0.lcssa, 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hiov) #12
  br label %do.body42

cleanup:                                          ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hiov) #12
  br label %unmask

do.body42:                                        ; preds = %cleanup.thread, %for.end.do.body42_crit_edge
  %total_len.1 = phi i32 [ 0, %for.end.do.body42_crit_edge ], [ %67, %cleanup.thread ]
  %send_length.2 = phi i32 [ %send_length.0.lcssa, %for.end.do.body42_crit_edge ], [ %add39, %cleanup.thread ]
  %rc.0 = phi i32 [ 0, %for.end.do.body42_crit_edge ], [ %call34, %cleanup.thread ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %68 = load i32, ptr @cifsFYI, align 4
  %and43 = and i32 %68, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %do.body42.do.end70_crit_edge, label %do.body46

do.body42.do.end70_crit_edge:                     ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end70

do.body46:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__smb_send_rqst.descriptor.53, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__smb_send_rqst, %land.lhs.true58)) #12
          to label %do.end70 [label %land.lhs.true58], !srcloc !197

land.lhs.true58:                                  ; preds = %do.body46
  %call59 = call i32 @___ratelimit(ptr noundef nonnull @__smb_send_rqst._rs.52, ptr noundef nonnull @.str.50) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true58.do.end70_crit_edge, label %if.then61

land.lhs.true58.do.end70_crit_edge:               ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end70

if.then61:                                        ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__smb_send_rqst.descriptor.53, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.2, i32 noundef %send_length.2) #12
  br label %do.end70

do.end70:                                         ; preds = %if.then61, %land.lhs.true58.do.end70_crit_edge, %do.body46, %do.body42.do.end70_crit_edge
  %msg_iter89 = getelementptr inbounds %struct.msghdr, ptr %smb_msg, i32 0, i32 2
  br i1 %cmp29337.not, label %do.end70.unmask_crit_edge, label %for.body73.lr.ph

do.end70.unmask_crit_edge:                        ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #14
  br label %unmask

for.body73.lr.ph:                                 ; preds = %do.end70
  %69 = getelementptr inbounds %struct.bio_vec, ptr %bvec, i32 0, i32 1
  %70 = getelementptr inbounds %struct.bio_vec, ptr %bvec, i32 0, i32 2
  br label %for.body73

for.body73:                                       ; preds = %for.inc115.for.body73_crit_edge, %for.body73.lr.ph
  %j.1355 = phi i32 [ 0, %for.body73.lr.ph ], [ %inc116, %for.inc115.for.body73_crit_edge ]
  %total_len.2354 = phi i32 [ %total_len.1, %for.body73.lr.ph ], [ %total_len.3336, %for.inc115.for.body73_crit_edge ]
  %arrayidx74 = getelementptr %struct.smb_rqst, ptr %rqst, i32 %j.1355
  %71 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx74, align 4
  %rq_nvec = getelementptr %struct.smb_rqst, ptr %rqst, i32 %j.1355, i32 1
  %73 = ptrtoint ptr %rq_nvec to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %rq_nvec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp77344.not = icmp eq i32 %74, 0
  br i1 %cmp77344.not, label %for.body73.for.end88_crit_edge, label %for.body73.for.body78_crit_edge

for.body73.for.body78_crit_edge:                  ; preds = %for.body73
  br label %for.body78

for.body73.for.end88_crit_edge:                   ; preds = %for.body73
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end88

for.body78:                                       ; preds = %for.body78.for.body78_crit_edge, %for.body73.for.body78_crit_edge
  %i.0346 = phi i32 [ %inc87, %for.body78.for.body78_crit_edge ], [ 0, %for.body73.for.body78_crit_edge ]
  %size.0345 = phi i32 [ %add85, %for.body78.for.body78_crit_edge ], [ 0, %for.body73.for.body78_crit_edge ]
  %arrayidx79 = getelementptr %struct.kvec, ptr %72, i32 %i.0346
  %75 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx79, align 4
  %iov_len82 = getelementptr %struct.kvec, ptr %72, i32 %i.0346, i32 1
  %77 = ptrtoint ptr %iov_len82 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %iov_len82, align 4
  call void @dump_smb(ptr noundef %76, i32 noundef %78) #12
  %79 = ptrtoint ptr %iov_len82 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %iov_len82, align 4
  %add85 = add i32 %80, %size.0345
  %inc87 = add nuw i32 %i.0346, 1
  %exitcond364.not = icmp eq i32 %inc87, %74
  br i1 %exitcond364.not, label %for.body78.for.end88_crit_edge, label %for.body78.for.body78_crit_edge

for.body78.for.body78_crit_edge:                  ; preds = %for.body78
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body78

for.body78.for.end88_crit_edge:                   ; preds = %for.body78
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end88

for.end88:                                        ; preds = %for.body78.for.end88_crit_edge, %for.body73.for.end88_crit_edge
  %size.0.lcssa = phi i32 [ 0, %for.body73.for.end88_crit_edge ], [ %add85, %for.body78.for.end88_crit_edge ]
  call void @iov_iter_kvec(ptr noundef %msg_iter89, i32 noundef 1, ptr noundef %72, i32 noundef %74, i32 noundef %size.0.lcssa) #12
  %call90 = call fastcc i32 @smb_send_kvec(ptr noundef %server, ptr noundef nonnull %smb_msg, ptr noundef nonnull %sent)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %cmp91 = icmp slt i32 %call90, 0
  br i1 %cmp91, label %for.end88.unmask_crit_edge, label %if.end93

for.end88.unmask_crit_edge:                       ; preds = %for.end88
  call void @__sanitizer_cov_trace_pc() #14
  br label %unmask

if.end93:                                         ; preds = %for.end88
  %81 = ptrtoint ptr %sent to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %sent, align 4
  %add94 = add i32 %82, %total_len.2354
  %rq_npages = getelementptr %struct.smb_rqst, ptr %rqst, i32 %j.1355, i32 4
  %83 = ptrtoint ptr %rq_npages to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %rq_npages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp97348.not = icmp eq i32 %84, 0
  br i1 %cmp97348.not, label %if.end93.for.inc115_crit_edge, label %for.body98.lr.ph

if.end93.for.inc115_crit_edge:                    ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc115

for.body98.lr.ph:                                 ; preds = %if.end93
  %rq_pages = getelementptr %struct.smb_rqst, ptr %rqst, i32 %j.1355, i32 2
  br label %for.body98

for.body98:                                       ; preds = %for.inc112.for.body98_crit_edge, %for.body98.lr.ph
  %i.1350 = phi i32 [ 0, %for.body98.lr.ph ], [ %inc113, %for.inc112.for.body98_crit_edge ]
  %total_len.3349 = phi i32 [ %add94, %for.body98.lr.ph ], [ %add108, %for.inc112.for.body98_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %bvec) #12
  %85 = ptrtoint ptr %bvec to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr inttoptr (i32 -1 to ptr), ptr %bvec, align 4, !annotation !206
  %86 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 -1, ptr %69, align 4, !annotation !206
  %87 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 -1, ptr %70, align 4, !annotation !206
  %88 = ptrtoint ptr %rq_pages to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %rq_pages, align 4
  %arrayidx100 = getelementptr ptr, ptr %89, i32 %i.1350
  %90 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx100, align 4
  store ptr %91, ptr %bvec, align 4
  call void @rqst_page_get_length(ptr noundef %arrayidx74, i32 noundef %i.1350, ptr noundef %69, ptr noundef %70) #12
  %92 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %69, align 4
  call void @iov_iter_bvec(ptr noundef %msg_iter89, i32 noundef 1, ptr noundef nonnull %bvec, i32 noundef 1, i32 noundef %93) #12
  %call104 = call fastcc i32 @smb_send_kvec(ptr noundef %server, ptr noundef nonnull %smb_msg, ptr noundef nonnull %sent)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %cmp105 = icmp slt i32 %call104, 0
  br i1 %cmp105, label %cleanup109, label %for.inc112

cleanup109:                                       ; preds = %for.body98
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %bvec) #12
  br label %for.inc115

for.inc112:                                       ; preds = %for.body98
  %94 = ptrtoint ptr %sent to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %sent, align 4
  %add108 = add i32 %95, %total_len.3349
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %bvec) #12
  %inc113 = add nuw i32 %i.1350, 1
  %96 = ptrtoint ptr %rq_npages to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %rq_npages, align 4
  %cmp97 = icmp ult i32 %inc113, %97
  br i1 %cmp97, label %for.inc112.for.body98_crit_edge, label %for.inc112.for.inc115_crit_edge

for.inc112.for.inc115_crit_edge:                  ; preds = %for.inc112
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc115

for.inc112.for.body98_crit_edge:                  ; preds = %for.inc112
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body98

for.inc115:                                       ; preds = %for.inc112.for.inc115_crit_edge, %cleanup109, %if.end93.for.inc115_crit_edge
  %total_len.3336 = phi i32 [ %total_len.3349, %cleanup109 ], [ %add94, %if.end93.for.inc115_crit_edge ], [ %add108, %for.inc112.for.inc115_crit_edge ]
  %rc.3 = phi i32 [ %call104, %cleanup109 ], [ %call90, %if.end93.for.inc115_crit_edge ], [ %call104, %for.inc112.for.inc115_crit_edge ]
  %inc116 = add nuw i32 %j.1355, 1
  %exitcond365.not = icmp eq i32 %inc116, %num_rqst
  br i1 %exitcond365.not, label %for.inc115.unmask_crit_edge, label %for.inc115.for.body73_crit_edge

for.inc115.for.body73_crit_edge:                  ; preds = %for.inc115
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body73

for.inc115.unmask_crit_edge:                      ; preds = %for.inc115
  call void @__sanitizer_cov_trace_pc() #14
  br label %unmask

unmask:                                           ; preds = %for.inc115.unmask_crit_edge, %for.end88.unmask_crit_edge, %do.end70.unmask_crit_edge, %cleanup
  %total_len.6 = phi i32 [ 0, %cleanup ], [ %total_len.1, %do.end70.unmask_crit_edge ], [ %total_len.2354, %for.end88.unmask_crit_edge ], [ %total_len.3336, %for.inc115.unmask_crit_edge ]
  %send_length.3 = phi i32 [ %send_length.0.lcssa, %cleanup ], [ %send_length.2, %do.end70.unmask_crit_edge ], [ %send_length.2, %for.inc115.unmask_crit_edge ], [ %send_length.2, %for.end88.unmask_crit_edge ]
  %rc.4 = phi i32 [ %call34, %cleanup ], [ %rc.0, %do.end70.unmask_crit_edge ], [ %call90, %for.end88.unmask_crit_edge ], [ %rc.3, %for.inc115.unmask_crit_edge ]
  %call118 = call i32 @sigprocmask(i32 noundef 2, ptr noundef nonnull %oldmask, ptr noundef null) #12
  %98 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %stack.i.i, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile i32, ptr %101, align 4
  %104 = and i32 %103, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool.not.i318 = icmp eq i32 %104, 0
  br i1 %tobool.not.i318, label %if.end.i320, label %unmask.signal_pending.exit_crit_edge, !prof !200

unmask.signal_pending.exit_crit_edge:             ; preds = %unmask
  call void @__sanitizer_cov_trace_pc() #14
  br label %signal_pending.exit

if.end.i320:                                      ; preds = %unmask
  call void @__sanitizer_cov_trace_pc() #14
  %105 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %101, align 4
  %and1.i.i.i.i.i319 = and i32 %106, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i319)
  %phi.cmp = icmp eq i32 %and1.i.i.i.i.i319, 0
  br label %signal_pending.exit

signal_pending.exit:                              ; preds = %if.end.i320, %unmask.signal_pending.exit_crit_edge
  %retval.0.i321 = phi i1 [ %phi.cmp, %if.end.i320 ], [ false, %unmask.signal_pending.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %total_len.6, i32 %send_length.3)
  %cmp124.not = icmp eq i32 %total_len.6, %send_length.3
  %or.cond = select i1 %retval.0.i321, i1 true, i1 %cmp124.not
  br i1 %or.cond, label %signal_pending.exit.if.end156_crit_edge, label %do.body127

signal_pending.exit.if.end156_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end156

do.body127:                                       ; preds = %signal_pending.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %107 = load i32, ptr @cifsFYI, align 4
  %and128 = and i32 %107, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  br i1 %tobool129.not, label %do.body127.if.end156_crit_edge, label %do.body131

do.body127.if.end156_crit_edge:                   ; preds = %do.body127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end156

do.body131:                                       ; preds = %do.body127
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__smb_send_rqst.descriptor.56, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__smb_send_rqst, %land.lhs.true143)) #12
          to label %if.end156 [label %land.lhs.true143], !srcloc !197

land.lhs.true143:                                 ; preds = %do.body131
  %call144 = call i32 @___ratelimit(ptr noundef nonnull @__smb_send_rqst._rs.55, ptr noundef nonnull @.str.50) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %land.lhs.true143.if.end156_crit_edge, label %if.then146

land.lhs.true143.if.end156_crit_edge:             ; preds = %land.lhs.true143
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end156

if.then146:                                       ; preds = %land.lhs.true143
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__smb_send_rqst.descriptor.56, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.2) #12
  br label %if.end156

if.end156:                                        ; preds = %if.then146, %land.lhs.true143.if.end156_crit_edge, %do.body131, %do.body127.if.end156_crit_edge, %signal_pending.exit.if.end156_crit_edge
  %rc.5 = phi i32 [ %rc.4, %signal_pending.exit.if.end156_crit_edge ], [ -512, %do.body127.if.end156_crit_edge ], [ -512, %land.lhs.true143.if.end156_crit_edge ], [ -512, %if.then146 ], [ -512, %do.body131 ]
  %108 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %sk, align 16
  call void @tcp_sock_set_cork(ptr noundef %109, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %total_len.6)
  %cmp158.not = icmp eq i32 %total_len.6, 0
  %or.cond307 = select i1 %cmp158.not, i1 true, i1 %cmp124.not
  br i1 %or.cond307, label %if.end156.smbd_done_crit_edge, label %do.body163

if.end156.smbd_done_crit_edge:                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #14
  br label %smbd_done

do.body163:                                       ; preds = %if.end156
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %110 = load i32, ptr @cifsFYI, align 4
  %and164 = and i32 %110, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and164)
  %tobool165.not = icmp eq i32 %and164, 0
  br i1 %tobool165.not, label %do.body163.do.end191_crit_edge, label %do.body167

do.body163.do.end191_crit_edge:                   ; preds = %do.body163
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end191

do.body167:                                       ; preds = %do.body163
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__smb_send_rqst.descriptor.59, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__smb_send_rqst, %land.lhs.true179)) #12
          to label %do.end191 [label %land.lhs.true179], !srcloc !197

land.lhs.true179:                                 ; preds = %do.body167
  %call180 = call i32 @___ratelimit(ptr noundef nonnull @__smb_send_rqst._rs.58, ptr noundef nonnull @.str.50) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call180)
  %tobool181.not = icmp eq i32 %call180, 0
  br i1 %tobool181.not, label %land.lhs.true179.do.end191_crit_edge, label %if.then182

land.lhs.true179.do.end191_crit_edge:             ; preds = %land.lhs.true179
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end191

if.then182:                                       ; preds = %land.lhs.true179
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__smb_send_rqst.descriptor.59, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.2, i32 noundef %send_length.3, i32 noundef %total_len.6) #12
  br label %do.end191

do.end191:                                        ; preds = %if.then182, %land.lhs.true179.do.end191_crit_edge, %do.body167, %do.body163.do.end191_crit_edge
  call void @cifs_mark_tcp_ses_conns_for_reconnect(ptr noundef %server, i1 noundef zeroext false) #12
  %CurrentMid = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 43
  %111 = ptrtoint ptr %CurrentMid to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %CurrentMid, align 8
  %conn_id = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 2
  %113 = ptrtoint ptr %conn_id to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %conn_id, align 8
  %hostname = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 8
  %115 = ptrtoint ptr %hostname to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %hostname, align 8
  call fastcc void @trace_smb3_partial_send_reconnect(i64 noundef %112, i64 noundef %114, ptr noundef %116)
  br label %smbd_done

smbd_done:                                        ; preds = %do.end191, %if.end156.smbd_done_crit_edge, %if.then3, %if.then.smbd_done_crit_edge
  %rc.6 = phi i32 [ %call, %if.then3 ], [ -11, %if.then.smbd_done_crit_edge ], [ %rc.5, %do.end191 ], [ %rc.5, %if.end156.smbd_done_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %rc.6)
  %cmp193 = icmp sgt i32 %rc.6, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %rc.6)
  %cmp195.not = icmp eq i32 %rc.6, -4
  %or.cond308 = or i1 %cmp193, %cmp195.not
  br i1 %or.cond308, label %if.else219, label %do.body198

do.body198:                                       ; preds = %smbd_done
  %tobool199.not = icmp eq ptr %server, null
  br i1 %tobool199.not, label %do.body198.if.end205_crit_edge, label %land.lhs.true200

do.body198.if.end205_crit_edge:                   ; preds = %do.body198
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end205

land.lhs.true200:                                 ; preds = %do.body198
  call void @__sanitizer_cov_trace_pc() #14
  %hostname201 = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 8
  %117 = ptrtoint ptr %hostname201 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %hostname201, align 8
  %tobool202.not = icmp eq ptr %118, null
  %spec.select = select i1 %tobool202.not, ptr @.str.8, ptr %118
  br label %if.end205

if.end205:                                        ; preds = %land.lhs.true200, %do.body198.if.end205_crit_edge
  %sn.0 = phi ptr [ @.str.8, %do.body198.if.end205_crit_edge ], [ %spec.select, %land.lhs.true200 ]
  %call206 = call i32 @___ratelimit(ptr noundef nonnull @__smb_send_rqst._rs.61, ptr noundef nonnull @.str.50) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call206)
  %tobool207.not = icmp eq i32 %call206, 0
  br i1 %tobool207.not, label %if.end205.cleanup224_crit_edge, label %do.end211

if.end205.cleanup224_crit_edge:                   ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup224

do.end211:                                        ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #14
  %call213 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull %sn.0, i32 noundef %rc.6) #15
  br label %cleanup224

if.else219:                                       ; preds = %smbd_done
  call void @__sanitizer_cov_trace_pc() #14
  %119 = call i32 @llvm.smin.i32(i32 %rc.6, i32 0)
  br label %cleanup224

cleanup224:                                       ; preds = %if.else219, %do.end211, %if.end205.cleanup224_crit_edge, %if.then21, %land.lhs.true.cleanup224_crit_edge, %do.body14, %do.body11.cleanup224_crit_edge, %if.end4.cleanup224_crit_edge
  %retval.0 = phi i32 [ -11, %if.end4.cleanup224_crit_edge ], [ -512, %do.body11.cleanup224_crit_edge ], [ -512, %land.lhs.true.cleanup224_crit_edge ], [ -512, %if.then21 ], [ %119, %if.else219 ], [ %rc.6, %do.end211 ], [ %rc.6, %if.end205.cleanup224_crit_edge ], [ -512, %do.body14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rfc1002_marker) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %smb_msg) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sent) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %oldmask) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mask) #12
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @cifs_wait_mtu_credits(ptr nocapture noundef readonly %server, i32 noundef %size, ptr nocapture noundef writeonly %num, ptr nocapture noundef writeonly %credits) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %size, ptr %num, align 4
  %1 = ptrtoint ptr %credits to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %credits, align 4
  %reconnect_instance = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 47
  %2 = ptrtoint ptr %reconnect_instance to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reconnect_instance, align 4
  %instance = getelementptr inbounds %struct.cifs_credits, ptr %credits, i32 0, i32 1
  %4 = ptrtoint ptr %instance to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %instance, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cifs_setup_async_request(ptr noundef %server, ptr noundef %rqst) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rqst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rqst, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %iov_len = getelementptr inbounds %struct.kvec, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iov_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp.not = icmp eq i32 %5, 4
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %add.ptr = getelementptr i8, ptr %3, i32 4
  %arrayidx7 = getelementptr %struct.kvec, ptr %1, i32 1
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx7, align 4
  %cmp9.not = icmp eq ptr %add.ptr, %7
  br i1 %cmp9.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %sign = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 29
  %8 = ptrtoint ptr %sign to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sign, align 2, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.end.if.end12_crit_edge, label %if.then10

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %Flags2 = getelementptr inbounds %struct.smb_hdr, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %Flags2 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %Flags2, align 1
  %12 = or i16 %11, 1024
  store i16 %12, ptr %Flags2, align 1
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end.if.end12_crit_edge
  %call13 = tail call ptr @AllocMidQEntry(ptr noundef %3, ptr noundef %server)
  %cmp14 = icmp eq ptr %call13, null
  br i1 %cmp14, label %if.end12.cleanup_crit_edge, label %if.end18

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end18:                                         ; preds = %if.end12
  %sequence_number = getelementptr inbounds %struct.mid_q_entry, ptr %call13, i32 0, i32 7
  %call19 = tail call i32 @cifs_sign_rqst(ptr noundef %rqst, ptr noundef %server, ptr noundef %sequence_number) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end18.cleanup_crit_edge, label %if.then21

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then21:                                        ; preds = %if.end18
  tail call void @_raw_spin_lock(ptr noundef nonnull @GlobalMid_Lock) #12
  %refcount.i.i = getelementptr inbounds %struct.mid_q_entry, ptr %call13, i32 0, i32 1
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !202
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #12
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #12, !srcloc !203
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.DeleteMidQEntry.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !200

if.end5.i.i.i.i.i.i.DeleteMidQEntry.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %DeleteMidQEntry.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #12
  br label %DeleteMidQEntry.exit

if.then.i.i.i:                                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !204
  tail call fastcc void @_cifs_mid_q_entry_release(ptr noundef %refcount.i.i) #12
  br label %DeleteMidQEntry.exit

DeleteMidQEntry.exit:                             ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.DeleteMidQEntry.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @GlobalMid_Lock) #12
  %14 = inttoptr i32 %call19 to ptr
  br label %cleanup

cleanup:                                          ; preds = %DeleteMidQEntry.exit, %if.end18.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %14, %DeleteMidQEntry.exit ], [ %call13, %if.end18.cleanup_crit_edge ], [ inttoptr (i32 -5 to ptr), %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -5 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end12.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_sign_rqst(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cifs_call_async(ptr noundef %server, ptr noundef %rqst, ptr noundef %receive, ptr noundef %callback, ptr noundef %handle, ptr noundef %cbdata, i32 noundef %flags, ptr nocapture noundef readonly %exist_credits) local_unnamed_addr #0 align 64 {
entry:
  %credits = alloca %struct.cifs_credits, align 8
  %instance = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %credits) #12
  %0 = ptrtoint ptr %credits to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %credits, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %instance) #12
  %1 = ptrtoint ptr %instance to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %instance, align 4, !annotation !206
  %and = and i32 %flags, 10112
  %and1 = and i32 %flags, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %cmp = icmp eq i32 %and1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call.i = call fastcc i32 @wait_for_free_credits(ptr noundef %server, i32 noundef 1, i32 noundef -1, i32 noundef %flags, ptr noundef nonnull %instance) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %credits to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %credits, align 8
  %3 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %instance, align 4
  %instance3 = getelementptr inbounds %struct.cifs_credits, ptr %credits, i32 0, i32 1
  %5 = ptrtoint ptr %instance3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %instance3, align 4
  br label %if.end5

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %instance4 = getelementptr inbounds %struct.cifs_credits, ptr %exist_credits, i32 0, i32 1
  %6 = ptrtoint ptr %instance4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %instance4, align 4
  %8 = ptrtoint ptr %instance to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %instance, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.end
  %srv_mutex = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 25
  tail call void @mutex_lock_nested(ptr noundef %srv_mutex, i32 noundef 0) #12
  %9 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %instance, align 4
  %reconnect_instance = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 47
  %11 = ptrtoint ptr %reconnect_instance to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reconnect_instance, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp6.not = icmp eq i32 %10, %12
  br i1 %cmp6.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.end5
  tail call void @mutex_unlock(ptr noundef %srv_mutex) #12
  %13 = ptrtoint ptr %credits to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %credits, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %if.then7.cleanup_crit_edge, label %if.then.i

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  %ops.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 5
  %15 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i, align 4
  %add_credits.i = getelementptr inbounds %struct.smb_version_operations, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %add_credits.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add_credits.i, align 4
  call void %18(ptr noundef %server, ptr noundef nonnull %credits, i32 noundef %and) #12
  %request_q.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 14
  call void @__wake_up(ptr noundef %request_q.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %ops = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 5
  %19 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops, align 4
  %setup_async_request = getelementptr inbounds %struct.smb_version_operations, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %setup_async_request to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %setup_async_request, align 4
  %call10 = tail call ptr %22(ptr noundef %server, ptr noundef %rqst) #12
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end9
  tail call void @mutex_unlock(ptr noundef %srv_mutex) #12
  %23 = ptrtoint ptr %credits to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %credits, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i69 = icmp eq i32 %24, 0
  br i1 %tobool.not.i69, label %if.then12.add_credits_and_wake_if.exit74_crit_edge, label %if.then.i73

if.then12.add_credits_and_wake_if.exit74_crit_edge: ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %add_credits_and_wake_if.exit74

if.then.i73:                                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops, align 4
  %add_credits.i71 = getelementptr inbounds %struct.smb_version_operations, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %add_credits.i71 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add_credits.i71, align 4
  call void %28(ptr noundef %server, ptr noundef nonnull %credits, i32 noundef %and) #12
  %request_q.i72 = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 14
  call void @__wake_up(ptr noundef %request_q.i72, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %add_credits_and_wake_if.exit74

add_credits_and_wake_if.exit74:                   ; preds = %if.then.i73, %if.then12.add_credits_and_wake_if.exit74_crit_edge
  %29 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  %receive16 = getelementptr inbounds %struct.mid_q_entry, ptr %call10, i32 0, i32 11
  %30 = ptrtoint ptr %receive16 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %receive, ptr %receive16, align 8
  %callback17 = getelementptr inbounds %struct.mid_q_entry, ptr %call10, i32 0, i32 12
  %31 = ptrtoint ptr %callback17 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %callback, ptr %callback17, align 4
  %callback_data = getelementptr inbounds %struct.mid_q_entry, ptr %call10, i32 0, i32 14
  %32 = ptrtoint ptr %callback_data to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %cbdata, ptr %callback_data, align 4
  %handle18 = getelementptr inbounds %struct.mid_q_entry, ptr %call10, i32 0, i32 13
  %33 = ptrtoint ptr %handle18 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %handle, ptr %handle18, align 8
  %mid_state = getelementptr inbounds %struct.mid_q_entry, ptr %call10, i32 0, i32 18
  %34 = ptrtoint ptr %mid_state to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2, ptr %mid_state, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @GlobalMid_Lock) #12
  %pending_mid_q = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 15
  %prev.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 15, i32 1
  %35 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %call10, ptr noundef %36, ptr noundef %pending_mid_q) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end15.list_add_tail.exit_crit_edge

if.end15.list_add_tail.exit_crit_edge:            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call10, ptr %prev.i, align 4
  %38 = ptrtoint ptr %call10 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %pending_mid_q, ptr %call10, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call10, i32 0, i32 1
  %39 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev3.i.i, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %call10, ptr %36, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end15.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @GlobalMid_Lock) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  %when_sent.i = getelementptr inbounds %struct.mid_q_entry, ptr %call10, i32 0, i32 9
  %42 = ptrtoint ptr %when_sent.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %when_sent.i, align 8
  %in_send.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 65
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %in_send.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %in_send.i, i32 1, i32 3, i32 1) #12
  %43 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %in_send.i, ptr %in_send.i, i32 1, ptr elementtype(i32) %in_send.i) #12, !srcloc !201
  %call19 = tail call fastcc i32 @smb_send_rqst(ptr noundef %server, i32 noundef 1, ptr noundef %rqst, i32 noundef %flags)
  %call.i.i.i76 = tail call zeroext i1 @__kasan_check_write(ptr noundef %in_send.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %in_send.i, i32 1, i32 3, i32 1) #12
  %44 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %in_send.i, ptr %in_send.i, i32 1, ptr elementtype(i32) %in_send.i) #12, !srcloc !205
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %list_add_tail.exit
  %45 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops, align 4
  %revert_current_mid.i = getelementptr inbounds %struct.smb_version_operations, ptr %46, i32 0, i32 10
  %47 = ptrtoint ptr %revert_current_mid.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %revert_current_mid.i, align 4
  %tobool.not.i78 = icmp eq ptr %48, null
  br i1 %tobool.not.i78, label %if.then21.if.end23.thread_crit_edge, label %if.then.i79

if.then21.if.end23.thread_crit_edge:              ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23.thread

if.then.i79:                                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  %credits22 = getelementptr inbounds %struct.mid_q_entry, ptr %call10, i32 0, i32 4
  %49 = ptrtoint ptr %credits22 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %credits22, align 8
  %conv = zext i16 %50 to i32
  tail call void %48(ptr noundef %server, i32 noundef %conv) #12
  br label %if.end23.thread

if.end23.thread:                                  ; preds = %if.then.i79, %if.then21.if.end23.thread_crit_edge
  %sequence_number = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 46
  %51 = ptrtoint ptr %sequence_number to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sequence_number, align 8
  %sub = add i32 %52, -2
  store i32 %sub, ptr %sequence_number, align 8
  tail call void @cifs_delete_mid(ptr noundef %call10)
  tail call void @mutex_unlock(ptr noundef %srv_mutex) #12
  br label %if.end28

if.end23:                                         ; preds = %list_add_tail.exit
  tail call void @mutex_unlock(ptr noundef %srv_mutex) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp25 = icmp eq i32 %call19, 0
  br i1 %cmp25, label %if.end23.cleanup_crit_edge, label %if.end23.if.end28_crit_edge

if.end23.if.end28_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end28:                                         ; preds = %if.end23.if.end28_crit_edge, %if.end23.thread
  %53 = ptrtoint ptr %credits to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %credits, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i80 = icmp eq i32 %54, 0
  br i1 %tobool.not.i80, label %if.end28.cleanup_crit_edge, label %if.then.i84

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i84:                                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  %55 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ops, align 4
  %add_credits.i82 = getelementptr inbounds %struct.smb_version_operations, ptr %56, i32 0, i32 5
  %57 = ptrtoint ptr %add_credits.i82 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %add_credits.i82, align 4
  call void %58(ptr noundef %server, ptr noundef nonnull %credits, i32 noundef %and) #12
  %request_q.i83 = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 14
  call void @__wake_up(ptr noundef %request_q.i83, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i84, %if.end28.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %add_credits_and_wake_if.exit74, %if.then.i, %if.then7.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %29, %add_credits_and_wake_if.exit74 ], [ %call.i, %if.then.cleanup_crit_edge ], [ 0, %if.end23.cleanup_crit_edge ], [ -11, %if.then7.cleanup_crit_edge ], [ -11, %if.then.i ], [ %call19, %if.end28.cleanup_crit_edge ], [ %call19, %if.then.i84 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %instance) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %credits) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smb_send_rqst(ptr noundef %server, i32 noundef %num_rqst, ptr noundef %rqst, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  %iov = alloca %struct.kvec, align 8
  %cur_rqst = alloca [5 x %struct.smb_rqst], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iov) #12
  %0 = getelementptr inbounds %struct.kvec, ptr %iov, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 140, ptr nonnull %cur_rqst) #12
  %and = and i32 %flags, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call fastcc i32 @__smb_send_rqst(ptr noundef %server, i32 noundef %num_rqst, ptr noundef %rqst)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %num_rqst)
  %cmp = icmp sgt i32 %num_rqst, 4
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %ops = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 5
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops, align 4
  %init_transform_rq = getelementptr inbounds %struct.smb_version_operations, ptr %2, i32 0, i32 101
  %3 = ptrtoint ptr %init_transform_rq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_transform_rq, align 4
  %tobool3.not = icmp eq ptr %4, null
  br i1 %tobool3.not, label %do.body5, label %if.end21

do.body5:                                         ; preds = %if.end2
  %tobool6.not = icmp eq ptr %server, null
  br i1 %tobool6.not, label %do.body5.if.end10_crit_edge, label %land.lhs.true

do.body5.if.end10_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

land.lhs.true:                                    ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #14
  %hostname = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 8
  %5 = ptrtoint ptr %hostname to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hostname, align 8
  %tobool7.not = icmp eq ptr %6, null
  %spec.select = select i1 %tobool7.not, ptr @.str.8, ptr %6
  br label %if.end10

if.end10:                                         ; preds = %land.lhs.true, %do.body5.if.end10_crit_edge
  %sn.0 = phi ptr [ @.str.8, %do.body5.if.end10_crit_edge ], [ %spec.select, %land.lhs.true ]
  %call11 = tail call i32 @___ratelimit(ptr noundef nonnull @smb_send_rqst._rs, ptr noundef nonnull @__func__.smb_send_rqst) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %do.end

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef nonnull %sn.0) #15
  br label %cleanup

if.end21:                                         ; preds = %if.end2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3136, i32 noundef 52) #16
  %tobool23.not = icmp eq ptr %call7.i, null
  br i1 %tobool23.not, label %if.end21.cleanup_crit_edge, label %if.end25

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  %8 = getelementptr inbounds i8, ptr %cur_rqst, i32 8
  %9 = call ptr @memset(ptr %8, i32 0, i32 132)
  %10 = call ptr @memset(ptr %call7.i, i32 0, i32 52)
  %11 = ptrtoint ptr %iov to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i, ptr %iov, align 8
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 52, ptr %0, align 4
  %13 = ptrtoint ptr %cur_rqst to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %iov, ptr %cur_rqst, align 4
  %rq_nvec = getelementptr inbounds %struct.smb_rqst, ptr %cur_rqst, i32 0, i32 1
  %14 = ptrtoint ptr %rq_nvec to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %rq_nvec, align 4
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops, align 4
  %init_transform_rq29 = getelementptr inbounds %struct.smb_version_operations, ptr %16, i32 0, i32 101
  %17 = ptrtoint ptr %init_transform_rq29 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %init_transform_rq29, align 4
  %add = add nsw i32 %num_rqst, 1
  %call31 = call i32 %18(ptr noundef %server, i32 noundef %add, ptr noundef nonnull %cur_rqst, ptr noundef %rqst) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end25.out_crit_edge

if.end25.out_crit_edge:                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end34:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  %call37 = call fastcc i32 @__smb_send_rqst(ptr noundef %server, i32 noundef %add, ptr noundef nonnull %cur_rqst)
  %arrayidx38 = getelementptr inbounds [5 x %struct.smb_rqst], ptr %cur_rqst, i32 0, i32 1
  call void @smb3_free_compound_rqst(i32 noundef %num_rqst, ptr noundef %arrayidx38) #12
  br label %out

out:                                              ; preds = %if.end34, %if.end25.out_crit_edge
  %rc.0 = phi i32 [ %call31, %if.end25.out_crit_edge ], [ %call37, %if.end34 ]
  call void @kfree(ptr noundef nonnull %call7.i) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end21.cleanup_crit_edge, %do.end, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %rc.0, %out ], [ %call, %if.then ], [ -12, %if.end.cleanup_crit_edge ], [ -5, %do.end ], [ -5, %if.end10.cleanup_crit_edge ], [ -12, %if.end21.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %cur_rqst) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @SendReceiveNoRsp(i32 noundef %xid, ptr noundef %ses, ptr noundef %in_buf, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %rqst.i = alloca %struct.smb_rqst, align 4
  %s_iov.i = alloca [8 x %struct.kvec], align 4
  %rsp_iov = alloca %struct.kvec, align 4
  %resp_buf_type = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rsp_iov) #12
  %0 = ptrtoint ptr %rsp_iov to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %rsp_iov, align 4, !annotation !206
  %1 = getelementptr inbounds %struct.kvec, ptr %rsp_iov, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !206
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp_buf_type) #12
  %3 = ptrtoint ptr %resp_buf_type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %resp_buf_type, align 4, !annotation !206
  %4 = ptrtoint ptr %in_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %in_buf, align 4
  %and.i = and i32 %5, 16777215
  %or = or i32 %flags, 64
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %rqst.i) #12
  %6 = getelementptr inbounds %struct.smb_rqst, ptr %rqst.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %s_iov.i) #12
  %7 = getelementptr inbounds i8, ptr %s_iov.i, i32 16
  %8 = call ptr @memset(ptr %7, i32 255, i32 48)
  %add.ptr.i = getelementptr inbounds %struct.kvec, ptr %s_iov.i, i32 1
  %iov.sroa.5.0.add.ptr.i.sroa_idx = getelementptr inbounds %struct.kvec, ptr %s_iov.i, i32 1, i32 1
  %9 = ptrtoint ptr %s_iov.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %in_buf, ptr %s_iov.i, align 4
  %iov_len.i = getelementptr inbounds %struct.kvec, ptr %s_iov.i, i32 0, i32 1
  %10 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %iov_len.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %in_buf, i32 4
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr9.i, ptr %add.ptr.i, align 4
  %12 = ptrtoint ptr %iov.sroa.5.0.add.ptr.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and.i, ptr %iov.sroa.5.0.add.ptr.i.sroa_idx, align 4
  %13 = getelementptr inbounds i8, ptr %rqst.i, i32 8
  %14 = call ptr @memset(ptr %13, i32 0, i32 20)
  %15 = ptrtoint ptr %rqst.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %s_iov.i, ptr %rqst.i, align 4
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %6, align 4
  %server.i = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 5
  %17 = ptrtoint ptr %server.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %server.i, align 8
  %call.i.i = call i32 @compound_send_recv(i32 undef, ptr noundef %ses, ptr noundef %18, i32 noundef %or, i32 noundef 1, ptr noundef nonnull %rqst.i, ptr noundef nonnull %resp_buf_type, ptr noundef nonnull %rsp_iov) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %s_iov.i) #12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %rqst.i) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @SendReceiveNoRsp.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@SendReceiveNoRsp, %land.lhs.true)) #12
          to label %do.end13 [label %land.lhs.true], !srcloc !197

land.lhs.true:                                    ; preds = %entry
  %call8 = call i32 @___ratelimit(ptr noundef nonnull @SendReceiveNoRsp._rs, ptr noundef nonnull @.str.6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true.do.end13_crit_edge, label %if.then

land.lhs.true.do.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end13

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @SendReceiveNoRsp.descriptor, ptr noundef nonnull @.str.7, i32 noundef %or, i32 noundef %call.i.i) #12
  br label %do.end13

do.end13:                                         ; preds = %if.then, %land.lhs.true.do.end13_crit_edge, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_buf_type) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rsp_iov) #12
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @SendReceive2(i32 noundef %xid, ptr noundef %ses, ptr nocapture noundef readonly %iov, i32 noundef %n_vec, ptr nocapture noundef writeonly %resp_buf_type, i32 noundef %flags, ptr nocapture noundef %resp_iov) local_unnamed_addr #0 align 64 {
entry:
  %rqst = alloca %struct.smb_rqst, align 4
  %s_iov = alloca [8 x %struct.kvec], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %rqst) #12
  %0 = getelementptr inbounds %struct.smb_rqst, ptr %rqst, i32 0, i32 1
  %1 = call ptr @memset(ptr %rqst, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %s_iov) #12
  %2 = call ptr @memset(ptr %s_iov, i32 255, i32 64)
  %add = add i32 %n_vec, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add)
  %cmp = icmp sgt i32 %add, 8
  br i1 %cmp, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.then:                                          ; preds = %entry
  %3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 8) #12
  %4 = extractvalue { i32, i1 } %3, 1
  br i1 %4, label %if.then.if.then2_crit_edge, label %if.end7.i, !prof !199

if.then.if.then2_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then2

if.end7.i:                                        ; preds = %if.then
  %5 = extractvalue { i32, i1 } %3, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3264) #17
  %tobool.not = icmp eq ptr %call8.i, null
  br i1 %tobool.not, label %if.end7.i.if.then2_crit_edge, label %if.end7.i.if.end3_crit_edge

if.end7.i.if.end3_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.end7.i.if.then2_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then2

if.then2:                                         ; preds = %if.end7.i.if.then2_crit_edge, %if.then.if.then2_crit_edge
  %6 = ptrtoint ptr %resp_buf_type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %resp_buf_type, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end7.i.if.end3_crit_edge, %entry.if.end3_crit_edge
  %new_iov.0 = phi ptr [ %call8.i, %if.end7.i.if.end3_crit_edge ], [ %s_iov, %entry.if.end3_crit_edge ]
  %add.ptr = getelementptr %struct.kvec, ptr %new_iov.0, i32 1
  %mul = shl i32 %n_vec, 3
  %7 = call ptr @memcpy(ptr %add.ptr, ptr %iov, i32 %mul)
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  %10 = ptrtoint ptr %new_iov.0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %new_iov.0, align 4
  %iov_len = getelementptr inbounds %struct.kvec, ptr %new_iov.0, i32 0, i32 1
  %11 = ptrtoint ptr %iov_len to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %iov_len, align 4
  %add.ptr9 = getelementptr i8, ptr %9, i32 4
  store ptr %add.ptr9, ptr %add.ptr, align 4
  %iov_len11 = getelementptr %struct.kvec, ptr %new_iov.0, i32 1, i32 1
  %12 = ptrtoint ptr %iov_len11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iov_len11, align 4
  %sub = add i32 %13, -4
  store i32 %sub, ptr %iov_len11, align 4
  %14 = getelementptr inbounds i8, ptr %rqst, i32 8
  %15 = call ptr @memset(ptr %14, i32 0, i32 20)
  %16 = ptrtoint ptr %rqst to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %new_iov.0, ptr %rqst, align 4
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add, ptr %0, align 4
  %server = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 5
  %18 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %server, align 8
  %call.i = call i32 @compound_send_recv(i32 undef, ptr noundef %ses, ptr noundef %19, i32 noundef %flags, i32 noundef 1, ptr noundef nonnull %rqst, ptr noundef %resp_buf_type, ptr noundef %resp_iov) #12
  br i1 %cmp, label %if.then16, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then16:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef %new_iov.0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.end3.cleanup_crit_edge, %if.then2
  %retval.0 = phi i32 [ -12, %if.then2 ], [ %call.i, %if.then16 ], [ %call.i, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %s_iov) #12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %rqst) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cifs_check_receive(ptr noundef %mid, ptr noundef %server, i1 noundef zeroext %log_error) local_unnamed_addr #0 align 64 {
entry:
  %iov = alloca [2 x %struct.kvec], align 4
  %rqst = alloca %struct.smb_rqst, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %resp_buf = getelementptr inbounds %struct.mid_q_entry, ptr %mid, i32 0, i32 16
  %0 = ptrtoint ptr %resp_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resp_buf, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and.i = and i32 %3, 16777215
  %4 = tail call i32 @llvm.umin.i32(i32 %and.i, i32 88)
  %5 = add nuw nsw i32 %4, 4
  tail call void @dump_smb(ptr noundef %1, i32 noundef %5) #12
  %sign = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 29
  %6 = ptrtoint ptr %sign to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sign, align 2, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end29_crit_edge, label %if.then

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iov) #12
  %8 = getelementptr inbounds %struct.kvec, ptr %iov, i32 0, i32 1
  %9 = getelementptr inbounds [2 x %struct.kvec], ptr %iov, i32 0, i32 1
  %10 = getelementptr inbounds [2 x %struct.kvec], ptr %iov, i32 0, i32 1, i32 1
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %rqst) #12
  %11 = getelementptr inbounds %struct.smb_rqst, ptr %rqst, i32 0, i32 1
  %12 = getelementptr inbounds %struct.smb_rqst, ptr %rqst, i32 0, i32 2
  %13 = ptrtoint ptr %rqst to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %iov, ptr %rqst, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %11, align 4
  %15 = call ptr @memset(ptr %12, i32 0, i32 20)
  %16 = ptrtoint ptr %resp_buf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %resp_buf, align 4
  %18 = ptrtoint ptr %iov to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %iov, align 4
  %19 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4, ptr %8, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 4
  %20 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr, ptr %9, align 4
  %21 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and.i, ptr %10, align 4
  %sequence_number = getelementptr inbounds %struct.mid_q_entry, ptr %mid, i32 0, i32 7
  %22 = ptrtoint ptr %sequence_number to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sequence_number, align 8
  %call9 = call i32 @cifs_verify_signature(ptr noundef nonnull %rqst, ptr noundef %server, i32 noundef %23) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then.if.end28_crit_edge, label %do.body12

if.then.if.end28_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

do.body12:                                        ; preds = %if.then
  %tobool13.not = icmp eq ptr %server, null
  br i1 %tobool13.not, label %do.body12.if.end_crit_edge, label %land.lhs.true

do.body12.if.end_crit_edge:                       ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #14
  %hostname = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 8
  %24 = ptrtoint ptr %hostname to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hostname, align 8
  %tobool14.not = icmp eq ptr %25, null
  %spec.select = select i1 %tobool14.not, ptr @.str.8, ptr %25
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %do.body12.if.end_crit_edge
  %sn.0 = phi ptr [ @.str.8, %do.body12.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  %call17 = call i32 @___ratelimit(ptr noundef nonnull @cifs_check_receive._rs, ptr noundef nonnull @__func__.cifs_check_receive) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end.if.end28_crit_edge, label %do.end

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull %sn.0, i32 noundef %call9) #15
  br label %if.end28

if.end28:                                         ; preds = %do.end, %if.end.if.end28_crit_edge, %if.then.if.end28_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %rqst) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iov) #12
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %entry.if.end29_crit_edge
  %call31 = call i32 @map_and_check_smb_error(ptr noundef %mid, i1 noundef zeroext %log_error) #12
  ret i32 %call31
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_smb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_verify_signature(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @map_and_check_smb_error(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cifs_setup_request(ptr nocapture noundef readonly %ses, ptr nocapture noundef readnone %ignored, ptr noundef %rqst) local_unnamed_addr #0 align 64 {
entry:
  %mid = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rqst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rqst, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mid) #12
  %4 = ptrtoint ptr %mid to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %mid, align 4, !annotation !206
  %iov_len = getelementptr inbounds %struct.kvec, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iov_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp.not = icmp eq i32 %6, 4
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %add.ptr = getelementptr i8, ptr %3, i32 4
  %arrayidx7 = getelementptr %struct.kvec, ptr %1, i32 1
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx7, align 4
  %cmp9.not = icmp eq ptr %add.ptr, %8
  br i1 %cmp9.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call10 = call fastcc i32 @allocate_mid(ptr noundef %ses, ptr noundef %3, ptr noundef nonnull %mid)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %9 = inttoptr i32 %call10 to ptr
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %server = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 5
  %10 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %server, align 8
  %12 = ptrtoint ptr %mid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mid, align 4
  %sequence_number = getelementptr inbounds %struct.mid_q_entry, ptr %13, i32 0, i32 7
  %call14 = tail call i32 @cifs_sign_rqst(ptr noundef %rqst, ptr noundef %11, ptr noundef %sequence_number) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end13.cleanup_crit_edge, label %if.then16

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @cifs_delete_mid(ptr noundef %13)
  %14 = inttoptr i32 %call14 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.end13.cleanup_crit_edge, %if.then11, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %9, %if.then11 ], [ %14, %if.then16 ], [ inttoptr (i32 -5 to ptr), %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -5 to ptr), %entry.cleanup_crit_edge ], [ %13, %if.end13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mid) #12
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @allocate_mid(ptr nocapture noundef readonly %ses, ptr nocapture noundef readonly %in_buf, ptr nocapture noundef %ppmidQ) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @cifs_tcp_ses_lock) #12
  %status = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 7
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %1, label %entry.if.end19_crit_edge [
    i32 0, label %if.then
    i32 2, label %if.then12
  ]

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then:                                          ; preds = %entry
  %Command = getelementptr inbounds %struct.smb_hdr, ptr %in_buf, i32 0, i32 2
  %3 = ptrtoint ptr %Command to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %Command, align 1
  %5 = and i8 %4, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 114, i8 %5)
  %switch = icmp eq i8 %5, 114
  br i1 %switch, label %if.then.if.end19_crit_edge, label %if.then.return.sink.split_crit_edge

if.then.return.sink.split_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %return.sink.split

if.then.if.end19_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then12:                                        ; preds = %entry
  %Command13 = getelementptr inbounds %struct.smb_hdr, ptr %in_buf, i32 0, i32 2
  %6 = ptrtoint ptr %Command13 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %Command13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 116, i8 %7)
  %cmp15.not = icmp eq i8 %7, 116
  br i1 %cmp15.not, label %if.then12.if.end19_crit_edge, label %if.then12.return.sink.split_crit_edge

if.then12.return.sink.split_crit_edge:            ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %return.sink.split

if.then12.if.end19_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.end19:                                         ; preds = %if.then12.if.end19_crit_edge, %if.then.if.end19_crit_edge, %entry.if.end19_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cifs_tcp_ses_lock) #12
  %server = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 5
  %8 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %server, align 8
  %call = tail call ptr @AllocMidQEntry(ptr noundef %in_buf, ptr noundef %9)
  %10 = ptrtoint ptr %ppmidQ to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call, ptr %ppmidQ, align 4
  %cmp20 = icmp eq ptr %call, null
  br i1 %cmp20, label %if.end19.return_crit_edge, label %if.end23

if.end19.return_crit_edge:                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end23:                                         ; preds = %if.end19
  tail call void @_raw_spin_lock(ptr noundef nonnull @GlobalMid_Lock) #12
  %11 = ptrtoint ptr %ppmidQ to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ppmidQ, align 4
  %13 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %server, align 8
  %pending_mid_q = getelementptr inbounds %struct.TCP_Server_Info, ptr %14, i32 0, i32 15
  %prev.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %14, i32 0, i32 15, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %12, ptr noundef %16, ptr noundef %pending_mid_q) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end23.return.sink.split_crit_edge

if.end23.return.sink.split_crit_edge:             ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %return.sink.split

if.end.i.i:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %12, ptr %prev.i, align 4
  %18 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %pending_mid_q, ptr %12, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %19 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %12, ptr %16, align 4
  br label %return.sink.split

return.sink.split:                                ; preds = %if.end.i.i, %if.end23.return.sink.split_crit_edge, %if.then12.return.sink.split_crit_edge, %if.then.return.sink.split_crit_edge
  %GlobalMid_Lock.sink = phi ptr [ @cifs_tcp_ses_lock, %if.then.return.sink.split_crit_edge ], [ @cifs_tcp_ses_lock, %if.then12.return.sink.split_crit_edge ], [ @GlobalMid_Lock, %if.end23.return.sink.split_crit_edge ], [ @GlobalMid_Lock, %if.end.i.i ]
  %retval.0.ph = phi i32 [ -11, %if.then.return.sink.split_crit_edge ], [ -11, %if.then12.return.sink.split_crit_edge ], [ 0, %if.end23.return.sink.split_crit_edge ], [ 0, %if.end.i.i ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull %GlobalMid_Lock.sink) #12
  br label %return

return:                                           ; preds = %return.sink.split, %if.end19.return_crit_edge
  %retval.0 = phi i32 [ -12, %if.end19.return_crit_edge ], [ %retval.0.ph, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cifs_pick_channel(ptr noundef %ses) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ses, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %chan_seq = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 39
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %chan_seq, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !208
  tail call void @llvm.prefetch.p0(ptr %chan_seq, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %chan_seq, ptr %chan_seq, i32 1, ptr elementtype(i32) %chan_seq) #12, !srcloc !209
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !210
  %chan_lock = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 35
  tail call void @_raw_spin_lock(ptr noundef %chan_lock) #12
  %chan_count = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 37
  %1 = ptrtoint ptr %chan_count to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %chan_count, align 8
  %rem = urem i32 %asmresult.i.i.i.i, %2
  tail call void @_raw_spin_unlock(ptr noundef %chan_lock) #12
  %arrayidx = getelementptr %struct.cifs_ses, ptr %ses, i32 0, i32 36, i32 %rem
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %4, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @compound_send_recv(i32 %xid, ptr noundef %ses, ptr noundef %server, i32 noundef %flags, i32 noundef %num_rqst, ptr noundef %rqst, ptr nocapture noundef writeonly %resp_buf_type, ptr nocapture noundef %resp_iov) local_unnamed_addr #0 align 64 {
entry:
  %midQ = alloca [5 x ptr], align 4
  %cancelled_mid = alloca [5 x i8], align 1
  %credits = alloca [5 x %struct.cifs_credits], align 4
  %instance = alloca i32, align 4
  %iov = alloca %struct.kvec, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %midQ) #12
  %0 = call ptr @memset(ptr %midQ, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %cancelled_mid) #12
  %1 = call ptr @memset(ptr %cancelled_mid, i32 0, i32 5)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %credits) #12
  %2 = call ptr @memset(ptr %credits, i32 0, i32 40)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %instance) #12
  %3 = ptrtoint ptr %instance to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %instance, align 4, !annotation !206
  %and = and i32 %flags, 10112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_rqst)
  %cmp489 = icmp sgt i32 %num_rqst, 0
  br i1 %cmp489, label %for.body.preheader, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = shl nuw i32 %num_rqst, 2
  %5 = call ptr @memset(ptr %resp_buf_type, i32 0, i32 %4)
  br label %for.end

for.end:                                          ; preds = %for.body.preheader, %entry.for.end_crit_edge
  %tobool.not = icmp eq ptr %ses, null
  br i1 %tobool.not, label %for.end.do.body5_crit_edge, label %lor.lhs.false

for.end.do.body5_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5

lor.lhs.false:                                    ; preds = %for.end
  %server1 = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 5
  %6 = ptrtoint ptr %server1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %server1, align 8
  %tobool2.not = icmp eq ptr %7, null
  %tobool4.not = icmp eq ptr %server, null
  %or.cond = or i1 %tobool4.not, %tobool2.not
  br i1 %or.cond, label %lor.lhs.false.do.body5_crit_edge, label %if.end14

lor.lhs.false.do.body5_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5

do.body5:                                         ; preds = %lor.lhs.false.do.body5_crit_edge, %for.end.do.body5_crit_edge
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @compound_send_recv._rs, ptr noundef nonnull @__func__.compound_send_recv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %do.body5.cleanup_crit_edge, label %do.end

do.body5.cleanup_crit_edge:                       ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #14
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #15
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false
  tail call void @_raw_spin_lock(ptr noundef nonnull @cifs_tcp_ses_lock) #12
  %tcpStatus = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 7
  %8 = ptrtoint ptr %tcpStatus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tcpStatus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp15 = icmp eq i32 %9, 2
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cifs_tcp_ses_lock) #12
  br i1 %cmp15, label %if.end14.cleanup_crit_edge, label %if.end17

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end17:                                         ; preds = %if.end14
  %call18 = call fastcc i32 @wait_for_compound_request(ptr noundef nonnull %server, i32 noundef %num_rqst, i32 noundef %flags, ptr noundef nonnull %instance)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %for.cond22.preheader, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond22.preheader:                             ; preds = %if.end17
  br i1 %cmp489, label %for.body24.lr.ph, label %for.cond22.preheader.for.end30_crit_edge

for.cond22.preheader.for.end30_crit_edge:         ; preds = %for.cond22.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end30

for.body24.lr.ph:                                 ; preds = %for.cond22.preheader
  %10 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %instance, align 4
  br label %for.body24

for.body24:                                       ; preds = %for.body24.for.body24_crit_edge, %for.body24.lr.ph
  %i.1492 = phi i32 [ 0, %for.body24.lr.ph ], [ %inc29, %for.body24.for.body24_crit_edge ]
  %arrayidx25 = getelementptr [5 x %struct.cifs_credits], ptr %credits, i32 0, i32 %i.1492
  %12 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %arrayidx25, align 4
  %instance27 = getelementptr [5 x %struct.cifs_credits], ptr %credits, i32 0, i32 %i.1492, i32 1
  %13 = ptrtoint ptr %instance27 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %11, ptr %instance27, align 4
  %inc29 = add nuw nsw i32 %i.1492, 1
  %exitcond.not = icmp eq i32 %inc29, %num_rqst
  br i1 %exitcond.not, label %for.body24.for.end30_crit_edge, label %for.body24.for.body24_crit_edge

for.body24.for.body24_crit_edge:                  ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body24

for.body24.for.end30_crit_edge:                   ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end30

for.end30:                                        ; preds = %for.body24.for.end30_crit_edge, %for.cond22.preheader.for.end30_crit_edge
  %srv_mutex = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 25
  tail call void @mutex_lock_nested(ptr noundef %srv_mutex, i32 noundef 0) #12
  %14 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %instance, align 4
  %reconnect_instance = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 47
  %16 = ptrtoint ptr %reconnect_instance to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reconnect_instance, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp31.not = icmp eq i32 %15, %17
  br i1 %cmp31.not, label %for.cond42.preheader, label %if.then32

for.cond42.preheader:                             ; preds = %for.end30
  br i1 %cmp489, label %for.body44.lr.ph, label %for.cond42.preheader.for.end80_crit_edge

for.cond42.preheader.for.end80_crit_edge:         ; preds = %for.cond42.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end80

for.body44.lr.ph:                                 ; preds = %for.cond42.preheader
  %ops = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 5
  %sub = add nsw i32 %num_rqst, -1
  br label %for.body44

if.then32:                                        ; preds = %for.end30
  tail call void @mutex_unlock(ptr noundef %srv_mutex) #12
  br i1 %cmp489, label %for.body36.lr.ph, label %if.then32.cleanup_crit_edge

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body36.lr.ph:                                 ; preds = %if.then32
  %ops.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 5
  br label %for.body36

for.body36:                                       ; preds = %for.body36.for.body36_crit_edge, %for.body36.lr.ph
  %j.0494 = phi i32 [ 0, %for.body36.lr.ph ], [ %inc39, %for.body36.for.body36_crit_edge ]
  %arrayidx37 = getelementptr [5 x %struct.cifs_credits], ptr %credits, i32 0, i32 %j.0494
  %18 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i, align 4
  %add_credits.i = getelementptr inbounds %struct.smb_version_operations, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %add_credits.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add_credits.i, align 4
  call void %21(ptr noundef %server, ptr noundef %arrayidx37, i32 noundef %and) #12
  %inc39 = add nuw nsw i32 %j.0494, 1
  %exitcond535.not = icmp eq i32 %inc39, %num_rqst
  br i1 %exitcond535.not, label %for.body36.cleanup_crit_edge, label %for.body36.for.body36_crit_edge

for.body36.for.body36_crit_edge:                  ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body36

for.body36.cleanup_crit_edge:                     ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body44:                                       ; preds = %if.end68.for.body44_crit_edge, %for.body44.lr.ph
  %i.2496 = phi i32 [ 0, %for.body44.lr.ph ], [ %inc79, %if.end68.for.body44_crit_edge ]
  %22 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops, align 4
  %setup_request = getelementptr inbounds %struct.smb_version_operations, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %setup_request to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %setup_request, align 4
  %arrayidx45 = getelementptr %struct.smb_rqst, ptr %rqst, i32 %i.2496
  %call46 = tail call ptr %25(ptr noundef nonnull %ses, ptr noundef %server, ptr noundef %arrayidx45) #12
  %arrayidx47 = getelementptr [5 x ptr], ptr %midQ, i32 0, i32 %i.2496
  %26 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call46, ptr %arrayidx47, align 4
  %cmp.i = icmp ugt ptr %call46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then50, label %if.end68

if.then50:                                        ; preds = %for.body44
  %27 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops, align 4
  %revert_current_mid.i = getelementptr inbounds %struct.smb_version_operations, ptr %28, i32 0, i32 10
  %29 = ptrtoint ptr %revert_current_mid.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %revert_current_mid.i, align 4
  %tobool.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i, label %if.then50.revert_current_mid.exit_crit_edge, label %if.then.i

if.then50.revert_current_mid.exit_crit_edge:      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #14
  br label %revert_current_mid.exit

if.then.i:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %30(ptr noundef %server, i32 noundef %i.2496) #12
  br label %revert_current_mid.exit

revert_current_mid.exit:                          ; preds = %if.then.i, %if.then50.revert_current_mid.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.2496)
  %cmp52518.not = icmp eq i32 %i.2496, 0
  br i1 %cmp52518.not, label %revert_current_mid.exit.for.body61.preheader_crit_edge, label %revert_current_mid.exit.for.body53_crit_edge

revert_current_mid.exit.for.body53_crit_edge:     ; preds = %revert_current_mid.exit
  br label %for.body53

revert_current_mid.exit.for.body61.preheader_crit_edge: ; preds = %revert_current_mid.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body61.preheader

for.body53:                                       ; preds = %for.body53.for.body53_crit_edge, %revert_current_mid.exit.for.body53_crit_edge
  %j.1519 = phi i32 [ %inc56, %for.body53.for.body53_crit_edge ], [ 0, %revert_current_mid.exit.for.body53_crit_edge ]
  %arrayidx54 = getelementptr [5 x ptr], ptr %midQ, i32 0, i32 %j.1519
  %31 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx54, align 4
  tail call void @cifs_delete_mid(ptr noundef %32)
  %inc56 = add nuw nsw i32 %j.1519, 1
  %exitcond543.not = icmp eq i32 %inc56, %i.2496
  br i1 %exitcond543.not, label %for.body53.for.body61.preheader_crit_edge, label %for.body53.for.body53_crit_edge

for.body53.for.body53_crit_edge:                  ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body53

for.body53.for.body61.preheader_crit_edge:        ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body61.preheader

for.body61.preheader:                             ; preds = %for.body53.for.body61.preheader_crit_edge, %revert_current_mid.exit.for.body61.preheader_crit_edge
  tail call void @mutex_unlock(ptr noundef %srv_mutex) #12
  br label %for.body61

for.body61:                                       ; preds = %for.body61.for.body61_crit_edge, %for.body61.preheader
  %j.2521 = phi i32 [ %inc64, %for.body61.for.body61_crit_edge ], [ 0, %for.body61.preheader ]
  %arrayidx62 = getelementptr [5 x %struct.cifs_credits], ptr %credits, i32 0, i32 %j.2521
  %33 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops, align 4
  %add_credits.i465 = getelementptr inbounds %struct.smb_version_operations, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %add_credits.i465 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %add_credits.i465, align 4
  call void %36(ptr noundef %server, ptr noundef %arrayidx62, i32 noundef %and) #12
  %inc64 = add nuw nsw i32 %j.2521, 1
  %exitcond544.not = icmp eq i32 %inc64, %num_rqst
  br i1 %exitcond544.not, label %for.end65, label %for.body61.for.body61_crit_edge

for.body61.for.body61_crit_edge:                  ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body61

for.end65:                                        ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %call46 to i32
  br label %cleanup

if.end68:                                         ; preds = %for.body44
  %mid_state = getelementptr inbounds %struct.mid_q_entry, ptr %call46, i32 0, i32 18
  %38 = ptrtoint ptr %mid_state to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 2, ptr %mid_state, align 4
  %optype71 = getelementptr inbounds %struct.mid_q_entry, ptr %call46, i32 0, i32 21
  %39 = ptrtoint ptr %optype71 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %and, ptr %optype71, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.2496, i32 %sub)
  %cmp72 = icmp slt i32 %i.2496, %sub
  %spec.select567 = select i1 %cmp72, ptr @cifs_compound_callback, ptr @cifs_compound_last_callback
  %40 = getelementptr inbounds %struct.mid_q_entry, ptr %call46, i32 0, i32 12
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %spec.select567, ptr %40, align 4
  %inc79 = add nuw nsw i32 %i.2496, 1
  %exitcond536.not = icmp eq i32 %inc79, %num_rqst
  br i1 %exitcond536.not, label %if.end68.for.end80_crit_edge, label %if.end68.for.body44_crit_edge

if.end68.for.body44_crit_edge:                    ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body44

if.end68.for.end80_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end80

for.end80:                                        ; preds = %if.end68.for.end80_crit_edge, %for.cond42.preheader.for.end80_crit_edge
  %in_send.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 65
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %in_send.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %in_send.i, i32 1, i32 3, i32 1) #12
  %42 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %in_send.i, ptr %in_send.i, i32 1, ptr elementtype(i32) %in_send.i) #12, !srcloc !201
  %call81 = tail call fastcc i32 @smb_send_rqst(ptr noundef %server, i32 noundef %num_rqst, ptr noundef %rqst, i32 noundef %flags)
  %call.i.i.i467 = tail call zeroext i1 @__kasan_check_write(ptr noundef %in_send.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %in_send.i, i32 1, i32 3, i32 1) #12
  %43 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %in_send.i, ptr %in_send.i, i32 1, ptr elementtype(i32) %in_send.i) #12, !srcloc !205
  br i1 %cmp489, label %for.end80.for.body84_crit_edge, label %for.end80.for.end88_crit_edge

for.end80.for.end88_crit_edge:                    ; preds = %for.end80
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end88

for.end80.for.body84_crit_edge:                   ; preds = %for.end80
  br label %for.body84

for.body84:                                       ; preds = %for.body84.for.body84_crit_edge, %for.end80.for.body84_crit_edge
  %i.3498 = phi i32 [ %inc87, %for.body84.for.body84_crit_edge ], [ 0, %for.end80.for.body84_crit_edge ]
  %arrayidx85 = getelementptr [5 x ptr], ptr %midQ, i32 0, i32 %i.3498
  %44 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx85, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %46 = load volatile i32, ptr @jiffies, align 128
  %when_sent.i = getelementptr inbounds %struct.mid_q_entry, ptr %45, i32 0, i32 9
  %47 = ptrtoint ptr %when_sent.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %when_sent.i, align 8
  %inc87 = add nuw nsw i32 %i.3498, 1
  %exitcond537.not = icmp eq i32 %inc87, %num_rqst
  br i1 %exitcond537.not, label %for.body84.for.end88_crit_edge, label %for.body84.for.body84_crit_edge

for.body84.for.body84_crit_edge:                  ; preds = %for.body84
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body84

for.body84.for.end88_crit_edge:                   ; preds = %for.body84
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end88

for.end88:                                        ; preds = %for.body84.for.end88_crit_edge, %for.end80.for.end88_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %cmp89 = icmp slt i32 %call81, 0
  br i1 %cmp89, label %if.then90, label %lor.lhs.false95.critedge

if.then90:                                        ; preds = %for.end88
  %ops.i468 = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 5
  %48 = ptrtoint ptr %ops.i468 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ops.i468, align 4
  %revert_current_mid.i469 = getelementptr inbounds %struct.smb_version_operations, ptr %49, i32 0, i32 10
  %50 = ptrtoint ptr %revert_current_mid.i469 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %revert_current_mid.i469, align 4
  %tobool.not.i470 = icmp eq ptr %51, null
  br i1 %tobool.not.i470, label %if.then90.revert_current_mid.exit472_crit_edge, label %if.then.i471

if.then90.revert_current_mid.exit472_crit_edge:   ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #14
  br label %revert_current_mid.exit472

if.then.i471:                                     ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %51(ptr noundef %server, i32 noundef %num_rqst) #12
  br label %revert_current_mid.exit472

revert_current_mid.exit472:                       ; preds = %if.then.i471, %if.then90.revert_current_mid.exit472_crit_edge
  %sequence_number = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 46
  %52 = ptrtoint ptr %sequence_number to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sequence_number, align 8
  %sub91 = add i32 %53, -2
  store i32 %sub91, ptr %sequence_number, align 8
  tail call void @mutex_unlock(ptr noundef %srv_mutex) #12
  br label %if.then98

lor.lhs.false95.critedge:                         ; preds = %for.end88
  tail call void @mutex_unlock(ptr noundef %srv_mutex) #12
  %and96 = and i32 %flags, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %if.end106, label %lor.lhs.false95.critedge.if.then98_crit_edge

lor.lhs.false95.critedge.if.then98_crit_edge:     ; preds = %lor.lhs.false95.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then98

if.then98:                                        ; preds = %lor.lhs.false95.critedge.if.then98_crit_edge, %revert_current_mid.exit472
  br i1 %cmp489, label %for.body101.lr.ph, label %if.then98.cleanup_crit_edge

if.then98.cleanup_crit_edge:                      ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body101.lr.ph:                                ; preds = %if.then98
  %ops.i473 = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 5
  br label %for.body101

for.body101:                                      ; preds = %for.body101.for.body101_crit_edge, %for.body101.lr.ph
  %i.4515 = phi i32 [ 0, %for.body101.lr.ph ], [ %inc104, %for.body101.for.body101_crit_edge ]
  %arrayidx102 = getelementptr [5 x %struct.cifs_credits], ptr %credits, i32 0, i32 %i.4515
  %54 = ptrtoint ptr %ops.i473 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ops.i473, align 4
  %add_credits.i474 = getelementptr inbounds %struct.smb_version_operations, ptr %55, i32 0, i32 5
  %56 = ptrtoint ptr %add_credits.i474 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %add_credits.i474, align 4
  call void %57(ptr noundef %server, ptr noundef %arrayidx102, i32 noundef %and) #12
  %inc104 = add nuw nsw i32 %i.4515, 1
  %exitcond541.not = icmp eq i32 %inc104, %num_rqst
  br i1 %exitcond541.not, label %for.body101.out_crit_edge, label %for.body101.for.body101_crit_edge

for.body101.for.body101_crit_edge:                ; preds = %for.body101
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body101

for.body101.out_crit_edge:                        ; preds = %for.body101
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end106:                                        ; preds = %lor.lhs.false95.critedge
  tail call void @_raw_spin_lock(ptr noundef nonnull @cifs_tcp_ses_lock) #12
  %status = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 7
  %58 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp107 = icmp ne i32 %59, 0
  %60 = and i32 %flags, 8704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %61 = icmp eq i32 %60, 0
  %62 = and i1 %61, %cmp107
  br i1 %62, label %if.end106.if.end120_crit_edge, label %if.then114

if.end106.if.end120_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end120

if.then114:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cifs_tcp_ses_lock) #12
  tail call void @mutex_lock_nested(ptr noundef %srv_mutex, i32 noundef 0) #12
  %63 = ptrtoint ptr %rqst to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %rqst, align 4
  %rq_nvec = getelementptr inbounds %struct.smb_rqst, ptr %rqst, i32 0, i32 1
  %65 = ptrtoint ptr %rq_nvec to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %rq_nvec, align 4
  %call118 = tail call i32 @smb311_update_preauth_hash(ptr noundef nonnull %ses, ptr noundef %server, ptr noundef %64, i32 noundef %66) #12
  tail call void @mutex_unlock(ptr noundef %srv_mutex) #12
  tail call void @_raw_spin_lock(ptr noundef nonnull @cifs_tcp_ses_lock) #12
  br label %if.end120

if.end120:                                        ; preds = %if.then114, %if.end106.if.end120_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cifs_tcp_ses_lock) #12
  br i1 %cmp489, label %if.end120.for.body123_crit_edge, label %if.end120.for.end131_crit_edge

if.end120.for.end131_crit_edge:                   ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end131

if.end120.for.body123_crit_edge:                  ; preds = %if.end120
  br label %for.body123

for.body123:                                      ; preds = %for.inc129.for.body123_crit_edge, %if.end120.for.body123_crit_edge
  %i.5500 = phi i32 [ %inc130, %for.inc129.for.body123_crit_edge ], [ 0, %if.end120.for.body123_crit_edge ]
  %arrayidx124 = getelementptr [5 x ptr], ptr %midQ, i32 0, i32 %i.5500
  %67 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx124, align 4
  %call125 = tail call fastcc i32 @wait_for_response(ptr noundef %server, ptr noundef %68)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %cmp126.not = icmp eq i32 %call125, 0
  br i1 %cmp126.not, label %for.inc129, label %for.body123.for.end131_crit_edge

for.body123.for.end131_crit_edge:                 ; preds = %for.body123
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end131

for.inc129:                                       ; preds = %for.body123
  %inc130 = add nuw nsw i32 %i.5500, 1
  %exitcond538.not = icmp eq i32 %inc130, %num_rqst
  br i1 %exitcond538.not, label %for.inc129.if.end186_crit_edge, label %for.inc129.for.body123_crit_edge

for.inc129.for.body123_crit_edge:                 ; preds = %for.inc129
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body123

for.inc129.if.end186_crit_edge:                   ; preds = %for.inc129
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end186

for.end131:                                       ; preds = %for.body123.for.end131_crit_edge, %if.end120.for.end131_crit_edge
  %i.5.lcssa = phi i32 [ 0, %if.end120.for.end131_crit_edge ], [ %i.5500, %for.body123.for.end131_crit_edge ]
  %rc.1 = phi i32 [ %call81, %if.end120.for.end131_crit_edge ], [ %call125, %for.body123.for.end131_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.1)
  %cmp132.not = icmp ne i32 %rc.1, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %i.5.lcssa, i32 %num_rqst)
  %cmp135504 = icmp slt i32 %i.5.lcssa, %num_rqst
  %or.cond522 = select i1 %cmp132.not, i1 %cmp135504, i1 false
  br i1 %or.cond522, label %land.lhs.true.lr.ph, label %for.end131.if.end186_crit_edge

for.end131.if.end186_crit_edge:                   ; preds = %for.end131
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end186

land.lhs.true.lr.ph:                              ; preds = %for.end131
  %hostname = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 8
  %ops.i475 = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 5
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end182.land.lhs.true_crit_edge, %land.lhs.true.lr.ph
  %i.6505 = phi i32 [ %i.5.lcssa, %land.lhs.true.lr.ph ], [ %inc184, %if.end182.land.lhs.true_crit_edge ]
  %69 = ptrtoint ptr %hostname to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %hostname, align 8
  %tobool140.not = icmp eq ptr %70, null
  %spec.select = select i1 %tobool140.not, ptr @.str.8, ptr %70
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %71 = load i32, ptr @cifsFYI, align 4
  %and144 = and i32 %71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and144)
  %tobool145.not = icmp eq i32 %and144, 0
  br i1 %tobool145.not, label %land.lhs.true.if.end163_crit_edge, label %do.body147

land.lhs.true.if.end163_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end163

do.body147:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @compound_send_recv.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@compound_send_recv, %land.lhs.true153)) #12
          to label %if.end163 [label %land.lhs.true153], !srcloc !197

land.lhs.true153:                                 ; preds = %do.body147
  %call154 = tail call i32 @___ratelimit(ptr noundef nonnull @compound_send_recv._rs.11, ptr noundef nonnull @__func__.compound_send_recv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call154)
  %tobool155.not = icmp eq i32 %call154, 0
  br i1 %tobool155.not, label %land.lhs.true153.if.end163_crit_edge, label %if.then156

land.lhs.true153.if.end163_crit_edge:             ; preds = %land.lhs.true153
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end163

if.then156:                                       ; preds = %land.lhs.true153
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx157 = getelementptr [5 x ptr], ptr %midQ, i32 0, i32 %i.6505
  %72 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx157, align 4
  %mid = getelementptr inbounds %struct.mid_q_entry, ptr %73, i32 0, i32 3
  %74 = ptrtoint ptr %mid to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %mid, align 8
  %command = getelementptr inbounds %struct.mid_q_entry, ptr %73, i32 0, i32 20
  %76 = ptrtoint ptr %command to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %command, align 4
  %78 = tail call i16 @llvm.bswap.i16(i16 %77)
  %conv = zext i16 %78 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @compound_send_recv.descriptor, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.2, ptr noundef nonnull %spec.select, i64 noundef %75, i32 noundef %conv) #12
  br label %if.end163

if.end163:                                        ; preds = %if.then156, %land.lhs.true153.if.end163_crit_edge, %do.body147, %land.lhs.true.if.end163_crit_edge
  %arrayidx169 = getelementptr [5 x ptr], ptr %midQ, i32 0, i32 %i.6505
  %79 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx169, align 4
  %81 = ptrtoint ptr %ops.i475 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ops.i475, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %82, align 4
  %tobool.not.i476 = icmp eq ptr %84, null
  br i1 %tobool.not.i476, label %if.end163.send_cancel.exit_crit_edge, label %cond.true.i

if.end163.send_cancel.exit_crit_edge:             ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #14
  br label %send_cancel.exit

cond.true.i:                                      ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx168 = getelementptr %struct.smb_rqst, ptr %rqst, i32 %i.6505
  %call.i = tail call i32 %84(ptr noundef %server, ptr noundef %arrayidx168, ptr noundef %80) #12
  br label %send_cancel.exit

send_cancel.exit:                                 ; preds = %cond.true.i, %if.end163.send_cancel.exit_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @GlobalMid_Lock) #12
  %mid_flags = getelementptr inbounds %struct.mid_q_entry, ptr %80, i32 0, i32 19
  %85 = ptrtoint ptr %mid_flags to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %mid_flags, align 8
  %or = or i32 %86, 1
  store i32 %or, ptr %mid_flags, align 8
  %mid_state173 = getelementptr inbounds %struct.mid_q_entry, ptr %80, i32 0, i32 18
  %87 = ptrtoint ptr %mid_state173 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %mid_state173, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %88)
  %cmp174 = icmp eq i32 %88, 2
  br i1 %cmp174, label %if.then176, label %send_cancel.exit.if.end182_crit_edge

send_cancel.exit.if.end182_crit_edge:             ; preds = %send_cancel.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end182

if.then176:                                       ; preds = %send_cancel.exit
  call void @__sanitizer_cov_trace_pc() #14
  %callback178 = getelementptr inbounds %struct.mid_q_entry, ptr %80, i32 0, i32 12
  %89 = ptrtoint ptr %callback178 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @cifs_cancelled_callback, ptr %callback178, align 4
  %arrayidx179 = getelementptr [5 x i8], ptr %cancelled_mid, i32 0, i32 %i.6505
  %90 = ptrtoint ptr %arrayidx179 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 1, ptr %arrayidx179, align 1
  %arrayidx180 = getelementptr [5 x %struct.cifs_credits], ptr %credits, i32 0, i32 %i.6505
  %91 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %arrayidx180, align 4
  br label %if.end182

if.end182:                                        ; preds = %if.then176, %send_cancel.exit.if.end182_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @GlobalMid_Lock) #12
  %inc184 = add i32 %i.6505, 1
  %exitcond539.not = icmp eq i32 %inc184, %num_rqst
  br i1 %exitcond539.not, label %if.end182.if.end186_crit_edge, label %if.end182.land.lhs.true_crit_edge

if.end182.land.lhs.true_crit_edge:                ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

if.end182.if.end186_crit_edge:                    ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end186

if.end186:                                        ; preds = %if.end182.if.end186_crit_edge, %for.end131.if.end186_crit_edge, %for.inc129.if.end186_crit_edge
  %rc.1550 = phi i32 [ %rc.1, %for.end131.if.end186_crit_edge ], [ %rc.1, %if.end182.if.end186_crit_edge ], [ 0, %for.inc129.if.end186_crit_edge ]
  br i1 %cmp489, label %for.body190.lr.ph, label %if.end186.for.end266_crit_edge

if.end186.for.end266_crit_edge:                   ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end266

for.body190.lr.ph:                                ; preds = %if.end186
  %vals = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 6
  %ops252 = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 5
  %and254 = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and254)
  %tobool255 = icmp ne i32 %and254, 0
  %and257 = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and257)
  %cmp258 = icmp eq i32 %and257, 0
  br label %for.body190

for.body190:                                      ; preds = %for.inc264.for.body190_crit_edge, %for.body190.lr.ph
  %i.7511 = phi i32 [ 0, %for.body190.lr.ph ], [ %inc265, %for.inc264.for.body190_crit_edge ]
  %rc.2510 = phi i32 [ %rc.1550, %for.body190.lr.ph ], [ %call256, %for.inc264.for.body190_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.2510)
  %cmp191 = icmp slt i32 %rc.2510, 0
  br i1 %cmp191, label %for.body190.out_crit_edge, label %if.end194

for.body190.out_crit_edge:                        ; preds = %for.body190
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end194:                                        ; preds = %for.body190
  %arrayidx195 = getelementptr [5 x ptr], ptr %midQ, i32 0, i32 %i.7511
  %92 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx195, align 4
  %call196 = tail call fastcc i32 @cifs_sync_mid_result(ptr noundef %93, ptr noundef %server)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call196)
  %cmp197.not = icmp eq i32 %call196, 0
  br i1 %cmp197.not, label %if.end201, label %if.then199

if.then199:                                       ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx200 = getelementptr [5 x i8], ptr %cancelled_mid, i32 0, i32 %i.7511
  %94 = ptrtoint ptr %arrayidx200 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 1, ptr %arrayidx200, align 1
  br label %out

if.end201:                                        ; preds = %if.end194
  %resp_buf = getelementptr inbounds %struct.mid_q_entry, ptr %93, i32 0, i32 16
  %95 = ptrtoint ptr %resp_buf to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %resp_buf, align 4
  %tobool203.not = icmp eq ptr %96, null
  br i1 %tobool203.not, label %if.end201.if.then209_crit_edge, label %lor.lhs.false204

if.end201.if.then209_crit_edge:                   ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then209

lor.lhs.false204:                                 ; preds = %if.end201
  %mid_state206 = getelementptr inbounds %struct.mid_q_entry, ptr %93, i32 0, i32 18
  %97 = ptrtoint ptr %mid_state206 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %mid_state206, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %98)
  %cmp207.not = icmp eq i32 %98, 4
  br i1 %cmp207.not, label %if.end240, label %lor.lhs.false204.if.then209_crit_edge

lor.lhs.false204.if.then209_crit_edge:            ; preds = %lor.lhs.false204
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then209

if.then209:                                       ; preds = %lor.lhs.false204.if.then209_crit_edge, %if.end201.if.then209_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %99 = load i32, ptr @cifsFYI, align 4
  %and212 = and i32 %99, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and212)
  %tobool213.not = icmp eq i32 %and212, 0
  br i1 %tobool213.not, label %if.then209.out_crit_edge, label %do.body215

if.then209.out_crit_edge:                         ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.body215:                                       ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @compound_send_recv.descriptor.14, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@compound_send_recv, %land.lhs.true227)) #12
          to label %out [label %land.lhs.true227], !srcloc !197

land.lhs.true227:                                 ; preds = %do.body215
  %call228 = tail call i32 @___ratelimit(ptr noundef nonnull @compound_send_recv._rs.13, ptr noundef nonnull @__func__.compound_send_recv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call228)
  %tobool229.not = icmp eq i32 %call228, 0
  br i1 %tobool229.not, label %land.lhs.true227.out_crit_edge, label %if.then230

land.lhs.true227.out_crit_edge:                   ; preds = %land.lhs.true227
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then230:                                       ; preds = %land.lhs.true227
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @compound_send_recv.descriptor.14, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.2) #12
  br label %out

if.end240:                                        ; preds = %lor.lhs.false204
  %arrayidx243 = getelementptr %struct.kvec, ptr %resp_iov, i32 %i.7511
  %100 = ptrtoint ptr %arrayidx243 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %96, ptr %arrayidx243, align 4
  %resp_buf_size = getelementptr inbounds %struct.mid_q_entry, ptr %93, i32 0, i32 17
  %101 = ptrtoint ptr %resp_buf_size to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %resp_buf_size, align 8
  %103 = ptrtoint ptr %vals to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %vals, align 8
  %header_preamble_size = getelementptr inbounds %struct.smb_version_values, ptr %104, i32 0, i32 7
  %105 = ptrtoint ptr %header_preamble_size to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %header_preamble_size, align 4
  %add = add i32 %106, %102
  %iov_len = getelementptr %struct.kvec, ptr %resp_iov, i32 %i.7511, i32 1
  %107 = ptrtoint ptr %iov_len to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %add, ptr %iov_len, align 4
  %large_buf = getelementptr inbounds %struct.mid_q_entry, ptr %93, i32 0, i32 22
  %108 = ptrtoint ptr %large_buf to i32
  call void @__asan_load1_noabort(i32 %108)
  %bf.load = load i8, ptr %large_buf, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  %spec.select568 = select i1 %bf.cast.not, i32 1, i32 2
  %109 = getelementptr i32, ptr %resp_buf_type, i32 %i.7511
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %spec.select568, ptr %109, align 4
  %111 = ptrtoint ptr %ops252 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ops252, align 4
  %check_receive = getelementptr inbounds %struct.smb_version_operations, ptr %112, i32 0, i32 4
  %113 = ptrtoint ptr %check_receive to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %check_receive, align 4
  %call256 = tail call i32 %114(ptr noundef %93, ptr noundef %server, i1 noundef zeroext %tobool255) #12
  br i1 %cmp258, label %if.then260, label %if.end240.for.inc264_crit_edge

if.end240.for.inc264_crit_edge:                   ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc264

if.then260:                                       ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #14
  %115 = ptrtoint ptr %resp_buf to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr null, ptr %resp_buf, align 4
  br label %for.inc264

for.inc264:                                       ; preds = %if.then260, %if.end240.for.inc264_crit_edge
  %inc265 = add nuw nsw i32 %i.7511, 1
  %exitcond540.not = icmp eq i32 %inc265, %num_rqst
  br i1 %exitcond540.not, label %for.inc264.for.end266_crit_edge, label %for.inc264.for.body190_crit_edge

for.inc264.for.body190_crit_edge:                 ; preds = %for.inc264
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body190

for.inc264.for.end266_crit_edge:                  ; preds = %for.inc264
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end266

for.end266:                                       ; preds = %for.inc264.for.end266_crit_edge, %if.end186.for.end266_crit_edge
  %rc.2.lcssa = phi i32 [ %rc.1550, %if.end186.for.end266_crit_edge ], [ %call256, %for.inc264.for.end266_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef nonnull @cifs_tcp_ses_lock) #12
  %116 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %cmp268 = icmp ne i32 %117, 0
  %118 = and i1 %61, %cmp268
  br i1 %118, label %for.end266.if.end286_crit_edge, label %if.then276

for.end266.if.end286_crit_edge:                   ; preds = %for.end266
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end286

if.then276:                                       ; preds = %for.end266
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iov) #12
  %119 = getelementptr inbounds %struct.kvec, ptr %iov, i32 0, i32 1
  %120 = ptrtoint ptr %resp_iov to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %resp_iov, align 4
  %122 = ptrtoint ptr %iov to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %121, ptr %iov, align 4
  %iov_len282 = getelementptr inbounds %struct.kvec, ptr %resp_iov, i32 0, i32 1
  %123 = ptrtoint ptr %iov_len282 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %iov_len282, align 4
  %125 = ptrtoint ptr %119 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %119, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cifs_tcp_ses_lock) #12
  tail call void @mutex_lock_nested(ptr noundef %srv_mutex, i32 noundef 0) #12
  %call284 = call i32 @smb311_update_preauth_hash(ptr noundef nonnull %ses, ptr noundef %server, ptr noundef nonnull %iov, i32 noundef 1) #12
  call void @mutex_unlock(ptr noundef %srv_mutex) #12
  call void @_raw_spin_lock(ptr noundef nonnull @cifs_tcp_ses_lock) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov) #12
  br label %if.end286

if.end286:                                        ; preds = %if.then276, %for.end266.if.end286_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @cifs_tcp_ses_lock) #12
  br label %out

out:                                              ; preds = %if.end286, %if.then230, %land.lhs.true227.out_crit_edge, %do.body215, %if.then209.out_crit_edge, %if.then199, %for.body190.out_crit_edge, %for.body101.out_crit_edge
  %rc.3 = phi i32 [ %call196, %if.then199 ], [ -5, %if.then230 ], [ -5, %land.lhs.true227.out_crit_edge ], [ -5, %if.then209.out_crit_edge ], [ %rc.2.lcssa, %if.end286 ], [ -5, %do.body215 ], [ %call81, %for.body101.out_crit_edge ], [ %rc.2510, %for.body190.out_crit_edge ]
  br i1 %cmp489, label %out.for.body290_crit_edge, label %out.cleanup_crit_edge

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

out.for.body290_crit_edge:                        ; preds = %out
  br label %for.body290

for.body290:                                      ; preds = %for.inc296.for.body290_crit_edge, %out.for.body290_crit_edge
  %i.8517 = phi i32 [ %inc297, %for.inc296.for.body290_crit_edge ], [ 0, %out.for.body290_crit_edge ]
  %arrayidx291 = getelementptr [5 x i8], ptr %cancelled_mid, i32 0, i32 %i.8517
  %126 = ptrtoint ptr %arrayidx291 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx291, align 1, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool292.not = icmp eq i8 %127, 0
  br i1 %tobool292.not, label %if.then293, label %for.body290.for.inc296_crit_edge

for.body290.for.inc296_crit_edge:                 ; preds = %for.body290
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc296

if.then293:                                       ; preds = %for.body290
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx294 = getelementptr [5 x ptr], ptr %midQ, i32 0, i32 %i.8517
  %128 = ptrtoint ptr %arrayidx294 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %arrayidx294, align 4
  call void @cifs_delete_mid(ptr noundef %129)
  br label %for.inc296

for.inc296:                                       ; preds = %if.then293, %for.body290.for.inc296_crit_edge
  %inc297 = add nuw nsw i32 %i.8517, 1
  %exitcond542.not = icmp eq i32 %inc297, %num_rqst
  br i1 %exitcond542.not, label %for.inc296.cleanup_crit_edge, label %for.inc296.for.body290_crit_edge

for.inc296.for.body290_crit_edge:                 ; preds = %for.inc296
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body290

for.inc296.cleanup_crit_edge:                     ; preds = %for.inc296
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc296.cleanup_crit_edge, %out.cleanup_crit_edge, %if.then98.cleanup_crit_edge, %for.end65, %for.body36.cleanup_crit_edge, %if.then32.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %do.end, %do.body5.cleanup_crit_edge
  %retval.0 = phi i32 [ %37, %for.end65 ], [ -5, %do.end ], [ -5, %do.body5.cleanup_crit_edge ], [ %call18, %if.end17.cleanup_crit_edge ], [ %rc.3, %out.cleanup_crit_edge ], [ -11, %if.then32.cleanup_crit_edge ], [ %call81, %if.then98.cleanup_crit_edge ], [ -2, %if.end14.cleanup_crit_edge ], [ %rc.3, %for.inc296.cleanup_crit_edge ], [ -11, %for.body36.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %instance) #12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %credits) #12
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %cancelled_mid) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %midQ) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wait_for_compound_request(ptr noundef %server, i32 noundef %num, i32 noundef %flags, ptr nocapture noundef writeonly %instance) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 5
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %get_credits_field = getelementptr inbounds %struct.smb_version_operations, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %get_credits_field to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_credits_field, align 4
  %and = and i32 %flags, 10112
  %call = tail call ptr %3(ptr noundef %server, i32 noundef %and) #12
  %req_lock = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 24
  tail call void @_raw_spin_lock(ptr noundef %req_lock) #12
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %num)
  %cmp = icmp slt i32 %5, %num
  br i1 %cmp, label %if.then, label %entry.if.end23_crit_edge

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then:                                          ; preds = %entry
  %in_flight1 = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 22
  %6 = ptrtoint ptr %in_flight1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %in_flight1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp3 = icmp eq i32 %7, 0
  br i1 %cmp3, label %if.then4, label %if.then.if.end23_crit_edge

if.then.if.end23_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then4:                                         ; preds = %if.then
  tail call void @_raw_spin_unlock(ptr noundef %req_lock) #12
  %CurrentMid = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 43
  %8 = ptrtoint ptr %CurrentMid to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %CurrentMid, align 8
  %conn_id = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 2
  %10 = ptrtoint ptr %conn_id to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %conn_id, align 8
  %hostname = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 8
  %12 = ptrtoint ptr %hostname to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hostname, align 8
  tail call fastcc void @trace_smb3_insufficient_credits(i64 noundef %9, i64 noundef %11, ptr noundef %13, i32 noundef %5, i32 noundef %num)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %14 = load i32, ptr @cifsFYI, align 4
  %and7 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool.not = icmp eq i32 %and7, 0
  br i1 %tobool.not, label %if.then4.cleanup_crit_edge, label %do.body9

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body9:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wait_for_compound_request.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wait_for_compound_request, %land.lhs.true)) #12
          to label %cleanup [label %land.lhs.true], !srcloc !197

land.lhs.true:                                    ; preds = %do.body9
  %call14 = tail call i32 @___ratelimit(ptr noundef nonnull @wait_for_compound_request._rs, ptr noundef nonnull @.str.78) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true.cleanup_crit_edge, label %if.then16

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wait_for_compound_request.descriptor, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.78, i32 noundef 0, i32 noundef %num, i32 noundef %5) #12
  br label %cleanup

if.end23:                                         ; preds = %if.then.if.end23_crit_edge, %entry.if.end23_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %req_lock) #12
  %call25 = tail call fastcc i32 @wait_for_free_credits(ptr noundef %server, i32 noundef %num, i32 noundef 60000, i32 noundef %flags, ptr noundef %instance)
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then16, %land.lhs.true.cleanup_crit_edge, %do.body9, %if.then4.cleanup_crit_edge
  %retval.0 = phi i32 [ %call25, %if.end23 ], [ -35, %if.then4.cleanup_crit_edge ], [ -35, %land.lhs.true.cleanup_crit_edge ], [ -35, %if.then16 ], [ -35, %do.body9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cifs_compound_callback(ptr noundef %mid) #0 align 64 {
entry:
  %credits = alloca %struct.cifs_credits, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %server1 = getelementptr inbounds %struct.mid_q_entry, ptr %mid, i32 0, i32 2
  %0 = ptrtoint ptr %server1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %server1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %credits) #12
  %2 = getelementptr inbounds %struct.cifs_credits, ptr %credits, i32 0, i32 1
  %ops = getelementptr inbounds %struct.TCP_Server_Info, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 4
  %get_credits = getelementptr inbounds %struct.smb_version_operations, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %get_credits to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get_credits, align 4
  %call = tail call i32 %6(ptr noundef %mid) #12
  %7 = ptrtoint ptr %credits to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call, ptr %credits, align 4
  %reconnect_instance = getelementptr inbounds %struct.TCP_Server_Info, ptr %1, i32 0, i32 47
  %8 = ptrtoint ptr %reconnect_instance to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reconnect_instance, align 4
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %2, align 4
  %optype = getelementptr inbounds %struct.mid_q_entry, ptr %mid, i32 0, i32 21
  %11 = ptrtoint ptr %optype to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %optype, align 8
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops, align 4
  %add_credits.i = getelementptr inbounds %struct.smb_version_operations, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %add_credits.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add_credits.i, align 4
  call void %16(ptr noundef %1, ptr noundef nonnull %credits, i32 noundef %12) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %credits) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cifs_compound_last_callback(ptr noundef %mid) #0 align 64 {
entry:
  %credits.i = alloca %struct.cifs_credits, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %server1.i = getelementptr inbounds %struct.mid_q_entry, ptr %mid, i32 0, i32 2
  %0 = ptrtoint ptr %server1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %server1.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %credits.i) #12
  %2 = getelementptr inbounds %struct.cifs_credits, ptr %credits.i, i32 0, i32 1
  %ops.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops.i, align 4
  %get_credits.i = getelementptr inbounds %struct.smb_version_operations, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %get_credits.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get_credits.i, align 4
  %call.i = tail call i32 %6(ptr noundef %mid) #12
  %7 = ptrtoint ptr %credits.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call.i, ptr %credits.i, align 4
  %reconnect_instance.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %1, i32 0, i32 47
  %8 = ptrtoint ptr %reconnect_instance.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reconnect_instance.i, align 4
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %2, align 4
  %optype.i = getelementptr inbounds %struct.mid_q_entry, ptr %mid, i32 0, i32 21
  %11 = ptrtoint ptr %optype.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %optype.i, align 8
  %13 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i, align 4
  %add_credits.i.i = getelementptr inbounds %struct.smb_version_operations, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %add_credits.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add_credits.i.i, align 4
  call void %16(ptr noundef %1, ptr noundef nonnull %credits.i, i32 noundef %12) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %credits.i) #12
  %callback_data.i = getelementptr inbounds %struct.mid_q_entry, ptr %mid, i32 0, i32 14
  %17 = ptrtoint ptr %callback_data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %callback_data.i, align 4
  %call.i2 = call i32 @wake_up_process(ptr noundef %18) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smb311_update_preauth_hash(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wait_for_response(ptr noundef %server, ptr nocapture noundef readonly %midQ) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !187) #12
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
  %or.i = or i32 %5, 1073741824
  store i32 %or.i, ptr %flags.i, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 764) #12
  %mid_state = getelementptr inbounds %struct.mid_q_entry, ptr %midQ, i32 0, i32 18
  %6 = ptrtoint ptr %mid_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mid_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.not = icmp eq i32 %7, 2
  br i1 %cmp.not, label %if.then, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #12
  %8 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #12
  %response_q = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 13
  %call33 = call i32 @prepare_to_wait_event(ptr noundef %response_q, ptr noundef nonnull %__wq_entry, i32 noundef 258) #12
  %9 = ptrtoint ptr %mid_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mid_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp6.not34 = icmp eq i32 %10, 2
  br i1 %cmp6.not34, label %if.then.if.end_crit_edge, label %if.then.for.end_crit_edge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  br label %if.end

if.end:                                           ; preds = %cleanup.if.end_crit_edge, %if.then.if.end_crit_edge
  %call35 = phi i32 [ %call, %cleanup.if.end_crit_edge ], [ %call33, %if.then.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool.not = icmp eq i32 %call35, 0
  br i1 %tobool.not, label %cleanup, label %if.end.__out_crit_edge

if.end.__out_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %__out

cleanup:                                          ; preds = %if.end
  call void @schedule() #12
  %call = call i32 @prepare_to_wait_event(ptr noundef %response_q, ptr noundef nonnull %__wq_entry, i32 noundef 258) #12
  %11 = ptrtoint ptr %mid_state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mid_state, align 4
  %cmp6.not = icmp eq i32 %12, 2
  br i1 %cmp6.not, label %cleanup.if.end_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

cleanup.if.end_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then.for.end_crit_edge
  call void @finish_wait(ptr noundef %response_q, ptr noundef nonnull %__wq_entry) #12
  br label %__out

__out:                                            ; preds = %for.end, %if.end.__out_crit_edge
  %__ret4.126 = phi i32 [ 0, %for.end ], [ %call35, %if.end.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  br label %if.end11

if.end11:                                         ; preds = %__out, %entry.if.end11_crit_edge
  %__ret.0 = phi i32 [ 0, %entry.if.end11_crit_edge ], [ %__ret4.126, %__out ]
  %13 = call i32 @llvm.read_register.i32(metadata !187) #12
  %and.i.i21 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i21 to ptr
  %task.i22 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task.i22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task.i22, align 8
  %flags.i23 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %flags.i23 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i23, align 4
  %and.i = and i32 %18, -1073741825
  store i32 %and.i, ptr %flags.i23, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !211
  call void @__might_sleep(ptr noundef nonnull @.str.80, i32 noundef 57) #12
  %19 = call i32 @llvm.read_register.i32(metadata !187) #12
  %and.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task.i.i, align 8
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %23 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i.i.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i.i.i, label %if.end11.freezer_count_unsafe.exit_crit_edge, label %freezing.exit.i.i, !prof !200

if.end11.freezer_count_unsafe.exit_crit_edge:     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %freezer_count_unsafe.exit

freezing.exit.i.i:                                ; preds = %if.end11
  %call4.i.i.i = call zeroext i1 @freezing_slow_path(ptr noundef %22) #12
  br i1 %call4.i.i.i, label %if.end.i.i, label %freezing.exit.i.i.freezer_count_unsafe.exit_crit_edge, !prof !199

freezing.exit.i.i.freezer_count_unsafe.exit_crit_edge: ; preds = %freezing.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %freezer_count_unsafe.exit

if.end.i.i:                                       ; preds = %freezing.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i.i = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #12
  br label %freezer_count_unsafe.exit

freezer_count_unsafe.exit:                        ; preds = %if.end.i.i, %freezing.exit.i.i.freezer_count_unsafe.exit_crit_edge, %if.end11.freezer_count_unsafe.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.0)
  %cmp14 = icmp slt i32 %__ret.0, 0
  %. = select i1 %cmp14, i32 -512, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cifs_cancelled_callback(ptr noundef %mid) #0 align 64 {
entry:
  %credits.i = alloca %struct.cifs_credits, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %server1.i = getelementptr inbounds %struct.mid_q_entry, ptr %mid, i32 0, i32 2
  %0 = ptrtoint ptr %server1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %server1.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %credits.i) #12
  %2 = getelementptr inbounds %struct.cifs_credits, ptr %credits.i, i32 0, i32 1
  %ops.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops.i, align 4
  %get_credits.i = getelementptr inbounds %struct.smb_version_operations, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %get_credits.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get_credits.i, align 4
  %call.i = tail call i32 %6(ptr noundef %mid) #12
  %7 = ptrtoint ptr %credits.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call.i, ptr %credits.i, align 4
  %reconnect_instance.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %1, i32 0, i32 47
  %8 = ptrtoint ptr %reconnect_instance.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reconnect_instance.i, align 4
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %2, align 4
  %optype.i = getelementptr inbounds %struct.mid_q_entry, ptr %mid, i32 0, i32 21
  %11 = ptrtoint ptr %optype.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %optype.i, align 8
  %13 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i, align 4
  %add_credits.i.i = getelementptr inbounds %struct.smb_version_operations, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %add_credits.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add_credits.i.i, align 4
  call void %16(ptr noundef %1, ptr noundef nonnull %credits.i, i32 noundef %12) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %credits.i) #12
  call void @_raw_spin_lock(ptr noundef nonnull @GlobalMid_Lock) #12
  %refcount.i.i = getelementptr inbounds %struct.mid_q_entry, ptr %mid, i32 0, i32 1
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !202
  call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #12
  %17 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #12, !srcloc !203
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.DeleteMidQEntry.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !200

if.end5.i.i.i.i.i.i.DeleteMidQEntry.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %DeleteMidQEntry.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #12
  br label %DeleteMidQEntry.exit

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !204
  call fastcc void @_cifs_mid_q_entry_release(ptr noundef %refcount.i.i) #12
  br label %DeleteMidQEntry.exit

DeleteMidQEntry.exit:                             ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.DeleteMidQEntry.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @GlobalMid_Lock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cifs_sync_mid_result(ptr noundef %mid, ptr noundef readonly %server) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %0 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body2

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end14

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_sync_mid_result.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_sync_mid_result, %land.lhs.true)) #12
          to label %do.end14 [label %land.lhs.true], !srcloc !197

land.lhs.true:                                    ; preds = %do.body2
  %call6 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_sync_mid_result._rs, ptr noundef nonnull @.str.81) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end14_crit_edge, label %if.then8

land.lhs.true.do.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end14

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %command = getelementptr inbounds %struct.mid_q_entry, ptr %mid, i32 0, i32 20
  %1 = ptrtoint ptr %command to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %command, align 4
  %3 = tail call i16 @llvm.bswap.i16(i16 %2)
  %conv = zext i16 %3 to i32
  %mid9 = getelementptr inbounds %struct.mid_q_entry, ptr %mid, i32 0, i32 3
  %4 = ptrtoint ptr %mid9 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %mid9, align 8
  %mid_state = getelementptr inbounds %struct.mid_q_entry, ptr %mid, i32 0, i32 18
  %6 = ptrtoint ptr %mid_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mid_state, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_sync_mid_result.descriptor, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.81, i32 noundef %conv, i64 noundef %5, i32 noundef %7) #12
  br label %do.end14

do.end14:                                         ; preds = %if.then8, %land.lhs.true.do.end14_crit_edge, %do.body2, %entry.do.end14_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @GlobalMid_Lock) #12
  %mid_state15 = getelementptr inbounds %struct.mid_q_entry, ptr %mid, i32 0, i32 18
  %8 = ptrtoint ptr %mid_state15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mid_state15, align 4
  %10 = add i32 %9, -4
  %11 = tail call i32 @llvm.fshl.i32(i32 %10, i32 %10, i32 30)
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %11, label %sw.default [
    i32 0, label %do.end14.cleanup_crit_edge
    i32 1, label %do.end14.sw.epilog_crit_edge
    i32 3, label %sw.bb17
    i32 7, label %sw.bb18
  ]

do.end14.sw.epilog_crit_edge:                     ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

do.end14.cleanup_crit_edge:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb17:                                          ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb18:                                          ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.default:                                       ; preds = %do.end14
  %mid_flags = getelementptr inbounds %struct.mid_q_entry, ptr %mid, i32 0, i32 19
  %13 = ptrtoint ptr %mid_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mid_flags, align 8
  %and19 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.then21, label %sw.default.do.body25_crit_edge

sw.default.do.body25_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body25

if.then21:                                        ; preds = %sw.default
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mid) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.then21.list_del_init.exit_crit_edge

if.then21.list_del_init.exit_crit_edge:           ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %mid, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %mid to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mid, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then21.list_del_init.exit_crit_edge
  %21 = ptrtoint ptr %mid to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %mid, ptr %mid, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %mid, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %mid, ptr %prev.i3.i, align 4
  %23 = ptrtoint ptr %mid_flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mid_flags, align 8
  %or = or i32 %24, 2
  store i32 %or, ptr %mid_flags, align 8
  br label %do.body25

do.body25:                                        ; preds = %list_del_init.exit, %sw.default.do.body25_crit_edge
  %tobool26.not = icmp eq ptr %server, null
  br i1 %tobool26.not, label %do.body25.if.end31_crit_edge, label %land.lhs.true27

do.body25.if.end31_crit_edge:                     ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

land.lhs.true27:                                  ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #14
  %hostname = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 8
  %25 = ptrtoint ptr %hostname to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hostname, align 8
  %tobool28.not = icmp eq ptr %26, null
  %spec.select = select i1 %tobool28.not, ptr @.str.8, ptr %26
  br label %if.end31

if.end31:                                         ; preds = %land.lhs.true27, %do.body25.if.end31_crit_edge
  %sn.0 = phi ptr [ @.str.8, %do.body25.if.end31_crit_edge ], [ %spec.select, %land.lhs.true27 ]
  %call32 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_sync_mid_result._rs.83, ptr noundef nonnull @.str.81) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end31.sw.epilog_crit_edge, label %do.end37

if.end31.sw.epilog_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

do.end37:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  %mid39 = getelementptr inbounds %struct.mid_q_entry, ptr %mid, i32 0, i32 3
  %27 = ptrtoint ptr %mid39 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %mid39, align 8
  %29 = ptrtoint ptr %mid_state15 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mid_state15, align 4
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef nonnull %sn.0, ptr noundef nonnull @.str.81, i64 noundef %28, i32 noundef %30) #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end37, %if.end31.sw.epilog_crit_edge, %sw.bb18, %sw.bb17, %do.end14.sw.epilog_crit_edge
  %rc.0 = phi i32 [ -112, %sw.bb18 ], [ -5, %sw.bb17 ], [ -11, %do.end14.sw.epilog_crit_edge ], [ -5, %do.end37 ], [ -5, %if.end31.sw.epilog_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @GlobalMid_Lock) #12
  tail call void @_raw_spin_lock(ptr noundef nonnull @GlobalMid_Lock) #12
  %refcount.i.i = getelementptr inbounds %struct.mid_q_entry, ptr %mid, i32 0, i32 1
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !202
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #12
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #12, !srcloc !203
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !200

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #12
  br label %cleanup

if.then.i.i.i:                                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !204
  tail call fastcc void @_cifs_mid_q_entry_release(ptr noundef %refcount.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %do.end14.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %do.end14.cleanup_crit_edge ], [ %rc.0, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ %rc.0, %if.then10.i.i.i.i.i.i ], [ %rc.0, %if.then.i.i.i ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @GlobalMid_Lock) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cifs_send_recv(i32 %xid, ptr noundef %ses, ptr noundef %server, ptr noundef %rqst, ptr nocapture noundef writeonly %resp_buf_type, i32 noundef %flags, ptr nocapture noundef %resp_iov) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @compound_send_recv(i32 undef, ptr noundef %ses, ptr noundef %server, i32 noundef %flags, i32 noundef 1, ptr noundef %rqst, ptr noundef %resp_buf_type, ptr noundef %resp_iov)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @SendReceive(i32 %xid, ptr noundef readonly %ses, ptr noundef %in_buf, ptr noundef writeonly %out_buf, ptr nocapture noundef writeonly %pbytes_returned, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %midQ = alloca ptr, align 4
  %iov = alloca %struct.kvec, align 4
  %rqst = alloca %struct.smb_rqst, align 4
  %credits = alloca %struct.cifs_credits, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %midQ) #12
  %0 = ptrtoint ptr %midQ to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %midQ, align 4, !annotation !206
  %1 = ptrtoint ptr %in_buf to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load i32, ptr %in_buf, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iov) #12
  %3 = getelementptr inbounds %struct.kvec, ptr %iov, i32 0, i32 1
  %4 = ptrtoint ptr %iov to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %in_buf, ptr %iov, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %2, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %rqst) #12
  %6 = getelementptr inbounds %struct.smb_rqst, ptr %rqst, i32 0, i32 1
  %7 = getelementptr inbounds %struct.smb_rqst, ptr %rqst, i32 0, i32 2
  %8 = ptrtoint ptr %rqst to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %iov, ptr %rqst, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %6, align 4
  %10 = call ptr @memset(ptr %7, i32 0, i32 20)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %credits) #12
  %11 = ptrtoint ptr %credits to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 4294967296, ptr %credits, align 8
  %cmp = icmp eq ptr %ses, null
  br i1 %cmp, label %do.body1, label %if.end9

do.body1:                                         ; preds = %entry
  %call = call i32 @___ratelimit(ptr noundef nonnull @SendReceive._rs, ptr noundef nonnull @__func__.SendReceive) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body1.cleanup_crit_edge, label %do.end

do.body1.cleanup_crit_edge:                       ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #15
  br label %cleanup

if.end9:                                          ; preds = %entry
  %server10 = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 5
  %12 = ptrtoint ptr %server10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %server10, align 8
  %cmp11 = icmp eq ptr %13, null
  br i1 %cmp11, label %do.body14, label %if.end28

do.body14:                                        ; preds = %if.end9
  %call15 = call i32 @___ratelimit(ptr noundef nonnull @SendReceive._rs.17, ptr noundef nonnull @__func__.SendReceive) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %do.body14.cleanup_crit_edge, label %do.end20

do.body14.cleanup_crit_edge:                      ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end20:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #14
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #15
  br label %cleanup

if.end28:                                         ; preds = %if.end9
  call void @_raw_spin_lock(ptr noundef nonnull @cifs_tcp_ses_lock) #12
  %tcpStatus = getelementptr inbounds %struct.TCP_Server_Info, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %tcpStatus to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tcpStatus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp29 = icmp eq i32 %15, 2
  call void @_raw_spin_unlock(ptr noundef nonnull @cifs_tcp_ses_lock) #12
  br i1 %cmp29, label %if.end28.cleanup_crit_edge, label %if.end31

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end31:                                         ; preds = %if.end28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @CIFSMaxBufSize to i32))
  %16 = load i32, ptr @CIFSMaxBufSize, align 4
  %sub = add i32 %16, 84
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %sub)
  %cmp32 = icmp ugt i32 %2, %sub
  br i1 %cmp32, label %if.end40, label %if.end54

if.end40:                                         ; preds = %if.end31
  %hostname = getelementptr inbounds %struct.TCP_Server_Info, ptr %13, i32 0, i32 8
  %17 = ptrtoint ptr %hostname to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hostname, align 8
  %call41 = call i32 @___ratelimit(ptr noundef nonnull @SendReceive._rs.21, ptr noundef nonnull @__func__.SendReceive) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end40.cleanup_crit_edge, label %do.end46

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end46:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  %tobool37.not = icmp eq ptr %18, null
  %spec.select = select i1 %tobool37.not, ptr @.str.8, ptr %18
  %call48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull %spec.select, i32 noundef %2) #15
  br label %cleanup

if.end54:                                         ; preds = %if.end31
  %instance = getelementptr inbounds %struct.cifs_credits, ptr %credits, i32 0, i32 1
  %call.i = call fastcc i32 @wait_for_free_credits(ptr noundef nonnull %13, i32 noundef 1, i32 noundef -1, i32 noundef %flags, ptr noundef %instance) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool56.not = icmp eq i32 %call.i, 0
  br i1 %tobool56.not, label %if.end58, label %if.end54.cleanup_crit_edge

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end58:                                         ; preds = %if.end54
  %srv_mutex = getelementptr inbounds %struct.TCP_Server_Info, ptr %13, i32 0, i32 25
  call void @mutex_lock_nested(ptr noundef %srv_mutex, i32 noundef 0) #12
  %call59 = call fastcc i32 @allocate_mid(ptr noundef nonnull %ses, ptr noundef %in_buf, ptr noundef nonnull %midQ)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end63, label %if.then61

if.then61:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  call void @mutex_unlock(ptr noundef %srv_mutex) #12
  %ops.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %13, i32 0, i32 5
  %19 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i, align 4
  %add_credits.i = getelementptr inbounds %struct.smb_version_operations, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %add_credits.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add_credits.i, align 4
  call void %22(ptr noundef nonnull %13, ptr noundef nonnull %credits, i32 noundef 0) #12
  br label %cleanup

if.end63:                                         ; preds = %if.end58
  %23 = ptrtoint ptr %midQ to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %midQ, align 4
  %sequence_number = getelementptr inbounds %struct.mid_q_entry, ptr %24, i32 0, i32 7
  %call64 = call i32 @cifs_sign_smb(ptr noundef %in_buf, ptr noundef nonnull %13, ptr noundef %sequence_number) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end68, label %if.then66

if.then66:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  call void @mutex_unlock(ptr noundef %srv_mutex) #12
  br label %out

if.end68:                                         ; preds = %if.end63
  %mid_state = getelementptr inbounds %struct.mid_q_entry, ptr %24, i32 0, i32 18
  %25 = ptrtoint ptr %mid_state to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %mid_state, align 4
  %in_send.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %13, i32 0, i32 65
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %in_send.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %in_send.i, i32 1, i32 3, i32 1) #12
  %26 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %in_send.i, ptr %in_send.i, i32 1, ptr elementtype(i32) %in_send.i) #12, !srcloc !201
  %call69 = call i32 @smb_send(ptr noundef nonnull %13, ptr noundef %in_buf, i32 noundef %2)
  %call.i.i.i186 = call zeroext i1 @__kasan_check_write(ptr noundef %in_send.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %in_send.i, i32 1, i32 3, i32 1) #12
  %27 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %in_send.i, ptr %in_send.i, i32 1, ptr elementtype(i32) %in_send.i) #12, !srcloc !205
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %when_sent.i = getelementptr inbounds %struct.mid_q_entry, ptr %24, i32 0, i32 9
  %29 = ptrtoint ptr %when_sent.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %when_sent.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %cmp70 = icmp slt i32 %call69, 0
  br i1 %cmp70, label %if.then71, label %if.end78.critedge

if.then71:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  %sequence_number72 = getelementptr inbounds %struct.TCP_Server_Info, ptr %13, i32 0, i32 46
  %30 = ptrtoint ptr %sequence_number72 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sequence_number72, align 8
  %sub73 = add i32 %31, -2
  store i32 %sub73, ptr %sequence_number72, align 8
  call void @mutex_unlock(ptr noundef %srv_mutex) #12
  br label %out

if.end78.critedge:                                ; preds = %if.end68
  call void @mutex_unlock(ptr noundef %srv_mutex) #12
  %call79 = call fastcc i32 @wait_for_response(ptr noundef nonnull %13, ptr noundef %24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %cmp80.not = icmp eq i32 %call79, 0
  br i1 %cmp80.not, label %if.end78.critedge.if.end87_crit_edge, label %if.then81

if.end78.critedge.if.end87_crit_edge:             ; preds = %if.end78.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end87

if.then81:                                        ; preds = %if.end78.critedge
  %ops.i187 = getelementptr inbounds %struct.TCP_Server_Info, ptr %13, i32 0, i32 5
  %32 = ptrtoint ptr %ops.i187 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops.i187, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %tobool.not.i = icmp eq ptr %35, null
  br i1 %tobool.not.i, label %if.then81.send_cancel.exit_crit_edge, label %cond.true.i

if.then81.send_cancel.exit_crit_edge:             ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #14
  br label %send_cancel.exit

cond.true.i:                                      ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #14
  %call.i188 = call i32 %35(ptr noundef nonnull %13, ptr noundef nonnull %rqst, ptr noundef %24) #12
  br label %send_cancel.exit

send_cancel.exit:                                 ; preds = %cond.true.i, %if.then81.send_cancel.exit_crit_edge
  call void @_raw_spin_lock(ptr noundef nonnull @GlobalMid_Lock) #12
  %36 = ptrtoint ptr %mid_state to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mid_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37)
  %cmp84 = icmp eq i32 %37, 2
  br i1 %cmp84, label %if.then85, label %if.end86

if.then85:                                        ; preds = %send_cancel.exit
  call void @__sanitizer_cov_trace_pc() #14
  %callback = getelementptr inbounds %struct.mid_q_entry, ptr %24, i32 0, i32 12
  %38 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @DeleteMidQEntry, ptr %callback, align 4
  call void @_raw_spin_unlock(ptr noundef nonnull @GlobalMid_Lock) #12
  %39 = ptrtoint ptr %ops.i187 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops.i187, align 4
  %add_credits.i190 = getelementptr inbounds %struct.smb_version_operations, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %add_credits.i190 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add_credits.i190, align 4
  call void %42(ptr noundef nonnull %13, ptr noundef nonnull %credits, i32 noundef 0) #12
  br label %cleanup

if.end86:                                         ; preds = %send_cancel.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_unlock(ptr noundef nonnull @GlobalMid_Lock) #12
  br label %if.end87

if.end87:                                         ; preds = %if.end86, %if.end78.critedge.if.end87_crit_edge
  %call88 = call fastcc i32 @cifs_sync_mid_result(ptr noundef %24, ptr noundef nonnull %13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %cmp89.not = icmp eq i32 %call88, 0
  br i1 %cmp89.not, label %if.end91, label %if.then90

if.then90:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #14
  %ops.i191 = getelementptr inbounds %struct.TCP_Server_Info, ptr %13, i32 0, i32 5
  %43 = ptrtoint ptr %ops.i191 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops.i191, align 4
  %add_credits.i192 = getelementptr inbounds %struct.smb_version_operations, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %add_credits.i192 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %add_credits.i192, align 4
  call void %46(ptr noundef nonnull %13, ptr noundef nonnull %credits, i32 noundef 0) #12
  br label %cleanup

if.end91:                                         ; preds = %if.end87
  %resp_buf = getelementptr inbounds %struct.mid_q_entry, ptr %24, i32 0, i32 16
  %47 = ptrtoint ptr %resp_buf to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %resp_buf, align 4
  %tobool92.not = icmp eq ptr %48, null
  %tobool93.not = icmp eq ptr %out_buf, null
  %or.cond = or i1 %tobool93.not, %tobool92.not
  br i1 %or.cond, label %if.end91.if.end107_crit_edge, label %lor.lhs.false94

if.end91.if.end107_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end107

lor.lhs.false94:                                  ; preds = %if.end91
  %49 = ptrtoint ptr %mid_state to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %mid_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %50)
  %cmp96.not = icmp eq i32 %50, 4
  br i1 %cmp96.not, label %if.end121, label %lor.lhs.false94.if.end107_crit_edge

lor.lhs.false94.if.end107_crit_edge:              ; preds = %lor.lhs.false94
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end107

if.end107:                                        ; preds = %lor.lhs.false94.if.end107_crit_edge, %if.end91.if.end107_crit_edge
  %hostname103 = getelementptr inbounds %struct.TCP_Server_Info, ptr %13, i32 0, i32 8
  %51 = ptrtoint ptr %hostname103 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hostname103, align 8
  %call108 = call i32 @___ratelimit(ptr noundef nonnull @SendReceive._rs.25, ptr noundef nonnull @__func__.SendReceive) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.end107.out_crit_edge, label %do.end113

if.end107.out_crit_edge:                          ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.end113:                                        ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #14
  %tobool104.not = icmp eq ptr %52, null
  %spec.select184 = select i1 %tobool104.not, ptr @.str.8, ptr %52
  %call115 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull %spec.select184) #15
  br label %out

if.end121:                                        ; preds = %lor.lhs.false94
  call void @__sanitizer_cov_trace_pc() #14
  %53 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %48, align 4
  %and.i = and i32 %54, 16777215
  %55 = ptrtoint ptr %pbytes_returned to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %and.i, ptr %pbytes_returned, align 4
  %56 = ptrtoint ptr %resp_buf to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %resp_buf, align 4
  %add125 = add nuw nsw i32 %and.i, 4
  %58 = call ptr @memcpy(ptr %out_buf, ptr %57, i32 %add125)
  %call126 = call i32 @cifs_check_receive(ptr noundef %24, ptr noundef nonnull %13, i1 noundef zeroext false)
  br label %out

out:                                              ; preds = %if.end121, %do.end113, %if.end107.out_crit_edge, %if.then71, %if.then66
  %rc.0 = phi i32 [ %call64, %if.then66 ], [ %call126, %if.end121 ], [ %call69, %if.then71 ], [ -5, %do.end113 ], [ -5, %if.end107.out_crit_edge ]
  call void @cifs_delete_mid(ptr noundef %24)
  %ops.i193 = getelementptr inbounds %struct.TCP_Server_Info, ptr %13, i32 0, i32 5
  %59 = ptrtoint ptr %ops.i193 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ops.i193, align 4
  %add_credits.i194 = getelementptr inbounds %struct.smb_version_operations, ptr %60, i32 0, i32 5
  %61 = ptrtoint ptr %add_credits.i194 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %add_credits.i194, align 4
  call void %62(ptr noundef nonnull %13, ptr noundef nonnull %credits, i32 noundef 0) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then90, %if.then85, %if.then61, %if.end54.cleanup_crit_edge, %do.end46, %if.end40.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %do.end20, %do.body14.cleanup_crit_edge, %do.end, %do.body1.cleanup_crit_edge
  %retval.0 = phi i32 [ %call59, %if.then61 ], [ %rc.0, %out ], [ %call79, %if.then85 ], [ %call88, %if.then90 ], [ -5, %do.end ], [ -5, %do.body1.cleanup_crit_edge ], [ -5, %do.end20 ], [ -5, %do.body14.cleanup_crit_edge ], [ -5, %do.end46 ], [ -5, %if.end40.cleanup_crit_edge ], [ %call.i, %if.end54.cleanup_crit_edge ], [ -2, %if.end28.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %credits) #12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %rqst) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %midQ) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_sign_smb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @SendReceiveBlockingLock(i32 noundef %xid, ptr noundef %tcon, ptr noundef %in_buf, ptr noundef %out_buf, ptr nocapture noundef writeonly %pbytes_returned) local_unnamed_addr #0 align 64 {
entry:
  %midQ = alloca ptr, align 4
  %iov = alloca %struct.kvec, align 4
  %rqst = alloca %struct.smb_rqst, align 4
  %instance = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %midQ) #12
  %0 = ptrtoint ptr %midQ to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %midQ, align 4, !annotation !206
  %1 = ptrtoint ptr %in_buf to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load i32, ptr %in_buf, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iov) #12
  %3 = getelementptr inbounds %struct.kvec, ptr %iov, i32 0, i32 1
  %4 = ptrtoint ptr %iov to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %in_buf, ptr %iov, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %2, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %rqst) #12
  %6 = getelementptr inbounds %struct.smb_rqst, ptr %rqst, i32 0, i32 1
  %7 = getelementptr inbounds %struct.smb_rqst, ptr %rqst, i32 0, i32 2
  %8 = ptrtoint ptr %rqst to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %iov, ptr %rqst, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %6, align 4
  %10 = call ptr @memset(ptr %7, i32 0, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %instance) #12
  %cmp = icmp eq ptr %tcon, null
  br i1 %cmp, label %entry.do.body3_crit_edge, label %lor.lhs.false

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body3

lor.lhs.false:                                    ; preds = %entry
  %ses1 = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 7
  %11 = ptrtoint ptr %ses1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ses1, align 8
  %cmp2 = icmp eq ptr %12, null
  br i1 %cmp2, label %lor.lhs.false.do.body3_crit_edge, label %if.end11

lor.lhs.false.do.body3_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body3

do.body3:                                         ; preds = %lor.lhs.false.do.body3_crit_edge, %entry.do.body3_crit_edge
  %call = call i32 @___ratelimit(ptr noundef nonnull @SendReceiveBlockingLock._rs, ptr noundef nonnull @__func__.SendReceiveBlockingLock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body3.cleanup202_crit_edge, label %do.end

do.body3.cleanup202_crit_edge:                    ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup202

do.end:                                           ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #14
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #15
  br label %cleanup202

if.end11:                                         ; preds = %lor.lhs.false
  %server13 = getelementptr inbounds %struct.cifs_ses, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %server13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %server13, align 8
  %cmp14 = icmp eq ptr %14, null
  br i1 %cmp14, label %do.body17, label %if.end31

do.body17:                                        ; preds = %if.end11
  %call18 = call i32 @___ratelimit(ptr noundef nonnull @SendReceiveBlockingLock._rs.29, ptr noundef nonnull @__func__.SendReceiveBlockingLock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %do.body17.cleanup202_crit_edge, label %do.end23

do.body17.cleanup202_crit_edge:                   ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup202

do.end23:                                         ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #14
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #15
  br label %cleanup202

if.end31:                                         ; preds = %if.end11
  call void @_raw_spin_lock(ptr noundef nonnull @cifs_tcp_ses_lock) #12
  %tcpStatus = getelementptr inbounds %struct.TCP_Server_Info, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %tcpStatus to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tcpStatus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp32 = icmp eq i32 %16, 2
  call void @_raw_spin_unlock(ptr noundef nonnull @cifs_tcp_ses_lock) #12
  br i1 %cmp32, label %if.end31.cleanup202_crit_edge, label %if.end34

if.end31.cleanup202_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup202

if.end34:                                         ; preds = %if.end31
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @CIFSMaxBufSize to i32))
  %17 = load i32, ptr @CIFSMaxBufSize, align 4
  %sub = add i32 %17, 84
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %sub)
  %cmp35 = icmp ugt i32 %2, %sub
  br i1 %cmp35, label %land.lhs.true, label %if.end58

land.lhs.true:                                    ; preds = %if.end34
  %call45 = call i32 @___ratelimit(ptr noundef nonnull @SendReceiveBlockingLock._rs.32, ptr noundef nonnull @__func__.SendReceiveBlockingLock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %land.lhs.true.cleanup202_crit_edge, label %do.end50

land.lhs.true.cleanup202_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup202

do.end50:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %treeName = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 8
  %tobool40.not = icmp eq ptr %treeName, null
  %spec.select = select i1 %tobool40.not, ptr @.str.8, ptr %treeName
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull %spec.select, i32 noundef %2) #15
  br label %cleanup202

if.end58:                                         ; preds = %if.end34
  %call.i = call fastcc i32 @wait_for_free_credits(ptr noundef nonnull %14, i32 noundef 1, i32 noundef -1, i32 noundef 1, ptr noundef nonnull %instance) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool60.not = icmp eq i32 %call.i, 0
  br i1 %tobool60.not, label %if.end62, label %if.end58.cleanup202_crit_edge

if.end58.cleanup202_crit_edge:                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup202

if.end62:                                         ; preds = %if.end58
  %srv_mutex = getelementptr inbounds %struct.TCP_Server_Info, ptr %14, i32 0, i32 25
  call void @mutex_lock_nested(ptr noundef %srv_mutex, i32 noundef 0) #12
  %call63 = call fastcc i32 @allocate_mid(ptr noundef nonnull %12, ptr noundef %in_buf, ptr noundef nonnull %midQ)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end67, label %if.then65

if.then65:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  call void @mutex_unlock(ptr noundef %srv_mutex) #12
  br label %cleanup202

if.end67:                                         ; preds = %if.end62
  %18 = ptrtoint ptr %midQ to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %midQ, align 4
  %sequence_number = getelementptr inbounds %struct.mid_q_entry, ptr %19, i32 0, i32 7
  %call68 = call i32 @cifs_sign_smb(ptr noundef %in_buf, ptr noundef nonnull %14, ptr noundef %sequence_number) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  %20 = ptrtoint ptr %midQ to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %midQ, align 4
  br i1 %tobool69.not, label %if.end72, label %if.then70

if.then70:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  call void @cifs_delete_mid(ptr noundef %21)
  call void @mutex_unlock(ptr noundef %srv_mutex) #12
  br label %cleanup202

if.end72:                                         ; preds = %if.end67
  %mid_state = getelementptr inbounds %struct.mid_q_entry, ptr %21, i32 0, i32 18
  %22 = ptrtoint ptr %mid_state to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %mid_state, align 4
  %in_send.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %14, i32 0, i32 65
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %in_send.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %in_send.i, i32 1, i32 3, i32 1) #12
  %23 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %in_send.i, ptr %in_send.i, i32 1, ptr elementtype(i32) %in_send.i) #12, !srcloc !201
  %call73 = call i32 @smb_send(ptr noundef nonnull %14, ptr noundef %in_buf, i32 noundef %2)
  %call.i.i.i288 = call zeroext i1 @__kasan_check_write(ptr noundef %in_send.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %in_send.i, i32 1, i32 3, i32 1) #12
  %24 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %in_send.i, ptr %in_send.i, i32 1, ptr elementtype(i32) %in_send.i) #12, !srcloc !205
  %25 = ptrtoint ptr %midQ to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %midQ, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %27 = load volatile i32, ptr @jiffies, align 128
  %when_sent.i = getelementptr inbounds %struct.mid_q_entry, ptr %26, i32 0, i32 9
  %28 = ptrtoint ptr %when_sent.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %when_sent.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %if.then75, label %if.end82.critedge

if.then75:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  %sequence_number76 = getelementptr inbounds %struct.TCP_Server_Info, ptr %14, i32 0, i32 46
  %29 = ptrtoint ptr %sequence_number76 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sequence_number76, align 8
  %sub77 = add i32 %30, -2
  store i32 %sub77, ptr %sequence_number76, align 8
  call void @mutex_unlock(ptr noundef %srv_mutex) #12
  %31 = ptrtoint ptr %midQ to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %midQ, align 4
  call void @cifs_delete_mid(ptr noundef %32)
  br label %cleanup202

if.end82.critedge:                                ; preds = %if.end72
  call void @mutex_unlock(ptr noundef %srv_mutex) #12
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1569) #12
  %33 = ptrtoint ptr %midQ to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %midQ, align 4
  %mid_state89 = getelementptr inbounds %struct.mid_q_entry, ptr %34, i32 0, i32 18
  %35 = ptrtoint ptr %mid_state89 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mid_state89, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %cmp90 = icmp eq i32 %36, 2
  br i1 %cmp90, label %lor.lhs.false91, label %if.end82.critedge.if.end153.sink.split_crit_edge

if.end82.critedge.if.end153.sink.split_crit_edge: ; preds = %if.end82.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end153.sink.split

lor.lhs.false91:                                  ; preds = %if.end82.critedge
  %37 = ptrtoint ptr %tcpStatus to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tcpStatus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %38)
  %switch = icmp ult i32 %38, 2
  br i1 %switch, label %if.then97, label %lor.lhs.false91.if.end153.sink.split_crit_edge

lor.lhs.false91.if.end153.sink.split_crit_edge:   ; preds = %lor.lhs.false91
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end153.sink.split

if.then97:                                        ; preds = %lor.lhs.false91
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #12
  %39 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #12
  %response_q = getelementptr inbounds %struct.TCP_Server_Info, ptr %14, i32 0, i32 13
  %call99312 = call i32 @prepare_to_wait_event(ptr noundef %response_q, ptr noundef nonnull %__wq_entry, i32 noundef 1) #12
  %40 = ptrtoint ptr %midQ to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %midQ, align 4
  %mid_state100313 = getelementptr inbounds %struct.mid_q_entry, ptr %41, i32 0, i32 18
  %42 = ptrtoint ptr %mid_state100313 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mid_state100313, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %43)
  %cmp101314 = icmp eq i32 %43, 2
  br i1 %cmp101314, label %if.then97.lor.lhs.false102_crit_edge, label %if.then97.if.end115.thread305_crit_edge

if.then97.if.end115.thread305_crit_edge:          ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end115.thread305

if.then97.lor.lhs.false102_crit_edge:             ; preds = %if.then97
  br label %lor.lhs.false102

lor.lhs.false102:                                 ; preds = %cleanup.lor.lhs.false102_crit_edge, %if.then97.lor.lhs.false102_crit_edge
  %call99315 = phi i32 [ %call99, %cleanup.lor.lhs.false102_crit_edge ], [ %call99312, %if.then97.lor.lhs.false102_crit_edge ]
  %44 = ptrtoint ptr %tcpStatus to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tcpStatus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %45)
  %switch284 = icmp ult i32 %45, 2
  br i1 %switch284, label %if.end109, label %lor.lhs.false102.if.end115.thread305_crit_edge

lor.lhs.false102.if.end115.thread305_crit_edge:   ; preds = %lor.lhs.false102
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end115.thread305

if.end109:                                        ; preds = %lor.lhs.false102
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99315)
  %tobool110.not = icmp eq i32 %call99315, 0
  br i1 %tobool110.not, label %cleanup, label %if.end115

cleanup:                                          ; preds = %if.end109
  call void @schedule() #12
  %call99 = call i32 @prepare_to_wait_event(ptr noundef %response_q, ptr noundef nonnull %__wq_entry, i32 noundef 1) #12
  %46 = ptrtoint ptr %midQ to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %midQ, align 4
  %mid_state100 = getelementptr inbounds %struct.mid_q_entry, ptr %47, i32 0, i32 18
  %48 = ptrtoint ptr %mid_state100 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mid_state100, align 4
  %cmp101 = icmp eq i32 %49, 2
  br i1 %cmp101, label %cleanup.lor.lhs.false102_crit_edge, label %cleanup.if.end115.thread305_crit_edge

cleanup.if.end115.thread305_crit_edge:            ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end115.thread305

cleanup.lor.lhs.false102_crit_edge:               ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false102

if.end115.thread305:                              ; preds = %cleanup.if.end115.thread305_crit_edge, %lor.lhs.false102.if.end115.thread305_crit_edge, %if.then97.if.end115.thread305_crit_edge
  call void @finish_wait(ptr noundef %response_q, ptr noundef nonnull %__wq_entry) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  br label %if.end153.sink.split

if.end115:                                        ; preds = %if.end109
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  call void @_raw_spin_lock(ptr noundef nonnull @cifs_tcp_ses_lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %call99315)
  %cmp117 = icmp eq i32 %call99315, -512
  br i1 %cmp117, label %land.lhs.true118, label %if.end115.if.end153_crit_edge

if.end115.if.end153_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end153

land.lhs.true118:                                 ; preds = %if.end115
  %50 = ptrtoint ptr %midQ to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %midQ, align 4
  %mid_state119 = getelementptr inbounds %struct.mid_q_entry, ptr %51, i32 0, i32 18
  %52 = ptrtoint ptr %mid_state119 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %mid_state119, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %53)
  %cmp120 = icmp eq i32 %53, 2
  br i1 %cmp120, label %land.lhs.true121, label %land.lhs.true118.if.end153_crit_edge

land.lhs.true118.if.end153_crit_edge:             ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end153

land.lhs.true121:                                 ; preds = %land.lhs.true118
  %54 = ptrtoint ptr %tcpStatus to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tcpStatus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %55)
  %switch285 = icmp ult i32 %55, 2
  br i1 %switch285, label %if.then127, label %land.lhs.true121.if.end153_crit_edge

land.lhs.true121.if.end153_crit_edge:             ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end153

if.then127:                                       ; preds = %land.lhs.true121
  call void @_raw_spin_unlock(ptr noundef nonnull @cifs_tcp_ses_lock) #12
  %Command = getelementptr inbounds %struct.smb_hdr, ptr %in_buf, i32 0, i32 2
  %56 = ptrtoint ptr %Command to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %Command, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %57)
  %cmp128 = icmp eq i8 %57, 50
  br i1 %cmp128, label %if.then130, label %if.else

if.then130:                                       ; preds = %if.then127
  %ops.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %14, i32 0, i32 5
  %58 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ops.i, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %tobool.not.i = icmp eq ptr %61, null
  br i1 %tobool.not.i, label %if.then130.if.end142_crit_edge, label %send_cancel.exit

if.then130.if.end142_crit_edge:                   ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end142

send_cancel.exit:                                 ; preds = %if.then130
  %62 = ptrtoint ptr %midQ to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %midQ, align 4
  %call.i289 = call i32 %61(ptr noundef nonnull %14, ptr noundef nonnull %rqst, ptr noundef %63) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i289)
  %tobool132.not = icmp eq i32 %call.i289, 0
  br i1 %tobool132.not, label %send_cancel.exit.if.end142_crit_edge, label %if.then133

send_cancel.exit.if.end142_crit_edge:             ; preds = %send_cancel.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end142

if.then133:                                       ; preds = %send_cancel.exit
  call void @__sanitizer_cov_trace_pc() #14
  %64 = ptrtoint ptr %midQ to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %midQ, align 4
  call void @cifs_delete_mid(ptr noundef %65)
  br label %cleanup202

if.else:                                          ; preds = %if.then127
  %call135 = call fastcc i32 @send_lock_cancel(i32 noundef %xid, ptr noundef nonnull %tcon, ptr noundef %in_buf, ptr noundef %out_buf)
  %66 = zext i32 %call135 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %call135, label %if.then140 [
    i32 0, label %if.else.if.end142_crit_edge
    i32 -37, label %if.else.if.end142_crit_edge322
  ]

if.else.if.end142_crit_edge322:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end142

if.else.if.end142_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end142

if.then140:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %67 = ptrtoint ptr %midQ to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %midQ, align 4
  call void @cifs_delete_mid(ptr noundef %68)
  br label %cleanup202

if.end142:                                        ; preds = %if.else.if.end142_crit_edge, %if.else.if.end142_crit_edge322, %send_cancel.exit.if.end142_crit_edge, %if.then130.if.end142_crit_edge
  %69 = ptrtoint ptr %midQ to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %midQ, align 4
  %call143 = call fastcc i32 @wait_for_response(ptr noundef nonnull %14, ptr noundef %70)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %tobool144.not = icmp eq i32 %call143, 0
  br i1 %tobool144.not, label %if.end142.if.end153.sink.split_crit_edge, label %if.then145

if.end142.if.end153.sink.split_crit_edge:         ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end153.sink.split

if.then145:                                       ; preds = %if.end142
  %ops.i290 = getelementptr inbounds %struct.TCP_Server_Info, ptr %14, i32 0, i32 5
  %71 = ptrtoint ptr %ops.i290 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ops.i290, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 4
  %tobool.not.i291 = icmp eq ptr %74, null
  br i1 %tobool.not.i291, label %if.then145.send_cancel.exit295_crit_edge, label %cond.true.i293

if.then145.send_cancel.exit295_crit_edge:         ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #14
  br label %send_cancel.exit295

cond.true.i293:                                   ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #14
  %75 = ptrtoint ptr %midQ to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %midQ, align 4
  %call.i292 = call i32 %74(ptr noundef nonnull %14, ptr noundef nonnull %rqst, ptr noundef %76) #12
  br label %send_cancel.exit295

send_cancel.exit295:                              ; preds = %cond.true.i293, %if.then145.send_cancel.exit295_crit_edge
  call void @_raw_spin_lock(ptr noundef nonnull @GlobalMid_Lock) #12
  %77 = ptrtoint ptr %midQ to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %midQ, align 4
  %mid_state147 = getelementptr inbounds %struct.mid_q_entry, ptr %78, i32 0, i32 18
  %79 = ptrtoint ptr %mid_state147 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %mid_state147, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %80)
  %cmp148 = icmp eq i32 %80, 2
  br i1 %cmp148, label %if.then150, label %if.end151

if.then150:                                       ; preds = %send_cancel.exit295
  call void @__sanitizer_cov_trace_pc() #14
  %callback = getelementptr inbounds %struct.mid_q_entry, ptr %78, i32 0, i32 12
  %81 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @DeleteMidQEntry, ptr %callback, align 4
  call void @_raw_spin_unlock(ptr noundef nonnull @GlobalMid_Lock) #12
  br label %cleanup202

if.end151:                                        ; preds = %send_cancel.exit295
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_unlock(ptr noundef nonnull @GlobalMid_Lock) #12
  br label %if.end153.sink.split

if.end153.sink.split:                             ; preds = %if.end151, %if.end142.if.end153.sink.split_crit_edge, %if.end115.thread305, %lor.lhs.false91.if.end153.sink.split_crit_edge, %if.end82.critedge.if.end153.sink.split_crit_edge
  %tobool196.not.ph = phi i1 [ false, %if.end115.thread305 ], [ false, %if.end82.critedge.if.end153.sink.split_crit_edge ], [ false, %lor.lhs.false91.if.end153.sink.split_crit_edge ], [ true, %if.end151 ], [ true, %if.end142.if.end153.sink.split_crit_edge ]
  call void @_raw_spin_lock(ptr noundef nonnull @cifs_tcp_ses_lock) #12
  br label %if.end153

if.end153:                                        ; preds = %if.end153.sink.split, %land.lhs.true121.if.end153_crit_edge, %land.lhs.true118.if.end153_crit_edge, %if.end115.if.end153_crit_edge
  %tobool196.not = phi i1 [ false, %land.lhs.true118.if.end153_crit_edge ], [ false, %if.end115.if.end153_crit_edge ], [ false, %land.lhs.true121.if.end153_crit_edge ], [ %tobool196.not.ph, %if.end153.sink.split ]
  call void @_raw_spin_unlock(ptr noundef nonnull @cifs_tcp_ses_lock) #12
  %82 = ptrtoint ptr %midQ to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %midQ, align 4
  %call154 = call fastcc i32 @cifs_sync_mid_result(ptr noundef %83, ptr noundef nonnull %14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call154)
  %cmp155.not = icmp eq i32 %call154, 0
  br i1 %cmp155.not, label %if.end158, label %if.end153.cleanup202_crit_edge

if.end153.cleanup202_crit_edge:                   ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup202

if.end158:                                        ; preds = %if.end153
  %cmp159 = icmp eq ptr %out_buf, null
  br i1 %cmp159, label %if.end158.land.lhs.true170_crit_edge, label %lor.lhs.false161

if.end158.land.lhs.true170_crit_edge:             ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true170

lor.lhs.false161:                                 ; preds = %if.end158
  %84 = ptrtoint ptr %midQ to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %midQ, align 4
  %mid_state162 = getelementptr inbounds %struct.mid_q_entry, ptr %85, i32 0, i32 18
  %86 = ptrtoint ptr %mid_state162 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %mid_state162, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %87)
  %cmp163.not = icmp eq i32 %87, 4
  br i1 %cmp163.not, label %if.end191, label %lor.lhs.false161.land.lhs.true170_crit_edge

lor.lhs.false161.land.lhs.true170_crit_edge:      ; preds = %lor.lhs.false161
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true170

land.lhs.true170:                                 ; preds = %lor.lhs.false161.land.lhs.true170_crit_edge, %if.end158.land.lhs.true170_crit_edge
  %call178 = call i32 @___ratelimit(ptr noundef nonnull @SendReceiveBlockingLock._rs.36, ptr noundef nonnull @__func__.SendReceiveBlockingLock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call178)
  %tobool179.not = icmp eq i32 %call178, 0
  br i1 %tobool179.not, label %land.lhs.true170.out_crit_edge, label %do.end183

land.lhs.true170.out_crit_edge:                   ; preds = %land.lhs.true170
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.end183:                                        ; preds = %land.lhs.true170
  call void @__sanitizer_cov_trace_pc() #14
  %treeName171 = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 8
  %tobool173.not = icmp eq ptr %treeName171, null
  %spec.select283 = select i1 %tobool173.not, ptr @.str.8, ptr %treeName171
  %call185 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull %spec.select283) #15
  br label %out

if.end191:                                        ; preds = %lor.lhs.false161
  call void @__sanitizer_cov_trace_pc() #14
  %resp_buf = getelementptr inbounds %struct.mid_q_entry, ptr %85, i32 0, i32 16
  %88 = ptrtoint ptr %resp_buf to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %resp_buf, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %89, align 4
  %and.i = and i32 %91, 16777215
  %92 = ptrtoint ptr %pbytes_returned to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %and.i, ptr %pbytes_returned, align 4
  %93 = load ptr, ptr %resp_buf, align 4
  %add194 = add nuw nsw i32 %and.i, 4
  %94 = call ptr @memcpy(ptr %out_buf, ptr %93, i32 %add194)
  %call195 = call i32 @cifs_check_receive(ptr noundef %85, ptr noundef nonnull %14, i1 noundef zeroext false)
  br label %out

out:                                              ; preds = %if.end191, %do.end183, %land.lhs.true170.out_crit_edge
  %rc.0 = phi i32 [ %call195, %if.end191 ], [ -5, %do.end183 ], [ -5, %land.lhs.true170.out_crit_edge ]
  %95 = ptrtoint ptr %midQ to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %midQ, align 4
  call void @cifs_delete_mid(ptr noundef %96)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -13, i32 %rc.0)
  %cmp198 = icmp eq i32 %rc.0, -13
  %or.cond = select i1 %tobool196.not, i1 %cmp198, i1 false
  %spec.select286 = select i1 %or.cond, i32 -512, i32 %rc.0
  br label %cleanup202

cleanup202:                                       ; preds = %out, %if.end153.cleanup202_crit_edge, %if.then150, %if.then140, %if.then133, %if.then75, %if.then70, %if.then65, %if.end58.cleanup202_crit_edge, %do.end50, %land.lhs.true.cleanup202_crit_edge, %if.end31.cleanup202_crit_edge, %do.end23, %do.body17.cleanup202_crit_edge, %do.end, %do.body3.cleanup202_crit_edge
  %retval.0 = phi i32 [ %call63, %if.then65 ], [ %call68, %if.then70 ], [ %call73, %if.then75 ], [ %call.i289, %if.then133 ], [ %call143, %if.then150 ], [ %call135, %if.then140 ], [ -5, %do.end ], [ -5, %do.body3.cleanup202_crit_edge ], [ -5, %do.end23 ], [ -5, %do.body17.cleanup202_crit_edge ], [ -5, %do.end50 ], [ -5, %land.lhs.true.cleanup202_crit_edge ], [ %call.i, %if.end58.cleanup202_crit_edge ], [ %call154, %if.end153.cleanup202_crit_edge ], [ %spec.select286, %out ], [ -2, %if.end31.cleanup202_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %instance) #12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %rqst) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %midQ) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @send_lock_cancel(i32 noundef %xid, ptr nocapture noundef readonly %tcon, ptr noundef %in_buf, ptr noundef %out_buf) unnamed_addr #0 align 64 {
entry:
  %bytes_returned = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_returned) #12
  %ses1 = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 7
  %0 = ptrtoint ptr %ses1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ses1, align 8
  %LockType = getelementptr inbounds %struct.smb_com_lock_req, ptr %in_buf, i32 0, i32 5
  %2 = ptrtoint ptr %LockType to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 24, ptr %LockType, align 1
  %Timeout = getelementptr inbounds %struct.smb_com_lock_req, ptr %in_buf, i32 0, i32 7
  %3 = ptrtoint ptr %Timeout to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 0, ptr %Timeout, align 1
  %server = getelementptr inbounds %struct.cifs_ses, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %server, align 8
  %ops.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  %get_next_mid.i = getelementptr inbounds %struct.smb_version_operations, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %get_next_mid.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_next_mid.i, align 4
  %call.i = tail call i64 %9(ptr noundef %5) #12
  %conv.i = trunc i64 %call.i to i16
  %10 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #12
  %Mid = getelementptr inbounds %struct.smb_hdr, ptr %in_buf, i32 0, i32 12
  %11 = ptrtoint ptr %Mid to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 %10, ptr %Mid, align 1
  %call2 = call i32 @SendReceive(i32 undef, ptr noundef %1, ptr noundef %in_buf, ptr noundef %out_buf, ptr noundef nonnull %bytes_returned, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_returned) #12
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @cifs_buf_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cifs_small_buf_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_smb3_slow_rsp(i16 noundef zeroext %cmd, i64 noundef %mid, i32 noundef %pid, i32 noundef %when_sent, i32 noundef %when_received) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_slow_rsp, i32 0, i32 1), ptr blockaddress(@trace_smb3_slow_rsp, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !197

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !187) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !200

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.49, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !187) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !212
  %call42 = tail call i32 @__traceiter_smb3_slow_rsp(ptr noundef null, i16 noundef zeroext %cmd, i64 noundef %mid, i32 noundef %pid, i32 noundef %when_sent, i32 noundef %when_received) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !213
  %13 = tail call i32 @llvm.read_register.i32(metadata !187) #12
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !187) #12
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !200

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.49, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !187) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !214
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_slow_rsp, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_slow_rsp, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_smb3_slow_rsp.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_smb3_slow_rsp.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.47, i32 noundef 530, ptr noundef nonnull @.str.48) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !215
  %31 = tail call i32 @llvm.read_register.i32(metadata !187) #12
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_smb3_slow_rsp(ptr noundef, i16 noundef zeroext, i64 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smbd_send(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_sock_set_cork(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sigprocmask(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_kvec(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smb_send_kvec(ptr noundef %server, ptr noundef %smb_msg, ptr nocapture noundef %sent) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ssocket1 = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 9
  %0 = ptrtoint ptr %ssocket1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ssocket1, align 4
  %2 = ptrtoint ptr %sent to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %sent, align 4
  %dstaddr = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 10
  %3 = ptrtoint ptr %smb_msg to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dstaddr, ptr %smb_msg, align 8
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %smb_msg, i32 0, i32 1
  %4 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 16, ptr %msg_namelen, align 4
  %5 = getelementptr inbounds %struct.msghdr, ptr %smb_msg, i32 0, i32 3
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %5, align 8
  %msg_controllen = getelementptr inbounds %struct.msghdr, ptr %smb_msg, i32 0, i32 5
  %7 = ptrtoint ptr %msg_controllen to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %msg_controllen, align 8
  %noblocksnd = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 16
  %8 = ptrtoint ptr %noblocksnd to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %noblocksnd, align 4, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  %spec.select101 = select i1 %tobool.not, i32 16384, i32 16448
  %10 = getelementptr inbounds %struct.msghdr, ptr %smb_msg, i32 0, i32 6
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.select101, ptr %10, align 4
  %count.i.i = getelementptr inbounds %struct.msghdr, ptr %smb_msg, i32 0, i32 2, i32 4
  %12 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool3.not8992 = icmp eq i32 %13, 0
  br i1 %tobool3.not8992, label %entry.cleanup_crit_edge, label %while.body.lr.ph.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.body.lr.ph.lr.ph:                           ; preds = %entry
  %tobool38.not = icmp eq ptr %server, null
  %hostname40 = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 8
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.outer.backedge.while.body.lr.ph_crit_edge, %while.body.lr.ph.lr.ph
  %retries.0.ph93 = phi i32 [ 0, %while.body.lr.ph.lr.ph ], [ %retries.0.ph.be, %while.cond.outer.backedge.while.body.lr.ph_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %if.end53.while.body_crit_edge, %while.body.lr.ph
  %call4 = tail call i32 @sock_sendmsg(ptr noundef %1, ptr noundef %smb_msg) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call4)
  %cmp = icmp eq i32 %call4, -11
  br i1 %cmp, label %if.then5, label %if.end29

if.then5:                                         ; preds = %while.body
  %inc = add i32 %retries.0.ph93, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %inc)
  %cmp6 = icmp sgt i32 %inc, 13
  br i1 %cmp6, label %if.then5.do.body11_crit_edge, label %lor.lhs.false

if.then5.do.body11_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body11

lor.lhs.false:                                    ; preds = %if.then5
  %14 = ptrtoint ptr %noblocksnd to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %noblocksnd, align 4, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool8.not = icmp eq i8 %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc)
  %cmp9 = icmp sgt i32 %inc, 2
  %or.cond = select i1 %tobool8.not, i1 %cmp9, i1 false
  br i1 %or.cond, label %lor.lhs.false.do.body11_crit_edge, label %if.end28

lor.lhs.false.do.body11_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body11

do.body11:                                        ; preds = %lor.lhs.false.do.body11_crit_edge, %if.then5.do.body11_crit_edge
  br i1 %tobool38.not, label %do.body11.if.end17_crit_edge, label %land.lhs.true13

do.body11.if.end17_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

land.lhs.true13:                                  ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %hostname40 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hostname40, align 8
  %tobool14.not = icmp eq ptr %17, null
  %spec.select = select i1 %tobool14.not, ptr @.str.8, ptr %17
  br label %if.end17

if.end17:                                         ; preds = %land.lhs.true13, %do.body11.if.end17_crit_edge
  %sn.0 = phi ptr [ @.str.8, %do.body11.if.end17_crit_edge ], [ %spec.select, %land.lhs.true13 ]
  %call18 = tail call i32 @___ratelimit(ptr noundef nonnull @smb_send_kvec._rs, ptr noundef nonnull @__func__.smb_send_kvec) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end17.cleanup_crit_edge, label %do.end

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull %sn.0, ptr noundef %1) #15
  br label %cleanup

if.end28:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %shl = shl nuw nsw i32 1, %inc
  tail call void @msleep(i32 noundef %shl) #12
  br label %while.cond.outer.backedge

while.cond.outer.backedge:                        ; preds = %if.end58, %if.end28
  %retries.0.ph.be = phi i32 [ 0, %if.end58 ], [ %inc, %if.end28 ]
  %18 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %count.i.i, align 8
  %tobool3.not89 = icmp eq i32 %19, 0
  br i1 %tobool3.not89, label %while.cond.outer.backedge.cleanup_crit_edge, label %while.cond.outer.backedge.while.body.lr.ph_crit_edge

while.cond.outer.backedge.while.body.lr.ph_crit_edge: ; preds = %while.cond.outer.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.lr.ph

while.cond.outer.backedge.cleanup_crit_edge:      ; preds = %while.cond.outer.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end29:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp30 = icmp slt i32 %call4, 0
  br i1 %cmp30, label %if.end29.cleanup_crit_edge, label %if.end32

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end32:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp33 = icmp eq i32 %call4, 0
  br i1 %cmp33, label %do.body36, label %if.end58

do.body36:                                        ; preds = %if.end32
  br i1 %tobool38.not, label %do.body36.if.end44_crit_edge, label %land.lhs.true39

do.body36.if.end44_crit_edge:                     ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

land.lhs.true39:                                  ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %hostname40 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hostname40, align 8
  %tobool41.not = icmp eq ptr %21, null
  %spec.select87 = select i1 %tobool41.not, ptr @.str.8, ptr %21
  br label %if.end44

if.end44:                                         ; preds = %land.lhs.true39, %do.body36.if.end44_crit_edge
  %sn37.0 = phi ptr [ @.str.8, %do.body36.if.end44_crit_edge ], [ %spec.select87, %land.lhs.true39 ]
  %call45 = tail call i32 @___ratelimit(ptr noundef nonnull @smb_send_kvec._rs.64, ptr noundef nonnull @__func__.smb_send_kvec) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end44.if.end53_crit_edge, label %do.end50

if.end44.if.end53_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

do.end50:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef nonnull %sn37.0) #15
  br label %if.end53

if.end53:                                         ; preds = %do.end50, %if.end44.if.end53_crit_edge
  tail call void @msleep(i32 noundef 500) #12
  %22 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %count.i.i, align 8
  %tobool3.not = icmp eq i32 %23, 0
  br i1 %tobool3.not, label %if.end53.cleanup_crit_edge, label %if.end53.while.body_crit_edge

if.end53.while.body_crit_edge:                    ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end58:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %sent to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sent, align 4
  %add = add i32 %25, %call4
  store i32 %add, ptr %sent, align 4
  br label %while.cond.outer.backedge

cleanup:                                          ; preds = %if.end53.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %while.cond.outer.backedge.cleanup_crit_edge, %do.end, %if.end17.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %do.end ], [ -11, %if.end17.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %call4, %if.end29.cleanup_crit_edge ], [ 0, %if.end53.cleanup_crit_edge ], [ 0, %while.cond.outer.backedge.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rqst_page_get_length(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_bvec(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cifs_mark_tcp_ses_conns_for_reconnect(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_smb3_partial_send_reconnect(i64 noundef %currmid, i64 noundef %conn_id, ptr noundef %hostname) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_partial_send_reconnect, i32 0, i32 1), ptr blockaddress(@trace_smb3_partial_send_reconnect, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !197

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !187) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !200

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.49, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !187) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !216
  %call42 = tail call i32 @__traceiter_smb3_partial_send_reconnect(ptr noundef null, i64 noundef %currmid, i64 noundef %conn_id, ptr noundef %hostname) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !217
  %13 = tail call i32 @llvm.read_register.i32(metadata !187) #12
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !187) #12
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !200

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.49, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !187) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !214
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_partial_send_reconnect, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_partial_send_reconnect, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_smb3_partial_send_reconnect.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_smb3_partial_send_reconnect.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.47, i32 noundef 957, ptr noundef nonnull @.str.48) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !215
  %31 = tail call i32 @llvm.read_register.i32(metadata !187) #12
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_sendmsg(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_smb3_partial_send_reconnect(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wait_for_free_credits(ptr noundef %server, i32 noundef %num_credits, i32 noundef %timeout, i32 noundef %flags, ptr nocapture noundef writeonly %instance) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %__wq_entry166 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %cmp = icmp slt i32 %timeout, 0
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.else.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %timeout) #12
  br label %if.end

if.end:                                           ; preds = %if.else.i, %entry.if.end_crit_edge
  %t.0 = phi i32 [ 1073741822, %entry.if.end_crit_edge ], [ %call2.i, %if.else.i ]
  %and = and i32 %flags, 10112
  %0 = ptrtoint ptr %instance to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %instance, align 4
  %ops = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 5
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops, align 4
  %get_credits_field = getelementptr inbounds %struct.smb_version_operations, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %get_credits_field to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %get_credits_field, align 4
  %call1 = tail call ptr %4(ptr noundef %server, i32 noundef %and) #12
  %5 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp2 = icmp slt i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %and)
  %cmp3 = icmp eq i32 %and, 128
  %or.cond = and i1 %cmp3, %cmp2
  br i1 %or.cond, label %if.end.cleanup292_crit_edge, label %if.end5

if.end.cleanup292_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup292

if.end5:                                          ; preds = %if.end
  %req_lock = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 24
  tail call void @_raw_spin_lock(ptr noundef %req_lock) #12
  %and6 = and i32 %flags, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and6)
  %cmp7 = icmp eq i32 %and6, 2
  br i1 %cmp7, label %if.then8, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end5
  %tcpStatus = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool131.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_credits)
  %cmp133 = icmp eq i32 %num_credits, 1
  %or.cond426 = and i1 %cmp133, %tobool131.not
  %in_flight135 = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 22
  %num_waiters.i436 = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 66
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t.0)
  %tobool153.not = icmp eq i32 %t.0, 0
  %request_q170 = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 14
  br label %while.cond

if.then8:                                         ; preds = %if.end5
  %in_flight9 = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 22
  %7 = ptrtoint ptr %in_flight9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %in_flight9, align 8
  %inc = add i32 %8, 1
  store i32 %inc, ptr %in_flight9, align 8
  %max_in_flight = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 23
  %9 = ptrtoint ptr %max_in_flight to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_in_flight, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %10)
  %cmp11 = icmp ugt i32 %inc, %10
  br i1 %cmp11, label %if.then12, label %if.then8.if.end15_crit_edge

if.then8.if.end15_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then12:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %max_in_flight to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %inc, ptr %max_in_flight, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.then8.if.end15_crit_edge
  %12 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call1, align 4
  %sub = add i32 %13, -1
  store i32 %sub, ptr %call1, align 4
  %reconnect_instance = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 47
  %14 = ptrtoint ptr %reconnect_instance to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reconnect_instance, align 4
  %16 = ptrtoint ptr %instance to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %instance, align 4
  %17 = load i32, ptr %call1, align 4
  %18 = ptrtoint ptr %in_flight9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %in_flight9, align 8
  tail call void @_raw_spin_unlock(ptr noundef %req_lock) #12
  %CurrentMid = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 43
  %20 = ptrtoint ptr %CurrentMid to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %CurrentMid, align 8
  %conn_id = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 2
  %22 = ptrtoint ptr %conn_id to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %conn_id, align 8
  %hostname = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 8
  %24 = ptrtoint ptr %hostname to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hostname, align 8
  tail call fastcc void @trace_smb3_add_credits(i64 noundef %21, i64 noundef %23, ptr noundef %25, i32 noundef %17, i32 noundef -1, i32 noundef %19)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %26 = load i32, ptr @cifsFYI, align 4
  %and19 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool.not = icmp eq i32 %and19, 0
  br i1 %tobool.not, label %if.end15.cleanup292_crit_edge, label %do.body21

if.end15.cleanup292_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup292

do.body21:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wait_for_free_credits.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wait_for_free_credits, %land.lhs.true26)) #12
          to label %cleanup292 [label %land.lhs.true26], !srcloc !197

land.lhs.true26:                                  ; preds = %do.body21
  %call27 = tail call i32 @___ratelimit(ptr noundef nonnull @wait_for_free_credits._rs, ptr noundef nonnull @.str.68) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %land.lhs.true26.cleanup292_crit_edge, label %if.then29

land.lhs.true26.cleanup292_crit_edge:             ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup292

if.then29:                                        ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wait_for_free_credits.descriptor, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.68, i32 noundef 1, i32 noundef %17) #12
  br label %cleanup292

while.cond:                                       ; preds = %while.cond.backedge, %while.cond.preheader
  %27 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %call1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %num_credits)
  %cmp38 = icmp slt i32 %28, %num_credits
  call void @_raw_spin_unlock(ptr noundef %req_lock) #12
  br i1 %cmp38, label %if.then39, label %if.else125

if.then39:                                        ; preds = %while.cond
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %num_waiters.i436, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %num_waiters.i436, i32 1, i32 3, i32 1) #12
  %29 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_waiters.i436, ptr %num_waiters.i436, i32 1, ptr elementtype(i32) %num_waiters.i436) #12, !srcloc !201
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 560) #12
  call void @_raw_spin_lock(ptr noundef %req_lock) #12
  %30 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %call1, align 4
  call void @_raw_spin_unlock(ptr noundef %req_lock) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %num_credits)
  %cmp.i = icmp sge i32 %31, %num_credits
  %32 = select i1 %cmp.i, i1 %tobool153.not, i1 false
  %__ret.0 = select i1 %32, i32 1, i32 %t.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.0)
  %tobool56.not = icmp eq i32 %__ret.0, 0
  %33 = select i1 %cmp.i, i1 true, i1 %tobool56.not
  br i1 %33, label %if.then39.if.end88_crit_edge, label %if.then60

if.then39.if.end88_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88

if.then60:                                        ; preds = %if.then39
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #12
  %34 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #12
  %call62474 = call i32 @prepare_to_wait_event(ptr noundef %request_q170, ptr noundef nonnull %__wq_entry, i32 noundef 258) #12
  call void @_raw_spin_lock(ptr noundef %req_lock) #12
  %35 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %call1, align 4
  call void @_raw_spin_unlock(ptr noundef %req_lock) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %num_credits)
  %cmp.i433475 = icmp sge i32 %36, %num_credits
  %37 = select i1 %cmp.i433475, i1 %tobool153.not, i1 false
  %__ret61.1477 = select i1 %37, i32 1, i32 %t.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret61.1477)
  %tobool74.not478 = icmp eq i32 %__ret61.1477, 0
  %38 = select i1 %cmp.i433475, i1 true, i1 %tobool74.not478
  br i1 %38, label %if.then60.for.end_crit_edge, label %if.then60.if.end81_crit_edge

if.then60.if.end81_crit_edge:                     ; preds = %if.then60
  br label %if.end81

if.then60.for.end_crit_edge:                      ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end81:                                         ; preds = %cleanup.if.end81_crit_edge, %if.then60.if.end81_crit_edge
  %__ret61.1480 = phi i32 [ %__ret61.1, %cleanup.if.end81_crit_edge ], [ %__ret61.1477, %if.then60.if.end81_crit_edge ]
  %call62479 = phi i32 [ %call62, %cleanup.if.end81_crit_edge ], [ %call62474, %if.then60.if.end81_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62479)
  %tobool82.not = icmp eq i32 %call62479, 0
  br i1 %tobool82.not, label %cleanup, label %if.end81.__out_crit_edge

if.end81.__out_crit_edge:                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #14
  br label %__out

cleanup:                                          ; preds = %if.end81
  %call85 = call i32 @schedule_timeout(i32 noundef %__ret61.1480) #12
  %call62 = call i32 @prepare_to_wait_event(ptr noundef %request_q170, ptr noundef nonnull %__wq_entry, i32 noundef 258) #12
  call void @_raw_spin_lock(ptr noundef %req_lock) #12
  %39 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %call1, align 4
  call void @_raw_spin_unlock(ptr noundef %req_lock) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %num_credits)
  %cmp.i433 = icmp sge i32 %40, %num_credits
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool68.not = icmp eq i32 %call85, 0
  %41 = select i1 %cmp.i433, i1 %tobool68.not, i1 false
  %__ret61.1 = select i1 %41, i32 1, i32 %call85
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret61.1)
  %tobool74.not = icmp eq i32 %__ret61.1, 0
  %42 = select i1 %cmp.i433, i1 true, i1 %tobool74.not
  br i1 %42, label %cleanup.for.end_crit_edge, label %cleanup.if.end81_crit_edge

cleanup.if.end81_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then60.for.end_crit_edge
  %__ret61.1.lcssa = phi i32 [ %__ret61.1477, %if.then60.for.end_crit_edge ], [ %__ret61.1, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %request_q170, ptr noundef nonnull %__wq_entry) #12
  br label %__out

__out:                                            ; preds = %for.end, %if.end81.__out_crit_edge
  %__ret61.2447 = phi i32 [ %__ret61.1.lcssa, %for.end ], [ %call62479, %if.end81.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  br label %if.end88

if.end88:                                         ; preds = %__out, %if.then39.if.end88_crit_edge
  %__ret.1 = phi i32 [ %__ret.0, %if.then39.if.end88_crit_edge ], [ %__ret61.2447, %__out ]
  %call.i.i.i435 = call zeroext i1 @__kasan_check_write(ptr noundef %num_waiters.i436, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %num_waiters.i436, i32 1, i32 3, i32 1) #12
  %43 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_waiters.i436, ptr %num_waiters.i436, i32 1, ptr elementtype(i32) %num_waiters.i436) #12, !srcloc !205
  %44 = zext i32 %__ret.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %__ret.1, label %if.end88.while.cond.backedge_crit_edge [
    i32 0, label %if.then91
    i32 -512, label %if.end88.cleanup292_crit_edge
  ]

if.end88.cleanup292_crit_edge:                    ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup292

if.end88.while.cond.backedge_crit_edge:           ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge

if.then91:                                        ; preds = %if.end88
  call void @_raw_spin_lock(ptr noundef %req_lock) #12
  %45 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %call1, align 4
  %47 = ptrtoint ptr %in_flight135 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %in_flight135, align 8
  call void @_raw_spin_unlock(ptr noundef %req_lock) #12
  %CurrentMid95 = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 43
  %49 = ptrtoint ptr %CurrentMid95 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %CurrentMid95, align 8
  %conn_id96 = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 2
  %51 = ptrtoint ptr %conn_id96 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %conn_id96, align 8
  %hostname97 = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 8
  %53 = ptrtoint ptr %hostname97 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hostname97, align 8
  call fastcc void @trace_smb3_credit_timeout(i64 noundef %50, i64 noundef %52, ptr noundef %54, i32 noundef %46, i32 noundef %num_credits, i32 noundef %48)
  %tobool100.not = icmp eq ptr %server, null
  br i1 %tobool100.not, label %if.then91.if.end106_crit_edge, label %land.lhs.true101

if.then91.if.end106_crit_edge:                    ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end106

land.lhs.true101:                                 ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #14
  %55 = ptrtoint ptr %hostname97 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hostname97, align 8
  %tobool103.not = icmp eq ptr %56, null
  %spec.select = select i1 %tobool103.not, ptr @.str.8, ptr %56
  br label %if.end106

if.end106:                                        ; preds = %land.lhs.true101, %if.then91.if.end106_crit_edge
  %sn.0 = phi ptr [ @.str.8, %if.then91.if.end106_crit_edge ], [ %spec.select, %land.lhs.true101 ]
  %call107 = call i32 @___ratelimit(ptr noundef nonnull @wait_for_free_credits._rs.70, ptr noundef nonnull @.str.68) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %if.end106.cleanup292_crit_edge, label %do.end112

if.end106.cleanup292_crit_edge:                   ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup292

do.end112:                                        ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #14
  %call114 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull %sn.0, i32 noundef %timeout) #15
  br label %cleanup292

if.else125:                                       ; preds = %while.cond
  call void @_raw_spin_lock(ptr noundef nonnull @cifs_tcp_ses_lock) #12
  %57 = ptrtoint ptr %tcpStatus to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tcpStatus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %58)
  %cmp127 = icmp eq i32 %58, 2
  call void @_raw_spin_unlock(ptr noundef nonnull @cifs_tcp_ses_lock) #12
  br i1 %cmp127, label %if.else125.cleanup292_crit_edge, label %if.end129

if.else125.cleanup292_crit_edge:                  ; preds = %if.else125
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup292

if.end129:                                        ; preds = %if.else125
  call void @_raw_spin_lock(ptr noundef %req_lock) #12
  br i1 %or.cond426, label %land.lhs.true134, label %if.end129.if.end240_crit_edge

if.end129.if.end240_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end240

land.lhs.true134:                                 ; preds = %if.end129
  %59 = ptrtoint ptr %in_flight135 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %in_flight135, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %60)
  %cmp136 = icmp ugt i32 %60, 10
  br i1 %cmp136, label %land.lhs.true137, label %land.lhs.true134.if.end240_crit_edge

land.lhs.true134.if.end240_crit_edge:             ; preds = %land.lhs.true134
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end240

land.lhs.true137:                                 ; preds = %land.lhs.true134
  %61 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %call1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %62)
  %cmp138 = icmp slt i32 %62, 6
  br i1 %cmp138, label %if.then139, label %land.lhs.true137.if.end240_crit_edge

land.lhs.true137.if.end240_crit_edge:             ; preds = %land.lhs.true137
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end240

if.then139:                                       ; preds = %land.lhs.true137
  call void @_raw_spin_unlock(ptr noundef %req_lock) #12
  %call.i.i.i437 = call zeroext i1 @__kasan_check_write(ptr noundef %num_waiters.i436, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %num_waiters.i436, i32 1, i32 3, i32 1) #12
  %63 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_waiters.i436, ptr %num_waiters.i436, i32 1, ptr elementtype(i32) %num_waiters.i436) #12, !srcloc !201
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 612) #12
  call void @_raw_spin_lock(ptr noundef %req_lock) #12
  %64 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %call1, align 4
  call void @_raw_spin_unlock(ptr noundef %req_lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %65)
  %cmp.i439 = icmp sgt i32 %65, 5
  %66 = select i1 %cmp.i439, i1 %tobool153.not, i1 false
  %__ret141.0 = select i1 %66, i32 1, i32 %t.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret141.0)
  %tobool159.not = icmp eq i32 %__ret141.0, 0
  %67 = select i1 %cmp.i439, i1 true, i1 %tobool159.not
  br i1 %67, label %if.then139.if.end202_crit_edge, label %if.then165

if.then139.if.end202_crit_edge:                   ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end202

if.then165:                                       ; preds = %if.then139
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry166) #12
  %68 = call ptr @memset(ptr %__wq_entry166, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry166, i32 noundef 0) #12
  %call171466 = call i32 @prepare_to_wait_event(ptr noundef %request_q170, ptr noundef nonnull %__wq_entry166, i32 noundef 258) #12
  call void @_raw_spin_lock(ptr noundef %req_lock) #12
  %69 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %call1, align 4
  call void @_raw_spin_unlock(ptr noundef %req_lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %70)
  %cmp.i441467 = icmp sgt i32 %70, 5
  %71 = select i1 %cmp.i441467, i1 %tobool153.not, i1 false
  %__ret167.1469 = select i1 %71, i32 1, i32 %t.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret167.1469)
  %tobool183.not470 = icmp eq i32 %__ret167.1469, 0
  %72 = select i1 %cmp.i441467, i1 true, i1 %tobool183.not470
  br i1 %72, label %if.then165.for.end198_crit_edge, label %if.then165.if.end190_crit_edge

if.then165.if.end190_crit_edge:                   ; preds = %if.then165
  br label %if.end190

if.then165.for.end198_crit_edge:                  ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end198

if.end190:                                        ; preds = %cleanup195.if.end190_crit_edge, %if.then165.if.end190_crit_edge
  %__ret167.1472 = phi i32 [ %__ret167.1, %cleanup195.if.end190_crit_edge ], [ %__ret167.1469, %if.then165.if.end190_crit_edge ]
  %call171471 = phi i32 [ %call171, %cleanup195.if.end190_crit_edge ], [ %call171466, %if.then165.if.end190_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call171471)
  %tobool191.not = icmp eq i32 %call171471, 0
  br i1 %tobool191.not, label %cleanup195, label %if.end190.__out200_crit_edge

if.end190.__out200_crit_edge:                     ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #14
  br label %__out200

cleanup195:                                       ; preds = %if.end190
  %call194 = call i32 @schedule_timeout(i32 noundef %__ret167.1472) #12
  %call171 = call i32 @prepare_to_wait_event(ptr noundef %request_q170, ptr noundef nonnull %__wq_entry166, i32 noundef 258) #12
  call void @_raw_spin_lock(ptr noundef %req_lock) #12
  %73 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %call1, align 4
  call void @_raw_spin_unlock(ptr noundef %req_lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %74)
  %cmp.i441 = icmp sgt i32 %74, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call194)
  %tobool177.not = icmp eq i32 %call194, 0
  %75 = select i1 %cmp.i441, i1 %tobool177.not, i1 false
  %__ret167.1 = select i1 %75, i32 1, i32 %call194
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret167.1)
  %tobool183.not = icmp eq i32 %__ret167.1, 0
  %76 = select i1 %cmp.i441, i1 true, i1 %tobool183.not
  br i1 %76, label %cleanup195.for.end198_crit_edge, label %cleanup195.if.end190_crit_edge

cleanup195.if.end190_crit_edge:                   ; preds = %cleanup195
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end190

cleanup195.for.end198_crit_edge:                  ; preds = %cleanup195
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end198

for.end198:                                       ; preds = %cleanup195.for.end198_crit_edge, %if.then165.for.end198_crit_edge
  %__ret167.1.lcssa = phi i32 [ %__ret167.1469, %if.then165.for.end198_crit_edge ], [ %__ret167.1, %cleanup195.for.end198_crit_edge ]
  call void @finish_wait(ptr noundef %request_q170, ptr noundef nonnull %__wq_entry166) #12
  br label %__out200

__out200:                                         ; preds = %for.end198, %if.end190.__out200_crit_edge
  %__ret167.2454 = phi i32 [ %__ret167.1.lcssa, %for.end198 ], [ %call171471, %if.end190.__out200_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry166) #12
  br label %if.end202

if.end202:                                        ; preds = %__out200, %if.then139.if.end202_crit_edge
  %__ret141.1 = phi i32 [ %__ret141.0, %if.then139.if.end202_crit_edge ], [ %__ret167.2454, %__out200 ]
  %call.i.i.i443 = call zeroext i1 @__kasan_check_write(ptr noundef %num_waiters.i436, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %num_waiters.i436, i32 1, i32 3, i32 1) #12
  %77 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_waiters.i436, ptr %num_waiters.i436, i32 1, ptr elementtype(i32) %num_waiters.i436) #12, !srcloc !205
  %78 = zext i32 %__ret141.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %__ret141.1, label %if.end202.while.cond.backedge_crit_edge [
    i32 0, label %if.then205
    i32 -512, label %if.end202.cleanup292_crit_edge
  ]

if.end202.cleanup292_crit_edge:                   ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup292

if.end202.while.cond.backedge_crit_edge:          ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge

if.then205:                                       ; preds = %if.end202
  call void @_raw_spin_lock(ptr noundef %req_lock) #12
  %79 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %call1, align 4
  %81 = ptrtoint ptr %in_flight135 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %in_flight135, align 8
  call void @_raw_spin_unlock(ptr noundef %req_lock) #12
  %CurrentMid209 = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 43
  %83 = ptrtoint ptr %CurrentMid209 to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %CurrentMid209, align 8
  %conn_id210 = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 2
  %85 = ptrtoint ptr %conn_id210 to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %conn_id210, align 8
  %hostname211 = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 8
  %87 = ptrtoint ptr %hostname211 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %hostname211, align 8
  call fastcc void @trace_smb3_credit_timeout(i64 noundef %84, i64 noundef %86, ptr noundef %88, i32 noundef %80, i32 noundef 1, i32 noundef %82)
  %tobool215.not = icmp eq ptr %server, null
  br i1 %tobool215.not, label %if.then205.if.end221_crit_edge, label %land.lhs.true216

if.then205.if.end221_crit_edge:                   ; preds = %if.then205
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end221

land.lhs.true216:                                 ; preds = %if.then205
  call void @__sanitizer_cov_trace_pc() #14
  %89 = ptrtoint ptr %hostname211 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %hostname211, align 8
  %tobool218.not = icmp eq ptr %90, null
  %spec.select427 = select i1 %tobool218.not, ptr @.str.8, ptr %90
  br label %if.end221

if.end221:                                        ; preds = %land.lhs.true216, %if.then205.if.end221_crit_edge
  %sn214.0 = phi ptr [ @.str.8, %if.then205.if.end221_crit_edge ], [ %spec.select427, %land.lhs.true216 ]
  %call222 = call i32 @___ratelimit(ptr noundef nonnull @wait_for_free_credits._rs.72, ptr noundef nonnull @.str.68) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call222)
  %tobool223.not = icmp eq i32 %call222, 0
  br i1 %tobool223.not, label %if.end221.cleanup292_crit_edge, label %do.end227

if.end221.cleanup292_crit_edge:                   ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup292

do.end227:                                        ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #14
  %call229 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull %sn214.0, i32 noundef %timeout) #15
  br label %cleanup292

while.cond.backedge:                              ; preds = %if.end202.while.cond.backedge_crit_edge, %if.end88.while.cond.backedge_crit_edge
  call void @_raw_spin_lock(ptr noundef %req_lock) #12
  br label %while.cond

if.end240:                                        ; preds = %land.lhs.true137.if.end240_crit_edge, %land.lhs.true134.if.end240_crit_edge, %if.end129.if.end240_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and6)
  %cmp242.not = icmp eq i32 %and6, 1
  br i1 %cmp242.not, label %if.end240.if.end254_crit_edge, label %if.then243

if.end240.if.end254_crit_edge:                    ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end254

if.then243:                                       ; preds = %if.end240
  %91 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %call1, align 4
  %sub244 = sub i32 %92, %num_credits
  store i32 %sub244, ptr %call1, align 4
  %93 = ptrtoint ptr %in_flight135 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %in_flight135, align 8
  %add = add i32 %94, %num_credits
  store i32 %add, ptr %in_flight135, align 8
  %max_in_flight247 = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 23
  %95 = ptrtoint ptr %max_in_flight247 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %max_in_flight247, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %96)
  %cmp248 = icmp ugt i32 %add, %96
  br i1 %cmp248, label %if.then249, label %if.then243.if.end252_crit_edge

if.then243.if.end252_crit_edge:                   ; preds = %if.then243
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end252

if.then249:                                       ; preds = %if.then243
  call void @__sanitizer_cov_trace_pc() #14
  %97 = ptrtoint ptr %max_in_flight247 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %add, ptr %max_in_flight247, align 4
  br label %if.end252

if.end252:                                        ; preds = %if.then249, %if.then243.if.end252_crit_edge
  %reconnect_instance253 = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 47
  %98 = ptrtoint ptr %reconnect_instance253 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %reconnect_instance253, align 4
  %100 = ptrtoint ptr %instance to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %instance, align 4
  br label %if.end254

if.end254:                                        ; preds = %if.end252, %if.end240.if.end254_crit_edge
  %101 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %call1, align 4
  %103 = ptrtoint ptr %in_flight135 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %in_flight135, align 8
  call void @_raw_spin_unlock(ptr noundef %req_lock) #12
  %CurrentMid257 = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 43
  %105 = ptrtoint ptr %CurrentMid257 to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %CurrentMid257, align 8
  %conn_id258 = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 2
  %107 = ptrtoint ptr %conn_id258 to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %conn_id258, align 8
  %hostname259 = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 8
  %109 = ptrtoint ptr %hostname259 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %hostname259, align 8
  %sub260 = sub i32 0, %num_credits
  call fastcc void @trace_smb3_add_credits(i64 noundef %106, i64 noundef %108, ptr noundef %110, i32 noundef %102, i32 noundef %sub260, i32 noundef %104)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %111 = load i32, ptr @cifsFYI, align 4
  %and263 = and i32 %111, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and263)
  %tobool264.not = icmp eq i32 %and263, 0
  br i1 %tobool264.not, label %if.end254.cleanup292_crit_edge, label %do.body266

if.end254.cleanup292_crit_edge:                   ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup292

do.body266:                                       ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wait_for_free_credits.descriptor.76, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wait_for_free_credits, %land.lhs.true278)) #12
          to label %cleanup292 [label %land.lhs.true278], !srcloc !197

land.lhs.true278:                                 ; preds = %do.body266
  %call279 = call i32 @___ratelimit(ptr noundef nonnull @wait_for_free_credits._rs.75, ptr noundef nonnull @.str.68) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call279)
  %tobool280.not = icmp eq i32 %call279, 0
  br i1 %tobool280.not, label %land.lhs.true278.cleanup292_crit_edge, label %if.then281

land.lhs.true278.cleanup292_crit_edge:            ; preds = %land.lhs.true278
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup292

if.then281:                                       ; preds = %land.lhs.true278
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wait_for_free_credits.descriptor.76, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.68, i32 noundef %num_credits, i32 noundef %102) #12
  br label %cleanup292

cleanup292:                                       ; preds = %if.then281, %land.lhs.true278.cleanup292_crit_edge, %do.body266, %if.end254.cleanup292_crit_edge, %do.end227, %if.end221.cleanup292_crit_edge, %if.end202.cleanup292_crit_edge, %if.else125.cleanup292_crit_edge, %do.end112, %if.end106.cleanup292_crit_edge, %if.end88.cleanup292_crit_edge, %if.then29, %land.lhs.true26.cleanup292_crit_edge, %do.body21, %if.end15.cleanup292_crit_edge, %if.end.cleanup292_crit_edge
  %retval.0 = phi i32 [ -11, %if.end.cleanup292_crit_edge ], [ 0, %if.end15.cleanup292_crit_edge ], [ 0, %land.lhs.true26.cleanup292_crit_edge ], [ 0, %if.then29 ], [ -16, %do.end112 ], [ -16, %if.end106.cleanup292_crit_edge ], [ -16, %do.end227 ], [ -16, %if.end221.cleanup292_crit_edge ], [ 0, %if.then281 ], [ 0, %land.lhs.true278.cleanup292_crit_edge ], [ 0, %if.end254.cleanup292_crit_edge ], [ 0, %do.body21 ], [ 0, %do.body266 ], [ -2, %if.else125.cleanup292_crit_edge ], [ %__ret.1, %if.end88.cleanup292_crit_edge ], [ %__ret141.1, %if.end202.cleanup292_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_smb3_add_credits(i64 noundef %currmid, i64 noundef %conn_id, ptr noundef %hostname, i32 noundef %credits, i32 noundef %credits_to_add, i32 noundef %in_flight) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_add_credits, i32 0, i32 1), ptr blockaddress(@trace_smb3_add_credits, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !197

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !187) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !200

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.49, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !187) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !218
  %call42 = tail call i32 @__traceiter_smb3_add_credits(ptr noundef null, i64 noundef %currmid, i64 noundef %conn_id, ptr noundef %hostname, i32 noundef %credits, i32 noundef %credits_to_add, i32 noundef %in_flight) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !219
  %13 = tail call i32 @llvm.read_register.i32(metadata !187) #12
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !187) #12
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !200

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.49, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !187) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !214
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_add_credits, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_add_credits, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_smb3_add_credits.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_smb3_add_credits.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.47, i32 noundef 1008, ptr noundef nonnull @.str.48) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !215
  %31 = tail call i32 @llvm.read_register.i32(metadata !187) #12
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_smb3_credit_timeout(i64 noundef %currmid, i64 noundef %conn_id, ptr noundef %hostname, i32 noundef %credits, i32 noundef %credits_to_add, i32 noundef %in_flight) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_credit_timeout, i32 0, i32 1), ptr blockaddress(@trace_smb3_credit_timeout, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !197

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !187) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !200

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.49, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !187) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !220
  %call42 = tail call i32 @__traceiter_smb3_credit_timeout(ptr noundef null, i64 noundef %currmid, i64 noundef %conn_id, ptr noundef %hostname, i32 noundef %credits, i32 noundef %credits_to_add, i32 noundef %in_flight) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !221
  %13 = tail call i32 @llvm.read_register.i32(metadata !187) #12
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !187) #12
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !200

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.49, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !187) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !214
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_credit_timeout, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_credit_timeout, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_smb3_credit_timeout.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_smb3_credit_timeout.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.47, i32 noundef 1005, ptr noundef nonnull @.str.48) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !215
  %31 = tail call i32 @llvm.read_register.i32(metadata !187) #12
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_smb3_add_credits(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_smb3_credit_timeout(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @smb3_free_compound_rqst(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_smb3_insufficient_credits(i64 noundef %currmid, i64 noundef %conn_id, ptr noundef %hostname, i32 noundef %credits, i32 noundef %credits_to_add) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_insufficient_credits, i32 0, i32 1), ptr blockaddress(@trace_smb3_insufficient_credits, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !197

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !187) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !200

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.49, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !187) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !222
  %call42 = tail call i32 @__traceiter_smb3_insufficient_credits(ptr noundef null, i64 noundef %currmid, i64 noundef %conn_id, ptr noundef %hostname, i32 noundef %credits, i32 noundef %credits_to_add, i32 noundef 0) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !223
  %13 = tail call i32 @llvm.read_register.i32(metadata !187) #12
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !187) #12
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !200

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.49, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div3.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !187) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !214
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_insufficient_credits, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_insufficient_credits, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_smb3_insufficient_credits.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_smb3_insufficient_credits.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.47, i32 noundef 1006, ptr noundef nonnull @.str.48) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !215
  %31 = tail call i32 @llvm.read_register.i32(metadata !187) #12
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_smb3_insufficient_credits(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !18, !20, !21, !22, !23, !24, !25, !27, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !71, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83, !84, !85, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !99, !101, !102, !104, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !124, !126, !127, !128, !129, !130, !132, !133, !134, !135, !137, !138, !140, !141, !142, !143, !145, !146, !147, !148, !150, !151, !152, !154, !155, !157, !158, !160, !161, !163, !164, !165, !166, !167, !169, !170, !171, !172, !174, !175, !177, !179, !180, !181, !182, !184, !185, !186}
!llvm.named.register.sp = !{!187}
!llvm.module.flags = !{!188, !189, !190, !191, !192, !193, !194, !195}
!llvm.ident = !{!196}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/cifs/transport.c", i32 46, i32 3}
!2 = !{ptr @AllocMidQEntry._rs, !1, !"_rs", i1 false, i1 false}
!3 = !{ptr @__func__.AllocMidQEntry, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @AllocMidQEntry._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @AllocMidQEntry._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @AllocMidQEntry._rs.3, !9, !"_rs", i1 false, i1 false}
!9 = !{!"../fs/cifs/transport.c", i32 56, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @AllocMidQEntry.descriptor, !9, !"descriptor", i1 false, i1 false}
!13 = !{ptr @SendReceiveNoRsp._rs, !14, !"_rs", i1 false, i1 false}
!14 = !{!"../fs/cifs/transport.c", i32 903, i32 2}
!15 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @SendReceiveNoRsp.descriptor, !14, !"descriptor", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/cifs/transport.c", i32 976, i32 4}
!20 = !{ptr @cifs_check_receive._rs, !19, !"_rs", i1 false, i1 false}
!21 = !{ptr @__func__.cifs_check_receive, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @cifs_check_receive._entry, !19, !"_entry", i1 false, i1 false}
!24 = !{ptr @cifs_check_receive._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @compound_send_recv._rs, !26, !"_rs", i1 false, i1 false}
!26 = !{!"../fs/cifs/transport.c", i32 1078, i32 3}
!27 = !{ptr @__func__.compound_send_recv, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @compound_send_recv._entry, !26, !"_entry", i1 false, i1 false}
!30 = !{ptr @compound_send_recv._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @compound_send_recv._rs.11, !32, !"_rs", i1 false, i1 false}
!32 = !{!"../fs/cifs/transport.c", i32 1209, i32 4}
!33 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @compound_send_recv.descriptor, !32, !"descriptor", i1 false, i1 false}
!35 = !{ptr @compound_send_recv._rs.13, !36, !"_rs", i1 false, i1 false}
!36 = !{!"../fs/cifs/transport.c", i32 1237, i32 4}
!37 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @compound_send_recv.descriptor.14, !36, !"descriptor", i1 false, i1 false}
!39 = !{ptr @SendReceive._rs, !40, !"_rs", i1 false, i1 false}
!40 = !{!"../fs/cifs/transport.c", i32 1355, i32 3}
!41 = !{ptr @__func__.SendReceive, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @SendReceive._entry, !40, !"_entry", i1 false, i1 false}
!44 = !{ptr @SendReceive._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @SendReceive._rs.17, !46, !"_rs", i1 false, i1 false}
!46 = !{!"../fs/cifs/transport.c", i32 1360, i32 3}
!47 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @SendReceive._entry.18, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @SendReceive._entry_ptr.20, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @SendReceive._rs.21, !51, !"_rs", i1 false, i1 false}
!51 = !{!"../fs/cifs/transport.c", i32 1376, i32 3}
!52 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @SendReceive._entry.22, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @SendReceive._entry_ptr.24, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @SendReceive._rs.25, !56, !"_rs", i1 false, i1 false}
!56 = !{!"../fs/cifs/transport.c", i32 1443, i32 3}
!57 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @SendReceive._entry.26, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @SendReceive._entry_ptr.28, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @SendReceiveBlockingLock._rs, !61, !"_rs", i1 false, i1 false}
!61 = !{!"../fs/cifs/transport.c", i32 1498, i32 3}
!62 = !{ptr @__func__.SendReceiveBlockingLock, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @SendReceiveBlockingLock._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @SendReceiveBlockingLock._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @SendReceiveBlockingLock._rs.29, !66, !"_rs", i1 false, i1 false}
!66 = !{!"../fs/cifs/transport.c", i32 1505, i32 3}
!67 = !{ptr @SendReceiveBlockingLock._entry.30, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @SendReceiveBlockingLock._entry_ptr.31, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @SendReceiveBlockingLock._rs.32, !70, !"_rs", i1 false, i1 false}
!70 = !{!"../fs/cifs/transport.c", i32 1521, i32 3}
!71 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @SendReceiveBlockingLock._entry.33, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @SendReceiveBlockingLock._entry_ptr.35, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @SendReceiveBlockingLock._rs.36, !75, !"_rs", i1 false, i1 false}
!75 = !{!"../fs/cifs/transport.c", i32 1627, i32 3}
!76 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @SendReceiveBlockingLock._entry.37, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @SendReceiveBlockingLock._entry_ptr.39, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @_cifs_mid_q_entry_release._rs, !80, !"_rs", i1 false, i1 false}
!80 = !{!"../fs/cifs/transport.c", i32 102, i32 3}
!81 = !{ptr @__func__._cifs_mid_q_entry_release, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @_cifs_mid_q_entry_release._entry, !80, !"_entry", i1 false, i1 false}
!84 = !{ptr @_cifs_mid_q_entry_release._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/cifs/transport.c", i32 141, i32 4}
!87 = !{ptr @_cifs_mid_q_entry_release.__UNIQUE_ID_ddebug678, !86, !"__UNIQUE_ID_ddebug678", i1 false, i1 false}
!88 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @_cifs_mid_q_entry_release._rs.43, !90, !"_rs", i1 false, i1 false}
!90 = !{!"../fs/cifs/transport.c", i32 143, i32 4}
!91 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @_cifs_mid_q_entry_release._entry.44, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @_cifs_mid_q_entry_release._entry_ptr.46, !90, !"_entry_ptr", i1 false, i1 false}
!94 = distinct !{null, !95, !"__already_done", i1 false, i1 false}
!95 = !{!"../fs/cifs/trace.h", i32 530, i32 1}
!96 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!97 = distinct !{null, !95, !"__warned", i1 false, i1 false}
!98 = !{ptr @.str.48, !95, !"<string literal>", i1 false, i1 false}
!99 = distinct !{null, !100, !"__already_done", i1 false, i1 false}
!100 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!101 = !{ptr @.str.49, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @__smb_send_rqst._rs, !103, !"_rs", i1 false, i1 false}
!103 = !{!"../fs/cifs/transport.c", i32 329, i32 3}
!104 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @__smb_send_rqst.descriptor, !103, !"descriptor", i1 false, i1 false}
!107 = !{ptr @__smb_send_rqst._rs.52, !108, !"_rs", i1 false, i1 false}
!108 = !{!"../fs/cifs/transport.c", i32 365, i32 2}
!109 = !{ptr @.str.54, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @__smb_send_rqst.descriptor.53, !108, !"descriptor", i1 false, i1 false}
!111 = !{ptr @__smb_send_rqst._rs.55, !112, !"_rs", i1 false, i1 false}
!112 = !{!"../fs/cifs/transport.c", i32 418, i32 3}
!113 = !{ptr @.str.57, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @__smb_send_rqst.descriptor.56, !112, !"descriptor", i1 false, i1 false}
!115 = !{ptr @__smb_send_rqst._rs.58, !116, !"_rs", i1 false, i1 false}
!116 = !{!"../fs/cifs/transport.c", i32 426, i32 3}
!117 = !{ptr @.str.60, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @__smb_send_rqst.descriptor.59, !116, !"descriptor", i1 false, i1 false}
!119 = !{ptr @__smb_send_rqst._rs.61, !120, !"_rs", i1 false, i1 false}
!120 = !{!"../fs/cifs/transport.c", i32 439, i32 3}
!121 = !{ptr @.str.62, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @__smb_send_rqst._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @__smb_send_rqst._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @smb_send_kvec._rs, !125, !"_rs", i1 false, i1 false}
!125 = !{!"../fs/cifs/transport.c", i32 232, i32 5}
!126 = !{ptr @__func__.smb_send_kvec, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.63, !125, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @smb_send_kvec._entry, !125, !"_entry", i1 false, i1 false}
!129 = !{ptr @smb_send_kvec._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @smb_send_kvec._rs.64, !131, !"_rs", i1 false, i1 false}
!131 = !{!"../fs/cifs/transport.c", i32 246, i32 4}
!132 = !{ptr @.str.66, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @smb_send_kvec._entry.65, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @smb_send_kvec._entry_ptr.67, !131, !"_entry_ptr", i1 false, i1 false}
!135 = distinct !{null, !136, !"__already_done", i1 false, i1 false}
!136 = !{!"../fs/cifs/trace.h", i32 957, i32 1}
!137 = distinct !{null, !136, !"__warned", i1 false, i1 false}
!138 = !{ptr @wait_for_free_credits._rs, !139, !"_rs", i1 false, i1 false}
!139 = !{!"../fs/cifs/transport.c", i32 547, i32 3}
!140 = !{ptr @.str.68, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.69, !139, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @wait_for_free_credits.descriptor, !139, !"descriptor", i1 false, i1 false}
!143 = !{ptr @wait_for_free_credits._rs.70, !144, !"_rs", i1 false, i1 false}
!144 = !{!"../fs/cifs/transport.c", i32 571, i32 5}
!145 = !{ptr @.str.71, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @wait_for_free_credits._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @wait_for_free_credits._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @wait_for_free_credits._rs.72, !149, !"_rs", i1 false, i1 false}
!149 = !{!"../fs/cifs/transport.c", i32 624, i32 6}
!150 = !{ptr @wait_for_free_credits._entry.73, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @wait_for_free_credits._entry_ptr.74, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @wait_for_free_credits._rs.75, !153, !"_rs", i1 false, i1 false}
!153 = !{!"../fs/cifs/transport.c", i32 654, i32 4}
!154 = !{ptr @wait_for_free_credits.descriptor.76, !153, !"descriptor", i1 false, i1 false}
!155 = distinct !{null, !156, !"__already_done", i1 false, i1 false}
!156 = !{!"../fs/cifs/trace.h", i32 1008, i32 1}
!157 = distinct !{null, !156, !"__warned", i1 false, i1 false}
!158 = distinct !{null, !159, !"__already_done", i1 false, i1 false}
!159 = !{!"../fs/cifs/trace.h", i32 1005, i32 1}
!160 = distinct !{null, !159, !"__warned", i1 false, i1 false}
!161 = !{ptr @smb_send_rqst._rs, !162, !"_rs", i1 false, i1 false}
!162 = !{!"../fs/cifs/transport.c", i32 463, i32 3}
!163 = !{ptr @__func__.smb_send_rqst, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @.str.77, !162, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @smb_send_rqst._entry, !162, !"_entry", i1 false, i1 false}
!166 = !{ptr @smb_send_rqst._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @wait_for_compound_request._rs, !168, !"_rs", i1 false, i1 false}
!168 = !{!"../fs/cifs/transport.c", i32 705, i32 4}
!169 = !{ptr @.str.78, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @.str.79, !168, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @wait_for_compound_request.descriptor, !168, !"descriptor", i1 false, i1 false}
!172 = distinct !{null, !173, !"__already_done", i1 false, i1 false}
!173 = !{!"../fs/cifs/trace.h", i32 1006, i32 1}
!174 = distinct !{null, !173, !"__warned", i1 false, i1 false}
!175 = !{ptr @.str.80, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../include/linux/freezer.h", i32 57, i32 2}
!177 = !{ptr @cifs_sync_mid_result._rs, !178, !"_rs", i1 false, i1 false}
!178 = !{!"../fs/cifs/transport.c", i32 913, i32 2}
!179 = !{ptr @.str.81, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @.str.82, !178, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @cifs_sync_mid_result.descriptor, !178, !"descriptor", i1 false, i1 false}
!182 = !{ptr @cifs_sync_mid_result._rs.83, !183, !"_rs", i1 false, i1 false}
!183 = !{!"../fs/cifs/transport.c", i32 935, i32 3}
!184 = !{ptr @.str.84, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @cifs_sync_mid_result._entry, !183, !"_entry", i1 false, i1 false}
!186 = !{ptr @cifs_sync_mid_result._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!187 = !{!"sp"}
!188 = !{i32 1, !"wchar_size", i32 2}
!189 = !{i32 1, !"min_enum_size", i32 4}
!190 = !{i32 8, !"branch-target-enforcement", i32 0}
!191 = !{i32 8, !"sign-return-address", i32 0}
!192 = !{i32 8, !"sign-return-address-all", i32 0}
!193 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!194 = !{i32 7, !"uwtable", i32 1}
!195 = !{i32 7, !"frame-pointer", i32 2}
!196 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!197 = !{i64 2148518862, i64 2148518867, i64 2148518880, i64 2148518924, i64 2148518958, i64 2148518979}
!198 = !{i64 2148695794, i64 2148695826, i64 2148695855, i64 2148695889, i64 2148695920, i64 2148695943}
!199 = !{!"branch_weights", i32 1, i32 2000}
!200 = !{!"branch_weights", i32 2000, i32 1}
!201 = !{i64 2148694264, i64 2148694290, i64 2148694319, i64 2148694353, i64 2148694384, i64 2148694407}
!202 = !{i64 2148783819}
!203 = !{i64 2148698259, i64 2148698291, i64 2148698320, i64 2148698354, i64 2148698385, i64 2148698408}
!204 = !{i64 2150404908}
!205 = !{i64 2148696729, i64 2148696755, i64 2148696784, i64 2148696818, i64 2148696849, i64 2148696872}
!206 = !{!"auto-init"}
!207 = !{i8 0, i8 2}
!208 = !{i64 2148779699}
!209 = !{i64 2148694984, i64 2148695016, i64 2148695045, i64 2148695079, i64 2148695110, i64 2148695133}
!210 = !{i64 2148779928}
!211 = !{i64 2153447460}
!212 = !{i64 2158674270}
!213 = !{i64 2158674537}
!214 = !{i64 2149515269}
!215 = !{i64 2149516305}
!216 = !{i64 2159013936}
!217 = !{i64 2159014205}
!218 = !{i64 2159140086}
!219 = !{i64 2159140405}
!220 = !{i64 2159077640}
!221 = !{i64 2159077965}
!222 = !{i64 2159097131}
!223 = !{i64 2159097468}
