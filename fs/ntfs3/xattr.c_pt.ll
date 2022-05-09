; ModuleID = '/llk/IR_all_yes/fs/ntfs3/xattr.c_pt.bc'
source_filename = "../fs/ntfs3/xattr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.34 }
%union.anon.34 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.36, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.36 = type { %struct.anon.37 }
%struct.anon.37 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.xattr_handler = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.posix_acl = type { %struct.refcount_struct, %struct.callback_head, i32, [0 x %struct.posix_acl_entry] }
%struct.callback_head = type { ptr, ptr }
%struct.posix_acl_entry = type { i16, i16, %union.anon }
%union.anon = type { %struct.kuid_t }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.77 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.79 = type { ptr }
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
%struct.ntfs_sb_info = type { ptr, i32, i64, i32, i32, i64, i32, i32, i32, i32, i8, i8, i64, i64, i32, i32, i16, i16, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.anon.82, %struct.anon.86, %struct.anon.87, %struct.anon.88, %struct.anon.89, %struct.anon.90, %struct.anon.91, ptr, %struct.ratelimit_state }
%struct.anon.82 = type { i64, i64, ptr, %struct.wnd_bitmap, i32, i32, i32, i32, i8, i8 }
%struct.wnd_bitmap = type { ptr, %struct.rw_semaphore, %struct.runs_tree, i32, i32, ptr, i32, i32, %struct.rb_root, %struct.rb_root, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.runs_tree = type { ptr, i32, i32 }
%struct.anon.86 = type { %struct.wnd_bitmap, i32 }
%struct.anon.87 = type { i64, i64, i64, ptr, i16, i8, i8, [65 x i8], i8 }
%struct.anon.88 = type { %struct.ntfs_index, %struct.ntfs_index, ptr, i32, i64, i32 }
%struct.ntfs_index = type { %struct.runs_tree, %struct.runs_tree, %struct.rw_semaphore, ptr, i8, i8, i8, i8 }
%struct.anon.89 = type { %struct.ntfs_index, ptr, i64 }
%struct.anon.90 = type { %struct.ntfs_index, ptr }
%struct.anon.91 = type { %struct.mutex, ptr, %struct.mutex, ptr, %struct.mutex, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.ntfs_mount_options = type { ptr, ptr, %struct.kuid_t, %struct.kgid_t, i16, i16, i16 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.74, %struct.list_head, %struct.list_head, %union.anon.75 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.lockref = type { %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.spinlock, i32 }
%union.anon.74 = type { %struct.list_head }
%union.anon.75 = type { %struct.hlist_node }
%struct.EA_INFO = type { i16, i16, i32 }
%struct.EA_FULL = type { i32, i8, i8, i16, [0 x i8] }
%struct.ATTRIB = type { i32, i32, i8, i8, i16, i16, i16, %union.anon.92 }
%union.anon.92 = type { %struct.ATTR_NONRESIDENT }
%struct.ATTR_NONRESIDENT = type { i64, i64, i16, i8, [5 x i8], i64, i64, i64, i64 }
%struct.ATTR_RESIDENT = type { i32, i16, i8, i8 }
%struct.mft_inode = type { %struct.rb_node, ptr, ptr, %struct.ntfs_buffers, i32, i8 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.ntfs_buffers = type { [8 x ptr], i32, i32, i32 }
%struct.ATTR_STD_INFO5 = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i64, i64 }

@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"$LXUID\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"$LXGID\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"$LXMOD\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"$LXDEV\00", [25 x i8] zeroinitializer }, align 32
@ntfs_xattr_handler = internal constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr null, ptr @.str.7, i32 0, ptr @ntfs_xattr_user_list, ptr @ntfs_getxattr, ptr @ntfs_setxattr }, [40 x i8] zeroinitializer }, align 32
@ntfs_xattr_handlers = dso_local global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @ntfs_xattr_handler, ptr null], [24 x i8] zeroinitializer }, align 32
@names_cachep = external dso_local local_unnamed_addr global ptr, align 4
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"system.posix_acl_access\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"system.posix_acl_default\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014The size of extended attributes must not exceed 64KiB\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"system.dos_attrib\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"system.ntfs_attrib\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"system.ntfs_security\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014looks like you get incorrect security descriptor id=%u\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014you try to set invalid security descriptor\00", [51 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 16, i64 8192, i64 24576]
@__sancov_gen_cov_switch_values.14 = internal global [5 x i64] [i64 3, i64 32, i64 17, i64 18, i64 20]
@__sancov_gen_cov_switch_values.15 = internal global [5 x i64] [i64 3, i64 32, i64 17, i64 18, i64 20]
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 919, i32 27 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 925, i32 27 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 931, i32 27 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 938, i32 28 }
@___asan_gen_.28 = private unnamed_addr constant [19 x i8] c"ntfs_xattr_handler\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 984, i32 35 }
@___asan_gen_.31 = private unnamed_addr constant [20 x i8] c"ntfs_xattr_handlers\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 991, i32 29 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 498, i32 10 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 501, i32 10 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 381, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 985, i32 12 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 721, i32 20 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 735, i32 20 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 749, i32 20 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 770, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.59 = private constant [20 x i8] c"../fs/ntfs3/xattr.c\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 875, i32 4 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @ntfs_xattr_handler, ptr @ntfs_xattr_handlers, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntfs_xattr_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntfs_xattr_handlers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ntfs_get_acl(ptr noundef %inode, i32 noundef %type, i1 noundef zeroext %rcu) local_unnamed_addr #0 align 64 {
entry:
  %req.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %rcu, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i) #10
  %0 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %req.i, align 4, !annotation !39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %1 = load ptr, ptr @names_cachep, align 4
  %call1.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %1, i32 noundef 3264) #10
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.end.ntfs_get_acl_ex.exit_crit_edge, label %if.end.i

if.end.ntfs_get_acl_ex.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %ntfs_get_acl_ex.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %type)
  %cmp.i = icmp eq i32 %type, 32768
  %.str.4..str.5.i = select i1 %cmp.i, ptr @.str.4, ptr @.str.5
  %..i = select i1 %cmp.i, i32 23, i32 24
  %ni_lock.i.i = getelementptr i8, ptr %inode, i32 -264
  tail call void @mutex_lock_nested(ptr noundef %ni_lock.i.i, i32 noundef 4) #10
  %call8.i = call fastcc i32 @ntfs_get_ea(ptr noundef %inode, ptr noundef nonnull %.str.4..str.5.i, i32 noundef %..i, ptr noundef nonnull %call1.i, i32 noundef 4096, ptr noundef nonnull %req.i) #10
  call void @mutex_unlock(ptr noundef %ni_lock.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call8.i)
  %cmp12.i = icmp sgt i32 %call8.i, -1
  br i1 %cmp12.i, label %if.then13.i, label %if.else15.i

if.then13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call14.i = call ptr @posix_acl_from_xattr(ptr noundef nonnull @init_user_ns, ptr noundef nonnull %call1.i, i32 noundef %call8.i) #10
  br label %if.end21.i

if.else15.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -61, i32 %call8.i)
  %cmp16.i = icmp eq i32 %call8.i, -61
  br i1 %cmp16.i, label %if.else15.i.if.then23.i_crit_edge, label %if.else18.i

if.else15.i.if.then23.i_crit_edge:                ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then23.i

if.else18.i:                                      ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #12
  %2 = inttoptr i32 %call8.i to ptr
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.else18.i, %if.then13.i
  %acl.0.i = phi ptr [ %call14.i, %if.then13.i ], [ %2, %if.else18.i ]
  %cmp.i.i = icmp ugt ptr %acl.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end21.i.if.end24.i_crit_edge, label %if.end21.i.if.then23.i_crit_edge

if.end21.i.if.then23.i_crit_edge:                 ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then23.i

if.end21.i.if.end24.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.i

if.then23.i:                                      ; preds = %if.end21.i.if.then23.i_crit_edge, %if.else15.i.if.then23.i_crit_edge
  %acl.04.i = phi ptr [ %acl.0.i, %if.end21.i.if.then23.i_crit_edge ], [ null, %if.else15.i.if.then23.i_crit_edge ]
  call void @set_cached_acl(ptr noundef %inode, i32 noundef %type, ptr noundef %acl.04.i) #10
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then23.i, %if.end21.i.if.end24.i_crit_edge
  %acl.05.i = phi ptr [ %acl.04.i, %if.then23.i ], [ %acl.0.i, %if.end21.i.if.end24.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %3 = load ptr, ptr @names_cachep, align 4
  call void @kmem_cache_free(ptr noundef %3, ptr noundef nonnull %call1.i) #10
  br label %ntfs_get_acl_ex.exit

ntfs_get_acl_ex.exit:                             ; preds = %if.end24.i, %if.end.ntfs_get_acl_ex.exit_crit_edge
  %retval.0.i = phi ptr [ %acl.05.i, %if.end24.i ], [ inttoptr (i32 -12 to ptr), %if.end.ntfs_get_acl_ex.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i) #10
  br label %return

return:                                           ; preds = %ntfs_get_acl_ex.exit, %entry.return_crit_edge
  %retval.0 = phi ptr [ %retval.0.i, %ntfs_get_acl_ex.exit ], [ inttoptr (i32 -10 to ptr), %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_set_acl(ptr noundef %mnt_userns, ptr noundef %inode, ptr noundef %acl, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ntfs_set_acl_ex(ptr noundef %mnt_userns, ptr noundef %inode, ptr noundef %acl, i32 noundef %type)
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ntfs_set_acl_ex(ptr noundef %mnt_userns, ptr noundef %inode, ptr noundef %acl, i32 noundef %type) unnamed_addr #1 align 64 {
entry:
  %acl.addr = alloca ptr, align 4
  %mode = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %acl.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %acl, ptr %acl.addr, align 4
  %1 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %inode, align 8
  %3 = and i16 %2, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %3)
  %cmp = icmp eq i16 %3, -24576
  br i1 %cmp, label %entry.cleanup47_crit_edge, label %if.end

entry.cleanup47_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup47

if.end:                                           ; preds = %entry
  %4 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %if.end.cleanup47_crit_edge [
    i32 32768, label %sw.bb
    i32 16384, label %sw.bb16
  ]

if.end.cleanup47_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup47

sw.bb:                                            ; preds = %if.end
  %tobool.not = icmp eq ptr %acl, null
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %if.then2

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then2:                                         ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mode) #10
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %2, ptr %mode, align 2
  %call = call i32 @posix_acl_update_mode(ptr noundef %mnt_userns, ptr noundef %inode, ptr noundef nonnull %mode, ptr noundef nonnull %acl.addr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end6, label %cleanup

if.end6:                                          ; preds = %if.then2
  %6 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %inode, align 8
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %mode, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %9)
  %cmp10.not = icmp eq i16 %7, %9
  br i1 %cmp10.not, label %if.end6.cleanup.thread_crit_edge, label %if.then12

if.end6.cleanup.thread_crit_edge:                 ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.then12:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %inode to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %inode, align 8
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #10
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then12, %if.end6.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mode) #10
  br label %sw.epilog

cleanup:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mode) #10
  br label %out

sw.bb16:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %3)
  %cmp20 = icmp eq i16 %3, 16384
  br i1 %cmp20, label %sw.bb16.sw.epilog_crit_edge, label %if.then22

sw.bb16.sw.epilog_crit_edge:                      ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then22:                                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #12
  %tobool23.not = icmp eq ptr %acl, null
  %cond = select i1 %tobool23.not, i32 0, i32 -13
  br label %cleanup47

sw.epilog:                                        ; preds = %sw.bb16.sw.epilog_crit_edge, %cleanup.thread, %sw.bb.sw.epilog_crit_edge
  %name.0 = phi ptr [ @.str.4, %sw.bb.sw.epilog_crit_edge ], [ @.str.5, %sw.bb16.sw.epilog_crit_edge ], [ @.str.4, %cleanup.thread ]
  %name_len.0 = phi i32 [ 23, %sw.bb.sw.epilog_crit_edge ], [ 24, %sw.bb16.sw.epilog_crit_edge ], [ 23, %cleanup.thread ]
  %11 = ptrtoint ptr %acl.addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %acl.addr, align 4
  %tobool25.not = icmp eq ptr %12, null
  br i1 %tobool25.not, label %17, label %if.else

if.else:                                          ; preds = %sw.epilog
  %a_count = getelementptr inbounds %struct.posix_acl, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %a_count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %a_count, align 4
  %mul.i = shl i32 %14, 3
  %add.i = or i32 %mul.i, 4
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3136) #13
  %tobool29.not = icmp eq ptr %call9.i, null
  br i1 %tobool29.not, label %if.else.cleanup47_crit_edge, label %if.end31

if.else.cleanup47_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup47

if.end31:                                         ; preds = %if.else
  %15 = ptrtoint ptr %acl.addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %acl.addr, align 4
  %call32 = call i32 @posix_acl_to_xattr(ptr noundef %mnt_userns, ptr noundef %16, ptr noundef nonnull %call9.i, i32 noundef %add.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.end31.out_crit_edge, label %if.end37

if.end31.out_crit_edge:                           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end37:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %call38 = call fastcc i32 @ntfs_set_ea(ptr noundef %inode, ptr noundef nonnull %name.0, i32 noundef %name_len.0, ptr noundef nonnull %call9.i, i32 noundef %add.i, i32 noundef 0)
  br label %18

17:                                               ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %call3877 = call fastcc i32 @ntfs_set_ea(ptr noundef %inode, ptr noundef nonnull %name.0, i32 noundef %name_len.0, ptr noundef null, i32 noundef 0, i32 noundef 2)
  br label %18

18:                                               ; preds = %17, %if.end37
  %call3882 = phi i32 [ %call3877, %17 ], [ %call38, %if.end37 ]
  %value.080 = phi ptr [ null, %17 ], [ %call9.i, %if.end37 ]
  %19 = phi i32 [ 0, %17 ], [ -61, %if.end37 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -61, i32 %call3882)
  %cmp3984 = icmp eq i32 %call3882, -61
  %err.0 = select i1 %cmp3984, i32 %19, i32 %call3882
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool44.not = icmp eq i32 %err.0, 0
  br i1 %tobool44.not, label %if.then45, label %.out_crit_edge

.out_crit_edge:                                   ; preds = %18
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then45:                                        ; preds = %18
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %acl.addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %acl.addr, align 4
  call void @set_cached_acl(ptr noundef %inode, i32 noundef %type, ptr noundef %21) #10
  br label %out

out:                                              ; preds = %if.then45, %.out_crit_edge, %if.end31.out_crit_edge, %cleanup
  %value.1 = phi ptr [ %call9.i, %if.end31.out_crit_edge ], [ %value.080, %.out_crit_edge ], [ %value.080, %if.then45 ], [ null, %cleanup ]
  %err.1 = phi i32 [ %call32, %if.end31.out_crit_edge ], [ %err.0, %.out_crit_edge ], [ 0, %if.then45 ], [ %call, %cleanup ]
  call void @kfree(ptr noundef %value.1) #10
  br label %cleanup47

cleanup47:                                        ; preds = %out, %if.else.cleanup47_crit_edge, %if.then22, %if.end.cleanup47_crit_edge, %entry.cleanup47_crit_edge
  %retval.0 = phi i32 [ %err.1, %out ], [ %cond, %if.then22 ], [ -95, %entry.cleanup47_crit_edge ], [ -22, %if.end.cleanup47_crit_edge ], [ -12, %if.else.cleanup47_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_init_acl(ptr noundef %mnt_userns, ptr noundef %inode, ptr noundef %dir) local_unnamed_addr #0 align 64 {
entry:
  %default_acl = alloca ptr, align 4
  %acl = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %default_acl) #10
  %0 = ptrtoint ptr %default_acl to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %default_acl, align 4, !annotation !39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %acl) #10
  %1 = ptrtoint ptr %acl to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %acl, align 4, !annotation !39
  %call = call i32 @posix_acl_create(ptr noundef %dir, ptr noundef %inode, ptr noundef nonnull %default_acl, ptr noundef nonnull %acl) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %default_acl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %default_acl, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end4.thread, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = call fastcc i32 @ntfs_set_acl_ex(ptr noundef %mnt_userns, ptr noundef %inode, ptr noundef nonnull %3, i32 noundef 16384)
  %4 = ptrtoint ptr %default_acl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %default_acl, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then2.if.end4_crit_edge, label %land.lhs.true.i

if.then2.if.end4_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

land.lhs.true.i:                                  ; preds = %if.then2
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %5, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !40
  call void @llvm.prefetch.p0(ptr nonnull %5, i32 1, i32 3, i32 1) #10
  %6 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %5, ptr nonnull %5, i32 1, ptr nonnull elementtype(i32) %5) #10, !srcloc !41
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end4_crit_edge, label %if.then10.i.i.i.i, !prof !42

if.end5.i.i.i.i.if.end4_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef nonnull %5, i32 noundef 3) #10
  br label %if.end4

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !43
  %a_rcu.i = getelementptr inbounds %struct.posix_acl, ptr %5, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %a_rcu.i, ptr noundef nonnull inttoptr (i32 4 to ptr)) #10
  br label %if.end4

if.end4:                                          ; preds = %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end4_crit_edge, %if.then2.if.end4_crit_edge
  %7 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %acl, align 4
  %tobool5.not = icmp eq ptr %8, null
  br i1 %tobool5.not, label %if.end4.if.then6_crit_edge, label %if.else7

if.end4.if.then6_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6

if.end4.thread:                                   ; preds = %if.end
  %i_default_acl = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 6
  %9 = ptrtoint ptr %i_default_acl to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %i_default_acl, align 4
  %10 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %acl, align 4
  %tobool5.not36 = icmp eq ptr %11, null
  br i1 %tobool5.not36, label %if.end4.thread.if.then6_crit_edge, label %if.end4.thread.if.end11_crit_edge

if.end4.thread.if.end11_crit_edge:                ; preds = %if.end4.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.end4.thread.if.then6_crit_edge:                ; preds = %if.end4.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6

if.then6:                                         ; preds = %if.end4.thread.if.then6_crit_edge, %if.end4.if.then6_crit_edge
  %err.038 = phi i32 [ 0, %if.end4.thread.if.then6_crit_edge ], [ %call3, %if.end4.if.then6_crit_edge ]
  %i_acl = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 5
  %12 = ptrtoint ptr %i_acl to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %i_acl, align 8
  br label %cleanup

if.else7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool8.not = icmp eq i32 %call3, 0
  br i1 %tobool8.not, label %if.else7.if.end11_crit_edge, label %if.else7.land.lhs.true.i28_crit_edge

if.else7.land.lhs.true.i28_crit_edge:             ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i28

if.else7.if.end11_crit_edge:                      ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.end11:                                         ; preds = %if.else7.if.end11_crit_edge, %if.end4.thread.if.end11_crit_edge
  %13 = phi ptr [ %8, %if.else7.if.end11_crit_edge ], [ %11, %if.end4.thread.if.end11_crit_edge ]
  %call10 = call fastcc i32 @ntfs_set_acl_ex(ptr noundef %mnt_userns, ptr noundef %inode, ptr noundef nonnull %13, i32 noundef 32768)
  %14 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load ptr, ptr %acl, align 4
  %tobool.not.i24 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i24, label %if.end11.cleanup_crit_edge, label %if.end11.land.lhs.true.i28_crit_edge

if.end11.land.lhs.true.i28_crit_edge:             ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i28

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.i28:                                ; preds = %if.end11.land.lhs.true.i28_crit_edge, %if.else7.land.lhs.true.i28_crit_edge
  %err.143 = phi i32 [ %call10, %if.end11.land.lhs.true.i28_crit_edge ], [ %call3, %if.else7.land.lhs.true.i28_crit_edge ]
  %15 = phi ptr [ %.pr, %if.end11.land.lhs.true.i28_crit_edge ], [ %8, %if.else7.land.lhs.true.i28_crit_edge ]
  %call.i.i.i.i.i.i25 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %15, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !40
  call void @llvm.prefetch.p0(ptr nonnull %15, i32 1, i32 3, i32 1) #10
  %16 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %15, ptr nonnull %15, i32 1, ptr nonnull elementtype(i32) %15) #10, !srcloc !41
  %asmresult.i.i.i.i.i.i.i26 = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i26)
  %cmp.i.i.i.i27 = icmp eq i32 %asmresult.i.i.i.i.i.i.i26, 1
  br i1 %cmp.i.i.i.i27, label %do.end.i33, label %if.end5.i.i.i.i30

if.end5.i.i.i.i30:                                ; preds = %land.lhs.true.i28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i26)
  %.not.i.i.i.i29 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i26, 0
  br i1 %.not.i.i.i.i29, label %if.end5.i.i.i.i30.cleanup_crit_edge, label %if.then10.i.i.i.i31, !prof !42

if.end5.i.i.i.i30.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i30
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i31:                              ; preds = %if.end5.i.i.i.i30
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef nonnull %15, i32 noundef 3) #10
  br label %cleanup

do.end.i33:                                       ; preds = %land.lhs.true.i28
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !43
  %a_rcu.i32 = getelementptr inbounds %struct.posix_acl, ptr %15, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %a_rcu.i32, ptr noundef nonnull inttoptr (i32 4 to ptr)) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end.i33, %if.then10.i.i.i.i31, %if.end5.i.i.i.i30.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %err.038, %if.then6 ], [ %call10, %if.end11.cleanup_crit_edge ], [ %err.143, %if.end5.i.i.i.i30.cleanup_crit_edge ], [ %err.143, %if.then10.i.i.i.i31 ], [ %err.143, %do.end.i33 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %acl) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %default_acl) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @posix_acl_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_acl_chmod(ptr noundef %mnt_userns, ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_flags, align 4
  %and = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %inode, align 8
  %6 = and i16 %5, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %6)
  %cmp = icmp eq i16 %6, -24576
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @posix_acl_chmod(ptr noundef %mnt_userns, ptr noundef %inode, i16 noundef zeroext %5) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end4 ], [ 0, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @posix_acl_chmod(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_permission(ptr noundef %mnt_userns, ptr noundef %inode, i32 noundef %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %options = getelementptr inbounds %struct.ntfs_sb_info, ptr %3, i32 0, i32 34
  %4 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %options, align 4
  %noacsrules = getelementptr inbounds %struct.ntfs_mount_options, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %noacsrules to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load = load i16, ptr %noacsrules, align 4
  %7 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @generic_permission(ptr noundef %mnt_userns, ptr noundef %inode, i32 noundef %mask) #10
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_listxattr(ptr nocapture noundef readonly %dentry, ptr noundef writeonly %buffer, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %info.i = alloca ptr, align 4
  %ea_all.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %ni_flags = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %ni_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ni_flags, align 4
  %and = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 -360
  %ni_lock.i = getelementptr i8, ptr %1, i32 -264
  tail call void @mutex_lock_nested(ptr noundef %ni_lock.i, i32 noundef 4) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %info.i) #10
  %4 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %info.i, align 4, !annotation !39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ea_all.i) #10
  %5 = ptrtoint ptr %ea_all.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %ea_all.i, align 4
  %call.i = call fastcc i32 @ntfs_read_ea(ptr noundef %add.ptr.i, ptr noundef nonnull %ea_all.i, i32 noundef 0, ptr noundef nonnull %info.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.ntfs_list_ea.exit_crit_edge

if.end.ntfs_list_ea.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %ntfs_list_ea.exit

if.end.i:                                         ; preds = %if.end
  %6 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %if.end.i.ntfs_list_ea.exit_crit_edge, label %lor.lhs.false.i

if.end.i.ntfs_list_ea.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ntfs_list_ea.exit

lor.lhs.false.i:                                  ; preds = %if.end.i
  %8 = ptrtoint ptr %ea_all.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ea_all.i, align 4
  %tobool2.not.i = icmp eq ptr %9, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.ntfs_list_ea.exit_crit_edge, label %if.end4.i

lor.lhs.false.i.ntfs_list_ea.exit_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ntfs_list_ea.exit

if.end4.i:                                        ; preds = %lor.lhs.false.i
  %size5.i = getelementptr inbounds %struct.EA_INFO, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %size5.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size5.i, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp49.not.i = icmp eq i32 %11, 0
  br i1 %cmp49.not.i, label %if.end4.i.out.i_crit_edge, label %for.body.lr.ph.i

if.end4.i.out.i_crit_edge:                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

for.body.lr.ph.i:                                 ; preds = %if.end4.i
  %tobool6.not.i = icmp eq ptr %buffer, null
  br label %for.body.i

for.body.i:                                       ; preds = %unpacked_ea_size.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %ret.051.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add23.i, %unpacked_ea_size.exit.i.for.body.i_crit_edge ]
  %off.050.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add25.i, %unpacked_ea_size.exit.i.for.body.i_crit_edge ]
  %add.ptr.i8 = getelementptr i8, ptr %9, i32 %off.050.i
  br i1 %tobool6.not.i, label %for.body.if.end19_crit_edge.i, label %if.then7.i

for.body.if.end19_crit_edge.i:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %.pre.i = add i32 %ret.051.i, 1
  br label %if.end19.i

if.then7.i:                                       ; preds = %for.body.i
  %name_len.i = getelementptr inbounds %struct.EA_FULL, ptr %add.ptr.i8, i32 0, i32 2
  %13 = ptrtoint ptr %name_len.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %name_len.i, align 1
  %conv.i = zext i8 %14 to i32
  %add.i = add i32 %ret.051.i, 1
  %add8.i = add i32 %add.i, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add8.i, i32 %size)
  %cmp9.i = icmp ugt i32 %add8.i, %size
  br i1 %cmp9.i, label %if.then7.i.out.i_crit_edge, label %if.end12.i

if.then7.i.out.i_crit_edge:                       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.end12.i:                                       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr13.i = getelementptr i8, ptr %buffer, i32 %ret.051.i
  %name.i = getelementptr inbounds %struct.EA_FULL, ptr %add.ptr.i8, i32 0, i32 4
  %15 = call ptr @memcpy(ptr %add.ptr13.i, ptr %name.i, i32 %conv.i)
  %16 = ptrtoint ptr %name_len.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %name_len.i, align 1
  %conv17.i = zext i8 %17 to i32
  %add18.i = add i32 %ret.051.i, %conv17.i
  %arrayidx.i = getelementptr i8, ptr %buffer, i32 %add18.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %arrayidx.i, align 1
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.end12.i, %for.body.if.end19_crit_edge.i
  %add22.pre-phi.i = phi i32 [ %.pre.i, %for.body.if.end19_crit_edge.i ], [ %add.i, %if.end12.i ]
  %name_len20.i = getelementptr inbounds %struct.EA_FULL, ptr %add.ptr.i8, i32 0, i32 2
  %19 = ptrtoint ptr %name_len20.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %name_len20.i, align 1
  %conv21.i = zext i8 %20 to i32
  %add23.i = add i32 %add22.pre-phi.i, %conv21.i
  %21 = ptrtoint ptr %add.ptr.i8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i.i, label %cond.false.i.i, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #10
  br label %unpacked_ea_size.exit.i

cond.false.i.i:                                   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  %elength.i.i = getelementptr inbounds %struct.EA_FULL, ptr %add.ptr.i8, i32 0, i32 3
  %24 = ptrtoint ptr %elength.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %elength.i.i, align 2
  %26 = tail call i16 @llvm.bswap.i16(i16 %25) #10
  %conv2.i.i = zext i16 %26 to i32
  %add3.i.i = add nuw nsw i32 %conv21.i, 12
  %add4.i.i = add nuw nsw i32 %add3.i.i, %conv2.i.i
  %and.i.i = and i32 %add4.i.i, 131068
  br label %unpacked_ea_size.exit.i

unpacked_ea_size.exit.i:                          ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi i32 [ %23, %cond.true.i.i ], [ %and.i.i, %cond.false.i.i ]
  %add25.i = add i32 %cond.i.i, %off.050.i
  %cmp.i = icmp ult i32 %add25.i, %12
  br i1 %cmp.i, label %unpacked_ea_size.exit.i.for.body.i_crit_edge, label %unpacked_ea_size.exit.i.out.i_crit_edge

unpacked_ea_size.exit.i.out.i_crit_edge:          ; preds = %unpacked_ea_size.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

unpacked_ea_size.exit.i.for.body.i_crit_edge:     ; preds = %unpacked_ea_size.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

out.i:                                            ; preds = %unpacked_ea_size.exit.i.out.i_crit_edge, %if.then7.i.out.i_crit_edge, %if.end4.i.out.i_crit_edge
  %err.0.ret.0.i = phi i32 [ 0, %if.end4.i.out.i_crit_edge ], [ %add23.i, %unpacked_ea_size.exit.i.out.i_crit_edge ], [ -34, %if.then7.i.out.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %9) #10
  br label %ntfs_list_ea.exit

ntfs_list_ea.exit:                                ; preds = %out.i, %lor.lhs.false.i.ntfs_list_ea.exit_crit_edge, %if.end.i.ntfs_list_ea.exit_crit_edge, %if.end.ntfs_list_ea.exit_crit_edge
  %retval.0.i = phi i32 [ %err.0.ret.0.i, %out.i ], [ %call.i, %if.end.ntfs_list_ea.exit_crit_edge ], [ 0, %lor.lhs.false.i.ntfs_list_ea.exit_crit_edge ], [ 0, %if.end.i.ntfs_list_ea.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ea_all.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %info.i) #10
  tail call void @mutex_unlock(ptr noundef %ni_lock.i) #10
  br label %cleanup

cleanup:                                          ; preds = %ntfs_list_ea.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %ntfs_list_ea.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_save_wsl_perm(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #10
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 53
  %2 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_user_ns.i.i, align 8
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %4 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.unpack.i = load i32, ptr %i_uid.i, align 4
  %5 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call1.i = tail call i32 @from_kuid(ptr noundef %3, [1 x i32] %5) #10
  %6 = tail call i32 @llvm.bswap.i32(i32 %call1.i)
  %7 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %value, align 4
  %call1 = call fastcc i32 @ntfs_set_ea(ptr noundef %inode, ptr noundef nonnull @.str, i32 noundef 6, ptr noundef nonnull %value, i32 noundef 4, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i38 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 53
  %10 = ptrtoint ptr %s_user_ns.i.i38 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_user_ns.i.i38, align 8
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %12 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.unpack.i39 = load i32, ptr %i_gid.i, align 8
  %13 = insertvalue [1 x i32] undef, i32 %.unpack.i39, 0
  %call1.i40 = tail call i32 @from_kgid(ptr noundef %11, [1 x i32] %13) #10
  %14 = tail call i32 @llvm.bswap.i32(i32 %call1.i40)
  %15 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %value, align 4
  %call3 = call fastcc i32 @ntfs_set_ea(ptr noundef %inode, ptr noundef nonnull @.str.1, i32 noundef 6, ptr noundef nonnull %value, i32 noundef 4, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end6:                                          ; preds = %if.end
  %16 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %inode, align 8
  %conv = zext i16 %17 to i32
  %18 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %19 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %value, align 4
  %call7 = call fastcc i32 @ntfs_set_ea(ptr noundef %inode, ptr noundef nonnull @.str.2, i32 noundef 6, ptr noundef nonnull %value, i32 noundef 4, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end10:                                         ; preds = %if.end6
  %20 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %inode, align 8
  %22 = and i16 %21, -4096
  %23 = zext i16 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.13)
  switch i16 %22, label %if.end10.out_crit_edge [
    i16 8192, label %if.end10.if.then19_crit_edge
    i16 24576, label %if.end10.if.then19_crit_edge41
  ]

if.end10.if.then19_crit_edge41:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

if.end10.if.then19_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then19:                                        ; preds = %if.end10.if.then19_crit_edge, %if.end10.if.then19_crit_edge41
  %i_rdev = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %24 = ptrtoint ptr %i_rdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %i_rdev, align 8
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %27 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %value, align 4
  %call20 = call fastcc i32 @ntfs_set_ea(ptr noundef %inode, ptr noundef nonnull @.str.3, i32 noundef 6, ptr noundef nonnull %value, i32 noundef 4, i32 noundef 0)
  br label %out

out:                                              ; preds = %if.then19, %if.end10.out_crit_edge, %if.end6.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ %call1, %entry.out_crit_edge ], [ %call3, %if.end.out_crit_edge ], [ %call7, %if.end6.out_crit_edge ], [ %call20, %if.then19 ], [ 0, %if.end10.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #10
  ret i32 %err.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ntfs_set_ea(ptr noundef %inode, ptr nocapture noundef readonly %name, i32 noundef %name_len, ptr nocapture noundef readonly %value, i32 noundef %val_size, i32 noundef %flags) unnamed_addr #1 align 64 {
entry:
  %info = alloca ptr, align 4
  %ea_all = alloca ptr, align 4
  %le = alloca ptr, align 4
  %mi2 = alloca ptr, align 4
  %ea_run = alloca %struct.runs_tree, align 4
  %new_sz = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -360
  %sbi1 = getelementptr i8, ptr %inode, i32 -348
  %0 = ptrtoint ptr %sbi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sbi1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %info) #10
  %2 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %info, align 4, !annotation !39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ea_all) #10
  %3 = ptrtoint ptr %ea_all to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %ea_all, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %le) #10
  %4 = ptrtoint ptr %le to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %le, align 4, !annotation !39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mi2) #10
  %5 = ptrtoint ptr %mi2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %mi2, align 4, !annotation !39
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ea_run) #10
  %6 = getelementptr inbounds %struct.runs_tree, ptr %ea_run, i32 0, i32 1
  %7 = getelementptr inbounds %struct.runs_tree, ptr %ea_run, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %new_sz) #10
  %8 = ptrtoint ptr %new_sz to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %new_sz, align 8, !annotation !39
  %ni_lock.i = getelementptr i8, ptr %inode, i32 -264
  tail call void @mutex_lock_nested(ptr noundef %ni_lock.i, i32 noundef 4) #10
  %9 = ptrtoint ptr %ea_run to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %ea_run, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %6, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %name_len)
  %cmp = icmp ugt i32 %name_len, 255
  br i1 %cmp, label %entry.cleanup169_crit_edge, label %if.end

entry.cleanup169_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup169

if.end:                                           ; preds = %entry
  %add3 = add nuw nsw i32 %name_len, 1
  %add4 = add i32 %add3, %val_size
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %add4, i32 8) #10
  %add6 = add i32 %spec.select.i, 3
  %and = and i32 %add6, -4
  %call7 = call fastcc i32 @ntfs_read_ea(ptr noundef %add.ptr.i, ptr noundef nonnull %ea_all, i32 noundef %and, ptr noundef nonnull %info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end9, label %if.end.cleanup169_crit_edge

if.end.cleanup169_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup169

if.end9:                                          ; preds = %if.end
  %12 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %info, align 4
  %tobool10.not = icmp eq ptr %13, null
  br i1 %tobool10.not, label %if.end9.if.else61_crit_edge, label %land.lhs.true

if.end9.if.else61_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else61

land.lhs.true:                                    ; preds = %if.end9
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 8)
  %15 = load i64, ptr %13, align 4
  %ea_info.sroa.0.0.extract.shift = lshr i64 %15, 48
  %ea_info.sroa.0.0.extract.trunc = trunc i64 %ea_info.sroa.0.0.extract.shift to i16
  %ea_info.sroa.12.0.extract.shift = lshr i64 %15, 32
  %ea_info.sroa.12.0.extract.trunc = trunc i64 %ea_info.sroa.12.0.extract.shift to i16
  %ea_info.sroa.15.0.extract.trunc = trunc i64 %15 to i32
  %16 = tail call i32 @llvm.bswap.i32(i32 %ea_info.sroa.15.0.extract.trunc)
  %17 = trunc i64 %ea_info.sroa.0.0.extract.shift to i32
  %18 = ptrtoint ptr %ea_all to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ea_all, align 4
  %conv = trunc i32 %name_len to i8
  %tobool.not.i = icmp eq ptr %19, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ea_info.sroa.15.0.extract.trunc)
  %tobool1.not.i = icmp eq i32 %ea_info.sroa.15.0.extract.trunc, 0
  %or.cond.i = or i1 %tobool.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.if.else61_crit_edge, label %land.lhs.true.for.cond.i_crit_edge

land.lhs.true.for.cond.i_crit_edge:               ; preds = %land.lhs.true
  br label %for.cond.i

land.lhs.true.if.else61_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else61

for.cond.i:                                       ; preds = %if.end13.i.for.cond.i_crit_edge, %land.lhs.true.for.cond.i_crit_edge
  %off.0 = phi i32 [ %add.i, %if.end13.i.for.cond.i_crit_edge ], [ 0, %land.lhs.true.for.cond.i_crit_edge ]
  %add.ptr.i271 = getelementptr i8, ptr %19, i32 %off.0
  %20 = ptrtoint ptr %add.ptr.i271 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i271, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i.i, label %cond.false.i.i, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #10
  br label %unpacked_ea_size.exit.i

cond.false.i.i:                                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  %name_len.i.i = getelementptr inbounds %struct.EA_FULL, ptr %add.ptr.i271, i32 0, i32 2
  %23 = ptrtoint ptr %name_len.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %name_len.i.i, align 1
  %conv.i.i = zext i8 %24 to i32
  %elength.i.i = getelementptr inbounds %struct.EA_FULL, ptr %add.ptr.i271, i32 0, i32 3
  %25 = ptrtoint ptr %elength.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %elength.i.i, align 2
  %27 = tail call i16 @llvm.bswap.i16(i16 %26) #10
  %conv2.i.i = zext i16 %27 to i32
  %add3.i.i = add nuw nsw i32 %conv.i.i, 12
  %add4.i.i = add nuw nsw i32 %add3.i.i, %conv2.i.i
  %and.i.i = and i32 %add4.i.i, 131068
  br label %unpacked_ea_size.exit.i

unpacked_ea_size.exit.i:                          ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi i32 [ %22, %cond.true.i.i ], [ %and.i.i, %cond.false.i.i ]
  %add.i = add i32 %cond.i.i, %off.0
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %16)
  %cmp.i = icmp ugt i32 %add.i, %16
  br i1 %cmp.i, label %unpacked_ea_size.exit.i.if.else61_crit_edge, label %if.end3.i

unpacked_ea_size.exit.i.if.else61_crit_edge:      ; preds = %unpacked_ea_size.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else61

if.end3.i:                                        ; preds = %unpacked_ea_size.exit.i
  %name_len4.i = getelementptr inbounds %struct.EA_FULL, ptr %add.ptr.i271, i32 0, i32 2
  %28 = ptrtoint ptr %name_len4.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %name_len4.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %29, i8 %conv)
  %cmp6.i = icmp eq i8 %29, %conv
  br i1 %cmp6.i, label %land.lhs.true.i, label %if.end3.i.if.end13.i_crit_edge

if.end3.i.if.end13.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i

land.lhs.true.i:                                  ; preds = %if.end3.i
  %name8.i = getelementptr inbounds %struct.EA_FULL, ptr %add.ptr.i271, i32 0, i32 4
  %bcmp.i = tail call i32 @bcmp(ptr %name8.i, ptr %name, i32 %name_len) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool11.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool11.not.i, label %if.then18, label %land.lhs.true.i.if.end13.i_crit_edge

land.lhs.true.i.if.end13.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i

if.end13.i:                                       ; preds = %land.lhs.true.i.if.end13.i_crit_edge, %if.end3.i.if.end13.i_crit_edge
  %cmp14.not.i = icmp ult i32 %add.i, %16
  br i1 %cmp14.not.i, label %if.end13.i.for.cond.i_crit_edge, label %if.end13.i.if.else61_crit_edge

if.end13.i.if.else61_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else61

if.end13.i.for.cond.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

if.then18:                                        ; preds = %land.lhs.true.i
  %name_len4.i.le = getelementptr inbounds %struct.EA_FULL, ptr %add.ptr.i271, i32 0, i32 2
  %and19 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end22, label %if.then18.cleanup169_crit_edge

if.then18.cleanup169_crit_edge:                   ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup169

if.end22:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val_size)
  %tobool23.not = icmp eq i32 %val_size, 0
  br i1 %tobool23.not, label %if.end22.if.end37_crit_edge, label %land.lhs.true24

if.end22.if.end37_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

land.lhs.true24:                                  ; preds = %if.end22
  %elength = getelementptr inbounds %struct.EA_FULL, ptr %add.ptr.i271, i32 0, i32 3
  %30 = ptrtoint ptr %elength to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %elength, align 2
  %32 = tail call i16 @llvm.bswap.i16(i16 %31)
  %conv25 = zext i16 %32 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv25, i32 %val_size)
  %cmp26 = icmp eq i32 %conv25, %val_size
  br i1 %cmp26, label %land.lhs.true28, label %land.lhs.true24.if.end37_crit_edge

land.lhs.true24.if.end37_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

land.lhs.true28:                                  ; preds = %land.lhs.true24
  %33 = ptrtoint ptr %name_len4.i.le to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %name_len4.i.le, align 1
  %conv31 = zext i8 %34 to i32
  %add.ptr32 = getelementptr i8, ptr %name8.i, i32 %conv31
  %add.ptr33 = getelementptr i8, ptr %add.ptr32, i32 1
  %bcmp = tail call i32 @bcmp(ptr %add.ptr33, ptr %value, i32 %val_size) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool35.not = icmp eq i32 %bcmp, 0
  br i1 %tobool35.not, label %land.lhs.true28.cleanup169_crit_edge, label %land.lhs.true28.if.end37_crit_edge

land.lhs.true28.if.end37_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

land.lhs.true28.cleanup169_crit_edge:             ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup169

if.end37:                                         ; preds = %land.lhs.true28.if.end37_crit_edge, %land.lhs.true24.if.end37_crit_edge, %if.end22.if.end37_crit_edge
  %flags38 = getelementptr inbounds %struct.EA_FULL, ptr %add.ptr.i271, i32 0, i32 1
  %35 = ptrtoint ptr %flags38 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %flags38, align 4
  %37 = tail call i16 @llvm.bswap.i16(i16 %ea_info.sroa.12.0.extract.trunc) #10
  %add.i272 = add i16 %37, -1
  %38 = tail call i16 @llvm.bswap.i16(i16 %add.i272) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool41.not352 = icmp slt i8 %36, 0
  %ea_info.sroa.12.1 = select i1 %tobool41.not352, i16 %38, i16 %ea_info.sroa.12.0.extract.trunc
  %39 = ptrtoint ptr %add.ptr.i271 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr.i271, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i273 = icmp eq i32 %40, 0
  br i1 %tobool.not.i273, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #10
  br label %unpacked_ea_size.exit

cond.false.i:                                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %name_len4.i.le to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %name_len4.i.le, align 1
  %conv.i = zext i8 %43 to i32
  %elength.i = getelementptr inbounds %struct.EA_FULL, ptr %add.ptr.i271, i32 0, i32 3
  %44 = ptrtoint ptr %elength.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %elength.i, align 2
  %46 = tail call i16 @llvm.bswap.i16(i16 %45) #10
  %conv2.i = zext i16 %46 to i32
  %add3.i = add nuw nsw i32 %conv.i, 12
  %add4.i = add nuw nsw i32 %add3.i, %conv2.i
  %and.i = and i32 %add4.i, 131068
  br label %unpacked_ea_size.exit

unpacked_ea_size.exit:                            ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %41, %cond.true.i ], [ %and.i, %cond.false.i ]
  %47 = ptrtoint ptr %name_len4.i.le to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %name_len4.i.le, align 1
  %conv.i275 = zext i8 %48 to i16
  %elength.i276 = getelementptr inbounds %struct.EA_FULL, ptr %add.ptr.i271, i32 0, i32 3
  %49 = ptrtoint ptr %elength.i276 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %elength.i276, align 2
  %51 = tail call i16 @llvm.bswap.i16(i16 %50) #10
  %52 = tail call i16 @llvm.bswap.i16(i16 %ea_info.sroa.0.0.extract.trunc) #10
  %.neg353 = add i16 %52, -5
  %53 = add i16 %51, %conv.i275
  %add.i277 = sub i16 %.neg353, %53
  %54 = tail call i16 @llvm.bswap.i16(i16 %add.i277) #10
  %add.ptr48 = getelementptr i8, ptr %add.ptr.i271, i32 %cond.i
  %55 = add i32 %off.0, %cond.i
  %sub50 = sub i32 %16, %55
  %56 = call ptr @memmove(ptr %add.ptr.i271, ptr %add.ptr48, i32 %sub50)
  %sub51 = sub i32 %16, %cond.i
  %add.ptr52 = getelementptr i8, ptr %19, i32 %sub51
  %57 = call ptr @memset(ptr %add.ptr52, i32 0, i32 %cond.i)
  %58 = tail call i32 @llvm.bswap.i32(i32 %sub51)
  %and54 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp ne i32 %and54, 0
  %59 = and i1 %tobool23.not, %tobool55.not
  br i1 %59, label %unpacked_ea_size.exit.update_ea_crit_edge, label %unpacked_ea_size.exit.if.end73_crit_edge

unpacked_ea_size.exit.if.end73_crit_edge:         ; preds = %unpacked_ea_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

unpacked_ea_size.exit.update_ea_crit_edge:        ; preds = %unpacked_ea_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_ea

if.else61:                                        ; preds = %if.end13.i.if.else61_crit_edge, %unpacked_ea_size.exit.i.if.else61_crit_edge, %land.lhs.true.if.else61_crit_edge, %if.end9.if.else61_crit_edge
  %size_pack.0322 = phi i32 [ 0, %if.end9.if.else61_crit_edge ], [ %17, %land.lhs.true.if.else61_crit_edge ], [ %17, %unpacked_ea_size.exit.i.if.else61_crit_edge ], [ %17, %if.end13.i.if.else61_crit_edge ]
  %size.0319 = phi i32 [ 0, %if.end9.if.else61_crit_edge ], [ %16, %land.lhs.true.if.else61_crit_edge ], [ %16, %unpacked_ea_size.exit.i.if.else61_crit_edge ], [ %16, %if.end13.i.if.else61_crit_edge ]
  %ea_info.sroa.0.0318 = phi i16 [ 0, %if.end9.if.else61_crit_edge ], [ %ea_info.sroa.0.0.extract.trunc, %land.lhs.true.if.else61_crit_edge ], [ %ea_info.sroa.0.0.extract.trunc, %unpacked_ea_size.exit.i.if.else61_crit_edge ], [ %ea_info.sroa.0.0.extract.trunc, %if.end13.i.if.else61_crit_edge ]
  %ea_info.sroa.12.0317 = phi i16 [ 0, %if.end9.if.else61_crit_edge ], [ %ea_info.sroa.12.0.extract.trunc, %land.lhs.true.if.else61_crit_edge ], [ %ea_info.sroa.12.0.extract.trunc, %unpacked_ea_size.exit.i.if.else61_crit_edge ], [ %ea_info.sroa.12.0.extract.trunc, %if.end13.i.if.else61_crit_edge ]
  %and62 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.end65, label %if.else61.cleanup169_crit_edge

if.else61.cleanup169_crit_edge:                   ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup169

if.end65:                                         ; preds = %if.else61
  %60 = ptrtoint ptr %ea_all to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ea_all, align 4
  %tobool66.not = icmp eq ptr %61, null
  br i1 %tobool66.not, label %if.end8.i.i, label %if.end65.if.end73_crit_edge

if.end65.if.end73_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

if.end8.i.i:                                      ; preds = %if.end65
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %and, i32 noundef 3392) #13
  %62 = ptrtoint ptr %ea_all to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call9.i.i, ptr %ea_all, align 4
  %tobool69.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool69.not, label %if.end8.i.i.cleanup169_crit_edge, label %if.end8.i.i.if.end73_crit_edge

if.end8.i.i.if.end73_crit_edge:                   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

if.end8.i.i.cleanup169_crit_edge:                 ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup169

if.end73:                                         ; preds = %if.end8.i.i.if.end73_crit_edge, %if.end65.if.end73_crit_edge, %unpacked_ea_size.exit.if.end73_crit_edge
  %size_pack.0321 = phi i32 [ %size_pack.0322, %if.end8.i.i.if.end73_crit_edge ], [ %size_pack.0322, %if.end65.if.end73_crit_edge ], [ %17, %unpacked_ea_size.exit.if.end73_crit_edge ]
  %ea_info.sroa.12.3 = phi i16 [ %ea_info.sroa.12.0317, %if.end8.i.i.if.end73_crit_edge ], [ %ea_info.sroa.12.0317, %if.end65.if.end73_crit_edge ], [ %ea_info.sroa.12.1, %unpacked_ea_size.exit.if.end73_crit_edge ]
  %ea_info.sroa.0.2 = phi i16 [ %ea_info.sroa.0.0318, %if.end8.i.i.if.end73_crit_edge ], [ %ea_info.sroa.0.0318, %if.end65.if.end73_crit_edge ], [ %54, %unpacked_ea_size.exit.if.end73_crit_edge ]
  %size.2 = phi i32 [ %size.0319, %if.end8.i.i.if.end73_crit_edge ], [ %size.0319, %if.end65.if.end73_crit_edge ], [ %sub51, %unpacked_ea_size.exit.if.end73_crit_edge ]
  %63 = ptrtoint ptr %ea_all to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ea_all, align 4
  %add.ptr74 = getelementptr i8, ptr %64, i32 %size.2
  %65 = tail call i32 @llvm.bswap.i32(i32 %and)
  %66 = ptrtoint ptr %add.ptr74 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %add.ptr74, align 4
  %flags76 = getelementptr inbounds %struct.EA_FULL, ptr %add.ptr74, i32 0, i32 1
  %67 = ptrtoint ptr %flags76 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %flags76, align 4
  %conv77 = trunc i32 %name_len to i8
  %name_len78 = getelementptr inbounds %struct.EA_FULL, ptr %add.ptr74, i32 0, i32 2
  %68 = ptrtoint ptr %name_len78 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv77, ptr %name_len78, align 1
  %conv79 = trunc i32 %val_size to i16
  %69 = tail call i16 @llvm.bswap.i16(i16 %conv79)
  %elength80 = getelementptr inbounds %struct.EA_FULL, ptr %add.ptr74, i32 0, i32 3
  %70 = ptrtoint ptr %elength80 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %69, ptr %elength80, align 2
  %name81 = getelementptr inbounds %struct.EA_FULL, ptr %add.ptr74, i32 0, i32 4
  %71 = call ptr @memcpy(ptr %name81, ptr %name, i32 %name_len)
  %arrayidx = getelementptr [0 x i8], ptr %name81, i32 0, i32 %name_len
  %72 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %arrayidx, align 1
  %add.ptr87 = getelementptr i8, ptr %arrayidx, i32 1
  %73 = call ptr @memcpy(ptr %add.ptr87, ptr %value, i32 %val_size)
  %74 = tail call i16 @llvm.bswap.i16(i16 %ea_info.sroa.0.2)
  %conv89 = zext i16 %74 to i32
  %75 = ptrtoint ptr %name_len78 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %name_len78, align 1
  %conv.i279 = zext i8 %76 to i32
  %77 = ptrtoint ptr %elength80 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %elength80, align 2
  %79 = tail call i16 @llvm.bswap.i16(i16 %78) #10
  %conv1.i281 = zext i16 %79 to i32
  %add2.i282 = add nuw nsw i32 %conv89, 5
  %sub.i283 = add nuw nsw i32 %add2.i282, %conv.i279
  %add91 = add nuw nsw i32 %sub.i283, %conv1.i281
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %add91)
  %cmp96 = icmp ugt i32 %add91, 65535
  br i1 %cmp96, label %if.end73.if.then100_crit_edge, label %lor.lhs.false

if.end73.if.then100_crit_edge:                    ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then100

lor.lhs.false:                                    ; preds = %if.end73
  %add94 = add i32 %size.2, %and
  %80 = tail call i32 @llvm.bswap.i32(i32 %add94)
  %conv92 = trunc i32 %add91 to i16
  %81 = tail call i16 @llvm.bswap.i16(i16 %conv92)
  %ea_max_size = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 24
  %82 = ptrtoint ptr %ea_max_size to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %ea_max_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add94, i32 %83)
  %cmp98 = icmp ugt i32 %add94, %83
  br i1 %cmp98, label %lor.lhs.false.if.then100_crit_edge, label %lor.lhs.false.update_ea_crit_edge

lor.lhs.false.update_ea_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_ea

lor.lhs.false.if.then100_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then100

if.then100:                                       ; preds = %lor.lhs.false.if.then100_crit_edge, %if.end73.if.then100_crit_edge
  tail call void (ptr, ptr, ...) @ntfs_inode_printk(ptr noundef %inode, ptr noundef nonnull @.str.6) #10
  br label %cleanup169

update_ea:                                        ; preds = %lor.lhs.false.update_ea_crit_edge, %unpacked_ea_size.exit.update_ea_crit_edge
  %size_pack.0320 = phi i32 [ %size_pack.0321, %lor.lhs.false.update_ea_crit_edge ], [ %17, %unpacked_ea_size.exit.update_ea_crit_edge ]
  %ea_info.sroa.15.2 = phi i32 [ %80, %lor.lhs.false.update_ea_crit_edge ], [ %58, %unpacked_ea_size.exit.update_ea_crit_edge ]
  %ea_info.sroa.12.4 = phi i16 [ %ea_info.sroa.12.3, %lor.lhs.false.update_ea_crit_edge ], [ %ea_info.sroa.12.1, %unpacked_ea_size.exit.update_ea_crit_edge ]
  %ea_info.sroa.0.3 = phi i16 [ %81, %lor.lhs.false.update_ea_crit_edge ], [ %54, %unpacked_ea_size.exit.update_ea_crit_edge ]
  %size.3 = phi i32 [ %add94, %lor.lhs.false.update_ea_crit_edge ], [ %sub51, %unpacked_ea_size.exit.update_ea_crit_edge ]
  br i1 %tobool10.not, label %if.then103, label %update_ea.if.end115_crit_edge

update_ea.if.end115_crit_edge:                    ; preds = %update_ea
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end115

if.then103:                                       ; preds = %update_ea
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.3)
  %tobool104.not = icmp eq i32 %size.3, 0
  br i1 %tobool104.not, label %if.then103.cleanup169_crit_edge, label %if.end106

if.then103.cleanup169_crit_edge:                  ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup169

if.end106:                                        ; preds = %if.then103
  %call107 = tail call i32 @ni_insert_resident(ptr noundef %add.ptr.i, i32 noundef 8, i32 noundef -805306368, ptr noundef null, i8 noundef zeroext 0, ptr noundef null, ptr noundef null, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %if.end110, label %if.end106.cleanup169_crit_edge

if.end106.cleanup169_crit_edge:                   ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup169

if.end110:                                        ; preds = %if.end106
  %call111 = tail call i32 @ni_insert_resident(ptr noundef %add.ptr.i, i32 noundef 0, i32 noundef -536870912, ptr noundef null, i8 noundef zeroext 0, ptr noundef null, ptr noundef null, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %if.end110.if.end115_crit_edge, label %if.end110.cleanup169_crit_edge

if.end110.cleanup169_crit_edge:                   ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup169

if.end110.if.end115_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end115

if.end115:                                        ; preds = %if.end110.if.end115_crit_edge, %update_ea.if.end115_crit_edge
  %conv116 = zext i32 %size.3 to i64
  %84 = ptrtoint ptr %new_sz to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %conv116, ptr %new_sz, align 8
  %call117 = call i32 @attr_set_size(ptr noundef %add.ptr.i, i32 noundef -536870912, ptr noundef null, i8 noundef zeroext 0, ptr noundef nonnull %ea_run, i64 noundef %conv116, ptr noundef nonnull %new_sz, i1 noundef zeroext false, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %if.end120, label %if.end115.cleanup169_crit_edge

if.end115.cleanup169_crit_edge:                   ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup169

if.end120:                                        ; preds = %if.end115
  %85 = ptrtoint ptr %le to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %le, align 4
  %call121 = call ptr @ni_find_attr(ptr noundef %add.ptr.i, ptr noundef null, ptr noundef nonnull %le, i32 noundef -805306368, ptr noundef null, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull %mi2) #10
  %tobool122.not = icmp eq ptr %call121, null
  br i1 %tobool122.not, label %if.end120.cleanup169_crit_edge, label %if.end124

if.end120.cleanup169_crit_edge:                   ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup169

if.end124:                                        ; preds = %if.end120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.3)
  %tobool125.not = icmp eq i32 %size.3, 0
  br i1 %tobool125.not, label %if.end132, label %if.else127

if.else127:                                       ; preds = %if.end124
  %non_res.i = getelementptr inbounds %struct.ATTRIB, ptr %call121, i32 0, i32 2
  %86 = ptrtoint ptr %non_res.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %non_res.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool.not.i284 = icmp eq i8 %87, 0
  br i1 %tobool.not.i284, label %if.end.i, label %if.else127.cleanup169_crit_edge

if.else127.cleanup169_crit_edge:                  ; preds = %if.else127
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup169

if.end.i:                                         ; preds = %if.else127
  %size.i = getelementptr inbounds %struct.ATTRIB, ptr %call121, i32 0, i32 1
  %88 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %size.i, align 4
  %90 = call i32 @llvm.bswap.i32(i32 %89) #10
  %91 = getelementptr inbounds %struct.ATTRIB, ptr %call121, i32 0, i32 7
  %data_off.i = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %data_off.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %data_off.i, align 4
  %94 = call i16 @llvm.bswap.i16(i16 %93) #10
  %conv.i285 = zext i16 %94 to i32
  %add.i286 = add nuw nsw i32 %conv.i285, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %90, i32 %add.i286)
  %cmp.i287 = icmp ult i32 %90, %add.i286
  br i1 %cmp.i287, label %if.end.i.cleanup169_crit_edge, label %if.end3.i290

if.end.i.cleanup169_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup169

if.end3.i290:                                     ; preds = %if.end.i
  %95 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %91, align 8
  %97 = call i32 @llvm.bswap.i32(i32 %96) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %97)
  %cmp4.i = icmp ult i32 %97, 8
  %add.ptr.i288 = getelementptr i8, ptr %call121, i32 %conv.i285
  %tobool129.not = icmp eq ptr %add.ptr.i288, null
  %or.cond = select i1 %cmp4.i, i1 true, i1 %tobool129.not
  br i1 %or.cond, label %if.end3.i290.cleanup169_crit_edge, label %if.end132.thread

if.end3.i290.cleanup169_crit_edge:                ; preds = %if.end3.i290
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup169

if.end132:                                        ; preds = %if.end124
  %98 = ptrtoint ptr %mi2 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %mi2, align 4
  %100 = ptrtoint ptr %le to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %le, align 4
  call void @ni_remove_attr_le(ptr noundef %add.ptr.i, ptr noundef nonnull %call121, ptr noundef %99, ptr noundef %101) #10
  %102 = ptrtoint ptr %le to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr null, ptr %le, align 4
  %call133 = call ptr @ni_find_attr(ptr noundef %add.ptr.i, ptr noundef null, ptr noundef nonnull %le, i32 noundef -536870912, ptr noundef null, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull %mi2) #10
  %tobool134.not = icmp eq ptr %call133, null
  br i1 %tobool134.not, label %if.end132.cleanup169_crit_edge, label %if.then138

if.end132.cleanup169_crit_edge:                   ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup169

if.end132.thread:                                 ; preds = %if.end3.i290
  %ea_info.sroa.15.0.insert.ext = zext i32 %ea_info.sroa.15.2 to i64
  %ea_info.sroa.12.0.insert.ext = zext i16 %ea_info.sroa.12.4 to i64
  %ea_info.sroa.12.0.insert.shift = shl nuw nsw i64 %ea_info.sroa.12.0.insert.ext, 32
  %ea_info.sroa.12.0.insert.insert = or i64 %ea_info.sroa.12.0.insert.shift, %ea_info.sroa.15.0.insert.ext
  %ea_info.sroa.0.0.insert.ext = zext i16 %ea_info.sroa.0.3 to i64
  %ea_info.sroa.0.0.insert.shift = shl nuw i64 %ea_info.sroa.0.0.insert.ext, 48
  %ea_info.sroa.0.0.insert.insert = or i64 %ea_info.sroa.12.0.insert.insert, %ea_info.sroa.0.0.insert.shift
  %103 = ptrtoint ptr %add.ptr.i288 to i32
  call void @__asan_storeN_noabort(i32 %103, i32 8)
  store i64 %ea_info.sroa.0.0.insert.insert, ptr %add.ptr.i288, align 1
  %104 = ptrtoint ptr %mi2 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %mi2, align 4
  %dirty = getelementptr inbounds %struct.mft_inode, ptr %105, i32 0, i32 5
  %106 = ptrtoint ptr %dirty to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 1, ptr %dirty, align 4
  %107 = ptrtoint ptr %le to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr null, ptr %le, align 4
  %call133343 = call ptr @ni_find_attr(ptr noundef %add.ptr.i, ptr noundef null, ptr noundef nonnull %le, i32 noundef -536870912, ptr noundef null, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull %mi2) #10
  %tobool134.not344 = icmp eq ptr %call133343, null
  br i1 %tobool134.not344, label %if.end132.thread.cleanup169_crit_edge, label %if.else139

if.end132.thread.cleanup169_crit_edge:            ; preds = %if.end132.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup169

if.then138:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #12
  %108 = ptrtoint ptr %mi2 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %mi2, align 4
  %110 = ptrtoint ptr %le to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %le, align 4
  call void @ni_remove_attr_le(ptr noundef %add.ptr.i, ptr noundef nonnull %call133, ptr noundef %109, ptr noundef %111) #10
  %ni_flags157 = getelementptr i8, ptr %inode, i32 -4
  %112 = ptrtoint ptr %ni_flags157 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %ni_flags157, align 4
  %and158 = and i32 %113, -33
  store i32 %and158, ptr %ni_flags157, align 4
  br label %if.end159

if.else139:                                       ; preds = %if.end132.thread
  %non_res = getelementptr inbounds %struct.ATTRIB, ptr %call133343, i32 0, i32 2
  %114 = ptrtoint ptr %non_res to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %non_res, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool140.not = icmp eq i8 %115, 0
  br i1 %tobool140.not, label %if.end.i298, label %if.then141

if.then141:                                       ; preds = %if.else139
  %116 = ptrtoint ptr %ea_all to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %ea_all, align 4
  %call142 = call i32 @ntfs_sb_write_run(ptr noundef %1, ptr noundef nonnull %ea_run, i64 noundef 0, ptr noundef %117, i32 noundef %size.3, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142)
  %tobool143.not = icmp eq i32 %call142, 0
  br i1 %tobool143.not, label %if.then141.if.then155_crit_edge, label %if.then141.cleanup169_crit_edge

if.then141.cleanup169_crit_edge:                  ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup169

if.then141.if.then155_crit_edge:                  ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then155

if.end.i298:                                      ; preds = %if.else139
  %size.i293 = getelementptr inbounds %struct.ATTRIB, ptr %call133343, i32 0, i32 1
  %118 = ptrtoint ptr %size.i293 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %size.i293, align 4
  %120 = call i32 @llvm.bswap.i32(i32 %119) #10
  %121 = getelementptr inbounds %struct.ATTRIB, ptr %call133343, i32 0, i32 7
  %data_off.i294 = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %121, i32 0, i32 1
  %122 = ptrtoint ptr %data_off.i294 to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %data_off.i294, align 4
  %124 = call i16 @llvm.bswap.i16(i16 %123) #10
  %conv.i295 = zext i16 %124 to i32
  %add.i296 = add i32 %size.3, %conv.i295
  call void @__sanitizer_cov_trace_cmp4(i32 %120, i32 %add.i296)
  %cmp.i297 = icmp ult i32 %120, %add.i296
  br i1 %cmp.i297, label %if.end.i298.cleanup169_crit_edge, label %if.end3.i302

if.end.i298.cleanup169_crit_edge:                 ; preds = %if.end.i298
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup169

if.end3.i302:                                     ; preds = %if.end.i298
  %125 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %121, align 8
  %127 = call i32 @llvm.bswap.i32(i32 %126) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %127, i32 %size.3)
  %cmp4.i299 = icmp ult i32 %127, %size.3
  %add.ptr.i300 = getelementptr i8, ptr %call133343, i32 %conv.i295
  %tobool148.not = icmp eq ptr %add.ptr.i300, null
  %or.cond351 = select i1 %cmp4.i299, i1 true, i1 %tobool148.not
  br i1 %or.cond351, label %if.end3.i302.cleanup169_crit_edge, label %if.end150

if.end3.i302.cleanup169_crit_edge:                ; preds = %if.end3.i302
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup169

if.end150:                                        ; preds = %if.end3.i302
  call void @__sanitizer_cov_trace_pc() #12
  %128 = ptrtoint ptr %ea_all to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %ea_all, align 4
  %130 = call ptr @memcpy(ptr %add.ptr.i300, ptr %129, i32 %size.3)
  %131 = ptrtoint ptr %mi2 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %mi2, align 4
  %dirty151 = getelementptr inbounds %struct.mft_inode, ptr %132, i32 0, i32 5
  %133 = ptrtoint ptr %dirty151 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 1, ptr %dirty151, align 4
  br label %if.then155

if.then155:                                       ; preds = %if.end150, %if.then141.if.then155_crit_edge
  %ni_flags = getelementptr i8, ptr %inode, i32 -4
  %134 = ptrtoint ptr %ni_flags to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %ni_flags, align 4
  %or = or i32 %135, 32
  store i32 %or, ptr %ni_flags, align 4
  br label %if.end159

if.end159:                                        ; preds = %if.then155, %if.then138
  %conv161 = zext i16 %ea_info.sroa.0.3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %size_pack.0320, i32 %conv161)
  %cmp163.not = icmp eq i32 %size_pack.0320, %conv161
  br i1 %cmp163.not, label %if.end159.if.end168_crit_edge, label %if.then165

if.end159.if.end168_crit_edge:                    ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end168

if.then165:                                       ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #12
  %ni_flags166 = getelementptr i8, ptr %inode, i32 -4
  %136 = ptrtoint ptr %ni_flags166 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %ni_flags166, align 4
  %or167 = or i32 %137, 256
  store i32 %or167, ptr %ni_flags166, align 4
  br label %if.end168

if.end168:                                        ; preds = %if.then165, %if.end159.if.end168_crit_edge
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #10
  br label %cleanup169

cleanup169:                                       ; preds = %if.end168, %if.end3.i302.cleanup169_crit_edge, %if.end.i298.cleanup169_crit_edge, %if.then141.cleanup169_crit_edge, %if.end132.thread.cleanup169_crit_edge, %if.end132.cleanup169_crit_edge, %if.end3.i290.cleanup169_crit_edge, %if.end.i.cleanup169_crit_edge, %if.else127.cleanup169_crit_edge, %if.end120.cleanup169_crit_edge, %if.end115.cleanup169_crit_edge, %if.end110.cleanup169_crit_edge, %if.end106.cleanup169_crit_edge, %if.then103.cleanup169_crit_edge, %if.then100, %if.end8.i.i.cleanup169_crit_edge, %if.else61.cleanup169_crit_edge, %land.lhs.true28.cleanup169_crit_edge, %if.then18.cleanup169_crit_edge, %if.end.cleanup169_crit_edge, %entry.cleanup169_crit_edge
  %err.2 = phi i32 [ %call7, %if.end.cleanup169_crit_edge ], [ %call117, %if.end115.cleanup169_crit_edge ], [ %call142, %if.then141.cleanup169_crit_edge ], [ 0, %if.end168 ], [ %call107, %if.end106.cleanup169_crit_edge ], [ %call111, %if.end110.cleanup169_crit_edge ], [ -27, %if.then100 ], [ -36, %entry.cleanup169_crit_edge ], [ -61, %if.else61.cleanup169_crit_edge ], [ -12, %if.end8.i.i.cleanup169_crit_edge ], [ 0, %if.then103.cleanup169_crit_edge ], [ -22, %if.end120.cleanup169_crit_edge ], [ -22, %if.end132.cleanup169_crit_edge ], [ -22, %if.end132.thread.cleanup169_crit_edge ], [ 0, %land.lhs.true28.cleanup169_crit_edge ], [ -17, %if.then18.cleanup169_crit_edge ], [ -22, %if.else127.cleanup169_crit_edge ], [ -22, %if.end.i.cleanup169_crit_edge ], [ -22, %if.end3.i290.cleanup169_crit_edge ], [ -22, %if.end.i298.cleanup169_crit_edge ], [ -22, %if.end3.i302.cleanup169_crit_edge ]
  call void @mutex_unlock(ptr noundef %ni_lock.i) #10
  %138 = ptrtoint ptr %ea_run to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %ea_run, align 4
  call void @kvfree(ptr noundef %139) #10
  %140 = call ptr @memset(ptr %ea_run, i32 0, i32 12)
  %141 = ptrtoint ptr %ea_all to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %ea_all, align 4
  call void @kfree(ptr noundef %142) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %new_sz) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ea_run) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mi2) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %le) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ea_all) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %info) #10
  ret i32 %err.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ntfs_get_wsl_perm(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  %sz = alloca i32, align 4
  %value = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sz) #10
  %0 = ptrtoint ptr %sz to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %sz, align 4, !annotation !39
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %value) #10
  %1 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %value, align 4, !annotation !39
  %2 = getelementptr inbounds [3 x i32], ptr %value, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4, !annotation !39
  %4 = getelementptr inbounds [3 x i32], ptr %value, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !39
  %call = call fastcc i32 @ntfs_get_ea(ptr noundef %inode, ptr noundef nonnull @.str, i32 noundef 6, ptr noundef nonnull %value, i32 noundef 4, ptr noundef nonnull %sz)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call)
  %cmp = icmp eq i32 %call, 4
  br i1 %cmp, label %land.lhs.true, label %entry.if.end17_crit_edge

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

land.lhs.true:                                    ; preds = %entry
  %call2 = call fastcc i32 @ntfs_get_ea(ptr noundef %inode, ptr noundef nonnull @.str.1, i32 noundef 6, ptr noundef %2, i32 noundef 4, ptr noundef nonnull %sz)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call2)
  %cmp3 = icmp eq i32 %call2, 4
  br i1 %cmp3, label %land.lhs.true4, label %land.lhs.true.if.end17_crit_edge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

land.lhs.true4:                                   ; preds = %land.lhs.true
  %call6 = call fastcc i32 @ntfs_get_ea(ptr noundef %inode, ptr noundef nonnull @.str.2, i32 noundef 6, ptr noundef %4, i32 noundef 4, ptr noundef nonnull %sz)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call6)
  %cmp7 = icmp eq i32 %call6, 4
  br i1 %cmp7, label %if.then, label %land.lhs.true4.if.end17_crit_edge

land.lhs.true4.if.end17_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then:                                          ; preds = %land.lhs.true4
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 4
  %8 = call i32 @llvm.bswap.i32(i32 %7)
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %9 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 53
  %11 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_user_ns.i.i, align 8
  %call1.i = call i32 @make_kuid(ptr noundef %12, i32 noundef %8) #10
  %13 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call1.i, ptr %i_uid.i, align 4
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %2, align 4
  %16 = call i32 @llvm.bswap.i32(i32 %15)
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %17 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i26 = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 53
  %19 = ptrtoint ptr %s_user_ns.i.i26 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_user_ns.i.i26, align 8
  %call1.i27 = call i32 @make_kgid(ptr noundef %20, i32 noundef %16) #10
  %21 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call1.i27, ptr %i_gid.i, align 8
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %4, align 4
  %24 = call i32 @llvm.bswap.i32(i32 %23)
  %conv = trunc i32 %24 to i16
  %25 = ptrtoint ptr %inode to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv, ptr %inode, align 8
  %call12 = call fastcc i32 @ntfs_get_ea(ptr noundef %inode, ptr noundef nonnull @.str.3, i32 noundef 7, ptr noundef nonnull %value, i32 noundef 12, ptr noundef nonnull %sz)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call12)
  %cmp13 = icmp eq i32 %call12, 4
  br i1 %cmp13, label %if.then15, label %if.then.if.end17_crit_edge

if.then.if.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then15:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %value, align 4
  %28 = call i32 @llvm.bswap.i32(i32 %27)
  %i_rdev = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %29 = ptrtoint ptr %i_rdev to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %i_rdev, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.then.if.end17_crit_edge, %land.lhs.true4.if.end17_crit_edge, %land.lhs.true.if.end17_crit_edge, %entry.if.end17_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %value) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sz) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ntfs_get_ea(ptr noundef %inode, ptr nocapture noundef readonly %name, i32 noundef %name_len, ptr noundef writeonly %buffer, i32 noundef %size, ptr noundef writeonly %required) unnamed_addr #0 align 64 {
entry:
  %info = alloca ptr, align 4
  %ea_all = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -360
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %info) #10
  %0 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %info, align 4, !annotation !39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ea_all) #10
  %1 = ptrtoint ptr %ea_all to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %ea_all, align 4
  %ni_flags = getelementptr i8, ptr %inode, i32 -4
  %2 = ptrtoint ptr %ni_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ni_flags, align 4
  %and = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %required, null
  br i1 %tobool1.not, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %ni_lock.i = getelementptr i8, ptr %inode, i32 -264
  tail call void @mutex_lock_nested(ptr noundef %ni_lock.i, i32 noundef 4) #10
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %name_len)
  %cmp = icmp ugt i32 %name_len, 255
  br i1 %cmp, label %if.end3.out_crit_edge, label %if.end5

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end5:                                          ; preds = %if.end3
  %call6 = call fastcc i32 @ntfs_read_ea(ptr noundef %add.ptr.i, ptr noundef nonnull %ea_all, i32 noundef 0, ptr noundef nonnull %info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.out_crit_edge

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end9:                                          ; preds = %if.end5
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info, align 4
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %if.end9.out_crit_edge, label %if.end12

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end12:                                         ; preds = %if.end9
  %6 = ptrtoint ptr %ea_all to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ea_all, align 4
  %size13 = getelementptr inbounds %struct.EA_INFO, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %size13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size13, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %conv = trunc i32 %name_len to i8
  %tobool.not.i = icmp eq ptr %7, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool1.not.i = icmp eq i32 %9, 0
  %or.cond.i = or i1 %tobool.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %if.end12.out_crit_edge, label %if.end12.for.cond.i_crit_edge

if.end12.for.cond.i_crit_edge:                    ; preds = %if.end12
  br label %for.cond.i

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.cond.i:                                       ; preds = %if.end13.i.for.cond.i_crit_edge, %if.end12.for.cond.i_crit_edge
  %off.0 = phi i32 [ %add.i, %if.end13.i.for.cond.i_crit_edge ], [ 0, %if.end12.for.cond.i_crit_edge ]
  %add.ptr.i58 = getelementptr i8, ptr %7, i32 %off.0
  %11 = ptrtoint ptr %add.ptr.i58 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i.i, label %cond.false.i.i, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #10
  br label %unpacked_ea_size.exit.i

cond.false.i.i:                                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  %name_len.i.i = getelementptr inbounds %struct.EA_FULL, ptr %add.ptr.i58, i32 0, i32 2
  %14 = ptrtoint ptr %name_len.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %name_len.i.i, align 1
  %conv.i.i = zext i8 %15 to i32
  %elength.i.i = getelementptr inbounds %struct.EA_FULL, ptr %add.ptr.i58, i32 0, i32 3
  %16 = ptrtoint ptr %elength.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %elength.i.i, align 2
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #10
  %conv2.i.i = zext i16 %18 to i32
  %add3.i.i = add nuw nsw i32 %conv.i.i, 12
  %add4.i.i = add nuw nsw i32 %add3.i.i, %conv2.i.i
  %and.i.i = and i32 %add4.i.i, 131068
  br label %unpacked_ea_size.exit.i

unpacked_ea_size.exit.i:                          ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi i32 [ %13, %cond.true.i.i ], [ %and.i.i, %cond.false.i.i ]
  %add.i = add i32 %cond.i.i, %off.0
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %10)
  %cmp.i = icmp ugt i32 %add.i, %10
  br i1 %cmp.i, label %unpacked_ea_size.exit.i.out_crit_edge, label %if.end3.i

unpacked_ea_size.exit.i.out_crit_edge:            ; preds = %unpacked_ea_size.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end3.i:                                        ; preds = %unpacked_ea_size.exit.i
  %name_len4.i = getelementptr inbounds %struct.EA_FULL, ptr %add.ptr.i58, i32 0, i32 2
  %19 = ptrtoint ptr %name_len4.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %name_len4.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %conv)
  %cmp6.i = icmp eq i8 %20, %conv
  br i1 %cmp6.i, label %land.lhs.true.i, label %if.end3.i.if.end13.i_crit_edge

if.end3.i.if.end13.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i

land.lhs.true.i:                                  ; preds = %if.end3.i
  %name8.i = getelementptr inbounds %struct.EA_FULL, ptr %add.ptr.i58, i32 0, i32 4
  %bcmp.i = tail call i32 @bcmp(ptr %name8.i, ptr %name, i32 %name_len) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool11.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool11.not.i, label %if.end16, label %land.lhs.true.i.if.end13.i_crit_edge

land.lhs.true.i.if.end13.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i

if.end13.i:                                       ; preds = %land.lhs.true.i.if.end13.i_crit_edge, %if.end3.i.if.end13.i_crit_edge
  %cmp14.not.i = icmp ult i32 %add.i, %10
  br i1 %cmp14.not.i, label %if.end13.i.for.cond.i_crit_edge, label %if.end13.i.out_crit_edge

if.end13.i.out_crit_edge:                         ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end13.i.for.cond.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

if.end16:                                         ; preds = %land.lhs.true.i
  %name_len4.i.le = getelementptr inbounds %struct.EA_FULL, ptr %add.ptr.i58, i32 0, i32 2
  %elength = getelementptr inbounds %struct.EA_FULL, ptr %add.ptr.i58, i32 0, i32 3
  %21 = ptrtoint ptr %elength to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %elength, align 2
  %23 = tail call i16 @llvm.bswap.i16(i16 %22)
  %conv17 = zext i16 %23 to i32
  %tobool18.not = icmp eq ptr %buffer, null
  br i1 %tobool18.not, label %if.end16.out_crit_edge, label %if.end20

if.end16.out_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end20:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_cmp4(i32 %conv17, i32 %size)
  %cmp21 = icmp ugt i32 %conv17, %size
  br i1 %cmp21, label %if.then23, label %if.end27

if.then23:                                        ; preds = %if.end20
  br i1 %tobool1.not, label %out.thread, label %if.end35.thread

out.thread:                                       ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %ea_all to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ea_all, align 4
  tail call void @kfree(ptr noundef %25) #10
  br label %if.then34

if.end35.thread:                                  ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %required to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv17, ptr %required, align 4
  %27 = ptrtoint ptr %ea_all to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ea_all, align 4
  tail call void @kfree(ptr noundef %28) #10
  br label %cleanup

if.end27:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %name_len4.i.le to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %name_len4.i.le, align 1
  %conv30 = zext i8 %30 to i32
  %add.ptr31 = getelementptr i8, ptr %name8.i, i32 %conv30
  %add.ptr32 = getelementptr i8, ptr %add.ptr31, i32 1
  %31 = call ptr @memcpy(ptr %buffer, ptr %add.ptr32, i32 %conv17)
  br label %out

out:                                              ; preds = %if.end27, %if.end16.out_crit_edge, %if.end13.i.out_crit_edge, %unpacked_ea_size.exit.i.out_crit_edge, %if.end12.out_crit_edge, %if.end9.out_crit_edge, %if.end5.out_crit_edge, %if.end3.out_crit_edge
  %len.0 = phi i32 [ 0, %if.end5.out_crit_edge ], [ %conv17, %if.end27 ], [ 0, %if.end9.out_crit_edge ], [ 0, %if.end3.out_crit_edge ], [ %conv17, %if.end16.out_crit_edge ], [ 0, %if.end12.out_crit_edge ], [ 0, %unpacked_ea_size.exit.i.out_crit_edge ], [ 0, %if.end13.i.out_crit_edge ]
  %err.0 = phi i32 [ %call6, %if.end5.out_crit_edge ], [ 0, %if.end27 ], [ 0, %if.end9.out_crit_edge ], [ -36, %if.end3.out_crit_edge ], [ 0, %if.end16.out_crit_edge ], [ -61, %if.end12.out_crit_edge ], [ -61, %unpacked_ea_size.exit.i.out_crit_edge ], [ -61, %if.end13.i.out_crit_edge ]
  %32 = ptrtoint ptr %ea_all to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ea_all, align 4
  tail call void @kfree(ptr noundef %33) #10
  br i1 %tobool1.not, label %out.if.then34_crit_edge, label %out.if.end35_crit_edge

out.if.end35_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

out.if.then34_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then34

if.then34:                                        ; preds = %out.if.then34_crit_edge, %out.thread
  %err.068 = phi i32 [ -34, %out.thread ], [ %err.0, %out.if.then34_crit_edge ]
  %len.066 = phi i32 [ %conv17, %out.thread ], [ %len.0, %out.if.then34_crit_edge ]
  %ni_lock.i59 = getelementptr i8, ptr %inode, i32 -264
  tail call void @mutex_unlock(ptr noundef %ni_lock.i59) #10
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %out.if.end35_crit_edge
  %err.067 = phi i32 [ %err.068, %if.then34 ], [ %err.0, %out.if.end35_crit_edge ]
  %len.065 = phi i32 [ %len.066, %if.then34 ], [ %len.0, %out.if.end35_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.067)
  %tobool36.not = icmp eq i32 %err.067, 0
  %spec.select = select i1 %tobool36.not, i32 %len.065, i32 %err.067
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.end35.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -61, %entry.cleanup_crit_edge ], [ -34, %if.end35.thread ], [ %spec.select, %if.end35 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ea_all) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %info) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @posix_acl_from_xattr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_cached_acl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @posix_acl_update_mode(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @posix_acl_to_xattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ntfs_read_ea(ptr noundef %ni, ptr nocapture noundef writeonly %ea, i32 noundef %add_bytes, ptr nocapture noundef writeonly %info) unnamed_addr #0 align 64 {
entry:
  %le = alloca ptr, align 4
  %run = alloca %struct.runs_tree, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sbi1 = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 1
  %0 = ptrtoint ptr %sbi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sbi1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %le) #10
  %2 = ptrtoint ptr %le to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %le, align 4
  %3 = ptrtoint ptr %ea to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %ea, align 4
  %4 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %info, align 4
  %call = call ptr @ni_find_attr(ptr noundef %ni, ptr noundef null, ptr noundef nonnull %le, i32 noundef -805306368, ptr noundef null, i8 noundef zeroext 0, ptr noundef null, ptr noundef null) #10
  %call2 = call ptr @ni_find_attr(ptr noundef %ni, ptr noundef %call, ptr noundef nonnull %le, i32 noundef -536870912, ptr noundef null, i8 noundef zeroext 0, ptr noundef null, ptr noundef null) #10
  %tobool.not = icmp eq ptr %call2, null
  %tobool3.not = icmp eq ptr %call, null
  %or.cond = or i1 %tobool3.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup43_crit_edge, label %if.end

entry.cleanup43_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup43

if.end:                                           ; preds = %entry
  %non_res.i = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 2
  %5 = ptrtoint ptr %non_res.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %non_res.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %if.end.i84, label %if.end.resident_data_ex.exit.thread_crit_edge

if.end.resident_data_ex.exit.thread_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %resident_data_ex.exit.thread

if.end.i84:                                       ; preds = %if.end
  %size.i = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 1
  %7 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size.i, align 4
  %9 = call i32 @llvm.bswap.i32(i32 %8) #10
  %10 = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 7
  %data_off.i = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %data_off.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %data_off.i, align 4
  %13 = call i16 @llvm.bswap.i16(i16 %12) #10
  %conv.i = zext i16 %13 to i32
  %add.i = add nuw nsw i32 %conv.i, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %add.i)
  %cmp.i83 = icmp ult i32 %9, %add.i
  br i1 %cmp.i83, label %if.end.i84.resident_data_ex.exit.thread_crit_edge, label %if.end3.i

if.end.i84.resident_data_ex.exit.thread_crit_edge: ; preds = %if.end.i84
  call void @__sanitizer_cov_trace_pc() #12
  br label %resident_data_ex.exit.thread

if.end3.i:                                        ; preds = %if.end.i84
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %10, align 8
  %16 = call i32 @llvm.bswap.i32(i32 %15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %16)
  %cmp4.i = icmp ult i32 %16, 8
  %add.ptr.i = getelementptr i8, ptr %call, i32 %conv.i
  br i1 %cmp4.i, label %if.end3.i.resident_data_ex.exit.thread_crit_edge, label %resident_data_ex.exit

if.end3.i.resident_data_ex.exit.thread_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %resident_data_ex.exit.thread

resident_data_ex.exit.thread:                     ; preds = %if.end3.i.resident_data_ex.exit.thread_crit_edge, %if.end.i84.resident_data_ex.exit.thread_crit_edge, %if.end.resident_data_ex.exit.thread_crit_edge
  %17 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %info, align 4
  br label %cleanup43

resident_data_ex.exit:                            ; preds = %if.end3.i
  %18 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr.i, ptr %info, align 4
  %tobool5.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool5.not, label %resident_data_ex.exit.cleanup43_crit_edge, label %if.end7

resident_data_ex.exit.cleanup43_crit_edge:        ; preds = %resident_data_ex.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup43

if.end7:                                          ; preds = %resident_data_ex.exit
  %size8 = getelementptr inbounds %struct.EA_INFO, ptr %add.ptr.i, i32 0, i32 2
  %19 = ptrtoint ptr %size8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %size8, align 4
  %21 = call i32 @llvm.bswap.i32(i32 %20)
  %ea_max_size = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 24
  %22 = ptrtoint ptr %ea_max_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ea_max_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp = icmp ugt i32 %21, %23
  br i1 %cmp, label %if.end7.cleanup43_crit_edge, label %if.end10

if.end7.cleanup43_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup43

if.end10:                                         ; preds = %if.end7
  %non_res.i85 = getelementptr inbounds %struct.ATTRIB, ptr %call2, i32 0, i32 2
  %24 = ptrtoint ptr %non_res.i85 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %non_res.i85, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i86 = icmp eq i8 %25, 0
  br i1 %tobool.not.i86, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %data_size.i = getelementptr inbounds %struct.ATTRIB, ptr %call2, i32 0, i32 7, i32 0, i32 6
  %26 = ptrtoint ptr %data_size.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %data_size.i, align 8
  %28 = call i64 @llvm.bswap.i64(i64 %27) #10
  br label %attr_size.exit

cond.false.i:                                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %29 = getelementptr inbounds %struct.ATTRIB, ptr %call2, i32 0, i32 7
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 8
  %32 = call i32 @llvm.bswap.i32(i32 %31) #10
  %conv2.i = zext i32 %32 to i64
  br label %attr_size.exit

attr_size.exit:                                   ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i64 [ %28, %cond.true.i ], [ %conv2.i, %cond.false.i ]
  %conv = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %cond.i, i64 %conv)
  %cmp13 = icmp ugt i64 %cond.i, %conv
  br i1 %cmp13, label %attr_size.exit.cleanup43_crit_edge, label %if.end8.i

attr_size.exit.cleanup43_crit_edge:               ; preds = %attr_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup43

if.end8.i:                                        ; preds = %attr_size.exit
  %add = add i32 %21, %add_bytes
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3136) #13
  %tobool18.not = icmp eq ptr %call9.i, null
  br i1 %tobool18.not, label %if.end8.i.cleanup43_crit_edge, label %if.end20

if.end8.i.cleanup43_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup43

if.end20:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool21.not = icmp eq i32 %20, 0
  br i1 %tobool21.not, label %if.end20.if.end42_crit_edge, label %if.else

if.end20.if.end42_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.else:                                          ; preds = %if.end20
  %33 = ptrtoint ptr %non_res.i85 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %non_res.i85, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool23.not = icmp eq i8 %34, 0
  br i1 %tobool23.not, label %if.end.i94, label %if.then24

if.then24:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %run) #10
  %35 = getelementptr inbounds %struct.runs_tree, ptr %run, i32 0, i32 1
  %36 = getelementptr inbounds %struct.runs_tree, ptr %run, i32 0, i32 2
  %37 = ptrtoint ptr %run to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %run, align 4
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %35, align 4
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %36, align 4
  %call25 = call i32 @attr_load_runs(ptr noundef nonnull %call2, ptr noundef %ni, ptr noundef nonnull %run, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then27, label %if.then24.if.end29_crit_edge

if.then24.if.end29_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then27:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  %call28 = call i32 @ntfs_read_run_nb(ptr noundef %1, ptr noundef nonnull %run, i64 noundef 0, ptr noundef nonnull %call9.i, i32 noundef %21, ptr noundef null) #10
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.then24.if.end29_crit_edge
  %err.0 = phi i32 [ %call25, %if.then24.if.end29_crit_edge ], [ %call28, %if.then27 ]
  %40 = ptrtoint ptr %run to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %run, align 4
  call void @kvfree(ptr noundef %41) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool30.not = icmp eq i32 %err.0, 0
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %run) #10
  br i1 %tobool30.not, label %if.end29.if.end42_crit_edge, label %if.end29.out_crit_edge

if.end29.out_crit_edge:                           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end29.if.end42_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.end.i94:                                       ; preds = %if.else
  %size.i89 = getelementptr inbounds %struct.ATTRIB, ptr %call2, i32 0, i32 1
  %42 = ptrtoint ptr %size.i89 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %size.i89, align 4
  %44 = call i32 @llvm.bswap.i32(i32 %43) #10
  %45 = getelementptr inbounds %struct.ATTRIB, ptr %call2, i32 0, i32 7
  %data_off.i90 = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %data_off.i90 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %data_off.i90, align 4
  %48 = call i16 @llvm.bswap.i16(i16 %47) #10
  %conv.i91 = zext i16 %48 to i32
  %add.i92 = add i32 %21, %conv.i91
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %add.i92)
  %cmp.i93 = icmp ult i32 %44, %add.i92
  br i1 %cmp.i93, label %if.end.i94.out_crit_edge, label %if.end3.i98

if.end.i94.out_crit_edge:                         ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end3.i98:                                      ; preds = %if.end.i94
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %45, align 8
  %51 = call i32 @llvm.bswap.i32(i32 %50) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %21)
  %cmp4.i95 = icmp ult i32 %51, %21
  %add.ptr.i96 = getelementptr i8, ptr %call2, i32 %conv.i91
  %tobool35.not = icmp eq ptr %add.ptr.i96, null
  %or.cond115 = select i1 %cmp4.i95, i1 true, i1 %tobool35.not
  br i1 %or.cond115, label %if.end3.i98.out_crit_edge, label %cleanup38

if.end3.i98.out_crit_edge:                        ; preds = %if.end3.i98
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

cleanup38:                                        ; preds = %if.end3.i98
  call void @__sanitizer_cov_trace_pc() #12
  %52 = call ptr @memcpy(ptr %call9.i, ptr %add.ptr.i96, i32 %21)
  br label %if.end42

if.end42:                                         ; preds = %cleanup38, %if.end29.if.end42_crit_edge, %if.end20.if.end42_crit_edge
  %add.ptr = getelementptr i8, ptr %call9.i, i32 %21
  %53 = call ptr @memset(ptr %add.ptr, i32 0, i32 %add_bytes)
  %54 = ptrtoint ptr %ea to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call9.i, ptr %ea, align 4
  br label %cleanup43

out:                                              ; preds = %if.end3.i98.out_crit_edge, %if.end.i94.out_crit_edge, %if.end29.out_crit_edge
  %err.2 = phi i32 [ %err.0, %if.end29.out_crit_edge ], [ -22, %if.end.i94.out_crit_edge ], [ -22, %if.end3.i98.out_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i) #10
  %55 = ptrtoint ptr %ea to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %ea, align 4
  br label %cleanup43

cleanup43:                                        ; preds = %out, %if.end42, %if.end8.i.cleanup43_crit_edge, %attr_size.exit.cleanup43_crit_edge, %if.end7.cleanup43_crit_edge, %resident_data_ex.exit.cleanup43_crit_edge, %resident_data_ex.exit.thread, %entry.cleanup43_crit_edge
  %retval.0 = phi i32 [ %err.2, %out ], [ 0, %if.end42 ], [ 0, %entry.cleanup43_crit_edge ], [ -22, %resident_data_ex.exit.cleanup43_crit_edge ], [ -27, %if.end7.cleanup43_crit_edge ], [ -27, %attr_size.exit.cleanup43_crit_edge ], [ -12, %if.end8.i.cleanup43_crit_edge ], [ -22, %resident_data_ex.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %le) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ni_find_attr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @attr_load_runs(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_read_run_nb(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntfs_inode_printk(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ni_insert_resident(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @attr_set_size(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i64 noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ni_remove_attr_le(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_sb_write_run(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ntfs_xattr_user_list(ptr nocapture noundef readnone %dentry) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntfs_getxattr(ptr nocapture noundef readnone %handler, ptr nocapture noundef readnone %de, ptr noundef %inode, ptr nocapture noundef readonly %name, ptr noundef %buffer, i32 noundef %size) #0 align 64 {
entry:
  %sd = alloca ptr, align 4
  %sd_size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @strlen(ptr noundef %name) #15
  %0 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %call1, label %entry.if.end62_crit_edge [
    i32 17, label %land.lhs.true
    i32 18, label %land.lhs.true12
    i32 20, label %land.lhs.true29
  ]

entry.if.end62_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

land.lhs.true:                                    ; preds = %entry
  %bcmp93 = tail call i32 @bcmp(ptr noundef dereferenceable(18) %name, ptr noundef nonnull dereferenceable(18) @.str.8, i32 18) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp93)
  %tobool.not = icmp eq i32 %bcmp93, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end62_crit_edge

land.lhs.true.if.end62_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

if.then:                                          ; preds = %land.lhs.true
  %tobool3.not = icmp eq ptr %buffer, null
  br i1 %tobool3.not, label %if.then.cleanup64_crit_edge, label %if.else

if.then.cleanup64_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup64

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp5 = icmp eq i32 %size, 0
  br i1 %cmp5, label %if.else.cleanup64_crit_edge, label %if.else7

if.else.cleanup64_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup64

if.else7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %std_fa = getelementptr i8, ptr %inode, i32 -172
  %1 = ptrtoint ptr %std_fa to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %std_fa, align 4
  %3 = lshr i32 %2, 24
  %conv = trunc i32 %3 to i8
  %4 = ptrtoint ptr %buffer to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %buffer, align 1
  br label %cleanup64

land.lhs.true12:                                  ; preds = %entry
  %bcmp92 = tail call i32 @bcmp(ptr noundef dereferenceable(19) %name, ptr noundef nonnull dereferenceable(19) @.str.9, i32 19) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp92)
  %tobool14.not = icmp eq i32 %bcmp92, 0
  br i1 %tobool14.not, label %if.then15, label %land.lhs.true12.if.end62_crit_edge

land.lhs.true12.if.end62_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

if.then15:                                        ; preds = %land.lhs.true12
  %tobool16.not = icmp eq ptr %buffer, null
  br i1 %tobool16.not, label %if.then15.cleanup64_crit_edge, label %if.else18

if.then15.cleanup64_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup64

if.else18:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp19 = icmp ult i32 %size, 4
  br i1 %cmp19, label %if.else18.cleanup64_crit_edge, label %if.else22

if.else18.cleanup64_crit_edge:                    ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup64

if.else22:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #12
  %std_fa23 = getelementptr i8, ptr %inode, i32 -172
  %5 = ptrtoint ptr %std_fa23 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %std_fa23, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %buffer, align 4
  br label %cleanup64

land.lhs.true29:                                  ; preds = %entry
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(21) %name, ptr noundef nonnull dereferenceable(21) @.str.10, i32 21) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool31.not = icmp eq i32 %bcmp, 0
  br i1 %tobool31.not, label %if.then32, label %land.lhs.true29.if.end62_crit_edge

land.lhs.true29.if.end62_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

if.then32:                                        ; preds = %land.lhs.true29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sd) #10
  %9 = ptrtoint ptr %sd to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %sd, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sd_size) #10
  %10 = ptrtoint ptr %sd_size to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %sd_size, align 4
  %sbi = getelementptr i8, ptr %inode, i32 -348
  %11 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sbi, align 4
  %major_ver.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %12, i32 0, i32 29, i32 5
  %13 = ptrtoint ptr %major_ver.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %major_ver.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %14)
  %cmp.i = icmp ugt i8 %14, 2
  br i1 %cmp.i, label %if.else35, label %if.then32.cleanup_crit_edge

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else35:                                        ; preds = %if.then32
  %std_security_id = getelementptr i8, ptr %inode, i32 -168
  %15 = ptrtoint ptr %std_security_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %std_security_id, align 8
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %17)
  %cmp36 = icmp ult i32 %17, 256
  br i1 %cmp36, label %if.else35.cleanup_crit_edge, label %if.end40

if.else35.cleanup_crit_edge:                      ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end40:                                         ; preds = %if.else35
  %call44 = call i32 @ntfs_get_security_by_id(ptr noundef %12, i32 noundef %16, ptr noundef nonnull %sd, ptr noundef nonnull %sd_size) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end47:                                         ; preds = %if.end40
  %18 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sd, align 4
  %20 = ptrtoint ptr %sd_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sd_size, align 4
  %call48 = call zeroext i1 @is_sd_valid(ptr noundef %19, i32 noundef %21) #10
  br i1 %call48, label %if.end47.if.end51_crit_edge, label %if.then49

if.end47.if.end51_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.then49:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %std_security_id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %std_security_id, align 8
  call void (ptr, ptr, ...) @ntfs_inode_printk(ptr noundef %inode, ptr noundef nonnull @.str.11, i32 noundef %23) #10
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.end47.if.end51_crit_edge
  %tobool52.not = icmp eq ptr %buffer, null
  %24 = ptrtoint ptr %sd_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sd_size, align 4
  br i1 %tobool52.not, label %if.end51.if.end60_crit_edge, label %if.else54

if.end51.if.end60_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.else54:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %size)
  %cmp55 = icmp ugt i32 %25, %size
  br i1 %cmp55, label %if.else54.if.end60_crit_edge, label %if.else58

if.else54.if.end60_crit_edge:                     ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.else58:                                        ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sd, align 4
  %28 = call ptr @memcpy(ptr %buffer, ptr %27, i32 %25)
  br label %if.end60

if.end60:                                         ; preds = %if.else58, %if.else54.if.end60_crit_edge, %if.end51.if.end60_crit_edge
  %err.0 = phi i32 [ %25, %if.else58 ], [ -61, %if.else54.if.end60_crit_edge ], [ %25, %if.end51.if.end60_crit_edge ]
  %29 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sd, align 4
  call void @kfree(ptr noundef %30) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %if.end40.cleanup_crit_edge, %if.else35.cleanup_crit_edge, %if.then32.cleanup_crit_edge
  %err.1 = phi i32 [ %err.0, %if.end60 ], [ -22, %if.then32.cleanup_crit_edge ], [ -2, %if.else35.cleanup_crit_edge ], [ %call44, %if.end40.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sd_size) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sd) #10
  br label %cleanup64

if.end62:                                         ; preds = %land.lhs.true29.if.end62_crit_edge, %land.lhs.true12.if.end62_crit_edge, %land.lhs.true.if.end62_crit_edge, %entry.if.end62_crit_edge
  %call63 = tail call fastcc i32 @ntfs_get_ea(ptr noundef %inode, ptr noundef %name, i32 noundef %call1, ptr noundef %buffer, i32 noundef %size, ptr noundef null)
  br label %cleanup64

cleanup64:                                        ; preds = %if.end62, %cleanup, %if.else22, %if.else18.cleanup64_crit_edge, %if.then15.cleanup64_crit_edge, %if.else7, %if.else.cleanup64_crit_edge, %if.then.cleanup64_crit_edge
  %err.2 = phi i32 [ %call63, %if.end62 ], [ %err.1, %cleanup ], [ 4, %if.else22 ], [ 1, %if.else7 ], [ 1, %if.then.cleanup64_crit_edge ], [ -61, %if.else.cleanup64_crit_edge ], [ 4, %if.then15.cleanup64_crit_edge ], [ -61, %if.else18.cleanup64_crit_edge ]
  ret i32 %err.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntfs_setxattr(ptr nocapture noundef readnone %handler, ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readnone %de, ptr noundef %inode, ptr nocapture noundef readonly %name, ptr noundef %value, i32 noundef %size, i32 noundef %flags) #1 align 64 {
entry:
  %security_id = alloca i32, align 4
  %inserted = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -360
  %call1 = tail call i32 @strlen(ptr noundef %name) #15
  %0 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %call1, label %entry.if.end86_crit_edge [
    i32 17, label %land.lhs.true
    i32 18, label %land.lhs.true8
    i32 20, label %land.lhs.true54
  ]

entry.if.end86_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86

land.lhs.true:                                    ; preds = %entry
  %bcmp137 = tail call i32 @bcmp(ptr noundef dereferenceable(18) %name, ptr noundef nonnull dereferenceable(18) @.str.8, i32 18) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp137)
  %tobool.not = icmp eq i32 %bcmp137, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end86_crit_edge

land.lhs.true.if.end86_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %size)
  %cmp3.not = icmp eq i32 %size, 1
  br i1 %cmp3.not, label %if.end, label %if.then.cleanup88_crit_edge

if.then.cleanup88_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup88

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %value, align 1
  %conv = zext i8 %2 to i32
  %3 = shl nuw i32 %conv, 24
  br label %set_new_fa

land.lhs.true8:                                   ; preds = %entry
  %bcmp136 = tail call i32 @bcmp(ptr noundef dereferenceable(19) %name, ptr noundef nonnull dereferenceable(19) @.str.9, i32 19) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp136)
  %tobool10.not = icmp eq i32 %bcmp136, 0
  br i1 %tobool10.not, label %if.then11, label %land.lhs.true8.if.end86_crit_edge

land.lhs.true8.if.end86_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86

if.then11:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp12.not = icmp eq i32 %size, 4
  br i1 %cmp12.not, label %if.end15, label %if.then11.cleanup88_crit_edge

if.then11.cleanup88_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup88

if.end15:                                         ; preds = %if.then11
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %inode, align 8
  %9 = and i16 %8, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %9)
  %cmp17 = icmp eq i16 %9, -32768
  br i1 %cmp17, label %if.then19, label %if.end15.set_new_fa_crit_edge

if.end15.set_new_fa_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %set_new_fa

if.then19:                                        ; preds = %if.end15
  %ni_lock.i = getelementptr i8, ptr %inode, i32 -264
  tail call void @mutex_lock_nested(ptr noundef %ni_lock.i, i32 noundef 4) #10
  %call20 = tail call i32 @ni_new_attr_flags(ptr noundef %add.ptr.i, i32 noundef %6) #10
  tail call void @mutex_unlock(ptr noundef %ni_lock.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then19.set_new_fa_crit_edge, label %if.then19.cleanup88_crit_edge

if.then19.cleanup88_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup88

if.then19.set_new_fa_crit_edge:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %set_new_fa

set_new_fa:                                       ; preds = %if.then19.set_new_fa_crit_edge, %if.end15.set_new_fa_crit_edge, %if.end
  %new_fa.0 = phi i32 [ %6, %if.then19.set_new_fa_crit_edge ], [ %6, %if.end15.set_new_fa_crit_edge ], [ %3, %if.end ]
  %10 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %inode, align 8
  %12 = and i16 %11, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %12)
  %cmp28 = icmp eq i16 %12, 16384
  %and31 = and i32 %new_fa.0, -17
  %masksel = select i1 %cmp28, i32 16, i32 0
  %new_fa.1 = or i32 %masksel, %and31
  %std_fa = getelementptr i8, ptr %inode, i32 -172
  %13 = ptrtoint ptr %std_fa to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %std_fa, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %new_fa.1)
  %cmp33.not = icmp eq i32 %14, %new_fa.1
  br i1 %cmp33.not, label %set_new_fa.cleanup88_crit_edge, label %if.then35

set_new_fa.cleanup88_crit_edge:                   ; preds = %set_new_fa
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup88

if.then35:                                        ; preds = %set_new_fa
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %std_fa to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %new_fa.1, ptr %std_fa, align 4
  %and37 = and i32 %new_fa.0, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  %16 = and i16 %11, -147
  %masksel141 = select i1 %tobool38.not, i16 146, i16 0
  %storemerge = or i16 %masksel141, %16
  %17 = ptrtoint ptr %inode to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %storemerge, ptr %inode, align 8
  %dirty = getelementptr i8, ptr %inode, i32 -292
  %18 = ptrtoint ptr %dirty to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %dirty, align 4
  tail call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #10
  br label %cleanup88

land.lhs.true54:                                  ; preds = %entry
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(21) %name, ptr noundef nonnull dereferenceable(21) @.str.10, i32 21) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool56.not = icmp eq i32 %bcmp, 0
  br i1 %tobool56.not, label %if.then57, label %land.lhs.true54.if.end86_crit_edge

land.lhs.true54.if.end86_crit_edge:               ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86

if.then57:                                        ; preds = %land.lhs.true54
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %security_id) #10
  %19 = ptrtoint ptr %security_id to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %security_id, align 4, !annotation !39
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %inserted) #10
  %20 = ptrtoint ptr %inserted to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -1, ptr %inserted, align 1, !annotation !39
  %sbi = getelementptr i8, ptr %inode, i32 -348
  %21 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sbi, align 4
  %major_ver.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %22, i32 0, i32 29, i32 5
  %23 = ptrtoint ptr %major_ver.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %major_ver.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %24)
  %cmp.i = icmp ugt i8 %24, 2
  br i1 %cmp.i, label %if.end61, label %if.then57.cleanup_crit_edge

if.then57.cleanup_crit_edge:                      ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end61:                                         ; preds = %if.then57
  %call62 = tail call zeroext i1 @is_sd_valid(ptr noundef %value, i32 noundef %size) #10
  br i1 %call62, label %if.end64, label %if.then63

if.then63:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ntfs_inode_printk(ptr noundef %inode, ptr noundef nonnull @.str.12) #10
  br label %cleanup

if.end64:                                         ; preds = %if.end61
  %25 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sbi, align 4
  %call67 = call i32 @ntfs_insert_security(ptr noundef %26, ptr noundef %value, i32 noundef %size, ptr noundef nonnull %security_id, ptr noundef nonnull %inserted) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end70, label %if.end64.cleanup_crit_edge

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end70:                                         ; preds = %if.end64
  %ni_lock.i139 = getelementptr i8, ptr %inode, i32 -264
  call void @mutex_lock_nested(ptr noundef %ni_lock.i139, i32 noundef 4) #10
  %call71 = call ptr @ni_std5(ptr noundef %add.ptr.i) #10
  %tobool72.not = icmp eq ptr %call71, null
  br i1 %tobool72.not, label %if.end70.if.end83_crit_edge, label %if.else74

if.end70.if.end83_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83

if.else74:                                        ; preds = %if.end70
  %security_id75 = getelementptr inbounds %struct.ATTR_STD_INFO5, ptr %call71, i32 0, i32 9
  %27 = ptrtoint ptr %security_id75 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %security_id75, align 4
  %29 = ptrtoint ptr %security_id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %security_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp76.not = icmp eq i32 %28, %30
  br i1 %cmp76.not, label %if.else74.if.end83_crit_edge, label %if.then78

if.else74.if.end83_crit_edge:                     ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83

if.then78:                                        ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #12
  %std_security_id = getelementptr i8, ptr %inode, i32 -168
  %31 = ptrtoint ptr %std_security_id to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %std_security_id, align 8
  %32 = ptrtoint ptr %security_id75 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %30, ptr %security_id75, align 4
  %dirty81 = getelementptr i8, ptr %inode, i32 -292
  %33 = ptrtoint ptr %dirty81 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %dirty81, align 4
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #10
  br label %if.end83

if.end83:                                         ; preds = %if.then78, %if.else74.if.end83_crit_edge, %if.end70.if.end83_crit_edge
  %err.0 = phi i32 [ 0, %if.then78 ], [ 0, %if.else74.if.end83_crit_edge ], [ -22, %if.end70.if.end83_crit_edge ]
  call void @mutex_unlock(ptr noundef %ni_lock.i139) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end83, %if.end64.cleanup_crit_edge, %if.then63, %if.then57.cleanup_crit_edge
  %err.1 = phi i32 [ %err.0, %if.end83 ], [ -22, %if.then63 ], [ -22, %if.then57.cleanup_crit_edge ], [ %call67, %if.end64.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %inserted) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %security_id) #10
  br label %cleanup88

if.end86:                                         ; preds = %land.lhs.true54.if.end86_crit_edge, %land.lhs.true8.if.end86_crit_edge, %land.lhs.true.if.end86_crit_edge, %entry.if.end86_crit_edge
  %call87 = tail call fastcc i32 @ntfs_set_ea(ptr noundef %inode, ptr noundef %name, i32 noundef %call1, ptr noundef %value, i32 noundef %size, i32 noundef %flags)
  br label %cleanup88

cleanup88:                                        ; preds = %if.end86, %cleanup, %if.then35, %set_new_fa.cleanup88_crit_edge, %if.then19.cleanup88_crit_edge, %if.then11.cleanup88_crit_edge, %if.then.cleanup88_crit_edge
  %err.2 = phi i32 [ %call87, %if.end86 ], [ %err.1, %cleanup ], [ -22, %if.then11.cleanup88_crit_edge ], [ %call20, %if.then19.cleanup88_crit_edge ], [ -22, %if.then.cleanup88_crit_edge ], [ 0, %if.then35 ], [ 0, %set_new_fa.cleanup88_crit_edge ]
  ret i32 %err.2
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_get_security_by_id(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_sd_valid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ni_new_attr_flags(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_insert_security(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ni_std5(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nobuiltin nounwind }
attributes #15 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ntfs3/xattr.c", i32 919, i32 27}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/ntfs3/xattr.c", i32 925, i32 27}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/ntfs3/xattr.c", i32 931, i32 27}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/ntfs3/xattr.c", i32 938, i32 28}
!8 = !{ptr @ntfs_xattr_handlers, !9, !"ntfs_xattr_handlers", i1 false, i1 false}
!9 = !{!"../fs/ntfs3/xattr.c", i32 991, i32 29}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/ntfs3/xattr.c", i32 498, i32 10}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/ntfs3/xattr.c", i32 501, i32 10}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/ntfs3/xattr.c", i32 381, i32 3}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/ntfs3/xattr.c", i32 985, i32 12}
!18 = !{ptr @ntfs_xattr_handler, !19, !"ntfs_xattr_handler", i1 false, i1 false}
!19 = !{!"../fs/ntfs3/xattr.c", i32 984, i32 35}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/ntfs3/xattr.c", i32 721, i32 20}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/ntfs3/xattr.c", i32 735, i32 20}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/ntfs3/xattr.c", i32 749, i32 20}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/ntfs3/xattr.c", i32 770, i32 4}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/ntfs3/xattr.c", i32 875, i32 4}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{!"auto-init"}
!40 = !{i64 2148760920}
!41 = !{i64 2148675360, i64 2148675392, i64 2148675421, i64 2148675455, i64 2148675486, i64 2148675509}
!42 = !{!"branch_weights", i32 2000, i32 1}
!43 = !{i64 2150382009}
