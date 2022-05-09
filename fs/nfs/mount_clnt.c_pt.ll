; ModuleID = '/llk/IR_all_yes/fs/nfs/mount_clnt.c_pt.bc'
source_filename = "../fs/nfs/mount_clnt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rpc_program = type { ptr, i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rpc_timeout = type { i32, i32, i32, i32, i8 }
%struct.rpc_stat = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rpc_version = type { i32, i32, ptr, ptr }
%struct.rpc_procinfo = type { i32, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.anon.165 = type { i32, i32 }
%struct.anon.166 = type { i32, i32 }
%struct.mountres = type { i32, ptr, ptr, ptr }
%struct.rpc_message = type { ptr, ptr, ptr, ptr }
%struct.rpc_create_args = type { ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32 }
%struct.nfs_mount_request = type { ptr, i32, ptr, ptr, i32, i16, ptr, i32, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.54, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.31 }
%struct.llist_node = type { ptr }
%union.anon.31 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.33 }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.54 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.rpc_clnt = type { %struct.refcount_struct, i32, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.spinlock, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, %struct.atomic_t, i32, [65 x i8], %struct.rpc_pipe_dir_head, ptr, %struct.rpc_rtt, %struct.rpc_timeout, ptr, ptr, ptr, ptr, %union.anon.74, ptr, i32 }
%struct.rpc_pipe_dir_head = type { %struct.list_head, ptr }
%struct.rpc_rtt = type { i32, [5 x i32], [5 x i32], [5 x i32] }
%union.anon.74 = type { %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.nfs_fh = type { i16, [128 x i8] }

@mnt_program = internal constant { %struct.rpc_program, [40 x i8] } { %struct.rpc_program { ptr @.str.27, i32 100005, i32 4, ptr @mnt_version, ptr @mnt_stats, ptr null }, [40 x i8] zeroinitializer }, align 32
@nfs_debug = external dso_local local_unnamed_addr global i32, align 4
@nfs_mount._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"NFS: sending MNT request for %s:%s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nfs_mount\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fs/nfs/mount_clnt.c\00", [44 x i8] zeroinitializer }, align 32
@nfs_mount._entry_ptr = internal global ptr @nfs_mount._entry, section ".printk_index", align 4
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"server\00", [25 x i8] zeroinitializer }, align 32
@nfs_mount._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"NFS: MNT request succeeded\0A\00", [36 x i8] zeroinitializer }, align 32
@nfs_mount._entry_ptr.6 = internal global ptr @nfs_mount._entry.4, section ".printk_index", align 4
@nfs_mount._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 209, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"NFS: Faking up auth_flavs list\0A\00", [32 x i8] zeroinitializer }, align 32
@nfs_mount._entry_ptr.9 = internal global ptr @nfs_mount._entry.7, section ".printk_index", align 4
@nfs_mount._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"NFS: failed to create MNT RPC client, status=%d\0A\00", [47 x i8] zeroinitializer }, align 32
@nfs_mount._entry_ptr.12 = internal global ptr @nfs_mount._entry.10, section ".printk_index", align 4
@nfs_mount._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"NFS: MNT request failed, status=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@nfs_mount._entry_ptr.15 = internal global ptr @nfs_mount._entry.13, section ".printk_index", align 4
@nfs_mount._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"NFS: MNT server returned result %d\0A\00", [60 x i8] zeroinitializer }, align 32
@nfs_mount._entry_ptr.18 = internal global ptr @nfs_mount._entry.16, section ".printk_index", align 4
@nfs_umount.nfs_umnt_timeout = internal constant { %struct.rpc_timeout, [44 x i8] } { %struct.rpc_timeout { i32 100, i32 300, i32 0, i32 2, i8 0 }, [44 x i8] zeroinitializer }, align 32
@nfs_umount._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"NFS: sending UMNT request for %s:%s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nfs_umount\00", [21 x i8] zeroinitializer }, align 32
@nfs_umount._entry_ptr = internal global ptr @nfs_umount._entry, section ".printk_index", align 4
@nfs_umount._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.2, i32 292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"NFS: failed to create UMNT RPC client, status=%ld\0A\00", [45 x i8] zeroinitializer }, align 32
@nfs_umount._entry_ptr.23 = internal global ptr @nfs_umount._entry.21, section ".printk_index", align 4
@nfs_umount._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str.2, i32 296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"NFS: UMNT request failed, status=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@nfs_umount._entry_ptr.26 = internal global ptr @nfs_umount._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mount\00", [26 x i8] zeroinitializer }, align 32
@mnt_version = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr null, ptr @mnt_version1, ptr null, ptr @mnt_version3], [16 x i8] zeroinitializer }, align 32
@mnt_stats = internal global { %struct.rpc_stat, [56 x i8] } zeroinitializer, align 32
@mnt_version1 = internal constant { %struct.rpc_version, [16 x i8] } { %struct.rpc_version { i32 1, i32 4, ptr @mnt_procedures, ptr @mnt_counts }, [16 x i8] zeroinitializer }, align 32
@mnt_version3 = internal constant { %struct.rpc_version, [16 x i8] } { %struct.rpc_version { i32 3, i32 4, ptr @mnt3_procedures, ptr @mnt3_counts }, [16 x i8] zeroinitializer }, align 32
@mnt_procedures = internal constant { [4 x %struct.rpc_procinfo], [32 x i8] } { [4 x %struct.rpc_procinfo] [%struct.rpc_procinfo zeroinitializer, %struct.rpc_procinfo { i32 1, ptr @mnt_xdr_enc_dirpath, ptr @mnt_xdr_dec_mountres, i32 257, i32 9, i32 0, i32 1, ptr @.str.28 }, %struct.rpc_procinfo zeroinitializer, %struct.rpc_procinfo { i32 3, ptr @mnt_xdr_enc_dirpath, ptr null, i32 257, i32 0, i32 0, i32 3, ptr @.str.29 }], [32 x i8] zeroinitializer }, align 32
@mnt_counts = internal global { [4 x i32], [16 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MOUNT\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"UMOUNT\00", [25 x i8] zeroinitializer }, align 32
@mnt_errtbl = internal constant { [5 x %struct.anon.165], [56 x i8] } { [5 x %struct.anon.165] [%struct.anon.165 zeroinitializer, %struct.anon.165 { i32 1, i32 -1 }, %struct.anon.165 { i32 2, i32 -2 }, %struct.anon.165 { i32 13, i32 -13 }, %struct.anon.165 { i32 22, i32 -22 }], [56 x i8] zeroinitializer }, align 32
@decode_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"NFS: unrecognized MNT status code: %u\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"decode_status\00", [18 x i8] zeroinitializer }, align 32
@decode_status._entry_ptr = internal global ptr @decode_status._entry, section ".printk_index", align 4
@mnt3_procedures = internal constant { [4 x %struct.rpc_procinfo], [32 x i8] } { [4 x %struct.rpc_procinfo] [%struct.rpc_procinfo zeroinitializer, %struct.rpc_procinfo { i32 1, ptr @mnt_xdr_enc_dirpath, ptr @mnt_xdr_dec_mountres3, i32 257, i32 30, i32 0, i32 1, ptr @.str.28 }, %struct.rpc_procinfo zeroinitializer, %struct.rpc_procinfo { i32 3, ptr @mnt_xdr_enc_dirpath, ptr null, i32 257, i32 0, i32 0, i32 3, ptr @.str.29 }], [32 x i8] zeroinitializer }, align 32
@mnt3_counts = internal global { [4 x i32], [16 x i8] } zeroinitializer, align 32
@mnt3_errtbl = internal constant { [10 x %struct.anon.166], [48 x i8] } { [10 x %struct.anon.166] [%struct.anon.166 zeroinitializer, %struct.anon.166 { i32 1, i32 -1 }, %struct.anon.166 { i32 2, i32 -2 }, %struct.anon.166 { i32 5, i32 -5 }, %struct.anon.166 { i32 13, i32 -13 }, %struct.anon.166 { i32 20, i32 -20 }, %struct.anon.166 { i32 22, i32 -22 }, %struct.anon.166 { i32 63, i32 -36 }, %struct.anon.166 { i32 10004, i32 -524 }, %struct.anon.166 { i32 10006, i32 -121 }], [48 x i8] zeroinitializer }, align 32
@decode_fhs_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"NFS: unrecognized MNT3 status code: %u\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"decode_fhs_status\00", [46 x i8] zeroinitializer }, align 32
@decode_fhs_status._entry_ptr = internal global ptr @decode_fhs_status._entry, section ".printk_index", align 4
@decode_auth_flavors._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 437, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"NFS: received %u auth flavors\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"decode_auth_flavors\00", [44 x i8] zeroinitializer }, align 32
@decode_auth_flavors._entry_ptr = internal global ptr @decode_auth_flavors._entry, section ".printk_index", align 4
@decode_auth_flavors._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.2, i32 450, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"NFS:   auth flavor[%u]: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@decode_auth_flavors._entry_ptr.38 = internal global ptr @decode_auth_flavors._entry.36, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 13, i64 22]
@__sancov_gen_cov_switch_values.39 = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 1, i64 2, i64 5, i64 13, i64 20, i64 22, i64 63, i64 10004, i64 10006]
@___asan_gen_.40 = private unnamed_addr constant [12 x i8] c"mnt_program\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 538, i32 33 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 173, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 201, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 209, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 218, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 222, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 226, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"nfs_umnt_timeout\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 240, i32 34 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 274, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 291, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 296, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 539, i32 11 }
@___asan_gen_.115 = private unnamed_addr constant [12 x i8] c"mnt_version\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 529, i32 34 }
@___asan_gen_.118 = private unnamed_addr constant [10 x i8] c"mnt_stats\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 536, i32 24 }
@___asan_gen_.121 = private unnamed_addr constant [13 x i8] c"mnt_version1\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 514, i32 33 }
@___asan_gen_.124 = private unnamed_addr constant [13 x i8] c"mnt_version3\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 522, i32 33 }
@___asan_gen_.127 = private unnamed_addr constant [15 x i8] c"mnt_procedures\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 475, i32 34 }
@___asan_gen_.130 = private unnamed_addr constant [11 x i8] c"mnt_counts\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 513, i32 21 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 483, i32 14 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 490, i32 14 }
@___asan_gen_.139 = private unnamed_addr constant [11 x i8] c"mnt_errtbl\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 84, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 345, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant [16 x i8] c"mnt3_procedures\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 494, i32 34 }
@___asan_gen_.154 = private unnamed_addr constant [12 x i8] c"mnt3_counts\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 521, i32 21 }
@___asan_gen_.157 = private unnamed_addr constant [12 x i8] c"mnt3_errtbl\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 111, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 395, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 437, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.181 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.182 = private constant [23 x i8] c"../fs/nfs/mount_clnt.c\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 450, i32 3 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @decode_auth_flavors._entry, ptr @decode_auth_flavors._entry.36, ptr @decode_auth_flavors._entry_ptr, ptr @decode_auth_flavors._entry_ptr.38, ptr @decode_fhs_status._entry, ptr @decode_fhs_status._entry_ptr, ptr @decode_status._entry, ptr @decode_status._entry_ptr, ptr @nfs_mount._entry, ptr @nfs_mount._entry.10, ptr @nfs_mount._entry.13, ptr @nfs_mount._entry.16, ptr @nfs_mount._entry.4, ptr @nfs_mount._entry.7, ptr @nfs_mount._entry_ptr, ptr @nfs_mount._entry_ptr.12, ptr @nfs_mount._entry_ptr.15, ptr @nfs_mount._entry_ptr.18, ptr @nfs_mount._entry_ptr.6, ptr @nfs_mount._entry_ptr.9, ptr @nfs_umount._entry, ptr @nfs_umount._entry.21, ptr @nfs_umount._entry.24, ptr @nfs_umount._entry_ptr, ptr @nfs_umount._entry_ptr.23, ptr @nfs_umount._entry_ptr.26, ptr @mnt_program, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @nfs_umount.nfs_umnt_timeout, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @mnt_version, ptr @mnt_stats, ptr @mnt_version1, ptr @mnt_version3, ptr @mnt_procedures, ptr @mnt_counts, ptr @.str.28, ptr @.str.29, ptr @mnt_errtbl, ptr @.str.30, ptr @.str.31, ptr @mnt3_procedures, ptr @mnt3_counts, ptr @mnt3_errtbl, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mnt_program to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_mount._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_mount._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_mount._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_mount._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_mount._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_mount._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_umount.nfs_umnt_timeout to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_umount._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_umount._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_umount._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mnt_version to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mnt_stats to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mnt_version1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mnt_version3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mnt_procedures to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mnt_counts to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mnt_errtbl to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mnt3_procedures to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mnt3_counts to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mnt3_errtbl to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_fhs_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_auth_flavors._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_auth_flavors._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs_mount(ptr nocapture noundef readonly %info, i32 noundef %timeo, i32 noundef %retrans) local_unnamed_addr #0 align 64 {
entry:
  %mnt_timeout = alloca %struct.rpc_timeout, align 4
  %result = alloca %struct.mountres, align 4
  %msg = alloca %struct.rpc_message, align 4
  %args = alloca %struct.rpc_create_args, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %mnt_timeout) #7
  %0 = call ptr @memset(ptr %mnt_timeout, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %result) #7
  %1 = getelementptr inbounds %struct.mountres, ptr %result, i32 0, i32 1
  %2 = getelementptr inbounds %struct.mountres, ptr %result, i32 0, i32 2
  %3 = getelementptr inbounds %struct.mountres, ptr %result, i32 0, i32 3
  %4 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %result, align 4
  %fh1 = getelementptr inbounds %struct.nfs_mount_request, ptr %info, i32 0, i32 6
  %5 = ptrtoint ptr %fh1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fh1, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %1, align 4
  %auth_flav_len = getelementptr inbounds %struct.nfs_mount_request, ptr %info, i32 0, i32 8
  %8 = ptrtoint ptr %auth_flav_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %auth_flav_len, align 4
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %2, align 4
  %auth_flavs = getelementptr inbounds %struct.nfs_mount_request, ptr %info, i32 0, i32 9
  %11 = ptrtoint ptr %auth_flavs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %auth_flavs, align 4
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #7
  %14 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 1
  %15 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 2
  %16 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 3
  %17 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %msg, align 4
  %dirpath = getelementptr inbounds %struct.nfs_mount_request, ptr %info, i32 0, i32 3
  %18 = ptrtoint ptr %dirpath to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dirpath, align 4
  %20 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %14, align 4
  %21 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %result, ptr %15, align 4
  %22 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args) #7
  %23 = getelementptr inbounds i8, ptr %args, i32 64
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 8)
  store i64 -1, ptr %23, align 4, !annotation !103
  %net2 = getelementptr inbounds %struct.nfs_mount_request, ptr %info, i32 0, i32 10
  %25 = ptrtoint ptr %net2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %net2, align 4
  %27 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %args, align 4
  %protocol = getelementptr inbounds %struct.rpc_create_args, ptr %args, i32 0, i32 1
  %protocol3 = getelementptr inbounds %struct.nfs_mount_request, ptr %info, i32 0, i32 5
  %28 = ptrtoint ptr %protocol3 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %protocol3, align 4
  %conv = zext i16 %29 to i32
  %30 = ptrtoint ptr %protocol to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv, ptr %protocol, align 4
  %address = getelementptr inbounds %struct.rpc_create_args, ptr %args, i32 0, i32 2
  %31 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %info, align 4
  %33 = ptrtoint ptr %address to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %address, align 4
  %addrsize = getelementptr inbounds %struct.rpc_create_args, ptr %args, i32 0, i32 3
  %salen = getelementptr inbounds %struct.nfs_mount_request, ptr %info, i32 0, i32 1
  %34 = ptrtoint ptr %salen to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %salen, align 4
  %36 = ptrtoint ptr %addrsize to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %addrsize, align 4
  %saddress = getelementptr inbounds %struct.rpc_create_args, ptr %args, i32 0, i32 4
  %37 = ptrtoint ptr %saddress to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %saddress, align 4
  %timeout = getelementptr inbounds %struct.rpc_create_args, ptr %args, i32 0, i32 5
  %38 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %mnt_timeout, ptr %timeout, align 4
  %servername = getelementptr inbounds %struct.rpc_create_args, ptr %args, i32 0, i32 6
  %hostname = getelementptr inbounds %struct.nfs_mount_request, ptr %info, i32 0, i32 2
  %39 = ptrtoint ptr %hostname to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hostname, align 4
  %41 = ptrtoint ptr %servername to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %servername, align 4
  %nodename = getelementptr inbounds %struct.rpc_create_args, ptr %args, i32 0, i32 7
  %42 = ptrtoint ptr %nodename to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %nodename, align 4
  %program = getelementptr inbounds %struct.rpc_create_args, ptr %args, i32 0, i32 8
  %43 = ptrtoint ptr %program to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @mnt_program, ptr %program, align 4
  %prognumber = getelementptr inbounds %struct.rpc_create_args, ptr %args, i32 0, i32 9
  %44 = ptrtoint ptr %prognumber to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %prognumber, align 4
  %version = getelementptr inbounds %struct.rpc_create_args, ptr %args, i32 0, i32 10
  %version4 = getelementptr inbounds %struct.nfs_mount_request, ptr %info, i32 0, i32 4
  %45 = ptrtoint ptr %version4 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %version4, align 4
  %47 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %version, align 4
  %authflavor = getelementptr inbounds %struct.rpc_create_args, ptr %args, i32 0, i32 11
  %48 = ptrtoint ptr %authflavor to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %authflavor, align 4
  %nconnect = getelementptr inbounds %struct.rpc_create_args, ptr %args, i32 0, i32 12
  %flags = getelementptr inbounds %struct.rpc_create_args, ptr %args, i32 0, i32 13
  %cred = getelementptr inbounds %struct.rpc_create_args, ptr %args, i32 0, i32 16
  %49 = call ptr @memset(ptr %nconnect, i32 0, i32 16)
  %50 = call i32 @llvm.read_register.i32(metadata !93) #7
  %and.i = and i32 %50, -16384
  %51 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %task, align 8
  %cred5 = getelementptr inbounds %struct.task_struct, ptr %53, i32 0, i32 99
  %54 = ptrtoint ptr %cred5 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cred5, align 16
  %56 = ptrtoint ptr %cred to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %55, ptr %cred, align 4
  %max_connect = getelementptr inbounds %struct.rpc_create_args, ptr %args, i32 0, i32 17
  %57 = ptrtoint ptr %max_connect to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %max_connect, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %58 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %58, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end19_crit_edge, label %do.end11, !prof !104

entry.do.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end19

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %tobool14.not = icmp eq ptr %40, null
  %spec.select = select i1 %tobool14.not, ptr @.str.3, ptr %40
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull %spec.select, ptr noundef %19) #10
  br label %do.end19

do.end19:                                         ; preds = %do.end11, %entry.do.end19_crit_edge
  %59 = ptrtoint ptr %dirpath to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dirpath, align 4
  %call21 = call i32 @strlen(ptr noundef %60) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %call21)
  %cmp = icmp ugt i32 %call21, 1024
  br i1 %cmp, label %do.end19.cleanup_crit_edge, label %if.end24

do.end19.cleanup_crit_edge:                       ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end24:                                         ; preds = %do.end19
  %noresvport = getelementptr inbounds %struct.nfs_mount_request, ptr %info, i32 0, i32 7
  %61 = ptrtoint ptr %noresvport to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %noresvport, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool25.not = icmp eq i32 %62, 0
  br i1 %tobool25.not, label %if.end24.if.end28_crit_edge, label %if.then26

if.end24.if.end28_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %flags, align 4
  %or = or i32 %64, 8
  store i32 %or, ptr %flags, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end24.if.end28_crit_edge
  %65 = ptrtoint ptr %protocol3 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %protocol3, align 4
  %conv30 = zext i16 %66 to i32
  call void @nfs_init_timeout_values(ptr noundef nonnull %mnt_timeout, i32 noundef %conv30, i32 noundef %timeo, i32 noundef %retrans) #7
  %call31 = call ptr @rpc_create(ptr noundef nonnull %args) #7
  %cmp.i = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %out_clnt_err, label %if.end43

if.end43:                                         ; preds = %if.end28
  %.pn.in = getelementptr inbounds %struct.rpc_clnt, ptr %call31, i32 0, i32 7
  %67 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %67)
  %.pn = load ptr, ptr %.pn.in, align 4
  %storemerge = getelementptr %struct.rpc_procinfo, ptr %.pn, i32 1
  %68 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %storemerge, ptr %msg, align 4
  %call44 = call i32 @rpc_call_sync(ptr noundef %call31, ptr noundef nonnull %msg, i32 noundef 4608) #7
  call void @rpc_shutdown_client(ptr noundef %call31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %do.body120, label %if.end48

if.end48:                                         ; preds = %if.end43
  %69 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %result, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp50.not = icmp eq i32 %70, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %71 = load i32, ptr @nfs_debug, align 4
  %and55 = and i32 %71, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %cmp50.not, label %do.body54, label %do.body138

do.body54:                                        ; preds = %if.end48
  br i1 %tobool56.not, label %do.body54.do.end71_crit_edge, label %do.end66, !prof !104

do.body54.do.end71_crit_edge:                     ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end71

do.end66:                                         ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #9
  %call68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #10
  br label %do.end71

do.end71:                                         ; preds = %do.end66, %do.body54.do.end71_crit_edge
  %72 = ptrtoint ptr %version4 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %version4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %73)
  %cmp73.not = icmp eq i32 %73, 3
  br i1 %cmp73.not, label %lor.lhs.false, label %do.end71.do.body79_crit_edge

do.end71.do.body79_crit_edge:                     ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body79

lor.lhs.false:                                    ; preds = %do.end71
  %74 = ptrtoint ptr %auth_flav_len to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %auth_flav_len, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %75, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp76 = icmp eq i32 %77, 0
  br i1 %cmp76, label %lor.lhs.false.do.body79_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.do.body79_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body79

do.body79:                                        ; preds = %lor.lhs.false.do.body79_crit_edge, %do.end71.do.body79_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %78 = load i32, ptr @nfs_debug, align 4
  %and80 = and i32 %78, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %do.body79.do.end96_crit_edge, label %do.end91, !prof !104

do.body79.do.end96_crit_edge:                     ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end96

do.end91:                                         ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #9
  %call93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #10
  br label %do.end96

do.end96:                                         ; preds = %do.end91, %do.body79.do.end96_crit_edge
  %79 = ptrtoint ptr %auth_flavs to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %auth_flavs, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %80, align 4
  %82 = ptrtoint ptr %auth_flav_len to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %auth_flav_len, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 1, ptr %83, align 4
  br label %cleanup

out_clnt_err:                                     ; preds = %if.end28
  %85 = ptrtoint ptr %call31 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %86 = load i32, ptr @nfs_debug, align 4
  %and103 = and i32 %86, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %out_clnt_err.cleanup_crit_edge, label %do.end114, !prof !104

out_clnt_err.cleanup_crit_edge:                   ; preds = %out_clnt_err
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end114:                                        ; preds = %out_clnt_err
  call void @__sanitizer_cov_trace_pc() #9
  %call116 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %85) #10
  br label %cleanup

do.body120:                                       ; preds = %if.end43
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %87 = load i32, ptr @nfs_debug, align 4
  %and121 = and i32 %87, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121)
  %tobool122.not = icmp eq i32 %and121, 0
  br i1 %tobool122.not, label %do.body120.cleanup_crit_edge, label %do.end132, !prof !104

do.body120.cleanup_crit_edge:                     ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end132:                                        ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #9
  %call134 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %call44) #10
  br label %cleanup

do.body138:                                       ; preds = %if.end48
  br i1 %tobool56.not, label %do.body138.do.end156_crit_edge, label %do.end150, !prof !104

do.body138.do.end156_crit_edge:                   ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end156

do.end150:                                        ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #9
  %call153 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %70) #10
  br label %do.end156

do.end156:                                        ; preds = %do.end150, %do.body138.do.end156_crit_edge
  %88 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %result, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end156, %do.end132, %do.body120.cleanup_crit_edge, %do.end114, %out_clnt_err.cleanup_crit_edge, %do.end96, %lor.lhs.false.cleanup_crit_edge, %do.end19.cleanup_crit_edge
  %retval.0 = phi i32 [ -36, %do.end19.cleanup_crit_edge ], [ %85, %do.end114 ], [ %85, %out_clnt_err.cleanup_crit_edge ], [ %call44, %do.end132 ], [ %call44, %do.body120.cleanup_crit_edge ], [ %89, %do.end156 ], [ 0, %do.end96 ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %result) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %mnt_timeout) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_init_timeout_values(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_create(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_call_sync(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_shutdown_client(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs_umount(ptr nocapture noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.rpc_create_args, align 4
  %msg = alloca %struct.rpc_message, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args) #7
  %0 = getelementptr inbounds i8, ptr %args, i32 64
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 -1, ptr %0, align 4, !annotation !103
  %net1 = getelementptr inbounds %struct.nfs_mount_request, ptr %info, i32 0, i32 10
  %2 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net1, align 4
  %4 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %args, align 4
  %protocol = getelementptr inbounds %struct.rpc_create_args, ptr %args, i32 0, i32 1
  %5 = ptrtoint ptr %protocol to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 17, ptr %protocol, align 4
  %address = getelementptr inbounds %struct.rpc_create_args, ptr %args, i32 0, i32 2
  %6 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info, align 4
  %8 = ptrtoint ptr %address to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %address, align 4
  %addrsize = getelementptr inbounds %struct.rpc_create_args, ptr %args, i32 0, i32 3
  %salen = getelementptr inbounds %struct.nfs_mount_request, ptr %info, i32 0, i32 1
  %9 = ptrtoint ptr %salen to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %salen, align 4
  %11 = ptrtoint ptr %addrsize to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %addrsize, align 4
  %saddress = getelementptr inbounds %struct.rpc_create_args, ptr %args, i32 0, i32 4
  %12 = ptrtoint ptr %saddress to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %saddress, align 4
  %timeout = getelementptr inbounds %struct.rpc_create_args, ptr %args, i32 0, i32 5
  %13 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @nfs_umount.nfs_umnt_timeout, ptr %timeout, align 4
  %servername = getelementptr inbounds %struct.rpc_create_args, ptr %args, i32 0, i32 6
  %hostname = getelementptr inbounds %struct.nfs_mount_request, ptr %info, i32 0, i32 2
  %14 = ptrtoint ptr %hostname to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hostname, align 4
  %16 = ptrtoint ptr %servername to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %servername, align 4
  %nodename = getelementptr inbounds %struct.rpc_create_args, ptr %args, i32 0, i32 7
  %17 = ptrtoint ptr %nodename to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %nodename, align 4
  %program = getelementptr inbounds %struct.rpc_create_args, ptr %args, i32 0, i32 8
  %18 = ptrtoint ptr %program to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @mnt_program, ptr %program, align 4
  %prognumber = getelementptr inbounds %struct.rpc_create_args, ptr %args, i32 0, i32 9
  %19 = ptrtoint ptr %prognumber to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %prognumber, align 4
  %version = getelementptr inbounds %struct.rpc_create_args, ptr %args, i32 0, i32 10
  %version2 = getelementptr inbounds %struct.nfs_mount_request, ptr %info, i32 0, i32 4
  %20 = ptrtoint ptr %version2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %version2, align 4
  %22 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %version, align 4
  %authflavor = getelementptr inbounds %struct.rpc_create_args, ptr %args, i32 0, i32 11
  %23 = ptrtoint ptr %authflavor to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %authflavor, align 4
  %nconnect = getelementptr inbounds %struct.rpc_create_args, ptr %args, i32 0, i32 12
  %24 = ptrtoint ptr %nconnect to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %nconnect, align 4
  %flags = getelementptr inbounds %struct.rpc_create_args, ptr %args, i32 0, i32 13
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 16, ptr %flags, align 4
  %client_name = getelementptr inbounds %struct.rpc_create_args, ptr %args, i32 0, i32 14
  %26 = ptrtoint ptr %client_name to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %client_name, align 4
  %bc_xprt = getelementptr inbounds %struct.rpc_create_args, ptr %args, i32 0, i32 15
  %27 = ptrtoint ptr %bc_xprt to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %bc_xprt, align 4
  %cred = getelementptr inbounds %struct.rpc_create_args, ptr %args, i32 0, i32 16
  %28 = tail call i32 @llvm.read_register.i32(metadata !93) #7
  %and.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task, align 8
  %cred3 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 99
  %32 = ptrtoint ptr %cred3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cred3, align 16
  %34 = ptrtoint ptr %cred to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %cred, align 4
  %max_connect = getelementptr inbounds %struct.rpc_create_args, ptr %args, i32 0, i32 17
  %35 = ptrtoint ptr %max_connect to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %max_connect, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #7
  %36 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 1
  %37 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 2
  %38 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 3
  %dirpath = getelementptr inbounds %struct.nfs_mount_request, ptr %info, i32 0, i32 3
  %39 = ptrtoint ptr %dirpath to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dirpath, align 4
  %41 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %36, align 4
  %42 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %37, align 4
  %43 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %38, align 4
  %call5 = tail call i32 @strlen(ptr noundef %40) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %call5)
  %cmp = icmp ugt i32 %call5, 1024
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %noresvport = getelementptr inbounds %struct.nfs_mount_request, ptr %info, i32 0, i32 7
  %44 = ptrtoint ptr %noresvport to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %noresvport, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not = icmp eq i32 %45, 0
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 24, ptr %flags, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  %call9 = call ptr @rpc_create(ptr noundef nonnull %args) #7
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %47 = load i32, ptr @nfs_debug, align 4
  %and49 = and i32 %47, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %cmp.i, label %do.body48, label %do.body13

do.body13:                                        ; preds = %if.end8
  br i1 %tobool50.not, label %do.body13.if.end37_crit_edge, label %do.end20, !prof !104

do.body13.if.end37_crit_edge:                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

do.end20:                                         ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %hostname to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hostname, align 4
  %tobool23.not = icmp eq ptr %49, null
  %spec.select = select i1 %tobool23.not, ptr @.str.3, ptr %49
  %50 = ptrtoint ptr %dirpath to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dirpath, align 4
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull %spec.select, ptr noundef %51) #10
  br label %if.end37

if.end37:                                         ; preds = %do.end20, %do.body13.if.end37_crit_edge
  %.pn.in = getelementptr inbounds %struct.rpc_clnt, ptr %call9, i32 0, i32 7
  %52 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %52)
  %.pn = load ptr, ptr %.pn.in, align 4
  %storemerge = getelementptr %struct.rpc_procinfo, ptr %.pn, i32 3
  %53 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %storemerge, ptr %msg, align 4
  %call38 = call i32 @rpc_call_sync(ptr noundef %call9, ptr noundef nonnull %msg, i32 noundef 0) #7
  call void @rpc_shutdown_client(ptr noundef %call9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %do.body67, label %if.end37.cleanup_crit_edge, !prof !105

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body48:                                        ; preds = %if.end8
  br i1 %tobool50.not, label %do.body48.cleanup_crit_edge, label %do.end60, !prof !104

do.body48.cleanup_crit_edge:                      ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end60:                                         ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %call9 to i32
  %call63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %54) #10
  br label %cleanup

do.body67:                                        ; preds = %if.end37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %55 = load i32, ptr @nfs_debug, align 4
  %and68 = and i32 %55, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %do.body67.cleanup_crit_edge, label %do.end79, !prof !104

do.body67.cleanup_crit_edge:                      ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end79:                                         ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #9
  %call81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %call38) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end79, %do.body67.cleanup_crit_edge, %do.end60, %do.body48.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args) #7
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mnt_xdr_enc_dirpath(ptr nocapture noundef readnone %req, ptr noundef %xdr, ptr noundef %dirpath) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @strlen(ptr noundef %dirpath) #12
  %add.i = add i32 %call.i, 4
  %call1.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add.i) #7
  %call2.i = tail call ptr @xdr_encode_opaque(ptr noundef %call1.i, ptr noundef %dirpath, i32 noundef %call.i) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mnt_xdr_dec_mountres(ptr nocapture noundef readnone %req, ptr noundef %xdr, ptr nocapture noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #7
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i, !prof !105

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call.i, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %for.inc.4.i [
    i32 0, label %if.end.critedge
    i32 1, label %if.end.i.lor.rhs_crit_edge
    i32 2, label %if.then6.fold.split35.i
    i32 13, label %if.then6.fold.split36.i
    i32 22, label %if.then6.fold.split37.i
  ]

if.end.i.lor.rhs_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs

if.then6.fold.split35.i:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs

if.then6.fold.split36.i:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs

if.then6.fold.split37.i:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs

for.inc.4.i:                                      ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %3 = load i32, ptr @nfs_debug, align 4
  %and.i = and i32 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool10.not.i, label %for.inc.4.i.lor.rhs.thread_crit_edge, label %do.end.i, !prof !104

for.inc.4.i.lor.rhs.thread_crit_edge:             ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.thread

do.end.i:                                         ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #9
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %1) #10
  br label %lor.rhs.thread

lor.rhs.thread:                                   ; preds = %do.end.i, %for.inc.4.i.lor.rhs.thread_crit_edge
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -13, ptr %data, align 4
  br label %cleanup

lor.rhs:                                          ; preds = %if.then6.fold.split37.i, %if.then6.fold.split36.i, %if.then6.fold.split35.i, %if.end.i.lor.rhs_crit_edge
  %i.033.lcssa.i = phi i32 [ 2, %if.then6.fold.split35.i ], [ 3, %if.then6.fold.split36.i ], [ 4, %if.then6.fold.split37.i ], [ %1, %if.end.i.lor.rhs_crit_edge ]
  %errno.i = getelementptr [5 x %struct.anon.165], ptr @mnt_errtbl, i32 0, i32 %i.033.lcssa.i, i32 1
  %5 = ptrtoint ptr %errno.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %errno.i, align 4
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %data, align 4
  br label %cleanup

if.end.critedge:                                  ; preds = %if.end.i
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %data, align 4
  %fh1.i = getelementptr inbounds %struct.mountres, ptr %data, i32 0, i32 1
  %9 = ptrtoint ptr %fh1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fh1.i, align 4
  %call.i9 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 32) #7
  %cmp.i10 = icmp eq ptr %call.i9, null
  br i1 %cmp.i10, label %if.end.critedge.cleanup_crit_edge, label %if.end.i11, !prof !105

if.end.critedge.cleanup_crit_edge:                ; preds = %if.end.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i11:                                       ; preds = %if.end.critedge
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 32, ptr %10, align 2
  %data.i = getelementptr inbounds %struct.nfs_fh, ptr %10, i32 0, i32 1
  %12 = call ptr @memcpy(ptr %data.i, ptr %call.i9, i32 32)
  br label %cleanup

cleanup:                                          ; preds = %if.end.i11, %if.end.critedge.cleanup_crit_edge, %lor.rhs, %lor.rhs.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.rhs ], [ -5, %entry.cleanup_crit_edge ], [ 0, %lor.rhs.thread ], [ 0, %if.end.i11 ], [ -5, %if.end.critedge.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_reserve_space(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_encode_opaque(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_inline_decode(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mnt_xdr_dec_mountres3(ptr nocapture noundef readnone %req, ptr noundef %xdr, ptr nocapture noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #7
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i, !prof !105

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call.i, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %1, label %for.inc.9.i [
    i32 0, label %if.end.critedge
    i32 1, label %if.end.i.lor.rhs_crit_edge
    i32 2, label %if.then6.fold.split35.i
    i32 5, label %if.then6.fold.split36.i
    i32 13, label %if.then6.fold.split37.i
    i32 20, label %if.then6.fold.split38.i
    i32 22, label %if.then6.fold.split39.i
    i32 63, label %if.then6.fold.split40.i
    i32 10004, label %if.then6.fold.split41.i
    i32 10006, label %if.then6.fold.split42.i
  ]

if.end.i.lor.rhs_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs

if.then6.fold.split35.i:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs

if.then6.fold.split36.i:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs

if.then6.fold.split37.i:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs

if.then6.fold.split38.i:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs

if.then6.fold.split39.i:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs

if.then6.fold.split40.i:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs

if.then6.fold.split41.i:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs

if.then6.fold.split42.i:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs

for.inc.9.i:                                      ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %3 = load i32, ptr @nfs_debug, align 4
  %and.i = and i32 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool10.not.i, label %for.inc.9.i.lor.rhs.thread_crit_edge, label %do.end.i, !prof !104

for.inc.9.i.lor.rhs.thread_crit_edge:             ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.thread

do.end.i:                                         ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_pc() #9
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %1) #10
  br label %lor.rhs.thread

lor.rhs.thread:                                   ; preds = %do.end.i, %for.inc.9.i.lor.rhs.thread_crit_edge
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -13, ptr %data, align 4
  br label %cleanup

lor.rhs:                                          ; preds = %if.then6.fold.split42.i, %if.then6.fold.split41.i, %if.then6.fold.split40.i, %if.then6.fold.split39.i, %if.then6.fold.split38.i, %if.then6.fold.split37.i, %if.then6.fold.split36.i, %if.then6.fold.split35.i, %if.end.i.lor.rhs_crit_edge
  %i.033.lcssa.i = phi i32 [ 2, %if.then6.fold.split35.i ], [ 3, %if.then6.fold.split36.i ], [ 4, %if.then6.fold.split37.i ], [ 5, %if.then6.fold.split38.i ], [ 6, %if.then6.fold.split39.i ], [ 7, %if.then6.fold.split40.i ], [ 8, %if.then6.fold.split41.i ], [ 9, %if.then6.fold.split42.i ], [ %1, %if.end.i.lor.rhs_crit_edge ]
  %errno.i = getelementptr [10 x %struct.anon.166], ptr @mnt3_errtbl, i32 0, i32 %i.033.lcssa.i, i32 1
  %5 = ptrtoint ptr %errno.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %errno.i, align 4
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %data, align 4
  br label %cleanup

if.end.critedge:                                  ; preds = %if.end.i
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %data, align 4
  %fh1.i = getelementptr inbounds %struct.mountres, ptr %data, i32 0, i32 1
  %9 = ptrtoint ptr %fh1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fh1.i, align 4
  %call.i24 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #7
  %cmp.i25 = icmp eq ptr %call.i24, null
  br i1 %cmp.i25, label %if.end.critedge.if.then11_crit_edge, label %if.end.i26, !prof !105

if.end.critedge.if.then11_crit_edge:              ; preds = %if.end.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11

if.end.i26:                                       ; preds = %if.end.critedge
  %11 = ptrtoint ptr %call.i24 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %call.i24, align 4
  %13 = add i32 %12, -65
  call void @__sanitizer_cov_trace_const_cmp4(i32 -64, i32 %13)
  %14 = icmp ult i32 %13, -64
  br i1 %14, label %if.end.i26.if.then11_crit_edge, label %if.end7.i

if.end.i26.if.then11_crit_edge:                   ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11

if.end7.i:                                        ; preds = %if.end.i26
  %call8.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %12) #7
  %cmp9.i = icmp eq ptr %call8.i, null
  br i1 %cmp9.i, label %if.end7.i.if.then11_crit_edge, label %if.end13, !prof !105

if.end7.i.if.then11_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11

if.then11:                                        ; preds = %if.end7.i.if.then11_crit_edge, %if.end.i26.if.then11_crit_edge, %if.end.critedge.if.then11_crit_edge
  %15 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -521, ptr %data, align 4
  br label %cleanup

if.end13:                                         ; preds = %if.end7.i
  %conv.i = trunc i32 %12 to i16
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv.i, ptr %10, align 2
  %data.i = getelementptr inbounds %struct.nfs_fh, ptr %10, i32 0, i32 1
  %17 = call ptr @memcpy(ptr %data.i, ptr %call8.i, i32 %12)
  %auth_flavors.i = getelementptr inbounds %struct.mountres, ptr %data, i32 0, i32 3
  %18 = ptrtoint ptr %auth_flavors.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %auth_flavors.i, align 4
  %auth_count.i = getelementptr inbounds %struct.mountres, ptr %data, i32 0, i32 2
  %20 = ptrtoint ptr %auth_count.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %auth_count.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i28 = icmp eq i32 %23, 0
  br i1 %cmp.i28, label %if.end13.cleanup_crit_edge, label %if.end.i30

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i30:                                       ; preds = %if.end13
  %call.i29 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #7
  %cmp1.i = icmp eq ptr %call.i29, null
  br i1 %cmp1.i, label %if.end.i30.cleanup_crit_edge, label %if.end4.i, !prof !105

if.end.i30.cleanup_crit_edge:                     ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i30
  %24 = ptrtoint ptr %call.i29 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %call.i29, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %26 = load i32, ptr @nfs_debug, align 4
  %and.i31 = and i32 %26, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31)
  %tobool6.not.i = icmp eq i32 %and.i31, 0
  br i1 %tobool6.not.i, label %if.end4.i.do.end18.i_crit_edge, label %do.end.i32, !prof !104

if.end4.i.do.end18.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end18.i

do.end.i32:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %25) #10
  br label %do.end18.i

do.end18.i:                                       ; preds = %do.end.i32, %if.end4.i.do.end18.i_crit_edge
  %27 = tail call i32 @llvm.umin.i32(i32 %25, i32 12) #7
  %mul.i = shl nuw nsw i32 %27, 2
  %call22.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %mul.i) #7
  %cmp23.i = icmp eq ptr %call22.i, null
  br i1 %cmp23.i, label %do.end18.i.cleanup_crit_edge, label %if.end31.i, !prof !105

do.end18.i.cleanup_crit_edge:                     ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end31.i:                                       ; preds = %do.end18.i
  %28 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %21, align 4
  %30 = tail call i32 @llvm.umin.i32(i32 %27, i32 %29) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp3578.not.i = icmp eq i32 %30, 0
  br i1 %cmp3578.not.i, label %if.end31.i.for.end.i_crit_edge, label %if.end31.i.for.body.i_crit_edge

if.end31.i.for.body.i_crit_edge:                  ; preds = %if.end31.i
  br label %for.body.i

if.end31.i.for.end.i_crit_edge:                   ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end31.i.for.body.i_crit_edge
  %p.081.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %call22.i, %if.end31.i.for.body.i_crit_edge ]
  %i.079.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end31.i.for.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr i32, ptr %p.081.i, i32 1
  %31 = ptrtoint ptr %p.081.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %p.081.i, align 4
  %arrayidx.i = getelementptr i32, ptr %19, i32 %i.079.i
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %arrayidx.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %34 = load i32, ptr @nfs_debug, align 4
  %and38.i = and i32 %34, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %tobool39.not.i = icmp eq i32 %and38.i, 0
  br i1 %tobool39.not.i, label %for.body.i.for.inc.i_crit_edge, label %do.end49.i, !prof !104

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

do.end49.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call52.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %i.079.i, i32 noundef %32) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end49.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.079.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %30
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end31.i.for.end.i_crit_edge
  %35 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %30, ptr %21, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end.i, %do.end18.i.cleanup_crit_edge, %if.end.i30.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.then11, %lor.rhs, %lor.rhs.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then11 ], [ 0, %lor.rhs ], [ -5, %entry.cleanup_crit_edge ], [ 0, %lor.rhs.thread ], [ 0, %for.end.i ], [ 0, %if.end13.cleanup_crit_edge ], [ -5, %if.end.i30.cleanup_crit_edge ], [ -5, %do.end18.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin }
attributes #12 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !33, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !50, !52, !54, !56, !58, !60, !62, !63, !64, !65, !67, !69, !71, !73, !75, !76, !77, !78, !80, !82, !83, !84, !85, !87, !88, !89, !91}
!llvm.named.register.sp = !{!93}
!llvm.module.flags = !{!94, !95, !96, !97, !98, !99, !100, !101}
!llvm.ident = !{!102}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../fs/nfs/mount_clnt.c", i32 168, i32 12}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/nfs/mount_clnt.c", i32 173, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nfs_mount._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @nfs_mount._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/nfs/mount_clnt.c", i32 201, i32 2}
!11 = !{ptr @nfs_mount._entry.4, !10, !"_entry", i1 false, i1 false}
!12 = !{ptr @nfs_mount._entry_ptr.6, !10, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/nfs/mount_clnt.c", i32 209, i32 3}
!15 = !{ptr @nfs_mount._entry.7, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @nfs_mount._entry_ptr.9, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/nfs/mount_clnt.c", i32 218, i32 2}
!19 = !{ptr @nfs_mount._entry.10, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @nfs_mount._entry_ptr.12, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/nfs/mount_clnt.c", i32 222, i32 2}
!23 = !{ptr @nfs_mount._entry.13, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @nfs_mount._entry_ptr.15, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/nfs/mount_clnt.c", i32 226, i32 2}
!27 = !{ptr @nfs_mount._entry.16, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @nfs_mount._entry_ptr.18, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @nfs_umount.nfs_umnt_timeout, !30, !"nfs_umnt_timeout", i1 false, i1 false}
!30 = !{!"../fs/nfs/mount_clnt.c", i32 240, i32 34}
!31 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!32 = !{!"../fs/nfs/mount_clnt.c", i32 256, i32 12}
!33 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/nfs/mount_clnt.c", i32 274, i32 2}
!35 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @nfs_umount._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @nfs_umount._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/nfs/mount_clnt.c", i32 291, i32 2}
!40 = !{ptr @nfs_umount._entry.21, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @nfs_umount._entry_ptr.23, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.25, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/nfs/mount_clnt.c", i32 296, i32 2}
!44 = !{ptr @nfs_umount._entry.24, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @nfs_umount._entry_ptr.26, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.27, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/nfs/mount_clnt.c", i32 539, i32 11}
!48 = !{ptr @mnt_program, !49, !"mnt_program", i1 false, i1 false}
!49 = !{!"../fs/nfs/mount_clnt.c", i32 538, i32 33}
!50 = !{ptr @mnt_version, !51, !"mnt_version", i1 false, i1 false}
!51 = !{!"../fs/nfs/mount_clnt.c", i32 529, i32 34}
!52 = !{ptr @mnt_version1, !53, !"mnt_version1", i1 false, i1 false}
!53 = !{!"../fs/nfs/mount_clnt.c", i32 514, i32 33}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/nfs/mount_clnt.c", i32 483, i32 14}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/nfs/mount_clnt.c", i32 490, i32 14}
!58 = !{ptr @mnt_procedures, !59, !"mnt_procedures", i1 false, i1 false}
!59 = !{!"../fs/nfs/mount_clnt.c", i32 475, i32 34}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/nfs/mount_clnt.c", i32 345, i32 2}
!62 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @decode_status._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @decode_status._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @mnt_errtbl, !66, !"mnt_errtbl", i1 false, i1 false}
!66 = !{!"../fs/nfs/mount_clnt.c", i32 84, i32 3}
!67 = !{ptr @mnt_counts, !68, !"mnt_counts", i1 false, i1 false}
!68 = !{!"../fs/nfs/mount_clnt.c", i32 513, i32 21}
!69 = !{ptr @mnt_version3, !70, !"mnt_version3", i1 false, i1 false}
!70 = !{!"../fs/nfs/mount_clnt.c", i32 522, i32 33}
!71 = !{ptr @mnt3_procedures, !72, !"mnt3_procedures", i1 false, i1 false}
!72 = !{!"../fs/nfs/mount_clnt.c", i32 494, i32 34}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/nfs/mount_clnt.c", i32 395, i32 2}
!75 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @decode_fhs_status._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @decode_fhs_status._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @mnt3_errtbl, !79, !"mnt3_errtbl", i1 false, i1 false}
!79 = !{!"../fs/nfs/mount_clnt.c", i32 111, i32 3}
!80 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/nfs/mount_clnt.c", i32 437, i32 2}
!82 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @decode_auth_flavors._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @decode_auth_flavors._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/nfs/mount_clnt.c", i32 450, i32 3}
!87 = !{ptr @decode_auth_flavors._entry.36, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @decode_auth_flavors._entry_ptr.38, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @mnt3_counts, !90, !"mnt3_counts", i1 false, i1 false}
!90 = !{!"../fs/nfs/mount_clnt.c", i32 521, i32 21}
!91 = !{ptr @mnt_stats, !92, !"mnt_stats", i1 false, i1 false}
!92 = !{!"../fs/nfs/mount_clnt.c", i32 536, i32 24}
!93 = !{!"sp"}
!94 = !{i32 1, !"wchar_size", i32 2}
!95 = !{i32 1, !"min_enum_size", i32 4}
!96 = !{i32 8, !"branch-target-enforcement", i32 0}
!97 = !{i32 8, !"sign-return-address", i32 0}
!98 = !{i32 8, !"sign-return-address-all", i32 0}
!99 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!100 = !{i32 7, !"uwtable", i32 1}
!101 = !{i32 7, !"frame-pointer", i32 2}
!102 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!103 = !{!"auto-init"}
!104 = !{!"branch_weights", i32 2000, i32 1}
!105 = !{!"branch_weights", i32 1, i32 2000}
