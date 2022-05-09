; ModuleID = '/llk/IR_all_yes/fs/pstore/inode.c_pt.bc'
source_filename = "../fs/pstore/inode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.match_token = type { i32, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.64, %struct.list_head, %struct.list_head, %union.anon.65 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.16, ptr }
%union.anon.16 = type { i64 }
%struct.lockref = type { %union.anon.18 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { %struct.spinlock, i32 }
%union.anon.64 = type { %struct.list_head }
%union.anon.65 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.74, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.75, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.76, ptr, %struct.address_space, %struct.list_head, %union.anon.77, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.74 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.75 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.76 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.77 = type { ptr }
%struct.pstore_private = type { %struct.list_head, ptr, ptr, i32 }
%struct.pstore_record = type { ptr, i32, i64, %struct.timespec64, ptr, i32, i32, i32, i32, i32, i8 }
%struct.pstore_info = type { ptr, ptr, %struct.semaphore, ptr, i32, %struct.mutex, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.pstore_ftrace_seq_data = type { ptr, i32, i32 }
%struct.pstore_ftrace_record = type { i32, i32, i64 }
%struct.substring_t = type { ptr, ptr }

@records_list_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @records_list_lock, i64 52), ptr getelementptr (i8, ptr @records_list_lock, i64 52) }, ptr @records_list_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@records_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @records_list, ptr @records_list }, [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/pstore/inode.c\00", [46 x i8] zeroinitializer }, align 32
@pstore_file_operations = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @pstore_file_llseek, ptr @pstore_file_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @pstore_file_open, ptr null, ptr @seq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s-%s-%llu%s\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c".enc.z\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@psinfo = external dso_local local_unnamed_addr global ptr, align 4
@fs_kobj = external dso_local local_unnamed_addr global ptr, align 4
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pstore\00", [25 x i8] zeroinitializer }, align 32
@pstore_fs_type = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str.4, i32 0, ptr null, ptr null, ptr @pstore_mount, ptr @pstore_kill_sb, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@pstore_sb_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @pstore_sb_lock, i64 52), ptr getelementptr (i8, ptr @pstore_sb_lock, i64 52) }, ptr @pstore_sb_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@pstore_sb = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pstore_sb_lock.wait_lock\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pstore_sb_lock\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"records_list_lock.wait_lock\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"records_list_lock\00", [46 x i8] zeroinitializer }, align 32
@pstore_ftrace_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @pstore_ftrace_seq_start, ptr @pstore_ftrace_seq_stop, ptr @pstore_ftrace_seq_next, ptr @pstore_ftrace_seq_show }, [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"CPU:%d ts:%llu %08lx  %08lx  %ps <- %pS\0A\00", [55 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pstore_ops = internal constant { %struct.super_operations, [60 x i8] } { %struct.super_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @generic_delete_inode, ptr @pstore_evict_inode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @simple_statfs, ptr @pstore_remount, ptr null, ptr @pstore_show_options, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@pstore_dir_inode_operations = internal constant %struct.inode_operations { ptr @simple_lookup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pstore_unlink, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@simple_dir_operations = external dso_local constant %struct.file_operations, align 4
@kmsg_bytes = external dso_local local_unnamed_addr global i32, align 4
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c",kmsg_bytes=%lu\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@tokens = internal constant { [2 x %struct.match_token], [16 x i8] } { [2 x %struct.match_token] [%struct.match_token { i32 0, ptr @.str.12 }, %struct.match_token { i32 1, ptr null }], [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"kmsg_bytes=%u\00", [18 x i8] zeroinitializer }, align 32
@___asan_gen_.13 = private unnamed_addr constant [18 x i8] c"records_list_lock\00", align 1
@___asan_gen_.16 = private unnamed_addr constant [13 x i8] c"records_list\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 32, i32 8 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 326, i32 8 }
@___asan_gen_.22 = private unnamed_addr constant [23 x i8] c"pstore_file_operations\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 169, i32 37 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 373, i32 32 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 376, i32 25 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 376, i32 36 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 494, i32 42 }
@___asan_gen_.37 = private unnamed_addr constant [15 x i8] c"pstore_fs_type\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 482, i32 32 }
@___asan_gen_.40 = private unnamed_addr constant [15 x i8] c"pstore_sb_lock\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [10 x i8] c"pstore_sb\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 35, i32 28 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 34, i32 8 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 31, i32 8 }
@___asan_gen_.58 = private unnamed_addr constant [22 x i8] c"pstore_ftrace_seq_ops\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 121, i32 36 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 112, i32 16 }
@___asan_gen_.64 = private unnamed_addr constant [11 x i8] c"pstore_ops\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 282, i32 38 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 270, i32 17 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 248, i32 31 }
@___asan_gen_.73 = private unnamed_addr constant [7 x i8] c"tokens\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 234, i32 28 }
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.77 = private constant [21 x i8] c"../fs/pstore/inode.c\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 235, i32 19 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @pstore_exit_fs, ptr @records_list_lock, ptr @records_list, ptr @.str, ptr @pstore_file_operations, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @pstore_fs_type, ptr @pstore_sb_lock, ptr @pstore_sb, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @pstore_ftrace_seq_ops, ptr @.str.9, ptr @pstore_ops, ptr @.str.10, ptr @.str.11, ptr @tokens, ptr @.str.12], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @records_list_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @records_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pstore_file_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pstore_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pstore_sb_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pstore_sb to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pstore_ftrace_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pstore_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tokens to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pstore_put_backend_records(ptr noundef readnone %psi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @pstore_sb_lock, i32 noundef 0) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @psinfo to i32))
  %0 = load ptr, ptr @psinfo, align 4
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %entry.psinfo_lock_root.exit.thread_crit_edge, label %lor.lhs.false.i

entry.psinfo_lock_root.exit.thread_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %psinfo_lock_root.exit.thread

lor.lhs.false.i:                                  ; preds = %entry
  %1 = load ptr, ptr @pstore_sb, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.psinfo_lock_root.exit.thread_crit_edge, label %psinfo_lock_root.exit

lor.lhs.false.i.psinfo_lock_root.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %psinfo_lock_root.exit.thread

psinfo_lock_root.exit.thread:                     ; preds = %lor.lhs.false.i.psinfo_lock_root.exit.thread_crit_edge, %entry.psinfo_lock_root.exit.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @pstore_sb_lock) #6
  br label %cleanup

psinfo_lock_root.exit:                            ; preds = %lor.lhs.false.i
  %s_root.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %s_root.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_root.i, align 64
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i.i, align 8
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i.i) #6
  tail call void @mutex_unlock(ptr noundef nonnull @pstore_sb_lock) #6
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %psinfo_lock_root.exit.cleanup_crit_edge, label %if.end

psinfo_lock_root.exit.cleanup_crit_edge:          ; preds = %psinfo_lock_root.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %psinfo_lock_root.exit
  tail call void @mutex_lock_nested(ptr noundef nonnull @records_list_lock, i32 noundef 0) #6
  %6 = load ptr, ptr @records_list, align 4
  %cmp.not69 = icmp eq ptr %6, @records_list
  br i1 %cmp.not69, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %pos.070 = phi ptr [ %tmp.072, %for.inc.for.body_crit_edge ], [ %6, %if.end.for.body_crit_edge ]
  %7 = ptrtoint ptr %pos.070 to i32
  call void @__asan_load4_noabort(i32 %7)
  %tmp.072 = load ptr, ptr %pos.070, align 4
  %record = getelementptr inbounds %struct.pstore_private, ptr %pos.070, i32 0, i32 2
  %8 = ptrtoint ptr %record to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %record, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %cmp7 = icmp eq ptr %11, %psi
  br i1 %cmp7, label %if.then8, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then8:                                         ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pos.070) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.then8.list_del_init.exit_crit_edge

if.then8.list_del_init.exit_crit_edge:            ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pos.070, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %pos.070 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pos.070, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then8.list_del_init.exit_crit_edge
  %18 = ptrtoint ptr %pos.070 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %pos.070, ptr %pos.070, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %pos.070, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %pos.070, ptr %prev.i3.i, align 4
  %20 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %d_inode.i.i, align 8
  %dentry = getelementptr inbounds %struct.pstore_private, ptr %pos.070, i32 0, i32 1
  %22 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dentry, align 4
  %call11 = tail call i32 @simple_unlink(ptr noundef %21, ptr noundef %23) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end38.critedge, label %do.end, !prof !51

do.end:                                           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 326, i32 noundef 9, ptr noundef null) #6
  br label %for.end

if.end38.critedge:                                ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dentry, align 4
  tail call void @d_drop(ptr noundef %25) #6
  %26 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dentry, align 4
  tail call void @dput(ptr noundef %27) #6
  %28 = ptrtoint ptr %dentry to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %dentry, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end38.critedge, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %tmp.072, @records_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end, %if.end.for.end_crit_edge
  %rc.2 = phi i32 [ %call11, %do.end ], [ 0, %if.end.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @records_list_lock) #6
  %29 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %d_inode.i.i, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %30, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end, %psinfo_lock_root.exit.cleanup_crit_edge, %psinfo_lock_root.exit.thread
  %retval.0 = phi i32 [ %rc.2, %for.end ], [ 0, %psinfo_lock_root.exit.cleanup_crit_edge ], [ 0, %psinfo_lock_root.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_unlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_drop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pstore_mkfile(ptr noundef %root, ptr noundef %record) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca %struct.timespec64, align 8
  %name = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %name) #6
  %0 = call ptr @memset(ptr %name, i32 255, i32 64)
  %size1 = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 5
  %1 = ptrtoint ptr %size1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %size1, align 4
  %ecc_notice_size = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 6
  %3 = ptrtoint ptr %ecc_notice_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ecc_notice_size, align 8
  %add = add i32 %4, %2
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %root, i32 0, i32 5
  %5 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 25
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_rwsem.i, i32 noundef 4) #6
  %7 = ptrtoint ptr %i_rwsem.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %i_rwsem.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i.i.not = icmp eq i32 %8, 0
  br i1 %cmp.i.i.not, label %do.end, label %if.end25, !prof !52

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 354, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end25:                                         ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @records_list_lock, i32 noundef 0) #6
  %pos.0113 = load ptr, ptr @records_list, align 4
  %cmp.not114 = icmp eq ptr %pos.0113, @records_list
  br i1 %cmp.not114, label %if.end25.for.end_crit_edge, label %for.body.lr.ph

if.end25.for.end_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end25
  %type30 = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 1
  %9 = ptrtoint ptr %type30 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type30, align 4
  %id33 = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %pos.0115 = phi ptr [ %pos.0113, %for.body.lr.ph ], [ %pos.0, %for.inc.for.body_crit_edge ]
  %record29 = getelementptr inbounds %struct.pstore_private, ptr %pos.0115, i32 0, i32 2
  %11 = ptrtoint ptr %record29 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %record29, align 4
  %type = getelementptr inbounds %struct.pstore_record, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %10)
  %cmp31 = icmp eq i32 %14, %10
  br i1 %cmp31, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %id = getelementptr inbounds %struct.pstore_record, ptr %12, i32 0, i32 2
  %15 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %id, align 8
  %17 = ptrtoint ptr %id33 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %id33, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %18)
  %cmp34 = icmp eq i64 %16, %18
  br i1 %cmp34, label %land.lhs.true35, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true35:                                  ; preds = %land.lhs.true
  %19 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %12, align 8
  %21 = ptrtoint ptr %record to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %record, align 8
  %cmp38 = icmp eq ptr %20, %22
  br i1 %cmp38, label %land.lhs.true35.fail_crit_edge, label %land.lhs.true35.for.inc_crit_edge

land.lhs.true35.for.inc_crit_edge:                ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true35.fail_crit_edge:                   ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

for.inc:                                          ; preds = %land.lhs.true35.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %23 = ptrtoint ptr %pos.0115 to i32
  call void @__asan_load4_noabort(i32 %23)
  %pos.0 = load ptr, ptr %pos.0115, align 4
  %cmp.not = icmp eq ptr %pos.0, @records_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end25.for.end_crit_edge
  %d_sb = getelementptr inbounds %struct.dentry, ptr %root, i32 0, i32 9
  %24 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %d_sb, align 4
  %call.i = tail call ptr @new_inode(ptr noundef %25) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.end.fail_crit_edge, label %if.end48

for.end.fail_crit_edge:                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end48:                                         ; preds = %for.end
  %call1.i = tail call i32 @get_next_ino() #6
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 11
  %26 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call1.i, ptr %i_ino.i, align 8
  %i_atime.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 15
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 16
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #6
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, ptr noundef nonnull %call.i) #6
  %27 = call ptr @memcpy(ptr %i_ctime.i, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #6
  %28 = call ptr @memcpy(ptr %i_mtime.i, ptr %i_ctime.i, i32 16)
  %29 = call ptr @memcpy(ptr %i_atime.i, ptr %i_ctime.i, i32 16)
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 -32476, ptr %call.i, align 8
  %31 = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 44
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @pstore_file_operations, ptr %31, align 8
  %type49 = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 1
  %33 = ptrtoint ptr %type49 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %type49, align 4
  %call50 = call ptr @pstore_type_to_name(i32 noundef %34) #6
  %35 = ptrtoint ptr %record to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %record, align 8
  %name52 = getelementptr inbounds %struct.pstore_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %name52 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %name52, align 4
  %id53 = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 2
  %39 = ptrtoint ptr %id53 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %id53, align 8
  %compressed = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 10
  %41 = ptrtoint ptr %compressed to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %compressed, align 8, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool54.not = icmp eq i8 %42, 0
  %cond = select i1 %tobool54.not, ptr @.str.3, ptr @.str.2
  %call55 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %name, i32 noundef 64, ptr noundef nonnull @.str.1, ptr noundef %call50, ptr noundef %38, i64 noundef %40, ptr noundef nonnull %cond) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %43 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %43, i32 noundef 3520, i32 noundef 20) #9
  %tobool57.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool57.not, label %if.end48.fail_inode_crit_edge, label %if.end59

if.end48.fail_inode_crit_edge:                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail_inode

if.end59:                                         ; preds = %if.end48
  %call61 = call ptr @d_alloc_name(ptr noundef %root, ptr noundef nonnull %name) #6
  %tobool62.not = icmp eq ptr %call61, null
  br i1 %tobool62.not, label %if.end.i, label %if.end64

if.end64:                                         ; preds = %if.end59
  %dentry65 = getelementptr inbounds %struct.pstore_private, ptr %call7.i.i, i32 0, i32 1
  %44 = ptrtoint ptr %dentry65 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call61, ptr %dentry65, align 8
  %record66 = getelementptr inbounds %struct.pstore_private, ptr %call7.i.i, i32 0, i32 2
  %45 = ptrtoint ptr %record66 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %record, ptr %record66, align 4
  %total_size = getelementptr inbounds %struct.pstore_private, ptr %call7.i.i, i32 0, i32 3
  %46 = ptrtoint ptr %total_size to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %add, ptr %total_size, align 8
  %conv = zext i32 %add to i64
  %i_size = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 14
  %47 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %conv, ptr %i_size, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 54
  %48 = ptrtoint ptr %i_private to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call7.i.i, ptr %i_private, align 4
  %time = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 3
  %49 = ptrtoint ptr %time to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %time, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %50)
  %tobool67.not = icmp eq i64 %50, 0
  br i1 %tobool67.not, label %if.end64.if.end70_crit_edge, label %if.then68

if.end64.if.end70_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

if.then68:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  %51 = call ptr @memcpy(ptr %i_ctime.i, ptr %time, i32 16)
  %52 = call ptr @memmove(ptr %i_mtime.i, ptr %time, i32 16)
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %if.end64.if.end70_crit_edge
  call void @d_add(ptr noundef nonnull %call61, ptr noundef nonnull %call.i) #6
  %53 = load ptr, ptr @records_list, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @records_list, ptr noundef %53) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end70.list_add.exit_crit_edge

if.end70.list_add.exit_crit_edge:                 ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call7.i.i, ptr %prev1.i.i, align 4
  %55 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %53, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %56 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @records_list, ptr %prev3.i.i, align 4
  store volatile ptr %call7.i.i, ptr @records_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end70.list_add.exit_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @records_list_lock) #6
  br label %cleanup

if.end.i:                                         ; preds = %if.end59
  %record.i = getelementptr inbounds %struct.pstore_private, ptr %call7.i.i, i32 0, i32 2
  %57 = ptrtoint ptr %record.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %record.i, align 4
  %tobool1.not.i = icmp eq ptr %58, null
  br i1 %tobool1.not.i, label %if.end.i.free_pstore_private.exit_crit_edge, label %if.then2.i

if.end.i.free_pstore_private.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_pstore_private.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %buf.i = getelementptr inbounds %struct.pstore_record, ptr %58, i32 0, i32 4
  %59 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %buf.i, align 8
  call void @kfree(ptr noundef %60) #6
  %61 = ptrtoint ptr %record.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %record.i, align 4
  call void @kfree(ptr noundef %62) #6
  br label %free_pstore_private.exit

free_pstore_private.exit:                         ; preds = %if.then2.i, %if.end.i.free_pstore_private.exit_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %fail_inode

fail_inode:                                       ; preds = %free_pstore_private.exit, %if.end48.fail_inode_crit_edge
  call void @iput(ptr noundef nonnull %call.i) #6
  br label %fail

fail:                                             ; preds = %fail_inode, %for.end.fail_crit_edge, %land.lhs.true35.fail_crit_edge
  %rc.0 = phi i32 [ -12, %fail_inode ], [ -12, %for.end.fail_crit_edge ], [ -17, %land.lhs.true35.fail_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @records_list_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %fail, %list_add.exit, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %rc.0, %fail ], [ 0, %list_add.exit ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %name) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pstore_type_to_name(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_alloc_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pstore_get_records(i32 noundef %quiet) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @pstore_sb_lock, i32 noundef 0) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @psinfo to i32))
  %0 = load ptr, ptr @psinfo, align 4
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %entry.psinfo_lock_root.exit.thread_crit_edge, label %lor.lhs.false.i

entry.psinfo_lock_root.exit.thread_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %psinfo_lock_root.exit.thread

lor.lhs.false.i:                                  ; preds = %entry
  %1 = load ptr, ptr @pstore_sb, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.psinfo_lock_root.exit.thread_crit_edge, label %psinfo_lock_root.exit

lor.lhs.false.i.psinfo_lock_root.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %psinfo_lock_root.exit.thread

psinfo_lock_root.exit.thread:                     ; preds = %lor.lhs.false.i.psinfo_lock_root.exit.thread_crit_edge, %entry.psinfo_lock_root.exit.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @pstore_sb_lock) #6
  br label %cleanup

psinfo_lock_root.exit:                            ; preds = %lor.lhs.false.i
  %s_root.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %s_root.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_root.i, align 64
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i.i, align 8
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i.i) #6
  tail call void @mutex_unlock(ptr noundef nonnull @pstore_sb_lock) #6
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %psinfo_lock_root.exit.cleanup_crit_edge, label %if.end

psinfo_lock_root.exit.cleanup_crit_edge:          ; preds = %psinfo_lock_root.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %psinfo_lock_root.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @psinfo to i32))
  %6 = load ptr, ptr @psinfo, align 4
  tail call void @pstore_get_backend_records(ptr noundef %6, ptr noundef nonnull %3, i32 noundef %quiet) #6
  %7 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %d_inode.i.i, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %psinfo_lock_root.exit.cleanup_crit_edge, %psinfo_lock_root.exit.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pstore_get_backend_records(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pstore_init_fs() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fs_kobj to i32))
  %0 = load ptr, ptr @fs_kobj, align 4
  %call = tail call i32 @sysfs_create_mount_point(ptr noundef %0, ptr noundef nonnull @.str.4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @register_filesystem(ptr noundef nonnull @pstore_fs_type) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then2, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fs_kobj to i32))
  %1 = load ptr, ptr @fs_kobj, align 4
  tail call void @sysfs_remove_mount_point(ptr noundef %1, ptr noundef nonnull @.str.4) #6
  br label %out

out:                                              ; preds = %if.then2, %if.end.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call1, %if.then2 ], [ %call1, %if.end.out_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_mount_point(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_mount_point(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @pstore_exit_fs() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @unregister_filesystem(ptr noundef nonnull @pstore_fs_type) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fs_kobj to i32))
  %0 = load ptr, ptr @fs_kobj, align 4
  tail call void @sysfs_remove_mount_point(ptr noundef %0, ptr noundef nonnull @.str.4) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_next_ino() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @pstore_file_llseek(ptr noundef %file, i64 noundef %off, i32 noundef %whence) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %op = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %op, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i64 @seq_lseek(ptr noundef %file, i64 noundef %off, i32 noundef %whence) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i64 @default_llseek(ptr noundef %file, i64 noundef %off, i32 noundef %whence) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i64 [ %call, %if.then ], [ %call1, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pstore_file_read(ptr noundef %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %record = getelementptr inbounds %struct.pstore_private, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %record to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %record, align 4
  %type = getelementptr inbounds %struct.pstore_record, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp = icmp eq i32 %7, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @seq_read(ptr noundef %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %buf = getelementptr inbounds %struct.pstore_record, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buf, align 8
  %total_size = getelementptr inbounds %struct.pstore_private, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %total_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %total_size, align 4
  %call2 = tail call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef %9, i32 noundef %11) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pstore_file_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %record = getelementptr inbounds %struct.pstore_private, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %record to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %record, align 4
  %type = getelementptr inbounds %struct.pstore_record, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp = icmp eq i32 %5, 3
  %spec.store.select = select i1 %cmp, ptr @pstore_ftrace_seq_ops, ptr null
  %call = tail call i32 @seq_open(ptr noundef %file, ptr noundef %spec.store.select) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %1, ptr %private, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @pstore_ftrace_seq_start(ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 12) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %total_size = getelementptr inbounds %struct.pstore_private, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %total_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %total_size, align 4
  %rem = and i32 %4, 15
  %off = getelementptr inbounds %struct.pstore_ftrace_seq_data, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %pos, align 8
  %.tr = trunc i64 %6 to i32
  %7 = shl i32 %.tr, 4
  %conv2 = or i32 %7, %rem
  %8 = ptrtoint ptr %off to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv2, ptr %off, align 4
  %add4 = add i32 %conv2, 16
  %9 = load i32, ptr %total_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add4, i32 %9)
  %cmp = icmp ugt i32 %add4, %9
  br i1 %cmp, label %if.then7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then7 ], [ null, %entry.cleanup_crit_edge ], [ %call7.i.i, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pstore_ftrace_seq_stop(ptr nocapture noundef readnone %s, ptr noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %v) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @pstore_ftrace_seq_next(ptr nocapture noundef readonly %s, ptr noundef %v, ptr nocapture noundef %pos) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %pos, align 8
  %inc = add i64 %3, 1
  store i64 %inc, ptr %pos, align 8
  %off = getelementptr inbounds %struct.pstore_ftrace_seq_data, ptr %v, i32 0, i32 1
  %4 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %off, align 4
  %add = add i32 %5, 16
  store i32 %add, ptr %off, align 4
  %add2 = add i32 %5, 32
  %total_size = getelementptr inbounds %struct.pstore_private, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %total_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %total_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add2, i32 %7)
  %cmp = icmp ugt i32 %add2, %7
  %.v = select i1 %cmp, ptr null, ptr %v
  ret ptr %.v
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pstore_ftrace_seq_show(ptr noundef %s, ptr noundef readonly %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %v, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %record = getelementptr inbounds %struct.pstore_private, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %record to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %record, align 4
  %buf = getelementptr inbounds %struct.pstore_record, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buf, align 8
  %off = getelementptr inbounds %struct.pstore_ftrace_seq_data, ptr %v, i32 0, i32 1
  %6 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %off, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %7
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr, align 8
  %and.i = and i32 %9, 3
  %ts.i = getelementptr inbounds %struct.pstore_ftrace_record, ptr %add.ptr, i32 0, i32 2
  %10 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %ts.i, align 8
  %parent_ip = getelementptr inbounds %struct.pstore_ftrace_record, ptr %add.ptr, i32 0, i32 1
  %12 = ptrtoint ptr %parent_ip to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %parent_ip, align 4
  %14 = inttoptr i32 %9 to ptr
  %15 = inttoptr i32 %13 to ptr
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.9, i32 noundef %and.i, i64 noundef %11, i32 noundef %9, i32 noundef %13, ptr noundef %14, ptr noundef %15) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @pstore_mount(ptr noundef %fs_type, i32 noundef %flags, ptr nocapture noundef readnone %dev_name, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mount_single(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %data, ptr noundef nonnull @pstore_fill_super) #6
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pstore_kill_sb(ptr noundef %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @pstore_sb_lock, i32 noundef 0) #6
  %0 = load ptr, ptr @pstore_sb, align 4
  %tobool.not = icmp ne ptr %0, null
  %cmp = icmp ne ptr %0, %sb
  %spec.select = and i1 %tobool.not, %cmp
  br i1 %spec.select, label %do.end, label %entry.if.end_crit_edge, !prof !52

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 470, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @kill_litter_super(ptr noundef %sb) #6
  store ptr null, ptr @pstore_sb, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @records_list_lock, i32 noundef 0) #6
  store volatile ptr @records_list, ptr @records_list, align 4
  store ptr @records_list, ptr getelementptr inbounds (%struct.list_head, ptr @records_list, i32 0, i32 1), align 4
  tail call void @mutex_unlock(ptr noundef nonnull @records_list_lock) #6
  tail call void @mutex_unlock(ptr noundef nonnull @pstore_sb_lock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mount_single(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pstore_fill_super(ptr noundef %sb, ptr noundef %data, i32 noundef %silent) #0 align 64 {
entry:
  %tmp.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %s_maxbytes = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 4
  %0 = ptrtoint ptr %s_maxbytes to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 17592186040320, ptr %s_maxbytes, align 8
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %1 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 4096, ptr %s_blocksize, align 16
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %2 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 12, ptr %s_blocksize_bits, align 4
  %s_magic = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 12
  %3 = ptrtoint ptr %s_magic to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1634035564, ptr %s_magic, align 4
  %s_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 6
  %4 = ptrtoint ptr %s_op to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @pstore_ops, ptr %s_op, align 4
  %s_time_gran = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 34
  %5 = ptrtoint ptr %s_time_gran to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %s_time_gran, align 4
  tail call fastcc void @parse_options(ptr noundef %data)
  %call.i = tail call ptr @new_inode(ptr noundef %sb) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i = tail call i32 @get_next_ino() #6
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 11
  %6 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call1.i, ptr %i_ino.i, align 8
  %i_atime.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 15
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 16
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #6
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, ptr noundef nonnull %call.i) #6
  %7 = call ptr @memcpy(ptr %i_ctime.i, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #6
  %8 = call ptr @memcpy(ptr %i_mtime.i, ptr %i_ctime.i, i32 16)
  %9 = call ptr @memcpy(ptr %i_atime.i, ptr %i_ctime.i, i32 16)
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 16872, ptr %call.i, align 8
  %i_op = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 7
  %11 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @pstore_dir_inode_operations, ptr %i_op, align 8
  %12 = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 44
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @simple_dir_operations, ptr %12, align 8
  call void @inc_nlink(ptr noundef nonnull %call.i) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call1 = call ptr @d_make_root(ptr noundef %call.i) #6
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %14 = ptrtoint ptr %s_root to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call1, ptr %s_root, align 64
  %tobool3.not = icmp eq ptr %call1, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @mutex_lock_nested(ptr noundef nonnull @pstore_sb_lock, i32 noundef 0) #6
  store ptr %sb, ptr @pstore_sb, align 4
  call void @mutex_unlock(ptr noundef nonnull @pstore_sb_lock) #6
  call void @pstore_get_records(i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @parse_options(ptr noundef %options) unnamed_addr #0 align 64 {
entry:
  %options.addr = alloca ptr, align 4
  %args = alloca [3 x %struct.substring_t], align 4
  %option = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %options.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %options, ptr %options.addr, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args) #6
  %1 = call ptr @memset(ptr %args, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %option) #6
  %2 = ptrtoint ptr %option to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %option, align 4, !annotation !54
  %tobool.not = icmp eq ptr %options, null
  br i1 %tobool.not, label %entry.cleanup9_crit_edge, label %while.cond.preheader

entry.cleanup9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup9

while.cond.preheader:                             ; preds = %entry
  %call15 = call ptr @strsep(ptr noundef nonnull %options.addr, ptr noundef nonnull @.str.11) #6
  %cmp.not16 = icmp eq ptr %call15, null
  br i1 %cmp.not16, label %while.cond.preheader.cleanup9_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup9_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup9

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call17 = phi ptr [ %call, %cleanup.while.body_crit_edge ], [ %call15, %while.cond.preheader.while.body_crit_edge ]
  %3 = ptrtoint ptr %call17 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %call17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not = icmp eq i8 %4, 0
  br i1 %tobool1.not, label %while.body.cleanup_crit_edge, label %if.end3

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %while.body
  %call4 = call i32 @match_token(ptr noundef nonnull %call17, ptr noundef nonnull @tokens, ptr noundef nonnull %args) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cond = icmp eq i32 %call4, 0
  br i1 %cond, label %sw.bb, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end3
  %call5 = call i32 @match_int(ptr noundef nonnull %args, ptr noundef nonnull %option) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then7:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %option to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %option, align 4
  call void @pstore_set_kmsg_bytes(i32 noundef %6) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %sw.bb.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %while.body.cleanup_crit_edge
  %call = call ptr @strsep(ptr noundef nonnull %options.addr, ptr noundef nonnull @.str.11) #6
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %cleanup.cleanup9_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

cleanup.cleanup9_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup9

cleanup9:                                         ; preds = %cleanup.cleanup9_crit_edge, %while.cond.preheader.cleanup9_crit_edge, %entry.cleanup9_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %option) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_nlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_delete_inode(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pstore_evict_inode(ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  tail call void @clear_inode(ptr noundef %inode) #6
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.free_pstore_private.exit_crit_edge, label %if.end.i

entry.free_pstore_private.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_pstore_private.exit

if.end.i:                                         ; preds = %entry
  %record.i = getelementptr inbounds %struct.pstore_private, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %record.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %record.i, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then2.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %buf.i = getelementptr inbounds %struct.pstore_record, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buf.i, align 8
  tail call void @kfree(ptr noundef %5) #6
  %6 = ptrtoint ptr %record.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %record.i, align 4
  tail call void @kfree(ptr noundef %7) #6
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then2.i, %if.end.i.if.end5.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %1) #6
  br label %free_pstore_private.exit

free_pstore_private.exit:                         ; preds = %if.end5.i, %entry.free_pstore_private.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_statfs(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pstore_remount(ptr noundef %sb, ptr nocapture noundef readnone %flags, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sync_filesystem(ptr noundef %sb) #6
  tail call fastcc void @parse_options(ptr noundef %data)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pstore_show_options(ptr noundef %m, ptr nocapture noundef readnone %root) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kmsg_bytes to i32))
  %0 = load i32, ptr @kmsg_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10240, i32 %0)
  %cmp.not = icmp eq i32 %0, 10240
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.10, i32 noundef %0) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_token(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_int(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pstore_set_kmsg_bytes(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @simple_lookup(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pstore_unlink(ptr noundef %dir, ptr noundef %dentry) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %record1 = getelementptr inbounds %struct.pstore_private, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %record1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %record1, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %erase = getelementptr inbounds %struct.pstore_info, ptr %7, i32 0, i32 14
  %8 = ptrtoint ptr %erase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %erase, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @records_list_lock, i32 noundef 0) #6
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %3, align 4
  %cmp.i.not = icmp eq ptr %11, %3
  br i1 %cmp.i.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.then4.if.end10_crit_edge

if.then4.if.end10_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.end.i.i:                                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %if.end10

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dentry7 = getelementptr inbounds %struct.pstore_private, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %dentry7 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %dentry7, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @records_list_lock) #6
  br label %cleanup

if.end10:                                         ; preds = %if.end.i.i, %if.then4.if.end10_crit_edge
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %3, ptr %3, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %3, ptr %prev.i3.i, align 4
  %dentry730 = getelementptr inbounds %struct.pstore_private, ptr %3, i32 0, i32 1
  %21 = ptrtoint ptr %dentry730 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %dentry730, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @records_list_lock) #6
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %5, align 8
  %read_mutex = getelementptr inbounds %struct.pstore_info, ptr %23, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %read_mutex, i32 noundef 0) #6
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %5, align 8
  %erase13 = getelementptr inbounds %struct.pstore_info, ptr %25, i32 0, i32 14
  %26 = ptrtoint ptr %erase13 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %erase13, align 4
  %call14 = tail call i32 %27(ptr noundef %5) #6
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %5, align 8
  %read_mutex16 = getelementptr inbounds %struct.pstore_info, ptr %29, i32 0, i32 5
  tail call void @mutex_unlock(ptr noundef %read_mutex16) #6
  %call17 = tail call i32 @simple_unlink(ptr noundef %dir, ptr noundef %dentry) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.end10 ], [ -1, %entry.cleanup_crit_edge ], [ -2, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_litter_super(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !16, !18, !19, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/pstore/inode.c", i32 326, i32 8}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/pstore/inode.c", i32 373, i32 32}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/pstore/inode.c", i32 376, i32 25}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/pstore/inode.c", i32 376, i32 36}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/pstore/inode.c", i32 494, i32 42}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/pstore/inode.c", i32 34, i32 8}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @pstore_sb_lock, !11, !"pstore_sb_lock", i1 false, i1 false}
!14 = !{ptr @pstore_sb, !15, !"pstore_sb", i1 false, i1 false}
!15 = !{!"../fs/pstore/inode.c", i32 35, i32 28}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/pstore/inode.c", i32 31, i32 8}
!18 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @records_list_lock, !17, !"records_list_lock", i1 false, i1 false}
!20 = !{ptr @records_list, !21, !"records_list", i1 false, i1 false}
!21 = !{!"../fs/pstore/inode.c", i32 32, i32 8}
!22 = !{ptr @pstore_file_operations, !23, !"pstore_file_operations", i1 false, i1 false}
!23 = !{!"../fs/pstore/inode.c", i32 169, i32 37}
!24 = !{ptr @pstore_ftrace_seq_ops, !25, !"pstore_ftrace_seq_ops", i1 false, i1 false}
!25 = !{!"../fs/pstore/inode.c", i32 121, i32 36}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/pstore/inode.c", i32 112, i32 16}
!28 = !{ptr @pstore_fs_type, !29, !"pstore_fs_type", i1 false, i1 false}
!29 = !{!"../fs/pstore/inode.c", i32 482, i32 32}
!30 = !{ptr @pstore_ops, !31, !"pstore_ops", i1 false, i1 false}
!31 = !{!"../fs/pstore/inode.c", i32 282, i32 38}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/pstore/inode.c", i32 270, i32 17}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/pstore/inode.c", i32 248, i32 31}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/pstore/inode.c", i32 235, i32 19}
!38 = !{ptr @tokens, !39, !"tokens", i1 false, i1 false}
!39 = !{!"../fs/pstore/inode.c", i32 234, i32 28}
!40 = !{ptr @pstore_dir_inode_operations, !41, !"pstore_dir_inode_operations", i1 false, i1 false}
!41 = !{!"../fs/pstore/inode.c", i32 215, i32 38}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{!"branch_weights", i32 2000, i32 1}
!52 = !{!"branch_weights", i32 1, i32 2000}
!53 = !{i8 0, i8 2}
!54 = !{!"auto-init"}
