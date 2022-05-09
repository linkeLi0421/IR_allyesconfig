; ModuleID = '/llk/IR_all_yes/fs/nfs/nfs4idmap.c_pt.bc'
source_filename = "../fs/nfs/nfs4idmap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nfs_map_string_to_numeric\22, \22a\22\09"
module asm "\09.weak\09__crc_nfs_map_string_to_numeric\09\09\09\09"
module asm "\09.long\09__crc_nfs_map_string_to_numeric\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_map_string_to_numeric:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_map_string_to_numeric\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_map_string_to_numeric:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.key_type = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.lock_class_key }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon.5 }
%union.anon.5 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rpc_pipe_dir_object_ops = type { ptr, ptr }
%struct.rpc_pipe_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.match_token = type { i32, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.16 }
%union.anon.16 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.27, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.27 = type { %struct.anon.28 }
%struct.anon.28 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.85 }
%union.anon.85 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.nfs_fattr = type { i32, i16, i32, %struct.kuid_t, %struct.kgid_t, i32, i64, %union.anon, %struct.nfs_fsid, i64, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64, i64, %struct.timespec64, %struct.timespec64, i32, i32, ptr, ptr, ptr, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { i64 }
%struct.nfs_fsid = type { i64, i64 }
%struct.timespec64 = type { i64, i32 }
%struct.nfs4_string = type { i32, ptr }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.18, ptr, %struct.rw_semaphore, ptr, ptr, %union.anon.19, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.20, %union.anon.25, ptr }
%union.anon.18 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.19 = type { i64 }
%union.anon.20 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.21, ptr, ptr, ptr }
%union.anon.21 = type { i32 }
%union.anon.25 = type { %union.key_payload }
%union.key_payload = type { [4 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.58 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.58 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.idmap = type { %struct.rpc_pipe_dir_object, ptr, ptr, %struct.mutex, ptr }
%struct.rpc_pipe_dir_object = type { %struct.list_head, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.nfs_client = type { %struct.refcount_struct, %struct.atomic_t, i32, i32, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i32, ptr, %struct.list_head, i64, %struct.nfs4_verifier, i32, %struct.spinlock, i32, i32, %struct.delayed_work, %struct.rpc_wait_queue, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i8, ptr, ptr, ptr, i32, %struct.wait_queue_head, [48 x i8], ptr, %struct.list_head }
%struct.__kernel_sockaddr_storage = type { %union.anon.1 }
%union.anon.1 = type { ptr, [124 x i8] }
%struct.nfs4_verifier = type { [8 x i8] }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rpc_clnt = type { %struct.refcount_struct, i32, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.spinlock, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, %struct.atomic_t, i32, [65 x i8], %struct.rpc_pipe_dir_head, ptr, %struct.rpc_rtt, %struct.rpc_timeout, ptr, ptr, ptr, ptr, %union.anon.152, ptr, i32 }
%struct.rpc_pipe_dir_head = type { %struct.list_head, ptr }
%struct.rpc_rtt = type { i32, [5 x i32], [5 x i32], [5 x i32] }
%struct.rpc_timeout = type { i32, i32, i32, i32, i8 }
%union.anon.152 = type { %struct.work_struct }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.nfs_server = type { ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nfs_fsid, i64, %struct.timespec64, i32, ptr, i32, %struct.nfs_auth_info, ptr, ptr, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, %struct.rpc_wait_queue, ptr, %struct.rb_root, %struct.ida, %struct.ida, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, ptr, %struct.atomic_t, %struct.__kernel_sockaddr_storage, i32, i32, i16, i16, %struct.rpc_wait_queue, i32, ptr, i8 }
%struct.nfs_auth_info = type { i32, [12 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.substring_t = type { ptr, ptr }
%struct.request_key_auth = type { %struct.callback_head, ptr, ptr, ptr, ptr, i32, i32, [8 x i8] }
%struct.idmap_legacy_upcalldata = type { %struct.rpc_pipe_msg, %struct.idmap_msg, ptr, ptr }
%struct.rpc_pipe_msg = type { %struct.list_head, ptr, i32, i32, i32 }
%struct.idmap_msg = type { i8, i8, [128 x i8], i32, i8 }
%struct.rpc_pipe = type { %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, %struct.delayed_work, ptr, %struct.spinlock, ptr }
%struct.file = type { %union.anon.10, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.10 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.rpc_inode = type { %struct.inode, ptr, ptr, %struct.wait_queue_head }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.154, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.155, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.156, ptr, %struct.address_space, %struct.list_head, %union.anon.157, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.154 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.155 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.156 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.157 = type { ptr }
%struct.user_key_payload = type { %struct.callback_head, i16, [6 x i8], [0 x i8] }

@__kstrtab_nfs_map_string_to_numeric = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_map_string_to_numeric = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_map_string_to_numeric = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_map_string_to_numeric to i32), ptr @__kstrtab_nfs_map_string_to_numeric, ptr @__kstrtabns_nfs_map_string_to_numeric }, section "___ksymtab_gpl+nfs_map_string_to_numeric", align 4
@nfs_idmap_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\015NFS: Registering the %s key type\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nfs_idmap_init\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/nfs/nfs4idmap.c\00", [45 x i8] zeroinitializer }, align 32
@nfs_idmap_init._entry_ptr = internal global ptr @nfs_idmap_init._entry, section ".printk_index", align 4
@key_type_id_resolver = internal global { %struct.key_type, [36 x i8] } { %struct.key_type { ptr @.str.9, i32 0, i32 0, ptr null, ptr @user_preparse, ptr @user_free_preparse, ptr @generic_key_instantiate, ptr null, ptr null, ptr null, ptr @user_revoke, ptr @user_destroy, ptr @user_describe, ptr @user_read, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, %struct.lock_class_key zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c".id_resolver\00", [19 x i8] zeroinitializer }, align 32
@key_type_id_resolver_legacy = internal global { %struct.key_type, [36 x i8] } { %struct.key_type { ptr @.str.11, i32 0, i32 0, ptr null, ptr @user_preparse, ptr @user_free_preparse, ptr @generic_key_instantiate, ptr null, ptr null, ptr null, ptr @user_revoke, ptr @user_destroy, ptr @user_describe, ptr @user_read, ptr @nfs_idmap_legacy_upcall, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, %struct.lock_class_key zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@id_resolver_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@nfs_idmap_new.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&idmap->idmap_mutex\00", [44 x i8] zeroinitializer }, align 32
@nfs_idmap_pipe_dir_object_ops = internal constant { %struct.rpc_pipe_dir_object_ops, [24 x i8] } { %struct.rpc_pipe_dir_object_ops { ptr @nfs_idmap_pipe_create, ptr @nfs_idmap_pipe_destroy }, [24 x i8] zeroinitializer }, align 32
@idmap_upcall_ops = internal constant { %struct.rpc_pipe_ops, [44 x i8] } { %struct.rpc_pipe_ops { ptr @rpc_pipe_generic_upcall, ptr @idmap_pipe_downcall, ptr @idmap_release_pipe, ptr null, ptr @idmap_pipe_destroy_msg }, [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"uid\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gid\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"user\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"group\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"id_resolver\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/cred.h\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"id_legacy\00", [22 x i8] zeroinitializer }, align 32
@nfs_idmap_tokens = internal constant { [5 x %struct.match_token], [56 x i8] } { [5 x %struct.match_token] [%struct.match_token { i32 0, ptr @.str.12 }, %struct.match_token { i32 1, ptr @.str.13 }, %struct.match_token { i32 2, ptr @.str.14 }, %struct.match_token { i32 3, ptr @.str.15 }, %struct.match_token { i32 4, ptr null }], [56 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"uid:%s\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gid:%s\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"user:%s\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"group:%s\00", [23 x i8] zeroinitializer }, align 32
@nfs_idmap_prepare_pipe_upcall.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"idmap\00", [26 x i8] zeroinitializer }, align 32
@nfs_idmap_cache_timeout = external dso_local local_unnamed_addr global i32, align 4
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str.20 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@user_key_payload_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/keys/user-type.h\00", [39 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.25 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__tracepoint_nfs4_map_name_to_uid = external dso_local global %struct.tracepoint, align 4
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/nfs/nfs4trace.h\00", [45 x i8] zeroinitializer }, align 32
@trace_nfs4_map_name_to_uid.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_nfs4_map_group_to_gid = external dso_local global %struct.tracepoint, align 4
@trace_nfs4_map_group_to_gid.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@__tracepoint_nfs4_map_uid_to_name = external dso_local global %struct.tracepoint, align 4
@trace_nfs4_map_uid_to_name.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_nfs4_map_gid_to_group = external dso_local global %struct.tracepoint, align 4
@trace_nfs4_map_gid_to_group.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 128]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.31 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 203, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant [21 x i8] c"key_type_id_resolver\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 186, i32 24 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 210, i32 26 }
@___asan_gen_.49 = private unnamed_addr constant [28 x i8] c"key_type_id_resolver_legacy\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 411, i32 24 }
@___asan_gen_.52 = private unnamed_addr constant [18 x i8] c"id_resolver_cache\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 58, i32 27 }
@___asan_gen_.55 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 465, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant [30 x i8] c"nfs_idmap_pipe_dir_object_ops\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 449, i32 45 }
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"idmap_upcall_ops\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 404, i32 34 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 750, i32 44 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 767, i32 44 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 785, i32 35 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 799, i32 35 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 187, i32 11 }
@___asan_gen_.83 = private unnamed_addr constant [24 x i8] c"../include/linux/cred.h\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 286, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 412, i32 11 }
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"nfs_idmap_tokens\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 390, i32 28 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 391, i32 18 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 392, i32 18 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 393, i32 19 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 394, i32 20 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 442, i32 34 }
@___asan_gen_.107 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 156, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 291, i32 51 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 695, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant [28 x i8] c"../include/keys/user-type.h\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 48, i32 36 }
@___asan_gen_.125 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 723, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant [22 x i8] c"../fs/nfs/nfs4trace.h\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 1461, i32 1 }
@___asan_gen_.131 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 108, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.134 = private constant [22 x i8] c"../fs/nfs/nfs4idmap.c\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 183, i32 31 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__ksymtab_nfs_map_string_to_numeric, ptr @nfs_idmap_init._entry, ptr @nfs_idmap_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @key_type_id_resolver, ptr @.str.3, ptr @key_type_id_resolver_legacy, ptr @id_resolver_cache, ptr @nfs_idmap_new.__key, ptr @.str.4, ptr @nfs_idmap_pipe_dir_object_ops, ptr @idmap_upcall_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @nfs_idmap_tokens, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_idmap_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_type_id_resolver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_type_id_resolver_legacy to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_resolver_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_idmap_new.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_idmap_pipe_dir_object_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idmap_upcall_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_idmap_tokens to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @nfs_fattr_init_names(ptr nocapture noundef writeonly %fattr, ptr noundef %owner_name, ptr noundef %group_name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %owner_name1 = getelementptr inbounds %struct.nfs_fattr, ptr %fattr, i32 0, i32 21
  %0 = ptrtoint ptr %owner_name1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %owner_name, ptr %owner_name1, align 8
  %group_name2 = getelementptr inbounds %struct.nfs_fattr, ptr %fattr, i32 0, i32 22
  %1 = ptrtoint ptr %group_name2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %group_name, ptr %group_name2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs_fattr_free_names(ptr nocapture noundef %fattr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fattr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fattr, align 8
  %and = and i32 %1, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %and.i = and i32 %1, -8388609
  %2 = ptrtoint ptr %fattr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and.i, ptr %fattr, align 8
  %owner_name.i = getelementptr inbounds %struct.nfs_fattr, ptr %fattr, i32 0, i32 21
  %3 = ptrtoint ptr %owner_name.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %owner_name.i, align 8
  %data.i = getelementptr inbounds %struct.nfs4_string, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i, align 4
  tail call void @kfree(ptr noundef %6) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %fattr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fattr, align 8
  %and2 = and i32 %8, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %and.i9 = and i32 %8, -16777217
  %9 = ptrtoint ptr %fattr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and.i9, ptr %fattr, align 8
  %group_name.i = getelementptr inbounds %struct.nfs_fattr, ptr %fattr, i32 0, i32 22
  %10 = ptrtoint ptr %group_name.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %group_name.i, align 4
  %data.i10 = getelementptr inbounds %struct.nfs4_string, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %data.i10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i10, align 4
  tail call void @kfree(ptr noundef %13) #12
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs_fattr_map_and_free_names(ptr nocapture noundef readonly %server, ptr nocapture noundef %fattr) local_unnamed_addr #1 align 64 {
entry:
  %gid.i = alloca %struct.kgid_t, align 4
  %uid.i = alloca %struct.kuid_t, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %owner_name.i = getelementptr inbounds %struct.nfs_fattr, ptr %fattr, i32 0, i32 21
  %0 = ptrtoint ptr %owner_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %owner_name.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uid.i) #12
  %2 = ptrtoint ptr %uid.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %uid.i, align 4, !annotation !99
  %3 = ptrtoint ptr %fattr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fattr, align 8
  %and.i = and i32 %4, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %nfs_fattr_map_owner_name.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %data.i = getelementptr inbounds %struct.nfs4_string, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 4
  %call.i = call i32 @nfs_map_name_to_uid(ptr noundef %server, ptr noundef %6, i32 noundef %8, ptr noundef nonnull %uid.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then1.i, label %if.end.i.if.then_crit_edge

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %uid2.i = getelementptr inbounds %struct.nfs_fattr, ptr %fattr, i32 0, i32 3
  %9 = ptrtoint ptr %uid.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %uid.i, align 4
  %11 = ptrtoint ptr %uid2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %uid2.i, align 4
  %12 = ptrtoint ptr %fattr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fattr, align 8
  %or.i = or i32 %13, 8
  store i32 %or.i, ptr %fattr, align 8
  br label %if.then

nfs_fattr_map_owner_name.exit:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uid.i) #12
  br label %if.end

if.then:                                          ; preds = %if.then1.i, %if.end.i.if.then_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uid.i) #12
  %14 = ptrtoint ptr %fattr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fattr, align 8
  %and.i8 = and i32 %15, -8388609
  store i32 %and.i8, ptr %fattr, align 8
  %16 = ptrtoint ptr %owner_name.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %owner_name.i, align 8
  %data.i10 = getelementptr inbounds %struct.nfs4_string, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %data.i10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i10, align 4
  tail call void @kfree(ptr noundef %19) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %nfs_fattr_map_owner_name.exit
  %group_name.i = getelementptr inbounds %struct.nfs_fattr, ptr %fattr, i32 0, i32 22
  %20 = ptrtoint ptr %group_name.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %group_name.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gid.i) #12
  %22 = ptrtoint ptr %gid.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %gid.i, align 4, !annotation !99
  %23 = ptrtoint ptr %fattr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fattr, align 8
  %and.i11 = and i32 %24, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i11)
  %tobool.not.i12 = icmp eq i32 %and.i11, 0
  br i1 %tobool.not.i12, label %nfs_fattr_map_group_name.exit, label %if.end.i16

if.end.i16:                                       ; preds = %if.end
  %data.i13 = getelementptr inbounds %struct.nfs4_string, ptr %21, i32 0, i32 1
  %25 = ptrtoint ptr %data.i13 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i13, align 4
  %27 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %21, align 4
  %call.i14 = call i32 @nfs_map_group_to_gid(ptr noundef %server, ptr noundef %26, i32 noundef %28, ptr noundef nonnull %gid.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14)
  %cmp.i15 = icmp eq i32 %call.i14, 0
  br i1 %cmp.i15, label %if.then1.i18, label %if.end.i16.if.then2_crit_edge

if.end.i16.if.then2_crit_edge:                    ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then2

if.then1.i18:                                     ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #14
  %gid2.i = getelementptr inbounds %struct.nfs_fattr, ptr %fattr, i32 0, i32 4
  %29 = ptrtoint ptr %gid.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %gid.i, align 4
  %31 = ptrtoint ptr %gid2.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %gid2.i, align 8
  %32 = ptrtoint ptr %fattr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fattr, align 8
  %or.i17 = or i32 %33, 16
  store i32 %or.i17, ptr %fattr, align 8
  br label %if.then2

nfs_fattr_map_group_name.exit:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gid.i) #12
  br label %if.end3

if.then2:                                         ; preds = %if.then1.i18, %if.end.i16.if.then2_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gid.i) #12
  %34 = ptrtoint ptr %fattr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %fattr, align 8
  %and.i19 = and i32 %35, -16777217
  store i32 %and.i19, ptr %fattr, align 8
  %36 = ptrtoint ptr %group_name.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %group_name.i, align 4
  %data.i21 = getelementptr inbounds %struct.nfs4_string, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %data.i21 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data.i21, align 4
  tail call void @kfree(ptr noundef %39) #12
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %nfs_fattr_map_group_name.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs_map_string_to_numeric(ptr noundef readonly %name, i32 noundef %namelen, ptr nocapture noundef writeonly %res) #1 align 64 {
entry:
  %val = alloca i32, align 4
  %buf = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !99
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf) #12
  %1 = call ptr @memset(ptr %buf, i32 255, i32 16)
  %call = tail call ptr @memchr(ptr noundef %name, i32 noundef 64, i32 noundef %namelen) #15
  %cmp.not = icmp ne ptr %call, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %namelen)
  %cmp1 = icmp ugt i32 %namelen, 15
  %or.cond = or i1 %cmp1, %cmp.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = call ptr @memcpy(ptr %buf, ptr %name, i32 %namelen)
  %arrayidx = getelementptr [16 x i8], ptr %buf, i32 0, i32 %namelen
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %arrayidx, align 1
  %call.i = call i32 @_kstrtoul(ptr noundef nonnull %buf, i32 noundef 0, ptr noundef nonnull %val) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4.not = icmp eq i32 %call.i, 0
  br i1 %cmp4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  %6 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %res, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end6 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @memchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs_idmap_init() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @key_type_id_resolver, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %0) #16
  %call1 = tail call ptr @prepare_kernel_cred(ptr noundef null) #12
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call ptr @keyring_alloc(ptr noundef nonnull @.str.3, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, ptr noundef nonnull %call1, i32 noundef 520290304, i32 noundef 2, ptr noundef null, ptr noundef null) #12
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %1 = ptrtoint ptr %call5 to i32
  br label %do.body.i

if.end9:                                          ; preds = %if.end
  %call10 = tail call i32 @register_key_type(ptr noundef nonnull @key_type_id_resolver) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %if.end9.failed_put_key_crit_edge, label %if.end12

if.end9.failed_put_key_crit_edge:                 ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %failed_put_key

if.end12:                                         ; preds = %if.end9
  %call13 = tail call i32 @register_key_type(ptr noundef nonnull @key_type_id_resolver_legacy) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %failed_reg_legacy, label %if.end16

if.end16:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %flags = getelementptr inbounds %struct.key, ptr %call5, i32 0, i32 15
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags) #12
  %thread_keyring = getelementptr inbounds %struct.cred, ptr %call1, i32 0, i32 21
  %2 = ptrtoint ptr %thread_keyring to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call5, ptr %thread_keyring, align 4
  %jit_keyring = getelementptr inbounds %struct.cred, ptr %call1, i32 0, i32 18
  %3 = ptrtoint ptr %jit_keyring to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %jit_keyring, align 4
  store ptr %call1, ptr @id_resolver_cache, align 4
  br label %cleanup

failed_reg_legacy:                                ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @unregister_key_type(ptr noundef nonnull @key_type_id_resolver) #12
  br label %failed_put_key

failed_put_key:                                   ; preds = %failed_reg_legacy, %if.end9.failed_put_key_crit_edge
  %ret.0 = phi i32 [ %call10, %if.end9.failed_put_key_crit_edge ], [ %call13, %failed_reg_legacy ]
  tail call void @key_put(ptr noundef %call5) #12
  br label %do.body.i

do.body.i:                                        ; preds = %failed_put_key, %if.then7
  %ret.1 = phi i32 [ %1, %if.then7 ], [ %ret.0, %failed_put_key ]
  %call.i.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %call1) #12
  br i1 %call.i.i, label %if.then.i.i, label %do.body.i.__validate_creds.exit.i_crit_edge, !prof !100

do.body.i.__validate_creds.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__validate_creds.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__invalid_creds(ptr noundef nonnull %call1, ptr noundef nonnull @.str.10, i32 noundef 286) #12
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i, %do.body.i.__validate_creds.exit.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call1, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !101
  tail call void @llvm.prefetch.p0(ptr nonnull %call1, i32 1, i32 3, i32 1) #12
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call1, ptr nonnull %call1, i32 1, ptr nonnull elementtype(i32) %call1) #12, !srcloc !102
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !103
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then1.i, label %__validate_creds.exit.i.cleanup_crit_edge

__validate_creds.exit.i.cleanup_crit_edge:        ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then1.i:                                       ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__put_cred(ptr noundef nonnull %call1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then1.i, %__validate_creds.exit.i.cleanup_crit_edge, %if.end16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ -12, %entry.cleanup_crit_edge ], [ %ret.1, %__validate_creds.exit.i.cleanup_crit_edge ], [ %ret.1, %if.then1.i ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @prepare_kernel_cred(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @keyring_alloc(ptr noundef, [1 x i32], [1 x i32], ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_key_type(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_key_type(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_put(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs_idmap_quit() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @id_resolver_cache, align 4
  %thread_keyring = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 21
  %1 = ptrtoint ptr %thread_keyring to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %thread_keyring, align 4
  tail call void @key_revoke(ptr noundef %2) #12
  tail call void @unregister_key_type(ptr noundef nonnull @key_type_id_resolver) #12
  tail call void @unregister_key_type(ptr noundef nonnull @key_type_id_resolver_legacy) #12
  %3 = load ptr, ptr @id_resolver_cache, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.put_cred.exit_crit_edge, label %do.body.i

entry.put_cred.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_cred.exit

do.body.i:                                        ; preds = %entry
  %call.i.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %3) #12
  br i1 %call.i.i, label %if.then.i.i, label %do.body.i.__validate_creds.exit.i_crit_edge, !prof !100

do.body.i.__validate_creds.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__validate_creds.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__invalid_creds(ptr noundef nonnull %3, ptr noundef nonnull @.str.10, i32 noundef 286) #12
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i, %do.body.i.__validate_creds.exit.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %3, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !101
  tail call void @llvm.prefetch.p0(ptr nonnull %3, i32 1, i32 3, i32 1) #12
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %3, ptr nonnull %3, i32 1, ptr nonnull elementtype(i32) %3) #12, !srcloc !102
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !103
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then1.i, label %__validate_creds.exit.i.put_cred.exit_crit_edge

__validate_creds.exit.i.put_cred.exit_crit_edge:  ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_cred.exit

if.then1.i:                                       ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__put_cred(ptr noundef nonnull %3) #12
  br label %put_cred.exit

put_cred.exit:                                    ; preds = %if.then1.i, %__validate_creds.exit.i.put_cred.exit_crit_edge, %entry.put_cred.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_revoke(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs_idmap_new(ptr nocapture noundef %clp) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 120) #17
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %entry
  %idmap_mutex = getelementptr inbounds %struct.idmap, ptr %call7.i.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %idmap_mutex, ptr noundef nonnull @.str.4, ptr noundef nonnull @nfs_idmap_new.__key) #12
  %cl_rpcclient = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 11
  %1 = ptrtoint ptr %cl_rpcclient to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cl_rpcclient, align 8
  %cl_cred = getelementptr inbounds %struct.rpc_clnt, ptr %2, i32 0, i32 29
  %3 = ptrtoint ptr %cl_cred to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cl_cred, align 4
  %user_ns = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 25
  %5 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %user_ns, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %do.body.get_user_ns.exit_crit_edge, label %if.then.i

do.body.get_user_ns.exit_crit_edge:               ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_user_ns.exit

if.then.i:                                        ; preds = %do.body
  %count.i = getelementptr inbounds %struct.user_namespace, ptr %6, i32 0, i32 7, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #12
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #12, !srcloc !104
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !100

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %8 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %.not.i.i.i.i = icmp sgt i32 %8, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_user_ns.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !105

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_user_ns.exit_crit_edge:       ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_user_ns.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef %.sink.i.i.i.i) #12
  br label %get_user_ns.exit

get_user_ns.exit:                                 ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_user_ns.exit_crit_edge, %do.body.get_user_ns.exit_crit_edge
  %user_ns2 = getelementptr inbounds %struct.idmap, ptr %call7.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %user_ns2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %user_ns2, align 4
  tail call void @rpc_init_pipe_dir_object(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @nfs_idmap_pipe_dir_object_ops, ptr noundef nonnull %call7.i.i) #12
  %call3 = tail call ptr @rpc_mkpipe_data(ptr noundef nonnull @idmap_upcall_ops, i32 noundef 0) #12
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %get_user_ns.exit
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %call3 to i32
  br label %err

if.end7:                                          ; preds = %get_user_ns.exit
  %idmap_pipe = getelementptr inbounds %struct.idmap, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %idmap_pipe to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call3, ptr %idmap_pipe, align 8
  %cl_net = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 44
  %12 = ptrtoint ptr %cl_net to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cl_net, align 8
  %14 = ptrtoint ptr %cl_rpcclient to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cl_rpcclient, align 8
  %cl_pipedir_objects = getelementptr inbounds %struct.rpc_clnt, ptr %15, i32 0, i32 20
  %call10 = tail call i32 @rpc_add_pipe_dir_object(ptr noundef %13, ptr noundef %cl_pipedir_objects, ptr noundef nonnull %call7.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.end12, label %err_destroy_pipe

if.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %cl_idmap = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 28
  %16 = ptrtoint ptr %cl_idmap to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i, ptr %cl_idmap, align 4
  br label %cleanup

err_destroy_pipe:                                 ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %idmap_pipe to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %idmap_pipe, align 8
  tail call void @rpc_destroy_pipe_data(ptr noundef %18) #12
  br label %err

err:                                              ; preds = %err_destroy_pipe, %if.then5
  %error.0 = phi i32 [ %10, %if.then5 ], [ %call10, %err_destroy_pipe ]
  %19 = ptrtoint ptr %user_ns2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %user_ns2, align 4
  %tobool.not.i33 = icmp eq ptr %20, null
  br i1 %tobool.not.i33, label %err.put_user_ns.exit_crit_edge, label %land.lhs.true.i

err.put_user_ns.exit_crit_edge:                   ; preds = %err
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_user_ns.exit

land.lhs.true.i:                                  ; preds = %err
  %count.i34 = getelementptr inbounds %struct.user_namespace, ptr %20, i32 0, i32 7, i32 3
  %call.i.i.i.i.i.i35 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i34, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !106
  tail call void @llvm.prefetch.p0(ptr %count.i34, i32 1, i32 3, i32 1) #12
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i34, ptr %count.i34, i32 1, ptr elementtype(i32) %count.i34) #12, !srcloc !107
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i37, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i36 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i36, label %if.end5.i.i.i.i.put_user_ns.exit_crit_edge, label %if.then10.i.i.i.i, !prof !105

if.end5.i.i.i.i.put_user_ns.exit_crit_edge:       ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_user_ns.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %count.i34, i32 noundef 3) #12
  br label %put_user_ns.exit

if.then.i37:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !108
  tail call void @__put_user_ns(ptr noundef nonnull %20) #12
  br label %put_user_ns.exit

put_user_ns.exit:                                 ; preds = %if.then.i37, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_user_ns.exit_crit_edge, %err.put_user_ns.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %put_user_ns.exit, %if.end12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %put_user_ns.exit ], [ 0, %if.end12 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_init_pipe_dir_object(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_mkpipe_data(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_add_pipe_dir_object(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_destroy_pipe_data(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs_idmap_delete(ptr nocapture noundef %clp) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_idmap = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 28
  %0 = ptrtoint ptr %cl_idmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cl_idmap, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %cl_idmap to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %cl_idmap, align 4
  %cl_net = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 44
  %3 = ptrtoint ptr %cl_net to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cl_net, align 8
  %cl_rpcclient = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 11
  %5 = ptrtoint ptr %cl_rpcclient to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cl_rpcclient, align 8
  %cl_pipedir_objects = getelementptr inbounds %struct.rpc_clnt, ptr %6, i32 0, i32 20
  tail call void @rpc_remove_pipe_dir_object(ptr noundef %4, ptr noundef %cl_pipedir_objects, ptr noundef nonnull %1) #12
  %idmap_pipe = getelementptr inbounds %struct.idmap, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %idmap_pipe to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %idmap_pipe, align 4
  tail call void @rpc_destroy_pipe_data(ptr noundef %8) #12
  %user_ns = getelementptr inbounds %struct.idmap, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %user_ns, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.put_user_ns.exit_crit_edge, label %land.lhs.true.i

if.end.put_user_ns.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_user_ns.exit

land.lhs.true.i:                                  ; preds = %if.end
  %count.i = getelementptr inbounds %struct.user_namespace, ptr %10, i32 0, i32 7, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !106
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #12
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #12, !srcloc !107
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_user_ns.exit_crit_edge, label %if.then10.i.i.i.i, !prof !105

if.end5.i.i.i.i.put_user_ns.exit_crit_edge:       ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_user_ns.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef 3) #12
  br label %put_user_ns.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !108
  tail call void @__put_user_ns(ptr noundef nonnull %10) #12
  br label %put_user_ns.exit

put_user_ns.exit:                                 ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_user_ns.exit_crit_edge, %if.end.put_user_ns.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %1) #12
  br label %cleanup

cleanup:                                          ; preds = %put_user_ns.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_remove_pipe_dir_object(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs_map_name_to_uid(ptr nocapture noundef readonly %server, ptr noundef %name, i32 noundef %namelen, ptr nocapture noundef writeonly %uid) local_unnamed_addr #1 align 64 {
entry:
  %id_str.i = alloca [11 x i8], align 1
  %id_long.i = alloca i32, align 4
  %val.i = alloca i32, align 4
  %buf.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %server, align 8
  %cl_idmap = getelementptr inbounds %struct.nfs_client, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %cl_idmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cl_idmap, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #12
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i, align 4, !annotation !99
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf.i) #12
  %5 = call ptr @memset(ptr %buf.i, i32 255, i32 16)
  %call.i = tail call ptr @memchr(ptr noundef %name, i32 noundef 64, i32 noundef %namelen) #18
  %cmp.not.i = icmp ne ptr %call.i, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %namelen)
  %cmp1.i = icmp ugt i32 %namelen, 15
  %or.cond.i = or i1 %cmp1.i, %cmp.not.i
  br i1 %or.cond.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.end.i:                                         ; preds = %entry
  %6 = call ptr @memcpy(ptr %buf.i, ptr %name, i32 %namelen)
  %arrayidx.i = getelementptr [16 x i8], ptr %buf.i, i32 0, i32 %namelen
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %arrayidx.i, align 1
  %call.i.i = call i32 @_kstrtoul(ptr noundef nonnull %buf.i, i32 noundef 0, ptr noundef nonnull %val.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp4.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp4.not.i, label %if.end.thread, label %if.end.i.if.then_crit_edge

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.end.thread:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #12
  br label %if.then2

if.then:                                          ; preds = %if.end.i.if.then_crit_edge, %entry.if.then_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #12
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %id_str.i) #12
  %10 = call ptr @memset(ptr %id_str.i, i32 255, i32 11)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id_long.i) #12
  %11 = ptrtoint ptr %id_long.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %id_long.i, align 4, !annotation !99
  %call.i18 = call fastcc i32 @nfs_idmap_get_key(ptr noundef %name, i32 noundef %namelen, ptr noundef nonnull @.str.5, ptr noundef nonnull %id_str.i, i32 noundef 11, ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i18)
  %cmp.i = icmp slt i32 %call.i18, 1
  br i1 %cmp.i, label %if.then.if.end.thread34_crit_edge, label %if.else.i

if.then.if.end.thread34_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.thread34

if.else.i:                                        ; preds = %if.then
  %call.i.i19 = call i32 @_kstrtol(ptr noundef nonnull %id_str.i, i32 noundef 10, ptr noundef nonnull %id_long.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i19)
  %tobool.not.i = icmp eq i32 %call.i.i19, 0
  br i1 %tobool.not.i, label %if.end, label %if.else.i.if.end.thread34_crit_edge

if.else.i.if.end.thread34_crit_edge:              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.thread34

if.end.thread34:                                  ; preds = %if.else.i.if.end.thread34_crit_edge, %if.then.if.end.thread34_crit_edge
  %ret.0.i.ph = phi i32 [ -22, %if.then.if.end.thread34_crit_edge ], [ %call.i.i19, %if.else.i.if.end.thread34_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id_long.i) #12
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %id_str.i) #12
  br label %if.end9

if.end:                                           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %id_long.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id_long.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id_long.i) #12
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %id_str.i) #12
  br label %if.then2

if.then2:                                         ; preds = %if.end, %if.end.thread
  %id.232 = phi i32 [ %9, %if.end.thread ], [ %13, %if.end ]
  %tobool.not.i20 = icmp eq ptr %3, null
  br i1 %tobool.not.i20, label %if.then2.if.end.i21_crit_edge, label %land.lhs.true.i

if.then2.if.end.i21_crit_edge:                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i21

land.lhs.true.i:                                  ; preds = %if.then2
  %user_ns.i = getelementptr inbounds %struct.idmap, ptr %3, i32 0, i32 4
  %14 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %user_ns.i, align 4
  %tobool1.not.i = icmp eq ptr %15, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end.i21_crit_edge, label %land.lhs.true.i.idmap_userns.exit_crit_edge

land.lhs.true.i.idmap_userns.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %idmap_userns.exit

land.lhs.true.i.if.end.i21_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i21

if.end.i21:                                       ; preds = %land.lhs.true.i.if.end.i21_crit_edge, %if.then2.if.end.i21_crit_edge
  br label %idmap_userns.exit

idmap_userns.exit:                                ; preds = %if.end.i21, %land.lhs.true.i.idmap_userns.exit_crit_edge
  %retval.0.i22 = phi ptr [ @init_user_ns, %if.end.i21 ], [ %15, %land.lhs.true.i.idmap_userns.exit_crit_edge ]
  %call4 = call i32 @make_kuid(ptr noundef nonnull %retval.0.i22, i32 noundef %id.232) #12
  %16 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call4, ptr %uid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4)
  %cmp.i23.not = icmp eq i32 %call4, -1
  %spec.select = select i1 %cmp.i23.not, i32 -34, i32 0
  br label %if.end9

if.end9:                                          ; preds = %idmap_userns.exit, %if.end.thread34
  %id.233 = phi i32 [ %id.232, %idmap_userns.exit ], [ -1, %if.end.thread34 ]
  %ret.1 = phi i32 [ %spec.select, %idmap_userns.exit ], [ %ret.0.i.ph, %if.end.thread34 ]
  call fastcc void @trace_nfs4_map_name_to_uid(ptr noundef %name, i32 noundef %namelen, i32 noundef %id.233, i32 noundef %ret.1)
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfs4_map_name_to_uid(ptr noundef %nfs4_map_name_to_uid, i32 noundef %len, i32 noundef %id, i32 noundef %error) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_map_name_to_uid, i32 0, i32 1), ptr blockaddress(@trace_nfs4_map_name_to_uid, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !109

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !89) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !105

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !89) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !110
  %call42 = tail call i32 @__traceiter_nfs4_map_name_to_uid(ptr noundef null, ptr noundef %nfs4_map_name_to_uid, i32 noundef %len, i32 noundef %id, i32 noundef %error) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !111
  %13 = tail call i32 @llvm.read_register.i32(metadata !89) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !89) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !105

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !89) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !112
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_map_name_to_uid, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_map_name_to_uid, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_nfs4_map_name_to_uid.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_nfs4_map_name_to_uid.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 1461, ptr noundef nonnull @.str.24) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !113
  %31 = tail call i32 @llvm.read_register.i32(metadata !89) #12
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs_map_group_to_gid(ptr nocapture noundef readonly %server, ptr noundef %name, i32 noundef %namelen, ptr nocapture noundef writeonly %gid) local_unnamed_addr #1 align 64 {
entry:
  %id_str.i = alloca [11 x i8], align 1
  %id_long.i = alloca i32, align 4
  %val.i = alloca i32, align 4
  %buf.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %server, align 8
  %cl_idmap = getelementptr inbounds %struct.nfs_client, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %cl_idmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cl_idmap, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #12
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i, align 4, !annotation !99
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf.i) #12
  %5 = call ptr @memset(ptr %buf.i, i32 255, i32 16)
  %call.i = tail call ptr @memchr(ptr noundef %name, i32 noundef 64, i32 noundef %namelen) #18
  %cmp.not.i = icmp ne ptr %call.i, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %namelen)
  %cmp1.i = icmp ugt i32 %namelen, 15
  %or.cond.i = or i1 %cmp1.i, %cmp.not.i
  br i1 %or.cond.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.end.i:                                         ; preds = %entry
  %6 = call ptr @memcpy(ptr %buf.i, ptr %name, i32 %namelen)
  %arrayidx.i = getelementptr [16 x i8], ptr %buf.i, i32 0, i32 %namelen
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %arrayidx.i, align 1
  %call.i.i = call i32 @_kstrtoul(ptr noundef nonnull %buf.i, i32 noundef 0, ptr noundef nonnull %val.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp4.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp4.not.i, label %if.end.thread, label %if.end.i.if.then_crit_edge

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.end.thread:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #12
  br label %if.then2

if.then:                                          ; preds = %if.end.i.if.then_crit_edge, %entry.if.then_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #12
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %id_str.i) #12
  %10 = call ptr @memset(ptr %id_str.i, i32 255, i32 11)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id_long.i) #12
  %11 = ptrtoint ptr %id_long.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %id_long.i, align 4, !annotation !99
  %call.i18 = call fastcc i32 @nfs_idmap_get_key(ptr noundef %name, i32 noundef %namelen, ptr noundef nonnull @.str.6, ptr noundef nonnull %id_str.i, i32 noundef 11, ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i18)
  %cmp.i = icmp slt i32 %call.i18, 1
  br i1 %cmp.i, label %if.then.if.end.thread34_crit_edge, label %if.else.i

if.then.if.end.thread34_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.thread34

if.else.i:                                        ; preds = %if.then
  %call.i.i19 = call i32 @_kstrtol(ptr noundef nonnull %id_str.i, i32 noundef 10, ptr noundef nonnull %id_long.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i19)
  %tobool.not.i = icmp eq i32 %call.i.i19, 0
  br i1 %tobool.not.i, label %if.end, label %if.else.i.if.end.thread34_crit_edge

if.else.i.if.end.thread34_crit_edge:              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.thread34

if.end.thread34:                                  ; preds = %if.else.i.if.end.thread34_crit_edge, %if.then.if.end.thread34_crit_edge
  %ret.0.i.ph = phi i32 [ -22, %if.then.if.end.thread34_crit_edge ], [ %call.i.i19, %if.else.i.if.end.thread34_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id_long.i) #12
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %id_str.i) #12
  br label %if.end9

if.end:                                           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %id_long.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id_long.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id_long.i) #12
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %id_str.i) #12
  br label %if.then2

if.then2:                                         ; preds = %if.end, %if.end.thread
  %id.232 = phi i32 [ %9, %if.end.thread ], [ %13, %if.end ]
  %tobool.not.i20 = icmp eq ptr %3, null
  br i1 %tobool.not.i20, label %if.then2.if.end.i21_crit_edge, label %land.lhs.true.i

if.then2.if.end.i21_crit_edge:                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i21

land.lhs.true.i:                                  ; preds = %if.then2
  %user_ns.i = getelementptr inbounds %struct.idmap, ptr %3, i32 0, i32 4
  %14 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %user_ns.i, align 4
  %tobool1.not.i = icmp eq ptr %15, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end.i21_crit_edge, label %land.lhs.true.i.idmap_userns.exit_crit_edge

land.lhs.true.i.idmap_userns.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %idmap_userns.exit

land.lhs.true.i.if.end.i21_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i21

if.end.i21:                                       ; preds = %land.lhs.true.i.if.end.i21_crit_edge, %if.then2.if.end.i21_crit_edge
  br label %idmap_userns.exit

idmap_userns.exit:                                ; preds = %if.end.i21, %land.lhs.true.i.idmap_userns.exit_crit_edge
  %retval.0.i22 = phi ptr [ @init_user_ns, %if.end.i21 ], [ %15, %land.lhs.true.i.idmap_userns.exit_crit_edge ]
  %call4 = call i32 @make_kgid(ptr noundef nonnull %retval.0.i22, i32 noundef %id.232) #12
  %16 = ptrtoint ptr %gid to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call4, ptr %gid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4)
  %cmp.i23.not = icmp eq i32 %call4, -1
  %spec.select = select i1 %cmp.i23.not, i32 -34, i32 0
  br label %if.end9

if.end9:                                          ; preds = %idmap_userns.exit, %if.end.thread34
  %id.233 = phi i32 [ %id.232, %idmap_userns.exit ], [ -1, %if.end.thread34 ]
  %ret.1 = phi i32 [ %spec.select, %idmap_userns.exit ], [ %ret.0.i.ph, %if.end.thread34 ]
  call fastcc void @trace_nfs4_map_group_to_gid(ptr noundef %name, i32 noundef %namelen, i32 noundef %id.233, i32 noundef %ret.1)
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfs4_map_group_to_gid(ptr noundef %nfs4_map_group_to_gid, i32 noundef %len, i32 noundef %id, i32 noundef %error) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_map_group_to_gid, i32 0, i32 1), ptr blockaddress(@trace_nfs4_map_group_to_gid, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !109

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !89) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !105

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !89) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !114
  %call42 = tail call i32 @__traceiter_nfs4_map_group_to_gid(ptr noundef null, ptr noundef %nfs4_map_group_to_gid, i32 noundef %len, i32 noundef %id, i32 noundef %error) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !115
  %13 = tail call i32 @llvm.read_register.i32(metadata !89) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !89) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !105

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !89) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !112
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_map_group_to_gid, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_map_group_to_gid, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_nfs4_map_group_to_gid.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_nfs4_map_group_to_gid.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 1462, ptr noundef nonnull @.str.24) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !113
  %31 = tail call i32 @llvm.read_register.i32(metadata !89) #12
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs_map_uid_to_name(ptr nocapture noundef readonly %server, [1 x i32] %uid.coerce, ptr noundef %buf, i32 noundef %buflen) local_unnamed_addr #1 align 64 {
entry:
  %id_str.i = alloca [11 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %server, align 8
  %cl_idmap = getelementptr inbounds %struct.nfs_client, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %cl_idmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cl_idmap, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.lhs.true.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %user_ns.i = getelementptr inbounds %struct.idmap, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %user_ns.i, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.idmap_userns.exit_crit_edge

land.lhs.true.i.idmap_userns.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %idmap_userns.exit

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  br label %idmap_userns.exit

idmap_userns.exit:                                ; preds = %if.end.i, %land.lhs.true.i.idmap_userns.exit_crit_edge
  %retval.0.i = phi ptr [ @init_user_ns, %if.end.i ], [ %5, %land.lhs.true.i.idmap_userns.exit_crit_edge ]
  %call2 = tail call i32 @from_kuid_munged(ptr noundef nonnull %retval.0.i, [1 x i32] %uid.coerce) #12
  %caps = getelementptr inbounds %struct.nfs_server, ptr %server, i32 0, i32 10
  %6 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %caps, align 8
  %and = and i32 %7, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %idmap_userns.exit.if.then4_crit_edge

idmap_userns.exit.if.then4_crit_edge:             ; preds = %idmap_userns.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4

if.then:                                          ; preds = %idmap_userns.exit
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %id_str.i) #12
  %8 = call ptr @memset(ptr %id_str.i, i32 255, i32 11)
  %call.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %id_str.i, i32 noundef 11, ptr noundef nonnull @.str.28, i32 noundef %call2) #12
  %call2.i = call fastcc i32 @nfs_idmap_get_key(ptr noundef nonnull %id_str.i, i32 noundef %call.i.i, ptr noundef nonnull @.str.7, ptr noundef %buf, i32 noundef %buflen, ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %id_str.i) #12
  br i1 %cmp.i, label %if.then.if.then4_crit_edge, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then.if.then4_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4

if.then4:                                         ; preds = %if.then.if.then4_crit_edge, %idmap_userns.exit.if.then4_crit_edge
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef %buflen, ptr noundef nonnull @.str.28, i32 noundef %call2) #12
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.then.if.end6_crit_edge
  %ret.1 = phi i32 [ %call.i, %if.then4 ], [ %call2.i, %if.then.if.end6_crit_edge ]
  tail call fastcc void @trace_nfs4_map_uid_to_name(ptr noundef %buf, i32 noundef %ret.1, i32 noundef %call2, i32 noundef %ret.1)
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfs4_map_uid_to_name(ptr noundef %nfs4_map_uid_to_name, i32 noundef %len, i32 noundef %id, i32 noundef %error) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_map_uid_to_name, i32 0, i32 1), ptr blockaddress(@trace_nfs4_map_uid_to_name, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !109

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !89) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !105

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !89) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !116
  %call42 = tail call i32 @__traceiter_nfs4_map_uid_to_name(ptr noundef null, ptr noundef %nfs4_map_uid_to_name, i32 noundef %len, i32 noundef %id, i32 noundef %error) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !117
  %13 = tail call i32 @llvm.read_register.i32(metadata !89) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !89) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !105

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !89) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !112
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_map_uid_to_name, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_map_uid_to_name, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_nfs4_map_uid_to_name.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_nfs4_map_uid_to_name.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 1463, ptr noundef nonnull @.str.24) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !113
  %31 = tail call i32 @llvm.read_register.i32(metadata !89) #12
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs_map_gid_to_group(ptr nocapture noundef readonly %server, [1 x i32] %gid.coerce, ptr noundef %buf, i32 noundef %buflen) local_unnamed_addr #1 align 64 {
entry:
  %id_str.i = alloca [11 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %server, align 8
  %cl_idmap = getelementptr inbounds %struct.nfs_client, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %cl_idmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cl_idmap, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.lhs.true.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %user_ns.i = getelementptr inbounds %struct.idmap, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %user_ns.i, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.idmap_userns.exit_crit_edge

land.lhs.true.i.idmap_userns.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %idmap_userns.exit

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  br label %idmap_userns.exit

idmap_userns.exit:                                ; preds = %if.end.i, %land.lhs.true.i.idmap_userns.exit_crit_edge
  %retval.0.i = phi ptr [ @init_user_ns, %if.end.i ], [ %5, %land.lhs.true.i.idmap_userns.exit_crit_edge ]
  %call2 = tail call i32 @from_kgid_munged(ptr noundef nonnull %retval.0.i, [1 x i32] %gid.coerce) #12
  %caps = getelementptr inbounds %struct.nfs_server, ptr %server, i32 0, i32 10
  %6 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %caps, align 8
  %and = and i32 %7, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %idmap_userns.exit.if.then4_crit_edge

idmap_userns.exit.if.then4_crit_edge:             ; preds = %idmap_userns.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4

if.then:                                          ; preds = %idmap_userns.exit
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %id_str.i) #12
  %8 = call ptr @memset(ptr %id_str.i, i32 255, i32 11)
  %call.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %id_str.i, i32 noundef 11, ptr noundef nonnull @.str.28, i32 noundef %call2) #12
  %call2.i = call fastcc i32 @nfs_idmap_get_key(ptr noundef nonnull %id_str.i, i32 noundef %call.i.i, ptr noundef nonnull @.str.8, ptr noundef %buf, i32 noundef %buflen, ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %id_str.i) #12
  br i1 %cmp.i, label %if.then.if.then4_crit_edge, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then.if.then4_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4

if.then4:                                         ; preds = %if.then.if.then4_crit_edge, %idmap_userns.exit.if.then4_crit_edge
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef %buflen, ptr noundef nonnull @.str.28, i32 noundef %call2) #12
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.then.if.end6_crit_edge
  %ret.1 = phi i32 [ %call.i, %if.then4 ], [ %call2.i, %if.then.if.end6_crit_edge ]
  tail call fastcc void @trace_nfs4_map_gid_to_group(ptr noundef %buf, i32 noundef %ret.1, i32 noundef %call2, i32 noundef %ret.1)
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfs4_map_gid_to_group(ptr noundef %nfs4_map_gid_to_group, i32 noundef %len, i32 noundef %id, i32 noundef %error) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_map_gid_to_group, i32 0, i32 1), ptr blockaddress(@trace_nfs4_map_gid_to_group, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !109

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !89) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !105

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !89) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !118
  %call42 = tail call i32 @__traceiter_nfs4_map_gid_to_group(ptr noundef null, ptr noundef %nfs4_map_gid_to_group, i32 noundef %len, i32 noundef %id, i32 noundef %error) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !119
  %13 = tail call i32 @llvm.read_register.i32(metadata !89) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !89) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !105

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !89) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !112
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_map_gid_to_group, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_map_gid_to_group, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_nfs4_map_gid_to_group.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_nfs4_map_gid_to_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 1464, ptr noundef nonnull @.str.24) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !113
  %31 = tail call i32 @llvm.read_register.i32(metadata !89) #12
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
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @user_preparse(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @user_free_preparse(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_key_instantiate(ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @user_revoke(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @user_destroy(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @user_describe(ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @user_read(ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @creds_are_invalid(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__invalid_creds(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs_idmap_legacy_upcall(ptr noundef %authkey, ptr noundef %aux) #1 align 64 {
entry:
  %substr.i = alloca %struct.substring_t, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.key, ptr %authkey, i32 0, i32 17
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %target_key = getelementptr inbounds %struct.request_key_auth, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %target_key to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %target_key, align 4
  %tobool.not = icmp eq ptr %aux, null
  br i1 %tobool.not, label %entry.out1_crit_edge, label %if.end

entry.out1_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out1

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 172) #17
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.out1_crit_edge, label %if.end4

if.end.out1_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out1

if.end4:                                          ; preds = %if.end
  %idmap_msg = getelementptr inbounds %struct.idmap_legacy_upcalldata, ptr %call7.i.i, i32 0, i32 1
  %idmap5 = getelementptr inbounds %struct.idmap_legacy_upcalldata, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %idmap5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %aux, ptr %idmap5, align 8
  %tobool.not.i = icmp eq ptr %authkey, null
  br i1 %tobool.not.i, label %if.end4.key_get.exit_crit_edge, label %cond.true.i

if.end4.key_get.exit_crit_edge:                   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %key_get.exit

cond.true.i:                                      ; preds = %if.end4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %authkey, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr nonnull %authkey, i32 1, i32 3, i32 1) #12
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %authkey, ptr nonnull %authkey, i32 1, ptr nonnull elementtype(i32) %authkey) #12, !srcloc !104
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %cond.true.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !100

cond.true.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %cond.true.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %8 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %.not.i.i.i.i.i = icmp sgt i32 %8, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.key_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !105

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.key_get.exit_crit_edge:         ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %key_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %cond.true.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %cond.true.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %authkey, i32 noundef %.sink.i.i.i.i.i) #12
  br label %key_get.exit

key_get.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.key_get.exit_crit_edge, %if.end4.key_get.exit_crit_edge
  %authkey7 = getelementptr inbounds %struct.idmap_legacy_upcalldata, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %authkey7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %authkey, ptr %authkey7, align 4
  %description = getelementptr inbounds %struct.key, ptr %4, i32 0, i32 16, i32 0, i32 4
  %10 = ptrtoint ptr %description to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %description, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %substr.i) #12
  %12 = ptrtoint ptr %substr.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 -1 to ptr), ptr %substr.i, align 4, !annotation !99
  %13 = getelementptr inbounds %struct.substring_t, ptr %substr.i, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 -1 to ptr), ptr %13, align 4, !annotation !99
  %15 = ptrtoint ptr %idmap_msg to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %idmap_msg, align 8
  %call.i = call i32 @match_token(ptr noundef %11, ptr noundef nonnull @nfs_idmap_tokens, ptr noundef nonnull %substr.i) #12
  %16 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i, label %nfs_idmap_prepare_message.exit.thread [
    i32 0, label %sw.bb.i
    i32 1, label %key_get.exit.sw.bb2.i_crit_edge
    i32 2, label %sw.bb4.i
    i32 3, label %key_get.exit.sw.bb6.i_crit_edge
  ]

key_get.exit.sw.bb6.i_crit_edge:                  ; preds = %key_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb6.i

key_get.exit.sw.bb2.i_crit_edge:                  ; preds = %key_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2.i

nfs_idmap_prepare_message.exit.thread:            ; preds = %key_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %substr.i) #12
  br label %out2

sw.bb.i:                                          ; preds = %key_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %idmap_msg to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %idmap_msg, align 8
  br label %sw.bb2.i

sw.bb2.i:                                         ; preds = %sw.bb.i, %key_get.exit.sw.bb2.i_crit_edge
  %im_conv.i = getelementptr inbounds %struct.idmap_legacy_upcalldata, ptr %call7.i.i, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %im_conv.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %im_conv.i, align 1
  %im_name.i = getelementptr inbounds %struct.idmap_legacy_upcalldata, ptr %call7.i.i, i32 0, i32 1, i32 2
  %call3.i = call i32 @match_strlcpy(ptr noundef %im_name.i, ptr noundef nonnull %substr.i, i32 noundef 128) #12
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %key_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %idmap_msg to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %idmap_msg, align 8
  br label %sw.bb6.i

sw.bb6.i:                                         ; preds = %sw.bb4.i, %key_get.exit.sw.bb6.i_crit_edge
  %im_conv7.i = getelementptr inbounds %struct.idmap_legacy_upcalldata, ptr %call7.i.i, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %im_conv7.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %im_conv7.i, align 1
  %im_id.i = getelementptr inbounds %struct.idmap_legacy_upcalldata, ptr %call7.i.i, i32 0, i32 1, i32 3
  %call8.i = call i32 @match_int(ptr noundef nonnull %substr.i, ptr noundef %im_id.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool.not.i43 = icmp eq i32 %call8.i, 0
  br i1 %tobool.not.i43, label %sw.bb6.i.sw.epilog.i_crit_edge, label %sw.bb6.i.nfs_idmap_prepare_message.exit_crit_edge

sw.bb6.i.nfs_idmap_prepare_message.exit_crit_edge: ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfs_idmap_prepare_message.exit

sw.bb6.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb6.i.sw.epilog.i_crit_edge, %sw.bb2.i
  %ret.0.i = phi i32 [ 0, %sw.bb6.i.sw.epilog.i_crit_edge ], [ %call3.i, %sw.bb2.i ]
  %data.i = getelementptr inbounds %struct.rpc_pipe_msg, ptr %call7.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %idmap_msg, ptr %data.i, align 8
  %len.i = getelementptr inbounds %struct.rpc_pipe_msg, ptr %call7.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 140, ptr %len.i, align 4
  br label %nfs_idmap_prepare_message.exit

nfs_idmap_prepare_message.exit:                   ; preds = %sw.epilog.i, %sw.bb6.i.nfs_idmap_prepare_message.exit_crit_edge
  %ret.1.i = phi i32 [ %call8.i, %sw.bb6.i.nfs_idmap_prepare_message.exit_crit_edge ], [ %ret.0.i, %sw.epilog.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %substr.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %cmp = icmp slt i32 %ret.1.i, 0
  br i1 %cmp, label %nfs_idmap_prepare_message.exit.out2_crit_edge, label %if.end10

nfs_idmap_prepare_message.exit.out2_crit_edge:    ; preds = %nfs_idmap_prepare_message.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out2

if.end10:                                         ; preds = %nfs_idmap_prepare_message.exit
  %idmap_upcall_data.i = getelementptr inbounds %struct.idmap, ptr %aux, i32 0, i32 2
  %23 = ptrtoint ptr %idmap_upcall_data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %idmap_upcall_data.i, align 4
  %cmp.not.i = icmp eq ptr %24, null
  br i1 %cmp.not.i, label %if.end13, label %land.end.i

land.end.i:                                       ; preds = %if.end10
  %.b39.i = load i1, ptr @nfs_idmap_prepare_pipe_upcall.__already_done, align 1
  br i1 %.b39.i, label %land.end.i.out2_crit_edge, label %if.then5.i, !prof !105

land.end.i.out2_crit_edge:                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out2

if.then5.i:                                       ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @nfs_idmap_prepare_pipe_upcall.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 557, i32 noundef 9, ptr noundef null) #12
  br label %out2

if.end13:                                         ; preds = %if.end10
  %25 = ptrtoint ptr %idmap_upcall_data.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i.i, ptr %idmap_upcall_data.i, align 4
  %idmap_pipe = getelementptr inbounds %struct.idmap, ptr %aux, i32 0, i32 1
  %26 = ptrtoint ptr %idmap_pipe to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %idmap_pipe, align 4
  %call14 = call i32 @rpc_queue_upcall(ptr noundef %27, ptr noundef nonnull %call7.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then16:                                        ; preds = %if.end13
  %28 = ptrtoint ptr %idmap_upcall_data.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %idmap_upcall_data.i, align 4
  %cmp.not.i45 = icmp eq ptr %29, null
  br i1 %cmp.not.i45, label %if.then16.cleanup_crit_edge, label %if.then.i

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  %authkey1.i.i = getelementptr inbounds %struct.idmap_legacy_upcalldata, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %authkey1.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %authkey1.i.i, align 4
  call void @kfree(ptr noundef nonnull %29) #12
  %32 = ptrtoint ptr %idmap_upcall_data.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %idmap_upcall_data.i, align 4
  call void @complete_request_key(ptr noundef %31, i32 noundef %call14) #12
  call void @key_put(ptr noundef %31) #12
  br label %cleanup

out2:                                             ; preds = %if.then5.i, %land.end.i.out2_crit_edge, %nfs_idmap_prepare_message.exit.out2_crit_edge, %nfs_idmap_prepare_message.exit.thread
  %ret.0 = phi i32 [ %ret.1.i, %nfs_idmap_prepare_message.exit.out2_crit_edge ], [ -22, %nfs_idmap_prepare_message.exit.thread ], [ -11, %land.end.i.out2_crit_edge ], [ -11, %if.then5.i ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %out1

out1:                                             ; preds = %out2, %if.end.out1_crit_edge, %entry.out1_crit_edge
  %ret.1 = phi i32 [ %ret.0, %out2 ], [ -12, %if.end.out1_crit_edge ], [ -126, %entry.out1_crit_edge ]
  call void @complete_request_key(ptr noundef %authkey, i32 noundef %ret.1) #12
  br label %cleanup

cleanup:                                          ; preds = %out1, %if.then.i, %if.then16.cleanup_crit_edge, %if.end13.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out1 ], [ %call14, %if.end13.cleanup_crit_edge ], [ %call14, %if.then16.cleanup_crit_edge ], [ %call14, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_queue_upcall(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_request_key(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_token(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_int(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs_idmap_pipe_create(ptr noundef %dir, ptr nocapture noundef readonly %pdo) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pdo_data = getelementptr inbounds %struct.rpc_pipe_dir_object, ptr %pdo, i32 0, i32 2
  %0 = ptrtoint ptr %pdo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdo_data, align 4
  %idmap_pipe = getelementptr inbounds %struct.idmap, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %idmap_pipe to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %idmap_pipe, align 4
  %call = tail call ptr @rpc_mkpipe_dentry(ptr noundef %dir, ptr noundef nonnull @.str.16, ptr noundef %1, ptr noundef %3) #12
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dentry3 = getelementptr inbounds %struct.rpc_pipe, ptr %3, i32 0, i32 10
  %5 = ptrtoint ptr %dentry3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %dentry3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs_idmap_pipe_destroy(ptr nocapture noundef readnone %dir, ptr nocapture noundef readonly %pdo) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pdo_data = getelementptr inbounds %struct.rpc_pipe_dir_object, ptr %pdo, i32 0, i32 2
  %0 = ptrtoint ptr %pdo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdo_data, align 4
  %idmap_pipe = getelementptr inbounds %struct.idmap, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %idmap_pipe to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %idmap_pipe, align 4
  %dentry = getelementptr inbounds %struct.rpc_pipe, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dentry, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @rpc_unlink(ptr noundef nonnull %5) #12
  %6 = ptrtoint ptr %dentry to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %dentry, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_mkpipe_dentry(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_unlink(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_pipe_generic_upcall(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idmap_pipe_downcall(ptr nocapture noundef readonly %filp, ptr noundef %src, i32 noundef %mlen) #1 align 64 {
entry:
  %im = alloca %struct.idmap_msg, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %private = getelementptr inbounds %struct.rpc_inode, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  call void @llvm.lifetime.start.p0(i64 140, ptr nonnull %im) #12
  %4 = call ptr @memset(ptr %im, i32 255, i32 140)
  %idmap_upcall_data = getelementptr inbounds %struct.idmap, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %idmap_upcall_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %idmap_upcall_data, align 4
  %cmp = icmp eq ptr %6, null
  br i1 %cmp, label %entry.out_noupcall_crit_edge, label %if.end

entry.out_noupcall_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_noupcall

if.end:                                           ; preds = %entry
  %authkey3 = getelementptr inbounds %struct.idmap_legacy_upcalldata, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %authkey3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %authkey3, align 4
  %9 = getelementptr inbounds %struct.key, ptr %8, i32 0, i32 17
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 140, i32 %mlen)
  %cmp5.not = icmp eq i32 %mlen, 140
  br i1 %cmp5.not, label %if.then.i, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then.i:                                        ; preds = %if.end
  tail call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 156) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %if.then.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.if.then11.i.i_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %12 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %src, i32 140, i32 -1226833920) #19, !srcloc !120
  %asmresult.i.i = extractvalue { i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !105

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %im, i32 noundef 140) #12
  %13 = call i32 @llvm.read_register.i32(metadata !89) #12
  %and.i.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 4
  %15 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #10, !srcloc !121
  %and.i.i.i.i = and i32 %15, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #12, !srcloc !122
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !123
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %im, ptr noundef %src, i32 noundef 140) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #12, !srcloc !122
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !123
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end11, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !105

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 140, %if.then.i.if.then11.i.i_crit_edge ], [ 140, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 140, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %im, i32 %sub.i.i
  %16 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %out

if.end11:                                         ; preds = %if.end.i.i
  %im_status = getelementptr inbounds %struct.idmap_msg, ptr %im, i32 0, i32 4
  %17 = ptrtoint ptr %im_status to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %im_status, align 4
  %19 = and i8 %18, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not = icmp eq i8 %19, 0
  br i1 %tobool.not, label %if.end11.out_crit_edge, label %if.end13

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end13:                                         ; preds = %if.end11
  %im_name = getelementptr inbounds %struct.idmap_msg, ptr %im, i32 0, i32 2
  %call14 = call i32 @strnlen(ptr noundef %im_name, i32 noundef 128) #15
  %20 = zext i32 %call14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %call14, label %if.end20 [
    i32 0, label %if.end13.out_crit_edge
    i32 128, label %if.end13.out_crit_edge40
  ]

if.end13.out_crit_edge40:                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end20:                                         ; preds = %if.end13
  %21 = ptrtoint ptr %idmap_upcall_data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %idmap_upcall_data, align 4
  %idmap_msg = getelementptr inbounds %struct.idmap_legacy_upcalldata, ptr %22, i32 0, i32 1
  %target_key = getelementptr inbounds %struct.request_key_auth, ptr %11, i32 0, i32 1
  %23 = ptrtoint ptr %target_key to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %target_key, align 4
  %call22 = call fastcc i32 @nfs_idmap_read_and_verify_message(ptr noundef nonnull %im, ptr noundef %idmap_msg, ptr noundef %24, ptr noundef %8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call22)
  %cmp23 = icmp sgt i32 %call22, -1
  br i1 %cmp23, label %if.then25, label %if.end20.out_crit_edge

if.end20.out_crit_edge:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %target_key to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %target_key, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_idmap_cache_timeout to i32))
  %27 = load i32, ptr @nfs_idmap_cache_timeout, align 4
  call void @key_set_timeout(ptr noundef %26, i32 noundef %27) #12
  br label %out

out:                                              ; preds = %if.then25, %if.end20.out_crit_edge, %if.end13.out_crit_edge, %if.end13.out_crit_edge40, %if.end11.out_crit_edge, %if.then11.i.i, %if.end.out_crit_edge
  %ret.0 = phi i32 [ 140, %if.then25 ], [ %call22, %if.end20.out_crit_edge ], [ -28, %if.end.out_crit_edge ], [ -126, %if.end11.out_crit_edge ], [ -22, %if.end13.out_crit_edge ], [ -22, %if.end13.out_crit_edge40 ], [ -14, %if.then11.i.i ]
  %28 = ptrtoint ptr %idmap_upcall_data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %idmap_upcall_data, align 4
  %authkey1.i = getelementptr inbounds %struct.idmap_legacy_upcalldata, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %authkey1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %authkey1.i, align 4
  call void @kfree(ptr noundef %29) #12
  %32 = ptrtoint ptr %idmap_upcall_data to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %idmap_upcall_data, align 4
  call void @complete_request_key(ptr noundef %31, i32 noundef %ret.0) #12
  call void @key_put(ptr noundef %31) #12
  br label %out_noupcall

out_noupcall:                                     ; preds = %out, %entry.out_noupcall_crit_edge
  %ret.1 = phi i32 [ -126, %entry.out_noupcall_crit_edge ], [ %ret.0, %out ]
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %im) #12
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @idmap_release_pipe(ptr nocapture noundef readonly %inode) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.rpc_inode, ptr %inode, i32 0, i32 1
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %idmap_upcall_data.i = getelementptr inbounds %struct.idmap, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %idmap_upcall_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %idmap_upcall_data.i, align 4
  %cmp.not.i = icmp eq ptr %3, null
  br i1 %cmp.not.i, label %entry.nfs_idmap_abort_pipe_upcall.exit_crit_edge, label %if.then.i

entry.nfs_idmap_abort_pipe_upcall.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfs_idmap_abort_pipe_upcall.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %authkey1.i.i = getelementptr inbounds %struct.idmap_legacy_upcalldata, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %authkey1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %authkey1.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %3) #12
  %6 = ptrtoint ptr %idmap_upcall_data.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %idmap_upcall_data.i, align 4
  tail call void @complete_request_key(ptr noundef %5, i32 noundef -32) #12
  tail call void @key_put(ptr noundef %5) #12
  br label %nfs_idmap_abort_pipe_upcall.exit

nfs_idmap_abort_pipe_upcall.exit:                 ; preds = %if.then.i, %entry.nfs_idmap_abort_pipe_upcall.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @idmap_pipe_destroy_msg(ptr nocapture noundef readonly %msg) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %errno = getelementptr inbounds %struct.rpc_pipe_msg, ptr %msg, i32 0, i32 4
  %0 = ptrtoint ptr %errno to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %errno, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %idmap1 = getelementptr inbounds %struct.idmap_legacy_upcalldata, ptr %msg, i32 0, i32 3
  %2 = ptrtoint ptr %idmap1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %idmap1, align 4
  %idmap_upcall_data.i = getelementptr inbounds %struct.idmap, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %idmap_upcall_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %idmap_upcall_data.i, align 4
  %cmp.not.i = icmp eq ptr %5, null
  br i1 %cmp.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %authkey1.i.i = getelementptr inbounds %struct.idmap_legacy_upcalldata, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %authkey1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %authkey1.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %5) #12
  %8 = ptrtoint ptr %idmap_upcall_data.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %idmap_upcall_data.i, align 4
  tail call void @complete_request_key(ptr noundef %7, i32 noundef %1) #12
  tail call void @key_put(ptr noundef %7) #12
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfs_idmap_read_and_verify_message(ptr noundef %im, ptr nocapture noundef readonly %upcall, ptr noundef %key, ptr noundef %authkey) unnamed_addr #1 align 64 {
entry:
  %id_str = alloca [11 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %id_str) #12
  %0 = call ptr @memset(ptr %id_str, i32 255, i32 11)
  %1 = ptrtoint ptr %upcall to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %upcall, align 4
  %3 = ptrtoint ptr %im to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %im, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %2, i8 %4)
  %cmp.not = icmp eq i8 %2, %4
  br i1 %cmp.not, label %lor.lhs.false, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %im_conv = getelementptr inbounds %struct.idmap_msg, ptr %upcall, i32 0, i32 1
  %5 = ptrtoint ptr %im_conv to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %im_conv, align 1
  %im_conv5 = getelementptr inbounds %struct.idmap_msg, ptr %im, i32 0, i32 1
  %7 = ptrtoint ptr %im_conv5 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %im_conv5, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %8)
  %cmp7.not = icmp eq i8 %6, %8
  br i1 %cmp7.not, label %if.end, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  %9 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.30)
  switch i8 %6, label %if.end.out_crit_edge [
    i8 1, label %sw.bb
    i8 0, label %sw.bb21
  ]

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

sw.bb:                                            ; preds = %if.end
  %im_name = getelementptr inbounds %struct.idmap_msg, ptr %upcall, i32 0, i32 2
  %im_name11 = getelementptr inbounds %struct.idmap_msg, ptr %im, i32 0, i32 2
  %call = tail call i32 @strcmp(ptr noundef %im_name, ptr noundef %im_name11) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp13.not = icmp eq i32 %call, 0
  br i1 %cmp13.not, label %if.end16, label %sw.bb.out_crit_edge

sw.bb.out_crit_edge:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end16:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %im_id = getelementptr inbounds %struct.idmap_msg, ptr %im, i32 0, i32 3
  %10 = ptrtoint ptr %im_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %im_id, align 4
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %id_str, i32 noundef 11, ptr noundef nonnull @.str.28, i32 noundef %11) #12
  %add = add i32 %call.i, 1
  %12 = load ptr, ptr @id_resolver_cache, align 4
  %thread_keyring.i = getelementptr inbounds %struct.cred, ptr %12, i32 0, i32 21
  %13 = ptrtoint ptr %thread_keyring.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %thread_keyring.i, align 4
  %call.i47 = call i32 @key_instantiate_and_link(ptr noundef %key, ptr noundef nonnull %id_str, i32 noundef %add, ptr noundef %14, ptr noundef %authkey) #12
  br label %out

sw.bb21:                                          ; preds = %if.end
  %im_id22 = getelementptr inbounds %struct.idmap_msg, ptr %upcall, i32 0, i32 3
  %15 = ptrtoint ptr %im_id22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %im_id22, align 4
  %im_id23 = getelementptr inbounds %struct.idmap_msg, ptr %im, i32 0, i32 3
  %17 = ptrtoint ptr %im_id23 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %im_id23, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp24.not = icmp eq i32 %16, %18
  br i1 %cmp24.not, label %if.end27, label %sw.bb21.out_crit_edge

sw.bb21.out_crit_edge:                            ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end27:                                         ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #14
  %im_name28 = getelementptr inbounds %struct.idmap_msg, ptr %im, i32 0, i32 2
  %call30 = tail call i32 @strlen(ptr noundef %im_name28) #15
  %19 = load ptr, ptr @id_resolver_cache, align 4
  %thread_keyring.i48 = getelementptr inbounds %struct.cred, ptr %19, i32 0, i32 21
  %20 = ptrtoint ptr %thread_keyring.i48 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %thread_keyring.i48, align 4
  %call.i49 = tail call i32 @key_instantiate_and_link(ptr noundef %key, ptr noundef %im_name28, i32 noundef %call30, ptr noundef %21, ptr noundef %authkey) #12
  br label %out

out:                                              ; preds = %if.end27, %sw.bb21.out_crit_edge, %if.end16, %sw.bb.out_crit_edge, %if.end.out_crit_edge, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ -126, %entry.out_crit_edge ], [ -126, %lor.lhs.false.out_crit_edge ], [ -126, %sw.bb21.out_crit_edge ], [ %call.i49, %if.end27 ], [ -126, %sw.bb.out_crit_edge ], [ %call.i47, %if.end16 ], [ -22, %if.end.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %id_str) #12
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_set_timeout(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @key_instantiate_and_link(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_user_ns(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfs_idmap_get_key(ptr nocapture noundef readonly %name, i32 noundef %namelen, ptr nocapture noundef readonly %type, ptr nocapture noundef writeonly %data, i32 noundef %data_size, ptr noundef %idmap) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @id_resolver_cache, align 4
  %call = tail call ptr @override_creds(ptr noundef %0) #12
  %call1.i31 = tail call i32 @strlen(ptr noundef %type) #18
  %add.i.i = add i32 %call1.i31, %namelen
  %add1.i.i = add i32 %add.i.i, 2
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add1.i.i, i32 noundef 3264) #20
  %tobool.not.i.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i.i, label %entry.if.then.i32_crit_edge, label %nfs_idmap_get_desc.exit.i

entry.if.then.i32_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i32

nfs_idmap_get_desc.exit.i:                        ; preds = %entry
  %1 = call ptr @memcpy(ptr %call9.i.i.i, ptr %type, i32 %call1.i31)
  %add.ptr.i.i = getelementptr i8, ptr %call9.i.i.i, i32 %call1.i31
  %incdec.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 1
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 58, ptr %add.ptr.i.i, align 1
  %3 = call ptr @memcpy(ptr %incdec.ptr.i.i, ptr %name, i32 %namelen)
  %add.ptr2.i.i = getelementptr i8, ptr %incdec.ptr.i.i, i32 %namelen
  %4 = ptrtoint ptr %add.ptr2.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %add.ptr2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add1.i.i)
  %cmp.i = icmp slt i32 %add1.i.i, 0
  br i1 %cmp.i, label %nfs_idmap_get_desc.exit.i.if.then.i32_crit_edge, label %if.end.i

nfs_idmap_get_desc.exit.i.if.then.i32_crit_edge:  ; preds = %nfs_idmap_get_desc.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i32

if.then.i32:                                      ; preds = %nfs_idmap_get_desc.exit.i.if.then.i32_crit_edge, %entry.if.then.i32_crit_edge
  %retval.0.i36.i = phi i32 [ %add1.i.i, %nfs_idmap_get_desc.exit.i.if.then.i32_crit_edge ], [ -12, %entry.if.then.i32_crit_edge ]
  %5 = inttoptr i32 %retval.0.i36.i to ptr
  br label %nfs_idmap_request_key.exit

if.end.i:                                         ; preds = %nfs_idmap_get_desc.exit.i
  %user_ns.i = getelementptr inbounds %struct.idmap, ptr %idmap, i32 0, i32 4
  %6 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user_ns.i, align 4
  %tobool.not.i33 = icmp eq ptr %7, null
  %cmp5.i = icmp eq ptr %7, @init_user_ns
  %or.cond.i = or i1 %tobool.not.i33, %cmp5.i
  br i1 %or.cond.i, label %if.end8.i, label %if.end.i.if.then10.i_crit_edge

if.end.i.if.then10.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10.i

if.end8.i:                                        ; preds = %if.end.i
  %call.i.i = tail call ptr @request_key_tag(ptr noundef nonnull @key_type_id_resolver, ptr noundef nonnull %call9.i.i.i, ptr noundef null, ptr noundef nonnull @.str.20) #12
  %cmp.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end8.i.if.then10.i_crit_edge, label %if.end8.i.if.end13.i_crit_edge

if.end8.i.if.end13.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i

if.end8.i.if.then10.i_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10.i

if.then10.i:                                      ; preds = %if.end8.i.if.then10.i_crit_edge, %if.end.i.if.then10.i_crit_edge
  %idmap_mutex.i = getelementptr inbounds %struct.idmap, ptr %idmap, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %idmap_mutex.i, i32 noundef 0) #12
  %call11.i = tail call ptr @request_key_with_auxdata(ptr noundef nonnull @key_type_id_resolver_legacy, ptr noundef nonnull %call9.i.i.i, ptr noundef null, ptr noundef nonnull @.str.20, i32 noundef 0, ptr noundef %idmap) #12
  tail call void @mutex_unlock(ptr noundef %idmap_mutex.i) #12
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then10.i, %if.end8.i.if.end13.i_crit_edge
  %rkey.1.i = phi ptr [ %call11.i, %if.then10.i ], [ %call.i.i, %if.end8.i.if.end13.i_crit_edge ]
  %cmp.i28.i = icmp ugt ptr %rkey.1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i28.i, label %if.end13.i.if.end16.i_crit_edge, label %if.then15.i

if.end13.i.if.end16.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i

if.then15.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  %flags.i = getelementptr inbounds %struct.key, ptr %rkey.1.i, i32 0, i32 15
  tail call void @_set_bit(i32 noundef 7, ptr noundef %flags.i) #12
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then15.i, %if.end13.i.if.end16.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #12
  br label %nfs_idmap_request_key.exit

nfs_idmap_request_key.exit:                       ; preds = %if.end16.i, %if.then.i32
  %retval.0.i = phi ptr [ %5, %if.then.i32 ], [ %rkey.1.i, %if.end16.i ]
  tail call void @revert_creds(ptr noundef %call) #12
  %cmp.i34 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i34, label %if.then, label %if.end

if.then:                                          ; preds = %nfs_idmap_request_key.exit
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %retval.0.i to i32
  br label %out

if.end:                                           ; preds = %nfs_idmap_request_key.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !89) #12
  %and.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !124
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 696, ptr noundef nonnull @.str.22) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %perm = getelementptr inbounds %struct.key, ptr %retval.0.i, i32 0, i32 11
  %13 = ptrtoint ptr %perm to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %perm, align 8
  %or = or i32 %14, 65536
  store i32 %or, ptr %perm, align 8
  %call4 = tail call i32 @key_validate(ptr noundef %retval.0.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %rcu_read_lock.exit.out_up_crit_edge, label %if.end6

rcu_read_lock.exit.out_up_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_up

if.end6:                                          ; preds = %rcu_read_lock.exit
  %15 = getelementptr inbounds %struct.key, ptr %retval.0.i, i32 0, i32 17
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %15, align 4
  %call.i35 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35)
  %tobool.not.i36 = icmp eq i32 %call.i35, 0
  br i1 %tobool.not.i36, label %land.lhs.true.i37, label %if.end6.user_key_payload_rcu.exit_crit_edge

if.end6.user_key_payload_rcu.exit_crit_edge:      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %user_key_payload_rcu.exit

land.lhs.true.i37:                                ; preds = %if.end6
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i37.user_key_payload_rcu.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i37.user_key_payload_rcu.exit_crit_edge: ; preds = %land.lhs.true.i37
  call void @__sanitizer_cov_trace_pc() #14
  br label %user_key_payload_rcu.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i37
  %.b9.i = load i1, ptr @user_key_payload_rcu.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.user_key_payload_rcu.exit_crit_edge, label %if.then.i38

land.lhs.true4.i.user_key_payload_rcu.exit_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %user_key_payload_rcu.exit

if.then.i38:                                      ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @user_key_payload_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 48, ptr noundef nonnull @.str.24) #12
  br label %user_key_payload_rcu.exit

user_key_payload_rcu.exit:                        ; preds = %if.then.i38, %land.lhs.true4.i.user_key_payload_rcu.exit_crit_edge, %land.lhs.true.i37.user_key_payload_rcu.exit_crit_edge, %if.end6.user_key_payload_rcu.exit_crit_edge
  %tobool.not.i39 = icmp eq ptr %17, null
  %cmp.i40 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i39, %cmp.i40
  br i1 %spec.select.i, label %if.then9, label %if.end11

if.then9:                                         ; preds = %user_key_payload_rcu.exit
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %17 to i32
  br label %out_up

if.end11:                                         ; preds = %user_key_payload_rcu.exit
  %datalen = getelementptr inbounds %struct.user_key_payload, ptr %17, i32 0, i32 1
  %19 = ptrtoint ptr %datalen to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %datalen, align 8
  %conv = zext i16 %20 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %cmp12.not = icmp eq i16 %20, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %data_size)
  %cmp14.not = icmp ugt i32 %conv, %data_size
  %or.cond = or i1 %cmp12.not, %cmp14.not
  br i1 %or.cond, label %if.end11.out_up_crit_edge, label %if.then16

if.end11.out_up_crit_edge:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_up

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %data17 = getelementptr inbounds %struct.user_key_payload, ptr %17, i32 0, i32 3
  %21 = call ptr @memcpy(ptr %data, ptr %data17, i32 %conv)
  br label %out_up

out_up:                                           ; preds = %if.then16, %if.end11.out_up_crit_edge, %if.then9, %rcu_read_lock.exit.out_up_crit_edge
  %ret.0 = phi i32 [ %call4, %rcu_read_lock.exit.out_up_crit_edge ], [ %18, %if.then9 ], [ %conv, %if.then16 ], [ -22, %if.end11.out_up_crit_edge ]
  %call.i41 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i41, label %out_up.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i44

out_up.rcu_read_unlock.exit_crit_edge:            ; preds = %out_up
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i44:                                ; preds = %out_up
  %call1.i42 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i42)
  %tobool.not.i43 = icmp eq i32 %call1.i42, 0
  br i1 %tobool.not.i43, label %land.lhs.true.i44.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i46

land.lhs.true.i44.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i44
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i46:                               ; preds = %land.lhs.true.i44
  %.b4.i45 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i45, label %land.lhs.true2.i46.rcu_read_unlock.exit_crit_edge, label %if.then.i47

land.lhs.true2.i46.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i46
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i47:                                      ; preds = %land.lhs.true2.i46
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 724, ptr noundef nonnull @.str.25) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i47, %land.lhs.true2.i46.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i44.rcu_read_unlock.exit_crit_edge, %out_up.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !125
  %22 = tail call i32 @llvm.read_register.i32(metadata !89) #12
  %and.i.i.i.i.i48 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i48 to ptr
  %preempt_count.i.i.i.i49 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i49 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i49, align 4
  %sub.i.i.i = add i32 %25, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i49, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  tail call void @key_put(ptr noundef %retval.0.i) #12
  br label %out

out:                                              ; preds = %rcu_read_unlock.exit, %if.then
  %ret.1 = phi i32 [ %8, %if.then ], [ %ret.0, %rcu_read_unlock.exit ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @override_creds(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @revert_creds(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @key_validate(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @request_key_with_auxdata(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @request_key_tag(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs4_map_name_to_uid(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs4_map_group_to_gid(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs4_map_uid_to_name(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs4_map_gid_to_group(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind readonly }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nobuiltin }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nobuiltin nounwind }
attributes #19 = { nounwind readnone }
attributes #20 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !54, !56, !58, !60, !62, !63, !64, !66, !67, !68, !70, !71, !73, !74, !75, !77, !78, !80, !81, !83, !85, !86, !88}
!llvm.named.register.sp = !{!89}
!llvm.module.flags = !{!90, !91, !92, !93, !94, !95, !96, !97}
!llvm.ident = !{!98}

!0 = !{ptr @__ksymtab_nfs_map_string_to_numeric, !1, !"__ksymtab_nfs_map_string_to_numeric", i1 false, i1 false}
!1 = !{!"../fs/nfs/nfs4idmap.c", i32 179, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/nfs/nfs4idmap.c", i32 203, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nfs_idmap_init._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @nfs_idmap_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/nfs/nfs4idmap.c", i32 210, i32 26}
!10 = !{ptr @nfs_idmap_new.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../fs/nfs/nfs4idmap.c", i32 465, i32 2}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/nfs/nfs4idmap.c", i32 750, i32 44}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/nfs/nfs4idmap.c", i32 767, i32 44}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/nfs/nfs4idmap.c", i32 785, i32 35}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/nfs/nfs4idmap.c", i32 799, i32 35}
!21 = !{ptr @id_resolver_cache, !22, !"id_resolver_cache", i1 false, i1 false}
!22 = !{!"../fs/nfs/nfs4idmap.c", i32 58, i32 27}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/nfs/nfs4idmap.c", i32 187, i32 11}
!25 = !{ptr @key_type_id_resolver, !26, !"key_type_id_resolver", i1 false, i1 false}
!26 = !{!"../fs/nfs/nfs4idmap.c", i32 186, i32 24}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../include/linux/cred.h", i32 286, i32 3}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/nfs/nfs4idmap.c", i32 412, i32 11}
!31 = !{ptr @key_type_id_resolver_legacy, !32, !"key_type_id_resolver_legacy", i1 false, i1 false}
!32 = !{!"../fs/nfs/nfs4idmap.c", i32 411, i32 24}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/nfs/nfs4idmap.c", i32 391, i32 18}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/nfs/nfs4idmap.c", i32 392, i32 18}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/nfs/nfs4idmap.c", i32 393, i32 19}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/nfs/nfs4idmap.c", i32 394, i32 20}
!41 = !{ptr @nfs_idmap_tokens, !42, !"nfs_idmap_tokens", i1 false, i1 false}
!42 = !{!"../fs/nfs/nfs4idmap.c", i32 390, i32 28}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../fs/nfs/nfs4idmap.c", i32 557, i32 3}
!45 = !{ptr @nfs_idmap_pipe_dir_object_ops, !46, !"nfs_idmap_pipe_dir_object_ops", i1 false, i1 false}
!46 = !{!"../fs/nfs/nfs4idmap.c", i32 449, i32 45}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/nfs/nfs4idmap.c", i32 442, i32 34}
!49 = !{ptr @idmap_upcall_ops, !50, !"idmap_upcall_ops", i1 false, i1 false}
!50 = !{!"../fs/nfs/nfs4idmap.c", i32 404, i32 34}
!51 = distinct !{null, !52, !"__already_done", i1 false, i1 false}
!52 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!53 = distinct !{null, !52, !"<string literal>", i1 false, i1 false}
!54 = distinct !{null, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/nfs/nfs4idmap.c", i32 291, i32 51}
!60 = distinct !{null, !61, !"__warned", i1 false, i1 false}
!61 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!62 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!64 = distinct !{null, !65, !"__warned", i1 false, i1 false}
!65 = !{!"../include/keys/user-type.h", i32 48, i32 36}
!66 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!68 = distinct !{null, !69, !"__warned", i1 false, i1 false}
!69 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!70 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!71 = distinct !{null, !72, !"__already_done", i1 false, i1 false}
!72 = !{!"../fs/nfs/nfs4trace.h", i32 1461, i32 1}
!73 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!74 = distinct !{null, !72, !"__warned", i1 false, i1 false}
!75 = distinct !{null, !76, !"__already_done", i1 false, i1 false}
!76 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!77 = !{ptr @.str.27, !76, !"<string literal>", i1 false, i1 false}
!78 = distinct !{null, !79, !"__already_done", i1 false, i1 false}
!79 = !{!"../fs/nfs/nfs4trace.h", i32 1462, i32 1}
!80 = distinct !{null, !79, !"__warned", i1 false, i1 false}
!81 = !{ptr @.str.28, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/nfs/nfs4idmap.c", i32 183, i32 31}
!83 = distinct !{null, !84, !"__already_done", i1 false, i1 false}
!84 = !{!"../fs/nfs/nfs4trace.h", i32 1463, i32 1}
!85 = distinct !{null, !84, !"__warned", i1 false, i1 false}
!86 = distinct !{null, !87, !"__already_done", i1 false, i1 false}
!87 = !{!"../fs/nfs/nfs4trace.h", i32 1464, i32 1}
!88 = distinct !{null, !87, !"__warned", i1 false, i1 false}
!89 = !{!"sp"}
!90 = !{i32 1, !"wchar_size", i32 2}
!91 = !{i32 1, !"min_enum_size", i32 4}
!92 = !{i32 8, !"branch-target-enforcement", i32 0}
!93 = !{i32 8, !"sign-return-address", i32 0}
!94 = !{i32 8, !"sign-return-address-all", i32 0}
!95 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!96 = !{i32 7, !"uwtable", i32 1}
!97 = !{i32 7, !"frame-pointer", i32 2}
!98 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!99 = !{!"auto-init"}
!100 = !{!"branch_weights", i32 1, i32 2000}
!101 = !{i64 2148760410}
!102 = !{i64 2148675119, i64 2148675151, i64 2148675180, i64 2148675214, i64 2148675245, i64 2148675268}
!103 = !{i64 2148760639}
!104 = !{i64 2148673464, i64 2148673496, i64 2148673525, i64 2148673559, i64 2148673590, i64 2148673613}
!105 = !{!"branch_weights", i32 2000, i32 1}
!106 = !{i64 2148761489}
!107 = !{i64 2148675929, i64 2148675961, i64 2148675990, i64 2148676024, i64 2148676055, i64 2148676078}
!108 = !{i64 2150382578}
!109 = !{i64 2148496532, i64 2148496537, i64 2148496550, i64 2148496594, i64 2148496628, i64 2148496649}
!110 = !{i64 2159023011}
!111 = !{i64 2159023288}
!112 = !{i64 2149492939}
!113 = !{i64 2149493975}
!114 = !{i64 2159041277}
!115 = !{i64 2159041558}
!116 = !{i64 2159059543}
!117 = !{i64 2159059820}
!118 = !{i64 2159081870}
!119 = !{i64 2159082151}
!120 = !{i64 2152184413, i64 2152184438}
!121 = !{i64 4679968}
!122 = !{i64 4680165}
!123 = !{i64 2152165398}
!124 = !{i64 2149484380}
!125 = !{i64 2149484646}
