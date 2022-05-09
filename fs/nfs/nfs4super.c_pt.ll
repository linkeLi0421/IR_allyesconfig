; ModuleID = '/llk/IR_all_yes/fs/nfs/nfs4super.c_pt.bc'
source_filename = "../fs/nfs/nfs4super.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rpc_version = type { i32, i32, ptr, ptr }
%struct.nfs_rpc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nfs_subversion = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%union.anon.20 = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.fs_context = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.p_log, ptr, ptr, ptr, i32, i32, i32, i32, i24 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.p_log = type { ptr, ptr }
%struct.nfs_fs_context = type { i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nfs_auth_info, i32, ptr, i32, i32, ptr, i16, i16, i8, %struct.anon.167, %struct.anon.169, ptr, ptr, ptr, %struct.nfs_clone_mount }
%struct.nfs_auth_info = type { i32, [12 x i32] }
%struct.anon.167 = type { %union.anon.168, i32, ptr, i32, i32, i16 }
%union.anon.168 = type { %struct.__kernel_sockaddr_storage }
%struct.__kernel_sockaddr_storage = type { %union.anon.121 }
%union.anon.121 = type { ptr, [124 x i8] }
%struct.anon.169 = type { %union.anon.170, i32, ptr, ptr, i32, i16, i16, i16, i16 }
%union.anon.170 = type { %struct.__kernel_sockaddr_storage }
%struct.nfs_clone_mount = type { ptr, ptr, ptr, i32 }
%struct.fs_parameter = type { ptr, i8, %union.anon.20, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.nfs_referral_count = type { %struct.list_head, ptr, i32 }
%struct.writeback_control = type { i32, i32, i64, i64, i32, i16, ptr, ptr, i32, i32, i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.146, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.147, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.148, ptr, %struct.address_space, %struct.list_head, %union.anon.149, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.146 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.147 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.148 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.149 = type { ptr }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.nfs_server = type { ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nfs_fsid, i64, %struct.timespec64, i32, ptr, i32, %struct.nfs_auth_info, ptr, ptr, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, %struct.rpc_wait_queue, ptr, %struct.rb_root, %struct.ida, %struct.ida, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, ptr, %struct.atomic_t, %struct.__kernel_sockaddr_storage, i32, i32, i16, i16, %struct.rpc_wait_queue, i32, ptr, i8 }
%struct.nfs_fsid = type { i64, i64 }
%struct.ida = type { %struct.xarray }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.pnfs_layout_hdr = type { %struct.refcount_struct, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, %struct.nfs4_stateid_struct, i32, i32, i32, i64, ptr, ptr, %struct.callback_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nfs4_stateid_struct = type { %union.anon.133, i32 }
%union.anon.133 = type { %struct.anon.134 }
%struct.anon.134 = type { i32, [12 x i8] }

@nfs4_fs_type = external dso_local global %struct.file_system_type, align 4
@nfs_version4 = external dso_local constant %struct.rpc_version, align 4
@nfs_v4_clientops = external dso_local constant %struct.nfs_rpc_ops, align 4
@nfs4_sops = internal constant { %struct.super_operations, [60 x i8] } { %struct.super_operations { ptr @nfs_alloc_inode, ptr null, ptr @nfs_free_inode, ptr null, ptr @nfs4_write_inode, ptr @nfs_drop_inode, ptr @nfs4_evict_inode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nfs_statfs, ptr null, ptr @nfs_umount_begin, ptr @nfs_show_options, ptr @nfs_show_devname, ptr @nfs_show_path, ptr @nfs_show_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@nfs4_xattr_handlers = external dso_local global [0 x ptr], align 4
@nfs_v4 = dso_local global { %struct.nfs_subversion, [32 x i8] } { %struct.nfs_subversion { ptr null, ptr @nfs4_fs_type, ptr @nfs_version4, ptr @nfs_v4_clientops, ptr @nfs4_sops, ptr @nfs4_xattr_handlers, %struct.list_head zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@nfs_debug = external dso_local local_unnamed_addr global i32, align 4
@nfs4_try_get_tree._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"--> nfs4_try_get_tree()\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nfs4_try_get_tree\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/nfs/nfs4super.c\00", [45 x i8] zeroinitializer }, align 32
@nfs4_try_get_tree._entry_ptr = internal global ptr @nfs4_try_get_tree._entry, section ".printk_index", align 4
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"NFS4: Couldn't follow remote path\00", [62 x i8] zeroinitializer }, align 32
@nfs4_try_get_tree._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"NFS4: Couldn't follow remote path\0A\00", [61 x i8] zeroinitializer }, align 32
@nfs4_try_get_tree._entry_ptr.6 = internal global ptr @nfs4_try_get_tree._entry.4, section ".printk_index", align 4
@nfs4_try_get_tree._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"<-- nfs4_try_get_tree() = %d [error]\0A\00", [58 x i8] zeroinitializer }, align 32
@nfs4_try_get_tree._entry_ptr.9 = internal global ptr @nfs4_try_get_tree._entry.7, section ".printk_index", align 4
@nfs4_try_get_tree._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"<-- nfs4_try_get_tree() = 0\0A\00", [35 x i8] zeroinitializer }, align 32
@nfs4_try_get_tree._entry_ptr.12 = internal global ptr @nfs4_try_get_tree._entry.10, section ".printk_index", align 4
@nfs4_get_referral_tree._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 246, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"--> nfs4_referral_mount()\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nfs4_get_referral_tree\00", [41 x i8] zeroinitializer }, align 32
@nfs4_get_referral_tree._entry_ptr = internal global ptr @nfs4_get_referral_tree._entry, section ".printk_index", align 4
@nfs4_get_referral_tree._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.14, ptr @.str.2, i32 253, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@nfs4_get_referral_tree._entry_ptr.16 = internal global ptr @nfs4_get_referral_tree._entry.15, section ".printk_index", align 4
@nfs4_get_referral_tree._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.14, ptr @.str.2, i32 254, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"<-- nfs4_get_referral_tree() = %d [error]\0A\00", [53 x i8] zeroinitializer }, align 32
@nfs4_get_referral_tree._entry_ptr.19 = internal global ptr @nfs4_get_referral_tree._entry.17, section ".printk_index", align 4
@nfs4_get_referral_tree._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.14, ptr @.str.2, i32 256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"<-- nfs4_get_referral_tree() = 0\0A\00", [62 x i8] zeroinitializer }, align 32
@nfs4_get_referral_tree._entry_ptr.22 = internal global ptr @nfs4_get_referral_tree._entry.20, section ".printk_index", align 4
@__UNIQUE_ID_file492 = internal constant [24 x i8] c"nfsv4.file=fs/nfs/nfsv4\00", section ".modinfo", align 1
@__UNIQUE_ID_license493 = internal constant [18 x i8] c"nfsv4.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_nfsv4__494_313_init_nfs_v46 = internal global ptr @init_nfs_v4, section ".initcall6.init", align 4
@__exitcall_exit_nfs_v4 = internal global ptr @exit_nfs_v4, section ".exitcall.exit", align 4
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"source\00", [25 x i8] zeroinitializer }, align 32
@__const.do_nfs4_mount.param = private unnamed_addr constant { ptr, i8, [3 x i8], %union.anon.20, i32, i32 } { ptr @.str.23, i8 2, [3 x i8] zeroinitializer, %union.anon.20 zeroinitializer, i32 0, i32 -1 }, align 4
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"[%s]:/\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s:/\00", [27 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nfs_referral_count_list_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.26, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@nfs_referral_count_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @nfs_referral_count_list, ptr @nfs_referral_count_list }, [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"nfs_referral_count_list_lock\00", [35 x i8] zeroinitializer }, align 32
@___asan_gen_.27 = private unnamed_addr constant [10 x i8] c"nfs4_sops\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 24, i32 38 }
@___asan_gen_.30 = private unnamed_addr constant [7 x i8] c"nfs_v4\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 38, i32 23 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 221, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 230, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 231, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 233, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 246, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 253, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 254, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 256, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 155, i32 10 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 185, i32 44 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 187, i32 44 }
@___asan_gen_.99 = private unnamed_addr constant [29 x i8] c"nfs_referral_count_list_lock\00", align 1
@___asan_gen_.102 = private unnamed_addr constant [24 x i8] c"nfs_referral_count_list\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 82, i32 8 }
@___asan_gen_.105 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.106 = private constant [22 x i8] c"../fs/nfs/nfs4super.c\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 83, i32 8 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_file492, ptr @__UNIQUE_ID_license493, ptr @__exitcall_exit_nfs_v4, ptr @__initcall__kmod_nfsv4__494_313_init_nfs_v46, ptr @exit_nfs_v4, ptr @nfs4_get_referral_tree._entry, ptr @nfs4_get_referral_tree._entry.15, ptr @nfs4_get_referral_tree._entry.17, ptr @nfs4_get_referral_tree._entry.20, ptr @nfs4_get_referral_tree._entry_ptr, ptr @nfs4_get_referral_tree._entry_ptr.16, ptr @nfs4_get_referral_tree._entry_ptr.19, ptr @nfs4_get_referral_tree._entry_ptr.22, ptr @nfs4_try_get_tree._entry, ptr @nfs4_try_get_tree._entry.10, ptr @nfs4_try_get_tree._entry.4, ptr @nfs4_try_get_tree._entry.7, ptr @nfs4_try_get_tree._entry_ptr, ptr @nfs4_try_get_tree._entry_ptr.12, ptr @nfs4_try_get_tree._entry_ptr.6, ptr @nfs4_try_get_tree._entry_ptr.9, ptr @nfs4_sops, ptr @nfs_v4, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @nfs_referral_count_list_lock, ptr @nfs_referral_count_list, ptr @.str.26], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_sops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_v4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_try_get_tree._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_try_get_tree._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_try_get_tree._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_try_get_tree._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_get_referral_tree._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_get_referral_tree._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_get_referral_tree._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_get_referral_tree._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_referral_count_list_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_referral_count_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs4_try_get_tree(ptr noundef %fc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_private.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %fs_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_private.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %2 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %2, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !67

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #13
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %call7 = tail call ptr @nfs4_create_server(ptr noundef %fc) #10
  %hostname = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 26, i32 2
  %3 = ptrtoint ptr %hostname to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hostname, align 4
  %export_path = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 26, i32 3
  %5 = ptrtoint ptr %export_path to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %export_path, align 4
  %call9 = tail call fastcc i32 @do_nfs4_mount(ptr noundef %call7, ptr noundef %fc, ptr noundef %4, ptr noundef %6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %do.body52, label %if.then11

if.then11:                                        ; preds = %do.end6
  %log12 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %7 = ptrtoint ptr %log12 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %log12, align 4
  %tobool13.not = icmp eq ptr %8, null
  br i1 %tobool13.not, label %do.body16, label %cond.true

cond.true:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %8, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.3) #10
  br label %do.body34

do.body16:                                        ; preds = %if.then11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %9 = load i32, ptr @nfs_debug, align 4
  %and17 = and i32 %9, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %do.body16.do.body34_crit_edge, label %do.end28, !prof !67

do.body16.do.body34_crit_edge:                    ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body34

do.end28:                                         ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #12
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #13
  br label %do.body34

do.body34:                                        ; preds = %do.end28, %do.body16.do.body34_crit_edge, %cond.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %10 = load i32, ptr @nfs_debug, align 4
  %and35 = and i32 %10, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %do.body34.if.end70_crit_edge, label %do.end46, !prof !67

do.body34.if.end70_crit_edge:                     ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

do.end46:                                         ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #12
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %call9) #13
  br label %if.end70

do.body52:                                        ; preds = %do.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %11 = load i32, ptr @nfs_debug, align 4
  %and53 = and i32 %11, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %do.body52.if.end70_crit_edge, label %do.end64, !prof !67

do.body52.if.end70_crit_edge:                     ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

do.end64:                                         ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #12
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #13
  br label %if.end70

if.end70:                                         ; preds = %do.end64, %do.body52.if.end70_crit_edge, %do.end46, %do.body34.if.end70_crit_edge
  ret i32 %call9
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_nfs4_mount(ptr noundef %server, ptr noundef %fc, ptr noundef %hostname, ptr noundef %export_path) unnamed_addr #0 align 64 {
entry:
  %param = alloca %struct.fs_parameter, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %param) #10
  %0 = call ptr @memcpy(ptr %param, ptr @__const.do_nfs4_mount.param, i32 20)
  %cmp.i71 = icmp ugt ptr %server, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i71, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %server to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @vfs_dup_fs_context(ptr noundef %fc) #10
  %cmp.i72 = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i72, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @nfs_free_server(ptr noundef %server) #10
  %2 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %source = getelementptr inbounds %struct.fs_context, ptr %call2, i32 0, i32 10
  %3 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %source, align 4
  tail call void @kfree(ptr noundef %4) #10
  %5 = ptrtoint ptr %source to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %source, align 4
  %fs_private.i = getelementptr inbounds %struct.fs_context, ptr %call2, i32 0, i32 3
  %6 = ptrtoint ptr %fs_private.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fs_private.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %7, align 4
  %server9 = getelementptr inbounds %struct.nfs_fs_context, ptr %7, i32 0, i32 28
  %9 = ptrtoint ptr %server9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %server, ptr %server9, align 4
  %call10 = tail call i32 @strlen(ptr noundef %hostname) #14
  %add = add i32 %call10, 5
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #15
  %10 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call9.i, ptr %10, align 4
  %cmp = icmp eq ptr %call9.i, null
  br i1 %cmp, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @put_fs_context(ptr noundef %call2) #10
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %call14 = tail call ptr @strchr(ptr noundef %hostname, i32 noundef 58)
  %tobool.not = icmp eq ptr %call14, null
  %.str.25..str.24 = select i1 %tobool.not, ptr @.str.25, ptr @.str.24
  %call17 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call9.i, i32 noundef %add, ptr noundef nonnull %.str.25..str.24, ptr noundef %hostname)
  %12 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 3
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call17, ptr %12, align 4
  %call20 = call i32 @vfs_parse_fs_param(ptr noundef %call2, ptr noundef nonnull %param) #10
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %10, align 4
  call void @kfree(ptr noundef %15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  call void @put_fs_context(ptr noundef %call2) #10
  br label %cleanup

if.end23:                                         ; preds = %if.end13
  %call24 = call ptr @fc_mount(ptr noundef %call2) #10
  call void @put_fs_context(ptr noundef %call2) #10
  %cmp.i73 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i73, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %call24 to i32
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3264, i32 noundef 16) #16
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.end28.if.then31_crit_edge, label %if.end.i74

if.end28.if.then31_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then31

if.end.i74:                                       ; preds = %if.end28
  %18 = call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task.i, align 8
  %task2.i = getelementptr inbounds %struct.nfs_referral_count, ptr %call7.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %task2.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %task2.i, align 8
  %referral_count.i = getelementptr inbounds %struct.nfs_referral_count, ptr %call7.i.i, i32 0, i32 2
  %23 = ptrtoint ptr %referral_count.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %referral_count.i, align 4
  call void @_raw_spin_lock(ptr noundef nonnull @nfs_referral_count_list_lock) #10
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end.i74
  %p.0.in.i.i = phi ptr [ @nfs_referral_count_list, %if.end.i74 ], [ %p.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %24 = ptrtoint ptr %p.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %p.0.i.i = load ptr, ptr %p.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %p.0.i.i, @nfs_referral_count_list
  br i1 %cmp.not.i.i, label %for.cond.i.i.if.else10.i_crit_edge, label %for.body.i.i

for.cond.i.i.if.else10.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else10.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %task.i.i = getelementptr inbounds %struct.nfs_referral_count, ptr %p.0.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task.i.i, align 4
  %27 = call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i to ptr
  %task1.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %task1.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task1.i.i, align 8
  %cmp2.i.i = icmp eq ptr %26, %30
  br i1 %cmp2.i.i, label %nfs_find_referral_count.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i

nfs_find_referral_count.exit.i:                   ; preds = %for.body.i.i
  %cmp.not.i = icmp eq ptr %p.0.i.i, null
  br i1 %cmp.not.i, label %nfs_find_referral_count.exit.i.if.else10.i_crit_edge, label %if.then4.i

nfs_find_referral_count.exit.i.if.else10.i_crit_edge: ; preds = %nfs_find_referral_count.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else10.i

if.then4.i:                                       ; preds = %nfs_find_referral_count.exit.i
  %referral_count5.i = getelementptr inbounds %struct.nfs_referral_count, ptr %p.0.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %referral_count5.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %referral_count5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp6.i = icmp ugt i32 %32, 1
  br i1 %cmp6.i, label %if.then4.i.nfs_referral_loop_protect.exit_crit_edge, label %if.else.i

if.then4.i.nfs_referral_loop_protect.exit_crit_edge: ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nfs_referral_loop_protect.exit

if.else.i:                                        ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  %inc.i = add nuw nsw i32 %32, 1
  %33 = ptrtoint ptr %referral_count5.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %inc.i, ptr %referral_count5.i, align 4
  br label %nfs_referral_loop_protect.exit

if.else10.i:                                      ; preds = %nfs_find_referral_count.exit.i.if.else10.i_crit_edge, %for.cond.i.i.if.else10.i_crit_edge
  %34 = load ptr, ptr @nfs_referral_count_list, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @nfs_referral_count_list, ptr noundef %34) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.else10.i.nfs_referral_loop_protect.exit_crit_edge

if.else10.i.nfs_referral_loop_protect.exit_crit_edge: ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nfs_referral_loop_protect.exit

if.end.i.i.i:                                     ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call7.i.i, ptr %prev1.i.i.i, align 4
  %36 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %34, ptr %call7.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @nfs_referral_count_list, ptr %prev3.i.i.i, align 4
  store volatile ptr %call7.i.i, ptr @nfs_referral_count_list, align 4
  br label %nfs_referral_loop_protect.exit

nfs_referral_loop_protect.exit:                   ; preds = %if.end.i.i.i, %if.else10.i.nfs_referral_loop_protect.exit_crit_edge, %if.else.i, %if.then4.i.nfs_referral_loop_protect.exit_crit_edge
  %new.0.i = phi ptr [ %call7.i.i, %if.else.i ], [ %call7.i.i, %if.then4.i.nfs_referral_loop_protect.exit_crit_edge ], [ null, %if.else10.i.nfs_referral_loop_protect.exit_crit_edge ], [ null, %if.end.i.i.i ]
  %tobool30.not = phi i1 [ true, %if.else.i ], [ false, %if.then4.i.nfs_referral_loop_protect.exit_crit_edge ], [ true, %if.else10.i.nfs_referral_loop_protect.exit_crit_edge ], [ true, %if.end.i.i.i ]
  %ret.0.i = phi i32 [ 0, %if.else.i ], [ -40, %if.then4.i.nfs_referral_loop_protect.exit_crit_edge ], [ 0, %if.else10.i.nfs_referral_loop_protect.exit_crit_edge ], [ 0, %if.end.i.i.i ]
  call void @_raw_spin_unlock(ptr noundef nonnull @nfs_referral_count_list_lock) #10
  call void @kfree(ptr noundef %new.0.i) #10
  br i1 %tobool30.not, label %if.end32, label %nfs_referral_loop_protect.exit.if.then31_crit_edge

nfs_referral_loop_protect.exit.if.then31_crit_edge: ; preds = %nfs_referral_loop_protect.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then31

if.then31:                                        ; preds = %nfs_referral_loop_protect.exit.if.then31_crit_edge, %if.end28.if.then31_crit_edge
  %ret.1.i81 = phi i32 [ %ret.0.i, %nfs_referral_loop_protect.exit.if.then31_crit_edge ], [ -12, %if.end28.if.then31_crit_edge ]
  call void @mntput(ptr noundef %call24) #10
  br label %cleanup

if.end32:                                         ; preds = %nfs_referral_loop_protect.exit
  %call33 = call ptr @mount_subtree(ptr noundef %call24, ptr noundef %export_path) #10
  call fastcc void @nfs_referral_loop_unprotect()
  %cmp.i75 = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i75, label %if.then35, label %if.end37

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %call33 to i32
  br label %cleanup

if.end37:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %root = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 5
  %39 = ptrtoint ptr %root to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call33, ptr %root, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.then35, %if.then31, %if.then26, %if.then22, %if.then12, %if.then4, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ %2, %if.then4 ], [ -12, %if.then12 ], [ %call20, %if.then22 ], [ %16, %if.then26 ], [ %ret.1.i81, %if.then31 ], [ %38, %if.then35 ], [ 0, %if.end37 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %param) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs4_create_server(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @logfc(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs4_get_referral_tree(ptr noundef %fc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_private.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %fs_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_private.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %2 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !67

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #13
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %call7 = tail call ptr @nfs4_create_referral_server(ptr noundef %fc) #10
  %hostname = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 26, i32 2
  %3 = ptrtoint ptr %hostname to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hostname, align 4
  %export_path = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 26, i32 3
  %5 = ptrtoint ptr %export_path to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %export_path, align 4
  %call9 = tail call fastcc i32 @do_nfs4_mount(ptr noundef %call7, ptr noundef %fc, ptr noundef %4, ptr noundef %6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %do.body52, label %if.then11

if.then11:                                        ; preds = %do.end6
  %log12 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %7 = ptrtoint ptr %log12 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %log12, align 4
  %tobool13.not = icmp eq ptr %8, null
  br i1 %tobool13.not, label %do.body16, label %cond.true

cond.true:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %8, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.3) #10
  br label %do.body34

do.body16:                                        ; preds = %if.then11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %9 = load i32, ptr @nfs_debug, align 4
  %and17 = and i32 %9, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %do.body16.do.body34_crit_edge, label %do.end28, !prof !67

do.body16.do.body34_crit_edge:                    ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body34

do.end28:                                         ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #12
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #13
  br label %do.body34

do.body34:                                        ; preds = %do.end28, %do.body16.do.body34_crit_edge, %cond.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %10 = load i32, ptr @nfs_debug, align 4
  %and35 = and i32 %10, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %do.body34.if.end70_crit_edge, label %do.end46, !prof !67

do.body34.if.end70_crit_edge:                     ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

do.end46:                                         ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #12
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %call9) #13
  br label %if.end70

do.body52:                                        ; preds = %do.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %11 = load i32, ptr @nfs_debug, align 4
  %and53 = and i32 %11, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %do.body52.if.end70_crit_edge, label %do.end64, !prof !67

do.body52.if.end70_crit_edge:                     ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

do.end64:                                         ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #12
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #13
  br label %if.end70

if.end70:                                         ; preds = %do.end64, %do.body52.if.end70_crit_edge, %do.end46, %do.body34.if.end70_crit_edge
  ret i32 %call9
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs4_create_referral_server(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_nfs_v4() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @nfs4_pnfs_v3_ds_connect_unload() #10
  tail call void @unregister_nfs_version(ptr noundef nonnull @nfs_v4) #10
  tail call void @nfs4_xattr_cache_exit() #10
  tail call void @nfs42_ssc_unregister_ops() #10
  tail call void @nfs4_unregister_sysctl() #10
  tail call void @nfs_idmap_quit() #10
  tail call void @nfs_dns_resolver_destroy() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_pnfs_v3_ds_connect_unload() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_nfs_version(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_xattr_cache_exit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs42_ssc_unregister_ops() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_unregister_sysctl() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_idmap_quit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_dns_resolver_destroy() local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_nfs_v4() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nfs_dns_resolver_init() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @nfs_idmap_init() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out1_crit_edge

if.end.out1_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out1

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @nfs4_xattr_cache_init() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.out2_crit_edge

if.end4.out2_crit_edge:                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %out2

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @nfs4_register_sysctl() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.out2_crit_edge

if.end8.out2_crit_edge:                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %out2

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @nfs42_ssc_register_ops() #10
  tail call void @register_nfs_version(ptr noundef nonnull @nfs_v4) #10
  br label %cleanup

out2:                                             ; preds = %if.end8.out2_crit_edge, %if.end4.out2_crit_edge
  %err.0 = phi i32 [ %call5, %if.end4.out2_crit_edge ], [ %call9, %if.end8.out2_crit_edge ]
  tail call void @nfs_idmap_quit() #10
  br label %out1

out1:                                             ; preds = %out2, %if.end.out1_crit_edge
  %err.1 = phi i32 [ %call1, %if.end.out1_crit_edge ], [ %err.0, %out2 ]
  tail call void @nfs_dns_resolver_destroy() #10
  br label %cleanup

cleanup:                                          ; preds = %out1, %if.end12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ %call, %entry.cleanup_crit_edge ], [ %err.1, %out1 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_alloc_inode(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_free_inode(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs4_write_inode(ptr noundef %inode, ptr noundef %wbc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nfs_write_inode(ptr noundef %inode, ptr noundef %wbc) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sync_mode = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 4
  %0 = ptrtoint ptr %sync_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sync_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp1 = icmp eq i32 %1, 1
  %call2 = tail call i32 @pnfs_layoutcommit_inode(ptr noundef %inode, i1 noundef zeroext %cmp1) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call2, %if.then ], [ %call, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_drop_inode(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs4_evict_inode(ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_data = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46
  tail call void @truncate_inode_pages_final(ptr noundef %i_data) #10
  tail call void @clear_inode(ptr noundef %inode) #10
  tail call void @nfs_inode_evict_delegation(ptr noundef %inode) #10
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %pnfs_curr_ld.i.i = getelementptr inbounds %struct.nfs_server, ptr %3, i32 0, i32 46
  %4 = ptrtoint ptr %pnfs_curr_ld.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pnfs_curr_ld.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %5, null
  br i1 %cmp.i.not.i, label %entry.pnfs_return_layout.exit_crit_edge, label %land.lhs.true.i

entry.pnfs_return_layout.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %pnfs_return_layout.exit

land.lhs.true.i:                                  ; preds = %entry
  %layout.i = getelementptr i8, ptr %inode, i32 -32
  %6 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %layout.i, align 8
  %tobool3.not.i = icmp eq ptr %7, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.pnfs_return_layout.exit_crit_edge, label %if.then.i

land.lhs.true.i.pnfs_return_layout.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pnfs_return_layout.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %plh_flags.i = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %7, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 5, ptr noundef %plh_flags.i) #10
  %call5.i = tail call i32 @_pnfs_return_layout(ptr noundef %inode) #10
  br label %pnfs_return_layout.exit

pnfs_return_layout.exit:                          ; preds = %if.then.i, %land.lhs.true.i.pnfs_return_layout.exit_crit_edge, %entry.pnfs_return_layout.exit_crit_edge
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -448
  tail call void @pnfs_destroy_layout_final(ptr noundef %add.ptr.i) #10
  tail call void @nfs_clear_inode(ptr noundef %inode) #10
  tail call void @nfs4_xattr_cache_zap(ptr noundef %inode) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_statfs(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_umount_begin(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_show_options(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_show_devname(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_show_path(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_show_stats(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_write_inode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pnfs_layoutcommit_inode(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages_final(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_inode_evict_delegation(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_destroy_layout_final(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_clear_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_xattr_cache_zap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_pnfs_return_layout(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vfs_dup_fs_context(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_free_server(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_fs_context(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_parse_fs_param(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fc_mount(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mntput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mount_subtree(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfs_referral_loop_unprotect() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @nfs_referral_count_list_lock) #10
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %p.0.in.i = phi ptr [ @nfs_referral_count_list, %entry ], [ %p.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %p.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %p.0.i = load ptr, ptr %p.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %p.0.i, @nfs_referral_count_list
  br i1 %cmp.not.i, label %for.cond.i.nfs_find_referral_count.exit_crit_edge, label %for.body.i

for.cond.i.nfs_find_referral_count.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nfs_find_referral_count.exit

for.body.i:                                       ; preds = %for.cond.i
  %task.i = getelementptr inbounds %struct.nfs_referral_count, ptr %p.0.i, i32 0, i32 1
  %1 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %task.i, align 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i to ptr
  %task1.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task1.i, align 8
  %cmp2.i = icmp eq ptr %2, %6
  br i1 %cmp2.i, label %for.body.i.nfs_find_referral_count.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

for.body.i.nfs_find_referral_count.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nfs_find_referral_count.exit

nfs_find_referral_count.exit:                     ; preds = %for.body.i.nfs_find_referral_count.exit_crit_edge, %for.cond.i.nfs_find_referral_count.exit_crit_edge
  %retval.0.i = phi ptr [ %p.0.i, %for.body.i.nfs_find_referral_count.exit_crit_edge ], [ null, %for.cond.i.nfs_find_referral_count.exit_crit_edge ]
  %referral_count = getelementptr inbounds %struct.nfs_referral_count, ptr %retval.0.i, i32 0, i32 2
  %7 = ptrtoint ptr %referral_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %referral_count, align 4
  %dec = add i32 %8, -1
  store i32 %dec, ptr %referral_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then, label %nfs_find_referral_count.exit.if.end_crit_edge

nfs_find_referral_count.exit.if.end_crit_edge:    ; preds = %nfs_find_referral_count.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %nfs_find_referral_count.exit
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %retval.0.i) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %retval.0.i, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %retval.0.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %15 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %retval.0.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %retval.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %if.end

if.end:                                           ; preds = %list_del.exit, %nfs_find_referral_count.exit.if.end_crit_edge
  %p.0 = phi ptr [ %retval.0.i, %list_del.exit ], [ null, %nfs_find_referral_count.exit.if.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @nfs_referral_count_list_lock) #10
  tail call void @kfree(ptr noundef %p.0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_dns_resolver_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_idmap_init() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @nfs4_xattr_cache_init() local_unnamed_addr #2 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_register_sysctl() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs42_ssc_register_ops() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_nfs_version(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !26, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !42, !44, !46, !48, !50, !52, !54, !55}
!llvm.named.register.sp = !{!57}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @nfs_v4, !1, !"nfs_v4", i1 false, i1 false}
!1 = !{!"../fs/nfs/nfs4super.c", i32 38, i32 23}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/nfs/nfs4super.c", i32 221, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nfs4_try_get_tree._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @nfs4_try_get_tree._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/nfs/nfs4super.c", i32 230, i32 3}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @nfs4_try_get_tree._entry.4, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @nfs4_try_get_tree._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/nfs/nfs4super.c", i32 231, i32 3}
!15 = !{ptr @nfs4_try_get_tree._entry.7, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @nfs4_try_get_tree._entry_ptr.9, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/nfs/nfs4super.c", i32 233, i32 3}
!19 = !{ptr @nfs4_try_get_tree._entry.10, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @nfs4_try_get_tree._entry_ptr.12, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/nfs/nfs4super.c", i32 246, i32 2}
!23 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @nfs4_get_referral_tree._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @nfs4_get_referral_tree._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @nfs4_get_referral_tree._entry.15, !27, !"_entry", i1 false, i1 false}
!27 = !{!"../fs/nfs/nfs4super.c", i32 253, i32 3}
!28 = !{ptr @nfs4_get_referral_tree._entry_ptr.16, !27, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/nfs/nfs4super.c", i32 254, i32 3}
!31 = !{ptr @nfs4_get_referral_tree._entry.17, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @nfs4_get_referral_tree._entry_ptr.19, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.21, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/nfs/nfs4super.c", i32 256, i32 3}
!35 = !{ptr @nfs4_get_referral_tree._entry.20, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @nfs4_get_referral_tree._entry_ptr.22, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @__UNIQUE_ID_file492, !38, !"__UNIQUE_ID_file492", i1 false, i1 false}
!38 = !{!"../fs/nfs/nfs4super.c", i32 311, i32 1}
!39 = !{ptr @__UNIQUE_ID_license493, !38, !"__UNIQUE_ID_license493", i1 false, i1 false}
!40 = !{ptr @__initcall__kmod_nfsv4__494_313_init_nfs_v46, !41, !"__initcall__kmod_nfsv4__494_313_init_nfs_v46", i1 false, i1 false}
!41 = !{!"../fs/nfs/nfs4super.c", i32 313, i32 1}
!42 = !{ptr @__exitcall_exit_nfs_v4, !43, !"__exitcall_exit_nfs_v4", i1 false, i1 false}
!43 = !{!"../fs/nfs/nfs4super.c", i32 314, i32 1}
!44 = !{ptr @nfs4_sops, !45, !"nfs4_sops", i1 false, i1 false}
!45 = !{!"../fs/nfs/nfs4super.c", i32 24, i32 38}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/nfs/nfs4super.c", i32 155, i32 10}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/nfs/nfs4super.c", i32 185, i32 44}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/nfs/nfs4super.c", i32 187, i32 44}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/nfs/nfs4super.c", i32 83, i32 8}
!54 = !{ptr @nfs_referral_count_list_lock, !53, !"nfs_referral_count_list_lock", i1 false, i1 false}
!55 = !{ptr @nfs_referral_count_list, !56, !"nfs_referral_count_list", i1 false, i1 false}
!56 = !{!"../fs/nfs/nfs4super.c", i32 82, i32 8}
!57 = !{!"sp"}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{!"branch_weights", i32 2000, i32 1}
