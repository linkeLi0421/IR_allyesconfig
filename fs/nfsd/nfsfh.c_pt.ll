; ModuleID = '/llk/IR_all_yes/fs/nfsd/nfsfh.c_pt.bc'
source_filename = "../fs/nfsd/nfsfh.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.131 }
%struct.atomic_t = type { i32 }
%union.anon.131 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.35 }
%union.anon.35 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.37, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.nfsd_stats = type { [82 x %struct.percpu_counter], %struct.atomic_t }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.knfsd_fh = type { i32, %union.anon.157 }
%union.anon.157 = type { %struct.anon.158, [124 x i8] }
%struct.anon.158 = type { i8, i8, i8, i8, [0 x i32] }
%struct.svc_fh = type { %struct.knfsd_fh, i32, ptr, ptr, i8, i8, i8, i8, i32, i8, i8, i64, %struct.timespec64, %struct.timespec64, i64, %struct.kstat, i64 }
%struct.timespec64 = type { i64, i32 }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.svc_rqst = type { %struct.list_head, %struct.callback_head, ptr, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, ptr, ptr, %struct.svc_cred, ptr, ptr, i32, %struct.xdr_buf, %struct.xdr_stream, %struct.xdr_stream, ptr, %struct.xdr_buf, [260 x ptr], ptr, ptr, ptr, %struct.pagevec, [259 x %struct.kvec], [259 x %struct.bio_vec], i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i64, %struct.cache_req, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon.134 }
%union.anon.134 = type { ptr, [124 x i8] }
%struct.svc_cred = type { %struct.kuid_t, %struct.kgid_t, ptr, i32, ptr, ptr, ptr, ptr }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.kvec = type { ptr, i32 }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.pagevec = type { i8, i8, [15 x ptr] }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.cache_req = type { ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.svc_export = type { %struct.cache_head, ptr, i32, %struct.path, %struct.kuid_t, %struct.kgid_t, i32, ptr, %struct.nfsd4_fs_locations, i32, [8 x %struct.exp_flavor_info], i32, ptr, ptr, %struct.callback_head, %struct.export_stats }
%struct.cache_head = type { %struct.hlist_node, i64, i64, %struct.kref, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.path = type { ptr, ptr }
%struct.nfsd4_fs_locations = type { i32, ptr, i32 }
%struct.exp_flavor_info = type { i32, i32 }
%struct.export_stats = type { i64, [3 x %struct.percpu_counter] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.39 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.39 = type { %struct.callback_head }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.123, %struct.list_head, %struct.list_head, %union.anon.124 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.16, ptr }
%union.anon.16 = type { i64 }
%struct.lockref = type { %union.anon.18 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { %struct.spinlock, i32 }
%union.anon.123 = type { %struct.list_head }
%union.anon.124 = type { %struct.hlist_node }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.export_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.138, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.139, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.140, ptr, %struct.address_space, %struct.list_head, %union.anon.141, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.138 = type { i32 }
%union.anon.139 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.140 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.141 = type { ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.cache_detail = type { ptr, i32, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, %struct.list_head, i64, i32, %struct.list_head, %struct.atomic_t, i64, i64, %union.anon.159, ptr }
%union.anon.159 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@nfsd_debug = external dso_local local_unnamed_addr global i32, align 4
@fh_verify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nfsd: fh_verify(%s)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fh_verify\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/nfsd/nfsfh.c\00", [16 x i8] zeroinitializer }, align 32
@fh_verify._entry_ptr = internal global ptr @fh_verify._entry, section ".printk_index", align 4
@fh_verify._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"fh_verify: %pd2 permission failure, acc=%x, error=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@fh_verify._entry_ptr.5 = internal global ptr @fh_verify._entry.3, section ".printk_index", align 4
@fh_compose._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 537, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"nfsd: fh_compose(exp %02x:%02x/%ld %pd2, ino=%ld)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fh_compose\00", [21 x i8] zeroinitializer }, align 32
@fh_compose._entry_ptr = internal global ptr @fh_compose._entry, section ".printk_index", align 4
@fh_compose._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 553, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013fh_compose: fh %pd2 not initialized!\0A\00", [56 x i8] zeroinitializer }, align 32
@fh_compose._entry_ptr.10 = internal global ptr @fh_compose._entry.8, section ".printk_index", align 4
@fh_compose._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.2, i32 558, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013fh_compose: called with maxsize %d! %pd2\0A\00", [52 x i8] zeroinitializer }, align 32
@fh_compose._entry_ptr.13 = internal global ptr @fh_compose._entry.11, section ".printk_index", align 4
@fh_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 606, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013fh_update: fh not verified!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fh_update\00", [22 x i8] zeroinitializer }, align 32
@fh_update._entry_ptr = internal global ptr @fh_update._entry, section ".printk_index", align 4
@fh_update._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 610, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013fh_update: %pd2 still negative!\0A\00", [61 x i8] zeroinitializer }, align 32
@fh_update._entry_ptr.18 = internal global ptr @fh_update._entry.16, section ".printk_index", align 4
@fh_fill_post_attrs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 663, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"nfsd: inode locked twice during operation.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fh_fill_post_attrs\00", [45 x i8] zeroinitializer }, align 32
@fh_fill_post_attrs._entry_ptr = internal global ptr @fh_fill_post_attrs._entry, section ".printk_index", align 4
@SVCFH_fmt.buf = internal global { [197 x i8], [59 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bad-fh\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%d: %*ph\00", [23 x i8] zeroinitializer }, align 32
@nfsd_set_fh_dentry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"nfsd: find_fh_dentry returned a DISCONNECTED directory: %pd2\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nfsd_set_fh_dentry\00", [45 x i8] zeroinitializer }, align 32
@nfsd_set_fh_dentry._entry_ptr = internal global ptr @nfsd_set_fh_dentry._entry, section ".printk_index", align 4
@__tracepoint_nfsd_set_fh_dentry_badexport = external dso_local global %struct.tracepoint, align 4
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/nfsd/trace.h\00", [16 x i8] zeroinitializer }, align 32
@trace_nfsd_set_fh_dentry_badexport.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.26 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/cred.h\00", [43 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@nfsd_acceptable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 53, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"nfsd_acceptable failed at %p %pd\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nfsd_acceptable\00", [16 x i8] zeroinitializer }, align 32
@nfsd_acceptable._entry_ptr = internal global ptr @nfsd_acceptable._entry, section ".printk_index", align 4
@__tracepoint_nfsd_set_fh_dentry_badhandle = external dso_local global %struct.tracepoint, align 4
@trace_nfsd_set_fh_dentry_badhandle.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nfsd_setuser_and_check_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"nfsd: request from insecure port %s!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"nfsd_setuser_and_check_port\00", [36 x i8] zeroinitializer }, align 32
@nfsd_setuser_and_check_port._entry_ptr = internal global ptr @nfsd_setuser_and_check_port._entry, section ".printk_index", align 4
@nfsd_mode_check.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nfsdstats = external dso_local global %struct.nfsd_stats, align 8
@percpu_counter_batch = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967284]
@__sancov_gen_cov_switch_values.34 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 202]
@__sancov_gen_cov_switch_values.36 = internal global [10 x i64] [i64 8, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.37 = internal global [10 x i64] [i64 8, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.38 = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.39 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 334, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 396, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 533, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 552, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 556, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 606, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 609, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 663, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 707, i32 14 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 710, i32 10 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 711, i32 15 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 274, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant [19 x i8] c"../fs/nfsd/trace.h\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 212, i32 1 }
@___asan_gen_.128 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 108, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant [24 x i8] c"../include/linux/cred.h\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 286, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 53, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.149 = private constant [19 x i8] c"../fs/nfsd/nfsfh.c\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 110, i32 3 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @fh_compose._entry, ptr @fh_compose._entry.11, ptr @fh_compose._entry.8, ptr @fh_compose._entry_ptr, ptr @fh_compose._entry_ptr.10, ptr @fh_compose._entry_ptr.13, ptr @fh_fill_post_attrs._entry, ptr @fh_fill_post_attrs._entry_ptr, ptr @fh_update._entry, ptr @fh_update._entry.16, ptr @fh_update._entry_ptr, ptr @fh_update._entry_ptr.18, ptr @fh_verify._entry, ptr @fh_verify._entry.3, ptr @fh_verify._entry_ptr, ptr @fh_verify._entry_ptr.5, ptr @nfsd_acceptable._entry, ptr @nfsd_acceptable._entry_ptr, ptr @nfsd_set_fh_dentry._entry, ptr @nfsd_set_fh_dentry._entry_ptr, ptr @nfsd_setuser_and_check_port._entry, ptr @nfsd_setuser_and_check_port._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @SVCFH_fmt.buf, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fh_verify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fh_verify._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fh_compose._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fh_compose._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fh_compose._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fh_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fh_update._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fh_fill_post_attrs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SVCFH_fmt.buf to i32), i32 197, i32 256, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_set_fh_dentry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_acceptable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_setuser_and_check_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fh_verify(ptr noundef %rqstp, ptr noundef %fhp, i16 noundef zeroext %type, i32 noundef %access) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %0 = load i32, ptr @nfsd_debug, align 4
  %and = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4

do.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %fhp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fhp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %2)
  %cmp2.i = icmp ugt i32 %2, 64
  br i1 %cmp2.i, label %do.end.SVCFH_fmt.exit_crit_edge, label %if.end.i

do.end.SVCFH_fmt.exit_crit_edge:                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %SVCFH_fmt.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %3 = getelementptr inbounds %struct.knfsd_fh, ptr %fhp, i32 0, i32 1
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @SVCFH_fmt.buf, ptr noundef nonnull @.str.22, i32 noundef %2, i32 noundef %2, ptr noundef %3) #10
  br label %SVCFH_fmt.exit

SVCFH_fmt.exit:                                   ; preds = %if.end.i, %do.end.SVCFH_fmt.exit_crit_edge
  %retval.0.i = phi ptr [ @SVCFH_fmt.buf, %if.end.i ], [ @.str.21, %do.end.SVCFH_fmt.exit_crit_edge ]
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull %retval.0.i) #13
  br label %do.end4

do.end4:                                          ; preds = %SVCFH_fmt.exit, %entry.do.end4_crit_edge
  %fh_dentry = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 2
  %4 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fh_dentry, align 8
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %if.then6, label %do.end4.if.end11_crit_edge

do.end4.if.end11_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then6:                                         ; preds = %do.end4
  %6 = ptrtoint ptr %fhp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fhp, align 4
  %div220.i = lshr i32 %7, 2
  %rq_vers.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 29
  %8 = ptrtoint ptr %rq_vers.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rq_vers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp.i = icmp ugt i32 %9, 2
  %spec.store.select.i = select i1 %cmp.i, i32 10001, i32 70
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp2.i89 = icmp eq i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp4.i = icmp eq i32 %7, 0
  %or.cond.i = select i1 %cmp2.i89, i1 %cmp4.i, i1 false
  br i1 %or.cond.i, label %if.then6.if.end58_crit_edge, label %if.end6.i

if.then6.if.end58_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.end6.i:                                        ; preds = %if.then6
  %10 = getelementptr inbounds %struct.knfsd_fh, ptr %fhp, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp7.not.i = icmp ne i8 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp11.i = icmp ult i32 %7, 4
  %or.cond227.i = select i1 %cmp7.not.i, i1 true, i1 %cmp11.i
  br i1 %or.cond227.i, label %if.end6.i.out_crit_edge, label %if.end14.i

if.end6.i.out_crit_edge:                          ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end14.i:                                       ; preds = %if.end6.i
  %fh_auth_type.i = getelementptr inbounds %struct.knfsd_fh, ptr %fhp, i32 0, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %fh_auth_type.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %fh_auth_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp16.not.i = icmp eq i8 %14, 0
  br i1 %cmp16.not.i, label %if.end19.i, label %if.end14.i.out_crit_edge

if.end14.i.out_crit_edge:                         ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end19.i:                                       ; preds = %if.end14.i
  %fh_fsid_type.i = getelementptr inbounds %struct.knfsd_fh, ptr %fhp, i32 0, i32 1, i32 0, i32 2
  %15 = ptrtoint ptr %fh_fsid_type.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %fh_fsid_type.i, align 2
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i8 %16, label %if.end19.i.out_crit_edge [
    i8 7, label %sw.bb7.i.i
    i8 1, label %if.end19.i.if.end43.i_crit_edge
    i8 2, label %if.then30.i
    i8 6, label %sw.bb6.i.i
    i8 0, label %if.end19.i.if.end43.fold.split.i_crit_edge
    i8 3, label %if.end19.i.if.end43.fold.split.i_crit_edge140
    i8 4, label %if.end19.i.if.end43.fold.split.i_crit_edge141
    i8 5, label %if.end19.i.if.end43.fold.split.i_crit_edge142
  ]

if.end19.i.if.end43.fold.split.i_crit_edge142:    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43.fold.split.i

if.end19.i.if.end43.fold.split.i_crit_edge141:    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43.fold.split.i

if.end19.i.if.end43.fold.split.i_crit_edge140:    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43.fold.split.i

if.end19.i.if.end43.fold.split.i_crit_edge:       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43.fold.split.i

if.end19.i.if.end43.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43.i

if.end19.i.out_crit_edge:                         ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

sw.bb6.i.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43.i

sw.bb7.i.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43.i

if.then30.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %fh_fsid_type.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 3, ptr %fh_fsid_type.i, align 2
  %fh_fsid.i = getelementptr inbounds %struct.knfsd_fh, ptr %fhp, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %fh_fsid.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fh_fsid.i, align 4
  %shl.i = shl i32 %20, 20
  %arrayidx35.i = getelementptr %struct.knfsd_fh, ptr %fhp, i32 0, i32 1, i32 1, i32 4
  %21 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx35.i, align 4
  %or.i = or i32 %shl.i, %22
  %and1.i.i = and i32 %22, 255
  %23 = lshr i32 %or.i, 12
  %shl.i.i = and i32 %23, 1048320
  %and2.i.i = shl i32 %22, 12
  %shl3.i.i = and i32 %and2.i.i, -1048576
  %or.i.i = or i32 %shl3.i.i, %and1.i.i
  %or4.i.i = or i32 %or.i.i, %shl.i.i
  store i32 %or4.i.i, ptr %fh_fsid.i, align 4
  %arrayidx40.i = getelementptr %struct.knfsd_fh, ptr %fhp, i32 0, i32 1, i32 1, i32 8
  %24 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx40.i, align 4
  store i32 %25, ptr %arrayidx35.i, align 4
  br label %if.end43.i

if.end43.fold.split.i:                            ; preds = %if.end19.i.if.end43.fold.split.i_crit_edge, %if.end19.i.if.end43.fold.split.i_crit_edge140, %if.end19.i.if.end43.fold.split.i_crit_edge141, %if.end19.i.if.end43.fold.split.i_crit_edge142
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.end43.fold.split.i, %if.then30.i, %sw.bb7.i.i, %sw.bb6.i.i, %if.end19.i.if.end43.i_crit_edge
  %len.0.in.i = phi i32 [ 2, %if.then30.i ], [ 6, %sw.bb7.i.i ], [ 4, %sw.bb6.i.i ], [ 1, %if.end19.i.if.end43.i_crit_edge ], [ 2, %if.end43.fold.split.i ]
  %26 = xor i32 %len.0.in.i, -1
  %sub.i = add nsw i32 %div220.i, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp44.i = icmp slt i32 %sub.i, 0
  br i1 %cmp44.i, label %if.end43.i.out_crit_edge, label %if.end47.i

if.end43.i.out_crit_edge:                         ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end47.i:                                       ; preds = %if.end43.i
  %27 = ptrtoint ptr %fh_fsid_type.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %fh_fsid_type.i, align 2
  %conv49.i = zext i8 %28 to i32
  %fh_fsid50.i = getelementptr inbounds %struct.knfsd_fh, ptr %fhp, i32 0, i32 1, i32 1
  %call51.i = tail call ptr @rqst_exp_find(ptr noundef %rqstp, i32 noundef %conv49.i, ptr noundef %fh_fsid50.i) #10
  %add.ptr.i = getelementptr i32, ptr %fh_fsid50.i, i32 %len.0.in.i
  %cmp.i.i = icmp ugt ptr %call51.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then55.i, label %if.end64.i

if.then55.i:                                      ; preds = %if.end47.i
  %29 = ptrtoint ptr %call51.i to i32
  tail call fastcc void @trace_nfsd_set_fh_dentry_badexport(ptr noundef %rqstp, ptr noundef %fhp, i32 noundef %29) #10
  %cmp58.i = icmp eq ptr %call51.i, inttoptr (i32 -2 to ptr)
  br i1 %cmp58.i, label %if.then57.thread, label %if.end61.i

if.then57.thread:                                 ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %30 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef getelementptr inbounds (%struct.nfsd_stats, ptr @nfsdstats, i32 0, i32 0, i32 3), i64 noundef 1, i32 noundef %30) #10
  br label %if.end58

if.end61.i:                                       ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #12
  %call63.i = tail call i32 @nfserrno(i32 noundef %29) #10
  br label %nfsd_set_fh_dentry.exit

if.end64.i:                                       ; preds = %if.end47.i
  %ex_flags.i = getelementptr inbounds %struct.svc_export, ptr %call51.i, i32 0, i32 2
  %31 = ptrtoint ptr %ex_flags.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ex_flags.i, align 4
  %and.i = and i32 %32, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then65.i

if.then65.i:                                      ; preds = %if.end64.i
  %call66.i = tail call ptr @prepare_creds() #10
  %tobool67.not.i = icmp eq ptr %call66.i, null
  br i1 %tobool67.not.i, label %if.then65.i.out.sink.split.i_crit_edge, label %cleanup.thread.i

if.then65.i.out.sink.split.i_crit_edge:           ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.sink.split.i

cleanup.thread.i:                                 ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #12
  %cap_effective.i = getelementptr inbounds %struct.cred, ptr %call66.i, i32 0, i32 15
  %cap_permitted.i = getelementptr inbounds %struct.cred, ptr %call66.i, i32 0, i32 14
  %33 = ptrtoint ptr %cap_effective.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %.unpack.i = load i32, ptr %cap_effective.i, align 4
  %.elt221.i = getelementptr inbounds %struct.cred, ptr %call66.i, i32 0, i32 15, i32 0, i32 1
  %34 = ptrtoint ptr %.elt221.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %.unpack222.i = load i32, ptr %.elt221.i, align 4
  %35 = ptrtoint ptr %cap_permitted.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %.unpack223.i = load i32, ptr %cap_permitted.i, align 4
  %.elt224.i = getelementptr inbounds %struct.cred, ptr %call66.i, i32 0, i32 14, i32 0, i32 1
  %36 = ptrtoint ptr %.elt224.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %.unpack225.i = load i32, ptr %.elt224.i, align 4
  %and.i.i.i = and i32 %.unpack223.i, 150994975
  %and.1.i.i.i = and i32 %.unpack225.i, 1
  %or.i.i.i = or i32 %and.i.i.i, %.unpack.i
  %or.1.i.i.i = or i32 %and.1.i.i.i, %.unpack222.i
  %tmp.sroa.4.0.insert.ext.i = zext i32 %or.1.i.i.i to i64
  %tmp.sroa.0.0.insert.ext.i = zext i32 %or.i.i.i to i64
  %tmp.sroa.0.0.insert.shift.i = shl nuw i64 %tmp.sroa.0.0.insert.ext.i, 32
  %tmp.sroa.0.0.insert.insert.i = or i64 %tmp.sroa.0.0.insert.shift.i, %tmp.sroa.4.0.insert.ext.i
  store i64 %tmp.sroa.0.0.insert.insert.i, ptr %cap_effective.i, align 4
  %call73.i = tail call ptr @override_creds(ptr noundef nonnull %call66.i) #10
  tail call fastcc void @put_cred(ptr noundef %call73.i) #10
  tail call fastcc void @put_cred(ptr noundef nonnull %call66.i) #10
  br label %if.end78.i

if.else.i:                                        ; preds = %if.end64.i
  %call74.i = tail call fastcc i32 @nfsd_setuser_and_check_port(ptr noundef %rqstp, ptr noundef %call51.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.i)
  %tobool75.not.i = icmp eq i32 %call74.i, 0
  br i1 %tobool75.not.i, label %if.else.i.if.end78.i_crit_edge, label %if.else.i.out.i_crit_edge

if.else.i.out.i_crit_edge:                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.else.i.if.end78.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78.i

if.end78.i:                                       ; preds = %if.else.i.if.end78.i_crit_edge, %cleanup.thread.i
  %37 = ptrtoint ptr %rq_vers.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rq_vers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %38)
  %cmp80.i = icmp ugt i32 %38, 2
  %spec.store.select149.i = select i1 %cmp80.i, i32 10001, i32 70
  %fh_fileid_type.i = getelementptr inbounds %struct.knfsd_fh, ptr %fhp, i32 0, i32 1, i32 0, i32 3
  %39 = ptrtoint ptr %fh_fileid_type.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %fh_fileid_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp85.i = icmp eq i8 %40, 0
  br i1 %cmp85.i, label %if.then87.i, label %if.else90.i

if.then87.i:                                      ; preds = %if.end78.i
  %dentry88.i = getelementptr inbounds %struct.svc_export, ptr %call51.i, i32 0, i32 3, i32 1
  %41 = ptrtoint ptr %dentry88.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dentry88.i, align 4
  %tobool.not.i.i = icmp eq ptr %42, null
  br i1 %tobool.not.i.i, label %if.then87.i.out.i_crit_edge, label %if.then.i.i

if.then87.i.out.i_crit_edge:                      ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.then.i.i:                                      ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #12
  %d_lockref.i.i = getelementptr inbounds %struct.dentry, ptr %42, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i.i) #10
  br label %if.end104.i

if.else90.i:                                      ; preds = %if.end78.i
  %conv84.i = zext i8 %40 to i32
  %ex_path91.i = getelementptr inbounds %struct.svc_export, ptr %call51.i, i32 0, i32 3
  %43 = ptrtoint ptr %ex_path91.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ex_path91.i, align 8
  %call92.i = tail call ptr @exportfs_decode_fh_raw(ptr noundef %44, ptr noundef %add.ptr.i, i32 noundef %sub.i, i32 noundef %conv84.i, ptr noundef nonnull @nfsd_acceptable, ptr noundef %call51.i) #10
  %tobool.not.i229.i = icmp eq ptr %call92.i, null
  %cmp.i230.i = icmp ugt ptr %call92.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i229.i, %cmp.i230.i
  br i1 %spec.select.i.i, label %if.then94.i, label %if.else90.i.if.end104.i_crit_edge

if.else90.i.if.end104.i_crit_edge:                ; preds = %if.else90.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end104.i

if.then94.i:                                      ; preds = %if.else90.i
  %45 = ptrtoint ptr %call92.i to i32
  %spec.select.i = select i1 %tobool.not.i229.i, i32 -116, i32 %45
  tail call fastcc void @trace_nfsd_set_fh_dentry_badhandle(ptr noundef %rqstp, ptr noundef %fhp, i32 noundef %spec.select.i) #10
  %46 = zext i32 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %45, label %if.then94.i.if.then110.i_crit_edge [
    i32 -110, label %if.then94.i.if.end104.i_crit_edge
    i32 -12, label %if.then94.i.if.end104.i_crit_edge143
  ]

if.then94.i.if.end104.i_crit_edge143:             ; preds = %if.then94.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end104.i

if.then94.i.if.end104.i_crit_edge:                ; preds = %if.then94.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end104.i

if.then94.i.if.then110.i_crit_edge:               ; preds = %if.then94.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then110.i

if.end104.i:                                      ; preds = %if.then94.i.if.end104.i_crit_edge, %if.then94.i.if.end104.i_crit_edge143, %if.else90.i.if.end104.i_crit_edge, %if.then.i.i
  %dentry.0240.i = phi ptr [ %42, %if.then.i.i ], [ %call92.i, %if.else90.i.if.end104.i_crit_edge ], [ %call92.i, %if.then94.i.if.end104.i_crit_edge ], [ %call92.i, %if.then94.i.if.end104.i_crit_edge143 ]
  %cmp.i231.i = icmp ugt ptr %dentry.0240.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i231.i, label %if.then106.i, label %if.end114.i

if.then106.i:                                     ; preds = %if.end104.i
  %cmp108.not.i = icmp eq ptr %dentry.0240.i, inttoptr (i32 -22 to ptr)
  br i1 %cmp108.not.i, label %if.then106.i.out.i_crit_edge, label %if.then106.i.if.then110.i_crit_edge

if.then106.i.if.then110.i_crit_edge:              ; preds = %if.then106.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then110.i

if.then106.i.out.i_crit_edge:                     ; preds = %if.then106.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.then110.i:                                     ; preds = %if.then106.i.if.then110.i_crit_edge, %if.then94.i.if.then110.i_crit_edge
  %dentry.0240246258.i = phi ptr [ %dentry.0240.i, %if.then106.i.if.then110.i_crit_edge ], [ inttoptr (i32 -116 to ptr), %if.then94.i.if.then110.i_crit_edge ]
  %47 = ptrtoint ptr %dentry.0240246258.i to i32
  br label %out.sink.split.i

if.end114.i:                                      ; preds = %if.end104.i
  %48 = ptrtoint ptr %dentry.0240.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dentry.0240.i, align 8
  %50 = and i32 %49, 6291488
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097184, i32 %50)
  %.not.i = icmp eq i32 %50, 2097184
  br i1 %.not.i, label %do.end.i, label %if.end114.i.if.end123.i_crit_edge

if.end114.i.if.end123.i_crit_edge:                ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end123.i

do.end.i:                                         ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #12
  %call122.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull %dentry.0240.i) #13
  br label %if.end123.i

if.end123.i:                                      ; preds = %do.end.i, %if.end114.i.if.end123.i_crit_edge
  %51 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %dentry.0240.i, ptr %fh_dentry, align 8
  %fh_export.i = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 3
  %52 = ptrtoint ptr %fh_export.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call51.i, ptr %fh_export.i, align 4
  %53 = ptrtoint ptr %rq_vers.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rq_vers.i, align 4
  %55 = zext i32 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %54, label %if.end123.i.if.end11_crit_edge [
    i32 4, label %sw.bb125.i
    i32 3, label %sw.bb130.i
    i32 2, label %sw.bb138.i
  ]

if.end123.i.if.end11_crit_edge:                   ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

sw.bb125.i:                                       ; preds = %if.end123.i
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %dentry.0240.i, i32 0, i32 9
  %56 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %d_sb.i, align 4
  %s_export_op.i = getelementptr inbounds %struct.super_block, ptr %57, i32 0, i32 9
  %58 = ptrtoint ptr %s_export_op.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %s_export_op.i, align 16
  %flags.i = getelementptr inbounds %struct.export_operations, ptr %59, i32 0, i32 10
  %60 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %flags.i, align 4
  %and126.i = and i32 %61, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and126.i)
  %tobool127.not.i = icmp eq i32 %and126.i, 0
  br i1 %tobool127.not.i, label %sw.bb125.i.if.end11_crit_edge, label %if.then128.i

sw.bb125.i.if.end11_crit_edge:                    ; preds = %sw.bb125.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then128.i:                                     ; preds = %sw.bb125.i
  call void @__sanitizer_cov_trace_pc() #12
  %fh_no_atomic_attr.i = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 7
  %62 = ptrtoint ptr %fh_no_atomic_attr.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %fh_no_atomic_attr.i, align 1
  br label %if.end11

sw.bb130.i:                                       ; preds = %if.end123.i
  %d_sb131.i = getelementptr inbounds %struct.dentry, ptr %dentry.0240.i, i32 0, i32 9
  %63 = ptrtoint ptr %d_sb131.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %d_sb131.i, align 4
  %s_export_op132.i = getelementptr inbounds %struct.super_block, ptr %64, i32 0, i32 9
  %65 = ptrtoint ptr %s_export_op132.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %s_export_op132.i, align 16
  %flags133.i = getelementptr inbounds %struct.export_operations, ptr %66, i32 0, i32 10
  %67 = ptrtoint ptr %flags133.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %flags133.i, align 4
  %and134.i = and i32 %68, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and134.i)
  %tobool135.not.i = icmp eq i32 %and134.i, 0
  br i1 %tobool135.not.i, label %sw.bb130.i.if.end11_crit_edge, label %if.then136.i

sw.bb130.i.if.end11_crit_edge:                    ; preds = %sw.bb130.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then136.i:                                     ; preds = %sw.bb130.i
  call void @__sanitizer_cov_trace_pc() #12
  %fh_no_wcc.i = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 6
  %69 = ptrtoint ptr %fh_no_wcc.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 1, ptr %fh_no_wcc.i, align 2
  br label %if.end11

sw.bb138.i:                                       ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #12
  %fh_no_wcc139.i = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 6
  %70 = ptrtoint ptr %fh_no_wcc139.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 1, ptr %fh_no_wcc139.i, align 2
  br label %if.end11

out.sink.split.i:                                 ; preds = %if.then110.i, %if.then65.i.out.sink.split.i_crit_edge
  %.sink.i = phi i32 [ %47, %if.then110.i ], [ -12, %if.then65.i.out.sink.split.i_crit_edge ]
  %call69.i = tail call i32 @nfserrno(i32 noundef %.sink.i) #10
  br label %out.i

out.i:                                            ; preds = %out.sink.split.i, %if.then106.i.out.i_crit_edge, %if.then87.i.out.i_crit_edge, %if.else.i.out.i_crit_edge
  %error.1.i = phi i32 [ %spec.store.select149.i, %if.then106.i.out.i_crit_edge ], [ %call74.i, %if.else.i.out.i_crit_edge ], [ %spec.store.select149.i, %if.then87.i.out.i_crit_edge ], [ %call69.i, %out.sink.split.i ]
  tail call fastcc void @exp_put(ptr noundef %call51.i) #10
  br label %nfsd_set_fh_dentry.exit

nfsd_set_fh_dentry.exit:                          ; preds = %out.i, %if.end61.i
  %retval.0.i90 = phi i32 [ %call63.i, %if.end61.i ], [ %error.1.i, %out.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i90)
  %tobool8.not = icmp eq i32 %retval.0.i90, 0
  br i1 %tobool8.not, label %nfsd_set_fh_dentry.exit.if.end11_crit_edge, label %nfsd_set_fh_dentry.exit.out_crit_edge

nfsd_set_fh_dentry.exit.out_crit_edge:            ; preds = %nfsd_set_fh_dentry.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

nfsd_set_fh_dentry.exit.if.end11_crit_edge:       ; preds = %nfsd_set_fh_dentry.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.end11:                                         ; preds = %nfsd_set_fh_dentry.exit.if.end11_crit_edge, %sw.bb138.i, %if.then136.i, %sw.bb130.i.if.end11_crit_edge, %if.then128.i, %sw.bb125.i.if.end11_crit_edge, %if.end123.i.if.end11_crit_edge, %do.end4.if.end11_crit_edge
  %71 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %fh_dentry, align 8
  %fh_export = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 3
  %73 = ptrtoint ptr %fh_export to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %fh_export, align 4
  %ex_flags.i91 = getelementptr inbounds %struct.svc_export, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %ex_flags.i91 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %ex_flags.i91, align 4
  %and.i92 = and i32 %76, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i92)
  %tobool.not.i93 = icmp eq i32 %and.i92, 0
  br i1 %tobool.not.i93, label %if.end11.if.end16_crit_edge, label %if.end.i95

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.end.i95:                                       ; preds = %if.end11
  %rq_prog.i.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 28
  %77 = ptrtoint ptr %rq_prog.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %rq_prog.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 100003, i32 %78)
  %cmp.i.i94 = icmp eq i32 %78, 100003
  br i1 %cmp.i.i94, label %nfsd_v4client.exit.i, label %if.end.i95.if.then57_crit_edge

if.end.i95.if.then57_crit_edge:                   ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then57

nfsd_v4client.exit.i:                             ; preds = %if.end.i95
  %rq_vers.i.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 29
  %79 = ptrtoint ptr %rq_vers.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %rq_vers.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %80)
  %cmp1.i.not.i = icmp eq i32 %80, 4
  br i1 %cmp1.i.not.i, label %if.end3.i, label %nfsd_v4client.exit.i.if.then57_crit_edge

nfsd_v4client.exit.i.if.then57_crit_edge:         ; preds = %nfsd_v4client.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then57

if.end3.i:                                        ; preds = %nfsd_v4client.exit.i
  %81 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %72, align 8
  %83 = and i32 %82, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %83)
  %84 = icmp eq i32 %83, 2097152
  %and.i.i.i96 = and i32 %82, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 6291456, i32 %and.i.i.i96)
  %cmp.i23.not.i = icmp eq i32 %and.i.i.i96, 6291456
  %or.cond.i97 = or i1 %84, %cmp.i23.not.i
  br i1 %or.cond.i97, label %if.end10.i, label %if.end3.i.if.then57_crit_edge, !prof !83

if.end3.i.if.then57_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then57

if.end10.i:                                       ; preds = %if.end3.i
  %dentry11.i = getelementptr inbounds %struct.svc_export, ptr %74, i32 0, i32 3, i32 1
  %85 = ptrtoint ptr %dentry11.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dentry11.i, align 4
  %cmp.not.i = icmp eq ptr %86, %72
  br i1 %cmp.not.i, label %if.end10.i.if.end16_crit_edge, label %if.end10.i.if.then57_crit_edge

if.end10.i.if.then57_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then57

if.end10.i.if.end16_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.end16:                                         ; preds = %if.end10.i.if.end16_crit_edge, %if.end11.if.end16_crit_edge
  %call17 = tail call fastcc i32 @nfsd_setuser_and_check_port(ptr noundef %rqstp, ptr noundef %74)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.out_crit_edge

if.end16.out_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end20:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %type)
  %cmp.i99 = icmp eq i16 %type, 0
  br i1 %cmp.i99, label %if.end20.if.end24_crit_edge, label %if.end.i100

if.end20.if.end24_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.end.i100:                                      ; preds = %if.end20
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %72, i32 0, i32 5
  %87 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %d_inode.i.i, align 8
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %88, align 8
  %91 = and i16 %90, -4096
  call void @__sanitizer_cov_trace_cmp2(i16 %91, i16 %type)
  %cmp6.i = icmp eq i16 %91, %type
  br i1 %cmp6.i, label %if.then8.i, label %if.end50.i

if.then8.i:                                       ; preds = %if.end.i100
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %type)
  %cmp10.i = icmp eq i16 %type, 16384
  br i1 %cmp10.i, label %land.lhs.true.i, label %if.then8.i.if.end24_crit_edge

if.then8.i.if.end24_crit_edge:                    ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

land.lhs.true.i:                                  ; preds = %if.then8.i
  %92 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %72, align 8
  %and.i.i.i101 = and i32 %93, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %and.i.i.i101)
  %cmp.i.i102 = icmp eq i32 %and.i.i.i101, 2097152
  br i1 %cmp.i.i102, label %land.lhs.true.i.if.end24_crit_edge, label %land.end.i

land.lhs.true.i.if.end24_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

land.end.i:                                       ; preds = %land.lhs.true.i
  %.b77.i = load i1, ptr @nfsd_mode_check.__already_done, align 1
  br i1 %.b77.i, label %land.end.i.if.end58_crit_edge, label %if.then19.i, !prof !84

land.end.i.if.end58_crit_edge:                    ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.then19.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @nfsd_mode_check.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 74, i32 noundef 9, ptr noundef null) #10
  br label %if.end58

if.end50.i:                                       ; preds = %if.end.i100
  %rq_vers.i103 = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 29
  %94 = ptrtoint ptr %rq_vers.i103 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %rq_vers.i103, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %95)
  %cmp51.i = icmp eq i32 %95, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %91)
  %cmp55.i = icmp eq i16 %91, -24576
  %or.cond.i104 = select i1 %cmp51.i, i1 %cmp55.i, i1 false
  br i1 %or.cond.i104, label %if.end50.i.if.end58_crit_edge, label %if.end58.i

if.end50.i.if.end58_crit_edge:                    ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.end58.i:                                       ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %type)
  %cmp60.i = icmp eq i16 %type, 16384
  br i1 %cmp60.i, label %if.end58.i.if.end58_crit_edge, label %if.end63.i

if.end58.i.if.end58_crit_edge:                    ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.end63.i:                                       ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %91)
  %cmp65.i = icmp eq i16 %91, 16384
  %..i105 = select i1 %cmp65.i, i32 21, i32 22
  br label %if.end58

if.end24:                                         ; preds = %land.lhs.true.i.if.end24_crit_edge, %if.then8.i.if.end24_crit_edge, %if.end20.if.end24_crit_edge
  %96 = and i32 %access, 1056
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %if.end30, label %if.end24.skip_pseudoflavor_check_crit_edge

if.end24.skip_pseudoflavor_check_crit_edge:       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip_pseudoflavor_check

if.end30:                                         ; preds = %if.end24
  %and31 = and i32 %access, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end30.if.end35_crit_edge, label %land.lhs.true

if.end30.if.end35_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

land.lhs.true:                                    ; preds = %if.end30
  %dentry33 = getelementptr inbounds %struct.svc_export, ptr %74, i32 0, i32 3, i32 1
  %98 = ptrtoint ptr %dentry33 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dentry33, align 4
  %cmp = icmp eq ptr %99, %72
  br i1 %cmp, label %land.lhs.true.skip_pseudoflavor_check_crit_edge, label %land.lhs.true.if.end35_crit_edge

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

land.lhs.true.skip_pseudoflavor_check_crit_edge:  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip_pseudoflavor_check

if.end35:                                         ; preds = %land.lhs.true.if.end35_crit_edge, %if.end30.if.end35_crit_edge
  %call36 = tail call i32 @check_nfsd_access(ptr noundef %74, ptr noundef %rqstp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end35.skip_pseudoflavor_check_crit_edge, label %if.end35.out_crit_edge

if.end35.out_crit_edge:                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end35.skip_pseudoflavor_check_crit_edge:       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip_pseudoflavor_check

skip_pseudoflavor_check:                          ; preds = %if.end35.skip_pseudoflavor_check_crit_edge, %land.lhs.true.skip_pseudoflavor_check_crit_edge, %if.end24.skip_pseudoflavor_check_crit_edge
  %call40 = tail call i32 @nfsd_permission(ptr noundef %rqstp, ptr noundef %74, ptr noundef %72, i32 noundef %access) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %skip_pseudoflavor_check.if.end58_crit_edge, label %do.body43

skip_pseudoflavor_check.if.end58_crit_edge:       ; preds = %skip_pseudoflavor_check
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

do.body43:                                        ; preds = %skip_pseudoflavor_check
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %100 = load i32, ptr @nfsd_debug, align 4
  %and44 = and i32 %100, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %do.body43.out_crit_edge, label %do.end49

do.body43.out_crit_edge:                          ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end49:                                         ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #12
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %72, i32 noundef %access, i32 noundef %call40) #13
  br label %out

out:                                              ; preds = %do.end49, %do.body43.out_crit_edge, %if.end35.out_crit_edge, %if.end16.out_crit_edge, %nfsd_set_fh_dentry.exit.out_crit_edge, %if.end43.i.out_crit_edge, %if.end19.i.out_crit_edge, %if.end14.i.out_crit_edge, %if.end6.i.out_crit_edge
  %error.0 = phi i32 [ %call17, %if.end16.out_crit_edge ], [ %call40, %do.end49 ], [ %call40, %do.body43.out_crit_edge ], [ %call36, %if.end35.out_crit_edge ], [ %retval.0.i90, %nfsd_set_fh_dentry.exit.out_crit_edge ], [ %spec.store.select.i, %if.end19.i.out_crit_edge ], [ %spec.store.select.i, %if.end43.i.out_crit_edge ], [ %spec.store.select.i, %if.end14.i.out_crit_edge ], [ %spec.store.select.i, %if.end6.i.out_crit_edge ]
  %exp.0 = phi ptr [ %74, %if.end16.out_crit_edge ], [ %74, %do.end49 ], [ %74, %do.body43.out_crit_edge ], [ %74, %if.end35.out_crit_edge ], [ null, %nfsd_set_fh_dentry.exit.out_crit_edge ], [ null, %if.end19.i.out_crit_edge ], [ null, %if.end43.i.out_crit_edge ], [ null, %if.end14.i.out_crit_edge ], [ null, %if.end6.i.out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 70, i32 %error.0)
  %cmp56 = icmp eq i32 %error.0, 70
  br i1 %cmp56, label %out.if.then57_crit_edge, label %out.if.end58_crit_edge

out.if.end58_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

out.if.then57_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then57

if.then57:                                        ; preds = %out.if.then57_crit_edge, %if.end10.i.if.then57_crit_edge, %if.end3.i.if.then57_crit_edge, %nfsd_v4client.exit.i.if.then57_crit_edge, %if.end.i95.if.then57_crit_edge
  %exp.0128 = phi ptr [ %exp.0, %out.if.then57_crit_edge ], [ %74, %if.end3.i.if.then57_crit_edge ], [ %74, %if.end.i95.if.then57_crit_edge ], [ %74, %if.end10.i.if.then57_crit_edge ], [ %74, %nfsd_v4client.exit.i.if.then57_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %101 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef getelementptr inbounds (%struct.nfsd_stats, ptr @nfsdstats, i32 0, i32 0, i32 3), i64 noundef 1, i32 noundef %101) #10
  %tobool.not.i107 = icmp eq ptr %exp.0128, null
  br i1 %tobool.not.i107, label %if.then57.if.end58_crit_edge, label %if.then.i

if.then57.if.end58_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.then.i:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #12
  %counter.i = getelementptr inbounds %struct.svc_export, ptr %exp.0128, i32 0, i32 15, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %102 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %counter.i, i64 noundef 1, i32 noundef %102) #10
  br label %if.end58

if.end58:                                         ; preds = %if.then.i, %if.then57.if.end58_crit_edge, %out.if.end58_crit_edge, %skip_pseudoflavor_check.if.end58_crit_edge, %if.end63.i, %if.end58.i.if.end58_crit_edge, %if.end50.i.if.end58_crit_edge, %if.then19.i, %land.end.i.if.end58_crit_edge, %if.then57.thread, %if.then6.if.end58_crit_edge
  %error.0122 = phi i32 [ %error.0, %out.if.end58_crit_edge ], [ 70, %if.then57.if.end58_crit_edge ], [ 70, %if.then.i ], [ 0, %skip_pseudoflavor_check.if.end58_crit_edge ], [ %..i105, %if.end63.i ], [ 20, %if.end58.i.if.end58_crit_edge ], [ 10029, %if.end50.i.if.end58_crit_edge ], [ 20, %land.end.i.if.end58_crit_edge ], [ 20, %if.then19.i ], [ 70, %if.then57.thread ], [ 10020, %if.then6.if.end58_crit_edge ]
  ret i32 %error.0122
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local nonnull ptr @SVCFH_fmt(ptr noundef %fhp) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fhp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fhp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %1)
  %cmp2 = icmp ugt i32 %1, 64
  br i1 %cmp2, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = getelementptr inbounds %struct.knfsd_fh, ptr %fhp, i32 0, i32 1
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @SVCFH_fmt.buf, ptr noundef nonnull @.str.22, i32 noundef %1, i32 noundef %1, ptr noundef %2)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ @SVCFH_fmt.buf, %if.end ], [ @.str.21, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfsd_setuser_and_check_port(ptr noundef %rqstp, ptr noundef %exp) unnamed_addr #0 align 64 {
entry:
  %buf = alloca [63 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nfsexp_flags(ptr noundef %rqstp, ptr noundef %exp) #10
  %and.i = and i32 %call, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.end.i:                                         ; preds = %entry
  %cr_flavor.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 11, i32 3
  %0 = ptrtoint ptr %cr_flavor.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cr_flavor.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp.i = icmp ugt i32 %1, 5
  br i1 %cmp.i, label %if.end.i.if.end8_crit_edge, label %nfsd_originating_port_ok.exit

if.end.i.if.end8_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

nfsd_originating_port_ok.exit:                    ; preds = %if.end.i
  %rq_flags.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 33
  %2 = ptrtoint ptr %rq_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %rq_flags.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool3.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool3.i.not, label %if.then, label %nfsd_originating_port_ok.exit.if.end8_crit_edge

nfsd_originating_port_ok.exit.if.end8_crit_edge:  ; preds = %nfsd_originating_port_ok.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then:                                          ; preds = %nfsd_originating_port_ok.exit
  call void @llvm.lifetime.start.p0(i64 63, ptr nonnull %buf) #10
  %4 = call ptr @memset(ptr %buf, i32 255, i32 63)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %5 = load i32, ptr @nfsd_debug, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.do.end7_crit_edge, label %do.end

if.then.do.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = call ptr @svc_print_addr(ptr noundef %rqstp, ptr noundef nonnull %buf, i32 noundef 63) #10
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %call4) #13
  br label %do.end7

do.end7:                                          ; preds = %do.end, %if.then.do.end7_crit_edge
  call void @llvm.lifetime.end.p0(i64 63, ptr nonnull %buf) #10
  br label %cleanup

if.end8:                                          ; preds = %nfsd_originating_port_ok.exit.if.end8_crit_edge, %if.end.i.if.end8_crit_edge, %entry.if.end8_crit_edge
  %call9 = tail call i32 @nfsd_setuser(ptr noundef %rqstp, ptr noundef %exp) #10
  %call10 = tail call i32 @nfserrno(i32 noundef %call9) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end7
  %retval.0 = phi i32 [ %call10, %if.end8 ], [ 1, %do.end7 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @check_nfsd_access(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_permission(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fh_compose(ptr noundef %fhp, ptr noundef %exp, ptr noundef %dentry, ptr noundef %ref_fh) local_unnamed_addr #0 align 64 {
entry:
  %maxsize.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %dentry.i = getelementptr inbounds %struct.svc_export, ptr %exp, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dentry.i, align 4
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_sb.i, align 4
  %s_dev = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %s_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_dev, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %8 = load i32, ptr @nfsd_debug, align 4
  %and = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

do.end:                                           ; preds = %entry
  %shr = lshr i32 %7, 20
  %and3 = and i32 %7, 1048575
  %d_inode.i103 = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 5
  %9 = ptrtoint ptr %d_inode.i103 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %d_inode.i103, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_ino, align 8
  %tobool6.not = icmp eq ptr %1, null
  br i1 %tobool6.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %i_ino7 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %13 = ptrtoint ptr %i_ino7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_ino7, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi i32 [ %14, %cond.true ], [ 0, %do.end.cond.end_crit_edge ]
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %shr, i32 noundef %and3, i32 noundef %12, ptr noundef %dentry, i32 noundef %cond) #13
  br label %do.end10

do.end10:                                         ; preds = %cond.end, %entry.do.end10_crit_edge
  %tobool.not71.i = icmp eq ptr %ref_fh, null
  br i1 %tobool.not71.i, label %do.end10.if.else.i_crit_edge, label %land.lhs.true.lr.ph.i

do.end10.if.else.i_crit_edge:                     ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true.lr.ph.i:                            ; preds = %do.end10
  %ex_uuid.i.i = getelementptr inbounds %struct.svc_export, ptr %exp, i32 0, i32 7
  %ex_flags.i.i = getelementptr inbounds %struct.svc_export, ptr %exp, i32 0, i32 2
  %fh_export.i = getelementptr inbounds %struct.svc_fh, ptr %ref_fh, i32 0, i32 3
  %15 = ptrtoint ptr %fh_export.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fh_export.i, align 4
  %cmp.i = icmp eq ptr %16, %exp
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.lr.ph.i.if.else.i_crit_edge

land.lhs.true.lr.ph.i.if.else.i_crit_edge:        ; preds = %land.lhs.true.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.lr.ph.i
  %17 = getelementptr inbounds %struct.knfsd_fh, ptr %ref_fh, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 4
  %fh_fsid_type.i = getelementptr inbounds %struct.knfsd_fh, ptr %ref_fh, i32 0, i32 1, i32 0, i32 2
  %20 = ptrtoint ptr %fh_fsid_type.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %fh_fsid_type.i, align 2
  %22 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.35)
  switch i8 %19, label %if.then.i.if.else.i_crit_edge [
    i8 -54, label %if.then.i.sw.bb.i.i_crit_edge
    i8 1, label %sw.epilog.i
  ]

if.then.i.sw.bb.i.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i

if.then.i.if.else.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

sw.epilog.i:                                      ; preds = %if.then.i
  %23 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.36)
  switch i8 %21, label %sw.epilog.i.set_version_and_fsid_type.exit.thread118_crit_edge [
    i8 0, label %sw.epilog.i.sw.bb.i.i_crit_edge
    i8 2, label %sw.epilog.i.sw.bb2.i.i_crit_edge
    i8 3, label %sw.epilog.i.sw.bb2.i.i_crit_edge166
    i8 1, label %sw.bb4.i.i
    i8 5, label %sw.epilog.i.sw.bb7.i.i_crit_edge
    i8 6, label %sw.epilog.i.sw.bb7.i.i_crit_edge167
    i8 4, label %sw.epilog.i.sw.bb11.i.i_crit_edge
    i8 7, label %sw.epilog.i.sw.bb11.i.i_crit_edge168
  ]

sw.epilog.i.sw.bb11.i.i_crit_edge168:             ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb11.i.i

sw.epilog.i.sw.bb11.i.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb11.i.i

sw.epilog.i.sw.bb7.i.i_crit_edge167:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7.i.i

sw.epilog.i.sw.bb7.i.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7.i.i

sw.epilog.i.sw.bb2.i.i_crit_edge166:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2.i.i

sw.epilog.i.sw.bb2.i.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2.i.i

sw.epilog.i.sw.bb.i.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i

sw.epilog.i.set_version_and_fsid_type.exit.thread118_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %set_version_and_fsid_type.exit.thread118

sw.bb.i.i:                                        ; preds = %sw.epilog.i.sw.bb.i.i_crit_edge, %if.then.i.sw.bb.i.i_crit_edge
  %24 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dentry.i, align 4
  %d_sb.i.i.i = getelementptr inbounds %struct.dentry, ptr %25, i32 0, i32 9
  %26 = ptrtoint ptr %d_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %d_sb.i.i.i, align 4
  %s_dev.i.i = getelementptr inbounds %struct.super_block, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %s_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %s_dev.i.i, align 8
  %30 = and i32 %29, -267387136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %sw.bb.i.i.sw.bb2.i.i_crit_edge, label %sw.bb.i.i.if.else.i_crit_edge

sw.bb.i.i.if.else.i_crit_edge:                    ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

sw.bb.i.i.sw.bb2.i.i_crit_edge:                   ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2.i.i

sw.bb2.i.i:                                       ; preds = %sw.bb.i.i.sw.bb2.i.i_crit_edge, %sw.epilog.i.sw.bb2.i.i_crit_edge, %sw.epilog.i.sw.bb2.i.i_crit_edge166
  %fsid_type.061.i = phi i8 [ 0, %sw.bb.i.i.sw.bb2.i.i_crit_edge ], [ %21, %sw.epilog.i.sw.bb2.i.i_crit_edge ], [ %21, %sw.epilog.i.sw.bb2.i.i_crit_edge166 ]
  %32 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dentry.i, align 4
  %d_sb.i18.i.i = getelementptr inbounds %struct.dentry, ptr %33, i32 0, i32 9
  %34 = ptrtoint ptr %d_sb.i18.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %d_sb.i18.i.i, align 4
  %s_type.i.i = getelementptr inbounds %struct.super_block, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %s_type.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %s_type.i.i, align 32
  %fs_flags.i.i = getelementptr inbounds %struct.file_system_type, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %fs_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %fs_flags.i.i, align 4
  %and.i.i = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sw.bb2.i.i.if.else.i_crit_edge, label %if.end29.i

sw.bb2.i.i.if.else.i_crit_edge:                   ; preds = %sw.bb2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

sw.bb4.i.i:                                       ; preds = %sw.epilog.i
  %40 = ptrtoint ptr %ex_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ex_flags.i.i, align 4
  %and5.i.i = and i32 %41, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i)
  %tobool6.i.not.i = icmp eq i32 %and5.i.i, 0
  br i1 %tobool6.i.not.i, label %sw.bb4.i.i.if.else.i_crit_edge, label %sw.bb4.i.i.set_version_and_fsid_type.exit.thread118_crit_edge

sw.bb4.i.i.set_version_and_fsid_type.exit.thread118_crit_edge: ; preds = %sw.bb4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %set_version_and_fsid_type.exit.thread118

sw.bb4.i.i.if.else.i_crit_edge:                   ; preds = %sw.bb4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

sw.bb7.i.i:                                       ; preds = %sw.epilog.i.sw.bb7.i.i_crit_edge, %sw.epilog.i.sw.bb7.i.i_crit_edge167
  %42 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dentry.i, align 4
  %d_sb.i20.i.i = getelementptr inbounds %struct.dentry, ptr %43, i32 0, i32 9
  %44 = ptrtoint ptr %d_sb.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %d_sb.i20.i.i, align 4
  %s_root.i.i.i = getelementptr inbounds %struct.super_block, ptr %45, i32 0, i32 13
  %46 = ptrtoint ptr %s_root.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %s_root.i.i.i, align 64
  %cmp.i.i.i = icmp eq ptr %43, %47
  br i1 %cmp.i.i.i, label %sw.bb7.i.i.sw.bb11.i.i_crit_edge, label %sw.bb7.i.i.if.else.i_crit_edge

sw.bb7.i.i.if.else.i_crit_edge:                   ; preds = %sw.bb7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

sw.bb7.i.i.sw.bb11.i.i_crit_edge:                 ; preds = %sw.bb7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb11.i.i

sw.bb11.i.i:                                      ; preds = %sw.bb7.i.i.sw.bb11.i.i_crit_edge, %sw.epilog.i.sw.bb11.i.i_crit_edge, %sw.epilog.i.sw.bb11.i.i_crit_edge168
  %48 = ptrtoint ptr %ex_uuid.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ex_uuid.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %49, null
  br i1 %cmp.i.not.i, label %sw.bb11.i.i.if.else.i_crit_edge, label %sw.bb11.i.i.set_version_and_fsid_type.exit.thread118_crit_edge

sw.bb11.i.i.set_version_and_fsid_type.exit.thread118_crit_edge: ; preds = %sw.bb11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %set_version_and_fsid_type.exit.thread118

sw.bb11.i.i.if.else.i_crit_edge:                  ; preds = %sw.bb11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.else.i:                                        ; preds = %sw.bb11.i.i.if.else.i_crit_edge, %sw.bb7.i.i.if.else.i_crit_edge, %sw.bb4.i.i.if.else.i_crit_edge, %sw.bb2.i.i.if.else.i_crit_edge, %sw.bb.i.i.if.else.i_crit_edge, %if.then.i.if.else.i_crit_edge, %land.lhs.true.lr.ph.i.if.else.i_crit_edge, %do.end10.if.else.i_crit_edge
  %ex_flags.i = getelementptr inbounds %struct.svc_export, ptr %exp, i32 0, i32 2
  %50 = ptrtoint ptr %ex_flags.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ex_flags.i, align 4
  %and.i = and i32 %51, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %if.else5.i, label %if.else.i.set_version_and_fsid_type.exit_crit_edge

if.else.i.set_version_and_fsid_type.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %set_version_and_fsid_type.exit

if.else5.i:                                       ; preds = %if.else.i
  %ex_uuid.i = getelementptr inbounds %struct.svc_export, ptr %exp, i32 0, i32 7
  %52 = ptrtoint ptr %ex_uuid.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ex_uuid.i, align 4
  %tobool6.not.i = icmp eq ptr %53, null
  br i1 %tobool6.not.i, label %if.else21.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.else5.i
  %fh_maxsize.i = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 1
  %54 = ptrtoint ptr %fh_maxsize.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %fh_maxsize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %55)
  %cmp8.i = icmp sgt i32 %55, 63
  %56 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dentry.i, align 4
  %d_sb.i.i = getelementptr inbounds %struct.dentry, ptr %57, i32 0, i32 9
  %58 = ptrtoint ptr %d_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %d_sb.i.i, align 4
  %s_root.i.i = getelementptr inbounds %struct.super_block, ptr %59, i32 0, i32 13
  %60 = ptrtoint ptr %s_root.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %s_root.i.i, align 64
  %cmp.i53.i = icmp eq ptr %57, %61
  br i1 %cmp8.i, label %if.then10.i, label %if.else15.i

if.then10.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  %..i = select i1 %cmp.i53.i, i8 6, i8 7
  br label %set_version_and_fsid_type.exit

if.else15.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  %.51.i = select i1 %cmp.i53.i, i8 5, i8 4
  br label %set_version_and_fsid_type.exit

if.else21.i:                                      ; preds = %if.else5.i
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dentry.i, align 4
  %d_sb.i59.i = getelementptr inbounds %struct.dentry, ptr %63, i32 0, i32 9
  %64 = ptrtoint ptr %d_sb.i59.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %d_sb.i59.i, align 4
  %s_dev.i = getelementptr inbounds %struct.super_block, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %s_dev.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %s_dev.i, align 8
  %68 = and i32 %67, -267387136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %69 = icmp eq i32 %68, 0
  %.52.i = select i1 %69, i8 0, i8 3
  br label %set_version_and_fsid_type.exit

if.end29.i:                                       ; preds = %sw.bb2.i.i
  %70 = getelementptr inbounds %struct.knfsd_fh, ptr %fhp, i32 0, i32 1
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %19, ptr %70, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool32.not.i = icmp eq i8 %19, 0
  br i1 %tobool32.not.i, label %if.end29.i.cond.true12_crit_edge, label %if.end29.i.cond.true12.sink.split_crit_edge

if.end29.i.cond.true12.sink.split_crit_edge:      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.true12.sink.split

if.end29.i.cond.true12_crit_edge:                 ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.true12

set_version_and_fsid_type.exit.thread118:         ; preds = %sw.bb11.i.i.set_version_and_fsid_type.exit.thread118_crit_edge, %sw.bb4.i.i.set_version_and_fsid_type.exit.thread118_crit_edge, %sw.epilog.i.set_version_and_fsid_type.exit.thread118_crit_edge
  %72 = getelementptr inbounds %struct.knfsd_fh, ptr %fhp, i32 0, i32 1
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %72, align 4
  br label %cond.true12.sink.split

set_version_and_fsid_type.exit:                   ; preds = %if.else21.i, %if.else15.i, %if.then10.i, %if.else.i.set_version_and_fsid_type.exit_crit_edge
  %fsid_type.1.ph.i = phi i8 [ %.52.i, %if.else21.i ], [ %.51.i, %if.else15.i ], [ %..i, %if.then10.i ], [ 1, %if.else.i.set_version_and_fsid_type.exit_crit_edge ]
  %74 = getelementptr inbounds %struct.knfsd_fh, ptr %fhp, i32 0, i32 1
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 1, ptr %74, align 4
  %fh_fsid_type35.i = getelementptr inbounds %struct.knfsd_fh, ptr %fhp, i32 0, i32 1, i32 0, i32 2
  %76 = ptrtoint ptr %fh_fsid_type35.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %fsid_type.1.ph.i, ptr %fh_fsid_type35.i, align 2
  br i1 %tobool.not71.i, label %set_version_and_fsid_type.exit.cond.end15_crit_edge, label %set_version_and_fsid_type.exit.cond.true12_crit_edge

set_version_and_fsid_type.exit.cond.true12_crit_edge: ; preds = %set_version_and_fsid_type.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.true12

set_version_and_fsid_type.exit.cond.end15_crit_edge: ; preds = %set_version_and_fsid_type.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end15

cond.true12.sink.split:                           ; preds = %set_version_and_fsid_type.exit.thread118, %if.end29.i.cond.true12.sink.split_crit_edge
  %.sink = phi i8 [ %21, %set_version_and_fsid_type.exit.thread118 ], [ %fsid_type.061.i, %if.end29.i.cond.true12.sink.split_crit_edge ]
  %fh_fsid_type35.i120 = getelementptr inbounds %struct.knfsd_fh, ptr %fhp, i32 0, i32 1, i32 0, i32 2
  %77 = ptrtoint ptr %fh_fsid_type35.i120 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %.sink, ptr %fh_fsid_type35.i120, align 2
  br label %cond.true12

cond.true12:                                      ; preds = %cond.true12.sink.split, %set_version_and_fsid_type.exit.cond.true12_crit_edge, %if.end29.i.cond.true12_crit_edge
  %fh_no_wcc = getelementptr inbounds %struct.svc_fh, ptr %ref_fh, i32 0, i32 6
  %78 = ptrtoint ptr %fh_no_wcc to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %fh_no_wcc, align 2, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool13 = icmp ne i8 %79, 0
  br label %cond.end15

cond.end15:                                       ; preds = %cond.true12, %set_version_and_fsid_type.exit.cond.end15_crit_edge
  %cond16 = phi i1 [ %tobool13, %cond.true12 ], [ false, %set_version_and_fsid_type.exit.cond.end15_crit_edge ]
  %fh_no_wcc18 = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 6
  %frombool = zext i1 %cond16 to i8
  %80 = ptrtoint ptr %fh_no_wcc18 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %frombool, ptr %fh_no_wcc18, align 2
  %cmp = icmp eq ptr %ref_fh, %fhp
  br i1 %cmp, label %if.then20, label %cond.end15.if.end21_crit_edge

cond.end15.if.end21_crit_edge:                    ; preds = %cond.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then20:                                        ; preds = %cond.end15
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @fh_put(ptr noundef %ref_fh)
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %cond.end15.if.end21_crit_edge
  %fh_locked = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 4
  %81 = ptrtoint ptr %fh_locked to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %fh_locked, align 8, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool22.not = icmp eq i8 %82, 0
  br i1 %tobool22.not, label %lor.lhs.false, label %if.end21.do.end28_crit_edge

if.end21.do.end28_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end28

lor.lhs.false:                                    ; preds = %if.end21
  %fh_dentry = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 2
  %83 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %fh_dentry, align 8
  %tobool24.not = icmp eq ptr %84, null
  br i1 %tobool24.not, label %lor.lhs.false.if.end31_crit_edge, label %lor.lhs.false.do.end28_crit_edge

lor.lhs.false.do.end28_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end28

lor.lhs.false.if.end31_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

do.end28:                                         ; preds = %lor.lhs.false.do.end28_crit_edge, %if.end21.do.end28_crit_edge
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %dentry) #13
  br label %if.end31

if.end31:                                         ; preds = %do.end28, %lor.lhs.false.if.end31_crit_edge
  %fh_maxsize = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 1
  %85 = ptrtoint ptr %fh_maxsize to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %fh_maxsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %86)
  %cmp32 = icmp slt i32 %86, 32
  br i1 %cmp32, label %do.end37, label %if.end31.if.end41_crit_edge

if.end31.if.end41_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

do.end37:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %86, ptr noundef %dentry) #13
  br label %if.end41

if.end41:                                         ; preds = %do.end37, %if.end31.if.end41_crit_edge
  %tobool.not.i = icmp eq ptr %dentry, null
  br i1 %tobool.not.i, label %if.end41.dget.exit_crit_edge, label %if.then.i104

if.end41.dget.exit_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %dget.exit

if.then.i104:                                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i) #10
  br label %dget.exit

dget.exit:                                        ; preds = %if.then.i104, %if.end41.dget.exit_crit_edge
  %fh_dentry43 = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 2
  %87 = ptrtoint ptr %fh_dentry43 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %dentry, ptr %fh_dentry43, align 8
  %ref.i.i = getelementptr inbounds %struct.cache_head, ptr %exp, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %ref.i.i, i32 1, i32 3, i32 1) #10
  %88 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i, ptr %ref.i.i, i32 1, ptr elementtype(i32) %ref.i.i) #10, !srcloc !86
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %88, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %dget.exit.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !87

dget.exit.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %dget.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %dget.exit
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %89 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %89)
  %.not.i.i.i.i.i.i = icmp sgt i32 %89, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.exp_get.exit_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !84

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.exp_get.exit_crit_edge:       ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %exp_get.exit

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %dget.exit.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %dget.exit.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref.i.i, i32 noundef %.sink.i.i.i.i.i.i) #10
  br label %exp_get.exit

exp_get.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.exp_get.exit_crit_edge
  %fh_export = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 3
  %90 = ptrtoint ptr %fh_export to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %exp, ptr %fh_export, align 4
  %fh_fsid_type = getelementptr inbounds %struct.knfsd_fh, ptr %fhp, i32 0, i32 1, i32 0, i32 2
  %91 = ptrtoint ptr %fh_fsid_type to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %fh_fsid_type, align 2
  %93 = zext i8 %92 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.37)
  switch i8 %92, label %sw.default.i [
    i8 0, label %exp_get.exit.key_len.exit_crit_edge
    i8 1, label %key_len.exit.thread
    i8 2, label %key_len.exit.thread133
    i8 3, label %exp_get.exit.key_len.exit_crit_edge169
    i8 4, label %exp_get.exit.key_len.exit_crit_edge170
    i8 5, label %exp_get.exit.key_len.exit_crit_edge171
    i8 6, label %key_len.exit.thread144
    i8 7, label %key_len.exit.thread155
  ]

exp_get.exit.key_len.exit_crit_edge171:           ; preds = %exp_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %key_len.exit

exp_get.exit.key_len.exit_crit_edge170:           ; preds = %exp_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %key_len.exit

exp_get.exit.key_len.exit_crit_edge169:           ; preds = %exp_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %key_len.exit

exp_get.exit.key_len.exit_crit_edge:              ; preds = %exp_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %key_len.exit

key_len.exit.thread:                              ; preds = %exp_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  %94 = ptrtoint ptr %fhp to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 8, ptr %fhp, align 8
  %fh_auth_type123 = getelementptr inbounds %struct.knfsd_fh, ptr %fhp, i32 0, i32 1, i32 0, i32 1
  %95 = ptrtoint ptr %fh_auth_type123 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %fh_auth_type123, align 1
  %fh_fsid124 = getelementptr inbounds %struct.knfsd_fh, ptr %fhp, i32 0, i32 1, i32 1
  br label %sw.bb2.i107

key_len.exit.thread133:                           ; preds = %exp_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  %96 = ptrtoint ptr %fhp to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 16, ptr %fhp, align 8
  %fh_auth_type136 = getelementptr inbounds %struct.knfsd_fh, ptr %fhp, i32 0, i32 1, i32 0, i32 1
  %97 = ptrtoint ptr %fh_auth_type136 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 0, ptr %fh_auth_type136, align 1
  %fh_fsid137 = getelementptr inbounds %struct.knfsd_fh, ptr %fhp, i32 0, i32 1, i32 1
  %98 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dentry.i, align 4
  %d_inode.i105138 = getelementptr inbounds %struct.dentry, ptr %99, i32 0, i32 5
  %100 = ptrtoint ptr %d_inode.i105138 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %d_inode.i105138, align 8
  %i_ino56139 = getelementptr inbounds %struct.inode, ptr %101, i32 0, i32 11
  %102 = ptrtoint ptr %i_ino56139 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %i_ino56139, align 8
  br label %sw.bb4.i

key_len.exit.thread144:                           ; preds = %exp_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  %104 = ptrtoint ptr %fhp to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 20, ptr %fhp, align 8
  %fh_auth_type147 = getelementptr inbounds %struct.knfsd_fh, ptr %fhp, i32 0, i32 1, i32 0, i32 1
  %105 = ptrtoint ptr %fh_auth_type147 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 0, ptr %fh_auth_type147, align 1
  %fh_fsid148 = getelementptr inbounds %struct.knfsd_fh, ptr %fhp, i32 0, i32 1, i32 1
  %ex_uuid152 = getelementptr inbounds %struct.svc_export, ptr %exp, i32 0, i32 7
  %106 = ptrtoint ptr %ex_uuid152 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ex_uuid152, align 4
  %108 = call ptr @memcpy(ptr %fh_fsid148, ptr %107, i32 16)
  br label %mk_fsid.exit

key_len.exit.thread155:                           ; preds = %exp_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  %109 = ptrtoint ptr %fhp to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 28, ptr %fhp, align 8
  %fh_auth_type158 = getelementptr inbounds %struct.knfsd_fh, ptr %fhp, i32 0, i32 1, i32 0, i32 1
  %110 = ptrtoint ptr %fh_auth_type158 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 0, ptr %fh_auth_type158, align 1
  %fh_fsid159 = getelementptr inbounds %struct.knfsd_fh, ptr %fhp, i32 0, i32 1, i32 1
  %111 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dentry.i, align 4
  %d_inode.i105160 = getelementptr inbounds %struct.dentry, ptr %112, i32 0, i32 5
  %113 = ptrtoint ptr %d_inode.i105160 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %d_inode.i105160, align 8
  %i_ino56161 = getelementptr inbounds %struct.inode, ptr %114, i32 0, i32 11
  %115 = ptrtoint ptr %i_ino56161 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %i_ino56161, align 8
  %ex_uuid163 = getelementptr inbounds %struct.svc_export, ptr %exp, i32 0, i32 7
  %117 = ptrtoint ptr %ex_uuid163 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %ex_uuid163, align 4
  %conv.i = zext i32 %116 to i64
  %119 = ptrtoint ptr %fh_fsid159 to i32
  call void @__asan_store8_noabort(i32 %119)
  store i64 %conv.i, ptr %fh_fsid159, align 8
  %add.ptr.i = getelementptr %struct.knfsd_fh, ptr %fhp, i32 0, i32 1, i32 1, i32 8
  %120 = call ptr @memcpy(ptr %add.ptr.i, ptr %118, i32 16)
  br label %mk_fsid.exit

sw.default.i:                                     ; preds = %exp_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %key_len.exit

key_len.exit:                                     ; preds = %sw.default.i, %exp_get.exit.key_len.exit_crit_edge, %exp_get.exit.key_len.exit_crit_edge169, %exp_get.exit.key_len.exit_crit_edge170, %exp_get.exit.key_len.exit_crit_edge171
  %retval.0.i = phi i32 [ 4, %sw.default.i ], [ 12, %exp_get.exit.key_len.exit_crit_edge ], [ 12, %exp_get.exit.key_len.exit_crit_edge169 ], [ 12, %exp_get.exit.key_len.exit_crit_edge170 ], [ 12, %exp_get.exit.key_len.exit_crit_edge171 ]
  %121 = ptrtoint ptr %fhp to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %retval.0.i, ptr %fhp, align 8
  %fh_auth_type = getelementptr inbounds %struct.knfsd_fh, ptr %fhp, i32 0, i32 1, i32 0, i32 1
  %122 = ptrtoint ptr %fh_auth_type to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 0, ptr %fh_auth_type, align 1
  %fh_fsid = getelementptr inbounds %struct.knfsd_fh, ptr %fhp, i32 0, i32 1, i32 1
  %123 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dentry.i, align 4
  %d_inode.i105 = getelementptr inbounds %struct.dentry, ptr %124, i32 0, i32 5
  %125 = ptrtoint ptr %d_inode.i105 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %d_inode.i105, align 8
  %i_ino56 = getelementptr inbounds %struct.inode, ptr %126, i32 0, i32 11
  %127 = ptrtoint ptr %i_ino56 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %i_ino56, align 8
  %ex_uuid = getelementptr inbounds %struct.svc_export, ptr %exp, i32 0, i32 7
  %129 = ptrtoint ptr %ex_uuid to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %ex_uuid, align 4
  %131 = zext i8 %92 to i64
  call void @__sanitizer_cov_trace_switch(i64 %131, ptr @__sancov_gen_cov_switch_values.38)
  switch i8 %92, label %do.body.i [
    i8 0, label %sw.bb.i
    i8 1, label %key_len.exit.sw.bb2.i107_crit_edge
    i8 2, label %key_len.exit.sw.bb4.i_crit_edge
    i8 3, label %sw.bb11.i
    i8 4, label %sw.bb16.i
    i8 5, label %sw.bb26.i
  ]

key_len.exit.sw.bb4.i_crit_edge:                  ; preds = %key_len.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

key_len.exit.sw.bb2.i107_crit_edge:               ; preds = %key_len.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2.i107

sw.bb.i:                                          ; preds = %key_len.exit
  call void @__sanitizer_cov_trace_pc() #12
  %132 = lshr i32 %7, 4
  %shl.i = and i32 %132, 268369920
  %and.i106 = and i32 %7, 1048575
  %or.i = or i32 %shl.i, %and.i106
  %133 = ptrtoint ptr %fh_fsid to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %or.i, ptr %fh_fsid, align 4
  %arrayidx1.i = getelementptr %struct.knfsd_fh, ptr %fhp, i32 0, i32 1, i32 1, i32 4
  %134 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %128, ptr %arrayidx1.i, align 4
  br label %mk_fsid.exit

sw.bb2.i107:                                      ; preds = %key_len.exit.sw.bb2.i107_crit_edge, %key_len.exit.thread
  %fh_fsid131 = phi ptr [ %fh_fsid124, %key_len.exit.thread ], [ %fh_fsid, %key_len.exit.sw.bb2.i107_crit_edge ]
  %add130 = phi i32 [ 8, %key_len.exit.thread ], [ %retval.0.i, %key_len.exit.sw.bb2.i107_crit_edge ]
  %.in = getelementptr inbounds %struct.svc_export, ptr %exp, i32 0, i32 6
  %135 = ptrtoint ptr %.in to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %.in, align 8
  %137 = ptrtoint ptr %fh_fsid131 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %136, ptr %fh_fsid131, align 4
  br label %mk_fsid.exit

sw.bb4.i:                                         ; preds = %key_len.exit.sw.bb4.i_crit_edge, %key_len.exit.thread133
  %138 = phi i32 [ %103, %key_len.exit.thread133 ], [ %128, %key_len.exit.sw.bb4.i_crit_edge ]
  %fh_fsid143 = phi ptr [ %fh_fsid137, %key_len.exit.thread133 ], [ %fh_fsid, %key_len.exit.sw.bb4.i_crit_edge ]
  %add142 = phi i32 [ 16, %key_len.exit.thread133 ], [ %retval.0.i, %key_len.exit.sw.bb4.i_crit_edge ]
  %shr5.i = lshr i32 %7, 20
  %139 = ptrtoint ptr %fh_fsid143 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %shr5.i, ptr %fh_fsid143, align 4
  %and7.i = and i32 %7, 1048575
  %arrayidx8.i = getelementptr %struct.knfsd_fh, ptr %fhp, i32 0, i32 1, i32 1, i32 4
  %140 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %and7.i, ptr %arrayidx8.i, align 4
  %arrayidx10.i = getelementptr %struct.knfsd_fh, ptr %fhp, i32 0, i32 1, i32 1, i32 8
  %141 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %138, ptr %arrayidx10.i, align 4
  br label %mk_fsid.exit

sw.bb11.i:                                        ; preds = %key_len.exit
  call void @__sanitizer_cov_trace_pc() #12
  %and1.i.i = and i32 %7, 255
  %142 = lshr i32 %7, 12
  %shl.i.i = and i32 %142, 1048320
  %or.i.i = or i32 %shl.i.i, %and1.i.i
  %and2.i.i = shl i32 %7, 12
  %shl3.i.i = and i32 %and2.i.i, -1048576
  %or4.i.i = or i32 %or.i.i, %shl3.i.i
  %143 = ptrtoint ptr %fh_fsid to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %or4.i.i, ptr %fh_fsid, align 4
  %arrayidx15.i = getelementptr %struct.knfsd_fh, ptr %fhp, i32 0, i32 1, i32 1, i32 4
  %144 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %128, ptr %arrayidx15.i, align 4
  br label %mk_fsid.exit

sw.bb16.i:                                        ; preds = %key_len.exit
  call void @__sanitizer_cov_trace_pc() #12
  %145 = ptrtoint ptr %fh_fsid to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %128, ptr %fh_fsid, align 4
  %146 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %130, align 4
  %arrayidx20.i = getelementptr i32, ptr %130, i32 1
  %148 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx20.i, align 4
  %xor.i = xor i32 %149, %147
  %arrayidx21.i = getelementptr i32, ptr %130, i32 2
  %150 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx21.i, align 4
  %xor22.i = xor i32 %xor.i, %151
  %arrayidx23.i = getelementptr i32, ptr %130, i32 3
  %152 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx23.i, align 4
  %xor24.i = xor i32 %xor22.i, %153
  %arrayidx25.i = getelementptr %struct.knfsd_fh, ptr %fhp, i32 0, i32 1, i32 1, i32 4
  %154 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %xor24.i, ptr %arrayidx25.i, align 4
  br label %mk_fsid.exit

sw.bb26.i:                                        ; preds = %key_len.exit
  call void @__sanitizer_cov_trace_pc() #12
  %155 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %130, align 4
  %arrayidx28.i = getelementptr i32, ptr %130, i32 2
  %157 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %arrayidx28.i, align 4
  %xor29.i = xor i32 %158, %156
  %159 = ptrtoint ptr %fh_fsid to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %xor29.i, ptr %fh_fsid, align 4
  %arrayidx31.i = getelementptr i32, ptr %130, i32 1
  %160 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %arrayidx31.i, align 4
  %arrayidx32.i = getelementptr i32, ptr %130, i32 3
  %162 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %arrayidx32.i, align 4
  %xor33.i = xor i32 %163, %161
  %arrayidx34.i = getelementptr %struct.knfsd_fh, ptr %fhp, i32 0, i32 1, i32 1, i32 4
  %164 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %xor33.i, ptr %arrayidx34.i, align 4
  br label %mk_fsid.exit

do.body.i:                                        ; preds = %key_len.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfsd/nfsfh.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 193, 0\0A.popsection", ""() #10, !srcloc !88
  unreachable

mk_fsid.exit:                                     ; preds = %sw.bb26.i, %sw.bb16.i, %sw.bb11.i, %sw.bb4.i, %sw.bb2.i107, %sw.bb.i, %key_len.exit.thread155, %key_len.exit.thread144
  %fh_fsid132 = phi ptr [ %fh_fsid, %sw.bb.i ], [ %fh_fsid131, %sw.bb2.i107 ], [ %fh_fsid143, %sw.bb4.i ], [ %fh_fsid, %sw.bb11.i ], [ %fh_fsid, %sw.bb16.i ], [ %fh_fsid, %sw.bb26.i ], [ %fh_fsid148, %key_len.exit.thread144 ], [ %fh_fsid159, %key_len.exit.thread155 ]
  %add129 = phi i32 [ %retval.0.i, %sw.bb.i ], [ %add130, %sw.bb2.i107 ], [ %add142, %sw.bb4.i ], [ %retval.0.i, %sw.bb11.i ], [ %retval.0.i, %sw.bb16.i ], [ %retval.0.i, %sw.bb26.i ], [ 20, %key_len.exit.thread144 ], [ 28, %key_len.exit.thread155 ]
  %tobool57.not = icmp eq ptr %1, null
  br i1 %tobool57.not, label %mk_fsid.exit.if.end59_crit_edge, label %if.then58

mk_fsid.exit.if.end59_crit_edge:                  ; preds = %mk_fsid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

if.then58:                                        ; preds = %mk_fsid.exit
  %165 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %dentry.i, align 4
  %cmp.not.i = icmp eq ptr %166, %dentry
  br i1 %cmp.not.i, label %if.then58._fh_update.exit_crit_edge, label %if.then.i114

if.then58._fh_update.exit_crit_edge:              ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #12
  br label %_fh_update.exit

if.then.i114:                                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #12
  %div20.i = lshr i32 %add129, 2
  %add.ptr.i109 = getelementptr i32, ptr %fh_fsid132, i32 %div20.i
  %add.ptr3.i = getelementptr i32, ptr %add.ptr.i109, i32 -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %maxsize.i) #10
  %167 = ptrtoint ptr %fh_maxsize to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %fh_maxsize, align 4
  %sub.i = sub i32 %168, %add129
  %div621.i = lshr i32 %sub.i, 2
  %169 = ptrtoint ptr %maxsize.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %div621.i, ptr %maxsize.i, align 4
  %ex_flags.i111 = getelementptr inbounds %struct.svc_export, ptr %exp, i32 0, i32 2
  %170 = ptrtoint ptr %ex_flags.i111 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %ex_flags.i111, align 4
  %and.i112 = lshr i32 %171, 10
  %and.lobit.i = and i32 %and.i112, 1
  %172 = xor i32 %and.lobit.i, 1
  %call.i = call i32 @exportfs_encode_fh(ptr noundef %dentry, ptr noundef %add.ptr3.i, ptr noundef nonnull %maxsize.i, i32 noundef %172) #10
  %conv.i113 = trunc i32 %call.i to i8
  %173 = ptrtoint ptr %maxsize.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %maxsize.i, align 4
  %mul.i = shl i32 %174, 2
  %175 = ptrtoint ptr %fhp to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %fhp, align 8
  %add.i = add i32 %176, %mul.i
  store i32 %add.i, ptr %fhp, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %maxsize.i) #10
  br label %_fh_update.exit

_fh_update.exit:                                  ; preds = %if.then.i114, %if.then58._fh_update.exit_crit_edge
  %conv.sink.i = phi i8 [ %conv.i113, %if.then.i114 ], [ 0, %if.then58._fh_update.exit_crit_edge ]
  %177 = getelementptr inbounds %struct.knfsd_fh, ptr %fhp, i32 0, i32 1, i32 0, i32 3
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 %conv.sink.i, ptr %177, align 1
  br label %if.end59

if.end59:                                         ; preds = %_fh_update.exit, %mk_fsid.exit.if.end59_crit_edge
  %fh_fileid_type = getelementptr inbounds %struct.knfsd_fh, ptr %fhp, i32 0, i32 1, i32 0, i32 3
  %179 = ptrtoint ptr %fh_fileid_type to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %fh_fileid_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %180)
  %cmp62 = icmp eq i8 %180, -1
  br i1 %cmp62, label %if.then64, label %if.end59.cleanup_crit_edge

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then64:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  call void @fh_put(ptr noundef %fhp)
  br label %cleanup

cleanup:                                          ; preds = %if.then64, %if.end59.cleanup_crit_edge
  %retval.0 = phi i32 [ 45, %if.then64 ], [ 0, %if.end59.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fh_put(ptr noundef %fhp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fh_dentry = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 2
  %0 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fh_dentry, align 8
  %fh_export = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 3
  %2 = ptrtoint ptr %fh_export to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fh_export, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %fh_locked.i = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 4
  %4 = ptrtoint ptr %fh_locked.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fh_locked.i, align 8, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.then.fh_unlock.exit_crit_edge, label %if.then.i

if.then.fh_unlock.exit_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %fh_unlock.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @fh_fill_post_attrs(ptr noundef %fhp) #10
  %6 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fh_dentry, align 8
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_inode.i.i, align 8
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i.i) #10
  %10 = ptrtoint ptr %fh_locked.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %fh_locked.i, align 8
  br label %fh_unlock.exit

fh_unlock.exit:                                   ; preds = %if.then.i, %if.then.fh_unlock.exit_crit_edge
  %11 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %fh_dentry, align 8
  tail call void @dput(ptr noundef nonnull %1) #10
  %fh_post_saved.i = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 9
  %12 = ptrtoint ptr %fh_post_saved.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %fh_post_saved.i, align 8
  %fh_pre_saved.i = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 10
  %13 = ptrtoint ptr %fh_pre_saved.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %fh_pre_saved.i, align 1
  br label %if.end

if.end:                                           ; preds = %fh_unlock.exit, %entry.if.end_crit_edge
  %fh_want_write.i = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 5
  %14 = ptrtoint ptr %fh_want_write.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %fh_want_write.i, align 1, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i16 = icmp eq i8 %15, 0
  br i1 %tobool.not.i16, label %if.end.fh_drop_write.exit_crit_edge, label %if.then.i17

if.end.fh_drop_write.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %fh_drop_write.exit

if.then.i17:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %fh_want_write.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %fh_want_write.i, align 1
  %17 = ptrtoint ptr %fh_export to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fh_export, align 4
  %ex_path.i = getelementptr inbounds %struct.svc_export, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %ex_path.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ex_path.i, align 8
  tail call void @mnt_drop_write(ptr noundef %20) #10
  br label %fh_drop_write.exit

fh_drop_write.exit:                               ; preds = %if.then.i17, %if.end.fh_drop_write.exit_crit_edge
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %fh_drop_write.exit.if.end5_crit_edge, label %if.then3

fh_drop_write.exit.if.end5_crit_edge:             ; preds = %fh_drop_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then3:                                         ; preds = %fh_drop_write.exit
  %cd.i = getelementptr inbounds %struct.svc_export, ptr %3, i32 0, i32 13
  %21 = ptrtoint ptr %cd.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cd.i, align 8
  %ref.i.i = getelementptr inbounds %struct.cache_head, ptr %3, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref.i.i, i32 noundef 4) #10
  %23 = ptrtoint ptr %ref.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %ref.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %24)
  %cmp.i.i = icmp ult i32 %24, 3
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.then3.if.end.i.i_crit_edge

if.then3.if.end.i.i_crit_edge:                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then3
  %expiry_time.i.i = getelementptr inbounds %struct.cache_head, ptr %3, i32 0, i32 1
  %25 = ptrtoint ptr %expiry_time.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %expiry_time.i.i, align 8
  %nextcheck.i.i = getelementptr inbounds %struct.cache_detail, ptr %22, i32 0, i32 18
  %27 = ptrtoint ptr %nextcheck.i.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %nextcheck.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %28)
  %cmp1.i.i = icmp slt i64 %26, %28
  br i1 %cmp1.i.i, label %if.then.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %nextcheck.i.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %26, ptr %nextcheck.i.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then3.if.end.i.i_crit_edge
  %cache_put.i.i = getelementptr inbounds %struct.cache_detail, ptr %22, i32 0, i32 5
  %30 = ptrtoint ptr %cache_put.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cache_put.i.i, align 4
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !89
  tail call void @llvm.prefetch.p0(ptr %ref.i.i, i32 1, i32 3, i32 1) #10
  %32 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i, ptr %ref.i.i, i32 1, ptr elementtype(i32) %ref.i.i) #10, !srcloc !90
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.exp_put.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !84

if.end5.i.i.i.i.i.i.exp_put.exit_crit_edge:       ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %exp_put.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %ref.i.i, i32 noundef 3) #10
  br label %exp_put.exit

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !91
  tail call void %31(ptr noundef %ref.i.i) #10
  br label %exp_put.exit

exp_put.exit:                                     ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.exp_put.exit_crit_edge
  %33 = ptrtoint ptr %fh_export to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %fh_export, align 4
  br label %if.end5

if.end5:                                          ; preds = %exp_put.exit, %fh_drop_write.exit.if.end5_crit_edge
  %fh_no_wcc = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 6
  %34 = ptrtoint ptr %fh_no_wcc to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %fh_no_wcc, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fh_update(ptr noundef %fhp) local_unnamed_addr #0 align 64 {
entry:
  %maxsize.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fh_dentry = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 2
  %0 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fh_dentry, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

if.end:                                           ; preds = %entry
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %cmp.i = icmp eq ptr %3, null
  br i1 %cmp.i, label %do.end17, label %if.end3

if.end3:                                          ; preds = %if.end
  %fh_fileid_type = getelementptr inbounds %struct.knfsd_fh, ptr %fhp, i32 0, i32 1, i32 0, i32 3
  %4 = ptrtoint ptr %fh_fileid_type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fh_fileid_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.not = icmp eq i8 %5, 0
  br i1 %cmp.not, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %fh_export = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 3
  %6 = ptrtoint ptr %fh_export to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fh_export, align 4
  %dentry1.i = getelementptr inbounds %struct.svc_export, ptr %7, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %dentry1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dentry1.i, align 4
  %cmp.not.i = icmp eq ptr %9, %1
  br i1 %cmp.not.i, label %_fh_update.exit.thread, label %_fh_update.exit

_fh_update.exit.thread:                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %fh_fileid_type to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %fh_fileid_type, align 1
  br label %cleanup

_fh_update.exit:                                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %fh_fsid.i = getelementptr inbounds %struct.knfsd_fh, ptr %fhp, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %fhp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fhp, align 8
  %div20.i = lshr i32 %12, 2
  %add.ptr.i = getelementptr i32, ptr %fh_fsid.i, i32 %div20.i
  %add.ptr3.i = getelementptr i32, ptr %add.ptr.i, i32 -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %maxsize.i) #10
  %fh_maxsize.i = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 1
  %13 = ptrtoint ptr %fh_maxsize.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fh_maxsize.i, align 4
  %sub.i = sub i32 %14, %12
  %div621.i = lshr i32 %sub.i, 2
  %15 = ptrtoint ptr %maxsize.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %div621.i, ptr %maxsize.i, align 4
  %ex_flags.i = getelementptr inbounds %struct.svc_export, ptr %7, i32 0, i32 2
  %16 = ptrtoint ptr %ex_flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ex_flags.i, align 4
  %and.i = lshr i32 %17, 10
  %and.lobit.i = and i32 %and.i, 1
  %18 = xor i32 %and.lobit.i, 1
  %call.i = call i32 @exportfs_encode_fh(ptr noundef nonnull %1, ptr noundef %add.ptr3.i, ptr noundef nonnull %maxsize.i, i32 noundef %18) #10
  %conv.i = trunc i32 %call.i to i8
  %19 = ptrtoint ptr %maxsize.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %maxsize.i, align 4
  %mul.i = shl i32 %20, 2
  %21 = ptrtoint ptr %fhp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fhp, align 8
  %add.i = add i32 %22, %mul.i
  store i32 %add.i, ptr %fhp, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %maxsize.i) #10
  %23 = ptrtoint ptr %fh_fileid_type to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv.i, ptr %fh_fileid_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv.i)
  %cmp10 = icmp eq i8 %conv.i, -1
  %spec.select = select i1 %cmp10, i32 45, i32 0
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #13
  br label %cleanup

do.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull %1) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %do.end, %_fh_update.exit, %_fh_update.exit.thread, %if.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ 10006, %do.end17 ], [ 10006, %do.end ], [ 0, %if.end3.cleanup_crit_edge ], [ 0, %_fh_update.exit.thread ], [ %spec.select, %_fh_update.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fh_fill_pre_attrs(ptr nocapture noundef %fhp) local_unnamed_addr #0 align 64 {
entry:
  %p.i = alloca %struct.path, align 4
  %stat = alloca %struct.kstat, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fh_maxsize = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 1
  %0 = ptrtoint ptr %fh_maxsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fh_maxsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %1)
  %cmp = icmp eq i32 %1, 128
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %stat) #10
  %2 = call ptr @memset(ptr %stat, i32 255, i32 144)
  %fh_no_wcc = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 6
  %3 = ptrtoint ptr %fh_no_wcc to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %fh_no_wcc, align 2, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %fh_pre_saved = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 10
  %5 = ptrtoint ptr %fh_pre_saved to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %fh_pre_saved, align 1, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not = icmp eq i8 %6, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %fh_dentry = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 2
  %7 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fh_dentry, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %d_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %p.i) #10
  %11 = getelementptr inbounds %struct.path, ptr %p.i, i32 0, i32 1
  %fh_export.i = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 3
  %12 = ptrtoint ptr %fh_export.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fh_export.i, align 4
  %ex_path.i = getelementptr inbounds %struct.svc_export, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %ex_path.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ex_path.i, align 8
  %16 = ptrtoint ptr %p.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %p.i, align 4
  %17 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %8, ptr %11, align 4
  %call.i = call i32 @vfs_getattr(ptr noundef nonnull %p.i, ptr noundef nonnull %stat, i32 noundef 2047, i32 noundef 0) #10
  %call2.i = call i32 @nfserrno(i32 noundef %call.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %p.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %mtime = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 13
  %i_mtime = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 16
  %18 = call ptr @memcpy(ptr %mtime, ptr %i_mtime, i32 16)
  %ctime = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 14
  %i_ctime = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 17
  %19 = call ptr @memcpy(ptr %ctime, ptr %i_ctime, i32 16)
  %i_size = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 14
  %20 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %i_size, align 8
  %size = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 11
  %22 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %size, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  br i1 %cmp, label %if.then7, label %if.end5.if.end9_crit_edge

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then7:                                         ; preds = %if.end5
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 8
  %23 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i_sb.i, align 4
  %s_export_op.i = getelementptr inbounds %struct.super_block, ptr %24, i32 0, i32 9
  %25 = ptrtoint ptr %s_export_op.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_export_op.i, align 16
  %fetch_iversion.i = getelementptr inbounds %struct.export_operations, ptr %26, i32 0, i32 9
  %27 = ptrtoint ptr %fetch_iversion.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fetch_iversion.i, align 4
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  %call.i29 = call i64 %28(ptr noundef %10) #10
  br label %nfsd4_change_attribute.exit

if.else.i:                                        ; preds = %if.then7
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %24, i32 0, i32 10
  %29 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %30, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  %ctime11.i = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 14
  %31 = ptrtoint ptr %ctime11.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %ctime11.i, align 8
  br i1 %tobool5.not.i, label %if.else10.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.else.i
  %shl.i = shl i64 %32, 30
  %tv_nsec.i = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 14, i32 1
  %33 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tv_nsec.i, align 8
  %conv.i = sext i32 %34 to i64
  %add.i = add i64 %shl.i, %conv.i
  %i_version.i.i.i = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 38
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i.i, i32 noundef 8) #10
  %call.i.i15.i.i = call i64 @generic_atomic64_read(ptr noundef %i_version.i.i.i) #10
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %if.end.i.i.for.cond.i.i_crit_edge, %if.then6.i
  %cur.0.i.i = phi i64 [ %call.i.i15.i.i, %if.then6.i ], [ %call.i.i.i, %if.end.i.i.for.cond.i.i_crit_edge ]
  %and.i.i = and i64 %cur.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.not.i.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !92
  br label %inode_query_iversion.exit.i

if.end.i.i:                                       ; preds = %for.cond.i.i
  %or.i.i = or i64 %cur.0.i.i, 1
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i.i, i32 noundef 8) #10
  %call.i.i.i = call i64 @generic_atomic64_cmpxchg(ptr noundef %i_version.i.i.i, i64 noundef %cur.0.i.i, i64 noundef %or.i.i) #10
  %cmp.i.i = icmp eq i64 %call.i.i.i, %cur.0.i.i
  br i1 %cmp.i.i, label %if.end.i.i.inode_query_iversion.exit.i_crit_edge, label %if.end.i.i.for.cond.i.i_crit_edge, !prof !84

if.end.i.i.for.cond.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i

if.end.i.i.inode_query_iversion.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %inode_query_iversion.exit.i

inode_query_iversion.exit.i:                      ; preds = %if.end.i.i.inode_query_iversion.exit.i_crit_edge, %do.end.i.i
  %shr.i.i = lshr i64 %cur.0.i.i, 1
  %add9.i = add i64 %add.i, %shr.i.i
  br label %nfsd4_change_attribute.exit

if.else10.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %shl.i.i = shl i64 %32, 32
  %tv_nsec.i.i = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 14, i32 1
  %35 = ptrtoint ptr %tv_nsec.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tv_nsec.i.i, align 8
  %conv.i.i = sext i32 %36 to i64
  %add.i.i = add i64 %shl.i.i, %conv.i.i
  br label %nfsd4_change_attribute.exit

nfsd4_change_attribute.exit:                      ; preds = %if.else10.i, %inode_query_iversion.exit.i, %if.then.i
  %retval.0.i = phi i64 [ %call.i29, %if.then.i ], [ %add9.i, %inode_query_iversion.exit.i ], [ %add.i.i, %if.else10.i ]
  %fh_pre_change = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 14
  %37 = ptrtoint ptr %fh_pre_change to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %retval.0.i, ptr %fh_pre_change, align 8
  br label %if.end9

if.end9:                                          ; preds = %nfsd4_change_attribute.exit, %if.end5.if.end9_crit_edge
  %fh_pre_mtime = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 12
  %mtime10 = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 13
  %38 = call ptr @memcpy(ptr %fh_pre_mtime, ptr %mtime10, i32 16)
  %fh_pre_ctime = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 13
  %ctime11 = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 14
  %39 = call ptr @memcpy(ptr %fh_pre_ctime, ptr %ctime11, i32 16)
  %size12 = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 11
  %40 = ptrtoint ptr %size12 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %size12, align 8
  %fh_pre_size = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 11
  %42 = ptrtoint ptr %fh_pre_size to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %fh_pre_size, align 8
  %43 = ptrtoint ptr %fh_pre_saved to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %fh_pre_saved, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %stat) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fh_fill_post_attrs(ptr noundef %fhp) local_unnamed_addr #0 align 64 {
entry:
  %p.i = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fh_maxsize = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 1
  %0 = ptrtoint ptr %fh_maxsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fh_maxsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %1)
  %cmp = icmp eq i32 %1, 128
  %fh_dentry = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 2
  %2 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fh_dentry, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i, align 8
  %fh_no_wcc = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 6
  %6 = ptrtoint ptr %fh_no_wcc to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fh_no_wcc, align 2, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %fh_post_saved = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 9
  %8 = ptrtoint ptr %fh_post_saved to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %fh_post_saved, align 8, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool1.not = icmp eq i8 %9, 0
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %do.end

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #13
  br label %if.end4

if.end4:                                          ; preds = %do.end, %if.end.if.end4_crit_edge
  %fh_post_attr = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %p.i) #10
  %10 = getelementptr inbounds %struct.path, ptr %p.i, i32 0, i32 1
  %fh_export.i = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 3
  %11 = ptrtoint ptr %fh_export.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fh_export.i, align 4
  %ex_path.i = getelementptr inbounds %struct.svc_export, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %ex_path.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ex_path.i, align 8
  %15 = ptrtoint ptr %p.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %p.i, align 4
  %16 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fh_dentry, align 8
  %18 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %10, align 4
  %call.i = call i32 @vfs_getattr(ptr noundef nonnull %p.i, ptr noundef %fh_post_attr, i32 noundef 2047, i32 noundef 0) #10
  %call2.i = call i32 @nfserrno(i32 noundef %call.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %p.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool6.not = icmp eq i32 %call2.i, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %fh_post_saved to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %fh_post_saved, align 8
  %ctime = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 15, i32 14
  %i_ctime = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 17
  %20 = call ptr @memcpy(ptr %ctime, ptr %i_ctime, i32 16)
  br label %if.end11

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %fh_post_saved to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %fh_post_saved, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then7
  br i1 %cmp, label %if.then13, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then13:                                        ; preds = %if.end11
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %22 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_sb.i, align 4
  %s_export_op.i = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 9
  %24 = ptrtoint ptr %s_export_op.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_export_op.i, align 16
  %fetch_iversion.i = getelementptr inbounds %struct.export_operations, ptr %25, i32 0, i32 9
  %26 = ptrtoint ptr %fetch_iversion.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fetch_iversion.i, align 4
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  %call.i30 = call i64 %27(ptr noundef %5) #10
  br label %nfsd4_change_attribute.exit

if.else.i:                                        ; preds = %if.then13
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 10
  %28 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %29, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  %ctime11.i = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 15, i32 14
  %30 = ptrtoint ptr %ctime11.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %ctime11.i, align 8
  br i1 %tobool5.not.i, label %if.else10.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.else.i
  %shl.i = shl i64 %31, 30
  %tv_nsec.i = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 15, i32 14, i32 1
  %32 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tv_nsec.i, align 8
  %conv.i = sext i32 %33 to i64
  %add.i = add i64 %shl.i, %conv.i
  %i_version.i.i.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 38
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i.i, i32 noundef 8) #10
  %call.i.i15.i.i = call i64 @generic_atomic64_read(ptr noundef %i_version.i.i.i) #10
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %if.end.i.i.for.cond.i.i_crit_edge, %if.then6.i
  %cur.0.i.i = phi i64 [ %call.i.i15.i.i, %if.then6.i ], [ %call.i.i.i, %if.end.i.i.for.cond.i.i_crit_edge ]
  %and.i.i = and i64 %cur.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.not.i.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !92
  br label %inode_query_iversion.exit.i

if.end.i.i:                                       ; preds = %for.cond.i.i
  %or.i.i = or i64 %cur.0.i.i, 1
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i.i, i32 noundef 8) #10
  %call.i.i.i = call i64 @generic_atomic64_cmpxchg(ptr noundef %i_version.i.i.i, i64 noundef %cur.0.i.i, i64 noundef %or.i.i) #10
  %cmp.i.i = icmp eq i64 %call.i.i.i, %cur.0.i.i
  br i1 %cmp.i.i, label %if.end.i.i.inode_query_iversion.exit.i_crit_edge, label %if.end.i.i.for.cond.i.i_crit_edge, !prof !84

if.end.i.i.for.cond.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i

if.end.i.i.inode_query_iversion.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %inode_query_iversion.exit.i

inode_query_iversion.exit.i:                      ; preds = %if.end.i.i.inode_query_iversion.exit.i_crit_edge, %do.end.i.i
  %shr.i.i = lshr i64 %cur.0.i.i, 1
  %add9.i = add i64 %add.i, %shr.i.i
  br label %nfsd4_change_attribute.exit

if.else10.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %shl.i.i = shl i64 %31, 32
  %tv_nsec.i.i = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 15, i32 14, i32 1
  %34 = ptrtoint ptr %tv_nsec.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tv_nsec.i.i, align 8
  %conv.i.i = sext i32 %35 to i64
  %add.i.i = add i64 %shl.i.i, %conv.i.i
  br label %nfsd4_change_attribute.exit

nfsd4_change_attribute.exit:                      ; preds = %if.else10.i, %inode_query_iversion.exit.i, %if.then.i
  %retval.0.i = phi i64 [ %call.i30, %if.then.i ], [ %add9.i, %inode_query_iversion.exit.i ], [ %add.i.i, %if.else10.i ]
  %fh_post_change = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 16
  %36 = ptrtoint ptr %fh_post_change to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %retval.0.i, ptr %fh_post_change, align 8
  br label %cleanup

cleanup:                                          ; preds = %nfsd4_change_attribute.exit, %if.end11.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @exp_put(ptr noundef %exp) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %cd = getelementptr inbounds %struct.svc_export, ptr %exp, i32 0, i32 13
  %0 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cd, align 8
  %ref.i = getelementptr inbounds %struct.cache_head, ptr %exp, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref.i, i32 noundef 4) #10
  %2 = ptrtoint ptr %ref.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %ref.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp.i = icmp ult i32 %3, 3
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %expiry_time.i = getelementptr inbounds %struct.cache_head, ptr %exp, i32 0, i32 1
  %4 = ptrtoint ptr %expiry_time.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %expiry_time.i, align 8
  %nextcheck.i = getelementptr inbounds %struct.cache_detail, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %nextcheck.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %nextcheck.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %7)
  %cmp1.i = icmp slt i64 %5, %7
  br i1 %cmp1.i, label %if.then.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %nextcheck.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %5, ptr %nextcheck.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %cache_put.i = getelementptr inbounds %struct.cache_detail, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %cache_put.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cache_put.i, align 4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !89
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #10
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #10, !srcloc !90
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cache_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !84

if.end5.i.i.i.i.i.cache_put.exit_crit_edge:       ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cache_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #10
  br label %cache_put.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !91
  tail call void %10(ptr noundef %ref.i) #10
  br label %cache_put.exit

cache_put.exit:                                   ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cache_put.exit_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @fsid_source(ptr nocapture noundef readonly %fhp) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.knfsd_fh, ptr %fhp, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %cmp.not = icmp eq i8 %2, 1
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %fh_fsid_type = getelementptr inbounds %struct.knfsd_fh, ptr %fhp, i32 0, i32 1, i32 0, i32 2
  %3 = ptrtoint ptr %fh_fsid_type to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %fh_fsid_type, align 2
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.39)
  switch i8 %4, label %if.end.sw.epilog_crit_edge [
    i8 0, label %if.end.sw.bb_crit_edge
    i8 3, label %if.end.sw.bb_crit_edge27
    i8 2, label %if.end.sw.bb_crit_edge28
    i8 1, label %sw.bb6
  ]

if.end.sw.bb_crit_edge28:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.sw.bb_crit_edge27:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge27, %if.end.sw.bb_crit_edge28
  %fh_export = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 3
  %6 = ptrtoint ptr %fh_export to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fh_export, align 4
  %dentry.i = getelementptr inbounds %struct.svc_export, ptr %7, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dentry.i, align 4
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d_sb.i, align 4
  %s_type = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %s_type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_type, align 32
  %fs_flags = getelementptr inbounds %struct.file_system_type, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %fs_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fs_flags, align 4
  %and = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  %fh_export7 = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 3
  %16 = ptrtoint ptr %fh_export7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fh_export7, align 4
  %ex_flags = getelementptr inbounds %struct.svc_export, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %ex_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ex_flags, align 4
  %and8 = and i32 %19, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %sw.bb6.sw.epilog_crit_edge, label %sw.bb6.return_crit_edge

sw.bb6.return_crit_edge:                          ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb6.sw.epilog_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %fh_export12 = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 3
  %20 = ptrtoint ptr %fh_export12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fh_export12, align 4
  %ex_flags13 = getelementptr inbounds %struct.svc_export, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %ex_flags13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ex_flags13, align 4
  %and14 = and i32 %23, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end17, label %sw.epilog.return_crit_edge

sw.epilog.return_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end17:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %ex_uuid = getelementptr inbounds %struct.svc_export, ptr %21, i32 0, i32 7
  %24 = ptrtoint ptr %ex_uuid to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ex_uuid, align 4
  %tobool19.not = icmp eq ptr %25, null
  %. = select i1 %tobool19.not, i32 0, i32 2
  br label %return

return:                                           ; preds = %if.end17, %sw.epilog.return_crit_edge, %sw.bb6.return_crit_edge, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 0, %sw.bb.return_crit_edge ], [ 1, %sw.bb6.return_crit_edge ], [ 1, %sw.epilog.return_crit_edge ], [ %., %if.end17 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rqst_exp_find(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfsd_set_fh_dentry_badexport(ptr noundef %rqstp, ptr noundef %fhp, i32 noundef %status) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_set_fh_dentry_badexport, i32 0, i32 1), ptr blockaddress(@trace_nfsd_set_fh_dentry_badexport, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !93

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !73) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !84

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !73) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !94
  %call42 = tail call i32 @__traceiter_nfsd_set_fh_dentry_badexport(ptr noundef null, ptr noundef %rqstp, ptr noundef %fhp, i32 noundef %status) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !95
  %13 = tail call i32 @llvm.read_register.i32(metadata !73) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !73) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !84

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !73) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !96
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_set_fh_dentry_badexport, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_set_fh_dentry_badexport, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfsd_set_fh_dentry_badexport.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_nfsd_set_fh_dentry_badexport.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 212, ptr noundef nonnull @.str.26) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !97
  %31 = tail call i32 @llvm.read_register.i32(metadata !73) #10
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
declare dso_local i32 @nfserrno(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @prepare_creds() local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_cred(ptr noundef %_cred) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %tobool.not = icmp eq ptr %_cred, null
  br i1 %tobool.not, label %entry.if.end2_crit_edge, label %do.body

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end2

do.body:                                          ; preds = %entry
  %call.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %_cred) #10
  br i1 %call.i, label %if.then.i, label %do.body.__validate_creds.exit_crit_edge, !prof !87

do.body.__validate_creds.exit_crit_edge:          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %__validate_creds.exit

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__invalid_creds(ptr noundef nonnull %_cred, ptr noundef nonnull @.str.28, i32 noundef 286) #10
  br label %__validate_creds.exit

__validate_creds.exit:                            ; preds = %if.then.i, %do.body.__validate_creds.exit_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %_cred, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !98
  tail call void @llvm.prefetch.p0(ptr nonnull %_cred, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %_cred, ptr nonnull %_cred, i32 1, ptr nonnull elementtype(i32) %_cred) #10, !srcloc !99
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then1, label %__validate_creds.exit.if.end2_crit_edge

__validate_creds.exit.if.end2_crit_edge:          ; preds = %__validate_creds.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end2

if.then1:                                         ; preds = %__validate_creds.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__put_cred(ptr noundef nonnull %_cred) #10
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %__validate_creds.exit.if.end2_crit_edge, %entry.if.end2_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @override_creds(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @exportfs_decode_fh_raw(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd_acceptable(ptr nocapture noundef readonly %expv, ptr noundef %dentry) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ex_flags = getelementptr inbounds %struct.svc_export, ptr %expv, i32 0, i32 2
  %0 = ptrtoint ptr %ex_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ex_flags, align 4
  %and = and i32 %1, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup25_crit_edge

entry.cleanup25_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup25

if.end:                                           ; preds = %entry
  %tobool.not.i = icmp eq ptr %dentry, null
  br i1 %tobool.not.i, label %if.end.dget.exit_crit_edge, label %if.then.i

if.end.dget.exit_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %dget.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i) #10
  br label %dget.exit

dget.exit:                                        ; preds = %if.then.i, %if.end.dget.exit_crit_edge
  %dentry1 = getelementptr inbounds %struct.svc_export, ptr %expv, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %dentry1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dentry1, align 4
  %cmp.not51 = icmp eq ptr %3, %dentry
  br i1 %cmp.not51, label %dget.exit.while.end_crit_edge, label %dget.exit.land.rhs_crit_edge

dget.exit.land.rhs_crit_edge:                     ; preds = %dget.exit
  br label %land.rhs

dget.exit.while.end_crit_edge:                    ; preds = %dget.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs:                                         ; preds = %cleanup.land.rhs_crit_edge, %dget.exit.land.rhs_crit_edge
  %tdentry.052 = phi ptr [ %call3, %cleanup.land.rhs_crit_edge ], [ %dentry, %dget.exit.land.rhs_crit_edge ]
  %d_parent = getelementptr inbounds %struct.dentry, ptr %tdentry.052, i32 0, i32 3
  %4 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_parent, align 8
  %cmp2.not = icmp eq ptr %tdentry.052, %5
  br i1 %cmp2.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %call3 = tail call ptr @dget_parent(ptr noundef %tdentry.052) #10
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %call3, i32 0, i32 5
  %6 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode.i, align 8
  %call5 = tail call i32 @inode_permission(ptr noundef nonnull @init_user_ns, ptr noundef %7, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dput(ptr noundef %call3) #10
  br label %while.end

cleanup:                                          ; preds = %while.body
  tail call void @dput(ptr noundef %tdentry.052) #10
  %8 = ptrtoint ptr %dentry1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dentry1, align 4
  %cmp.not = icmp eq ptr %call3, %9
  br i1 %cmp.not, label %cleanup.while.end_crit_edge, label %cleanup.land.rhs_crit_edge

cleanup.land.rhs_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %cleanup.thread, %land.rhs.while.end_crit_edge, %dget.exit.while.end_crit_edge
  %tdentry.049 = phi ptr [ %tdentry.052, %cleanup.thread ], [ %dentry, %dget.exit.while.end_crit_edge ], [ %tdentry.052, %land.rhs.while.end_crit_edge ], [ %call3, %cleanup.while.end_crit_edge ]
  %10 = ptrtoint ptr %dentry1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dentry1, align 4
  %cmp11.not = icmp eq ptr %tdentry.049, %11
  br i1 %cmp11.not, label %while.end.if.end21_crit_edge, label %do.body

while.end.if.end21_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

do.body:                                          ; preds = %while.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %12 = load i32, ptr @nfsd_debug, align 4
  %and13 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %do.body.if.end21_crit_edge, label %do.end

do.body.if.end21_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %tdentry.049, ptr noundef %tdentry.049) #13
  br label %if.end21

if.end21:                                         ; preds = %do.end, %do.body.if.end21_crit_edge, %while.end.if.end21_crit_edge
  %13 = ptrtoint ptr %dentry1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dentry1, align 4
  %cmp24 = icmp eq ptr %tdentry.049, %14
  %conv = zext i1 %cmp24 to i32
  tail call void @dput(ptr noundef %tdentry.049) #10
  br label %cleanup25

cleanup25:                                        ; preds = %if.end21, %entry.cleanup25_crit_edge
  %retval.0 = phi i32 [ %conv, %if.end21 ], [ 1, %entry.cleanup25_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfsd_set_fh_dentry_badhandle(ptr noundef %rqstp, ptr noundef %fhp, i32 noundef %status) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_set_fh_dentry_badhandle, i32 0, i32 1), ptr blockaddress(@trace_nfsd_set_fh_dentry_badhandle, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !93

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !73) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !84

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !73) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !101
  %call42 = tail call i32 @__traceiter_nfsd_set_fh_dentry_badhandle(ptr noundef null, ptr noundef %rqstp, ptr noundef %fhp, i32 noundef %status) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !102
  %13 = tail call i32 @llvm.read_register.i32(metadata !73) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !73) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !84

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !73) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !96
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_set_fh_dentry_badhandle, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_set_fh_dentry_badhandle, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfsd_set_fh_dentry_badhandle.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_nfsd_set_fh_dentry_badhandle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 213, ptr noundef nonnull @.str.26) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !97
  %31 = tail call i32 @llvm.read_register.i32(metadata !73) #10
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
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfsd_set_fh_dentry_badexport(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @creds_are_invalid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__invalid_creds(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dget_parent(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfsd_set_fh_dentry_badhandle(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsexp_flags(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @svc_print_addr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_setuser(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exportfs_encode_fh(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_getattr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_cmpxchg(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mnt_drop_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !37, !39, !41, !43, !45, !46, !47, !48, !50, !51, !52, !53, !55, !56, !58, !60, !61, !62, !63, !65, !66, !68, !69, !70, !71}
!llvm.named.register.sp = !{!73}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/nfsd/nfsfh.c", i32 334, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @fh_verify._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @fh_verify._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/nfsd/nfsfh.c", i32 396, i32 3}
!8 = !{ptr @fh_verify._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @fh_verify._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/nfsd/nfsfh.c", i32 533, i32 2}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @fh_compose._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @fh_compose._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/nfsd/nfsfh.c", i32 552, i32 3}
!17 = !{ptr @fh_compose._entry.8, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @fh_compose._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/nfsd/nfsfh.c", i32 556, i32 3}
!21 = !{ptr @fh_compose._entry.11, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @fh_compose._entry_ptr.13, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/nfsd/nfsfh.c", i32 606, i32 2}
!25 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @fh_update._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @fh_update._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/nfsd/nfsfh.c", i32 609, i32 2}
!30 = !{ptr @fh_update._entry.16, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @fh_update._entry_ptr.18, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/nfsd/nfsfh.c", i32 663, i32 3}
!34 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @fh_fill_post_attrs._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @fh_fill_post_attrs._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @SVCFH_fmt.buf, !38, !"buf", i1 false, i1 false}
!38 = !{!"../fs/nfsd/nfsfh.c", i32 707, i32 14}
!39 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/nfsd/nfsfh.c", i32 710, i32 10}
!41 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/nfsd/nfsfh.c", i32 711, i32 15}
!43 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/nfsd/nfsfh.c", i32 274, i32 3}
!45 = !{ptr @.str.24, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @nfsd_set_fh_dentry._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @nfsd_set_fh_dentry._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = distinct !{null, !49, !"__already_done", i1 false, i1 false}
!49 = !{!"../fs/nfsd/trace.h", i32 212, i32 1}
!50 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!51 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!52 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!53 = distinct !{null, !54, !"__already_done", i1 false, i1 false}
!54 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!55 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../include/linux/cred.h", i32 286, i32 3}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/nfsd/nfsfh.c", i32 53, i32 3}
!60 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @nfsd_acceptable._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @nfsd_acceptable._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = distinct !{null, !64, !"__already_done", i1 false, i1 false}
!64 = !{!"../fs/nfsd/trace.h", i32 213, i32 1}
!65 = distinct !{null, !64, !"__warned", i1 false, i1 false}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/nfsd/nfsfh.c", i32 110, i32 3}
!68 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @nfsd_setuser_and_check_port._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @nfsd_setuser_and_check_port._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = distinct !{null, !72, !"__already_done", i1 false, i1 false}
!72 = !{!"../fs/nfsd/nfsfh.c", i32 74, i32 4}
!73 = !{!"sp"}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!83 = !{!"branch_weights", i32 4001, i32 1}
!84 = !{!"branch_weights", i32 2000, i32 1}
!85 = !{i8 0, i8 2}
!86 = !{i64 2148447241, i64 2148447273, i64 2148447302, i64 2148447336, i64 2148447367, i64 2148447390}
!87 = !{!"branch_weights", i32 1, i32 2000}
!88 = !{i64 2157387889, i64 2157388369, i64 2157387926, i64 2157387982, i64 2157388016, i64 2157388040, i64 2157388081, i64 2157388102, i64 2157388130, i64 2157388164}
!89 = !{i64 2148535242}
!90 = !{i64 2148449706, i64 2148449738, i64 2148449767, i64 2148449801, i64 2148449832, i64 2148449855}
!91 = !{i64 2149581212}
!92 = !{i64 2157385637}
!93 = !{i64 2148259104, i64 2148259109, i64 2148259122, i64 2148259166, i64 2148259200, i64 2148259221}
!94 = !{i64 2157615262}
!95 = !{i64 2157615517}
!96 = !{i64 2149281784}
!97 = !{i64 2149282820}
!98 = !{i64 2148534163}
!99 = !{i64 2148448896, i64 2148448928, i64 2148448957, i64 2148448991, i64 2148449022, i64 2148449045}
!100 = !{i64 2148534392}
!101 = !{i64 2157633626}
!102 = !{i64 2157633881}
