; ModuleID = '/llk/IR_all_yes/fs/ksmbd/smb_common.c_pt.bc'
source_filename = "../fs/ksmbd/smb_common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.smb_protocol = type { i32, ptr, ptr, i16 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ksmbd_server_config = type { i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, %struct.smb_sid, i32, [3 x ptr] }
%struct.smb_sid = type { i8, i8, [6 x i8], [15 x i32] }
%struct.ksmbd_work = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, ptr, i32, i32, i32, i32, ptr, i8, i8, i32, i32, ptr, ptr, %struct.work_struct, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.smb_hdr = type <{ i32, [4 x i8], i8, %union.anon.194, i8, i16, i16, %union.anon.196, [2 x i8], i16, i16, i16, i16, i8 }>
%union.anon.194 = type { i32 }
%union.anon.196 = type { %struct.anon.197 }
%struct.anon.197 = type { i32, i32 }
%struct.ksmbd_conn = type { ptr, ptr, ptr, i32, %struct.mutex, i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.spinlock, %struct.wait_queue_head, %struct.spinlock, %struct.list_head, %struct.list_head, i32, %struct.ksmbd_stats, [16 x i8], %struct.ntlmssp_auth, %struct.spinlock, %struct.list_head, ptr, i8, i32, i32, i8, i8, i16, i16, i16, ptr, ptr, %struct.list_head, %struct.__kernel_sockaddr_storage, %struct.ida, i16, i16, i8, i8, i16, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ksmbd_stats = type { %struct.atomic_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.ntlmssp_auth = type { i8, i32, i32, [16 x i8], [8 x i8] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.__kernel_sockaddr_storage = type { %union.anon.166 }
%union.anon.166 = type { ptr, [124 x i8] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.ksmbd_kstat = type { ptr, i64, i32 }
%struct.file = type { %union.anon.11, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.11 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.ksmbd_dir_info = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i8, i32, i32 }
%struct.ksmbd_file = type { ptr, ptr, i64, i64, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, i64, i64, i8, i8, [16 x i8], [16 x i8], [16 x i8], %struct.stream, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.ksmbd_readdir_data, [2 x i32] }
%struct.stream = type { ptr, i32 }
%struct.ksmbd_readdir_data = type { %struct.dir_context, %union.anon.198, i32, i32, i32 }
%struct.dir_context = type { ptr, i64 }
%union.anon.198 = type { ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.124, %struct.list_head, %struct.list_head, %union.anon.125 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.12, ptr }
%union.anon.12 = type { i64 }
%struct.lockref = type { %union.anon.14 }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { %struct.spinlock, i32 }
%union.anon.124 = type { %struct.list_head }
%union.anon.125 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.smb_negotiate_req = type <{ %struct.smb_hdr, i16, [1 x i8] }>
%struct.ksmbd_inode = type { %struct.rwlock_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, ptr, i32 }
%struct.ksmbd_tree_connect = type { i32, i32, ptr, ptr, %struct.list_head, i32, i8 }
%struct.ksmbd_session = type { i64, ptr, ptr, i32, i32, i8, i8, i8, i32, ptr, [40 x i8], %struct.hlist_node, %struct.list_head, %struct.xarray, %struct.ida, %struct.list_head, [32 x i8], [32 x i8], [16 x i8], %struct.list_head, %struct.ksmbd_file_table, %struct.atomic_t }
%struct.ksmbd_file_table = type { %struct.rwlock_t, ptr }
%struct.ksmbd_user = type { i16, i32, i32, ptr, i32, ptr, i32 }
%struct.ksmbd_share_config = type { ptr, ptr, i32, i32, %struct.list_head, %struct.path, %struct.atomic_t, %struct.hlist_node, i16, i16, i16, i16, i16, i16 }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.118 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.118 = type { %struct.callback_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.160, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.2 }
%struct.llist_node = type { ptr }
%union.anon.2 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.138 }
%union.anon.138 = type { %struct.anon.139 }
%struct.anon.139 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.160 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@smb1_protos = internal constant { [2 x %struct.smb_protocol], [32 x i8] } { [2 x %struct.smb_protocol] [%struct.smb_protocol { i32 2, ptr @.str.25, ptr @.str.26, i16 528 }, %struct.smb_protocol { i32 3, ptr @.str.27, ptr @.str.28, i16 767 }], [32 x i8] zeroinitializer }, align 32
@ksmbd_debug_types = external dso_local local_unnamed_addr global i32, align 4
@ksmbd_lookup_protocol_idx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016ksmbd: selected %s dialect idx = %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ksmbd_lookup_protocol_idx\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fs/ksmbd/smb_common.c\00", [42 x i8] zeroinitializer }, align 32
@ksmbd_lookup_protocol_idx._entry_ptr = internal global ptr @ksmbd_lookup_protocol_idx._entry, section ".printk_index", align 4
@smb2_protos = internal constant { [4 x %struct.smb_protocol], [32 x i8] } { [4 x %struct.smb_protocol] [%struct.smb_protocol { i32 2, ptr @.str.25, ptr @.str.26, i16 528 }, %struct.smb_protocol { i32 4, ptr @.str.29, ptr @.str.30, i16 768 }, %struct.smb_protocol { i32 5, ptr @.str.31, ptr @.str.32, i16 770 }, %struct.smb_protocol { i32 6, ptr @.str.33, ptr @.str.34, i16 785 }], [32 x i8] zeroinitializer }, align 32
@ksmbd_lookup_protocol_idx._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ksmbd_lookup_protocol_idx._entry_ptr.4 = internal global ptr @ksmbd_lookup_protocol_idx._entry.3, section ".printk_index", align 4
@ksmbd_lookup_dialect_by_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016ksmbd: client requested dialect 0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ksmbd_lookup_dialect_by_id\00", [37 x i8] zeroinitializer }, align 32
@ksmbd_lookup_dialect_by_id._entry_ptr = internal global ptr @ksmbd_lookup_dialect_by_id._entry, section ".printk_index", align 4
@ksmbd_lookup_dialect_by_id._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016ksmbd: selected %s dialect\0A\00", [34 x i8] zeroinitializer }, align 32
@ksmbd_lookup_dialect_by_id._entry_ptr.9 = internal global ptr @ksmbd_lookup_dialect_by_id._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c".\00", [30 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"..\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"___\00", [28 x i8] zeroinitializer }, align 32
@basechars = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_-!@#$%", [53 x i8] zeroinitializer }, align 32
@ksmbd_smb_negotiate_common._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 453, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016ksmbd: conn->dialect 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ksmbd_smb_negotiate_common\00", [37 x i8] zeroinitializer }, align 32
@ksmbd_smb_negotiate_common._entry_ptr = internal global ptr @ksmbd_smb_negotiate_common._entry, section ".printk_index", align 4
@ksmbd_smb_negotiate_common._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.2, i32 459, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016ksmbd: Downgrade to SMB1 negotiation\0A\00", [56 x i8] zeroinitializer }, align 32
@ksmbd_smb_negotiate_common._entry_ptr.17 = internal global ptr @ksmbd_smb_negotiate_common._entry.15, section ".printk_index", align 4
@ksmbd_smb_negotiate_common._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.2, i32 475, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016ksmbd: Upgrade to SMB2 negotiation\0A\00", [58 x i8] zeroinitializer }, align 32
@ksmbd_smb_negotiate_common._entry_ptr.20 = internal global ptr @ksmbd_smb_negotiate_common._entry.18, section ".printk_index", align 4
@ksmbd_smb_negotiate_common._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.14, ptr @.str.2, i32 481, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013ksmbd: Unknown SMB negotiation command: %u\0A\00", [50 x i8] zeroinitializer }, align 32
@ksmbd_smb_negotiate_common._entry_ptr.23 = internal global ptr @ksmbd_smb_negotiate_common._entry.21, section ".printk_index", align 4
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\02SMB 2.1\00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SMB2_10\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\02SMB 2.???\00", [21 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SMB2_22\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\02SMB 3.0\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SMB3_00\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\02SMB 3.02\00", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SMB3_02\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\02SMB 3.1.1\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SMB3_11\00", [24 x i8] zeroinitializer }, align 32
@server_conf = external dso_local local_unnamed_addr global %struct.ksmbd_server_config, align 4
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@ksmbd_lookup_dialect_by_name._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016ksmbd: client requested dialect %s\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ksmbd_lookup_dialect_by_name\00", [35 x i8] zeroinitializer }, align 32
@ksmbd_lookup_dialect_by_name._entry_ptr = internal global ptr @ksmbd_lookup_dialect_by_name._entry, section ".printk_index", align 4
@ksmbd_lookup_dialect_by_name._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.36, ptr @.str.2, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ksmbd_lookup_dialect_by_name._entry_ptr.38 = internal global ptr @ksmbd_lookup_dialect_by_name._entry.37, section ".printk_index", align 4
@smb_handle_negotiate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 441, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016ksmbd: Unsupported SMB protocol\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"smb_handle_negotiate\00", [43 x i8] zeroinitializer }, align 32
@smb_handle_negotiate._entry_ptr = internal global ptr @smb_handle_negotiate._entry, section ".printk_index", align 4
@smb_shared_mode_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 506, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\016ksmbd: %s\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"smb_shared_mode_error\00", [42 x i8] zeroinitializer }, align 32
@smb_shared_mode_error._entry_ptr = internal global ptr @smb_shared_mode_error._entry, section ".printk_index", align 4
@smb_shared_mode_error._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.2, i32 508, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016ksmbd: Current mode: 0x%x Desired mode: 0x%x\0A\00", [48 x i8] zeroinitializer }, align 32
@smb_shared_mode_error._entry_ptr.45 = internal global ptr @smb_shared_mode_error._entry.43, section ".printk_index", align 4
@.str.46 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Current access mode does not permit SHARE_DELETE\00", [47 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Current access mode does not permit SHARE_READ\00", [49 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Current access mode does not permit SHARE_WRITE\00", [48 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Desired access mode does not permit FILE_READ\00", [50 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Desired access mode does not permit FILE_WRITE\00", [49 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Desired access mode does not permit FILE_DELETE\00", [48 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/cred.h\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4266872130, i64 4283649346]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 114]
@___asan_gen_.54 = private unnamed_addr constant [12 x i8] c"smb1_protos\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 32, i32 28 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 106, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant [12 x i8] c"smb2_protos\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 47, i32 28 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 116, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 222, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 229, i32 5 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 315, i32 20 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 319, i32 20 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 382, i32 22 }
@___asan_gen_.99 = private unnamed_addr constant [10 x i8] c"basechars\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 19, i32 19 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 453, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 459, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 475, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 481, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 35, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 36, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 41, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 42, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 56, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 57, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 62, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 63, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 68, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 69, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 194, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 198, i32 6 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 441, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 506, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 507, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 495, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 496, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 497, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 498, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 499, i32 2 }
@___asan_gen_.211 = private constant [25 x i8] c"../fs/ksmbd/smb_common.c\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 500, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.214 = private unnamed_addr constant [24 x i8] c"../include/linux/cred.h\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 286, i32 3 }
@llvm.compiler.used = appending global [67 x ptr] [ptr @ksmbd_lookup_dialect_by_id._entry, ptr @ksmbd_lookup_dialect_by_id._entry.7, ptr @ksmbd_lookup_dialect_by_id._entry_ptr, ptr @ksmbd_lookup_dialect_by_id._entry_ptr.9, ptr @ksmbd_lookup_dialect_by_name._entry, ptr @ksmbd_lookup_dialect_by_name._entry.37, ptr @ksmbd_lookup_dialect_by_name._entry_ptr, ptr @ksmbd_lookup_dialect_by_name._entry_ptr.38, ptr @ksmbd_lookup_protocol_idx._entry, ptr @ksmbd_lookup_protocol_idx._entry.3, ptr @ksmbd_lookup_protocol_idx._entry_ptr, ptr @ksmbd_lookup_protocol_idx._entry_ptr.4, ptr @ksmbd_smb_negotiate_common._entry, ptr @ksmbd_smb_negotiate_common._entry.15, ptr @ksmbd_smb_negotiate_common._entry.18, ptr @ksmbd_smb_negotiate_common._entry.21, ptr @ksmbd_smb_negotiate_common._entry_ptr, ptr @ksmbd_smb_negotiate_common._entry_ptr.17, ptr @ksmbd_smb_negotiate_common._entry_ptr.20, ptr @ksmbd_smb_negotiate_common._entry_ptr.23, ptr @smb_handle_negotiate._entry, ptr @smb_handle_negotiate._entry_ptr, ptr @smb_shared_mode_error._entry, ptr @smb_shared_mode_error._entry.43, ptr @smb_shared_mode_error._entry_ptr, ptr @smb_shared_mode_error._entry_ptr.45, ptr @smb1_protos, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @smb2_protos, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @basechars, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb1_protos to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_lookup_protocol_idx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_protos to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_lookup_protocol_idx._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_lookup_dialect_by_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_lookup_dialect_by_id._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @basechars to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_smb_negotiate_common._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_smb_negotiate_common._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_smb_negotiate_common._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_smb_negotiate_common._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_lookup_dialect_by_name._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_lookup_dialect_by_name._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_handle_negotiate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_shared_mode_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb_shared_mode_error._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ksmbd_server_side_copy_max_chunk_count() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 256
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ksmbd_server_side_copy_max_chunk_size() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 2147483647
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ksmbd_server_side_copy_max_total_size() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 2147483647
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ksmbd_min_protocol() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  ret i32 2
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ksmbd_max_protocol() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  ret i32 6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_lookup_protocol_idx(ptr nocapture noundef readonly %str) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlen(ptr noundef %str) #15
  %call1 = tail call i32 @strncmp(ptr noundef %str, ptr noundef nonnull @.str.28, i32 noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.end11

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.body:                                          ; preds = %if.end11.do.body_crit_edge, %entry.do.body_crit_edge
  %offt.057.lcssa = phi i32 [ 1, %entry.do.body_crit_edge ], [ 0, %if.end11.do.body_crit_edge ]
  %.lcssa61 = phi ptr [ @.str.28, %entry.do.body_crit_edge ], [ @.str.26, %if.end11.do.body_crit_edge ]
  %arrayidx.le = getelementptr [2 x %struct.smb_protocol], ptr @smb1_protos, i32 0, i32 %offt.057.lcssa
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %0 = load i32, ptr @ksmbd_debug_types, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.body.cleanup.sink.split_crit_edge, label %do.end

do.body.cleanup.sink.split_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull %.lcssa61, i32 noundef %offt.057.lcssa) #16
  br label %cleanup.sink.split

if.end11:                                         ; preds = %entry
  %call1.1 = tail call i32 @strncmp(ptr noundef %str, ptr noundef nonnull @.str.26, i32 noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1)
  %tobool.not.1 = icmp eq i32 %call1.1, 0
  br i1 %tobool.not.1, label %if.end11.do.body_crit_edge, label %if.end11.1

if.end11.do.body_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.end11.1:                                       ; preds = %if.end11
  %call17 = tail call i32 @strncmp(ptr noundef %str, ptr noundef nonnull @.str.34, i32 noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end11.1.do.body20_crit_edge, label %if.end36

if.end11.1.do.body20_crit_edge:                   ; preds = %if.end11.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body20

do.body20:                                        ; preds = %if.end36.1.do.body20_crit_edge, %if.end36.do.body20_crit_edge, %if.end11.1.do.body20_crit_edge
  %offt.158.lcssa = phi i32 [ 3, %if.end11.1.do.body20_crit_edge ], [ 2, %if.end36.do.body20_crit_edge ], [ 1, %if.end36.1.do.body20_crit_edge ]
  %.lcssa = phi ptr [ @.str.34, %if.end11.1.do.body20_crit_edge ], [ @.str.32, %if.end36.do.body20_crit_edge ], [ @.str.30, %if.end36.1.do.body20_crit_edge ]
  %arrayidx15.le = getelementptr [4 x %struct.smb_protocol], ptr @smb2_protos, i32 0, i32 %offt.158.lcssa
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %1 = load i32, ptr @ksmbd_debug_types, align 4
  %and21 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %do.body20.cleanup.sink.split_crit_edge, label %do.end26

do.body20.cleanup.sink.split_crit_edge:           ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

do.end26:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #14
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull %.lcssa, i32 noundef %offt.158.lcssa) #16
  br label %cleanup.sink.split

if.end36:                                         ; preds = %if.end11.1
  %call17.1 = tail call i32 @strncmp(ptr noundef %str, ptr noundef nonnull @.str.32, i32 noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.1)
  %tobool18.not.1 = icmp eq i32 %call17.1, 0
  br i1 %tobool18.not.1, label %if.end36.do.body20_crit_edge, label %if.end36.1

if.end36.do.body20_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body20

if.end36.1:                                       ; preds = %if.end36
  %call17.2 = tail call i32 @strncmp(ptr noundef %str, ptr noundef nonnull @.str.30, i32 noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.2)
  %tobool18.not.2 = icmp eq i32 %call17.2, 0
  br i1 %tobool18.not.2, label %if.end36.1.do.body20_crit_edge, label %if.end36.1.cleanup_crit_edge

if.end36.1.cleanup_crit_edge:                     ; preds = %if.end36.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end36.1.do.body20_crit_edge:                   ; preds = %if.end36.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body20

cleanup.sink.split:                               ; preds = %do.end26, %do.body20.cleanup.sink.split_crit_edge, %do.end, %do.body.cleanup.sink.split_crit_edge
  %arrayidx15.le.sink = phi ptr [ %arrayidx.le, %do.end ], [ %arrayidx.le, %do.body.cleanup.sink.split_crit_edge ], [ %arrayidx15.le, %do.end26 ], [ %arrayidx15.le, %do.body20.cleanup.sink.split_crit_edge ]
  %2 = ptrtoint ptr %arrayidx15.le.sink to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx15.le.sink, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end36.1.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.end36.1.cleanup_crit_edge ], [ %3, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_verify_smb_message(ptr noundef %work) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %request_buf.i = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 3
  %0 = ptrtoint ptr %request_buf.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %request_buf.i, align 4
  %next_smb2_rcv_hdr_off.i = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 6
  %2 = ptrtoint ptr %next_smb2_rcv_hdr_off.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %next_smb2_rcv_hdr_off.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 %3
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 4
  %4 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %add.ptr1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28095166, i32 %5)
  %cmp = icmp eq i32 %5, -28095166
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 @ksmbd_smb2_check_message(ptr noundef %work) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %Protocol = getelementptr inbounds %struct.smb_hdr, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %Protocol to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %Protocol, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11317950, i32 %7)
  %cmp2 = icmp eq i32 %7, -11317950
  br i1 %cmp2, label %land.lhs.true, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %Command = getelementptr inbounds %struct.smb_hdr, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %Command to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %Command, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 114, i8 %9)
  %cmp3 = icmp eq i8 %9, 114
  br i1 %cmp3, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %land.lhs.true.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ -22, %if.end6 ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksmbd_smb2_check_message(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ksmbd_smb_request(ptr nocapture noundef readonly %conn) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %request_buf = getelementptr inbounds %struct.ksmbd_conn, ptr %conn, i32 0, i32 7
  %0 = ptrtoint ptr %request_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %request_buf, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_lookup_dialect_by_id(ptr nocapture noundef readonly %cli_dialects, i16 noundef zeroext %dialects_count) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i16 @llvm.bswap.i16(i16 %dialects_count)
  %conv = zext i16 %0 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dialects_count)
  %cmp148.not = icmp eq i16 %dialects_count, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.050 = phi i32 [ 3, %entry ], [ %dec35, %for.inc.for.body_crit_edge ]
  br i1 %cmp148.not, label %for.body.for.inc_crit_edge, label %do.body.lr.ph

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

do.body.lr.ph:                                    ; preds = %for.body
  %prot_id = getelementptr [4 x %struct.smb_protocol], ptr @smb2_protos, i32 0, i32 %i.050, i32 3
  %arrayidx9 = getelementptr [4 x %struct.smb_protocol], ptr @smb2_protos, i32 0, i32 %i.050
  br label %do.body

do.body:                                          ; preds = %while.cond.backedge.do.body_crit_edge, %do.body.lr.ph
  %dec49.in = phi i32 [ %conv, %do.body.lr.ph ], [ %dec49, %while.cond.backedge.do.body_crit_edge ]
  %dec49 = add nsw i32 %dec49.in, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %1 = load i32, ptr @ksmbd_debug_types, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end6_crit_edge, label %do.end

do.body.do.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end6

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr i16, ptr %cli_dialects, i32 %dec49
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %conv4 = zext i16 %4 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %conv4) #16
  br label %do.end6

do.end6:                                          ; preds = %do.end, %do.body.do.end6_crit_edge
  %arrayidx7 = getelementptr i16, ptr %cli_dialects, i32 %dec49
  %5 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx7, align 2
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %8 = ptrtoint ptr %prot_id to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %prot_id, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %9)
  %cmp11.not = icmp eq i16 %7, %9
  br i1 %cmp11.not, label %if.end14, label %do.end6.while.cond.backedge_crit_edge

do.end6.while.cond.backedge_crit_edge:            ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %land.rhs.i.while.cond.backedge_crit_edge, %if.end.i.while.cond.backedge_crit_edge, %do.end6.while.cond.backedge_crit_edge
  %cmp1 = icmp sgt i32 %dec49.in, 1
  br i1 %cmp1, label %while.cond.backedge.do.body_crit_edge, label %while.cond.backedge.for.inc_crit_edge

while.cond.backedge.for.inc_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

while.cond.backedge.do.body_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.end14:                                         ; preds = %do.end6
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp.i = icmp eq i32 %11, 3
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end14.if.end.i_crit_edge

if.end14.if.end.i_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end14
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 4) to i32))
  %12 = load i16, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %12)
  %cmp1.i = icmp sgt i16 %12, 1
  br i1 %cmp1.i, label %land.lhs.true.i.do.body18_crit_edge, label %lor.lhs.false.i

land.lhs.true.i.do.body18_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body18

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 5) to i32))
  %13 = load i16, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 5), align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %13)
  %cmp4.i = icmp slt i16 %13, 7
  br i1 %cmp4.i, label %lor.lhs.false.i.do.body18_crit_edge, label %lor.lhs.false.i.if.end.i_crit_edge

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

lor.lhs.false.i.do.body18_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body18

if.end.i:                                         ; preds = %lor.lhs.false.i.if.end.i_crit_edge, %if.end14.if.end.i_crit_edge
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 4) to i32))
  %14 = load i16, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 4), align 4
  %conv6.i = sext i16 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv6.i)
  %cmp7.not.i = icmp slt i32 %11, %conv6.i
  br i1 %cmp7.not.i, label %if.end.i.while.cond.backedge_crit_edge, label %land.rhs.i

if.end.i.while.cond.backedge_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge

land.rhs.i:                                       ; preds = %if.end.i
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 5) to i32))
  %15 = load i16, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 5), align 2
  %conv9.i = sext i16 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv9.i)
  %cmp10.i.not = icmp sgt i32 %11, %conv9.i
  br i1 %cmp10.i.not, label %land.rhs.i.while.cond.backedge_crit_edge, label %land.rhs.i.do.body18_crit_edge

land.rhs.i.do.body18_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body18

land.rhs.i.while.cond.backedge_crit_edge:         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge

do.body18:                                        ; preds = %land.rhs.i.do.body18_crit_edge, %lor.lhs.false.i.do.body18_crit_edge, %land.lhs.true.i.do.body18_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %16 = load i32, ptr @ksmbd_debug_types, align 4
  %and19 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %do.body18.do.end30_crit_edge, label %do.end24

do.body18.do.end30_crit_edge:                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end30

do.end24:                                         ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr [4 x %struct.smb_protocol], ptr @smb2_protos, i32 0, i32 %i.050, i32 1
  %17 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name, align 4
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %18) #16
  br label %do.end30

do.end30:                                         ; preds = %do.end24, %do.body18.do.end30_crit_edge
  %conv33 = zext i16 %7 to i32
  br label %cleanup

for.inc:                                          ; preds = %while.cond.backedge.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %dec35 = add nsw i32 %i.050, -1
  %cmp = icmp sgt i32 %i.050, 0
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end30
  %retval.0 = phi i32 [ %conv33, %do.end30 ], [ 65535, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_init_smb_server(ptr noundef %work) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %work to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %work, align 8
  %need_neg = getelementptr inbounds %struct.ksmbd_conn, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %need_neg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %need_neg, align 4, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @init_smb3_11_server(ptr noundef %1) #12
  %ops = getelementptr inbounds %struct.ksmbd_conn, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call3 = tail call zeroext i16 %7(ptr noundef %work) #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 114, i16 %call3)
  %cmp5.not = icmp eq i16 %call3, 114
  br i1 %cmp5.not, label %if.end.cleanup_crit_edge, label %if.then7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %need_neg to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %need_neg, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @init_smb3_11_server(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_populate_dot_dotdot_entries(ptr noundef %work, i32 noundef %info_level, ptr nocapture noundef %dir, ptr noundef %d_info, ptr noundef %search_pattern, ptr nocapture noundef readonly %fn) local_unnamed_addr #2 align 64 {
entry:
  %kstat = alloca %struct.kstat, align 8
  %ksmbd_kstat = alloca %struct.ksmbd_kstat, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %work to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %work, align 8
  %2 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dir, align 8
  %f_path.i = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %f_path.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_path.i, align 8
  %mnt_userns.i.i = getelementptr inbounds %struct.vfsmount, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %mnt_userns.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %mnt_userns.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !122
  %name_len7 = getelementptr inbounds %struct.ksmbd_dir_info, ptr %d_info, i32 0, i32 3
  %out_buf_len = getelementptr inbounds %struct.ksmbd_dir_info, ptr %d_info, i32 0, i32 4
  %flags = getelementptr inbounds %struct.ksmbd_dir_info, ptr %d_info, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %kstat) #12
  %8 = call ptr @memset(ptr %kstat, i32 255, i32 144)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ksmbd_kstat) #12
  %9 = call ptr @memset(ptr %ksmbd_kstat, i32 255, i32 24)
  %arrayidx = getelementptr %struct.ksmbd_file, ptr %dir, i32 0, i32 28, i32 0
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.end, label %entry.for.inc_crit_edge

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %d_info to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.10, ptr %d_info, align 4
  %13 = ptrtoint ptr %name_len7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %name_len7, align 4
  %14 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dir, align 8
  %dentry5 = getelementptr inbounds %struct.file, ptr %15, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %dentry5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %dentry.0 = load ptr, ptr %dentry5, align 4
  %call13 = call i32 @match_pattern(ptr noundef nonnull @.str.10, i32 noundef 1, ptr noundef %search_pattern) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %arrayidx, align 4
  br label %for.inc

if.end18:                                         ; preds = %if.end
  %18 = ptrtoint ptr %ksmbd_kstat to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %kstat, ptr %ksmbd_kstat, align 8
  %call20 = call i32 @ksmbd_vfs_fill_dentry_attrs(ptr noundef %work, ptr noundef %7, ptr noundef %dentry.0, ptr noundef nonnull %ksmbd_kstat) #12
  %call21 = call i32 %fn(ptr noundef %1, i32 noundef %info_level, ptr noundef %d_info, ptr noundef nonnull %ksmbd_kstat) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end18.cleanup.thread_crit_edge

if.end18.cleanup.thread_crit_edge:                ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

if.end24:                                         ; preds = %if.end18
  %19 = ptrtoint ptr %out_buf_len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %out_buf_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp25 = icmp slt i32 %20, 1
  br i1 %cmp25, label %if.end24.cleanup.thread_crit_edge, label %if.end27

if.end24.cleanup.thread_crit_edge:                ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

if.end27:                                         ; preds = %if.end24
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %arrayidx, align 4
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 4
  %and = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool30.not = icmp eq i32 %and, 0
  br i1 %tobool30.not, label %if.end27.for.inc_crit_edge, label %if.end27.if.then31_crit_edge

if.end27.if.then31_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then31

if.end27.for.inc_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then31:                                        ; preds = %if.end27.1.if.then31_crit_edge, %if.end27.if.then31_crit_edge
  %24 = ptrtoint ptr %out_buf_len to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %out_buf_len, align 4
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end24.1.cleanup.thread_crit_edge, %if.end18.1.cleanup.thread_crit_edge, %if.then31, %if.end24.cleanup.thread_crit_edge, %if.end18.cleanup.thread_crit_edge
  %call2170 = phi i32 [ 0, %if.then31 ], [ 0, %if.end24.cleanup.thread_crit_edge ], [ %call21, %if.end18.cleanup.thread_crit_edge ], [ %call21.1, %if.end18.1.cleanup.thread_crit_edge ], [ 0, %if.end24.1.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ksmbd_kstat) #12
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %kstat) #12
  br label %for.end

for.inc:                                          ; preds = %if.end27.for.inc_crit_edge, %if.then15, %entry.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ksmbd_kstat) #12
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %kstat) #12
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %kstat) #12
  %25 = call ptr @memset(ptr %kstat, i32 255, i32 144)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ksmbd_kstat) #12
  %26 = call ptr @memset(ptr %ksmbd_kstat, i32 255, i32 24)
  %arrayidx.1 = getelementptr %struct.ksmbd_file, ptr %dir, i32 0, i32 28, i32 1
  %27 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.1 = icmp eq i32 %28, 0
  br i1 %tobool.not.1, label %if.end.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  %29 = ptrtoint ptr %d_info to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @.str.11, ptr %d_info, align 4
  %30 = ptrtoint ptr %name_len7 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %name_len7, align 4
  %31 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dir, align 8
  %dentry10.1 = getelementptr inbounds %struct.file, ptr %32, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %dentry10.1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dentry10.1, align 4
  %d_parent.1 = getelementptr inbounds %struct.dentry, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %d_parent.1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %dentry.0.1 = load ptr, ptr %d_parent.1, align 4
  %36 = load ptr, ptr %d_info, align 4
  %37 = load i32, ptr %name_len7, align 4
  %call13.1 = call i32 @match_pattern(ptr noundef %36, i32 noundef %37, ptr noundef %search_pattern) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.1)
  %tobool14.not.1 = icmp eq i32 %call13.1, 0
  br i1 %tobool14.not.1, label %if.then15.1, label %if.end18.1

if.end18.1:                                       ; preds = %if.end.1
  %38 = ptrtoint ptr %ksmbd_kstat to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %kstat, ptr %ksmbd_kstat, align 8
  %call20.1 = call i32 @ksmbd_vfs_fill_dentry_attrs(ptr noundef %work, ptr noundef %7, ptr noundef %dentry.0.1, ptr noundef nonnull %ksmbd_kstat) #12
  %call21.1 = call i32 %fn(ptr noundef %1, i32 noundef %info_level, ptr noundef %d_info, ptr noundef nonnull %ksmbd_kstat) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.1)
  %tobool22.not.1 = icmp eq i32 %call21.1, 0
  br i1 %tobool22.not.1, label %if.end24.1, label %if.end18.1.cleanup.thread_crit_edge

if.end18.1.cleanup.thread_crit_edge:              ; preds = %if.end18.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

if.end24.1:                                       ; preds = %if.end18.1
  %39 = ptrtoint ptr %out_buf_len to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %out_buf_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp25.1 = icmp slt i32 %40, 1
  br i1 %cmp25.1, label %if.end24.1.cleanup.thread_crit_edge, label %if.end27.1

if.end24.1.cleanup.thread_crit_edge:              ; preds = %if.end24.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

if.end27.1:                                       ; preds = %if.end24.1
  %41 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %arrayidx.1, align 4
  %42 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags, align 4
  %and.1 = and i32 %43, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool30.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool30.not.1, label %if.end27.1.for.inc.1_crit_edge, label %if.end27.1.if.then31_crit_edge

if.end27.1.if.then31_crit_edge:                   ; preds = %if.end27.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then31

if.end27.1.for.inc.1_crit_edge:                   ; preds = %if.end27.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.then15.1:                                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %arrayidx.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then15.1, %if.end27.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ksmbd_kstat) #12
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %kstat) #12
  br label %for.end

for.end:                                          ; preds = %for.inc.1, %cleanup.thread
  %rc.3 = phi i32 [ %call2170, %cleanup.thread ], [ 0, %for.inc.1 ]
  ret i32 %rc.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_pattern(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksmbd_vfs_fill_dentry_attrs(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_extract_shortname(ptr nocapture noundef readonly %conn, ptr noundef readonly %longname, ptr noundef %shortname) local_unnamed_addr #2 align 64 {
entry:
  %base = alloca [9 x i8], align 1
  %extension = alloca [4 x i8], align 4
  %out = alloca [13 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %base) #12
  %0 = call ptr @memset(ptr %base, i32 255, i32 9)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %extension) #12
  %1 = ptrtoint ptr %extension to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %extension, align 4
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %out) #12
  %2 = call ptr @memset(ptr %out, i32 0, i32 13)
  %3 = ptrtoint ptr %longname to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %longname, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %4)
  %cmp = icmp eq i8 %4, 46
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call = tail call i32 @strcmp(ptr noundef %longname, ptr noundef nonnull dereferenceable(3) @.str.11) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call2 = tail call ptr @strrchr(ptr noundef %longname, i32 noundef 46)
  %cmp3 = icmp eq ptr %call2, %longname
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call6 = call i32 @strscpy(ptr noundef nonnull %extension, ptr noundef nonnull @.str.12, i32 noundef 3) #12
  br label %if.end23

if.else:                                          ; preds = %if.end
  %tobool7.not = icmp eq ptr %call2, null
  br i1 %tobool7.not, label %if.else.if.end23_crit_edge, label %while.cond.preheader

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

while.cond.preheader:                             ; preds = %if.else
  %p.0135 = getelementptr i8, ptr %call2, i32 1
  %5 = ptrtoint ptr %p.0135 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %p.0135, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool10.not136.not = icmp eq i8 %6, 0
  br i1 %tobool10.not136.not, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %if.end18.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %7 = phi i8 [ %13, %if.end18.while.body_crit_edge ], [ %6, %while.cond.preheader.while.body_crit_edge ]
  %p.0138 = phi ptr [ %p.0, %if.end18.while.body_crit_edge ], [ %p.0135, %while.cond.preheader.while.body_crit_edge ]
  %extlen.0137 = phi i32 [ %extlen.1, %if.end18.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %7)
  %cmp14.not = icmp eq i8 %7, 46
  br i1 %cmp14.not, label %while.body.if.end18_crit_edge, label %if.then16

while.body.if.end18_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then16:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i = zext i8 %7 to i32
  %arrayidx.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  %10 = and i8 %9, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp.not.i = icmp eq i8 %10, 0
  %sub.i = add i8 %7, -32
  %spec.select.i = select i1 %cmp.not.i, i8 %7, i8 %sub.i
  %inc = add nsw i32 %extlen.0137, 1
  %arrayidx = getelementptr [4 x i8], ptr %extension, i32 0, i32 %extlen.0137
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %spec.select.i, ptr %arrayidx, align 1
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %while.body.if.end18_crit_edge
  %extlen.1 = phi i32 [ %inc, %if.then16 ], [ %extlen.0137, %while.body.if.end18_crit_edge ]
  %p.0 = getelementptr i8, ptr %p.0138, i32 1
  %12 = ptrtoint ptr %p.0 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %p.0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool10.not = icmp ne i8 %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %extlen.1)
  %cmp11 = icmp slt i32 %extlen.1, 3
  %or.cond = select i1 %tobool10.not, i1 %cmp11, i1 false
  br i1 %or.cond, label %if.end18.while.body_crit_edge, label %if.end18.while.end_crit_edge

if.end18.while.end_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end18.while.body_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %if.end18.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %extlen.0.lcssa = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ %extlen.1, %if.end18.while.end_crit_edge ]
  %arrayidx20 = getelementptr [4 x i8], ptr %extension, i32 0, i32 %extlen.0.lcssa
  %14 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %arrayidx20, align 1
  br label %if.end23

if.end23:                                         ; preds = %while.end, %if.else.if.end23_crit_edge, %if.then5
  %dot_present.0.off0 = phi i1 [ true, %if.then5 ], [ true, %while.end ], [ false, %if.else.if.end23_crit_edge ]
  %15 = ptrtoint ptr %longname to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %longname, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %16)
  %cmp25 = icmp eq i8 %16, 46
  %spec.select.idx = zext i1 %cmp25 to i32
  %spec.select = getelementptr i8, ptr %longname, i32 %spec.select.idx
  %17 = ptrtoint ptr %spec.select to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %spec.select, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool33.not139.not = icmp eq i8 %18, 0
  br i1 %tobool33.not139.not, label %if.end23.while.end48_crit_edge, label %if.end23.while.body38_crit_edge

if.end23.while.body38_crit_edge:                  ; preds = %if.end23
  br label %while.body38

if.end23.while.end48_crit_edge:                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end48

while.body38:                                     ; preds = %if.end46.while.body38_crit_edge, %if.end23.while.body38_crit_edge
  %19 = phi i8 [ %25, %if.end46.while.body38_crit_edge ], [ %18, %if.end23.while.body38_crit_edge ]
  %baselen.0141 = phi i32 [ %baselen.1, %if.end46.while.body38_crit_edge ], [ 0, %if.end23.while.body38_crit_edge ]
  %p.2140 = phi ptr [ %incdec.ptr47, %if.end46.while.body38_crit_edge ], [ %spec.select, %if.end23.while.body38_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %19)
  %cmp40.not = icmp eq i8 %19, 46
  br i1 %cmp40.not, label %while.body38.if.end46_crit_edge, label %if.then42

while.body38.if.end46_crit_edge:                  ; preds = %while.body38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then42:                                        ; preds = %while.body38
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i127 = zext i8 %19 to i32
  %arrayidx.i128 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i127
  %20 = ptrtoint ptr %arrayidx.i128 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i128, align 1
  %22 = and i8 %21, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp.not.i129 = icmp eq i8 %22, 0
  %sub.i130 = add i8 %19, -32
  %spec.select.i131 = select i1 %cmp.not.i129, i8 %19, i8 %sub.i130
  %inc44 = add nsw i32 %baselen.0141, 1
  %arrayidx45 = getelementptr [9 x i8], ptr %base, i32 0, i32 %baselen.0141
  %23 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %spec.select.i131, ptr %arrayidx45, align 1
  br label %if.end46

if.end46:                                         ; preds = %if.then42, %while.body38.if.end46_crit_edge
  %baselen.1 = phi i32 [ %inc44, %if.then42 ], [ %baselen.0141, %while.body38.if.end46_crit_edge ]
  %incdec.ptr47 = getelementptr i8, ptr %p.2140, i32 1
  %24 = ptrtoint ptr %incdec.ptr47 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %incdec.ptr47, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool33.not = icmp ne i8 %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %baselen.1)
  %cmp35 = icmp slt i32 %baselen.1, 5
  %or.cond126 = select i1 %tobool33.not, i1 %cmp35, i1 false
  br i1 %or.cond126, label %if.end46.while.body38_crit_edge, label %if.end46.while.end48_crit_edge

if.end46.while.end48_crit_edge:                   ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end48

if.end46.while.body38_crit_edge:                  ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body38

while.end48:                                      ; preds = %if.end46.while.end48_crit_edge, %if.end23.while.end48_crit_edge
  %baselen.0.lcssa = phi i32 [ 0, %if.end23.while.end48_crit_edge ], [ %baselen.1, %if.end46.while.end48_crit_edge ]
  %arrayidx49 = getelementptr [9 x i8], ptr %base, i32 0, i32 %baselen.0.lcssa
  %26 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 126, ptr %arrayidx49, align 1
  %add = add i32 %baselen.0.lcssa, 1
  %27 = call ptr @memcpy(ptr %out, ptr %base, i32 %add)
  %call52 = call i32 @strlen(ptr noundef %spec.select) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp53143 = icmp sgt i32 %call52, 0
  br i1 %cmp53143, label %while.end48.for.body_crit_edge, label %while.end48.for.end_crit_edge

while.end48.for.end_crit_edge:                    ; preds = %while.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

while.end48.for.body_crit_edge:                   ; preds = %while.end48
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %while.end48.for.body_crit_edge
  %ptr.0146 = phi ptr [ %incdec.ptr57, %for.body.for.body_crit_edge ], [ %spec.select, %while.end48.for.body_crit_edge ]
  %csum.0145 = phi i32 [ %add56, %for.body.for.body_crit_edge ], [ 0, %while.end48.for.body_crit_edge ]
  %len.0144 = phi i32 [ %dec, %for.body.for.body_crit_edge ], [ %call52, %while.end48.for.body_crit_edge ]
  %28 = ptrtoint ptr %ptr.0146 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ptr.0146, align 1
  %conv55 = zext i8 %29 to i32
  %add56 = add i32 %csum.0145, %conv55
  %dec = add nsw i32 %len.0144, -1
  %incdec.ptr57 = getelementptr i8, ptr %ptr.0146, i32 1
  %cmp53 = icmp ugt i32 %len.0144, 1
  br i1 %cmp53, label %for.body.for.body_crit_edge, label %for.end.loopexit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %phi.bo = urem i32 %add56, 1764
  %phi.cast = trunc i32 %phi.bo to i16
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %while.end48.for.end_crit_edge
  %csum.0.lcssa = phi i16 [ 0, %while.end48.for.end_crit_edge ], [ %phi.cast, %for.end.loopexit ]
  %csum.0.lcssa.frozen = freeze i16 %csum.0.lcssa
  %div132 = udiv i16 %csum.0.lcssa.frozen, 42
  %rem58.lhs.trunc = trunc i16 %div132 to i8
  %rem58133 = urem i8 %rem58.lhs.trunc, 42
  %rem58.zext = zext i8 %rem58133 to i32
  %arrayidx59 = getelementptr [43 x i8], ptr @basechars, i32 0, i32 %rem58.zext
  %30 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx59, align 1
  %arrayidx61 = getelementptr [13 x i8], ptr %out, i32 0, i32 %add
  %32 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %arrayidx61, align 1
  %33 = mul i16 %div132, 42
  %rem62134.decomposed = sub i16 %csum.0.lcssa.frozen, %33
  %rem62.zext = zext i16 %rem62134.decomposed to i32
  %arrayidx63 = getelementptr [43 x i8], ptr @basechars, i32 0, i32 %rem62.zext
  %34 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx63, align 1
  %add64 = add i32 %baselen.0.lcssa, 2
  %arrayidx65 = getelementptr [13 x i8], ptr %out, i32 0, i32 %add64
  %36 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %arrayidx65, align 1
  %add66 = add i32 %baselen.0.lcssa, 3
  %arrayidx67 = getelementptr [13 x i8], ptr %out, i32 0, i32 %add66
  %37 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 46, ptr %arrayidx67, align 1
  %add70 = add i32 %baselen.0.lcssa, 4
  %arrayidx71 = getelementptr [13 x i8], ptr %out, i32 0, i32 %add70
  br i1 %dot_present.0.off0, label %if.then69, label %if.else73

if.then69:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %extension, align 4
  %40 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 %39, ptr %arrayidx71, align 1
  br label %if.end76

if.else73:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %arrayidx71, align 1
  br label %if.end76

if.end76:                                         ; preds = %if.else73, %if.then69
  %local_nls = getelementptr inbounds %struct.ksmbd_conn, ptr %conn, i32 0, i32 9
  %42 = ptrtoint ptr %local_nls to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %local_nls, align 4
  %call78 = call i32 @smbConvertToUTF16(ptr noundef %shortname, ptr noundef nonnull %out, i32 noundef 4096, ptr noundef %43, i32 noundef 0) #12
  %call80 = call i32 @strlen(ptr noundef nonnull %out) #15
  %mul = shl i32 %call80, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end76, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %mul, %if.end76 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %out) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %extension) #12
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %base) #12
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smbConvertToUTF16(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_smb_negotiate_common(ptr noundef %work, i32 noundef %command) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %work to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %work, align 8
  %request_buf = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 3
  %2 = ptrtoint ptr %request_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %request_buf, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %and.i.i = and i32 %5, 16777215
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %add.ptr.i.i, align 1
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %entry.ksmbd_negotiate_smb_dialect.exit_crit_edge [
    i32 -28095166, label %if.then.i
    i32 -11317950, label %if.then16.i
  ]

entry.ksmbd_negotiate_smb_dialect.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %ksmbd_negotiate_smb_dialect.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %and.i.i)
  %cmp3.i = icmp ult i32 %and.i.i, 100
  br i1 %cmp3.i, label %if.then.i.ksmbd_negotiate_smb_dialect.exit_crit_edge, label %if.end.i

if.then.i.ksmbd_negotiate_smb_dialect.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ksmbd_negotiate_smb_dialect.exit

if.end.i:                                         ; preds = %if.then.i
  %DialectCount.i = getelementptr i8, ptr %3, i32 70
  %9 = ptrtoint ptr %DialectCount.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %DialectCount.i, align 1
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #12
  %conv.i = zext i16 %11 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 1
  %add.i = add nuw nsw i32 %mul.i, 100
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %and.i.i)
  %cmp5.i = icmp ugt i32 %add.i, %and.i.i
  br i1 %cmp5.i, label %if.end.i.ksmbd_negotiate_smb_dialect.exit_crit_edge, label %cleanup.i

if.end.i.ksmbd_negotiate_smb_dialect.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ksmbd_negotiate_smb_dialect.exit

cleanup.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %Dialects.i = getelementptr i8, ptr %3, i32 104
  %call10.i = tail call i32 @ksmbd_lookup_dialect_by_id(ptr noundef %Dialects.i, i16 noundef zeroext %10) #12
  br label %ksmbd_negotiate_smb_dialect.exit

if.then16.i:                                      ; preds = %entry
  %ByteCount.i = getelementptr inbounds %struct.smb_negotiate_req, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %ByteCount.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %ByteCount.i, align 1
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %14)
  %cmp19.i = icmp ult i16 %14, 2
  br i1 %cmp19.i, label %if.then16.i.ksmbd_negotiate_smb_dialect.exit_crit_edge, label %if.end22.i

if.then16.i.ksmbd_negotiate_smb_dialect.exit_crit_edge: ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ksmbd_negotiate_smb_dialect.exit

if.end22.i:                                       ; preds = %if.then16.i
  %conv18.i = zext i16 %14 to i32
  %add25.i = add nuw nsw i32 %conv18.i, 35
  call void @__sanitizer_cov_trace_cmp4(i32 %add25.i, i32 %and.i.i)
  %cmp26.i = icmp ugt i32 %add25.i, %and.i.i
  br i1 %cmp26.i, label %if.end22.i.ksmbd_negotiate_smb_dialect.exit_crit_edge, label %if.end29.i

if.end22.i.ksmbd_negotiate_smb_dialect.exit_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ksmbd_negotiate_smb_dialect.exit

if.end29.i:                                       ; preds = %if.end22.i
  %DialectsArray.i = getelementptr inbounds %struct.smb_negotiate_req, ptr %3, i32 0, i32 2
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end38.i.i.do.body.i.i_crit_edge, %if.end29.i
  %next.0.i.i = phi i32 [ 0, %if.end29.i ], [ %inc39.i.i, %if.end38.i.i.do.body.i.i_crit_edge ]
  %bcount.0.i.i = phi i32 [ %conv18.i, %if.end29.i ], [ %sub.i.i, %if.end38.i.i.do.body.i.i_crit_edge ]
  %dialect.0.i.i = phi ptr [ %DialectsArray.i, %if.end29.i ], [ %add.ptr.i.i.i, %if.end38.i.i.do.body.i.i_crit_edge ]
  %add.ptr.i.i.i = getelementptr i8, ptr %dialect.0.i.i, i32 %next.0.i.i
  %call.i.i.i = tail call i32 @strnlen(ptr noundef %add.ptr.i.i.i, i32 noundef %bcount.0.i.i) #17
  %arrayidx.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %call.i.i.i
  %15 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp.not.i.i.i = icmp ne i8 %16, 0
  %tobool.not64.i.i = icmp eq ptr %add.ptr.i.i.i, null
  %tobool.not.i.i = or i1 %tobool.not64.i.i, %cmp.not.i.i.i
  br i1 %tobool.not.i.i, label %do.body.i.i.do.body.1.i.i.preheader_crit_edge, label %do.body1.i.i

do.body.i.i.do.body.1.i.i.preheader_crit_edge:    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.1.i.i.preheader

do.body1.i.i:                                     ; preds = %do.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %17 = load i32, ptr @ksmbd_debug_types, align 4
  %and.i54.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i54.i)
  %tobool2.not.i.i = icmp eq i32 %and.i54.i, 0
  br i1 %tobool2.not.i.i, label %do.body1.i.i.do.end8.i.i_crit_edge, label %do.end.i.i

do.body1.i.i.do.end8.i.i_crit_edge:               ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8.i.i

do.end.i.i:                                       ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call5.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull %add.ptr.i.i.i) #16
  br label %do.end8.i.i

do.end8.i.i:                                      ; preds = %do.end.i.i, %do.body1.i.i.do.end8.i.i_crit_edge
  %call9.i.i = tail call i32 @strcmp(ptr noundef nonnull %add.ptr.i.i.i, ptr noundef nonnull dereferenceable(11) @.str.27) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool10.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool10.not.i.i, label %do.end8.i.i.do.body15.i.i_crit_edge, label %if.end38.i.i

do.end8.i.i.do.body15.i.i_crit_edge:              ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body15.i.i

do.body15.i.i:                                    ; preds = %supported_protocol.exit.1.i.i.do.body15.i.i_crit_edge, %do.end8.i.i.do.body15.i.i_crit_edge
  %i.068.lcssa.i.i = phi i32 [ 0, %supported_protocol.exit.1.i.i.do.body15.i.i_crit_edge ], [ 1, %do.end8.i.i.do.body15.i.i_crit_edge ]
  %.lcssa.i.i = phi ptr [ @.str.25, %supported_protocol.exit.1.i.i.do.body15.i.i_crit_edge ], [ @.str.27, %do.end8.i.i.do.body15.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %18 = load i32, ptr @ksmbd_debug_types, align 4
  %and16.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i.i)
  %tobool17.not.i.i = icmp eq i32 %and16.i.i, 0
  br i1 %tobool17.not.i.i, label %do.body15.i.i.if.end34.i.i_crit_edge, label %do.end21.i.i

do.body15.i.i.if.end34.i.i_crit_edge:             ; preds = %do.body15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34.i.i

do.end21.i.i:                                     ; preds = %do.body15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call25.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull %.lcssa.i.i) #16
  br label %if.end34.i.i

if.end34.i.i:                                     ; preds = %do.end21.i.i, %do.body15.i.i.if.end34.i.i_crit_edge
  %prot_id.i.i = getelementptr [2 x %struct.smb_protocol], ptr @smb1_protos, i32 0, i32 %i.068.lcssa.i.i, i32 3
  %19 = ptrtoint ptr %prot_id.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %prot_id.i.i, align 4
  %conv36.i.i = zext i16 %20 to i32
  br label %ksmbd_negotiate_smb_dialect.exit

if.end38.i.i:                                     ; preds = %do.end8.i.i
  %inc39.i.i = add i32 %call.i.i.i, 1
  %sub.i.i = sub i32 %bcount.0.i.i, %inc39.i.i
  %cmp41.i.i = icmp sgt i32 %sub.i.i, 0
  br i1 %cmp41.i.i, label %if.end38.i.i.do.body.i.i_crit_edge, label %if.end38.i.i.do.body.1.i.i.preheader_crit_edge

if.end38.i.i.do.body.1.i.i.preheader_crit_edge:   ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.1.i.i.preheader

if.end38.i.i.do.body.i.i_crit_edge:               ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i

do.body.1.i.i.preheader:                          ; preds = %if.end38.i.i.do.body.1.i.i.preheader_crit_edge, %do.body.i.i.do.body.1.i.i.preheader_crit_edge
  br label %do.body.1.i.i

do.body.1.i.i:                                    ; preds = %if.end38.1.i.i.do.body.1.i.i_crit_edge, %do.body.1.i.i.preheader
  %next.0.1.i.i = phi i32 [ %inc39.1.i.i, %if.end38.1.i.i.do.body.1.i.i_crit_edge ], [ 0, %do.body.1.i.i.preheader ]
  %bcount.0.1.i.i = phi i32 [ %sub.1.i.i, %if.end38.1.i.i.do.body.1.i.i_crit_edge ], [ %conv18.i, %do.body.1.i.i.preheader ]
  %dialect.0.1.i.i = phi ptr [ %add.ptr.i.1.i.i, %if.end38.1.i.i.do.body.1.i.i_crit_edge ], [ %DialectsArray.i, %do.body.1.i.i.preheader ]
  %add.ptr.i.1.i.i = getelementptr i8, ptr %dialect.0.1.i.i, i32 %next.0.1.i.i
  %call.i.1.i.i = tail call i32 @strnlen(ptr noundef %add.ptr.i.1.i.i, i32 noundef %bcount.0.1.i.i) #17
  %arrayidx.i.1.i.i = getelementptr i8, ptr %add.ptr.i.1.i.i, i32 %call.i.1.i.i
  %21 = ptrtoint ptr %arrayidx.i.1.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i.1.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp.not.i.1.i.i = icmp ne i8 %22, 0
  %tobool.not64.1.i.i = icmp eq ptr %add.ptr.i.1.i.i, null
  %tobool.not.1.i.i = or i1 %tobool.not64.1.i.i, %cmp.not.i.1.i.i
  br i1 %tobool.not.1.i.i, label %do.body.1.i.i.ksmbd_negotiate_smb_dialect.exit_crit_edge, label %do.body1.1.i.i

do.body.1.i.i.ksmbd_negotiate_smb_dialect.exit_crit_edge: ; preds = %do.body.1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ksmbd_negotiate_smb_dialect.exit

do.body1.1.i.i:                                   ; preds = %do.body.1.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %23 = load i32, ptr @ksmbd_debug_types, align 4
  %and.1.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i.i)
  %tobool2.not.1.i.i = icmp eq i32 %and.1.i.i, 0
  br i1 %tobool2.not.1.i.i, label %do.body1.1.i.i.do.end8.1.i.i_crit_edge, label %do.end.1.i.i

do.body1.1.i.i.do.end8.1.i.i_crit_edge:           ; preds = %do.body1.1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8.1.i.i

do.end.1.i.i:                                     ; preds = %do.body1.1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call5.1.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull %add.ptr.i.1.i.i) #16
  br label %do.end8.1.i.i

do.end8.1.i.i:                                    ; preds = %do.end.1.i.i, %do.body1.1.i.i.do.end8.1.i.i_crit_edge
  %call9.1.i.i = tail call i32 @strcmp(ptr noundef nonnull %add.ptr.i.1.i.i, ptr noundef nonnull dereferenceable(9) @.str.25) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.1.i.i)
  %tobool10.not.1.i.i = icmp eq i32 %call9.1.i.i, 0
  br i1 %tobool10.not.1.i.i, label %if.end.i.1.i.i, label %do.end8.1.i.i.if.end38.1.i.i_crit_edge

do.end8.1.i.i.if.end38.1.i.i_crit_edge:           ; preds = %do.end8.1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38.1.i.i

if.end.i.1.i.i:                                   ; preds = %do.end8.1.i.i
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 4) to i32))
  %24 = load i16, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %24)
  %cmp7.not.i.1.i.i = icmp sgt i16 %24, 2
  br i1 %cmp7.not.i.1.i.i, label %if.end.i.1.i.i.if.end38.1.i.i_crit_edge, label %supported_protocol.exit.1.i.i

if.end.i.1.i.i.if.end38.1.i.i_crit_edge:          ; preds = %if.end.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38.1.i.i

supported_protocol.exit.1.i.i:                    ; preds = %if.end.i.1.i.i
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 5) to i32))
  %25 = load i16, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 5), align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %25)
  %cmp10.i.not.1.i.i = icmp slt i16 %25, 2
  br i1 %cmp10.i.not.1.i.i, label %supported_protocol.exit.1.i.i.if.end38.1.i.i_crit_edge, label %supported_protocol.exit.1.i.i.do.body15.i.i_crit_edge

supported_protocol.exit.1.i.i.do.body15.i.i_crit_edge: ; preds = %supported_protocol.exit.1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body15.i.i

supported_protocol.exit.1.i.i.if.end38.1.i.i_crit_edge: ; preds = %supported_protocol.exit.1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38.1.i.i

if.end38.1.i.i:                                   ; preds = %supported_protocol.exit.1.i.i.if.end38.1.i.i_crit_edge, %if.end.i.1.i.i.if.end38.1.i.i_crit_edge, %do.end8.1.i.i.if.end38.1.i.i_crit_edge
  %inc39.1.i.i = add i32 %call.i.1.i.i, 1
  %sub.1.i.i = sub i32 %bcount.0.1.i.i, %inc39.1.i.i
  %cmp41.1.i.i = icmp sgt i32 %sub.1.i.i, 0
  br i1 %cmp41.1.i.i, label %if.end38.1.i.i.do.body.1.i.i_crit_edge, label %if.end38.1.i.i.ksmbd_negotiate_smb_dialect.exit_crit_edge

if.end38.1.i.i.ksmbd_negotiate_smb_dialect.exit_crit_edge: ; preds = %if.end38.1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ksmbd_negotiate_smb_dialect.exit

if.end38.1.i.i.do.body.1.i.i_crit_edge:           ; preds = %if.end38.1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.1.i.i

ksmbd_negotiate_smb_dialect.exit:                 ; preds = %if.end38.1.i.i.ksmbd_negotiate_smb_dialect.exit_crit_edge, %do.body.1.i.i.ksmbd_negotiate_smb_dialect.exit_crit_edge, %if.end34.i.i, %if.end22.i.ksmbd_negotiate_smb_dialect.exit_crit_edge, %if.then16.i.ksmbd_negotiate_smb_dialect.exit_crit_edge, %cleanup.i, %if.end.i.ksmbd_negotiate_smb_dialect.exit_crit_edge, %if.then.i.ksmbd_negotiate_smb_dialect.exit_crit_edge, %entry.ksmbd_negotiate_smb_dialect.exit_crit_edge
  %retval.2.i = phi i32 [ %call10.i, %cleanup.i ], [ 65535, %if.then16.i.ksmbd_negotiate_smb_dialect.exit_crit_edge ], [ 65535, %if.end22.i.ksmbd_negotiate_smb_dialect.exit_crit_edge ], [ 65535, %if.then.i.ksmbd_negotiate_smb_dialect.exit_crit_edge ], [ 65535, %if.end.i.ksmbd_negotiate_smb_dialect.exit_crit_edge ], [ %conv36.i.i, %if.end34.i.i ], [ 65535, %entry.ksmbd_negotiate_smb_dialect.exit_crit_edge ], [ 65535, %if.end38.1.i.i.ksmbd_negotiate_smb_dialect.exit_crit_edge ], [ 65535, %do.body.1.i.i.ksmbd_negotiate_smb_dialect.exit_crit_edge ]
  %conv = trunc i32 %retval.2.i to i16
  %dialect = getelementptr inbounds %struct.ksmbd_conn, ptr %1, i32 0, i32 36
  %26 = ptrtoint ptr %dialect to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv, ptr %dialect, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %27 = load i32, ptr @ksmbd_debug_types, align 4
  %and = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %ksmbd_negotiate_smb_dialect.exit.do.end7_crit_edge, label %do.end

ksmbd_negotiate_smb_dialect.exit.do.end7_crit_edge: ; preds = %ksmbd_negotiate_smb_dialect.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

do.end:                                           ; preds = %ksmbd_negotiate_smb_dialect.exit
  call void @__sanitizer_cov_trace_pc() #14
  %conv4 = and i32 %retval.2.i, 65535
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %conv4) #16
  br label %do.end7

do.end7:                                          ; preds = %do.end, %ksmbd_negotiate_smb_dialect.exit.do.end7_crit_edge
  %28 = zext i32 %command to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %command, label %do.end7.do.end62_crit_edge [
    i32 0, label %if.then9
    i32 114, label %do.end7.if.then39_crit_edge
  ]

do.end7.if.then39_crit_edge:                      ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then39

do.end7.do.end62_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end62

if.then9:                                         ; preds = %do.end7
  %29 = ptrtoint ptr %request_buf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %request_buf, align 4
  %add.ptr.i = getelementptr i8, ptr %30, i32 4
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28095166, i32 %32)
  %cmp12.not = icmp eq i32 %32, -28095166
  br i1 %cmp12.not, label %land.lhs.true, label %do.body15

do.body15:                                        ; preds = %if.then9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %33 = load i32, ptr @ksmbd_debug_types, align 4
  %and16 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %do.body15.if.then39_crit_edge, label %do.end21

do.body15.if.then39_crit_edge:                    ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then39

do.end21:                                         ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #14
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #16
  br label %if.then39

land.lhs.true:                                    ; preds = %if.then9
  %34 = ptrtoint ptr %dialect to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %dialect, align 2
  %36 = add i16 %35, -786
  call void @__sanitizer_cov_trace_const_cmp2(i16 -258, i16 %36)
  %37 = icmp ult i16 %36, -258
  br i1 %37, label %land.lhs.true.do.end62_crit_edge, label %if.then33

land.lhs.true.do.end62_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end62

if.then33:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call34 = tail call i32 @smb2_handle_negotiate(ptr noundef %work) #12
  %call35 = tail call i32 @init_smb2_neg_rsp(ptr noundef %work) #12
  br label %cleanup

if.then39:                                        ; preds = %do.end21, %do.body15.if.then39_crit_edge, %do.end7.if.then39_crit_edge
  %38 = ptrtoint ptr %dialect to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %dialect, align 2
  %40 = add i16 %39, -786
  call void @__sanitizer_cov_trace_const_cmp2(i16 -258, i16 %40)
  %41 = icmp ult i16 %40, -258
  br i1 %41, label %if.end57, label %if.then42

if.then42:                                        ; preds = %if.then39
  %need_neg = getelementptr inbounds %struct.ksmbd_conn, ptr %1, i32 0, i32 29
  %42 = ptrtoint ptr %need_neg to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %need_neg, align 4
  %call43 = tail call i32 @init_smb3_11_server(ptr noundef %1) #12
  %call44 = tail call i32 @init_smb2_neg_rsp(ptr noundef %work) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %43 = load i32, ptr @ksmbd_debug_types, align 4
  %and46 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.then42.cleanup_crit_edge, label %do.end51

if.then42.cleanup_crit_edge:                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end51:                                         ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #14
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #16
  br label %cleanup

if.end57:                                         ; preds = %if.then39
  %response_buf.i = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 4
  %44 = ptrtoint ptr %response_buf.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %response_buf.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %46 = load i32, ptr @ksmbd_debug_types, align 4
  %and.i = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end57.smb_handle_negotiate.exit_crit_edge, label %do.end.i

if.end57.smb_handle_negotiate.exit_crit_edge:     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %smb_handle_negotiate.exit

do.end.i:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #16
  br label %smb_handle_negotiate.exit

smb_handle_negotiate.exit:                        ; preds = %do.end.i, %if.end57.smb_handle_negotiate.exit_crit_edge
  %Status.i = getelementptr inbounds %struct.smb_hdr, ptr %45, i32 0, i32 3
  %47 = ptrtoint ptr %Status.i to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 184615104, ptr %Status.i, align 1
  br label %cleanup

do.end62:                                         ; preds = %land.lhs.true.do.end62_crit_edge, %do.end7.do.end62_crit_edge
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %command) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end62, %smb_handle_negotiate.exit, %do.end51, %if.then42.cleanup_crit_edge, %if.then33
  %retval.0 = phi i32 [ %call34, %if.then33 ], [ -22, %smb_handle_negotiate.exit ], [ -22, %do.end62 ], [ 0, %do.end51 ], [ 0, %if.then42.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smb2_handle_negotiate(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @init_smb2_neg_rsp(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_smb_check_shared_mode(ptr noundef readonly %filp, ptr nocapture noundef readonly %curr_fp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_ci = getelementptr inbounds %struct.ksmbd_file, ptr %curr_fp, i32 0, i32 5
  %0 = ptrtoint ptr %f_ci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_ci, align 4
  tail call void @_raw_read_lock(ptr noundef %1) #12
  %2 = ptrtoint ptr %f_ci to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_ci, align 4
  %m_fp_list = getelementptr inbounds %struct.ksmbd_inode, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %m_fp_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn204 = load ptr, ptr %m_fp_list, align 4
  %cmp.not205 = icmp eq ptr %.pn204, %m_fp_list
  br i1 %cmp.not205, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %5 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %f_inode.i, align 8
  %stream.i132 = getelementptr inbounds %struct.ksmbd_file, ptr %curr_fp, i32 0, i32 22
  %attrib_only21 = getelementptr inbounds %struct.ksmbd_file, ptr %curr_fp, i32 0, i32 18
  %daccess = getelementptr inbounds %struct.ksmbd_file, ptr %curr_fp, i32 0, i32 11
  %saccess62 = getelementptr inbounds %struct.ksmbd_file, ptr %curr_fp, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn206 = phi ptr [ %.pn204, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %prev_fp.0 = getelementptr i8, ptr %.pn206, i32 -188
  %7 = ptrtoint ptr %prev_fp.0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev_fp.0, align 8
  %f_inode.i131 = getelementptr inbounds %struct.file, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %f_inode.i131 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %f_inode.i131, align 8
  %cmp6.not = icmp ne ptr %6, %10
  %cmp8 = icmp eq ptr %8, %filp
  %or.cond = select i1 %cmp6.not, i1 true, i1 %cmp8
  br i1 %or.cond, label %for.body.for.inc_crit_edge, label %if.end10

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end10:                                         ; preds = %for.body
  %stream.i = getelementptr i8, ptr %.pn206, i32 -8
  %11 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %stream.i, align 4
  %cmp.i.not = icmp eq ptr %12, null
  br i1 %cmp.i.not, label %if.end10.if.end19_crit_edge, label %land.lhs.true

if.end10.if.end19_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

land.lhs.true:                                    ; preds = %if.end10
  %13 = ptrtoint ptr %stream.i132 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %stream.i132, align 4
  %cmp.i133.not = icmp eq ptr %14, null
  br i1 %cmp.i133.not, label %land.lhs.true.if.end19_crit_edge, label %if.then13

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then13:                                        ; preds = %land.lhs.true
  %15 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %stream.i, align 4
  %call16 = tail call i32 @strcmp(ptr noundef %16, ptr noundef nonnull %14) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %if.then13.if.end19_crit_edge, label %if.then13.for.inc_crit_edge

if.then13.for.inc_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then13.if.end19_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.end19:                                         ; preds = %if.then13.if.end19_crit_edge, %land.lhs.true.if.end19_crit_edge, %if.end10.if.end19_crit_edge
  %attrib_only = getelementptr i8, ptr %.pn206, i32 -59
  %17 = ptrtoint ptr %attrib_only to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %attrib_only, align 1, !range !121
  %19 = ptrtoint ptr %attrib_only21 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %attrib_only21, align 1, !range !121
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %20)
  %cmp24.not = icmp eq i8 %18, %20
  br i1 %cmp24.not, label %if.end27, label %if.end19.for.inc_crit_edge

if.end19.for.inc_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end27:                                         ; preds = %if.end19
  %saccess = getelementptr i8, ptr %.pn206, i32 -92
  %21 = ptrtoint ptr %saccess to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %saccess, align 8
  %and = and i32 %22, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  br i1 %tobool28.not, label %land.lhs.true29, label %if.end27.if.end33_crit_edge

if.end27.if.end33_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

land.lhs.true29:                                  ; preds = %if.end27
  %23 = ptrtoint ptr %daccess to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %daccess, align 4
  %and30 = and i32 %24, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %land.lhs.true29.if.end33_crit_edge, label %if.then32

land.lhs.true29.if.end33_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then32:                                        ; preds = %land.lhs.true29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %25 = load i32, ptr @ksmbd_debug_types, align 4
  %and.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then32.do.body3.i_crit_edge, label %do.end.i

if.then32.do.body3.i_crit_edge:                   ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body3.i

do.end.i:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.46) #16
  br label %do.body3.i

do.body3.i:                                       ; preds = %do.end.i, %if.then32.do.body3.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %26 = load i32, ptr @ksmbd_debug_types, align 4
  %and4.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %do.body3.i.for.end_crit_edge, label %do.body3.i.for.end.sink.split_crit_edge

do.body3.i.for.end.sink.split_crit_edge:          ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.sink.split

do.body3.i.for.end_crit_edge:                     ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end33:                                         ; preds = %land.lhs.true29.if.end33_crit_edge, %if.end27.if.end33_crit_edge
  br i1 %cmp.i.not, label %if.end33.if.end39_crit_edge, label %land.lhs.true36

if.end33.if.end39_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

land.lhs.true36:                                  ; preds = %if.end33
  %27 = ptrtoint ptr %stream.i132 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %stream.i132, align 4
  %cmp.i137.not = icmp eq ptr %28, null
  br i1 %cmp.i137.not, label %land.lhs.true36.for.inc_crit_edge, label %land.lhs.true36.if.end39_crit_edge

land.lhs.true36.if.end39_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

land.lhs.true36.for.inc_crit_edge:                ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end39:                                         ; preds = %land.lhs.true36.if.end39_crit_edge, %if.end33.if.end39_crit_edge
  %and41 = and i32 %22, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %land.lhs.true43, label %if.end39.if.end48_crit_edge

if.end39.if.end48_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48

land.lhs.true43:                                  ; preds = %if.end39
  %29 = ptrtoint ptr %daccess to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %daccess, align 4
  %and45 = and i32 %30, 553648128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %land.lhs.true43.if.end48_crit_edge, label %if.then47

land.lhs.true43.if.end48_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48

if.then47:                                        ; preds = %land.lhs.true43
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %31 = load i32, ptr @ksmbd_debug_types, align 4
  %and.i138 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i138)
  %tobool.not.i139 = icmp eq i32 %and.i138, 0
  br i1 %tobool.not.i139, label %if.then47.do.body3.i144_crit_edge, label %do.end.i141

if.then47.do.body3.i144_crit_edge:                ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body3.i144

do.end.i141:                                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #14
  %call.i140 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.47) #16
  br label %do.body3.i144

do.body3.i144:                                    ; preds = %do.end.i141, %if.then47.do.body3.i144_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %32 = load i32, ptr @ksmbd_debug_types, align 4
  %and4.i142 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i142)
  %tobool5.not.i143 = icmp eq i32 %and4.i142, 0
  br i1 %tobool5.not.i143, label %do.body3.i144.for.end_crit_edge, label %do.body3.i144.for.end.sink.split_crit_edge

do.body3.i144.for.end.sink.split_crit_edge:       ; preds = %do.body3.i144
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.sink.split

do.body3.i144.for.end_crit_edge:                  ; preds = %do.body3.i144
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end48:                                         ; preds = %land.lhs.true43.if.end48_crit_edge, %if.end39.if.end48_crit_edge
  %and50 = and i32 %22, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %land.lhs.true52, label %if.end48.if.end57_crit_edge

if.end48.if.end57_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

land.lhs.true52:                                  ; preds = %if.end48
  %33 = ptrtoint ptr %daccess to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %daccess, align 4
  %and54 = and i32 %34, 100663296
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %land.lhs.true52.if.end57_crit_edge, label %if.then56

land.lhs.true52.if.end57_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

if.then56:                                        ; preds = %land.lhs.true52
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %35 = load i32, ptr @ksmbd_debug_types, align 4
  %and.i150 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i150)
  %tobool.not.i151 = icmp eq i32 %and.i150, 0
  br i1 %tobool.not.i151, label %if.then56.do.body3.i156_crit_edge, label %do.end.i153

if.then56.do.body3.i156_crit_edge:                ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body3.i156

do.end.i153:                                      ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #14
  %call.i152 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.48) #16
  br label %do.body3.i156

do.body3.i156:                                    ; preds = %do.end.i153, %if.then56.do.body3.i156_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %36 = load i32, ptr @ksmbd_debug_types, align 4
  %and4.i154 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i154)
  %tobool5.not.i155 = icmp eq i32 %and4.i154, 0
  br i1 %tobool5.not.i155, label %do.body3.i156.for.end_crit_edge, label %do.body3.i156.for.end.sink.split_crit_edge

do.body3.i156.for.end.sink.split_crit_edge:       ; preds = %do.body3.i156
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.sink.split

do.body3.i156.for.end_crit_edge:                  ; preds = %do.body3.i156
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end57:                                         ; preds = %land.lhs.true52.if.end57_crit_edge, %if.end48.if.end57_crit_edge
  %daccess58 = getelementptr i8, ptr %.pn206, i32 -96
  %37 = ptrtoint ptr %daccess58 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %daccess58, align 4
  %and59 = and i32 %38, 553648128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.end57.if.end66_crit_edge, label %land.lhs.true61

if.end57.if.end66_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end66

land.lhs.true61:                                  ; preds = %if.end57
  %39 = ptrtoint ptr %saccess62 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %saccess62, align 8
  %and63 = and i32 %40, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.then65, label %land.lhs.true61.if.end66_crit_edge

land.lhs.true61.if.end66_crit_edge:               ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end66

if.then65:                                        ; preds = %land.lhs.true61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %41 = load i32, ptr @ksmbd_debug_types, align 4
  %and.i162 = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i162)
  %tobool.not.i163 = icmp eq i32 %and.i162, 0
  br i1 %tobool.not.i163, label %if.then65.do.body3.i168_crit_edge, label %do.end.i165

if.then65.do.body3.i168_crit_edge:                ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body3.i168

do.end.i165:                                      ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #14
  %call.i164 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.49) #16
  br label %do.body3.i168

do.body3.i168:                                    ; preds = %do.end.i165, %if.then65.do.body3.i168_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %42 = load i32, ptr @ksmbd_debug_types, align 4
  %and4.i166 = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i166)
  %tobool5.not.i167 = icmp eq i32 %and4.i166, 0
  br i1 %tobool5.not.i167, label %do.body3.i168.for.end_crit_edge, label %do.body3.i168.for.end.sink.split_crit_edge

do.body3.i168.for.end.sink.split_crit_edge:       ; preds = %do.body3.i168
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.sink.split

do.body3.i168.for.end_crit_edge:                  ; preds = %do.body3.i168
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end66:                                         ; preds = %land.lhs.true61.if.end66_crit_edge, %if.end57.if.end66_crit_edge
  %and68 = and i32 %38, 100663296
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %if.end66.if.end75_crit_edge, label %land.lhs.true70

if.end66.if.end75_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end75

land.lhs.true70:                                  ; preds = %if.end66
  %43 = ptrtoint ptr %saccess62 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %saccess62, align 8
  %and72 = and i32 %44, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.then74, label %land.lhs.true70.if.end75_crit_edge

land.lhs.true70.if.end75_crit_edge:               ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end75

if.then74:                                        ; preds = %land.lhs.true70
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %45 = load i32, ptr @ksmbd_debug_types, align 4
  %and.i174 = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i174)
  %tobool.not.i175 = icmp eq i32 %and.i174, 0
  br i1 %tobool.not.i175, label %if.then74.do.body3.i180_crit_edge, label %do.end.i177

if.then74.do.body3.i180_crit_edge:                ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body3.i180

do.end.i177:                                      ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #14
  %call.i176 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.50) #16
  br label %do.body3.i180

do.body3.i180:                                    ; preds = %do.end.i177, %if.then74.do.body3.i180_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %46 = load i32, ptr @ksmbd_debug_types, align 4
  %and4.i178 = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i178)
  %tobool5.not.i179 = icmp eq i32 %and4.i178, 0
  br i1 %tobool5.not.i179, label %do.body3.i180.for.end_crit_edge, label %do.body3.i180.for.end.sink.split_crit_edge

do.body3.i180.for.end.sink.split_crit_edge:       ; preds = %do.body3.i180
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.sink.split

do.body3.i180.for.end_crit_edge:                  ; preds = %do.body3.i180
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end75:                                         ; preds = %land.lhs.true70.if.end75_crit_edge, %if.end66.if.end75_crit_edge
  %and77 = and i32 %38, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %if.end75.for.inc_crit_edge, label %land.lhs.true79

if.end75.for.inc_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true79:                                  ; preds = %if.end75
  %47 = ptrtoint ptr %saccess62 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %saccess62, align 8
  %and81 = and i32 %48, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %if.then83, label %land.lhs.true79.for.inc_crit_edge

land.lhs.true79.for.inc_crit_edge:                ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then83:                                        ; preds = %land.lhs.true79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %49 = load i32, ptr @ksmbd_debug_types, align 4
  %and.i186 = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i186)
  %tobool.not.i187 = icmp eq i32 %and.i186, 0
  br i1 %tobool.not.i187, label %if.then83.do.body3.i192_crit_edge, label %do.end.i189

if.then83.do.body3.i192_crit_edge:                ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body3.i192

do.end.i189:                                      ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #14
  %call.i188 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.51) #16
  br label %do.body3.i192

do.body3.i192:                                    ; preds = %do.end.i189, %if.then83.do.body3.i192_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %50 = load i32, ptr @ksmbd_debug_types, align 4
  %and4.i190 = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i190)
  %tobool5.not.i191 = icmp eq i32 %and4.i190, 0
  br i1 %tobool5.not.i191, label %do.body3.i192.for.end_crit_edge, label %do.body3.i192.for.end.sink.split_crit_edge

do.body3.i192.for.end.sink.split_crit_edge:       ; preds = %do.body3.i192
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.sink.split

do.body3.i192.for.end_crit_edge:                  ; preds = %do.body3.i192
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true79.for.inc_crit_edge, %if.end75.for.inc_crit_edge, %land.lhs.true36.for.inc_crit_edge, %if.end19.for.inc_crit_edge, %if.then13.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %51 = ptrtoint ptr %.pn206 to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pn = load ptr, ptr %.pn206, align 4
  %cmp.not = icmp eq ptr %.pn, %m_fp_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end.sink.split:                               ; preds = %do.body3.i192.for.end.sink.split_crit_edge, %do.body3.i180.for.end.sink.split_crit_edge, %do.body3.i168.for.end.sink.split_crit_edge, %do.body3.i156.for.end.sink.split_crit_edge, %do.body3.i144.for.end.sink.split_crit_edge, %do.body3.i.for.end.sink.split_crit_edge
  %saccess.le.sink = getelementptr i8, ptr %.pn206, i32 -92
  %52 = ptrtoint ptr %saccess.le.sink to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %saccess.le.sink, align 8
  %54 = ptrtoint ptr %daccess to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %daccess, align 4
  %call10.i195 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %53, i32 noundef %55) #16
  br label %for.end

for.end:                                          ; preds = %for.end.sink.split, %for.inc.for.end_crit_edge, %do.body3.i192.for.end_crit_edge, %do.body3.i180.for.end_crit_edge, %do.body3.i168.for.end_crit_edge, %do.body3.i156.for.end_crit_edge, %do.body3.i144.for.end_crit_edge, %do.body3.i.for.end_crit_edge, %entry.for.end_crit_edge
  %rc.0 = phi i32 [ -1, %do.body3.i.for.end_crit_edge ], [ -1, %do.body3.i144.for.end_crit_edge ], [ -1, %do.body3.i156.for.end_crit_edge ], [ -1, %do.body3.i168.for.end_crit_edge ], [ -1, %do.body3.i180.for.end_crit_edge ], [ -1, %do.body3.i192.for.end_crit_edge ], [ 0, %entry.for.end_crit_edge ], [ -1, %for.end.sink.split ], [ 0, %for.inc.for.end_crit_edge ]
  %56 = ptrtoint ptr %f_ci to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %f_ci, align 4
  tail call void @_raw_read_unlock(ptr noundef %57) #12
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @is_asterisk(ptr noundef readonly %p) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %p, null
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %p, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 42, i8 %1)
  %cmp = icmp eq i8 %1, 42
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %2 = phi i1 [ false, %entry.land.end_crit_edge ], [ %cmp, %land.rhs ]
  ret i1 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_override_fsids(ptr nocapture noundef %work) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sess1 = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 1
  %0 = ptrtoint ptr %sess1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sess1, align 4
  %tcon = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 2
  %2 = ptrtoint ptr %tcon to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tcon, align 8
  %share_conf = getelementptr inbounds %struct.ksmbd_tree_connect, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %share_conf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %share_conf, align 4
  %user = getelementptr inbounds %struct.ksmbd_session, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user, align 8
  %uid.i = getelementptr inbounds %struct.ksmbd_user, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %uid.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %uid.i, align 4
  %gid.i = getelementptr inbounds %struct.ksmbd_user, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %gid.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %gid.i, align 4
  %force_uid = getelementptr inbounds %struct.ksmbd_share_config, ptr %5, i32 0, i32 12
  %12 = ptrtoint ptr %force_uid to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %force_uid, align 4
  %force_gid = getelementptr inbounds %struct.ksmbd_share_config, ptr %5, i32 0, i32 13
  %14 = ptrtoint ptr %force_gid to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %force_gid, align 2
  %call14 = tail call ptr @prepare_kernel_cred(ptr noundef null) #12
  %tobool.not = icmp eq ptr %call14, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end16

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %15)
  %cmp8.not = icmp eq i16 %15, -1
  %conv7 = zext i16 %15 to i32
  %gid.0 = select i1 %cmp8.not, i32 %11, i32 %conv7
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %13)
  %cmp.not = icmp eq i16 %13, -1
  %conv = zext i16 %13 to i32
  %spec.select = select i1 %cmp.not, i32 %9, i32 %conv
  %fsuid = getelementptr inbounds %struct.cred, ptr %call14, i32 0, i32 10
  %16 = tail call i32 @llvm.read_register.i32(metadata !111) #12
  %and.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task, align 8
  %cred20 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 99
  %20 = ptrtoint ptr %cred20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cred20, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %21, i32 0, i32 25
  %22 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %user_ns, align 4
  %call21 = tail call i32 @make_kuid(ptr noundef %23, i32 noundef %spec.select) #12
  %24 = ptrtoint ptr %fsuid to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call21, ptr %fsuid, align 4
  %fsgid = getelementptr inbounds %struct.cred, ptr %call14, i32 0, i32 11
  %25 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task, align 8
  %cred30 = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 99
  %27 = ptrtoint ptr %cred30 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cred30, align 16
  %user_ns31 = getelementptr inbounds %struct.cred, ptr %28, i32 0, i32 25
  %29 = ptrtoint ptr %user_ns31 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %user_ns31, align 4
  %call32 = tail call i32 @make_kgid(ptr noundef %30, i32 noundef %gid.0) #12
  %31 = ptrtoint ptr %fsgid to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call32, ptr %fsgid, align 4
  %call34 = tail call ptr @groups_alloc(i32 noundef 0) #12
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %if.end16.cleanup.sink.split_crit_edge, label %if.end37

if.end16.cleanup.sink.split_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end37:                                         ; preds = %if.end16
  tail call void @set_groups(ptr noundef nonnull %call14, ptr noundef nonnull %call34) #12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call34, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !123
  tail call void @llvm.prefetch.p0(ptr nonnull %call34, i32 1, i32 3, i32 1) #12
  %32 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call34, ptr nonnull %call34, i32 1, ptr nonnull elementtype(i32) %call34) #12, !srcloc !124
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %32, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !125
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then40, label %if.end37.do.end43_crit_edge

if.end37.do.end43_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end43

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @groups_free(ptr noundef nonnull %call34) #12
  br label %do.end43

do.end43:                                         ; preds = %if.then40, %if.end37.do.end43_crit_edge
  %33 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %33)
  %.unpack = load i32, ptr %fsuid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.unpack)
  %cmp.i = icmp eq i32 %.unpack, 0
  br i1 %cmp.i, label %do.end43.if.end52_crit_edge, label %if.then48

do.end43.if.end52_crit_edge:                      ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

if.then48:                                        ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #14
  %cap_effective = getelementptr inbounds %struct.cred, ptr %call14, i32 0, i32 15
  %34 = ptrtoint ptr %cap_effective to i32
  call void @__asan_load4_noabort(i32 %34)
  %.unpack111 = load i32, ptr %cap_effective, align 4
  %.elt112 = getelementptr inbounds %struct.cred, ptr %call14, i32 0, i32 15, i32 0, i32 1
  %35 = ptrtoint ptr %.elt112 to i32
  call void @__asan_load4_noabort(i32 %35)
  %.unpack113 = load i32, ptr %.elt112, align 4
  %and.i.i = and i32 %.unpack111, -134218272
  %and.1.i.i = and i32 %.unpack113, -2
  %tmp49.sroa.4.0.insert.ext = zext i32 %and.1.i.i to i64
  %tmp49.sroa.0.0.insert.ext = zext i32 %and.i.i to i64
  %tmp49.sroa.0.0.insert.shift = shl nuw i64 %tmp49.sroa.0.0.insert.ext, 32
  %tmp49.sroa.0.0.insert.insert = or i64 %tmp49.sroa.0.0.insert.shift, %tmp49.sroa.4.0.insert.ext
  store i64 %tmp49.sroa.0.0.insert.insert, ptr %cap_effective, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then48, %do.end43.if.end52_crit_edge
  %saved_cred = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 11
  %36 = ptrtoint ptr %saved_cred to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %saved_cred, align 8
  %tobool53.not = icmp eq ptr %37, null
  br i1 %tobool53.not, label %if.end52.if.end71_crit_edge, label %do.end65, !prof !126

if.end52.if.end71_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

do.end65:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 640, i32 noundef 9, ptr noundef null) #12
  br label %if.end71

if.end71:                                         ; preds = %do.end65, %if.end52.if.end71_crit_edge
  %call79 = tail call ptr @override_creds(ptr noundef nonnull %call14) #12
  %38 = ptrtoint ptr %saved_cred to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call79, ptr %saved_cred, align 8
  %tobool82.not = icmp eq ptr %call79, null
  br i1 %tobool82.not, label %if.end71.cleanup.sink.split_crit_edge, label %if.end71.cleanup_crit_edge

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end71.cleanup.sink.split_crit_edge:            ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end71.cleanup.sink.split_crit_edge, %if.end16.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -12, %if.end16.cleanup.sink.split_crit_edge ], [ -22, %if.end71.cleanup.sink.split_crit_edge ]
  tail call void @abort_creds(ptr noundef nonnull %call14) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end71.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end71.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @prepare_kernel_cred(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @groups_alloc(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @abort_creds(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_groups(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @groups_free(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @override_creds(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ksmbd_revert_fsids(ptr nocapture noundef %work) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %saved_cred = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 11
  %0 = ptrtoint ptr %saved_cred to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %saved_cred, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !127

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 653, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %2 = tail call i32 @llvm.read_register.i32(metadata !111) #12
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %cred25 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 99
  %6 = ptrtoint ptr %cred25 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cred25, align 16
  %8 = ptrtoint ptr %saved_cred to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %saved_cred, align 8
  tail call void @revert_creds(ptr noundef %9) #12
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.put_cred.exit_crit_edge, label %do.body.i

if.end.put_cred.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_cred.exit

do.body.i:                                        ; preds = %if.end
  %call.i.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %7) #12
  br i1 %call.i.i, label %if.then.i.i, label %do.body.i.__validate_creds.exit.i_crit_edge, !prof !127

do.body.i.__validate_creds.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__validate_creds.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__invalid_creds(ptr noundef nonnull %7, ptr noundef nonnull @.str.52, i32 noundef 286) #12
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i, %do.body.i.__validate_creds.exit.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %7, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !123
  tail call void @llvm.prefetch.p0(ptr nonnull %7, i32 1, i32 3, i32 1) #12
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %7, ptr nonnull %7, i32 1, ptr nonnull elementtype(i32) %7) #12, !srcloc !124
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !125
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then1.i, label %__validate_creds.exit.i.put_cred.exit_crit_edge

__validate_creds.exit.i.put_cred.exit_crit_edge:  ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_cred.exit

if.then1.i:                                       ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__put_cred(ptr noundef nonnull %7) #12
  br label %put_cred.exit

put_cred.exit:                                    ; preds = %if.then1.i, %__validate_creds.exit.i.put_cred.exit_crit_edge, %if.end.put_cred.exit_crit_edge
  %11 = ptrtoint ptr %saved_cred to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %saved_cred, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @revert_creds(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @smb_map_generic_desired_access(i32 noundef %daccess) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %daccess, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or = and i32 %daccess, 1996483967
  %and1 = or i32 %or, -1996484096
  %daccess.addr.0 = select i1 %tobool.not, i32 %daccess, i32 %and1
  %and2 = and i32 %daccess.addr.0, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %or5 = and i32 %daccess.addr.0, -369168961
  %and6 = or i32 %or5, 369168896
  %daccess.addr.1 = select i1 %tobool3.not, i32 %daccess.addr.0, i32 %and6
  %and8 = and i32 %daccess.addr.1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %or11 = and i32 %daccess.addr.1, 1610608095
  %and12 = or i32 %or11, -1610608128
  %daccess.addr.2 = select i1 %tobool9.not, i32 %daccess.addr.1, i32 %and12
  %and14 = and i32 %daccess.addr.2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %or17 = and i32 %daccess.addr.2, 16703727
  %and18 = or i32 %or17, -16703744
  %daccess.addr.3 = select i1 %tobool15.not, i32 %daccess.addr.2, i32 %and18
  ret i32 %daccess.addr.3
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @creds_are_invalid(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__invalid_creds(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nobuiltin }
attributes #16 = { cold nounwind }
attributes #17 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !13, !14, !16, !17, !18, !20, !22, !24, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !76, !77, !78, !80, !81, !83, !84, !85, !86, !88, !89, !90, !91, !93, !94, !95, !97, !99, !101, !103, !105, !107, !109}
!llvm.named.register.sp = !{!111}
!llvm.module.flags = !{!112, !113, !114, !115, !116, !117, !118, !119}
!llvm.ident = !{!120}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ksmbd/smb_common.c", i32 106, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ksmbd_lookup_protocol_idx._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ksmbd_lookup_protocol_idx._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @ksmbd_lookup_protocol_idx._entry.3, !7, !"_entry", i1 false, i1 false}
!7 = !{!"../fs/ksmbd/smb_common.c", i32 116, i32 4}
!8 = !{ptr @ksmbd_lookup_protocol_idx._entry_ptr.4, !7, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/ksmbd/smb_common.c", i32 222, i32 4}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @ksmbd_lookup_dialect_by_id._entry, !10, !"_entry", i1 false, i1 false}
!13 = !{ptr @ksmbd_lookup_dialect_by_id._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/ksmbd/smb_common.c", i32 229, i32 5}
!16 = !{ptr @ksmbd_lookup_dialect_by_id._entry.7, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @ksmbd_lookup_dialect_by_id._entry_ptr.9, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/ksmbd/smb_common.c", i32 315, i32 20}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/ksmbd/smb_common.c", i32 319, i32 20}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/ksmbd/smb_common.c", i32 382, i32 22}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/ksmbd/smb_common.c", i32 453, i32 2}
!26 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @ksmbd_smb_negotiate_common._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @ksmbd_smb_negotiate_common._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/ksmbd/smb_common.c", i32 459, i32 4}
!31 = !{ptr @ksmbd_smb_negotiate_common._entry.15, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @ksmbd_smb_negotiate_common._entry_ptr.17, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/ksmbd/smb_common.c", i32 475, i32 4}
!35 = !{ptr @ksmbd_smb_negotiate_common._entry.18, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @ksmbd_smb_negotiate_common._entry_ptr.20, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.22, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/ksmbd/smb_common.c", i32 481, i32 2}
!39 = !{ptr @ksmbd_smb_negotiate_common._entry.21, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @ksmbd_smb_negotiate_common._entry_ptr.23, !38, !"_entry_ptr", i1 false, i1 false}
!41 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!42 = !{!"../fs/ksmbd/smb_common.c", i32 626, i32 26}
!43 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!44 = !{!"../fs/ksmbd/smb_common.c", i32 627, i32 26}
!45 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!46 = !{!"../fs/ksmbd/smb_common.c", i32 655, i32 9}
!47 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/ksmbd/smb_common.c", i32 35, i32 3}
!49 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/ksmbd/smb_common.c", i32 36, i32 3}
!51 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/ksmbd/smb_common.c", i32 41, i32 3}
!53 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/ksmbd/smb_common.c", i32 42, i32 3}
!55 = !{ptr @smb1_protos, !56, !"smb1_protos", i1 false, i1 false}
!56 = !{!"../fs/ksmbd/smb_common.c", i32 32, i32 28}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/ksmbd/smb_common.c", i32 56, i32 3}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/ksmbd/smb_common.c", i32 57, i32 3}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/ksmbd/smb_common.c", i32 62, i32 3}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/ksmbd/smb_common.c", i32 63, i32 3}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/ksmbd/smb_common.c", i32 68, i32 3}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/ksmbd/smb_common.c", i32 69, i32 3}
!69 = !{ptr @smb2_protos, !70, !"smb2_protos", i1 false, i1 false}
!70 = !{!"../fs/ksmbd/smb_common.c", i32 47, i32 28}
!71 = !{ptr @basechars, !72, !"basechars", i1 false, i1 false}
!72 = !{!"../fs/ksmbd/smb_common.c", i32 19, i32 19}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/ksmbd/smb_common.c", i32 194, i32 4}
!75 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @ksmbd_lookup_dialect_by_name._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @ksmbd_lookup_dialect_by_name._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @ksmbd_lookup_dialect_by_name._entry.37, !79, !"_entry", i1 false, i1 false}
!79 = !{!"../fs/ksmbd/smb_common.c", i32 198, i32 6}
!80 = !{ptr @ksmbd_lookup_dialect_by_name._entry_ptr.38, !79, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/ksmbd/smb_common.c", i32 441, i32 2}
!83 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @smb_handle_negotiate._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @smb_handle_negotiate._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/ksmbd/smb_common.c", i32 506, i32 2}
!88 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @smb_shared_mode_error._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @smb_shared_mode_error._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.44, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../fs/ksmbd/smb_common.c", i32 507, i32 2}
!93 = !{ptr @smb_shared_mode_error._entry.43, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @smb_shared_mode_error._entry_ptr.45, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.46, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../fs/ksmbd/smb_common.c", i32 495, i32 2}
!97 = !{ptr @.str.47, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/ksmbd/smb_common.c", i32 496, i32 2}
!99 = !{ptr @.str.48, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/ksmbd/smb_common.c", i32 497, i32 2}
!101 = !{ptr @.str.49, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../fs/ksmbd/smb_common.c", i32 498, i32 2}
!103 = !{ptr @.str.50, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../fs/ksmbd/smb_common.c", i32 499, i32 2}
!105 = !{ptr @.str.51, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../fs/ksmbd/smb_common.c", i32 500, i32 2}
!107 = distinct !{null, !108, !"shared_mode_errors", i1 false, i1 false}
!108 = !{!"../fs/ksmbd/smb_common.c", i32 494, i32 27}
!109 = !{ptr @.str.52, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../include/linux/cred.h", i32 286, i32 3}
!111 = !{!"sp"}
!112 = !{i32 1, !"wchar_size", i32 2}
!113 = !{i32 1, !"min_enum_size", i32 4}
!114 = !{i32 8, !"branch-target-enforcement", i32 0}
!115 = !{i32 8, !"sign-return-address", i32 0}
!116 = !{i32 8, !"sign-return-address-all", i32 0}
!117 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!118 = !{i32 7, !"uwtable", i32 1}
!119 = !{i32 7, !"frame-pointer", i32 2}
!120 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!121 = !{i8 0, i8 2}
!122 = !{i64 2152460015}
!123 = !{i64 2148326570}
!124 = !{i64 2148241303, i64 2148241335, i64 2148241364, i64 2148241398, i64 2148241429, i64 2148241452}
!125 = !{i64 2148326799}
!126 = !{!"branch_weights", i32 2000, i32 1}
!127 = !{!"branch_weights", i32 1, i32 2000}
