; ModuleID = '/llk/IR_all_yes/fs/cifs/smb2transport.c_pt.bc'
source_filename = "../fs/cifs/smb2transport.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.108 }
%union.anon.108 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.TCP_Server_Info = type { %struct.list_head, %struct.list_head, i64, i32, [16 x i8], ptr, ptr, i32, ptr, ptr, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.list_head, i8, i8, i8, i8, i32, i32, i32, i32, %struct.spinlock, %struct.mutex, ptr, [16 x i8], i16, i8, i8, i8, i32, i32, i8, [16 x i8], i16, i8, i32, i32, i32, i32, i32, i64, [8 x i8], [16 x i8], i32, i32, %struct.session_key, i32, %struct.cifs_secmech, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.delayed_work, %struct.delayed_work, ptr, ptr, i32, i32, %struct.atomic_t, %struct.atomic_t, [19 x %struct.atomic_t], [19 x %struct.atomic_t], [19 x i64], [19 x i32], [19 x i32], i32, i32, i32, i16, i16, i16, [64 x i8], i8, i8, %struct.delayed_work, %struct.mutex, i32, i32, i8, ptr, i8, %struct.__kernel_sockaddr_storage, i8, %struct.mutex, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.session_key = type { i32, ptr }
%struct.cifs_secmech = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon.124 }
%union.anon.124 = type { ptr, [124 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.cifs_ses = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.mutex, ptr, i32, i32, i32, ptr, ptr, ptr, i64, %struct.kuid_t, %struct.kuid_t, i32, [49 x i8], ptr, ptr, ptr, ptr, %struct.session_key, ptr, i32, i8, i8, i16, [16 x i8], [32 x i8], [32 x i8], [64 x i8], %struct.spinlock, ptr, i32, i32, %struct.spinlock, [16 x %struct.cifs_chan], i32, i32, %struct.atomic_t, i32 }
%struct.kuid_t = type { i32 }
%struct.cifs_chan = type { ptr, [16 x i8] }
%struct.cifs_tcon = type { %struct.list_head, i32, %struct.list_head, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.spinlock, ptr, [1285 x i8], ptr, ptr, i32, i16, i32, %struct.atomic_t, %union.anon.126, i64, i64, %struct.spinlock, %struct.FILE_SYSTEM_DEVICE_INFO, %struct.FILE_SYSTEM_ATTRIBUTE_INFO, %struct.FILE_SYSTEM_UNIX_INFO, i16, i8, i8, i8, i8, i8, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i64, ptr, %struct.list_head, %struct.cached_fid, %struct.list_head }
%union.anon.126 = type { %struct.anon.128 }
%struct.anon.128 = type { [19 x %struct.atomic_t], [19 x %struct.atomic_t] }
%struct.FILE_SYSTEM_DEVICE_INFO = type { i32, i32 }
%struct.FILE_SYSTEM_ATTRIBUTE_INFO = type { i32, i32, i32, [52 x i8] }
%struct.FILE_SYSTEM_UNIX_INFO = type <{ i16, i16, i64 }>
%struct.cached_fid = type { i8, i32, %struct.kref, ptr, %struct.mutex, ptr, ptr, %struct.work_struct, %struct.smb2_file_all_info }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.smb2_file_all_info = type <{ i64, i64, i64, i64, i32, i32, i64, i64, i32, i8, i8, i16, i64, i32, i32, i64, i32, i32, i32, [1 x i8] }>
%struct.smb_rqst = type { ptr, i32, ptr, i32, i32, i32, i32 }
%struct.smb2_hdr = type { i32, i16, i16, i32, i16, i16, i32, i32, i64, %union.anon.154, i64, [16 x i8] }
%union.anon.154 = type { i64 }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.kvec = type { ptr, i32 }
%struct.derivation_triplet = type { %struct.derivation, %struct.derivation, %struct.derivation }
%struct.derivation = type { %struct.kvec, %struct.kvec }
%struct.smb_version_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mid_q_entry = type { %struct.list_head, %struct.kref, ptr, i64, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i32, i8 }
%struct.smb2_sess_setup_req = type <{ %struct.smb2_hdr, i16, i8, i8, i32, i32, i16, i16, i64, [1 x i8] }>
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.98, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%union.anon.98 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.anon.155 = type { i32, i32 }
%struct.crypto_aead = type { i32, i32, [120 x i8], %struct.crypto_tfm }

@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hmac(sha256)\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cmac(aes)\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sha512\00", [25 x i8] zeroinitializer }, align 32
@cifs_tcp_ses_lock = external dso_local global %struct.spinlock, align 4
@.str.3 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@smb2_calc_signature._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.smb2_calc_signature = private unnamed_addr constant [20 x i8] c"smb2_calc_signature\00", align 1
@smb2_calc_signature._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.smb2_calc_signature, ptr @.str.6, i32 229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013CIFS: VFS: \\\\%s %s: Could not find session\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fs/cifs/smb2transport.c\00", [40 x i8] zeroinitializer }, align 32
@smb2_calc_signature._entry_ptr = internal global ptr @smb2_calc_signature._entry, section ".printk_index", align 4
@smb2_calc_signature._rs.7 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb2_calc_signature._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @__func__.smb2_calc_signature, ptr @.str.6, i32 240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013CIFS: VFS: \\\\%s %s: sha256 alloc failed\0A\00", [53 x i8] zeroinitializer }, align 32
@smb2_calc_signature._entry_ptr.10 = internal global ptr @smb2_calc_signature._entry.8, section ".printk_index", align 4
@smb2_calc_signature._rs.11 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb2_calc_signature._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @__func__.smb2_calc_signature, ptr @.str.6, i32 254, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013CIFS: VFS: \\\\%s %s: Could not update with response\0A\00", [42 x i8] zeroinitializer }, align 32
@smb2_calc_signature._entry_ptr.14 = internal global ptr @smb2_calc_signature._entry.12, section ".printk_index", align 4
@smb2_calc_signature._rs.15 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb2_calc_signature._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @__func__.smb2_calc_signature, ptr @.str.6, i32 260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013CIFS: VFS: \\\\%s %s: Could not init sha256\00", [52 x i8] zeroinitializer }, align 32
@smb2_calc_signature._entry_ptr.18 = internal global ptr @smb2_calc_signature._entry.16, section ".printk_index", align 4
@smb2_calc_signature._rs.19 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb2_calc_signature._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @__func__.smb2_calc_signature, ptr @.str.6, i32 278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013CIFS: VFS: \\\\%s %s: Could not update with payload\0A\00", [43 x i8] zeroinitializer }, align 32
@smb2_calc_signature._entry_ptr.22 = internal global ptr @smb2_calc_signature._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SMB2AESCMAC\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SmbSign\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SMB2AESCCM\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ServerIn \00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ServerOut\00", [22 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SMBSigningKey\00", [18 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SMBC2SCipherKey\00", [16 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SMBS2CCipherKey\00", [16 x i8] zeroinitializer }, align 32
@smb3_calc_signature._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.smb3_calc_signature = private unnamed_addr constant [20 x i8] c"smb3_calc_signature\00", align 1
@smb3_calc_signature._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @__func__.smb3_calc_signature, ptr @.str.6, i32 579, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013CIFS: VFS: \\\\%s %s: Could not set key for cmac aes\0A\00", [42 x i8] zeroinitializer }, align 32
@smb3_calc_signature._entry_ptr = internal global ptr @smb3_calc_signature._entry, section ".printk_index", align 4
@smb3_calc_signature._rs.32 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb3_calc_signature._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @__func__.smb3_calc_signature, ptr @.str.6, i32 590, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013CIFS: VFS: \\\\%s %s: Could not init cmac aes\0A\00", [49 x i8] zeroinitializer }, align 32
@smb3_calc_signature._entry_ptr.35 = internal global ptr @smb3_calc_signature._entry.33, section ".printk_index", align 4
@smb3_calc_signature._rs.36 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb3_calc_signature._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @__func__.smb3_calc_signature, ptr @.str.6, i32 607, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smb3_calc_signature._entry_ptr.38 = internal global ptr @smb3_calc_signature._entry.37, section ".printk_index", align 4
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"BSRSPYL \00", [23 x i8] zeroinitializer }, align 32
@cifsFYI = external dso_local local_unnamed_addr global i32, align 4
@smb2_verify_signature._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb2_verify_signature.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.41, ptr @.str.6, ptr @.str.42, i8 0, i8 -86, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cifs\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"smb2_verify_signature\00", [42 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"CIFS: %s: dummy signature received for smb command 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@smb2_verify_signature._rs.43 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb2_verify_signature._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.41, ptr @.str.6, i32 699, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013CIFS: VFS: sign fail cmd 0x%x message id 0x%llx\0A\00", [45 x i8] zeroinitializer }, align 32
@smb2_verify_signature._entry_ptr = internal global ptr @smb2_verify_signature._entry, section ".printk_index", align 4
@smb2_check_receive._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.smb2_check_receive = private unnamed_addr constant [19 x i8] c"smb2_check_receive\00", align 1
@smb2_check_receive._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @__func__.smb2_check_receive, ptr @.str.6, i32 830, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013CIFS: VFS: \\\\%s SMB signature verification returned error = %d\0A\00", [62 x i8] zeroinitializer }, align 32
@smb2_check_receive._entry_ptr = internal global ptr @smb2_check_receive._entry, section ".printk_index", align 4
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gcm(aes)\00", [23 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ccm(aes)\00", [23 x i8] zeroinitializer }, align 32
@smb3_crypto_aead_allocate._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.smb3_crypto_aead_allocate = private unnamed_addr constant [26 x i8] c"smb3_crypto_aead_allocate\00", align 1
@smb3_crypto_aead_allocate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @__func__.smb3_crypto_aead_allocate, ptr @.str.6, i32 910, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013CIFS: VFS: \\\\%s %s: Failed alloc encrypt aead\0A\00", [47 x i8] zeroinitializer }, align 32
@smb3_crypto_aead_allocate._entry_ptr = internal global ptr @smb3_crypto_aead_allocate._entry, section ".printk_index", align 4
@smb3_crypto_aead_allocate._rs.49 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb3_crypto_aead_allocate._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @__func__.smb3_crypto_aead_allocate, ptr @.str.6, i32 926, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013CIFS: VFS: \\\\%s %s: Failed to alloc decrypt aead\0A\00", [44 x i8] zeroinitializer }, align 32
@smb3_crypto_aead_allocate._entry_ptr.52 = internal global ptr @smb3_crypto_aead_allocate._entry.50, section ".printk_index", align 4
@generate_smb3signingkey._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.generate_smb3signingkey = private unnamed_addr constant [24 x i8] c"generate_smb3signingkey\00", align 1
@generate_smb3signingkey._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @__func__.generate_smb3signingkey, ptr @.str.6, i32 458, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013CIFS: VFS: %s: dumping generated AES session keys\0A\00", [43 x i8] zeroinitializer }, align 32
@generate_smb3signingkey._entry_ptr = internal global ptr @generate_smb3signingkey._entry, section ".printk_index", align 4
@generate_smb3signingkey._rs.54 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@generate_smb3signingkey._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @__func__.generate_smb3signingkey, ptr @.str.6, i32 464, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013CIFS: VFS: Session Id    %*ph\0A\00", [63 x i8] zeroinitializer }, align 32
@generate_smb3signingkey._entry_ptr.57 = internal global ptr @generate_smb3signingkey._entry.55, section ".printk_index", align 4
@generate_smb3signingkey._rs.58 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@generate_smb3signingkey._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @__func__.generate_smb3signingkey, ptr @.str.6, i32 465, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013CIFS: VFS: Cipher type   %d\0A\00", [33 x i8] zeroinitializer }, align 32
@generate_smb3signingkey._entry_ptr.61 = internal global ptr @generate_smb3signingkey._entry.59, section ".printk_index", align 4
@generate_smb3signingkey._rs.62 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@generate_smb3signingkey._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @__func__.generate_smb3signingkey, ptr @.str.6, i32 467, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013CIFS: VFS: Session Key   %*ph\0A\00", [63 x i8] zeroinitializer }, align 32
@generate_smb3signingkey._entry_ptr.65 = internal global ptr @generate_smb3signingkey._entry.63, section ".printk_index", align 4
@generate_smb3signingkey._rs.66 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@generate_smb3signingkey._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @__func__.generate_smb3signingkey, ptr @.str.6, i32 469, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013CIFS: VFS: Signing Key   %*ph\0A\00", [63 x i8] zeroinitializer }, align 32
@generate_smb3signingkey._entry_ptr.69 = internal global ptr @generate_smb3signingkey._entry.67, section ".printk_index", align 4
@generate_smb3signingkey._rs.70 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@generate_smb3signingkey._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @__func__.generate_smb3signingkey, ptr @.str.6, i32 473, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013CIFS: VFS: ServerIn Key  %*ph\0A\00", [63 x i8] zeroinitializer }, align 32
@generate_smb3signingkey._entry_ptr.73 = internal global ptr @generate_smb3signingkey._entry.71, section ".printk_index", align 4
@generate_smb3signingkey._rs.74 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@generate_smb3signingkey._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @__func__.generate_smb3signingkey, ptr @.str.6, i32 475, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013CIFS: VFS: ServerOut Key %*ph\0A\00", [63 x i8] zeroinitializer }, align 32
@generate_smb3signingkey._entry_ptr.77 = internal global ptr @generate_smb3signingkey._entry.75, section ".printk_index", align 4
@generate_smb3signingkey._rs.78 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@generate_smb3signingkey._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @__func__.generate_smb3signingkey, ptr @.str.6, i32 478, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@generate_smb3signingkey._entry_ptr.80 = internal global ptr @generate_smb3signingkey._entry.79, section ".printk_index", align 4
@generate_smb3signingkey._rs.81 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@generate_smb3signingkey._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @__func__.generate_smb3signingkey, ptr @.str.6, i32 480, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@generate_smb3signingkey._entry_ptr.83 = internal global ptr @generate_smb3signingkey._entry.82, section ".printk_index", align 4
@generate_key._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.generate_key = private unnamed_addr constant [13 x i8] c"generate_key\00", align 1
@generate_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @__func__.generate_key, ptr @.str.6, i32 314, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013CIFS: VFS: \\\\%s %s: crypto alloc failed\0A\00", [53 x i8] zeroinitializer }, align 32
@generate_key._entry_ptr = internal global ptr @generate_key._entry, section ".printk_index", align 4
@generate_key._rs.85 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@generate_key._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @__func__.generate_key, ptr @.str.6, i32 321, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013CIFS: VFS: \\\\%s %s: Could not set with session key\0A\00", [42 x i8] zeroinitializer }, align 32
@generate_key._entry_ptr.88 = internal global ptr @generate_key._entry.86, section ".printk_index", align 4
@generate_key._rs.89 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@generate_key._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @__func__.generate_key, ptr @.str.6, i32 327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013CIFS: VFS: \\\\%s %s: Could not init sign hmac\0A\00", [48 x i8] zeroinitializer }, align 32
@generate_key._entry_ptr.92 = internal global ptr @generate_key._entry.90, section ".printk_index", align 4
@generate_key._rs.93 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@generate_key._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @__func__.generate_key, ptr @.str.6, i32 334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013CIFS: VFS: \\\\%s %s: Could not update with n\0A\00", [49 x i8] zeroinitializer }, align 32
@generate_key._entry_ptr.96 = internal global ptr @generate_key._entry.94, section ".printk_index", align 4
@generate_key._rs.97 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@generate_key._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @__func__.generate_key, ptr @.str.6, i32 341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013CIFS: VFS: \\\\%s %s: Could not update with label\0A\00", [45 x i8] zeroinitializer }, align 32
@generate_key._entry_ptr.100 = internal global ptr @generate_key._entry.98, section ".printk_index", align 4
@generate_key._rs.101 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@generate_key._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @__func__.generate_key, ptr @.str.6, i32 348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013CIFS: VFS: \\\\%s %s: Could not update with zero\0A\00", [46 x i8] zeroinitializer }, align 32
@generate_key._entry_ptr.104 = internal global ptr @generate_key._entry.102, section ".printk_index", align 4
@generate_key._rs.105 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@generate_key._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @__func__.generate_key, ptr @.str.6, i32 355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013CIFS: VFS: \\\\%s %s: Could not update with context\0A\00", [43 x i8] zeroinitializer }, align 32
@generate_key._entry_ptr.108 = internal global ptr @generate_key._entry.106, section ".printk_index", align 4
@generate_key._rs.109 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@generate_key._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @__func__.generate_key, ptr @.str.6, i32 368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013CIFS: VFS: \\\\%s %s: Could not update with L\0A\00", [49 x i8] zeroinitializer }, align 32
@generate_key._entry_ptr.112 = internal global ptr @generate_key._entry.110, section ".printk_index", align 4
@generate_key._rs.113 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@generate_key._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @__func__.generate_key, ptr @.str.6, i32 375, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013CIFS: VFS: \\\\%s %s: Could not generate sha256 hash\0A\00", [42 x i8] zeroinitializer }, align 32
@generate_key._entry_ptr.116 = internal global ptr @generate_key._entry.114, section ".printk_index", align 4
@cifs_tcp_ses_list = external dso_local global %struct.list_head, align 4
@smb2_get_sign_key._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.smb2_get_sign_key = private unnamed_addr constant [18 x i8] c"smb2_get_sign_key\00", align 1
@smb2_get_sign_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @__func__.smb2_get_sign_key, ptr @.str.6, i32 98, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013CIFS: VFS: \\\\%s %s: Could not find session 0x%llx\0A\00", [43 x i8] zeroinitializer }, align 32
@smb2_get_sign_key._entry_ptr = internal global ptr @smb2_get_sign_key._entry, section ".printk_index", align 4
@smb2_get_sign_key._rs.118 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb2_get_sign_key._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @__func__.smb2_get_sign_key, ptr @.str.6, i32 132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013CIFS: VFS: %s: Could not find channel signing key for session 0x%llx\0A\00", [56 x i8] zeroinitializer }, align 32
@smb2_get_sign_key._entry_ptr.121 = internal global ptr @smb2_get_sign_key._entry.119, section ".printk_index", align 4
@smb2_get_mid_entry._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb2_get_mid_entry.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.122, ptr @.str.6, ptr @.str.123, i8 0, i8 -63, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.122 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"smb2_get_mid_entry\00", [45 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"CIFS: %s: tcp session dead - return to caller to retry\0A\00", [40 x i8] zeroinitializer }, align 32
@GlobalMid_Lock = external dso_local global %struct.spinlock, align 4
@smb2_mid_entry_alloc._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.smb2_mid_entry_alloc = private unnamed_addr constant [21 x i8] c"smb2_mid_entry_alloc\00", align 1
@smb2_mid_entry_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @__func__.smb2_mid_entry_alloc, ptr @.str.6, i32 729, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013CIFS: VFS: Null TCP session in smb2_mid_entry_alloc\0A\00", [41 x i8] zeroinitializer }, align 32
@smb2_mid_entry_alloc._entry_ptr = internal global ptr @smb2_mid_entry_alloc._entry, section ".printk_index", align 4
@cifs_mid_poolp = external dso_local local_unnamed_addr global ptr, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@midCount = external dso_local global %struct.atomic_t, align 4
@__tracepoint_smb3_cmd_enter = external dso_local global %struct.tracepoint, align 4
@.str.126 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/cifs/trace.h\00", [16 x i8] zeroinitializer }, align 32
@trace_smb3_cmd_enter.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.127 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.128 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 768, i64 1024]
@__sancov_gen_cov_switch_values.129 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 256, i64 4608]
@__sancov_gen_cov_switch_values.130 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.131 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.132 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 256]
@__sancov_gen_cov_switch_values.133 = internal global [4 x i64] [i64 2, i64 16, i64 768, i64 1024]
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 57, i32 23 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 63, i32 23 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 67, i32 23 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 229, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 239, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 252, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 260, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 276, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 495, i32 22 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 497, i32 24 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 501, i32 22 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 503, i32 24 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 509, i32 24 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 524, i32 22 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 530, i32 22 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 536, i32 22 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 579, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 590, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 606, i32 4 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 680, i32 30 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 681, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 698, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 829, i32 4 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 905, i32 28 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 907, i32 28 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 909, i32 4 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 925, i32 4 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 458, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 463, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 465, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 466, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 468, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 472, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 474, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 477, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 479, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 314, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 321, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 327, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 334, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 341, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 348, i32 3 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 355, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 368, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 375, i32 3 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 97, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 130, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 772, i32 3 }
@___asan_gen_.485 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.488 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.492 = private constant [27 x i8] c"../fs/cifs/smb2transport.c\00", align 1
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 729, i32 3 }
@___asan_gen_.498 = private unnamed_addr constant [19 x i8] c"../fs/cifs/trace.h\00", align 1
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 491, i32 1 }
@___asan_gen_.500 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.501 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 108, i32 2 }
@llvm.compiler.used = appending global [156 x ptr] [ptr @generate_key._entry, ptr @generate_key._entry.102, ptr @generate_key._entry.106, ptr @generate_key._entry.110, ptr @generate_key._entry.114, ptr @generate_key._entry.86, ptr @generate_key._entry.90, ptr @generate_key._entry.94, ptr @generate_key._entry.98, ptr @generate_key._entry_ptr, ptr @generate_key._entry_ptr.100, ptr @generate_key._entry_ptr.104, ptr @generate_key._entry_ptr.108, ptr @generate_key._entry_ptr.112, ptr @generate_key._entry_ptr.116, ptr @generate_key._entry_ptr.88, ptr @generate_key._entry_ptr.92, ptr @generate_key._entry_ptr.96, ptr @generate_smb3signingkey._entry, ptr @generate_smb3signingkey._entry.55, ptr @generate_smb3signingkey._entry.59, ptr @generate_smb3signingkey._entry.63, ptr @generate_smb3signingkey._entry.67, ptr @generate_smb3signingkey._entry.71, ptr @generate_smb3signingkey._entry.75, ptr @generate_smb3signingkey._entry.79, ptr @generate_smb3signingkey._entry.82, ptr @generate_smb3signingkey._entry_ptr, ptr @generate_smb3signingkey._entry_ptr.57, ptr @generate_smb3signingkey._entry_ptr.61, ptr @generate_smb3signingkey._entry_ptr.65, ptr @generate_smb3signingkey._entry_ptr.69, ptr @generate_smb3signingkey._entry_ptr.73, ptr @generate_smb3signingkey._entry_ptr.77, ptr @generate_smb3signingkey._entry_ptr.80, ptr @generate_smb3signingkey._entry_ptr.83, ptr @smb2_calc_signature._entry, ptr @smb2_calc_signature._entry.12, ptr @smb2_calc_signature._entry.16, ptr @smb2_calc_signature._entry.20, ptr @smb2_calc_signature._entry.8, ptr @smb2_calc_signature._entry_ptr, ptr @smb2_calc_signature._entry_ptr.10, ptr @smb2_calc_signature._entry_ptr.14, ptr @smb2_calc_signature._entry_ptr.18, ptr @smb2_calc_signature._entry_ptr.22, ptr @smb2_check_receive._entry, ptr @smb2_check_receive._entry_ptr, ptr @smb2_get_sign_key._entry, ptr @smb2_get_sign_key._entry.119, ptr @smb2_get_sign_key._entry_ptr, ptr @smb2_get_sign_key._entry_ptr.121, ptr @smb2_mid_entry_alloc._entry, ptr @smb2_mid_entry_alloc._entry_ptr, ptr @smb2_verify_signature._entry, ptr @smb2_verify_signature._entry_ptr, ptr @smb3_calc_signature._entry, ptr @smb3_calc_signature._entry.33, ptr @smb3_calc_signature._entry.37, ptr @smb3_calc_signature._entry_ptr, ptr @smb3_calc_signature._entry_ptr.35, ptr @smb3_calc_signature._entry_ptr.38, ptr @smb3_crypto_aead_allocate._entry, ptr @smb3_crypto_aead_allocate._entry.50, ptr @smb3_crypto_aead_allocate._entry_ptr, ptr @smb3_crypto_aead_allocate._entry_ptr.52, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @smb2_calc_signature._rs, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @smb2_calc_signature._rs.7, ptr @.str.9, ptr @smb2_calc_signature._rs.11, ptr @.str.13, ptr @smb2_calc_signature._rs.15, ptr @.str.17, ptr @smb2_calc_signature._rs.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @smb3_calc_signature._rs, ptr @.str.31, ptr @smb3_calc_signature._rs.32, ptr @.str.34, ptr @smb3_calc_signature._rs.36, ptr @.str.39, ptr @smb2_verify_signature._rs, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @smb2_verify_signature._rs.43, ptr @.str.44, ptr @smb2_check_receive._rs, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @smb3_crypto_aead_allocate._rs, ptr @.str.48, ptr @smb3_crypto_aead_allocate._rs.49, ptr @.str.51, ptr @generate_smb3signingkey._rs, ptr @.str.53, ptr @generate_smb3signingkey._rs.54, ptr @.str.56, ptr @generate_smb3signingkey._rs.58, ptr @.str.60, ptr @generate_smb3signingkey._rs.62, ptr @.str.64, ptr @generate_smb3signingkey._rs.66, ptr @.str.68, ptr @generate_smb3signingkey._rs.70, ptr @.str.72, ptr @generate_smb3signingkey._rs.74, ptr @.str.76, ptr @generate_smb3signingkey._rs.78, ptr @generate_smb3signingkey._rs.81, ptr @generate_key._rs, ptr @.str.84, ptr @generate_key._rs.85, ptr @.str.87, ptr @generate_key._rs.89, ptr @.str.91, ptr @generate_key._rs.93, ptr @.str.95, ptr @generate_key._rs.97, ptr @.str.99, ptr @generate_key._rs.101, ptr @.str.103, ptr @generate_key._rs.105, ptr @.str.107, ptr @generate_key._rs.109, ptr @.str.111, ptr @generate_key._rs.113, ptr @.str.115, ptr @smb2_get_sign_key._rs, ptr @.str.117, ptr @smb2_get_sign_key._rs.118, ptr @.str.120, ptr @smb2_get_mid_entry._rs, ptr @.str.122, ptr @.str.123, ptr @smb2_mid_entry_alloc._rs, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128], section "llvm.metadata"
@0 = internal global [123 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_calc_signature._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_calc_signature._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_calc_signature._rs.7 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_calc_signature._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_calc_signature._rs.11 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_calc_signature._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_calc_signature._rs.15 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_calc_signature._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_calc_signature._rs.19 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_calc_signature._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_calc_signature._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_calc_signature._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_calc_signature._rs.32 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_calc_signature._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_calc_signature._rs.36 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_calc_signature._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_verify_signature._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_verify_signature._rs.43 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_verify_signature._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_check_receive._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_check_receive._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_crypto_aead_allocate._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_crypto_aead_allocate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_crypto_aead_allocate._rs.49 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_crypto_aead_allocate._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generate_smb3signingkey._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generate_smb3signingkey._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generate_smb3signingkey._rs.54 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generate_smb3signingkey._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generate_smb3signingkey._rs.58 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generate_smb3signingkey._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generate_smb3signingkey._rs.62 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generate_smb3signingkey._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generate_smb3signingkey._rs.66 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generate_smb3signingkey._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generate_smb3signingkey._rs.70 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generate_smb3signingkey._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generate_smb3signingkey._rs.74 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generate_smb3signingkey._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generate_smb3signingkey._rs.78 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generate_smb3signingkey._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generate_smb3signingkey._rs.81 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generate_smb3signingkey._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generate_key._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generate_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generate_key._rs.85 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generate_key._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generate_key._rs.89 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generate_key._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generate_key._rs.93 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generate_key._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generate_key._rs.97 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generate_key._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generate_key._rs.101 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generate_key._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generate_key._rs.105 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generate_key._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generate_key._rs.109 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generate_key._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generate_key._rs.113 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generate_key._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_get_sign_key._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_get_sign_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_get_sign_key._rs.118 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_get_sign_key._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_get_mid_entry._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_mid_entry_alloc._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_mid_entry_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smb311_crypto_shash_allocate(ptr noundef %server) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hmacsha256 = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 50, i32 2
  %sdeschmacsha256 = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 50, i32 7
  %call = tail call i32 @cifs_alloc_hash(ptr noundef nonnull @.str, ptr noundef %hmacsha256, ptr noundef %sdeschmacsha256) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmacaes = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 50, i32 3
  %sdesccmacaes = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 50, i32 8
  %call1 = tail call i32 @cifs_alloc_hash(ptr noundef nonnull @.str.1, ptr noundef %cmacaes, ptr noundef %sdesccmacaes) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.err_crit_edge

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end4:                                          ; preds = %if.end
  %sha512 = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 50, i32 4
  %sdescsha512 = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 50, i32 9
  %call5 = tail call i32 @cifs_alloc_hash(ptr noundef nonnull @.str.2, ptr noundef %sha512, ptr noundef %sdescsha512) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.end4.err_crit_edge

if.end4.err_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err:                                              ; preds = %if.end4.err_crit_edge, %if.end.err_crit_edge
  %rc.0 = phi i32 [ %call1, %if.end.err_crit_edge ], [ %call5, %if.end4.err_crit_edge ]
  tail call void @cifs_free_hash(ptr noundef %cmacaes, ptr noundef %sdesccmacaes) #9
  tail call void @cifs_free_hash(ptr noundef %hmacsha256, ptr noundef %sdeschmacsha256) #9
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %err ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_alloc_hash(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cifs_free_hash(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @smb2_find_smb_ses(ptr noundef readonly %server, i64 noundef %ses_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @cifs_tcp_ses_lock) #9
  %smb_ses_list.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %ses.0.in.i = phi ptr [ %smb_ses_list.i, %entry ], [ %ses.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %ses.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %ses.0.i = load ptr, ptr %ses.0.in.i, align 8
  %cmp.not.i = icmp eq ptr %ses.0.i, %smb_ses_list.i
  br i1 %cmp.not.i, label %for.cond.i.smb2_find_smb_ses_unlocked.exit_crit_edge, label %for.body.i

for.cond.i.smb2_find_smb_ses_unlocked.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %smb2_find_smb_ses_unlocked.exit

for.body.i:                                       ; preds = %for.cond.i
  %Suid.i = getelementptr inbounds %struct.cifs_ses, ptr %ses.0.i, i32 0, i32 12
  %1 = ptrtoint ptr %Suid.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %Suid.i, align 8
  %cmp3.not.i = icmp eq i64 %2, %ses_id
  br i1 %cmp3.not.i, label %if.end.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %ses_count.i = getelementptr inbounds %struct.cifs_ses, ptr %ses.0.i, i32 0, i32 6
  %3 = ptrtoint ptr %ses_count.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ses_count.i, align 4
  %inc.i = add i32 %4, 1
  store i32 %inc.i, ptr %ses_count.i, align 4
  br label %smb2_find_smb_ses_unlocked.exit

smb2_find_smb_ses_unlocked.exit:                  ; preds = %if.end.i, %for.cond.i.smb2_find_smb_ses_unlocked.exit_crit_edge
  %retval.0.i = phi ptr [ %ses.0.i, %if.end.i ], [ null, %for.cond.i.smb2_find_smb_ses_unlocked.exit_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cifs_tcp_ses_lock) #9
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @smb2_find_smb_tcon(ptr noundef readonly %server, i64 noundef %ses_id, i32 noundef %tid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @cifs_tcp_ses_lock) #9
  %smb_ses_list.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %ses.0.in.i = phi ptr [ %smb_ses_list.i, %entry ], [ %ses.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %ses.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %ses.0.i = load ptr, ptr %ses.0.in.i, align 8
  %cmp.not.i = icmp eq ptr %ses.0.i, %smb_ses_list.i
  br i1 %cmp.not.i, label %for.cond.i.if.then_crit_edge, label %for.body.i

for.cond.i.if.then_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.body.i:                                       ; preds = %for.cond.i
  %Suid.i = getelementptr inbounds %struct.cifs_ses, ptr %ses.0.i, i32 0, i32 12
  %1 = ptrtoint ptr %Suid.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %Suid.i, align 8
  %cmp3.not.i = icmp eq i64 %2, %ses_id
  br i1 %cmp3.not.i, label %smb2_find_smb_ses_unlocked.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

smb2_find_smb_ses_unlocked.exit:                  ; preds = %for.body.i
  %ses_count.i = getelementptr inbounds %struct.cifs_ses, ptr %ses.0.i, i32 0, i32 6
  %3 = ptrtoint ptr %ses_count.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ses_count.i, align 4
  %inc.i = add i32 %4, 1
  store i32 %inc.i, ptr %ses_count.i, align 4
  %tobool.not = icmp eq ptr %ses.0.i, null
  br i1 %tobool.not, label %smb2_find_smb_ses_unlocked.exit.if.then_crit_edge, label %if.end

smb2_find_smb_ses_unlocked.exit.if.then_crit_edge: ; preds = %smb2_find_smb_ses_unlocked.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %smb2_find_smb_ses_unlocked.exit.if.then_crit_edge, %for.cond.i.if.then_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cifs_tcp_ses_lock) #9
  br label %cleanup

if.end:                                           ; preds = %smb2_find_smb_ses_unlocked.exit
  %tcon_list.i = getelementptr inbounds %struct.cifs_ses, ptr %ses.0.i, i32 0, i32 2
  br label %for.cond.i11

for.cond.i11:                                     ; preds = %for.body.i12.for.cond.i11_crit_edge, %if.end
  %tcon.0.in.i = phi ptr [ %tcon_list.i, %if.end ], [ %tcon.0.i, %for.body.i12.for.cond.i11_crit_edge ]
  %5 = ptrtoint ptr %tcon.0.in.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %tcon.0.i = load ptr, ptr %tcon.0.in.i, align 8
  %cmp.not.i10 = icmp eq ptr %tcon.0.i, %tcon_list.i
  br i1 %cmp.not.i10, label %for.cond.i11.if.then3_crit_edge, label %for.body.i12

for.cond.i11.if.then3_crit_edge:                  ; preds = %for.cond.i11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

for.body.i12:                                     ; preds = %for.cond.i11
  %tid3.i = getelementptr inbounds %struct.cifs_tcon, ptr %tcon.0.i, i32 0, i32 11
  %6 = ptrtoint ptr %tid3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tid3.i, align 4
  %cmp4.not.i = icmp eq i32 %7, %tid
  br i1 %cmp4.not.i, label %smb2_find_smb_sess_tcon_unlocked.exit, label %for.body.i12.for.cond.i11_crit_edge

for.body.i12.for.cond.i11_crit_edge:              ; preds = %for.body.i12
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i11

smb2_find_smb_sess_tcon_unlocked.exit:            ; preds = %for.body.i12
  %tc_count.i = getelementptr inbounds %struct.cifs_tcon, ptr %tcon.0.i, i32 0, i32 1
  %8 = ptrtoint ptr %tc_count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tc_count.i, align 8
  %inc.i13 = add i32 %9, 1
  store i32 %inc.i13, ptr %tc_count.i, align 8
  %tobool2.not = icmp eq ptr %tcon.0.i, null
  br i1 %tobool2.not, label %smb2_find_smb_sess_tcon_unlocked.exit.if.then3_crit_edge, label %if.end4

smb2_find_smb_sess_tcon_unlocked.exit.if.then3_crit_edge: ; preds = %smb2_find_smb_sess_tcon_unlocked.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

if.then3:                                         ; preds = %smb2_find_smb_sess_tcon_unlocked.exit.if.then3_crit_edge, %for.cond.i11.if.then3_crit_edge
  tail call void @cifs_put_smb_ses(ptr noundef nonnull %ses.0.i) #9
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cifs_tcp_ses_lock) #9
  br label %cleanup

if.end4:                                          ; preds = %smb2_find_smb_sess_tcon_unlocked.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cifs_tcp_ses_lock) #9
  tail call void @cifs_put_smb_ses(ptr noundef nonnull %ses.0.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  %retval.0 = phi ptr [ %tcon.0.i, %if.end4 ], [ null, %if.then3 ], [ null, %if.then ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cifs_put_smb_ses(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smb2_calc_signature(ptr nocapture noundef readonly %rqst, ptr noundef %server, i1 noundef zeroext %allocate_crypto) local_unnamed_addr #0 align 64 {
entry:
  %smb2_signature = alloca [32 x i8], align 1
  %hash = alloca ptr, align 4
  %sdesc = alloca ptr, align 4
  %drqst = alloca %struct.smb_rqst, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %smb2_signature) #9
  %0 = call ptr @memset(ptr %smb2_signature, i32 255, i32 32)
  %1 = ptrtoint ptr %rqst to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rqst, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hash) #9
  %5 = ptrtoint ptr %hash to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %hash, align 4, !annotation !232
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sdesc) #9
  %6 = ptrtoint ptr %sdesc to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %sdesc, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %drqst) #9
  %7 = getelementptr inbounds %struct.smb_rqst, ptr %drqst, i32 0, i32 1
  %SessionId = getelementptr inbounds %struct.smb2_hdr, ptr %4, i32 0, i32 10
  %8 = call ptr @memset(ptr %drqst, i32 255, i32 28)
  %9 = ptrtoint ptr %SessionId to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %SessionId, align 1
  %11 = tail call i64 @llvm.bswap.i64(i64 %10)
  tail call void @_raw_spin_lock(ptr noundef nonnull @cifs_tcp_ses_lock) #9
  %smb_ses_list.i.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 1
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %entry
  %ses.0.in.i.i = phi ptr [ %smb_ses_list.i.i, %entry ], [ %ses.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %12 = ptrtoint ptr %ses.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %ses.0.i.i = load ptr, ptr %ses.0.in.i.i, align 8
  %cmp.not.i.i = icmp eq ptr %ses.0.i.i, %smb_ses_list.i.i
  br i1 %cmp.not.i.i, label %smb2_find_smb_ses.exit.thread, label %for.body.i.i

smb2_find_smb_ses.exit.thread:                    ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cifs_tcp_ses_lock) #9
  br label %do.body1

for.body.i.i:                                     ; preds = %for.cond.i.i
  %Suid.i.i = getelementptr inbounds %struct.cifs_ses, ptr %ses.0.i.i, i32 0, i32 12
  %13 = ptrtoint ptr %Suid.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %Suid.i.i, align 8
  %cmp3.not.i.i = icmp eq i64 %14, %11
  br i1 %cmp3.not.i.i, label %smb2_find_smb_ses.exit, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i

smb2_find_smb_ses.exit:                           ; preds = %for.body.i.i
  %ses_count.i.i = getelementptr inbounds %struct.cifs_ses, ptr %ses.0.i.i, i32 0, i32 6
  %15 = ptrtoint ptr %ses_count.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ses_count.i.i, align 4
  %inc.i.i = add i32 %16, 1
  store i32 %inc.i.i, ptr %ses_count.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cifs_tcp_ses_lock) #9
  %tobool.not = icmp eq ptr %ses.0.i.i, null
  br i1 %tobool.not, label %smb2_find_smb_ses.exit.do.body1_crit_edge, label %if.end16

smb2_find_smb_ses.exit.do.body1_crit_edge:        ; preds = %smb2_find_smb_ses.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body1

do.body1:                                         ; preds = %smb2_find_smb_ses.exit.do.body1_crit_edge, %smb2_find_smb_ses.exit.thread
  %tobool2.not = icmp eq ptr %server, null
  br i1 %tobool2.not, label %do.body1.if.end_crit_edge, label %land.lhs.true

do.body1.if.end_crit_edge:                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #11
  %hostname = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 8
  %17 = ptrtoint ptr %hostname to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hostname, align 8
  %tobool3.not = icmp eq ptr %18, null
  %spec.select = select i1 %tobool3.not, ptr @.str.3, ptr %18
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %do.body1.if.end_crit_edge
  %sn.0 = phi ptr [ @.str.3, %do.body1.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  %call6 = tail call i32 @___ratelimit(ptr noundef nonnull @smb2_calc_signature._rs, ptr noundef nonnull @__func__.smb2_calc_signature) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull %sn.0, ptr noundef nonnull @__func__.smb2_calc_signature) #12
  br label %cleanup

if.end16:                                         ; preds = %smb2_find_smb_ses.exit
  %19 = call ptr @memset(ptr %smb2_signature, i32 0, i32 32)
  %Signature = getelementptr inbounds %struct.smb2_hdr, ptr %4, i32 0, i32 11
  %20 = call ptr @memset(ptr %Signature, i32 0, i32 16)
  br i1 %allocate_crypto, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.end16
  %call21 = call i32 @cifs_alloc_hash(ptr noundef nonnull @.str, ptr noundef nonnull %hash, ptr noundef nonnull %sdesc) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then20.if.end51_crit_edge, label %do.body25

if.then20.if.end51_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

do.body25:                                        ; preds = %if.then20
  %tobool27.not = icmp eq ptr %server, null
  br i1 %tobool27.not, label %do.body25.if.end33_crit_edge, label %land.lhs.true28

do.body25.if.end33_crit_edge:                     ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

land.lhs.true28:                                  ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #11
  %hostname29 = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 8
  %21 = ptrtoint ptr %hostname29 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hostname29, align 8
  %tobool30.not = icmp eq ptr %22, null
  %spec.select206 = select i1 %tobool30.not, ptr @.str.3, ptr %22
  br label %if.end33

if.end33:                                         ; preds = %land.lhs.true28, %do.body25.if.end33_crit_edge
  %sn26.0 = phi ptr [ @.str.3, %do.body25.if.end33_crit_edge ], [ %spec.select206, %land.lhs.true28 ]
  %call34 = call i32 @___ratelimit(ptr noundef nonnull @smb2_calc_signature._rs.7, ptr noundef nonnull @__func__.smb2_calc_signature) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end33.if.then151_crit_edge, label %do.end39

if.end33.if.then151_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then151

do.end39:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull %sn26.0, ptr noundef nonnull @__func__.smb2_calc_signature) #12
  br label %if.then151

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %hmacsha256 = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 50, i32 2
  %23 = ptrtoint ptr %hmacsha256 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hmacsha256, align 4
  %25 = ptrtoint ptr %hash to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %hash, align 4
  %sdeschmacsha256 = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 50, i32 7
  br label %if.end51

if.end51:                                         ; preds = %if.else, %if.then20.if.end51_crit_edge
  %shash.0.in = phi ptr [ %sdeschmacsha256, %if.else ], [ %sdesc, %if.then20.if.end51_crit_edge ]
  %26 = ptrtoint ptr %shash.0.in to i32
  call void @__asan_load4_noabort(i32 %26)
  %shash.0 = load ptr, ptr %shash.0.in, align 4
  %27 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hash, align 4
  %response = getelementptr inbounds %struct.cifs_ses, ptr %ses.0.i.i, i32 0, i32 21, i32 1
  %29 = ptrtoint ptr %response to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %response, align 4
  %call52 = call i32 @crypto_shash_setkey(ptr noundef %28, ptr noundef %30, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end78, label %do.body56

do.body56:                                        ; preds = %if.end51
  %tobool58.not = icmp eq ptr %server, null
  br i1 %tobool58.not, label %do.body56.if.end64_crit_edge, label %land.lhs.true59

do.body56.if.end64_crit_edge:                     ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

land.lhs.true59:                                  ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #11
  %hostname60 = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 8
  %31 = ptrtoint ptr %hostname60 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hostname60, align 8
  %tobool61.not = icmp eq ptr %32, null
  %spec.select207 = select i1 %tobool61.not, ptr @.str.3, ptr %32
  br label %if.end64

if.end64:                                         ; preds = %land.lhs.true59, %do.body56.if.end64_crit_edge
  %sn57.0 = phi ptr [ @.str.3, %do.body56.if.end64_crit_edge ], [ %spec.select207, %land.lhs.true59 ]
  %call65 = call i32 @___ratelimit(ptr noundef nonnull @smb2_calc_signature._rs.11, ptr noundef nonnull @__func__.smb2_calc_signature) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end64.out_crit_edge, label %do.end70

if.end64.out_crit_edge:                           ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.end70:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  %call72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull %sn57.0, ptr noundef nonnull @__func__.smb2_calc_signature) #12
  br label %out

if.end78:                                         ; preds = %if.end51
  %33 = ptrtoint ptr %shash.0 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %shash.0, align 8
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %base.i.i.i, align 128
  %and.i = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %crypto_shash_init.exit, label %if.end78.do.body83_crit_edge

if.end78.do.body83_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body83

crypto_shash_init.exit:                           ; preds = %if.end78
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %34, i32 0, i32 2, i32 3
  %37 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %38, i32 -256
  %39 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call3.i = call i32 %40(ptr noundef %shash.0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool80.not = icmp eq i32 %call3.i, 0
  br i1 %tobool80.not, label %if.end105, label %crypto_shash_init.exit.do.body83_crit_edge

crypto_shash_init.exit.do.body83_crit_edge:       ; preds = %crypto_shash_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body83

do.body83:                                        ; preds = %crypto_shash_init.exit.do.body83_crit_edge, %if.end78.do.body83_crit_edge
  %retval.0.i215 = phi i32 [ %call3.i, %crypto_shash_init.exit.do.body83_crit_edge ], [ -126, %if.end78.do.body83_crit_edge ]
  %tobool85.not = icmp eq ptr %server, null
  br i1 %tobool85.not, label %do.body83.if.end91_crit_edge, label %land.lhs.true86

do.body83.if.end91_crit_edge:                     ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end91

land.lhs.true86:                                  ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #11
  %hostname87 = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 8
  %41 = ptrtoint ptr %hostname87 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hostname87, align 8
  %tobool88.not = icmp eq ptr %42, null
  %spec.select208 = select i1 %tobool88.not, ptr @.str.3, ptr %42
  br label %if.end91

if.end91:                                         ; preds = %land.lhs.true86, %do.body83.if.end91_crit_edge
  %sn84.0 = phi ptr [ @.str.3, %do.body83.if.end91_crit_edge ], [ %spec.select208, %land.lhs.true86 ]
  %call92 = call i32 @___ratelimit(ptr noundef nonnull @smb2_calc_signature._rs.15, ptr noundef nonnull @__func__.smb2_calc_signature) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end91.out_crit_edge, label %do.end97

if.end91.out_crit_edge:                           ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.end97:                                         ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  %call99 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull %sn84.0, ptr noundef nonnull @__func__.smb2_calc_signature) #12
  br label %out

if.end105:                                        ; preds = %crypto_shash_init.exit
  %43 = call ptr @memcpy(ptr %drqst, ptr %rqst, i32 28)
  %44 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp = icmp ugt i32 %45, 1
  br i1 %cmp, label %land.lhs.true106, label %if.end105.if.end143_crit_edge

if.end105.if.end143_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end143

land.lhs.true106:                                 ; preds = %if.end105
  %iov_len = getelementptr inbounds %struct.kvec, ptr %2, i32 0, i32 1
  %46 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %iov_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %47)
  %cmp108 = icmp eq i32 %47, 4
  br i1 %cmp108, label %if.then109, label %land.lhs.true106.if.end143_crit_edge

land.lhs.true106.if.end143_crit_edge:             ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end143

if.then109:                                       ; preds = %land.lhs.true106
  %48 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %2, align 4
  %call114 = call i32 @crypto_shash_update(ptr noundef %shash.0, ptr noundef %49, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %if.end140, label %do.body118

do.body118:                                       ; preds = %if.then109
  %tobool120.not = icmp eq ptr %server, null
  br i1 %tobool120.not, label %do.body118.if.end126_crit_edge, label %land.lhs.true121

do.body118.if.end126_crit_edge:                   ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end126

land.lhs.true121:                                 ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #11
  %hostname122 = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 8
  %50 = ptrtoint ptr %hostname122 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hostname122, align 8
  %tobool123.not = icmp eq ptr %51, null
  %spec.select209 = select i1 %tobool123.not, ptr @.str.3, ptr %51
  br label %if.end126

if.end126:                                        ; preds = %land.lhs.true121, %do.body118.if.end126_crit_edge
  %sn119.0 = phi ptr [ @.str.3, %do.body118.if.end126_crit_edge ], [ %spec.select209, %land.lhs.true121 ]
  %call127 = call i32 @___ratelimit(ptr noundef nonnull @smb2_calc_signature._rs.19, ptr noundef nonnull @__func__.smb2_calc_signature) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %if.end126.out_crit_edge, label %do.end132

if.end126.out_crit_edge:                          ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.end132:                                        ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #11
  %call134 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull %sn119.0, ptr noundef nonnull @__func__.smb2_calc_signature) #12
  br label %out

if.end140:                                        ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %drqst to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %drqst, align 4
  %incdec.ptr = getelementptr %struct.kvec, ptr %53, i32 1
  store ptr %incdec.ptr, ptr %drqst, align 4
  %54 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %7, align 4
  %dec = add i32 %55, -1
  store i32 %dec, ptr %7, align 4
  br label %if.end143

if.end143:                                        ; preds = %if.end140, %land.lhs.true106.if.end143_crit_edge, %if.end105.if.end143_crit_edge
  %call144 = call i32 @__cifs_calc_signature(ptr noundef nonnull %drqst, ptr noundef %server, ptr noundef nonnull %smb2_signature, ptr noundef %shash.0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %if.then146, label %if.end143.out_crit_edge

if.end143.out_crit_edge:                          ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then146:                                       ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #11
  %56 = call ptr @memcpy(ptr %Signature, ptr %smb2_signature, i32 16)
  br label %out

out:                                              ; preds = %if.then146, %if.end143.out_crit_edge, %do.end132, %if.end126.out_crit_edge, %do.end97, %if.end91.out_crit_edge, %do.end70, %if.end64.out_crit_edge
  %rc.0 = phi i32 [ %call144, %if.end143.out_crit_edge ], [ 0, %if.then146 ], [ %call52, %do.end70 ], [ %call52, %if.end64.out_crit_edge ], [ %retval.0.i215, %do.end97 ], [ %retval.0.i215, %if.end91.out_crit_edge ], [ %call114, %do.end132 ], [ %call114, %if.end126.out_crit_edge ]
  br i1 %allocate_crypto, label %out.if.then151_crit_edge, label %out.if.then154_crit_edge

out.if.then154_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then154

out.if.then151_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then151

if.then151:                                       ; preds = %out.if.then151_crit_edge, %do.end39, %if.end33.if.then151_crit_edge
  %rc.0221 = phi i32 [ %rc.0, %out.if.then151_crit_edge ], [ %call21, %if.end33.if.then151_crit_edge ], [ %call21, %do.end39 ]
  call void @cifs_free_hash(ptr noundef nonnull %hash, ptr noundef nonnull %sdesc) #9
  br label %if.then154

if.then154:                                       ; preds = %if.then151, %out.if.then154_crit_edge
  %rc.0220 = phi i32 [ %rc.0, %out.if.then154_crit_edge ], [ %rc.0221, %if.then151 ]
  call void @cifs_put_smb_ses(ptr noundef nonnull %ses.0.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then154, %do.end, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0220, %if.then154 ], [ 0, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %drqst) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sdesc) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hash) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %smb2_signature) #9
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cifs_calc_signature(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @generate_smb30signingkey(ptr noundef %ses, ptr noundef %server) local_unnamed_addr #0 align 64 {
entry:
  %triplet = alloca %struct.derivation_triplet, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %triplet) #9
  %0 = ptrtoint ptr %triplet to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @.str.23, ptr %triplet, align 4
  %iov_len = getelementptr inbounds %struct.kvec, ptr %triplet, i32 0, i32 1
  %1 = ptrtoint ptr %iov_len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 12, ptr %iov_len, align 4
  %context = getelementptr inbounds %struct.derivation, ptr %triplet, i32 0, i32 1
  %2 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.24, ptr %context, align 4
  %iov_len4 = getelementptr inbounds %struct.derivation, ptr %triplet, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %iov_len4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 8, ptr %iov_len4, align 4
  %encryption = getelementptr inbounds %struct.derivation_triplet, ptr %triplet, i32 0, i32 1
  %4 = ptrtoint ptr %encryption to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.25, ptr %encryption, align 4
  %iov_len8 = getelementptr inbounds %struct.derivation_triplet, ptr %triplet, i32 0, i32 1, i32 0, i32 1
  %5 = ptrtoint ptr %iov_len8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 11, ptr %iov_len8, align 4
  %context9 = getelementptr inbounds %struct.derivation_triplet, ptr %triplet, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %context9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.26, ptr %context9, align 4
  %iov_len12 = getelementptr inbounds %struct.derivation_triplet, ptr %triplet, i32 0, i32 1, i32 1, i32 1
  %7 = ptrtoint ptr %iov_len12 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 10, ptr %iov_len12, align 4
  %decryption = getelementptr inbounds %struct.derivation_triplet, ptr %triplet, i32 0, i32 2
  %8 = ptrtoint ptr %decryption to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.25, ptr %decryption, align 4
  %iov_len16 = getelementptr inbounds %struct.derivation_triplet, ptr %triplet, i32 0, i32 2, i32 0, i32 1
  %9 = ptrtoint ptr %iov_len16 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 11, ptr %iov_len16, align 4
  %context17 = getelementptr inbounds %struct.derivation_triplet, ptr %triplet, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %context17 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.27, ptr %context17, align 4
  %iov_len20 = getelementptr inbounds %struct.derivation_triplet, ptr %triplet, i32 0, i32 2, i32 1, i32 1
  %11 = ptrtoint ptr %iov_len20 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 10, ptr %iov_len20, align 4
  %call = call fastcc i32 @generate_smb3signingkey(ptr noundef %ses, ptr noundef %server, ptr noundef nonnull %triplet)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %triplet) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @generate_smb3signingkey(ptr noundef %ses, ptr noundef %server, ptr nocapture noundef readonly %ptriplet) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chan_lock = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 35
  tail call void @_raw_spin_lock(ptr noundef %chan_lock) #9
  %chans_need_reconnect = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 40
  %0 = ptrtoint ptr %chans_need_reconnect to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chans_need_reconnect, align 4
  %chan_count = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 37
  %2 = ptrtoint ptr %chan_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan_count, align 8
  %notmask = shl nsw i32 -1, %3
  %sub = xor i32 %notmask, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %sub)
  %cmp.not = icmp eq i32 %1, %sub
  %call = tail call i32 @cifs_ses_get_chan_index(ptr noundef %ses, ptr noundef %server) #9
  tail call void @_raw_spin_unlock(ptr noundef %chan_lock) #9
  %context9 = getelementptr inbounds %struct.derivation, ptr %ptriplet, i32 0, i32 1
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %signkey = getelementptr %struct.cifs_ses, ptr %ses, i32 0, i32 36, i32 %call, i32 1
  %4 = ptrtoint ptr %ptriplet to i32
  call void @__asan_load4_noabort(i32 %4)
  %.unpack252 = load i32, ptr %ptriplet, align 4
  %5 = insertvalue [2 x i32] undef, i32 %.unpack252, 0
  %.elt253 = getelementptr inbounds [2 x i32], ptr %ptriplet, i32 0, i32 1
  %6 = ptrtoint ptr %.elt253 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.unpack254 = load i32, ptr %.elt253, align 4
  %7 = insertvalue [2 x i32] %5, i32 %.unpack254, 1
  %8 = ptrtoint ptr %context9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.unpack255 = load i32, ptr %context9, align 4
  %9 = insertvalue [2 x i32] undef, i32 %.unpack255, 0
  %.elt256 = getelementptr inbounds %struct.derivation, ptr %ptriplet, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %.elt256 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.unpack257 = load i32, ptr %.elt256, align 4
  %11 = insertvalue [2 x i32] %9, i32 %.unpack257, 1
  %call3 = tail call fastcc i32 @generate_key(ptr noundef %ses, [2 x i32] %7, [2 x i32] %11, ptr noundef %signkey, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then.do.body40_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.do.body40_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body40

if.else:                                          ; preds = %entry
  %smb3signingkey = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 27
  %12 = ptrtoint ptr %ptriplet to i32
  call void @__asan_load4_noabort(i32 %12)
  %.unpack = load i32, ptr %ptriplet, align 4
  %13 = insertvalue [2 x i32] undef, i32 %.unpack, 0
  %.elt235 = getelementptr inbounds [2 x i32], ptr %ptriplet, i32 0, i32 1
  %14 = ptrtoint ptr %.elt235 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.unpack236 = load i32, ptr %.elt235, align 4
  %15 = insertvalue [2 x i32] %13, i32 %.unpack236, 1
  %16 = ptrtoint ptr %context9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.unpack237 = load i32, ptr %context9, align 4
  %17 = insertvalue [2 x i32] undef, i32 %.unpack237, 0
  %.elt238 = getelementptr inbounds %struct.derivation, ptr %ptriplet, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %.elt238 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.unpack239 = load i32, ptr %.elt238, align 4
  %19 = insertvalue [2 x i32] %17, i32 %.unpack239, 1
  %call11 = tail call fastcc i32 @generate_key(ptr noundef %ses, [2 x i32] %15, [2 x i32] %19, ptr noundef %smb3signingkey, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %if.else
  tail call void @_raw_spin_lock(ptr noundef %chan_lock) #9
  %signkey18 = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 36, i32 0, i32 1
  %20 = call ptr @memcpy(ptr %signkey18, ptr %smb3signingkey, i32 16)
  tail call void @_raw_spin_unlock(ptr noundef %chan_lock) #9
  %encryption = getelementptr inbounds %struct.derivation_triplet, ptr %ptriplet, i32 0, i32 1
  %context25 = getelementptr inbounds %struct.derivation_triplet, ptr %ptriplet, i32 0, i32 1, i32 1
  %smb3encryptionkey = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 28
  %21 = ptrtoint ptr %encryption to i32
  call void @__asan_load4_noabort(i32 %21)
  %.unpack240 = load i32, ptr %encryption, align 4
  %22 = insertvalue [2 x i32] undef, i32 %.unpack240, 0
  %.elt241 = getelementptr inbounds %struct.derivation_triplet, ptr %ptriplet, i32 0, i32 1, i32 0, i32 1
  %23 = ptrtoint ptr %.elt241 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.unpack242 = load i32, ptr %.elt241, align 4
  %24 = insertvalue [2 x i32] %22, i32 %.unpack242, 1
  %25 = ptrtoint ptr %context25 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.unpack243 = load i32, ptr %context25, align 4
  %26 = insertvalue [2 x i32] undef, i32 %.unpack243, 0
  %.elt244 = getelementptr inbounds %struct.derivation_triplet, ptr %ptriplet, i32 0, i32 1, i32 1, i32 1
  %27 = ptrtoint ptr %.elt244 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.unpack245 = load i32, ptr %.elt244, align 4
  %28 = insertvalue [2 x i32] %26, i32 %.unpack245, 1
  %call27 = tail call fastcc i32 @generate_key(ptr noundef %ses, [2 x i32] %24, [2 x i32] %28, ptr noundef %smb3encryptionkey, i32 noundef 32)
  %decryption = getelementptr inbounds %struct.derivation_triplet, ptr %ptriplet, i32 0, i32 2
  %context30 = getelementptr inbounds %struct.derivation_triplet, ptr %ptriplet, i32 0, i32 2, i32 1
  %smb3decryptionkey = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 29
  %29 = ptrtoint ptr %decryption to i32
  call void @__asan_load4_noabort(i32 %29)
  %.unpack246 = load i32, ptr %decryption, align 4
  %30 = insertvalue [2 x i32] undef, i32 %.unpack246, 0
  %.elt247 = getelementptr inbounds %struct.derivation_triplet, ptr %ptriplet, i32 0, i32 2, i32 0, i32 1
  %31 = ptrtoint ptr %.elt247 to i32
  call void @__asan_load4_noabort(i32 %31)
  %.unpack248 = load i32, ptr %.elt247, align 4
  %32 = insertvalue [2 x i32] %30, i32 %.unpack248, 1
  %33 = ptrtoint ptr %context30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %.unpack249 = load i32, ptr %context30, align 4
  %34 = insertvalue [2 x i32] undef, i32 %.unpack249, 0
  %.elt250 = getelementptr inbounds %struct.derivation_triplet, ptr %ptriplet, i32 0, i32 2, i32 1, i32 1
  %35 = ptrtoint ptr %.elt250 to i32
  call void @__asan_load4_noabort(i32 %35)
  %.unpack251 = load i32, ptr %.elt250, align 4
  %36 = insertvalue [2 x i32] %34, i32 %.unpack251, 1
  %call32 = tail call fastcc i32 @generate_key(ptr noundef %ses, [2 x i32] %32, [2 x i32] %36, ptr noundef %smb3decryptionkey, i32 noundef 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end14.do.body40_crit_edge, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14.do.body40_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body40

do.body40:                                        ; preds = %if.end14.do.body40_crit_edge, %if.then.do.body40_crit_edge
  %call41 = tail call i32 @___ratelimit(ptr noundef nonnull @generate_smb3signingkey._rs, ptr noundef nonnull @__func__.generate_smb3signingkey) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %do.body40.do.body52_crit_edge, label %do.end

do.body40.do.body52_crit_edge:                    ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body52

do.end:                                           ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #11
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @__func__.generate_smb3signingkey) #12
  br label %do.body52

do.body52:                                        ; preds = %do.end, %do.body40.do.body52_crit_edge
  %call53 = tail call i32 @___ratelimit(ptr noundef nonnull @generate_smb3signingkey._rs.54, ptr noundef nonnull @__func__.generate_smb3signingkey) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %do.body52.do.body67_crit_edge, label %do.end58

do.body52.do.body67_crit_edge:                    ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body67

do.end58:                                         ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #11
  %Suid = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 12
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef 8, ptr noundef %Suid) #12
  br label %do.body67

do.body67:                                        ; preds = %do.end58, %do.body52.do.body67_crit_edge
  %call68 = tail call i32 @___ratelimit(ptr noundef nonnull @generate_smb3signingkey._rs.58, ptr noundef nonnull @__func__.generate_smb3signingkey) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %do.body67.do.body82_crit_edge, label %do.end73

do.body67.do.body82_crit_edge:                    ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body82

do.end73:                                         ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #11
  %cipher_type = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 77
  %37 = ptrtoint ptr %cipher_type to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %cipher_type, align 8
  %conv = zext i16 %38 to i32
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, i32 noundef %conv) #12
  br label %do.body82

do.body82:                                        ; preds = %do.end73, %do.body67.do.body82_crit_edge
  %call83 = tail call i32 @___ratelimit(ptr noundef nonnull @generate_smb3signingkey._rs.62, ptr noundef nonnull @__func__.generate_smb3signingkey) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %do.body82.do.body97_crit_edge, label %do.end88

do.body82.do.body97_crit_edge:                    ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body97

do.end88:                                         ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #11
  %response = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 21, i32 1
  %39 = ptrtoint ptr %response to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %response, align 4
  %call90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef 16, ptr noundef %40) #12
  br label %do.body97

do.body97:                                        ; preds = %do.end88, %do.body82.do.body97_crit_edge
  %call98 = tail call i32 @___ratelimit(ptr noundef nonnull @generate_smb3signingkey._rs.66, ptr noundef nonnull @__func__.generate_smb3signingkey) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %do.body97.do.end112_crit_edge, label %do.end103

do.body97.do.end112_crit_edge:                    ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end112

do.end103:                                        ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #11
  %smb3signingkey105 = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 27
  %call107 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, i32 noundef 16, ptr noundef %smb3signingkey105) #12
  br label %do.end112

do.end112:                                        ; preds = %do.end103, %do.body97.do.end112_crit_edge
  %cipher_type113 = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 77
  %41 = ptrtoint ptr %cipher_type113 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %cipher_type113, align 8
  %43 = zext i16 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values)
  switch i16 %42, label %do.body158 [
    i16 768, label %do.end112.do.body123_crit_edge
    i16 1024, label %do.end112.do.body123_crit_edge258
  ]

do.end112.do.body123_crit_edge258:                ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body123

do.end112.do.body123_crit_edge:                   ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body123

do.body123:                                       ; preds = %do.end112.do.body123_crit_edge, %do.end112.do.body123_crit_edge258
  %call124 = tail call i32 @___ratelimit(ptr noundef nonnull @generate_smb3signingkey._rs.70, ptr noundef nonnull @__func__.generate_smb3signingkey) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %do.body123.do.body140_crit_edge, label %do.end129

do.body123.do.body140_crit_edge:                  ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body140

do.end129:                                        ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #11
  %smb3encryptionkey131 = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 28
  %call133 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, i32 noundef 32, ptr noundef %smb3encryptionkey131) #12
  br label %do.body140

do.body140:                                       ; preds = %do.end129, %do.body123.do.body140_crit_edge
  %call141 = tail call i32 @___ratelimit(ptr noundef nonnull @generate_smb3signingkey._rs.74, ptr noundef nonnull @__func__.generate_smb3signingkey) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141)
  %tobool142.not = icmp eq i32 %call141, 0
  br i1 %tobool142.not, label %do.body140.cleanup_crit_edge, label %do.body140.cleanup.sink.split_crit_edge

do.body140.cleanup.sink.split_crit_edge:          ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

do.body140.cleanup_crit_edge:                     ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body158:                                       ; preds = %do.end112
  %call159 = tail call i32 @___ratelimit(ptr noundef nonnull @generate_smb3signingkey._rs.78, ptr noundef nonnull @__func__.generate_smb3signingkey) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159)
  %tobool160.not = icmp eq i32 %call159, 0
  br i1 %tobool160.not, label %do.body158.do.body175_crit_edge, label %do.end164

do.body158.do.body175_crit_edge:                  ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body175

do.end164:                                        ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #11
  %smb3encryptionkey166 = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 28
  %call168 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, i32 noundef 16, ptr noundef %smb3encryptionkey166) #12
  br label %do.body175

do.body175:                                       ; preds = %do.end164, %do.body158.do.body175_crit_edge
  %call176 = tail call i32 @___ratelimit(ptr noundef nonnull @generate_smb3signingkey._rs.81, ptr noundef nonnull @__func__.generate_smb3signingkey) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call176)
  %tobool177.not = icmp eq i32 %call176, 0
  br i1 %tobool177.not, label %do.body175.cleanup_crit_edge, label %do.body175.cleanup.sink.split_crit_edge

do.body175.cleanup.sink.split_crit_edge:          ; preds = %do.body175
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

do.body175.cleanup_crit_edge:                     ; preds = %do.body175
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.sink.split:                               ; preds = %do.body175.cleanup.sink.split_crit_edge, %do.body140.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 32, %do.body140.cleanup.sink.split_crit_edge ], [ 16, %do.body175.cleanup.sink.split_crit_edge ]
  %smb3decryptionkey148 = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 29
  %call150 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, i32 noundef %.sink, ptr noundef %smb3decryptionkey148) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body175.cleanup_crit_edge, %do.body140.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then.cleanup_crit_edge ], [ %call11, %if.else.cleanup_crit_edge ], [ %call32, %if.end14.cleanup_crit_edge ], [ 0, %do.body175.cleanup_crit_edge ], [ 0, %do.body140.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @generate_smb311signingkey(ptr noundef %ses, ptr noundef %server) local_unnamed_addr #0 align 64 {
entry:
  %triplet = alloca %struct.derivation_triplet, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %triplet) #9
  %0 = ptrtoint ptr %triplet to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @.str.28, ptr %triplet, align 4
  %iov_len = getelementptr inbounds %struct.kvec, ptr %triplet, i32 0, i32 1
  %1 = ptrtoint ptr %iov_len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 14, ptr %iov_len, align 4
  %preauth_sha_hash = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 30
  %context = getelementptr inbounds %struct.derivation, ptr %triplet, i32 0, i32 1
  %2 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %preauth_sha_hash, ptr %context, align 4
  %iov_len4 = getelementptr inbounds %struct.derivation, ptr %triplet, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %iov_len4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 64, ptr %iov_len4, align 4
  %encryption = getelementptr inbounds %struct.derivation_triplet, ptr %triplet, i32 0, i32 1
  %4 = ptrtoint ptr %encryption to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.29, ptr %encryption, align 4
  %iov_len8 = getelementptr inbounds %struct.derivation_triplet, ptr %triplet, i32 0, i32 1, i32 0, i32 1
  %5 = ptrtoint ptr %iov_len8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 16, ptr %iov_len8, align 4
  %context11 = getelementptr inbounds %struct.derivation_triplet, ptr %triplet, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %context11 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %preauth_sha_hash, ptr %context11, align 4
  %iov_len14 = getelementptr inbounds %struct.derivation_triplet, ptr %triplet, i32 0, i32 1, i32 1, i32 1
  %7 = ptrtoint ptr %iov_len14 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 64, ptr %iov_len14, align 4
  %decryption = getelementptr inbounds %struct.derivation_triplet, ptr %triplet, i32 0, i32 2
  %8 = ptrtoint ptr %decryption to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.30, ptr %decryption, align 4
  %iov_len18 = getelementptr inbounds %struct.derivation_triplet, ptr %triplet, i32 0, i32 2, i32 0, i32 1
  %9 = ptrtoint ptr %iov_len18 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 16, ptr %iov_len18, align 4
  %context21 = getelementptr inbounds %struct.derivation_triplet, ptr %triplet, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %context21 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %preauth_sha_hash, ptr %context21, align 4
  %iov_len24 = getelementptr inbounds %struct.derivation_triplet, ptr %triplet, i32 0, i32 2, i32 1, i32 1
  %11 = ptrtoint ptr %iov_len24 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 64, ptr %iov_len24, align 4
  %call = call fastcc i32 @generate_smb3signingkey(ptr noundef %ses, ptr noundef %server, ptr noundef nonnull %triplet)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %triplet) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smb3_calc_signature(ptr nocapture noundef readonly %rqst, ptr noundef %server, i1 noundef zeroext %allocate_crypto) local_unnamed_addr #0 align 64 {
entry:
  %smb3_signature = alloca [16 x i8], align 1
  %hash = alloca ptr, align 4
  %sdesc = alloca ptr, align 4
  %drqst = alloca %struct.smb_rqst, align 4
  %key = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %smb3_signature) #9
  %0 = call ptr @memset(ptr %smb3_signature, i32 255, i32 16)
  %1 = ptrtoint ptr %rqst to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rqst, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hash) #9
  %5 = ptrtoint ptr %hash to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %hash, align 4, !annotation !232
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sdesc) #9
  %6 = ptrtoint ptr %sdesc to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %sdesc, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %drqst) #9
  %7 = getelementptr inbounds %struct.smb_rqst, ptr %drqst, i32 0, i32 1
  %8 = call ptr @memset(ptr %drqst, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %key) #9
  %SessionId = getelementptr inbounds %struct.smb2_hdr, ptr %4, i32 0, i32 10
  %9 = call ptr @memset(ptr %key, i32 255, i32 16)
  %10 = ptrtoint ptr %SessionId to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %SessionId, align 1
  %12 = tail call i64 @llvm.bswap.i64(i64 %11)
  tail call void @_raw_spin_lock(ptr noundef nonnull @cifs_tcp_ses_lock) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifs_tcp_ses_list to i32))
  %it.0102.i = load ptr, ptr @cifs_tcp_ses_list, align 4
  %cmp.not103.i = icmp eq ptr %it.0102.i, @cifs_tcp_ses_list
  br i1 %cmp.not103.i, label %entry.do.body23.i_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.do.body23.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body23.i

for.cond.loopexit.i:                              ; preds = %for.cond4.i
  %13 = ptrtoint ptr %it.0104.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %it.0.i = load ptr, ptr %it.0104.i, align 4
  %cmp.not.i = icmp eq ptr %it.0.i, @cifs_tcp_ses_list
  br i1 %cmp.not.i, label %for.cond.loopexit.i.do.body23.i_crit_edge, label %for.cond.loopexit.i.for.body.i_crit_edge

for.cond.loopexit.i.for.body.i_crit_edge:         ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.cond.loopexit.i.do.body23.i_crit_edge:        ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body23.i

for.body.i:                                       ; preds = %for.cond.loopexit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %it.0104.i = phi ptr [ %it.0.i, %for.cond.loopexit.i.for.body.i_crit_edge ], [ %it.0102.i, %entry.for.body.i_crit_edge ]
  %smb_ses_list.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %it.0104.i, i32 0, i32 1
  br label %for.cond4.i

for.cond4.i:                                      ; preds = %for.body9.i.for.cond4.i_crit_edge, %for.body.i
  %ses.0.in.i = phi ptr [ %smb_ses_list.i, %for.body.i ], [ %ses.0.i, %for.body9.i.for.cond4.i_crit_edge ]
  %14 = ptrtoint ptr %ses.0.in.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %ses.0.i = load ptr, ptr %ses.0.in.i, align 8
  %cmp7.not.i = icmp eq ptr %ses.0.i, %smb_ses_list.i
  br i1 %cmp7.not.i, label %for.cond.loopexit.i, label %for.body9.i

for.body9.i:                                      ; preds = %for.cond4.i
  %Suid.i = getelementptr inbounds %struct.cifs_ses, ptr %ses.0.i, i32 0, i32 12
  %15 = ptrtoint ptr %Suid.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %Suid.i, align 8
  %cmp10.i = icmp eq i64 %16, %12
  br i1 %cmp10.i, label %found.i, label %for.body9.i.for.cond4.i_crit_edge

for.body9.i.for.cond4.i_crit_edge:                ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond4.i

do.body23.i:                                      ; preds = %for.cond.loopexit.i.do.body23.i_crit_edge, %entry.do.body23.i_crit_edge
  %tobool.not.i = icmp eq ptr %server, null
  br i1 %tobool.not.i, label %do.body23.i.if.end27.i_crit_edge, label %land.lhs.true.i

do.body23.i.if.end27.i_crit_edge:                 ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27.i

land.lhs.true.i:                                  ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #11
  %hostname.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 8
  %17 = ptrtoint ptr %hostname.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hostname.i, align 8
  %tobool24.not.i = icmp eq ptr %18, null
  %spec.select.i = select i1 %tobool24.not.i, ptr @.str.3, ptr %18
  br label %if.end27.i

if.end27.i:                                       ; preds = %land.lhs.true.i, %do.body23.i.if.end27.i_crit_edge
  %sn.0.i = phi ptr [ @.str.3, %do.body23.i.if.end27.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %call.i = tail call i32 @___ratelimit(ptr noundef nonnull @smb2_get_sign_key._rs, ptr noundef nonnull @__func__.smb2_get_sign_key) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool28.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool28.not.i, label %if.end27.i.smb2_get_sign_key.exit.thread_crit_edge, label %do.end.i

if.end27.i.smb2_get_sign_key.exit.thread_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %smb2_get_sign_key.exit.thread

do.end.i:                                         ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  %call32.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, ptr noundef nonnull %sn.0.i, ptr noundef nonnull @__func__.smb2_get_sign_key, i64 noundef %12) #12
  br label %smb2_get_sign_key.exit.thread

found.i:                                          ; preds = %for.body9.i
  %chan_lock.i = getelementptr inbounds %struct.cifs_ses, ptr %ses.0.i, i32 0, i32 35
  tail call void @_raw_spin_lock(ptr noundef %chan_lock.i) #9
  %call38.i = tail call zeroext i1 @cifs_chan_needs_reconnect(ptr noundef %ses.0.i, ptr noundef %server) #9
  br i1 %call38.i, label %land.lhs.true39.i, label %found.i.if.end43.i_crit_edge

found.i.if.end43.i_crit_edge:                     ; preds = %found.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43.i

land.lhs.true39.i:                                ; preds = %found.i
  %chans_need_reconnect.i = getelementptr inbounds %struct.cifs_ses, ptr %ses.0.i, i32 0, i32 40
  %19 = ptrtoint ptr %chans_need_reconnect.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %chans_need_reconnect.i, align 4
  %chan_count.i = getelementptr inbounds %struct.cifs_ses, ptr %ses.0.i, i32 0, i32 37
  %21 = ptrtoint ptr %chan_count.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %chan_count.i, align 8
  %notmask.i = shl nsw i32 -1, %22
  %sub.i = xor i32 %notmask.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %sub.i)
  %cmp40.i = icmp eq i32 %20, %sub.i
  br i1 %cmp40.i, label %land.lhs.true39.i.if.end43.i_crit_edge, label %if.then41.i

land.lhs.true39.i.if.end43.i_crit_edge:           ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43.i

if.then41.i:                                      ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #11
  %smb3signingkey.i = getelementptr inbounds %struct.cifs_ses, ptr %ses.0.i, i32 0, i32 27
  br label %if.end

if.end43.i:                                       ; preds = %land.lhs.true39.i.if.end43.i_crit_edge, %found.i.if.end43.i_crit_edge
  %chan_count45.i = getelementptr inbounds %struct.cifs_ses, ptr %ses.0.i, i32 0, i32 37
  %23 = ptrtoint ptr %chan_count45.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %chan_count45.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp46105.not.i = icmp eq i32 %24, 0
  br i1 %cmp46105.not.i, label %if.end43.i.for.end57.i_crit_edge, label %for.body47.lr.ph.i

if.end43.i.for.end57.i_crit_edge:                 ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end57.i

for.body47.lr.ph.i:                               ; preds = %if.end43.i
  %chans.i = getelementptr inbounds %struct.cifs_ses, ptr %ses.0.i, i32 0, i32 36
  br label %for.body47.i

for.body47.i:                                     ; preds = %for.inc56.i.for.body47.i_crit_edge, %for.body47.lr.ph.i
  %i.0106.i = phi i32 [ 0, %for.body47.lr.ph.i ], [ %inc.i, %for.inc56.i.for.body47.i_crit_edge ]
  %add.ptr49.i = getelementptr %struct.cifs_chan, ptr %chans.i, i32 %i.0106.i
  %25 = ptrtoint ptr %add.ptr49.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr49.i, align 4
  %cmp51.i = icmp eq ptr %26, %server
  br i1 %cmp51.i, label %if.then52.i, label %for.inc56.i

if.then52.i:                                      ; preds = %for.body47.i
  call void @__sanitizer_cov_trace_pc() #11
  %signkey.i = getelementptr %struct.cifs_chan, ptr %chans.i, i32 %i.0106.i, i32 1
  br label %if.end

for.inc56.i:                                      ; preds = %for.body47.i
  %inc.i = add nuw i32 %i.0106.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %24
  br i1 %exitcond.not.i, label %for.inc56.i.for.end57.i_crit_edge, label %for.inc56.i.for.body47.i_crit_edge

for.inc56.i.for.body47.i_crit_edge:               ; preds = %for.inc56.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body47.i

for.inc56.i.for.end57.i_crit_edge:                ; preds = %for.inc56.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end57.i

for.end57.i:                                      ; preds = %for.inc56.i.for.end57.i_crit_edge, %if.end43.i.for.end57.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %chan_lock.i) #9
  %call61.i = tail call i32 @___ratelimit(ptr noundef nonnull @smb2_get_sign_key._rs.118, ptr noundef nonnull @__func__.smb2_get_sign_key) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i)
  %tobool62.not.i = icmp eq i32 %call61.i, 0
  br i1 %tobool62.not.i, label %for.end57.i.smb2_get_sign_key.exit.thread_crit_edge, label %do.end66.i

for.end57.i.smb2_get_sign_key.exit.thread_crit_edge: ; preds = %for.end57.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %smb2_get_sign_key.exit.thread

do.end66.i:                                       ; preds = %for.end57.i
  call void @__sanitizer_cov_trace_pc() #11
  %call68.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef nonnull @__func__.smb2_get_sign_key, i64 noundef %12) #12
  br label %smb2_get_sign_key.exit.thread

smb2_get_sign_key.exit.thread:                    ; preds = %do.end66.i, %for.end57.i.smb2_get_sign_key.exit.thread_crit_edge, %do.end.i, %if.end27.i.smb2_get_sign_key.exit.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cifs_tcp_ses_lock) #9
  br label %cleanup

if.end:                                           ; preds = %if.then52.i, %if.then41.i
  %signkey.i.sink = phi ptr [ %signkey.i, %if.then52.i ], [ %smb3signingkey.i, %if.then41.i ]
  %27 = call ptr @memcpy(ptr %key, ptr %signkey.i.sink, i32 16)
  tail call void @_raw_spin_unlock(ptr noundef %chan_lock.i) #9
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cifs_tcp_ses_lock) #9
  br i1 %allocate_crypto, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %call4 = call i32 @cifs_alloc_hash(ptr noundef nonnull @.str.1, ptr noundef nonnull %hash, ptr noundef nonnull %sdesc) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then3.if.end11_crit_edge, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3.if.end11_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %cmacaes = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 50, i32 3
  %28 = ptrtoint ptr %cmacaes to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cmacaes, align 4
  %30 = ptrtoint ptr %hash to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %hash, align 4
  %sdesccmacaes = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 50, i32 8
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then3.if.end11_crit_edge
  %shash.0.in = phi ptr [ %sdesccmacaes, %if.else ], [ %sdesc, %if.then3.if.end11_crit_edge ]
  %31 = ptrtoint ptr %shash.0.in to i32
  call void @__asan_load4_noabort(i32 %31)
  %shash.0 = load ptr, ptr %shash.0.in, align 4
  %32 = call ptr @memset(ptr %smb3_signature, i32 0, i32 16)
  %Signature = getelementptr inbounds %struct.smb2_hdr, ptr %4, i32 0, i32 11
  %33 = call ptr @memset(ptr %Signature, i32 0, i32 16)
  %34 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hash, align 4
  %call15 = call i32 @crypto_shash_setkey(ptr noundef %35, ptr noundef nonnull %key, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end34, label %do.body18

do.body18:                                        ; preds = %if.end11
  %tobool19.not = icmp eq ptr %server, null
  br i1 %tobool19.not, label %do.body18.if.end23_crit_edge, label %land.lhs.true

do.body18.if.end23_crit_edge:                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

land.lhs.true:                                    ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #11
  %hostname = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 8
  %36 = ptrtoint ptr %hostname to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hostname, align 8
  %tobool20.not = icmp eq ptr %37, null
  %spec.select = select i1 %tobool20.not, ptr @.str.3, ptr %37
  br label %if.end23

if.end23:                                         ; preds = %land.lhs.true, %do.body18.if.end23_crit_edge
  %sn.0 = phi ptr [ @.str.3, %do.body18.if.end23_crit_edge ], [ %spec.select, %land.lhs.true ]
  %call24 = call i32 @___ratelimit(ptr noundef nonnull @smb3_calc_signature._rs, ptr noundef nonnull @__func__.smb3_calc_signature) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end23.out_crit_edge, label %do.end

if.end23.out_crit_edge:                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.end:                                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull %sn.0, ptr noundef nonnull @__func__.smb3_calc_signature) #12
  br label %out

if.end34:                                         ; preds = %if.end11
  %38 = ptrtoint ptr %shash.0 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %shash.0, align 8
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %base.i.i.i, align 128
  %and.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i152 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i152, label %crypto_shash_init.exit, label %if.end34.do.body39_crit_edge

if.end34.do.body39_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body39

crypto_shash_init.exit:                           ; preds = %if.end34
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %39, i32 0, i32 2, i32 3
  %42 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %43, i32 -256
  %44 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call3.i = call i32 %45(ptr noundef %shash.0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool36.not = icmp eq i32 %call3.i, 0
  br i1 %tobool36.not, label %if.end61, label %crypto_shash_init.exit.do.body39_crit_edge

crypto_shash_init.exit.do.body39_crit_edge:       ; preds = %crypto_shash_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body39

do.body39:                                        ; preds = %crypto_shash_init.exit.do.body39_crit_edge, %if.end34.do.body39_crit_edge
  %retval.0.i157 = phi i32 [ %call3.i, %crypto_shash_init.exit.do.body39_crit_edge ], [ -126, %if.end34.do.body39_crit_edge ]
  %tobool41.not = icmp eq ptr %server, null
  br i1 %tobool41.not, label %do.body39.if.end47_crit_edge, label %land.lhs.true42

do.body39.if.end47_crit_edge:                     ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

land.lhs.true42:                                  ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #11
  %hostname43 = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 8
  %46 = ptrtoint ptr %hostname43 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hostname43, align 8
  %tobool44.not = icmp eq ptr %47, null
  %spec.select150 = select i1 %tobool44.not, ptr @.str.3, ptr %47
  br label %if.end47

if.end47:                                         ; preds = %land.lhs.true42, %do.body39.if.end47_crit_edge
  %sn40.0 = phi ptr [ @.str.3, %do.body39.if.end47_crit_edge ], [ %spec.select150, %land.lhs.true42 ]
  %call48 = call i32 @___ratelimit(ptr noundef nonnull @smb3_calc_signature._rs.32, ptr noundef nonnull @__func__.smb3_calc_signature) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end47.out_crit_edge, label %do.end53

if.end47.out_crit_edge:                           ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.end53:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  %call55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull %sn40.0, ptr noundef nonnull @__func__.smb3_calc_signature) #12
  br label %out

if.end61:                                         ; preds = %crypto_shash_init.exit
  %48 = call ptr @memcpy(ptr %drqst, ptr %rqst, i32 28)
  %49 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %cmp = icmp ugt i32 %50, 1
  br i1 %cmp, label %land.lhs.true62, label %if.end61.if.end99_crit_edge

if.end61.if.end99_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end99

land.lhs.true62:                                  ; preds = %if.end61
  %iov_len = getelementptr inbounds %struct.kvec, ptr %2, i32 0, i32 1
  %51 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %iov_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %52)
  %cmp64 = icmp eq i32 %52, 4
  br i1 %cmp64, label %if.then65, label %land.lhs.true62.if.end99_crit_edge

land.lhs.true62.if.end99_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end99

if.then65:                                        ; preds = %land.lhs.true62
  %53 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %2, align 4
  %call70 = call i32 @crypto_shash_update(ptr noundef %shash.0, ptr noundef %54, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end96, label %do.body74

do.body74:                                        ; preds = %if.then65
  %tobool76.not = icmp eq ptr %server, null
  br i1 %tobool76.not, label %do.body74.if.end82_crit_edge, label %land.lhs.true77

do.body74.if.end82_crit_edge:                     ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82

land.lhs.true77:                                  ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #11
  %hostname78 = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 8
  %55 = ptrtoint ptr %hostname78 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hostname78, align 8
  %tobool79.not = icmp eq ptr %56, null
  %spec.select151 = select i1 %tobool79.not, ptr @.str.3, ptr %56
  br label %if.end82

if.end82:                                         ; preds = %land.lhs.true77, %do.body74.if.end82_crit_edge
  %sn75.0 = phi ptr [ @.str.3, %do.body74.if.end82_crit_edge ], [ %spec.select151, %land.lhs.true77 ]
  %call83 = call i32 @___ratelimit(ptr noundef nonnull @smb3_calc_signature._rs.36, ptr noundef nonnull @__func__.smb3_calc_signature) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end82.out_crit_edge, label %do.end88

if.end82.out_crit_edge:                           ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.end88:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  %call90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull %sn75.0, ptr noundef nonnull @__func__.smb3_calc_signature) #12
  br label %out

if.end96:                                         ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %drqst to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %drqst, align 4
  %incdec.ptr = getelementptr %struct.kvec, ptr %58, i32 1
  store ptr %incdec.ptr, ptr %drqst, align 4
  %59 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %7, align 4
  %dec = add i32 %60, -1
  store i32 %dec, ptr %7, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.end96, %land.lhs.true62.if.end99_crit_edge, %if.end61.if.end99_crit_edge
  %call100 = call i32 @__cifs_calc_signature(ptr noundef nonnull %drqst, ptr noundef %server, ptr noundef nonnull %smb3_signature, ptr noundef %shash.0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.then102, label %if.end99.out_crit_edge

if.end99.out_crit_edge:                           ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then102:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  %61 = call ptr @memcpy(ptr %Signature, ptr %smb3_signature, i32 16)
  br label %out

out:                                              ; preds = %if.then102, %if.end99.out_crit_edge, %do.end88, %if.end82.out_crit_edge, %do.end53, %if.end47.out_crit_edge, %do.end, %if.end23.out_crit_edge
  %rc.0 = phi i32 [ %call100, %if.end99.out_crit_edge ], [ 0, %if.then102 ], [ %call15, %do.end ], [ %call15, %if.end23.out_crit_edge ], [ %retval.0.i157, %do.end53 ], [ %retval.0.i157, %if.end47.out_crit_edge ], [ %call70, %do.end88 ], [ %call70, %if.end82.out_crit_edge ]
  br i1 %allocate_crypto, label %if.then107, label %out.cleanup_crit_edge

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then107:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  call void @cifs_free_hash(ptr noundef nonnull %hash, ptr noundef nonnull %sdesc) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then107, %out.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %smb2_get_sign_key.exit.thread
  %retval.0 = phi i32 [ %call4, %if.then3.cleanup_crit_edge ], [ %rc.0, %if.then107 ], [ %rc.0, %out.cleanup_crit_edge ], [ 0, %smb2_get_sign_key.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %key) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %drqst) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sdesc) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hash) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %smb3_signature) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smb2_verify_signature(ptr noundef %rqst, ptr noundef %server) local_unnamed_addr #0 align 64 {
entry:
  %server_response_sig = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %server_response_sig) #9
  %0 = ptrtoint ptr %rqst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rqst, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %Command = getelementptr inbounds %struct.smb2_hdr, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %Command to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %Command, align 1
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.129)
  switch i16 %5, label %lor.lhs.false11 [
    i16 0, label %entry.cleanup_crit_edge
    i16 256, label %entry.cleanup_crit_edge88
    i16 4608, label %entry.cleanup_crit_edge89
  ]

entry.cleanup_crit_edge89:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.cleanup_crit_edge88:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false11:                                  ; preds = %entry
  %ignore_signature = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 30
  %7 = ptrtoint ptr %ignore_signature to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %ignore_signature, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %lor.lhs.false13, label %lor.lhs.false11.cleanup_crit_edge

lor.lhs.false11.cleanup_crit_edge:                ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false13:                                  ; preds = %lor.lhs.false11
  %session_estab = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 31
  %8 = ptrtoint ptr %session_estab to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %session_estab, align 8, !range !233
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %lor.lhs.false13.cleanup_crit_edge, label %if.end

lor.lhs.false13.cleanup_crit_edge:                ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false13
  %Signature = getelementptr inbounds %struct.smb2_hdr, ptr %3, i32 0, i32 11
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(8) %Signature, ptr noundef nonnull dereferenceable(8) @.str.39, i32 8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp14 = icmp eq i32 %bcmp, 0
  br i1 %cmp14, label %do.body17, label %if.end.if.end36_crit_edge

if.end.if.end36_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

do.body17:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %10 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %do.body17.if.end36_crit_edge, label %do.body20

do.body17.if.end36_crit_edge:                     ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

do.body20:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smb2_verify_signature.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smb2_verify_signature, %land.lhs.true)) #9
          to label %if.end36 [label %land.lhs.true], !srcloc !234

land.lhs.true:                                    ; preds = %do.body20
  %call25 = tail call i32 @___ratelimit(ptr noundef nonnull @smb2_verify_signature._rs, ptr noundef nonnull @.str.41) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %land.lhs.true.if.end36_crit_edge, label %if.then27

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then27:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %Command to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %Command, align 1
  %conv29 = zext i16 %12 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smb2_verify_signature.descriptor, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.6, i32 noundef %conv29) #9
  br label %if.end36

if.end36:                                         ; preds = %if.then27, %land.lhs.true.if.end36_crit_edge, %do.body20, %do.body17.if.end36_crit_edge, %if.end.if.end36_crit_edge
  %13 = call ptr @memcpy(ptr %server_response_sig, ptr %Signature, i32 16)
  %14 = call ptr @memset(ptr %Signature, i32 0, i32 16)
  %ops = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 5
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops, align 4
  %calc_signature = getelementptr inbounds %struct.smb_version_operations, ptr %16, i32 0, i32 78
  %17 = ptrtoint ptr %calc_signature to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %calc_signature, align 4
  %call42 = tail call i32 %18(ptr noundef %rqst, ptr noundef %server, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end45:                                         ; preds = %if.end36
  %bcmp86 = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %server_response_sig, ptr noundef dereferenceable(16) %Signature, i32 16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp86)
  %tobool50.not = icmp eq i32 %bcmp86, 0
  br i1 %tobool50.not, label %if.end45.cleanup_crit_edge, label %do.body53

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body53:                                        ; preds = %if.end45
  %call54 = tail call i32 @___ratelimit(ptr noundef nonnull @smb2_verify_signature._rs.43, ptr noundef nonnull @.str.41) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %do.body53.cleanup_crit_edge, label %do.end59

do.body53.cleanup_crit_edge:                      ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end59:                                         ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %Command to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %Command, align 1
  %conv62 = zext i16 %20 to i32
  %MessageId = getelementptr inbounds %struct.smb2_hdr, ptr %3, i32 0, i32 8
  %21 = ptrtoint ptr %MessageId to i32
  call void @__asan_loadN_noabort(i32 %21, i32 8)
  %22 = load i64, ptr %MessageId, align 1
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %conv62, i64 noundef %22) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end59, %do.body53.cleanup_crit_edge, %if.end45.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %lor.lhs.false13.cleanup_crit_edge, %lor.lhs.false11.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge88, %entry.cleanup_crit_edge89
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge88 ], [ 0, %entry.cleanup_crit_edge89 ], [ 0, %lor.lhs.false13.cleanup_crit_edge ], [ 0, %lor.lhs.false11.cleanup_crit_edge ], [ %call42, %if.end36.cleanup_crit_edge ], [ -13, %do.end59 ], [ -13, %do.body53.cleanup_crit_edge ], [ 0, %if.end45.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %server_response_sig) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smb2_check_receive(ptr nocapture noundef readonly %mid, ptr noundef %server, i1 noundef zeroext %log_error) local_unnamed_addr #0 align 64 {
entry:
  %iov = alloca [1 x %struct.kvec], align 4
  %rqst = alloca %struct.smb_rqst, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %resp_buf_size = getelementptr inbounds %struct.mid_q_entry, ptr %mid, i32 0, i32 17
  %0 = ptrtoint ptr %resp_buf_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %resp_buf_size, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iov) #9
  %2 = getelementptr inbounds %struct.kvec, ptr %iov, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %rqst) #9
  %3 = getelementptr inbounds %struct.smb_rqst, ptr %rqst, i32 0, i32 1
  %4 = getelementptr inbounds %struct.smb_rqst, ptr %rqst, i32 0, i32 2
  %5 = ptrtoint ptr %rqst to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %iov, ptr %rqst, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %3, align 4
  %resp_buf = getelementptr inbounds %struct.mid_q_entry, ptr %mid, i32 0, i32 16
  %7 = call ptr @memset(ptr %4, i32 0, i32 20)
  %8 = ptrtoint ptr %resp_buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %resp_buf, align 4
  %10 = ptrtoint ptr %iov to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %iov, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %1, ptr %2, align 4
  %12 = call i32 @llvm.umin.i32(i32 %1, i32 80)
  call void @dump_smb(ptr noundef %9, i32 noundef %12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %1)
  %cmp3 = icmp ugt i32 %1, 24
  br i1 %cmp3, label %land.lhs.true, label %entry.if.end25_crit_edge

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

land.lhs.true:                                    ; preds = %entry
  %sign = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 29
  %13 = ptrtoint ptr %sign to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %sign, align 2, !range !233
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %land.lhs.true.if.end25_crit_edge, label %land.lhs.true4

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

land.lhs.true4:                                   ; preds = %land.lhs.true
  %decrypted = getelementptr inbounds %struct.mid_q_entry, ptr %mid, i32 0, i32 22
  %15 = ptrtoint ptr %decrypted to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load = load i8, ptr %decrypted, align 4
  %16 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %bf.cast.not = icmp eq i8 %16, 0
  br i1 %bf.cast.not, label %if.then, label %land.lhs.true4.if.end25_crit_edge

land.lhs.true4.if.end25_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then:                                          ; preds = %land.lhs.true4
  %call = call i32 @smb2_verify_signature(ptr noundef nonnull %rqst, ptr noundef %server)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.then.if.end25_crit_edge, label %do.body7

if.then.if.end25_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

do.body7:                                         ; preds = %if.then
  %tobool8.not = icmp eq ptr %server, null
  br i1 %tobool8.not, label %do.body7.if.end_crit_edge, label %land.lhs.true9

do.body7.if.end_crit_edge:                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true9:                                   ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  %hostname = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 8
  %17 = ptrtoint ptr %hostname to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hostname, align 8
  %tobool10.not = icmp eq ptr %18, null
  %spec.select = select i1 %tobool10.not, ptr @.str.3, ptr %18
  br label %if.end

if.end:                                           ; preds = %land.lhs.true9, %do.body7.if.end_crit_edge
  %sn.0 = phi ptr [ @.str.3, %do.body7.if.end_crit_edge ], [ %spec.select, %land.lhs.true9 ]
  %call13 = call i32 @___ratelimit(ptr noundef nonnull @smb2_check_receive._rs, ptr noundef nonnull @__func__.smb2_check_receive) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end.if.end25_crit_edge, label %do.end

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull %sn.0, i32 noundef %call) #12
  br label %if.end25

if.end25:                                         ; preds = %do.end, %if.end.if.end25_crit_edge, %if.then.if.end25_crit_edge, %land.lhs.true4.if.end25_crit_edge, %land.lhs.true.if.end25_crit_edge, %entry.if.end25_crit_edge
  %19 = ptrtoint ptr %resp_buf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %resp_buf, align 4
  %call28 = call i32 @map_smb2_to_linux_error(ptr noundef %20, i1 noundef zeroext %log_error) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %rqst) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov) #9
  ret i32 %call28
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_smb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @map_smb2_to_linux_error(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @smb2_setup_request(ptr nocapture noundef readonly %ses, ptr noundef %server, ptr noundef %rqst) local_unnamed_addr #0 align 64 {
entry:
  %mid = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rqst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rqst, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mid) #9
  %4 = ptrtoint ptr %mid to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %mid, align 4, !annotation !232
  %CreditCharge.i = getelementptr inbounds %struct.smb2_hdr, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %CreditCharge.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %CreditCharge.i, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #9
  %conv.i = zext i16 %7 to i32
  %ops.i.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 5
  %8 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i.i, align 4
  %get_next_mid.i.i = getelementptr inbounds %struct.smb_version_operations, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %get_next_mid.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_next_mid.i.i, align 4
  %call.i.i = tail call i64 %11(ptr noundef %server) #9
  %12 = tail call i64 @llvm.bswap.i64(i64 %call.i.i) #9
  %MessageId.i = getelementptr inbounds %struct.smb2_hdr, ptr %3, i32 0, i32 8
  %13 = ptrtoint ptr %MessageId.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 %12, ptr %MessageId.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %7)
  %cmp9.i = icmp ugt i16 %7, 1
  br i1 %cmp9.i, label %entry.for.body.i_crit_edge, label %entry.smb2_seq_num_into_buf.exit_crit_edge

entry.smb2_seq_num_into_buf.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %smb2_seq_num_into_buf.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.010.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 1, %entry.for.body.i_crit_edge ]
  %14 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i.i, align 4
  %get_next_mid.i7.i = getelementptr inbounds %struct.smb_version_operations, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %get_next_mid.i7.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %get_next_mid.i7.i, align 4
  %call.i8.i = tail call i64 %17(ptr noundef %server) #9
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.body.i.smb2_seq_num_into_buf.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.smb2_seq_num_into_buf.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %smb2_seq_num_into_buf.exit

smb2_seq_num_into_buf.exit:                       ; preds = %for.body.i.smb2_seq_num_into_buf.exit_crit_edge, %entry.smb2_seq_num_into_buf.exit_crit_edge
  %call = call fastcc i32 @smb2_get_mid_entry(ptr noundef %ses, ptr noundef %server, ptr noundef %3, ptr noundef nonnull %mid)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %smb2_seq_num_into_buf.exit
  %18 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i.i, align 4
  %revert_current_mid.i.i = getelementptr inbounds %struct.smb_version_operations, ptr %19, i32 0, i32 10
  %20 = ptrtoint ptr %revert_current_mid.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %revert_current_mid.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %if.then.revert_current_mid_from_hdr.exit_crit_edge, label %if.then.i.i

if.then.revert_current_mid_from_hdr.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %revert_current_mid_from_hdr.exit

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %CreditCharge.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %CreditCharge.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %cmp.not.i = icmp eq i16 %23, 0
  %24 = tail call i16 @llvm.bswap.i16(i16 %23) #9
  %narrow.i = select i1 %cmp.not.i, i16 1, i16 %24
  %cond.i = zext i16 %narrow.i to i32
  tail call void %21(ptr noundef %server, i32 noundef %cond.i) #9
  br label %revert_current_mid_from_hdr.exit

revert_current_mid_from_hdr.exit:                 ; preds = %if.then.i.i, %if.then.revert_current_mid_from_hdr.exit_crit_edge
  %25 = inttoptr i32 %call to ptr
  br label %cleanup

if.end:                                           ; preds = %smb2_seq_num_into_buf.exit
  %26 = ptrtoint ptr %rqst to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rqst, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %Command.i = getelementptr inbounds %struct.smb2_hdr, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %Command.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %Command.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %31)
  %cmp.i = icmp eq i16 %31, 256
  br i1 %cmp.i, label %land.rhs.i, label %if.end.land.end.i_crit_edge

if.end.land.end.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end.i

land.rhs.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %Flags.i = getelementptr inbounds %struct.smb2_sess_setup_req, ptr %29, i32 0, i32 2
  %32 = ptrtoint ptr %Flags.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %Flags.i, align 1
  %34 = and i8 %33, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.i = icmp ne i8 %34, 0
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %if.end.land.end.i_crit_edge
  %35 = phi i1 [ false, %if.end.land.end.i_crit_edge ], [ %tobool.i, %land.rhs.i ]
  %Flags3.i = getelementptr inbounds %struct.smb2_hdr, ptr %29, i32 0, i32 6
  %36 = ptrtoint ptr %Flags3.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %Flags3.i, align 1
  %and4.i = and i32 %37, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %land.end.i.if.end6_crit_edge, label %if.end.i

land.end.i.if.end6_crit_edge:                     ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.end.i:                                         ; preds = %land.end.i
  tail call void @_raw_spin_lock(ptr noundef nonnull @cifs_tcp_ses_lock) #9
  %tcpStatus.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 7
  %38 = ptrtoint ptr %tcpStatus.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tcpStatus.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %39)
  %cmp8.i = icmp eq i32 %39, 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cifs_tcp_ses_lock) #9
  br i1 %cmp8.i, label %if.end.i.if.end6_crit_edge, label %if.end11.i

if.end.i.if.end6_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.end11.i:                                       ; preds = %if.end.i
  br i1 %35, label %if.end11.i.smb2_sign_rqst.exit_crit_edge, label %land.lhs.true.i

if.end11.i.smb2_sign_rqst.exit_crit_edge:         ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %smb2_sign_rqst.exit

land.lhs.true.i:                                  ; preds = %if.end11.i
  %session_estab.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 31
  %40 = ptrtoint ptr %session_estab.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %session_estab.i, align 8, !range !233
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool13.not.i = icmp eq i8 %41, 0
  br i1 %tobool13.not.i, label %if.then14.i, label %land.lhs.true.i.smb2_sign_rqst.exit_crit_edge

land.lhs.true.i.smb2_sign_rqst.exit_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %smb2_sign_rqst.exit

if.then14.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %Signature.i = getelementptr inbounds %struct.smb2_hdr, ptr %29, i32 0, i32 11
  %42 = ptrtoint ptr %Signature.i to i32
  call void @__asan_storeN_noabort(i32 %42, i32 8)
  store i64 4779254147354020864, ptr %Signature.i, align 1
  br label %if.end6

smb2_sign_rqst.exit:                              ; preds = %land.lhs.true.i.smb2_sign_rqst.exit_crit_edge, %if.end11.i.smb2_sign_rqst.exit_crit_edge
  %43 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops.i.i, align 4
  %calc_signature.i = getelementptr inbounds %struct.smb_version_operations, ptr %44, i32 0, i32 78
  %45 = ptrtoint ptr %calc_signature.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %calc_signature.i, align 4
  %call16.i = tail call i32 %46(ptr noundef %rqst, ptr noundef %server, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool3.not = icmp eq i32 %call16.i, 0
  br i1 %tobool3.not, label %smb2_sign_rqst.exit.if.end6_crit_edge, label %if.then4

smb2_sign_rqst.exit.if.end6_crit_edge:            ; preds = %smb2_sign_rqst.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then4:                                         ; preds = %smb2_sign_rqst.exit
  %47 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ops.i.i, align 4
  %revert_current_mid.i.i23 = getelementptr inbounds %struct.smb_version_operations, ptr %48, i32 0, i32 10
  %49 = ptrtoint ptr %revert_current_mid.i.i23 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %revert_current_mid.i.i23, align 4
  %tobool.not.i.i24 = icmp eq ptr %50, null
  br i1 %tobool.not.i.i24, label %if.then4.revert_current_mid_from_hdr.exit30_crit_edge, label %if.then.i.i29

if.then4.revert_current_mid_from_hdr.exit30_crit_edge: ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %revert_current_mid_from_hdr.exit30

if.then.i.i29:                                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %CreditCharge.i to i32
  call void @__asan_loadN_noabort(i32 %51, i32 2)
  %52 = load i16, ptr %CreditCharge.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %cmp.not.i26 = icmp eq i16 %52, 0
  %53 = tail call i16 @llvm.bswap.i16(i16 %52) #9
  %narrow.i27 = select i1 %cmp.not.i26, i16 1, i16 %53
  %cond.i28 = zext i16 %narrow.i27 to i32
  tail call void %50(ptr noundef %server, i32 noundef %cond.i28) #9
  br label %revert_current_mid_from_hdr.exit30

revert_current_mid_from_hdr.exit30:               ; preds = %if.then.i.i29, %if.then4.revert_current_mid_from_hdr.exit30_crit_edge
  %54 = ptrtoint ptr %mid to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mid, align 4
  tail call void @cifs_delete_mid(ptr noundef %55) #9
  %56 = inttoptr i32 %call16.i to ptr
  br label %cleanup

if.end6:                                          ; preds = %smb2_sign_rqst.exit.if.end6_crit_edge, %if.then14.i, %if.end.i.if.end6_crit_edge, %land.end.i.if.end6_crit_edge
  %57 = ptrtoint ptr %mid to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mid, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %revert_current_mid_from_hdr.exit30, %revert_current_mid_from_hdr.exit
  %retval.0 = phi ptr [ %25, %revert_current_mid_from_hdr.exit ], [ %56, %revert_current_mid_from_hdr.exit30 ], [ %58, %if.end6 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mid) #9
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smb2_get_mid_entry(ptr nocapture noundef readonly %ses, ptr noundef %server, ptr nocapture noundef readonly %shdr, ptr nocapture noundef %mid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @cifs_tcp_ses_lock) #9
  %tcpStatus = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 7
  %0 = ptrtoint ptr %tcpStatus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tcpStatus, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.130)
  switch i32 %1, label %entry.if.end24_crit_edge [
    i32 2, label %if.then
    i32 3, label %if.then3
    i32 4, label %land.lhs.true20
  ]

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cifs_tcp_ses_lock) #9
  br label %return

if.then3:                                         ; preds = %entry
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cifs_tcp_ses_lock) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %3 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then3.return_crit_edge, label %do.body6

if.then3.return_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

do.body6:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smb2_get_mid_entry.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smb2_get_mid_entry, %land.lhs.true)) #9
          to label %return [label %land.lhs.true], !srcloc !234

land.lhs.true:                                    ; preds = %do.body6
  %call10 = tail call i32 @___ratelimit(ptr noundef nonnull @smb2_get_mid_entry._rs, ptr noundef nonnull @.str.122) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true.return_crit_edge, label %if.then12

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smb2_get_mid_entry.descriptor, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.6) #9
  br label %return

land.lhs.true20:                                  ; preds = %entry
  %Command = getelementptr inbounds %struct.smb2_hdr, ptr %shdr, i32 0, i32 4
  %4 = ptrtoint ptr %Command to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %Command, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp21.not = icmp eq i16 %5, 0
  br i1 %cmp21.not, label %land.lhs.true20.if.end24_crit_edge, label %if.then23

land.lhs.true20.if.end24_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then23:                                        ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cifs_tcp_ses_lock) #9
  br label %return

if.end24:                                         ; preds = %land.lhs.true20.if.end24_crit_edge, %entry.if.end24_crit_edge
  %status = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 7
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.131)
  switch i32 %7, label %if.end24.if.end50_crit_edge [
    i32 0, label %if.then27
    i32 2, label %if.then43
  ]

if.end24.if.end50_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then27:                                        ; preds = %if.end24
  %Command28 = getelementptr inbounds %struct.smb2_hdr, ptr %shdr, i32 0, i32 4
  %9 = ptrtoint ptr %Command28 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %Command28, align 1
  %11 = zext i16 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.132)
  switch i16 %10, label %if.then37 [
    i16 256, label %if.then27.if.end50_crit_edge
    i16 0, label %if.then27.if.end50_crit_edge69
  ]

if.then27.if.end50_crit_edge69:                   ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then27.if.end50_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then37:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cifs_tcp_ses_lock) #9
  br label %return

if.then43:                                        ; preds = %if.end24
  %Command44 = getelementptr inbounds %struct.smb2_hdr, ptr %shdr, i32 0, i32 4
  %12 = ptrtoint ptr %Command44 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %Command44, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %13)
  %cmp46.not = icmp eq i16 %13, 512
  br i1 %cmp46.not, label %if.then43.if.end50_crit_edge, label %if.then48

if.then43.if.end50_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then48:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cifs_tcp_ses_lock) #9
  br label %return

if.end50:                                         ; preds = %if.then43.if.end50_crit_edge, %if.then27.if.end50_crit_edge, %if.then27.if.end50_crit_edge69, %if.end24.if.end50_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cifs_tcp_ses_lock) #9
  %call51 = tail call fastcc ptr @smb2_mid_entry_alloc(ptr noundef %shdr, ptr noundef %server)
  %14 = ptrtoint ptr %mid to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call51, ptr %mid, align 4
  %cmp52 = icmp eq ptr %call51, null
  br i1 %cmp52, label %if.end50.return_crit_edge, label %if.end55

if.end50.return_crit_edge:                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end55:                                         ; preds = %if.end50
  tail call void @_raw_spin_lock(ptr noundef nonnull @GlobalMid_Lock) #9
  %15 = ptrtoint ptr %mid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mid, align 4
  %pending_mid_q = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 15
  %prev.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 15, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %16, ptr noundef %18, ptr noundef %pending_mid_q) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end55.list_add_tail.exit_crit_edge

if.end55.list_add_tail.exit_crit_edge:            ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %pending_mid_q, ptr %16, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %21 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev3.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %16, ptr %18, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end55.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @GlobalMid_Lock) #9
  br label %return

return:                                           ; preds = %list_add_tail.exit, %if.end50.return_crit_edge, %if.then48, %if.then37, %if.then23, %if.then12, %land.lhs.true.return_crit_edge, %do.body6, %if.then3.return_crit_edge, %if.then
  %retval.0 = phi i32 [ -2, %if.then ], [ -11, %if.then23 ], [ -11, %if.then37 ], [ -11, %if.then48 ], [ 0, %list_add_tail.exit ], [ -11, %if.then3.return_crit_edge ], [ -11, %if.then12 ], [ -11, %land.lhs.true.return_crit_edge ], [ -12, %if.end50.return_crit_edge ], [ -11, %do.body6 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cifs_delete_mid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @smb2_setup_async_request(ptr noundef %server, ptr noundef %rqst) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rqst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rqst, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @cifs_tcp_ses_lock) #9
  %tcpStatus = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 7
  %4 = ptrtoint ptr %tcpStatus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tcpStatus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp = icmp eq i32 %5, 4
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %Command = getelementptr inbounds %struct.smb2_hdr, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %Command to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %Command, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp1.not = icmp eq i16 %7, 0
  br i1 %cmp1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cifs_tcp_ses_lock) #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cifs_tcp_ses_lock) #9
  %CreditCharge.i = getelementptr inbounds %struct.smb2_hdr, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %CreditCharge.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %CreditCharge.i, align 1
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #9
  %conv.i = zext i16 %10 to i32
  %ops.i.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 5
  %11 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i.i, align 4
  %get_next_mid.i.i = getelementptr inbounds %struct.smb_version_operations, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %get_next_mid.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %get_next_mid.i.i, align 4
  %call.i.i = tail call i64 %14(ptr noundef %server) #9
  %15 = tail call i64 @llvm.bswap.i64(i64 %call.i.i) #9
  %MessageId.i = getelementptr inbounds %struct.smb2_hdr, ptr %3, i32 0, i32 8
  %16 = ptrtoint ptr %MessageId.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 8)
  store i64 %15, ptr %MessageId.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %10)
  %cmp9.i = icmp ugt i16 %10, 1
  br i1 %cmp9.i, label %if.end.for.body.i_crit_edge, label %if.end.smb2_seq_num_into_buf.exit_crit_edge

if.end.smb2_seq_num_into_buf.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %smb2_seq_num_into_buf.exit

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.010.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 1, %if.end.for.body.i_crit_edge ]
  %17 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops.i.i, align 4
  %get_next_mid.i7.i = getelementptr inbounds %struct.smb_version_operations, ptr %18, i32 0, i32 9
  %19 = ptrtoint ptr %get_next_mid.i7.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %get_next_mid.i7.i, align 4
  %call.i8.i = tail call i64 %20(ptr noundef %server) #9
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.body.i.smb2_seq_num_into_buf.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.smb2_seq_num_into_buf.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %smb2_seq_num_into_buf.exit

smb2_seq_num_into_buf.exit:                       ; preds = %for.body.i.smb2_seq_num_into_buf.exit_crit_edge, %if.end.smb2_seq_num_into_buf.exit_crit_edge
  %call3 = tail call fastcc ptr @smb2_mid_entry_alloc(ptr noundef %3, ptr noundef %server)
  %cmp4 = icmp eq ptr %call3, null
  br i1 %cmp4, label %if.then6, label %if.end8

if.then6:                                         ; preds = %smb2_seq_num_into_buf.exit
  %21 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops.i.i, align 4
  %revert_current_mid.i.i = getelementptr inbounds %struct.smb_version_operations, ptr %22, i32 0, i32 10
  %23 = ptrtoint ptr %revert_current_mid.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %revert_current_mid.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i, label %if.then6.cleanup_crit_edge, label %if.then.i.i

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %CreditCharge.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %CreditCharge.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %cmp.not.i = icmp eq i16 %26, 0
  %27 = tail call i16 @llvm.bswap.i16(i16 %26) #9
  %narrow.i = select i1 %cmp.not.i, i16 1, i16 %27
  %cond.i = zext i16 %narrow.i to i32
  tail call void %24(ptr noundef %server, i32 noundef %cond.i) #9
  br label %cleanup

if.end8:                                          ; preds = %smb2_seq_num_into_buf.exit
  %28 = ptrtoint ptr %rqst to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rqst, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %Command.i = getelementptr inbounds %struct.smb2_hdr, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %Command.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %33 = load i16, ptr %Command.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %33)
  %cmp.i = icmp eq i16 %33, 256
  br i1 %cmp.i, label %land.rhs.i, label %if.end8.land.end.i_crit_edge

if.end8.land.end.i_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end.i

land.rhs.i:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %Flags.i = getelementptr inbounds %struct.smb2_sess_setup_req, ptr %31, i32 0, i32 2
  %34 = ptrtoint ptr %Flags.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %Flags.i, align 1
  %36 = and i8 %35, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.i = icmp ne i8 %36, 0
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %if.end8.land.end.i_crit_edge
  %37 = phi i1 [ false, %if.end8.land.end.i_crit_edge ], [ %tobool.i, %land.rhs.i ]
  %Flags3.i = getelementptr inbounds %struct.smb2_hdr, ptr %31, i32 0, i32 6
  %38 = ptrtoint ptr %Flags3.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %Flags3.i, align 1
  %and4.i = and i32 %39, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %land.end.i.cleanup_crit_edge, label %if.end.i

land.end.i.cleanup_crit_edge:                     ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %land.end.i
  tail call void @_raw_spin_lock(ptr noundef nonnull @cifs_tcp_ses_lock) #9
  %40 = ptrtoint ptr %tcpStatus to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tcpStatus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %41)
  %cmp8.i = icmp eq i32 %41, 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cifs_tcp_ses_lock) #9
  br i1 %cmp8.i, label %if.end.i.cleanup_crit_edge, label %if.end11.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11.i:                                       ; preds = %if.end.i
  br i1 %37, label %if.end11.i.smb2_sign_rqst.exit_crit_edge, label %land.lhs.true.i

if.end11.i.smb2_sign_rqst.exit_crit_edge:         ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %smb2_sign_rqst.exit

land.lhs.true.i:                                  ; preds = %if.end11.i
  %session_estab.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 31
  %42 = ptrtoint ptr %session_estab.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %session_estab.i, align 8, !range !233
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool13.not.i = icmp eq i8 %43, 0
  br i1 %tobool13.not.i, label %if.then14.i, label %land.lhs.true.i.smb2_sign_rqst.exit_crit_edge

land.lhs.true.i.smb2_sign_rqst.exit_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %smb2_sign_rqst.exit

if.then14.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %Signature.i = getelementptr inbounds %struct.smb2_hdr, ptr %31, i32 0, i32 11
  %44 = ptrtoint ptr %Signature.i to i32
  call void @__asan_storeN_noabort(i32 %44, i32 8)
  store i64 4779254147354020864, ptr %Signature.i, align 1
  br label %cleanup

smb2_sign_rqst.exit:                              ; preds = %land.lhs.true.i.smb2_sign_rqst.exit_crit_edge, %if.end11.i.smb2_sign_rqst.exit_crit_edge
  %45 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops.i.i, align 4
  %calc_signature.i = getelementptr inbounds %struct.smb_version_operations, ptr %46, i32 0, i32 78
  %47 = ptrtoint ptr %calc_signature.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %calc_signature.i, align 4
  %call16.i = tail call i32 %48(ptr noundef %rqst, ptr noundef %server, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool.not = icmp eq i32 %call16.i, 0
  br i1 %tobool.not, label %smb2_sign_rqst.exit.cleanup_crit_edge, label %if.then10

smb2_sign_rqst.exit.cleanup_crit_edge:            ; preds = %smb2_sign_rqst.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10:                                        ; preds = %smb2_sign_rqst.exit
  %49 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ops.i.i, align 4
  %revert_current_mid.i.i31 = getelementptr inbounds %struct.smb_version_operations, ptr %50, i32 0, i32 10
  %51 = ptrtoint ptr %revert_current_mid.i.i31 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %revert_current_mid.i.i31, align 4
  %tobool.not.i.i32 = icmp eq ptr %52, null
  br i1 %tobool.not.i.i32, label %if.then10.revert_current_mid_from_hdr.exit38_crit_edge, label %if.then.i.i37

if.then10.revert_current_mid_from_hdr.exit38_crit_edge: ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %revert_current_mid_from_hdr.exit38

if.then.i.i37:                                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %CreditCharge.i to i32
  call void @__asan_loadN_noabort(i32 %53, i32 2)
  %54 = load i16, ptr %CreditCharge.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %cmp.not.i34 = icmp eq i16 %54, 0
  %55 = tail call i16 @llvm.bswap.i16(i16 %54) #9
  %narrow.i35 = select i1 %cmp.not.i34, i16 1, i16 %55
  %cond.i36 = zext i16 %narrow.i35 to i32
  tail call void %52(ptr noundef %server, i32 noundef %cond.i36) #9
  br label %revert_current_mid_from_hdr.exit38

revert_current_mid_from_hdr.exit38:               ; preds = %if.then.i.i37, %if.then10.revert_current_mid_from_hdr.exit38_crit_edge
  tail call void @DeleteMidQEntry(ptr noundef nonnull %call3) #9
  %56 = inttoptr i32 %call16.i to ptr
  br label %cleanup

cleanup:                                          ; preds = %revert_current_mid_from_hdr.exit38, %smb2_sign_rqst.exit.cleanup_crit_edge, %if.then14.i, %if.end.i.cleanup_crit_edge, %land.end.i.cleanup_crit_edge, %if.then.i.i, %if.then6.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ inttoptr (i32 -11 to ptr), %if.then ], [ %56, %revert_current_mid_from_hdr.exit38 ], [ %call3, %smb2_sign_rqst.exit.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then6.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then.i.i ], [ %call3, %if.then14.i ], [ %call3, %land.end.i.cleanup_crit_edge ], [ %call3, %if.end.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @smb2_mid_entry_alloc(ptr nocapture noundef readonly %shdr, ptr noundef %server) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %server, null
  br i1 %cmp, label %do.body2, label %if.end10

do.body2:                                         ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @smb2_mid_entry_alloc._rs, ptr noundef nonnull @__func__.smb2_mid_entry_alloc) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body2.cleanup_crit_edge, label %do.end

do.body2.cleanup_crit_edge:                       ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125) #12
  br label %cleanup

if.end10:                                         ; preds = %entry
  %CreditCharge = getelementptr inbounds %struct.smb2_hdr, ptr %shdr, i32 0, i32 2
  %0 = ptrtoint ptr %CreditCharge to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %CreditCharge, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifs_mid_poolp to i32))
  %3 = load ptr, ptr @cifs_mid_poolp, align 4
  %call11 = tail call noalias ptr @mempool_alloc(ptr noundef %3, i32 noundef 3136) #9
  %4 = call ptr @memset(ptr %call11, i32 0, i32 96)
  %refcount = getelementptr inbounds %struct.mid_q_entry, ptr %call11, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  %5 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 1, ptr %refcount, align 4
  %MessageId = getelementptr inbounds %struct.smb2_hdr, ptr %shdr, i32 0, i32 8
  %6 = ptrtoint ptr %MessageId to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %MessageId, align 1
  %8 = tail call i64 @llvm.bswap.i64(i64 %7)
  %mid = getelementptr inbounds %struct.mid_q_entry, ptr %call11, i32 0, i32 3
  %9 = ptrtoint ptr %mid to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %mid, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp12.not = icmp eq i16 %1, 0
  %spec.select = select i1 %cmp12.not, i16 1, i16 %2
  %credits15 = getelementptr inbounds %struct.mid_q_entry, ptr %call11, i32 0, i32 4
  %10 = ptrtoint ptr %credits15 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %spec.select, ptr %credits15, align 8
  %11 = tail call i32 @llvm.read_register.i32(metadata !222) #9
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 68
  %15 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pid, align 8
  %pid17 = getelementptr inbounds %struct.mid_q_entry, ptr %call11, i32 0, i32 6
  %17 = ptrtoint ptr %pid17 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %pid17, align 4
  %Command = getelementptr inbounds %struct.smb2_hdr, ptr %shdr, i32 0, i32 4
  %18 = ptrtoint ptr %Command to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %Command, align 1
  %command = getelementptr inbounds %struct.mid_q_entry, ptr %call11, i32 0, i32 20
  %20 = ptrtoint ptr %command to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %command, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %when_alloc = getelementptr inbounds %struct.mid_q_entry, ptr %call11, i32 0, i32 8
  %22 = ptrtoint ptr %when_alloc to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %when_alloc, align 4
  %server18 = getelementptr inbounds %struct.mid_q_entry, ptr %call11, i32 0, i32 2
  %23 = ptrtoint ptr %server18 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %server, ptr %server18, align 4
  %24 = load ptr, ptr %task, align 8
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #9
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #9, !srcloc !235
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end10.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !236

if.end10.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end10
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %26 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %.not.i.i.i.i = icmp sgt i32 %26, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_task_struct.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !237

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_task_struct.exit_crit_edge:   ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_task_struct.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end10.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end10.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef %.sink.i.i.i.i) #9
  br label %get_task_struct.exit

get_task_struct.exit:                             ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_task_struct.exit_crit_edge
  %27 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task, align 8
  %creator = getelementptr inbounds %struct.mid_q_entry, ptr %call11, i32 0, i32 15
  %29 = ptrtoint ptr %creator to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %creator, align 8
  %callback = getelementptr inbounds %struct.mid_q_entry, ptr %call11, i32 0, i32 12
  %30 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @cifs_wake_up_task, ptr %callback, align 4
  %31 = load ptr, ptr %task, align 8
  %callback_data = getelementptr inbounds %struct.mid_q_entry, ptr %call11, i32 0, i32 14
  %32 = ptrtoint ptr %callback_data to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %callback_data, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @midCount, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr nonnull @midCount, i32 1, i32 3, i32 1) #9
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @midCount, ptr nonnull @midCount, i32 1, ptr nonnull elementtype(i32) @midCount) #9, !srcloc !238
  %mid_state = getelementptr inbounds %struct.mid_q_entry, ptr %call11, i32 0, i32 18
  %34 = ptrtoint ptr %mid_state to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %mid_state, align 4
  %Id = getelementptr inbounds %struct.smb2_hdr, ptr %shdr, i32 0, i32 9
  %TreeId = getelementptr inbounds %struct.anon.155, ptr %Id, i32 0, i32 1
  %35 = ptrtoint ptr %TreeId to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %TreeId, align 1
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %SessionId = getelementptr inbounds %struct.smb2_hdr, ptr %shdr, i32 0, i32 10
  %38 = ptrtoint ptr %SessionId to i32
  call void @__asan_loadN_noabort(i32 %38, i32 8)
  %39 = load i64, ptr %SessionId, align 1
  %40 = tail call i64 @llvm.bswap.i64(i64 %39)
  %41 = ptrtoint ptr %Command to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %42 = load i16, ptr %Command, align 1
  %43 = tail call i16 @llvm.bswap.i16(i16 %42)
  %44 = ptrtoint ptr %mid to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %mid, align 8
  tail call fastcc void @trace_smb3_cmd_enter(i32 noundef %37, i64 noundef %40, i16 noundef zeroext %43, i64 noundef %45)
  br label %cleanup

cleanup:                                          ; preds = %get_task_struct.exit, %do.end, %do.body2.cleanup_crit_edge
  %retval.0 = phi ptr [ %call11, %get_task_struct.exit ], [ null, %do.end ], [ null, %do.body2.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @DeleteMidQEntry(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smb3_crypto_aead_allocate(ptr noundef %server) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ccmaesencrypt = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 50, i32 10
  %0 = ptrtoint ptr %ccmaesencrypt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ccmaesencrypt, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end30_crit_edge

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then:                                          ; preds = %entry
  %cipher_type = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 77
  %2 = ptrtoint ptr %cipher_type to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %cipher_type, align 8
  %4 = add i16 %3, -512
  %switch.and = and i16 %4, -513
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %switch.and)
  %switch.selectcmp = icmp eq i16 %switch.and, 0
  %5 = select i1 %switch.selectcmp, ptr @.str.46, ptr @.str.47
  %call7 = tail call ptr @crypto_alloc_aead(ptr noundef nonnull %5, i32 noundef 0, i32 noundef 0) #9
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body10, label %if.end27

do.body10:                                        ; preds = %if.then
  %tobool11.not = icmp eq ptr %server, null
  br i1 %tobool11.not, label %do.body10.if.end15_crit_edge, label %land.lhs.true

do.body10.if.end15_crit_edge:                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

land.lhs.true:                                    ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  %hostname = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 8
  %6 = ptrtoint ptr %hostname to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hostname, align 8
  %tobool12.not = icmp eq ptr %7, null
  %spec.select = select i1 %tobool12.not, ptr @.str.3, ptr %7
  br label %if.end15

if.end15:                                         ; preds = %land.lhs.true, %do.body10.if.end15_crit_edge
  %sn.0 = phi ptr [ @.str.3, %do.body10.if.end15_crit_edge ], [ %spec.select, %land.lhs.true ]
  %call16 = tail call i32 @___ratelimit(ptr noundef nonnull @smb3_crypto_aead_allocate._rs, ptr noundef nonnull @__func__.smb3_crypto_aead_allocate) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end15.if.end21_crit_edge, label %do.end

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

do.end:                                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull %sn.0, ptr noundef nonnull @__func__.smb3_crypto_aead_allocate) #12
  br label %if.end21

if.end21:                                         ; preds = %do.end, %if.end15.if.end21_crit_edge
  %8 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end27:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %ccmaesencrypt to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7, ptr %ccmaesencrypt, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.end27, %entry.if.end30_crit_edge
  %ccmaesdecrypt = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 50, i32 11
  %10 = ptrtoint ptr %ccmaesdecrypt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ccmaesdecrypt, align 4
  %tobool32.not = icmp eq ptr %11, null
  br i1 %tobool32.not, label %if.then33, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then33:                                        ; preds = %if.end30
  %cipher_type34 = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 77
  %12 = ptrtoint ptr %cipher_type34 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %cipher_type34, align 8
  %14 = add i16 %13, -512
  %switch.and106 = and i16 %14, -513
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %switch.and106)
  %switch.selectcmp107 = icmp eq i16 %switch.and106, 0
  %15 = select i1 %switch.selectcmp107, ptr @.str.46, ptr @.str.47
  %call46 = tail call ptr @crypto_alloc_aead(ptr noundef nonnull %15, i32 noundef 0, i32 noundef 0) #9
  %cmp.i104 = icmp ugt ptr %call46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i104, label %if.then49, label %if.end78

if.then49:                                        ; preds = %if.then33
  %16 = ptrtoint ptr %ccmaesencrypt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ccmaesencrypt, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_aead, ptr %17, i32 0, i32 3
  tail call void @crypto_destroy_tfm(ptr noundef %17, ptr noundef %base.i.i) #9
  %18 = ptrtoint ptr %ccmaesencrypt to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %ccmaesencrypt, align 4
  %tobool57.not = icmp eq ptr %server, null
  br i1 %tobool57.not, label %if.then49.if.end63_crit_edge, label %land.lhs.true58

if.then49.if.end63_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

land.lhs.true58:                                  ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  %hostname59 = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 8
  %19 = ptrtoint ptr %hostname59 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hostname59, align 8
  %tobool60.not = icmp eq ptr %20, null
  %spec.select103 = select i1 %tobool60.not, ptr @.str.3, ptr %20
  br label %if.end63

if.end63:                                         ; preds = %land.lhs.true58, %if.then49.if.end63_crit_edge
  %sn56.0 = phi ptr [ @.str.3, %if.then49.if.end63_crit_edge ], [ %spec.select103, %land.lhs.true58 ]
  %call64 = tail call i32 @___ratelimit(ptr noundef nonnull @smb3_crypto_aead_allocate._rs.49, ptr noundef nonnull @__func__.smb3_crypto_aead_allocate) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end63.if.end72_crit_edge, label %do.end69

if.end63.if.end72_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

do.end69:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull %sn56.0, ptr noundef nonnull @__func__.smb3_crypto_aead_allocate) #12
  br label %if.end72

if.end72:                                         ; preds = %do.end69, %if.end63.if.end72_crit_edge
  %21 = ptrtoint ptr %call46 to i32
  br label %cleanup

if.end78:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %ccmaesdecrypt to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call46, ptr %ccmaesdecrypt, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end78, %if.end72, %if.end30.cleanup_crit_edge, %if.end21
  %retval.0 = phi i32 [ %21, %if.end72 ], [ %8, %if.end21 ], [ 0, %if.end78 ], [ 0, %if.end30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_aead(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_ses_get_chan_index(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @generate_key(ptr nocapture noundef readonly %ses, [2 x i32] %label.coerce, [2 x i32] %context.coerce, ptr nocapture noundef writeonly %key, i32 noundef %key_size) unnamed_addr #0 align 64 {
entry:
  %zero = alloca i8, align 1
  %i = alloca [4 x i8], align 4
  %L128 = alloca [4 x i8], align 4
  %L256 = alloca [4 x i8], align 4
  %prfhash = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %label.coerce.fca.0.extract = extractvalue [2 x i32] %label.coerce, 0
  %0 = inttoptr i32 %label.coerce.fca.0.extract to ptr
  %label.coerce.fca.1.extract = extractvalue [2 x i32] %label.coerce, 1
  %context.coerce.fca.0.extract = extractvalue [2 x i32] %context.coerce, 0
  %1 = inttoptr i32 %context.coerce.fca.0.extract to ptr
  %context.coerce.fca.1.extract = extractvalue [2 x i32] %context.coerce, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %zero) #9
  %2 = ptrtoint ptr %zero to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %zero, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #9
  %3 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %L128) #9
  %4 = ptrtoint ptr %L128 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 128, ptr %L128, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %L256) #9
  %5 = ptrtoint ptr %L256 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 256, ptr %L256, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %prfhash) #9
  %server1 = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 5
  %6 = ptrtoint ptr %server1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %server1, align 8
  %8 = call ptr @memset(ptr %prfhash, i32 0, i32 32)
  %9 = call ptr @memset(ptr %key, i32 0, i32 %key_size)
  %hmacsha256.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %7, i32 0, i32 50, i32 2
  %sdeschmacsha256.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %7, i32 0, i32 50, i32 7
  %call.i = tail call i32 @cifs_alloc_hash(ptr noundef nonnull @.str, ptr noundef %hmacsha256.i, ptr noundef %sdeschmacsha256.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.body3_crit_edge

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body3

if.end.i:                                         ; preds = %entry
  %cmacaes.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %7, i32 0, i32 50, i32 3
  %sdesccmacaes.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %7, i32 0, i32 50, i32 8
  %call1.i = tail call i32 @cifs_alloc_hash(ptr noundef nonnull @.str.1, ptr noundef %cmacaes.i, ptr noundef %sdesccmacaes.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end18, label %if.end.i.do.body3_crit_edge

if.end.i.do.body3_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body3

do.body3:                                         ; preds = %if.end.i.do.body3_crit_edge, %entry.do.body3_crit_edge
  %rc.0.i = phi i32 [ %call.i, %entry.do.body3_crit_edge ], [ %call1.i, %if.end.i.do.body3_crit_edge ]
  tail call void @cifs_free_hash(ptr noundef %hmacsha256.i, ptr noundef %sdeschmacsha256.i) #9
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %do.body3.if.end_crit_edge, label %land.lhs.true

do.body3.if.end_crit_edge:                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #11
  %hostname = getelementptr inbounds %struct.TCP_Server_Info, ptr %7, i32 0, i32 8
  %10 = ptrtoint ptr %hostname to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hostname, align 8
  %tobool5.not = icmp eq ptr %11, null
  %spec.select = select i1 %tobool5.not, ptr @.str.3, ptr %11
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %do.body3.if.end_crit_edge
  %sn.0 = phi ptr [ @.str.3, %do.body3.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  %call8 = tail call i32 @___ratelimit(ptr noundef nonnull @generate_key._rs, ptr noundef nonnull @__func__.generate_key) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end.smb3signkey_ret_crit_edge, label %do.end

if.end.smb3signkey_ret_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %smb3signkey_ret

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef nonnull %sn.0, ptr noundef nonnull @__func__.generate_key) #12
  br label %smb3signkey_ret

if.end18:                                         ; preds = %if.end.i
  %12 = ptrtoint ptr %hmacsha256.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hmacsha256.i, align 4
  %response = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 21, i32 1
  %14 = ptrtoint ptr %response to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %response, align 4
  %call19 = tail call i32 @crypto_shash_setkey(ptr noundef %13, ptr noundef %15, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end45, label %do.body23

do.body23:                                        ; preds = %if.end18
  %tobool25.not = icmp eq ptr %7, null
  br i1 %tobool25.not, label %do.body23.if.end31_crit_edge, label %land.lhs.true26

do.body23.if.end31_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

land.lhs.true26:                                  ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #11
  %hostname27 = getelementptr inbounds %struct.TCP_Server_Info, ptr %7, i32 0, i32 8
  %16 = ptrtoint ptr %hostname27 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hostname27, align 8
  %tobool28.not = icmp eq ptr %17, null
  %spec.select330 = select i1 %tobool28.not, ptr @.str.3, ptr %17
  br label %if.end31

if.end31:                                         ; preds = %land.lhs.true26, %do.body23.if.end31_crit_edge
  %sn24.0 = phi ptr [ @.str.3, %do.body23.if.end31_crit_edge ], [ %spec.select330, %land.lhs.true26 ]
  %call32 = tail call i32 @___ratelimit(ptr noundef nonnull @generate_key._rs.85, ptr noundef nonnull @__func__.generate_key) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end31.smb3signkey_ret_crit_edge, label %do.end37

if.end31.smb3signkey_ret_crit_edge:               ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %smb3signkey_ret

do.end37:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef nonnull %sn24.0, ptr noundef nonnull @__func__.generate_key) #12
  br label %smb3signkey_ret

if.end45:                                         ; preds = %if.end18
  %18 = ptrtoint ptr %sdeschmacsha256.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sdeschmacsha256.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 8
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %base.i.i.i, align 128
  %and.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i338 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i338, label %crypto_shash_init.exit, label %if.end45.do.body51_crit_edge

if.end45.do.body51_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body51

crypto_shash_init.exit:                           ; preds = %if.end45
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %21, i32 0, i32 2, i32 3
  %24 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %25, i32 -256
  %26 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call3.i = tail call i32 %27(ptr noundef %19) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool48.not = icmp eq i32 %call3.i, 0
  br i1 %tobool48.not, label %if.end73, label %crypto_shash_init.exit.do.body51_crit_edge

crypto_shash_init.exit.do.body51_crit_edge:       ; preds = %crypto_shash_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body51

do.body51:                                        ; preds = %crypto_shash_init.exit.do.body51_crit_edge, %if.end45.do.body51_crit_edge
  %retval.0.i340345 = phi i32 [ %call3.i, %crypto_shash_init.exit.do.body51_crit_edge ], [ -126, %if.end45.do.body51_crit_edge ]
  %tobool53.not = icmp eq ptr %7, null
  br i1 %tobool53.not, label %do.body51.if.end59_crit_edge, label %land.lhs.true54

do.body51.if.end59_crit_edge:                     ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

land.lhs.true54:                                  ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #11
  %hostname55 = getelementptr inbounds %struct.TCP_Server_Info, ptr %7, i32 0, i32 8
  %28 = ptrtoint ptr %hostname55 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hostname55, align 8
  %tobool56.not = icmp eq ptr %29, null
  %spec.select331 = select i1 %tobool56.not, ptr @.str.3, ptr %29
  br label %if.end59

if.end59:                                         ; preds = %land.lhs.true54, %do.body51.if.end59_crit_edge
  %sn52.0 = phi ptr [ @.str.3, %do.body51.if.end59_crit_edge ], [ %spec.select331, %land.lhs.true54 ]
  %call60 = tail call i32 @___ratelimit(ptr noundef nonnull @generate_key._rs.89, ptr noundef nonnull @__func__.generate_key) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end59.smb3signkey_ret_crit_edge, label %do.end65

if.end59.smb3signkey_ret_crit_edge:               ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %smb3signkey_ret

do.end65:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef nonnull %sn52.0, ptr noundef nonnull @__func__.generate_key) #12
  br label %smb3signkey_ret

if.end73:                                         ; preds = %crypto_shash_init.exit
  %30 = ptrtoint ptr %sdeschmacsha256.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sdeschmacsha256.i, align 4
  %call78 = call i32 @crypto_shash_update(ptr noundef %31, ptr noundef nonnull %i, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end104, label %do.body82

do.body82:                                        ; preds = %if.end73
  %tobool84.not = icmp eq ptr %7, null
  br i1 %tobool84.not, label %do.body82.if.end90_crit_edge, label %land.lhs.true85

do.body82.if.end90_crit_edge:                     ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end90

land.lhs.true85:                                  ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #11
  %hostname86 = getelementptr inbounds %struct.TCP_Server_Info, ptr %7, i32 0, i32 8
  %32 = ptrtoint ptr %hostname86 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hostname86, align 8
  %tobool87.not = icmp eq ptr %33, null
  %spec.select332 = select i1 %tobool87.not, ptr @.str.3, ptr %33
  br label %if.end90

if.end90:                                         ; preds = %land.lhs.true85, %do.body82.if.end90_crit_edge
  %sn83.0 = phi ptr [ @.str.3, %do.body82.if.end90_crit_edge ], [ %spec.select332, %land.lhs.true85 ]
  %call91 = call i32 @___ratelimit(ptr noundef nonnull @generate_key._rs.93, ptr noundef nonnull @__func__.generate_key) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end90.smb3signkey_ret_crit_edge, label %do.end96

if.end90.smb3signkey_ret_crit_edge:               ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #11
  br label %smb3signkey_ret

do.end96:                                         ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #11
  %call98 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef nonnull %sn83.0, ptr noundef nonnull @__func__.generate_key) #12
  br label %smb3signkey_ret

if.end104:                                        ; preds = %if.end73
  %34 = ptrtoint ptr %sdeschmacsha256.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sdeschmacsha256.i, align 4
  %call108 = call i32 @crypto_shash_update(ptr noundef %35, ptr noundef %0, i32 noundef %label.coerce.fca.1.extract) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.end134, label %do.body112

do.body112:                                       ; preds = %if.end104
  %tobool114.not = icmp eq ptr %7, null
  br i1 %tobool114.not, label %do.body112.if.end120_crit_edge, label %land.lhs.true115

do.body112.if.end120_crit_edge:                   ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end120

land.lhs.true115:                                 ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #11
  %hostname116 = getelementptr inbounds %struct.TCP_Server_Info, ptr %7, i32 0, i32 8
  %36 = ptrtoint ptr %hostname116 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hostname116, align 8
  %tobool117.not = icmp eq ptr %37, null
  %spec.select333 = select i1 %tobool117.not, ptr @.str.3, ptr %37
  br label %if.end120

if.end120:                                        ; preds = %land.lhs.true115, %do.body112.if.end120_crit_edge
  %sn113.0 = phi ptr [ @.str.3, %do.body112.if.end120_crit_edge ], [ %spec.select333, %land.lhs.true115 ]
  %call121 = call i32 @___ratelimit(ptr noundef nonnull @generate_key._rs.97, ptr noundef nonnull @__func__.generate_key) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %if.end120.smb3signkey_ret_crit_edge, label %do.end126

if.end120.smb3signkey_ret_crit_edge:              ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #11
  br label %smb3signkey_ret

do.end126:                                        ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #11
  %call128 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, ptr noundef nonnull %sn113.0, ptr noundef nonnull @__func__.generate_key) #12
  br label %smb3signkey_ret

if.end134:                                        ; preds = %if.end104
  %38 = ptrtoint ptr %sdeschmacsha256.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sdeschmacsha256.i, align 4
  %call138 = call i32 @crypto_shash_update(ptr noundef %39, ptr noundef nonnull %zero, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %if.end164, label %do.body142

do.body142:                                       ; preds = %if.end134
  %tobool144.not = icmp eq ptr %7, null
  br i1 %tobool144.not, label %do.body142.if.end150_crit_edge, label %land.lhs.true145

do.body142.if.end150_crit_edge:                   ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end150

land.lhs.true145:                                 ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #11
  %hostname146 = getelementptr inbounds %struct.TCP_Server_Info, ptr %7, i32 0, i32 8
  %40 = ptrtoint ptr %hostname146 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hostname146, align 8
  %tobool147.not = icmp eq ptr %41, null
  %spec.select334 = select i1 %tobool147.not, ptr @.str.3, ptr %41
  br label %if.end150

if.end150:                                        ; preds = %land.lhs.true145, %do.body142.if.end150_crit_edge
  %sn143.0 = phi ptr [ @.str.3, %do.body142.if.end150_crit_edge ], [ %spec.select334, %land.lhs.true145 ]
  %call151 = call i32 @___ratelimit(ptr noundef nonnull @generate_key._rs.101, ptr noundef nonnull @__func__.generate_key) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %if.end150.smb3signkey_ret_crit_edge, label %do.end156

if.end150.smb3signkey_ret_crit_edge:              ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #11
  br label %smb3signkey_ret

do.end156:                                        ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #11
  %call158 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef nonnull %sn143.0, ptr noundef nonnull @__func__.generate_key) #12
  br label %smb3signkey_ret

if.end164:                                        ; preds = %if.end134
  %42 = ptrtoint ptr %sdeschmacsha256.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sdeschmacsha256.i, align 4
  %call170 = call i32 @crypto_shash_update(ptr noundef %43, ptr noundef %1, i32 noundef %context.coerce.fca.1.extract) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call170)
  %tobool171.not = icmp eq i32 %call170, 0
  br i1 %tobool171.not, label %if.end196, label %do.body174

do.body174:                                       ; preds = %if.end164
  %tobool176.not = icmp eq ptr %7, null
  br i1 %tobool176.not, label %do.body174.if.end182_crit_edge, label %land.lhs.true177

do.body174.if.end182_crit_edge:                   ; preds = %do.body174
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end182

land.lhs.true177:                                 ; preds = %do.body174
  call void @__sanitizer_cov_trace_pc() #11
  %hostname178 = getelementptr inbounds %struct.TCP_Server_Info, ptr %7, i32 0, i32 8
  %44 = ptrtoint ptr %hostname178 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hostname178, align 8
  %tobool179.not = icmp eq ptr %45, null
  %spec.select335 = select i1 %tobool179.not, ptr @.str.3, ptr %45
  br label %if.end182

if.end182:                                        ; preds = %land.lhs.true177, %do.body174.if.end182_crit_edge
  %sn175.0 = phi ptr [ @.str.3, %do.body174.if.end182_crit_edge ], [ %spec.select335, %land.lhs.true177 ]
  %call183 = call i32 @___ratelimit(ptr noundef nonnull @generate_key._rs.105, ptr noundef nonnull @__func__.generate_key) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call183)
  %tobool184.not = icmp eq i32 %call183, 0
  br i1 %tobool184.not, label %if.end182.smb3signkey_ret_crit_edge, label %do.end188

if.end182.smb3signkey_ret_crit_edge:              ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #11
  br label %smb3signkey_ret

do.end188:                                        ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #11
  %call190 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef nonnull %sn175.0, ptr noundef nonnull @__func__.generate_key) #12
  br label %smb3signkey_ret

if.end196:                                        ; preds = %if.end164
  %cipher_type = getelementptr inbounds %struct.TCP_Server_Info, ptr %7, i32 0, i32 77
  %46 = ptrtoint ptr %cipher_type to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %cipher_type, align 8
  %48 = zext i16 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.133)
  switch i16 %47, label %if.else [
    i16 768, label %if.end196.if.end213_crit_edge
    i16 1024, label %if.end196.if.end213_crit_edge346
  ]

if.end196.if.end213_crit_edge346:                 ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end213

if.end196.if.end213_crit_edge:                    ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end213

if.else:                                          ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end213

if.end213:                                        ; preds = %if.else, %if.end196.if.end213_crit_edge, %if.end196.if.end213_crit_edge346
  %L128.sink = phi ptr [ %L128, %if.else ], [ %L256, %if.end196.if.end213_crit_edge ], [ %L256, %if.end196.if.end213_crit_edge346 ]
  %49 = ptrtoint ptr %sdeschmacsha256.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sdeschmacsha256.i, align 4
  %call212 = call i32 @crypto_shash_update(ptr noundef %50, ptr noundef nonnull %L128.sink, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call212)
  %tobool214.not = icmp eq i32 %call212, 0
  br i1 %tobool214.not, label %if.end239, label %do.body217

do.body217:                                       ; preds = %if.end213
  %tobool219.not = icmp eq ptr %7, null
  br i1 %tobool219.not, label %do.body217.if.end225_crit_edge, label %land.lhs.true220

do.body217.if.end225_crit_edge:                   ; preds = %do.body217
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end225

land.lhs.true220:                                 ; preds = %do.body217
  call void @__sanitizer_cov_trace_pc() #11
  %hostname221 = getelementptr inbounds %struct.TCP_Server_Info, ptr %7, i32 0, i32 8
  %51 = ptrtoint ptr %hostname221 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hostname221, align 8
  %tobool222.not = icmp eq ptr %52, null
  %spec.select336 = select i1 %tobool222.not, ptr @.str.3, ptr %52
  br label %if.end225

if.end225:                                        ; preds = %land.lhs.true220, %do.body217.if.end225_crit_edge
  %sn218.0 = phi ptr [ @.str.3, %do.body217.if.end225_crit_edge ], [ %spec.select336, %land.lhs.true220 ]
  %call226 = call i32 @___ratelimit(ptr noundef nonnull @generate_key._rs.109, ptr noundef nonnull @__func__.generate_key) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call226)
  %tobool227.not = icmp eq i32 %call226, 0
  br i1 %tobool227.not, label %if.end225.smb3signkey_ret_crit_edge, label %do.end231

if.end225.smb3signkey_ret_crit_edge:              ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #11
  br label %smb3signkey_ret

do.end231:                                        ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #11
  %call233 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef nonnull %sn218.0, ptr noundef nonnull @__func__.generate_key) #12
  br label %smb3signkey_ret

if.end239:                                        ; preds = %if.end213
  %53 = ptrtoint ptr %sdeschmacsha256.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sdeschmacsha256.i, align 4
  %call243 = call i32 @crypto_shash_final(ptr noundef %54, ptr noundef nonnull %prfhash) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call243)
  %tobool244.not = icmp eq i32 %call243, 0
  br i1 %tobool244.not, label %if.end269, label %do.body247

do.body247:                                       ; preds = %if.end239
  %tobool249.not = icmp eq ptr %7, null
  br i1 %tobool249.not, label %do.body247.if.end255_crit_edge, label %land.lhs.true250

do.body247.if.end255_crit_edge:                   ; preds = %do.body247
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end255

land.lhs.true250:                                 ; preds = %do.body247
  call void @__sanitizer_cov_trace_pc() #11
  %hostname251 = getelementptr inbounds %struct.TCP_Server_Info, ptr %7, i32 0, i32 8
  %55 = ptrtoint ptr %hostname251 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hostname251, align 8
  %tobool252.not = icmp eq ptr %56, null
  %spec.select337 = select i1 %tobool252.not, ptr @.str.3, ptr %56
  br label %if.end255

if.end255:                                        ; preds = %land.lhs.true250, %do.body247.if.end255_crit_edge
  %sn248.0 = phi ptr [ @.str.3, %do.body247.if.end255_crit_edge ], [ %spec.select337, %land.lhs.true250 ]
  %call256 = call i32 @___ratelimit(ptr noundef nonnull @generate_key._rs.113, ptr noundef nonnull @__func__.generate_key) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call256)
  %tobool257.not = icmp eq i32 %call256, 0
  br i1 %tobool257.not, label %if.end255.smb3signkey_ret_crit_edge, label %do.end261

if.end255.smb3signkey_ret_crit_edge:              ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #11
  br label %smb3signkey_ret

do.end261:                                        ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #11
  %call263 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, ptr noundef nonnull %sn248.0, ptr noundef nonnull @__func__.generate_key) #12
  br label %smb3signkey_ret

if.end269:                                        ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #11
  %57 = call ptr @memcpy(ptr %key, ptr %prfhash, i32 %key_size)
  br label %smb3signkey_ret

smb3signkey_ret:                                  ; preds = %if.end269, %do.end261, %if.end255.smb3signkey_ret_crit_edge, %do.end231, %if.end225.smb3signkey_ret_crit_edge, %do.end188, %if.end182.smb3signkey_ret_crit_edge, %do.end156, %if.end150.smb3signkey_ret_crit_edge, %do.end126, %if.end120.smb3signkey_ret_crit_edge, %do.end96, %if.end90.smb3signkey_ret_crit_edge, %do.end65, %if.end59.smb3signkey_ret_crit_edge, %do.end37, %if.end31.smb3signkey_ret_crit_edge, %do.end, %if.end.smb3signkey_ret_crit_edge
  %rc.1 = phi i32 [ 0, %if.end269 ], [ %rc.0.i, %do.end ], [ %rc.0.i, %if.end.smb3signkey_ret_crit_edge ], [ %call19, %do.end37 ], [ %call19, %if.end31.smb3signkey_ret_crit_edge ], [ %retval.0.i340345, %do.end65 ], [ %retval.0.i340345, %if.end59.smb3signkey_ret_crit_edge ], [ %call78, %do.end96 ], [ %call78, %if.end90.smb3signkey_ret_crit_edge ], [ %call108, %do.end126 ], [ %call108, %if.end120.smb3signkey_ret_crit_edge ], [ %call138, %do.end156 ], [ %call138, %if.end150.smb3signkey_ret_crit_edge ], [ %call170, %do.end188 ], [ %call170, %if.end182.smb3signkey_ret_crit_edge ], [ %call212, %do.end231 ], [ %call212, %if.end225.smb3signkey_ret_crit_edge ], [ %call243, %do.end261 ], [ %call243, %if.end255.smb3signkey_ret_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %prfhash) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %L256) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %L128) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %zero) #9
  ret i32 %rc.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_final(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cifs_chan_needs_reconnect(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cifs_wake_up_task(ptr noundef) #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_smb3_cmd_enter(i32 noundef %tid, i64 noundef %sesid, i16 noundef zeroext %cmd, i64 noundef %mid) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_cmd_enter, i32 0, i32 1), ptr blockaddress(@trace_smb3_cmd_enter, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !234

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !222) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !237

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.128, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !222) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !239
  %call42 = tail call i32 @__traceiter_smb3_cmd_enter(ptr noundef null, i32 noundef %tid, i64 noundef %sesid, i16 noundef zeroext %cmd, i64 noundef %mid) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !240
  %13 = tail call i32 @llvm.read_register.i32(metadata !222) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !222) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !237

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.128, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !222) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !241
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_cmd_enter, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_cmd_enter, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_smb3_cmd_enter.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_smb3_cmd_enter.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.126, i32 noundef 491, ptr noundef nonnull @.str.127) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !242
  %31 = tail call i32 @llvm.read_register.i32(metadata !222) #9
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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_smb3_cmd_enter(ptr noundef, i32 noundef, i64 noundef, i16 noundef zeroext, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 123)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 123)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !54, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !68, !70, !71, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83, !84, !85, !87, !89, !91, !92, !93, !94, !95, !97, !98, !99, !100, !102, !103, !104, !105, !106, !108, !109, !110, !111, !113, !114, !115, !116, !118, !119, !120, !121, !123, !124, !125, !126, !128, !129, !130, !131, !133, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !149, !150, !152, !153, !154, !155, !157, !158, !159, !160, !162, !163, !164, !165, !167, !168, !169, !170, !172, !173, !174, !175, !177, !178, !179, !180, !182, !183, !184, !185, !187, !188, !189, !190, !192, !193, !194, !195, !196, !198, !199, !200, !201, !203, !204, !205, !206, !208, !210, !211, !212, !213, !214, !216, !217, !218, !219, !221}
!llvm.named.register.sp = !{!222}
!llvm.module.flags = !{!223, !224, !225, !226, !227, !228, !229, !230}
!llvm.ident = !{!231}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/cifs/smb2transport.c", i32 57, i32 23}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/cifs/smb2transport.c", i32 63, i32 23}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/cifs/smb2transport.c", i32 67, i32 23}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/cifs/smb2transport.c", i32 229, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @smb2_calc_signature._rs, !7, !"_rs", i1 false, i1 false}
!10 = !{ptr @__func__.smb2_calc_signature, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @smb2_calc_signature._entry, !7, !"_entry", i1 false, i1 false}
!14 = !{ptr @smb2_calc_signature._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @smb2_calc_signature._rs.7, !16, !"_rs", i1 false, i1 false}
!16 = !{!"../fs/cifs/smb2transport.c", i32 239, i32 4}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @smb2_calc_signature._entry.8, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @smb2_calc_signature._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @smb2_calc_signature._rs.11, !21, !"_rs", i1 false, i1 false}
!21 = !{!"../fs/cifs/smb2transport.c", i32 252, i32 3}
!22 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @smb2_calc_signature._entry.12, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @smb2_calc_signature._entry_ptr.14, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @smb2_calc_signature._rs.15, !26, !"_rs", i1 false, i1 false}
!26 = !{!"../fs/cifs/smb2transport.c", i32 260, i32 3}
!27 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @smb2_calc_signature._entry.16, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @smb2_calc_signature._entry_ptr.18, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @smb2_calc_signature._rs.19, !31, !"_rs", i1 false, i1 false}
!31 = !{!"../fs/cifs/smb2transport.c", i32 276, i32 4}
!32 = !{ptr @.str.21, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @smb2_calc_signature._entry.20, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @smb2_calc_signature._entry_ptr.22, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.23, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/cifs/smb2transport.c", i32 495, i32 22}
!37 = !{ptr @.str.24, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/cifs/smb2transport.c", i32 497, i32 24}
!39 = !{ptr @.str.25, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/cifs/smb2transport.c", i32 501, i32 22}
!41 = !{ptr @.str.26, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/cifs/smb2transport.c", i32 503, i32 24}
!43 = !{ptr @.str.27, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/cifs/smb2transport.c", i32 509, i32 24}
!45 = !{ptr @.str.28, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/cifs/smb2transport.c", i32 524, i32 22}
!47 = !{ptr @.str.29, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/cifs/smb2transport.c", i32 530, i32 22}
!49 = !{ptr @.str.30, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/cifs/smb2transport.c", i32 536, i32 22}
!51 = !{ptr @smb3_calc_signature._rs, !52, !"_rs", i1 false, i1 false}
!52 = !{!"../fs/cifs/smb2transport.c", i32 579, i32 3}
!53 = !{ptr @__func__.smb3_calc_signature, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.31, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @smb3_calc_signature._entry, !52, !"_entry", i1 false, i1 false}
!56 = !{ptr @smb3_calc_signature._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @smb3_calc_signature._rs.32, !58, !"_rs", i1 false, i1 false}
!58 = !{!"../fs/cifs/smb2transport.c", i32 590, i32 3}
!59 = !{ptr @.str.34, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @smb3_calc_signature._entry.33, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @smb3_calc_signature._entry_ptr.35, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @smb3_calc_signature._rs.36, !63, !"_rs", i1 false, i1 false}
!63 = !{!"../fs/cifs/smb2transport.c", i32 606, i32 4}
!64 = !{ptr @smb3_calc_signature._entry.37, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @smb3_calc_signature._entry_ptr.38, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.39, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/cifs/smb2transport.c", i32 680, i32 30}
!68 = !{ptr @smb2_verify_signature._rs, !69, !"_rs", i1 false, i1 false}
!69 = !{!"../fs/cifs/smb2transport.c", i32 681, i32 3}
!70 = !{ptr @.str.40, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.41, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.42, !69, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @smb2_verify_signature.descriptor, !69, !"descriptor", i1 false, i1 false}
!74 = !{ptr @smb2_verify_signature._rs.43, !75, !"_rs", i1 false, i1 false}
!75 = !{!"../fs/cifs/smb2transport.c", i32 698, i32 3}
!76 = !{ptr @.str.44, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @smb2_verify_signature._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @smb2_verify_signature._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @smb2_check_receive._rs, !80, !"_rs", i1 false, i1 false}
!80 = !{!"../fs/cifs/smb2transport.c", i32 829, i32 4}
!81 = !{ptr @__func__.smb2_check_receive, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.45, !80, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @smb2_check_receive._entry, !80, !"_entry", i1 false, i1 false}
!84 = !{ptr @smb2_check_receive._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.46, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/cifs/smb2transport.c", i32 905, i32 28}
!87 = !{ptr @.str.47, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/cifs/smb2transport.c", i32 907, i32 28}
!89 = !{ptr @smb3_crypto_aead_allocate._rs, !90, !"_rs", i1 false, i1 false}
!90 = !{!"../fs/cifs/smb2transport.c", i32 909, i32 4}
!91 = !{ptr @__func__.smb3_crypto_aead_allocate, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.48, !90, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @smb3_crypto_aead_allocate._entry, !90, !"_entry", i1 false, i1 false}
!94 = !{ptr @smb3_crypto_aead_allocate._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @smb3_crypto_aead_allocate._rs.49, !96, !"_rs", i1 false, i1 false}
!96 = !{!"../fs/cifs/smb2transport.c", i32 925, i32 4}
!97 = !{ptr @.str.51, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @smb3_crypto_aead_allocate._entry.50, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @smb3_crypto_aead_allocate._entry_ptr.52, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @generate_smb3signingkey._rs, !101, !"_rs", i1 false, i1 false}
!101 = !{!"../fs/cifs/smb2transport.c", i32 458, i32 2}
!102 = !{ptr @__func__.generate_smb3signingkey, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.53, !101, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @generate_smb3signingkey._entry, !101, !"_entry", i1 false, i1 false}
!105 = !{ptr @generate_smb3signingkey._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @generate_smb3signingkey._rs.54, !107, !"_rs", i1 false, i1 false}
!107 = !{!"../fs/cifs/smb2transport.c", i32 463, i32 2}
!108 = !{ptr @.str.56, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @generate_smb3signingkey._entry.55, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @generate_smb3signingkey._entry_ptr.57, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @generate_smb3signingkey._rs.58, !112, !"_rs", i1 false, i1 false}
!112 = !{!"../fs/cifs/smb2transport.c", i32 465, i32 2}
!113 = !{ptr @.str.60, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @generate_smb3signingkey._entry.59, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @generate_smb3signingkey._entry_ptr.61, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @generate_smb3signingkey._rs.62, !117, !"_rs", i1 false, i1 false}
!117 = !{!"../fs/cifs/smb2transport.c", i32 466, i32 2}
!118 = !{ptr @.str.64, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @generate_smb3signingkey._entry.63, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @generate_smb3signingkey._entry_ptr.65, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @generate_smb3signingkey._rs.66, !122, !"_rs", i1 false, i1 false}
!122 = !{!"../fs/cifs/smb2transport.c", i32 468, i32 2}
!123 = !{ptr @.str.68, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @generate_smb3signingkey._entry.67, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @generate_smb3signingkey._entry_ptr.69, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @generate_smb3signingkey._rs.70, !127, !"_rs", i1 false, i1 false}
!127 = !{!"../fs/cifs/smb2transport.c", i32 472, i32 3}
!128 = !{ptr @.str.72, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @generate_smb3signingkey._entry.71, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @generate_smb3signingkey._entry_ptr.73, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @generate_smb3signingkey._rs.74, !132, !"_rs", i1 false, i1 false}
!132 = !{!"../fs/cifs/smb2transport.c", i32 474, i32 3}
!133 = !{ptr @.str.76, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @generate_smb3signingkey._entry.75, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @generate_smb3signingkey._entry_ptr.77, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @generate_smb3signingkey._rs.78, !137, !"_rs", i1 false, i1 false}
!137 = !{!"../fs/cifs/smb2transport.c", i32 477, i32 3}
!138 = !{ptr @generate_smb3signingkey._entry.79, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @generate_smb3signingkey._entry_ptr.80, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @generate_smb3signingkey._rs.81, !141, !"_rs", i1 false, i1 false}
!141 = !{!"../fs/cifs/smb2transport.c", i32 479, i32 3}
!142 = !{ptr @generate_smb3signingkey._entry.82, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @generate_smb3signingkey._entry_ptr.83, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @generate_key._rs, !145, !"_rs", i1 false, i1 false}
!145 = !{!"../fs/cifs/smb2transport.c", i32 314, i32 3}
!146 = !{ptr @__func__.generate_key, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.84, !145, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @generate_key._entry, !145, !"_entry", i1 false, i1 false}
!149 = !{ptr @generate_key._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @generate_key._rs.85, !151, !"_rs", i1 false, i1 false}
!151 = !{!"../fs/cifs/smb2transport.c", i32 321, i32 3}
!152 = !{ptr @.str.87, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @generate_key._entry.86, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @generate_key._entry_ptr.88, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @generate_key._rs.89, !156, !"_rs", i1 false, i1 false}
!156 = !{!"../fs/cifs/smb2transport.c", i32 327, i32 3}
!157 = !{ptr @.str.91, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @generate_key._entry.90, !156, !"_entry", i1 false, i1 false}
!159 = !{ptr @generate_key._entry_ptr.92, !156, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @generate_key._rs.93, !161, !"_rs", i1 false, i1 false}
!161 = !{!"../fs/cifs/smb2transport.c", i32 334, i32 3}
!162 = !{ptr @.str.95, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @generate_key._entry.94, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @generate_key._entry_ptr.96, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @generate_key._rs.97, !166, !"_rs", i1 false, i1 false}
!166 = !{!"../fs/cifs/smb2transport.c", i32 341, i32 3}
!167 = !{ptr @.str.99, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @generate_key._entry.98, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @generate_key._entry_ptr.100, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @generate_key._rs.101, !171, !"_rs", i1 false, i1 false}
!171 = !{!"../fs/cifs/smb2transport.c", i32 348, i32 3}
!172 = !{ptr @.str.103, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @generate_key._entry.102, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @generate_key._entry_ptr.104, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @generate_key._rs.105, !176, !"_rs", i1 false, i1 false}
!176 = !{!"../fs/cifs/smb2transport.c", i32 355, i32 3}
!177 = !{ptr @.str.107, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @generate_key._entry.106, !176, !"_entry", i1 false, i1 false}
!179 = !{ptr @generate_key._entry_ptr.108, !176, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @generate_key._rs.109, !181, !"_rs", i1 false, i1 false}
!181 = !{!"../fs/cifs/smb2transport.c", i32 368, i32 3}
!182 = !{ptr @.str.111, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @generate_key._entry.110, !181, !"_entry", i1 false, i1 false}
!184 = !{ptr @generate_key._entry_ptr.112, !181, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @generate_key._rs.113, !186, !"_rs", i1 false, i1 false}
!186 = !{!"../fs/cifs/smb2transport.c", i32 375, i32 3}
!187 = !{ptr @.str.115, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @generate_key._entry.114, !186, !"_entry", i1 false, i1 false}
!189 = !{ptr @generate_key._entry_ptr.116, !186, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @smb2_get_sign_key._rs, !191, !"_rs", i1 false, i1 false}
!191 = !{!"../fs/cifs/smb2transport.c", i32 97, i32 2}
!192 = !{ptr @__func__.smb2_get_sign_key, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @.str.117, !191, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @smb2_get_sign_key._entry, !191, !"_entry", i1 false, i1 false}
!195 = !{ptr @smb2_get_sign_key._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @smb2_get_sign_key._rs.118, !197, !"_rs", i1 false, i1 false}
!197 = !{!"../fs/cifs/smb2transport.c", i32 130, i32 2}
!198 = !{ptr @.str.120, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @smb2_get_sign_key._entry.119, !197, !"_entry", i1 false, i1 false}
!200 = !{ptr @smb2_get_sign_key._entry_ptr.121, !197, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @smb2_get_mid_entry._rs, !202, !"_rs", i1 false, i1 false}
!202 = !{!"../fs/cifs/smb2transport.c", i32 772, i32 3}
!203 = !{ptr @.str.122, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @.str.123, !202, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @smb2_get_mid_entry.descriptor, !202, !"descriptor", i1 false, i1 false}
!206 = distinct !{null, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../fs/cifs/smb2transport.c", i32 650, i32 28}
!208 = !{ptr @smb2_mid_entry_alloc._rs, !209, !"_rs", i1 false, i1 false}
!209 = !{!"../fs/cifs/smb2transport.c", i32 729, i32 3}
!210 = !{ptr @__func__.smb2_mid_entry_alloc, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @.str.125, !209, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @smb2_mid_entry_alloc._entry, !209, !"_entry", i1 false, i1 false}
!213 = !{ptr @smb2_mid_entry_alloc._entry_ptr, !209, !"_entry_ptr", i1 false, i1 false}
!214 = distinct !{null, !215, !"__already_done", i1 false, i1 false}
!215 = !{!"../fs/cifs/trace.h", i32 491, i32 1}
!216 = !{ptr @.str.126, !215, !"<string literal>", i1 false, i1 false}
!217 = distinct !{null, !215, !"__warned", i1 false, i1 false}
!218 = !{ptr @.str.127, !215, !"<string literal>", i1 false, i1 false}
!219 = distinct !{null, !220, !"__already_done", i1 false, i1 false}
!220 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!221 = !{ptr @.str.128, !220, !"<string literal>", i1 false, i1 false}
!222 = !{!"sp"}
!223 = !{i32 1, !"wchar_size", i32 2}
!224 = !{i32 1, !"min_enum_size", i32 4}
!225 = !{i32 8, !"branch-target-enforcement", i32 0}
!226 = !{i32 8, !"sign-return-address", i32 0}
!227 = !{i32 8, !"sign-return-address-all", i32 0}
!228 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!229 = !{i32 7, !"uwtable", i32 1}
!230 = !{i32 7, !"frame-pointer", i32 2}
!231 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!232 = !{!"auto-init"}
!233 = !{i8 0, i8 2}
!234 = !{i64 2148498284, i64 2148498289, i64 2148498302, i64 2148498346, i64 2148498380, i64 2148498401}
!235 = !{i64 2148675216, i64 2148675248, i64 2148675277, i64 2148675311, i64 2148675342, i64 2148675365}
!236 = !{!"branch_weights", i32 1, i32 2000}
!237 = !{!"branch_weights", i32 2000, i32 1}
!238 = !{i64 2148673686, i64 2148673712, i64 2148673741, i64 2148673775, i64 2148673806, i64 2148673829}
!239 = !{i64 2158477546}
!240 = !{i64 2158477777}
!241 = !{i64 2149494691}
!242 = !{i64 2149495727}
