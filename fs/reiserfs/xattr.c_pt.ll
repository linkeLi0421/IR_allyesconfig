; ModuleID = '/llk/IR_all_yes/fs/reiserfs/xattr.c_pt.bc'
source_filename = "../fs/reiserfs/xattr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.8 }
%union.anon.8 = type { [5 x %struct.uid_gid_extent] }
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
%struct.ctl_table_header = type { %union.anon.18, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.xattr_handler = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.78 }
%union.anon.78 = type { i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.69, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.70, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.71, ptr, %struct.address_space, %struct.list_head, %union.anon.72, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.69 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.70 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.71 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.72 = type { ptr }
%struct.reiserfs_dentry_buf = type { %struct.dir_context, ptr, i32, i32, [8 x ptr] }
%struct.dir_context = type { ptr, i64 }
%struct.reiserfs_transaction_handle = type { ptr, i32, i32, i32, i32, ptr, i8, %struct.list_head }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.67, %struct.list_head, %struct.list_head, %union.anon.68 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.lockref = type { %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.spinlock, i32 }
%union.anon.67 = type { %struct.list_head }
%union.anon.68 = type { %struct.hlist_node }
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
%struct.reiserfs_sb_info = type { ptr, ptr, ptr, ptr, i16, %struct.mutex, ptr, i32, ptr, ptr, ptr, i32, %struct.anon.75, %struct.wait_queue_head, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.reiserfs_proc_info_data, ptr, i32, %struct.spinlock, ptr, ptr, i32, i32, %struct.delayed_work, %struct.spinlock, [2 x ptr], i32, ptr, ptr }
%struct.anon.75 = type { i32, i32, i32, i32, i32 }
%struct.reiserfs_proc_info_data = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], i32, %struct.__scan_bitmap_stats, %struct.__journal_stats }
%struct.__scan_bitmap_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.__journal_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.page = type { i32, %union.anon.27, %union.anon.41, %struct.atomic_t, i32 }
%union.anon.27 = type { %struct.anon.28 }
%struct.anon.28 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.41 = type { %struct.atomic_t }
%struct.reiserfs_xattr_header = type { i32, i32 }
%struct.listxattr_buf = type { %struct.dir_context, i32, i32, ptr, ptr }

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"jdm-20004\00", [22 x i8] zeroinitializer }, align 32
@__func__.reiserfs_delete_xattrs = private unnamed_addr constant [23 x i8] c"reiserfs_delete_xattrs\00", align 1
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Couldn't delete all xattrs (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"jdm-20007\00", [22 x i8] zeroinitializer }, align 32
@__func__.reiserfs_chown_xattrs = private unnamed_addr constant [22 x i8] c"reiserfs_chown_xattrs\00", align 1
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Couldn't chown all xattrs (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"jdm-20001\00", [22 x i8] zeroinitializer }, align 32
@__func__.reiserfs_xattr_get = private unnamed_addr constant [19 x i8] c"reiserfs_xattr_get\00", align 1
@.str.5 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Invalid magic for xattr (%s) associated with %k\00", [48 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"jdm-20002\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Invalid hash for xattr (%s) associated with %k\00", [49 x i8] zeroinitializer }, align 32
@reiserfs_xattr_user_handler = external dso_local constant %struct.xattr_handler, align 4
@reiserfs_xattr_trusted_handler = external dso_local constant %struct.xattr_handler, align 4
@reiserfs_xattr_security_handler = external dso_local constant %struct.xattr_handler, align 4
@posix_acl_access_xattr_handler = external dso_local constant %struct.xattr_handler, align 4
@posix_acl_default_xattr_handler = external dso_local constant %struct.xattr_handler, align 4
@reiserfs_xattr_handlers = dso_local global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @reiserfs_xattr_user_handler, ptr @reiserfs_xattr_trusted_handler, ptr @reiserfs_xattr_security_handler, ptr @posix_acl_access_xattr_handler, ptr @posix_acl_default_xattr_handler, ptr null], [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c".reiserfs_priv\00", [17 x i8] zeroinitializer }, align 32
@xattr_lookup_poison_ops = internal constant %struct.dentry_operations { ptr @xattr_hide_revalidate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [76 x i8] undef }, align 128
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"xattrs\00", [25 x i8] zeroinitializer }, align 32
@__const.reiserfs_for_each_xattr.buf = private unnamed_addr constant { { ptr, [4 x i8], i64 }, ptr, i32, i32, [8 x ptr], [4 x i8] } { { ptr, [4 x i8], i64 } { ptr @fill_with_dentries, [4 x i8] zeroinitializer, i64 0 }, ptr null, i32 0, i32 0, [8 x ptr] zeroinitializer, [4 x i8] zeroinitializer }, align 8
@fill_with_dentries.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fs/reiserfs/xattr.c\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"xattr-20003\00", [20 x i8] zeroinitializer }, align 32
@__func__.fill_with_dentries = private unnamed_addr constant [19 x i8] c"fill_with_dentries\00", align 1
@.str.12 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Corrupted directory: xattr %pd listed but not found for file %pd.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@.str.14 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/pagemap.h\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%X.%X\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"jdm-2005\00", [23 x i8] zeroinitializer }, align 32
@__func__.xattr_mount_check = private unnamed_addr constant [18 x i8] c"xattr_mount_check\00", align 1
@.str.21 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"xattrs/ACLs not supported on pre-v3.6 format filesystems. Failing mount.\00", [55 x i8] zeroinitializer }, align 32
@create_privroot.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"jdm-20006\00", [22 x i8] zeroinitializer }, align 32
@__func__.create_privroot = private unnamed_addr constant [16 x i8] c"create_privroot\00", align 1
@.str.23 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"xattrs/ACLs enabled and couldn't find/create .reiserfs_priv. Failing mount.\00", [52 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Created %s - reserved for xattr storage.\0A\00", [54 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967201, i64 4294967235]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 367, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 378, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 732, i32 5 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 752, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [24 x i8] c"reiserfs_xattr_handlers\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 913, i32 29 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 980, i32 26 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 1021, i32 28 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 200, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 215, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 44, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 416, i32 1 }
@___asan_gen_.76 = private unnamed_addr constant [27 x i8] c"../include/linux/pagemap.h\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 788, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 260, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 717, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 156, i32 37 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 940, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 891, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.100 = private constant [23 x i8] c"../fs/reiserfs/xattr.c\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 900, i32 30 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @reiserfs_xattr_handlers, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reiserfs_xattr_handlers to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @reiserfs_delete_xattrs(ptr nocapture noundef readonly %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @reiserfs_for_each_xattr(ptr noundef %inode, ptr noundef nonnull @delete_one_xattr, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.reiserfs_delete_xattrs, ptr noundef nonnull @.str.1, i32 noundef %call) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @reiserfs_for_each_xattr(ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %action, ptr noundef %data) unnamed_addr #0 align 64 {
entry:
  %buf = alloca %struct.reiserfs_dentry_buf, align 8
  %th = alloca %struct.reiserfs_transaction_handle, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #10
  %0 = call ptr @memcpy(ptr %buf, ptr @__const.reiserfs_for_each_xattr.buf, i32 64)
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %1 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %i_flags, align 4
  %and = and i32 %2, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %i_flags1 = getelementptr i8, ptr %inode, i32 -248
  %3 = ptrtoint ptr %i_flags1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %i_flags1, align 8
  %5 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call4 = tail call fastcc ptr @open_xa_dir(ptr noundef %inode, i32 noundef 2)
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %call4 to i32
  br label %out

if.else:                                          ; preds = %if.end
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %call4, i32 0, i32 5
  %7 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %d_inode.i, align 8
  %cmp.i111 = icmp eq ptr %8, null
  br i1 %cmp.i111, label %if.else.out_dir_crit_edge, label %if.end11

if.else.out_dir_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_dir

if.end11:                                         ; preds = %if.else
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 25
  tail call void @down_write_nested(ptr noundef %i_rwsem.i, i32 noundef 3) #10
  %xadir = getelementptr inbounds %struct.reiserfs_dentry_buf, ptr %buf, i32 0, i32 1
  %9 = ptrtoint ptr %xadir to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call4, ptr %xadir, align 8
  %10 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d_inode.i, align 8
  %call14124 = call i32 @reiserfs_readdir_inode(ptr noundef %11, ptr noundef nonnull %buf) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14124)
  %tobool15.not125 = icmp eq i32 %call14124, 0
  br i1 %tobool15.not125, label %if.end17.lr.ph, label %if.end11.while.end_crit_edge

if.end11.while.end_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end17.lr.ph:                                   ; preds = %if.end11
  %err18 = getelementptr inbounds %struct.reiserfs_dentry_buf, ptr %buf, i32 0, i32 3
  %count = getelementptr inbounds %struct.reiserfs_dentry_buf, ptr %buf, i32 0, i32 2
  br label %if.end17

if.end17:                                         ; preds = %if.end40.if.end17_crit_edge, %if.end17.lr.ph
  %12 = ptrtoint ptr %err18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %err18, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool19.not = icmp eq i32 %13, 0
  br i1 %tobool19.not, label %if.end22, label %if.end17.while.end_crit_edge

if.end17.while.end_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end22:                                         ; preds = %if.end17
  %14 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool23.not = icmp eq i32 %15, 0
  br i1 %tobool23.not, label %if.end22.while.end_crit_edge, label %if.end22.land.lhs.true_crit_edge

if.end22.land.lhs.true_crit_edge:                 ; preds = %if.end22
  br label %land.lhs.true

if.end22.while.end_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.lhs.true:                                    ; preds = %if.end35.land.lhs.true_crit_edge, %if.end22.land.lhs.true_crit_edge
  %i.0123 = phi i32 [ %inc, %if.end35.land.lhs.true_crit_edge ], [ 0, %if.end22.land.lhs.true_crit_edge ]
  %16 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0123, i32 %17)
  %cmp28 = icmp slt i32 %i.0123, %17
  br i1 %cmp28, label %land.rhs, label %land.lhs.true.if.end40_crit_edge

land.lhs.true.if.end40_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

land.rhs:                                         ; preds = %land.lhs.true
  %arrayidx = getelementptr %struct.reiserfs_dentry_buf, ptr %buf, i32 0, i32 4, i32 %i.0123
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %tobool29.not = icmp eq ptr %19, null
  br i1 %tobool29.not, label %land.rhs.if.end40_crit_edge, label %for.body

land.rhs.if.end40_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

for.body:                                         ; preds = %land.rhs
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 8
  %22 = and i32 %21, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %22)
  %23 = icmp eq i32 %22, 2097152
  br i1 %23, label %for.body.if.end35_crit_edge, label %if.then33

for.body.if.end35_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then33:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %call34 = call i32 %action(ptr noundef nonnull %19, ptr noundef %data) #10, !callees !65
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %for.body.if.end35_crit_edge
  %err.1 = phi i32 [ 0, %for.body.if.end35_crit_edge ], [ %call34, %if.then33 ]
  call void @dput(ptr noundef nonnull %19) #10
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.0123, 1
  %tobool26.not = icmp eq i32 %err.1, 0
  br i1 %tobool26.not, label %if.end35.land.lhs.true_crit_edge, label %if.end35.while.end_crit_edge

if.end35.while.end_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end35.land.lhs.true_crit_edge:                 ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

if.end40:                                         ; preds = %land.rhs.if.end40_crit_edge, %land.lhs.true.if.end40_crit_edge
  %25 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %count, align 4
  %26 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %d_inode.i, align 8
  %call14 = call i32 @reiserfs_readdir_inode(ptr noundef %27, ptr noundef nonnull %buf) #10
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end40.if.end17_crit_edge, label %if.end40.while.end_crit_edge

if.end40.while.end_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end40.if.end17_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

while.end:                                        ; preds = %if.end40.while.end_crit_edge, %if.end35.while.end_crit_edge, %if.end22.while.end_crit_edge, %if.end17.while.end_crit_edge, %if.end11.while.end_crit_edge
  %err.2 = phi i32 [ %call14124, %if.end11.while.end_crit_edge ], [ %err.1, %if.end35.while.end_crit_edge ], [ %call14, %if.end40.while.end_crit_edge ], [ 0, %if.end22.while.end_crit_edge ], [ %13, %if.end17.while.end_crit_edge ]
  %28 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i115 = getelementptr inbounds %struct.inode, ptr %29, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i115) #10
  %count.i = getelementptr inbounds %struct.reiserfs_dentry_buf, ptr %buf, i32 0, i32 2
  %30 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp8.i = icmp sgt i32 %31, 0
  br i1 %cmp8.i, label %while.end.for.body.i_crit_edge, label %while.end.cleanup_dentry_buf.exit_crit_edge

while.end.cleanup_dentry_buf.exit_crit_edge:      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup_dentry_buf.exit

while.end.for.body.i_crit_edge:                   ; preds = %while.end
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %while.end.for.body.i_crit_edge
  %i.09.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %while.end.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.reiserfs_dentry_buf, ptr %buf, i32 0, i32 4, i32 %i.09.i
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %33, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @dput(ptr noundef nonnull %33) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %34 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %count.i, align 4
  %cmp.i116 = icmp slt i32 %inc.i, %35
  br i1 %cmp.i116, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.cleanup_dentry_buf.exit_crit_edge

for.inc.i.cleanup_dentry_buf.exit_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup_dentry_buf.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

cleanup_dentry_buf.exit:                          ; preds = %for.inc.i.cleanup_dentry_buf.exit_crit_edge, %while.end.cleanup_dentry_buf.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2)
  %tobool43.not = icmp eq i32 %err.2, 0
  br i1 %tobool43.not, label %if.then44, label %cleanup_dentry_buf.exit.out_dir_crit_edge

cleanup_dentry_buf.exit.out_dir_crit_edge:        ; preds = %cleanup_dentry_buf.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_dir

if.then44:                                        ; preds = %cleanup_dentry_buf.exit
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %36 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %37, i32 0, i32 33
  %38 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt = getelementptr inbounds %struct.reiserfs_sb_info, ptr %39, i32 0, i32 11
  %40 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %s_mount_opt, align 4
  %and46 = and i32 %41, 25165824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  %add = select i1 %tobool47.not, i32 38, i32 46
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %th) #10
  %42 = call ptr @memset(ptr %th, i32 255, i32 36)
  call void @reiserfs_write_lock(ptr noundef %37) #10
  %43 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i_sb, align 4
  %call51 = call i32 @journal_begin(ptr noundef nonnull %th, ptr noundef %44, i32 noundef %add) #10
  %45 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %i_sb, align 4
  call void @reiserfs_write_unlock(ptr noundef %46) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool53.not = icmp eq i32 %call51, 0
  br i1 %tobool53.not, label %if.then54, label %if.then44.if.end64_crit_edge

if.then44.if.end64_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

if.then54:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  %d_parent = getelementptr inbounds %struct.dentry, ptr %call4, i32 0, i32 3
  %47 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %d_parent, align 8
  %d_inode.i117 = getelementptr inbounds %struct.dentry, ptr %48, i32 0, i32 5
  %49 = ptrtoint ptr %d_inode.i117 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %d_inode.i117, align 8
  %i_rwsem.i118 = getelementptr inbounds %struct.inode, ptr %50, i32 0, i32 25
  call void @down_write_nested(ptr noundef %i_rwsem.i118, i32 noundef 3) #10
  %call56 = call i32 %action(ptr noundef %call4, ptr noundef %data) #10, !callees !65
  %51 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %i_sb, align 4
  call void @reiserfs_write_lock(ptr noundef %52) #10
  %call58 = call i32 @journal_end(ptr noundef nonnull %th) #10
  %53 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %i_sb, align 4
  call void @reiserfs_write_unlock(ptr noundef %54) #10
  %55 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %d_parent, align 8
  %d_inode.i119 = getelementptr inbounds %struct.dentry, ptr %56, i32 0, i32 5
  %57 = ptrtoint ptr %d_inode.i119 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %d_inode.i119, align 8
  %i_rwsem.i120 = getelementptr inbounds %struct.inode, ptr %58, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i120) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool62.not = icmp eq i32 %call58, 0
  %spec.select = select i1 %tobool62.not, i32 %call56, i32 %call58
  br label %if.end64

if.end64:                                         ; preds = %if.then54, %if.then44.if.end64_crit_edge
  %err.3 = phi i32 [ %call51, %if.then44.if.end64_crit_edge ], [ %spec.select, %if.then54 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %th) #10
  br label %out_dir

out_dir:                                          ; preds = %if.end64, %cleanup_dentry_buf.exit.out_dir_crit_edge, %if.else.out_dir_crit_edge
  %err.4 = phi i32 [ %err.2, %cleanup_dentry_buf.exit.out_dir_crit_edge ], [ %err.3, %if.end64 ], [ 0, %if.else.out_dir_crit_edge ]
  call void @dput(ptr noundef %call4) #10
  br label %out

out:                                              ; preds = %out_dir, %if.then6
  %err.5 = phi i32 [ %6, %if.then6 ], [ %err.4, %out_dir ]
  %59 = zext i32 %err.5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values)
  switch i32 %err.5, label %out.cleanup_crit_edge [
    i32 -61, label %out.if.then69_crit_edge
    i32 -95, label %out.if.then69_crit_edge132
  ]

out.if.then69_crit_edge132:                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then69

out.if.then69_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then69

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then69:                                        ; preds = %out.if.then69_crit_edge, %out.if.then69_crit_edge132
  br label %cleanup

cleanup:                                          ; preds = %if.then69, %out.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then69 ], [ %err.5, %out.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @delete_one_xattr(ptr noundef %dentry, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %d_parent = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %0 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_parent, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %4 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dentry, align 8
  %6 = and i32 %5, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %6)
  %7 = icmp eq i32 %6, 2097152
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 25
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_rwsem.i.i, i32 noundef 4) #10
  %8 = ptrtoint ptr %i_rwsem.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_rwsem.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i.i.not.i = icmp eq i32 %9, 0
  br i1 %7, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.end9.i, !prof !66

do.body4.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/xattr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 104, 0\0A.popsection", ""() #10, !srcloc !67
  unreachable

do.end9.i:                                        ; preds = %if.then
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %10 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d_inode.i.i, align 8
  %i_rwsem.i29.i = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 25
  tail call void @down_write_nested(ptr noundef %i_rwsem.i29.i, i32 noundef 2) #10
  %i_op.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 7
  %12 = ptrtoint ptr %i_op.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_op.i, align 8
  %rmdir.i = getelementptr inbounds %struct.inode_operations, ptr %13, i32 0, i32 10
  %14 = ptrtoint ptr %rmdir.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmdir.i, align 8
  %call11.i = tail call i32 %15(ptr noundef %3, ptr noundef %dentry) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  %16 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %d_inode.i.i, align 8
  br i1 %tobool12.not.i, label %if.then13.i, label %if.end19.critedge.i

if.then13.i:                                      ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i_flags.i, align 4
  %or.i = or i32 %19, 16
  store i32 %or.i, ptr %i_flags.i, align 4
  %20 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %d_inode.i.i, align 8
  %i_rwsem.i32.i = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i32.i) #10
  tail call void @d_delete(ptr noundef %dentry) #10
  br label %cleanup

if.end19.critedge.i:                              ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  %i_rwsem.i34.i = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i34.i) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %cmp.i.i.not.i, label %do.body4.i11, label %do.end9.i15, !prof !66

do.body4.i11:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/xattr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 89, 0\0A.popsection", ""() #10, !srcloc !68
  unreachable

do.end9.i15:                                      ; preds = %if.end
  %d_inode.i.i12 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %22 = ptrtoint ptr %d_inode.i.i12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %d_inode.i.i12, align 8
  %i_rwsem.i22.i = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 25
  tail call void @down_write_nested(ptr noundef %i_rwsem.i22.i, i32 noundef 2) #10
  %i_op.i13 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 7
  %24 = ptrtoint ptr %i_op.i13 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_op.i13, align 8
  %unlink.i = getelementptr inbounds %struct.inode_operations, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %unlink.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %unlink.i, align 4
  %call11.i14 = tail call i32 %27(ptr noundef %3, ptr noundef %dentry) #10
  %28 = ptrtoint ptr %d_inode.i.i12 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %d_inode.i.i12, align 8
  %i_rwsem.i24.i = getelementptr inbounds %struct.inode, ptr %29, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i24.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i14)
  %tobool13.not.i = icmp eq i32 %call11.i14, 0
  br i1 %tobool13.not.i, label %if.then14.i, label %do.end9.i15.cleanup_crit_edge

do.end9.i15.cleanup_crit_edge:                    ; preds = %do.end9.i15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then14.i:                                      ; preds = %do.end9.i15
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @d_delete(ptr noundef %dentry) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then14.i, %do.end9.i15.cleanup_crit_edge, %if.end19.critedge.i, %if.then13.i
  %retval.0 = phi i32 [ 0, %if.then13.i ], [ %call11.i, %if.end19.critedge.i ], [ %call11.i14, %do.end9.i15.cleanup_crit_edge ], [ 0, %if.then14.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__reiserfs_warning(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @reiserfs_chown_xattrs(ptr nocapture noundef readonly %inode, ptr noundef %attrs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @reiserfs_for_each_xattr(ptr noundef %inode, ptr noundef nonnull @chown_one_xattr, ptr noundef %attrs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.reiserfs_chown_xattrs, ptr noundef nonnull @.str.3, i32 noundef %call) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chown_one_xattr(ptr noundef %dentry, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 8
  %and = and i32 %1, 6
  store i32 %and, ptr %data, align 8
  %call = tail call i32 @reiserfs_setattr(ptr noundef nonnull @init_user_ns, ptr noundef %dentry, ptr noundef %data) #10
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %data, align 8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @reiserfs_xattr_set_handle(ptr nocapture readnone %th, ptr noundef %inode, ptr noundef %name, ptr noundef %buffer, i32 noundef %buffer_size, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %now.i = alloca %struct.timespec64, align 8
  %tmp.i = alloca %struct.timespec64, align 8
  %now.i.i = alloca %struct.timespec64, align 8
  %tmp.i.i = alloca %struct.timespec64, align 8
  %newattrs = alloca %struct.iattr, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_flags = getelementptr i8, ptr %inode, i32 -248
  %0 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_flags, align 8
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %entry.cleanup72_crit_edge, label %if.end

entry.cleanup72_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup72

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %buffer, null
  br i1 %tobool1.not, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %call.i = tail call fastcc ptr @open_xa_dir(ptr noundef %inode, i32 noundef 2) #10
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %call.i to i32
  br label %cleanup72

if.end.i:                                         ; preds = %if.then2
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %call.i, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i.i, align 8
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 25
  tail call void @down_write_nested(ptr noundef %i_rwsem.i.i, i32 noundef 3) #10
  %call4.i = tail call i32 @strlen(ptr noundef %name) #13
  %call5.i = tail call ptr @lookup_one_len(ptr noundef %name, ptr noundef %call.i, i32 noundef %call4.i) #10
  %cmp.i30.i = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i30.i, label %if.then7.i, label %if.end9.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %call5.i to i32
  br label %out_dput.i

if.end9.i:                                        ; preds = %if.end.i
  %d_inode.i31.i = getelementptr inbounds %struct.dentry, ptr %call5.i, i32 0, i32 5
  %7 = ptrtoint ptr %d_inode.i31.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %d_inode.i31.i, align 8
  %cmp.i32.not.i = icmp eq ptr %8, null
  br i1 %cmp.i32.not.i, label %if.end9.i.if.end14.i_crit_edge, label %if.then11.i

if.end9.i.if.end14.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

if.then11.i:                                      ; preds = %if.end9.i
  %9 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %d_inode.i.i, align 8
  %i_rwsem.i.i.i = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 25
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_rwsem.i.i.i, i32 noundef 4) #10
  %11 = ptrtoint ptr %i_rwsem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %i_rwsem.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i.i.not.i.i = icmp eq i32 %12, 0
  br i1 %cmp.i.i.not.i.i, label %do.body4.i.i, label %do.end9.i.i, !prof !66

do.body4.i.i:                                     ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/xattr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 89, 0\0A.popsection", ""() #10, !srcloc !68
  unreachable

do.end9.i.i:                                      ; preds = %if.then11.i
  %13 = ptrtoint ptr %d_inode.i31.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %d_inode.i31.i, align 8
  %i_rwsem.i22.i.i = getelementptr inbounds %struct.inode, ptr %14, i32 0, i32 25
  tail call void @down_write_nested(ptr noundef %i_rwsem.i22.i.i, i32 noundef 2) #10
  %i_op.i.i = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 7
  %15 = ptrtoint ptr %i_op.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_op.i.i, align 8
  %unlink.i.i = getelementptr inbounds %struct.inode_operations, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %unlink.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %unlink.i.i, align 4
  %call11.i.i = tail call i32 %18(ptr noundef %10, ptr noundef %call5.i) #10
  %19 = ptrtoint ptr %d_inode.i31.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %d_inode.i31.i, align 8
  %i_rwsem.i24.i.i = getelementptr inbounds %struct.inode, ptr %20, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i24.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %tobool13.not.i.i = icmp eq i32 %call11.i.i, 0
  br i1 %tobool13.not.i.i, label %if.then14.i.i, label %do.end9.i.i.xattr_unlink.exit.i_crit_edge

do.end9.i.i.xattr_unlink.exit.i_crit_edge:        ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xattr_unlink.exit.i

if.then14.i.i:                                    ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @d_delete(ptr noundef %call5.i) #10
  br label %xattr_unlink.exit.i

xattr_unlink.exit.i:                              ; preds = %if.then14.i.i, %do.end9.i.i.xattr_unlink.exit.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %now.i.i) #10
  %21 = call ptr @memset(ptr %now.i.i, i32 255, i32 16)
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %now.i.i, ptr noundef %inode) #10
  %pprev.i.i.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 28, i32 1
  %22 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pprev.i.i.i.i, align 4
  %tobool.not.i.i.not.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i.not.i.i, label %xattr_unlink.exit.i.update_ctime.exit.i_crit_edge, label %lor.lhs.false.i.i

xattr_unlink.exit.i.update_ctime.exit.i_crit_edge: ; preds = %xattr_unlink.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_ctime.exit.i

lor.lhs.false.i.i:                                ; preds = %xattr_unlink.exit.i
  %24 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool1.not.i.i = icmp eq i32 %26, 0
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.update_ctime.exit.i_crit_edge, label %lor.lhs.false2.i.i

lor.lhs.false.i.i.update_ctime.exit.i_crit_edge:  ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_ctime.exit.i

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %i_ctime.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %27 = ptrtoint ptr %i_ctime.i.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %i_ctime.i.i, align 8
  %29 = ptrtoint ptr %now.i.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %now.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %30)
  %cmp.i.i.i = icmp eq i64 %28, %30
  br i1 %cmp.i.i.i, label %timespec64_equal.exit.i.i, label %lor.lhs.false2.i.i.if.end.i.i_crit_edge

lor.lhs.false2.i.i.if.end.i.i_crit_edge:          ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

timespec64_equal.exit.i.i:                        ; preds = %lor.lhs.false2.i.i
  %tv_nsec.i.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17, i32 1
  %31 = ptrtoint ptr %tv_nsec.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tv_nsec.i.i.i, align 8
  %tv_nsec2.i.i.i = getelementptr inbounds %struct.timespec64, ptr %now.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %tv_nsec2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tv_nsec2.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp3.i.not.i.i = icmp eq i32 %32, %34
  br i1 %cmp3.i.not.i.i, label %timespec64_equal.exit.i.i.update_ctime.exit.i_crit_edge, label %timespec64_equal.exit.i.i.if.end.i.i_crit_edge

timespec64_equal.exit.i.i.if.end.i.i_crit_edge:   ; preds = %timespec64_equal.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

timespec64_equal.exit.i.i.update_ctime.exit.i_crit_edge: ; preds = %timespec64_equal.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_ctime.exit.i

if.end.i.i:                                       ; preds = %timespec64_equal.exit.i.i.if.end.i.i_crit_edge, %lor.lhs.false2.i.i.if.end.i.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i.i) #10
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i.i, ptr noundef %inode) #10
  %35 = call ptr @memcpy(ptr %i_ctime.i.i, ptr %tmp.i.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i.i) #10
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #10
  br label %update_ctime.exit.i

update_ctime.exit.i:                              ; preds = %if.end.i.i, %timespec64_equal.exit.i.i.update_ctime.exit.i_crit_edge, %lor.lhs.false.i.i.update_ctime.exit.i_crit_edge, %xattr_unlink.exit.i.update_ctime.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %now.i.i) #10
  br label %if.end14.i

if.end14.i:                                       ; preds = %update_ctime.exit.i, %if.end9.i.if.end14.i_crit_edge
  %err.0.i = phi i32 [ %call11.i.i, %update_ctime.exit.i ], [ 0, %if.end9.i.if.end14.i_crit_edge ]
  call void @dput(ptr noundef %call5.i) #10
  br label %out_dput.i

out_dput.i:                                       ; preds = %if.end14.i, %if.then7.i
  %err.1.i = phi i32 [ %6, %if.then7.i ], [ %err.0.i, %if.end14.i ]
  %36 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %d_inode.i.i, align 8
  %i_rwsem.i35.i = getelementptr inbounds %struct.inode, ptr %37, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i35.i) #10
  call void @dput(ptr noundef %call.i) #10
  br label %cleanup72

if.end4:                                          ; preds = %if.end
  %call5 = tail call fastcc ptr @xattr_lookup(ptr noundef %inode, ptr noundef %name, i32 noundef %flags)
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %call5 to i32
  br label %cleanup72

if.end9:                                          ; preds = %if.end4
  %i_xattr_sem = getelementptr i8, ptr %inode, i32 -112
  tail call void @down_write(ptr noundef %i_xattr_sem) #10
  %call.i143 = tail call i32 @csum_partial(ptr noundef nonnull %buffer, i32 noundef %buffer_size, i32 noundef 0) #10
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %call5, i32 0, i32 5
  %39 = tail call i32 @llvm.bswap.i32(i32 %call.i143)
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buffer_size)
  %cmp49 = icmp eq i32 %buffer_size, 0
  br label %while.cond

while.cond:                                       ; preds = %if.end44.while.cond_crit_edge, %if.end9
  %file_pos.0 = phi i32 [ 0, %if.end9 ], [ %add47, %if.end44.while.cond_crit_edge ]
  %buffer_pos.0 = phi i32 [ 0, %if.end9 ], [ %add46, %if.end44.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %buffer_pos.0, i32 %buffer_size)
  %cmp12 = icmp ult i32 %buffer_pos.0, %buffer_size
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buffer_pos.0)
  %cmp13 = icmp eq i32 %buffer_pos.0, 0
  %or.cond = or i1 %cmp12, %cmp13
  br i1 %or.cond, label %while.body, label %while.cond.land.lhs.true_crit_edge

while.cond.land.lhs.true_crit_edge:               ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

while.body:                                       ; preds = %while.cond
  %and14 = and i32 %file_pos.0, 4095
  %sub = sub i32 %buffer_size, %buffer_pos.0
  %40 = tail call i32 @llvm.umin.i32(i32 %sub, i32 4096)
  %41 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %d_inode.i, align 8
  %call20 = tail call fastcc ptr @reiserfs_get_page(ptr noundef %42, i32 noundef %file_pos.0)
  %cmp.i144 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i144, label %cleanup.thread160, label %if.end24

cleanup.thread160:                                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %call20 to i32
  br label %out_unlock

if.end24:                                         ; preds = %while.body
  tail call void @__might_sleep(ptr noundef nonnull @.str.15, i32 noundef 788) #10
  %44 = getelementptr inbounds %struct.page, ptr %call20, i32 0, i32 1
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %44, align 4
  %and.i.i = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i145, label %if.then.i.i, !prof !69

if.then.i.i:                                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %46, -1
  br label %_compound_head.exit.i

if.end.i.i145:                                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %call20 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i145, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %47, %if.end.i.i145 ]
  %48 = inttoptr i32 %retval.0.i.i to ptr
  %49 = getelementptr inbounds %struct.page, ptr %48, i32 0, i32 1
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %49, align 4
  %and.i.i.i.i = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !69

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %52 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %52, ptr noundef nonnull @.str.16) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !70
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %48, i32 noundef 4) #10
  %53 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %48, align 4
  %and.i.i4.i.i = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i146_crit_edge

folio_flags.exit.i.i.if.then.i146_crit_edge:      ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i146

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %48, i32 1, i32 3, i32 1) #10
  %55 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %48, ptr %48, i32 1, ptr elementtype(i32) %48) #10, !srcloc !71
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %55, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !72
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i146_crit_edge

folio_trylock.exit.i.if.then.i146_crit_edge:      ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i146

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lock_page.exit

if.then.i146:                                     ; preds = %folio_trylock.exit.i.if.then.i146_crit_edge, %folio_flags.exit.i.i.if.then.i146_crit_edge
  tail call void @__folio_lock(ptr noundef %48) #10
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i146, %folio_trylock.exit.i.lock_page.exit_crit_edge
  %call25 = tail call ptr @page_address(ptr noundef %call20) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %file_pos.0)
  %cmp26 = icmp eq i32 %file_pos.0, 0
  br i1 %cmp26, label %if.then27, label %lock_page.exit.if.end32_crit_edge

lock_page.exit.if.end32_crit_edge:                ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then27:                                        ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  %56 = add nsw i32 %40, -4089
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4097, i32 %56)
  %cmp28 = icmp ult i32 %56, -4097
  %spec.select = select i1 %cmp28, i32 4088, i32 %40
  %57 = ptrtoint ptr %call25 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1096304210, ptr %call25, align 4
  %h_hash = getelementptr inbounds %struct.reiserfs_xattr_header, ptr %call25, i32 0, i32 1
  %58 = ptrtoint ptr %h_hash to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %39, ptr %h_hash, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then27, %lock_page.exit.if.end32_crit_edge
  %file_pos.1 = phi i32 [ 8, %if.then27 ], [ %file_pos.0, %lock_page.exit.if.end32_crit_edge ]
  %chunk.2 = phi i32 [ %spec.select, %if.then27 ], [ %40, %lock_page.exit.if.end32_crit_edge ]
  %skip.0 = phi i32 [ 8, %if.then27 ], [ 0, %lock_page.exit.if.end32_crit_edge ]
  %59 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %i_sb, align 4
  tail call void @reiserfs_write_lock(ptr noundef %60) #10
  %add33 = add nuw nsw i32 %skip.0, %chunk.2
  %call34 = tail call i32 @__reiserfs_write_begin(ptr noundef %call20, i32 noundef %and14, i32 noundef %add33) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then38, label %if.end32.if.end44_crit_edge

if.end32.if.end44_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.then38:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %call25, i32 %skip.0
  %add.ptr39 = getelementptr i8, ptr %buffer, i32 %buffer_pos.0
  %61 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr39, i32 %chunk.2)
  %add42 = add nuw nsw i32 %add33, %and14
  %call43 = tail call i32 @reiserfs_commit_write(ptr noundef null, ptr noundef %call20, i32 noundef %and14, i32 noundef %add42) #10
  br label %if.end44

if.end44:                                         ; preds = %if.then38, %if.end32.if.end44_crit_edge
  %err.1 = phi i32 [ %call34, %if.end32.if.end44_crit_edge ], [ %call43, %if.then38 ]
  %62 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %i_sb, align 4
  tail call void @reiserfs_write_unlock(ptr noundef %63) #10
  tail call void @unlock_page(ptr noundef %call20) #10
  tail call fastcc void @reiserfs_put_page(ptr noundef %call20)
  %add46 = add i32 %chunk.2, %buffer_pos.0
  %add47 = add i32 %chunk.2, %file_pos.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool48.not = icmp ne i32 %err.1, 0
  %or.cond139 = or i1 %cmp49, %tobool48.not
  br i1 %or.cond139, label %while.end, label %if.end44.while.cond_crit_edge

if.end44.while.cond_crit_edge:                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

while.end:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool57.not = icmp eq i32 %err.1, 0
  br i1 %tobool57.not, label %while.end.land.lhs.true_crit_edge, label %while.end.if.else68_crit_edge

while.end.if.else68_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else68

while.end.land.lhs.true_crit_edge:                ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %while.end.land.lhs.true_crit_edge, %while.cond.land.lhs.true_crit_edge
  %add56 = add i32 %buffer_size, 8
  %conv = zext i32 %add56 to i64
  %64 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %d_inode.i, align 8
  %call59 = tail call fastcc i64 @i_size_read(ptr noundef %65)
  call void @__sanitizer_cov_trace_cmp8(i64 %call59, i64 %conv)
  %cmp60 = icmp sgt i64 %call59, %conv
  br i1 %cmp60, label %if.then62, label %land.lhs.true.if.else68_crit_edge

land.lhs.true.if.else68_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else68

if.then62:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %newattrs) #10
  %66 = call ptr @memset(ptr %newattrs, i32 255, i32 80)
  %67 = ptrtoint ptr %newattrs to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 72, ptr %newattrs, align 8
  %ia_mode = getelementptr inbounds %struct.iattr, ptr %newattrs, i32 0, i32 1
  %68 = ptrtoint ptr %ia_mode to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 0, ptr %ia_mode, align 4
  %ia_uid = getelementptr inbounds %struct.iattr, ptr %newattrs, i32 0, i32 2
  %69 = ptrtoint ptr %ia_uid to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %ia_uid, align 8
  %ia_gid = getelementptr inbounds %struct.iattr, ptr %newattrs, i32 0, i32 3
  %70 = ptrtoint ptr %ia_gid to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %ia_gid, align 4
  %ia_size = getelementptr inbounds %struct.iattr, ptr %newattrs, i32 0, i32 4
  %71 = ptrtoint ptr %ia_size to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %conv, ptr %ia_size, align 8
  %ia_atime = getelementptr inbounds %struct.iattr, ptr %newattrs, i32 0, i32 5
  %ia_ctime = getelementptr inbounds %struct.iattr, ptr %newattrs, i32 0, i32 7
  %72 = call ptr @memset(ptr %ia_atime, i32 0, i32 32)
  call void @current_time(ptr sret(%struct.timespec64) align 8 %ia_ctime, ptr noundef %inode) #10
  %ia_file = getelementptr inbounds %struct.iattr, ptr %newattrs, i32 0, i32 8
  %73 = ptrtoint ptr %ia_file to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %ia_file, align 8
  %74 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %75, i32 0, i32 25
  call void @down_write_nested(ptr noundef %i_rwsem.i, i32 noundef 3) #10
  %76 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %d_inode.i, align 8
  call void @inode_dio_wait(ptr noundef %77) #10
  %call66 = call i32 @reiserfs_setattr(ptr noundef nonnull @init_user_ns, ptr noundef %call5, ptr noundef nonnull %newattrs) #10
  %78 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i152 = getelementptr inbounds %struct.inode, ptr %79, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i152) #10
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %newattrs) #10
  br label %out_unlock

if.else68:                                        ; preds = %land.lhs.true.if.else68_crit_edge, %while.end.if.else68_crit_edge
  %err.3169 = phi i32 [ 0, %land.lhs.true.if.else68_crit_edge ], [ %err.1, %while.end.if.else68_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %now.i) #10
  %80 = call ptr @memset(ptr %now.i, i32 255, i32 16)
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %now.i, ptr noundef %inode) #10
  %pprev.i.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 28, i32 1
  %81 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.not.i = icmp eq ptr %82, null
  br i1 %tobool.not.i.i.not.i, label %if.else68.update_ctime.exit_crit_edge, label %lor.lhs.false.i

if.else68.update_ctime.exit_crit_edge:            ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_ctime.exit

lor.lhs.false.i:                                  ; preds = %if.else68
  %83 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %83, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool1.not.i = icmp eq i32 %85, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.update_ctime.exit_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.update_ctime.exit_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_ctime.exit

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %86 = ptrtoint ptr %i_ctime.i to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %i_ctime.i, align 8
  %88 = ptrtoint ptr %now.i to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %now.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %87, i64 %89)
  %cmp.i.i153 = icmp eq i64 %87, %89
  br i1 %cmp.i.i153, label %timespec64_equal.exit.i, label %lor.lhs.false2.i.if.end.i154_crit_edge

lor.lhs.false2.i.if.end.i154_crit_edge:           ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i154

timespec64_equal.exit.i:                          ; preds = %lor.lhs.false2.i
  %tv_nsec.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17, i32 1
  %90 = ptrtoint ptr %tv_nsec.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %tv_nsec.i.i, align 8
  %tv_nsec2.i.i = getelementptr inbounds %struct.timespec64, ptr %now.i, i32 0, i32 1
  %92 = ptrtoint ptr %tv_nsec2.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %tv_nsec2.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %93)
  %cmp3.i.not.i = icmp eq i32 %91, %93
  br i1 %cmp3.i.not.i, label %timespec64_equal.exit.i.update_ctime.exit_crit_edge, label %timespec64_equal.exit.i.if.end.i154_crit_edge

timespec64_equal.exit.i.if.end.i154_crit_edge:    ; preds = %timespec64_equal.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i154

timespec64_equal.exit.i.update_ctime.exit_crit_edge: ; preds = %timespec64_equal.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_ctime.exit

if.end.i154:                                      ; preds = %timespec64_equal.exit.i.if.end.i154_crit_edge, %lor.lhs.false2.i.if.end.i154_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #10
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, ptr noundef %inode) #10
  %94 = call ptr @memcpy(ptr %i_ctime.i, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #10
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #10
  br label %update_ctime.exit

update_ctime.exit:                                ; preds = %if.end.i154, %timespec64_equal.exit.i.update_ctime.exit_crit_edge, %lor.lhs.false.i.update_ctime.exit_crit_edge, %if.else68.update_ctime.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %now.i) #10
  br label %out_unlock

out_unlock:                                       ; preds = %update_ctime.exit, %if.then62, %cleanup.thread160
  %err.4 = phi i32 [ %err.3169, %update_ctime.exit ], [ %call66, %if.then62 ], [ %43, %cleanup.thread160 ]
  call void @up_write(ptr noundef %i_xattr_sem) #10
  call void @dput(ptr noundef %call5) #10
  br label %cleanup72

cleanup72:                                        ; preds = %out_unlock, %if.then7, %out_dput.i, %if.then.i, %entry.cleanup72_crit_edge
  %retval.0 = phi i32 [ %38, %if.then7 ], [ %err.4, %out_unlock ], [ -95, %entry.cleanup72_crit_edge ], [ %3, %if.then.i ], [ %err.1.i, %out_dput.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @xattr_lookup(ptr nocapture noundef readonly %inode, ptr noundef %name, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @open_xa_dir(ptr noundef %inode, i32 noundef %flags)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 25
  tail call void @down_write_nested(ptr noundef %i_rwsem.i, i32 noundef 3) #10
  %call4 = tail call i32 @strlen(ptr noundef %name) #14
  %call5 = tail call ptr @lookup_one_len(ptr noundef %name, ptr noundef %call, i32 noundef %call4) #10
  %cmp.i52 = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i52, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %call5 to i32
  br label %out

if.end9:                                          ; preds = %if.end
  %d_inode.i53 = getelementptr inbounds %struct.dentry, ptr %call5, i32 0, i32 5
  %3 = ptrtoint ptr %d_inode.i53 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %d_inode.i53, align 8
  %cmp.i54.not = icmp eq ptr %4, null
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.cond = or i1 %tobool.not, %cmp.i54.not
  %err.0 = select i1 %or.cond, i32 0, i32 -17
  br i1 %cmp.i54.not, label %if.then14, label %if.end9.if.end22_crit_edge

if.end9.if.end22_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags)
  %tobool15.not = icmp ne i32 %flags, 0
  %or.cond51 = and i1 %tobool15.not, %tobool.not
  br i1 %or.cond51, label %if.then14.if.then24_crit_edge, label %if.then18

if.then14.if.then24_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then24

if.then18:                                        ; preds = %if.then14
  %5 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 25
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_rwsem.i.i, i32 noundef 4) #10
  %7 = ptrtoint ptr %i_rwsem.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %i_rwsem.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i.i.not.i = icmp eq i32 %8, 0
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %xattr_create.exit, !prof !66

do.body4.i:                                       ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/xattr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 68, 0\0A.popsection", ""() #10, !srcloc !73
  unreachable

xattr_create.exit:                                ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  %i_op.i = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 7
  %9 = ptrtoint ptr %i_op.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_op.i, align 8
  %create.i = getelementptr inbounds %struct.inode_operations, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %create.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %create.i, align 4
  %call8.i = tail call i32 %12(ptr noundef nonnull @init_user_ns, ptr noundef %6, ptr noundef %call5, i16 noundef zeroext -32320, i1 noundef zeroext true) #10
  br label %if.end22

if.end22:                                         ; preds = %xattr_create.exit, %if.end9.if.end22_crit_edge
  %err.1 = phi i32 [ %call8.i, %xattr_create.exit ], [ %err.0, %if.end9.if.end22_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool23.not = icmp eq i32 %err.1, 0
  br i1 %tobool23.not, label %if.end22.out_crit_edge, label %if.end22.if.then24_crit_edge

if.end22.if.then24_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then24

if.end22.out_crit_edge:                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then24:                                        ; preds = %if.end22.if.then24_crit_edge, %if.then14.if.then24_crit_edge
  %err.162 = phi i32 [ %err.1, %if.end22.if.then24_crit_edge ], [ -61, %if.then14.if.then24_crit_edge ]
  tail call void @dput(ptr noundef %call5) #10
  br label %out

out:                                              ; preds = %if.then24, %if.end22.out_crit_edge, %if.then7
  %err.2 = phi i32 [ %2, %if.then7 ], [ %err.162, %if.then24 ], [ 0, %if.end22.out_crit_edge ]
  %13 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i59 = getelementptr inbounds %struct.inode, ptr %14, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i59) #10
  tail call void @dput(ptr noundef %call) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2)
  %tobool27.not = icmp eq i32 %err.2, 0
  %15 = inttoptr i32 %err.2 to ptr
  %spec.select = select i1 %tobool27.not, ptr %call5, ptr %15
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %entry.cleanup_crit_edge ], [ %spec.select, %out ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @reiserfs_get_page(ptr nocapture noundef readonly %dir, i32 noundef %n) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_mapping = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 9
  %0 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_mapping, align 8
  %gfp_mask.i = getelementptr inbounds %struct.address_space, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %gfp_mask.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 3136, ptr %gfp_mask.i, align 4
  %shr = lshr i32 %n, 12
  %call.i = tail call ptr @read_cache_page(ptr noundef %1, i32 noundef %shr, ptr noundef null, ptr noundef null) #10
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str.13, i32 noundef 44) #10
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call.i, align 4
  %shr.i.i13 = lshr i32 %4, 30
  %5 = zext i32 %shr.i.i13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %shr.i.i13, label %if.then.if.then.i14_crit_edge [
    i32 2, label %if.then.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.then.if.else.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then.if.then.i14_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i14

is_highmem_idx.exit.i:                            ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %6 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp2.i.not.i = icmp eq i32 %6, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i14_crit_edge

is_highmem_idx.exit.i.if.then.i14_crit_edge:      ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i14

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then.i14:                                      ; preds = %is_highmem_idx.exit.i.if.then.i14_crit_edge, %if.then.if.then.i14_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %call.i) #10
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %if.then.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %call.i) #10
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i14
  %7 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  %and.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !69

if.then.i.i:                                      ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %9, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %10, %if.end.i.i ]
  %11 = inttoptr i32 %retval.0.i.i to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp.i.not.i = icmp eq i32 %13, -1
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %7, align 4
  %and.i16.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !66

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !69

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i18.i = add i32 %15, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %16, %if.end.i20.i ]
  %17 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %17, ptr noundef nonnull @.str.14) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #10, !srcloc !74
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !69

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i25.i = add i32 %15, -1
  br label %PageError.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %call.i to i32
  br label %PageError.exit

PageError.exit:                                   ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %18, %if.end.i27.i ]
  %19 = inttoptr i32 %retval.0.i28.i to ptr
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %19, align 4
  %22 = and i32 %21, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not = icmp eq i32 %22, 0
  br i1 %tobool.not, label %PageError.exit.cleanup_crit_edge, label %fail

PageError.exit.cleanup_crit_edge:                 ; preds = %PageError.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

fail:                                             ; preds = %PageError.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @reiserfs_put_page(ptr noundef %call.i)
  br label %cleanup

cleanup:                                          ; preds = %fail, %PageError.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -5 to ptr), %fail ], [ %call.i, %PageError.exit.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_write_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__reiserfs_write_begin(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_commit_write(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_write_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @reiserfs_put_page(ptr noundef %page) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__might_sleep(ptr noundef nonnull @.str.13, i32 noundef 55) #10
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page, align 4
  %shr.i.i = lshr i32 %1, 30
  %2 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %shr.i.i, label %entry.kunmap.exit_crit_edge [
    i32 2, label %entry.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

entry.kunmap.exit_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %kunmap.exit

is_highmem_idx.exit.i:                            ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %3 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp2.i.not.i = icmp eq i32 %3, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.end.i_crit_edge, label %is_highmem_idx.exit.i.kunmap.exit_crit_edge

is_highmem_idx.exit.i.kunmap.exit_crit_edge:      ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kunmap.exit

is_highmem_idx.exit.i.if.end.i_crit_edge:         ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  tail call void @kunmap_high(ptr noundef %page) #10
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i.kunmap.exit_crit_edge, %entry.kunmap.exit_crit_edge
  %4 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !69

if.then.i.i:                                      ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %6, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %7, %if.end.i.i ]
  %8 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  %9 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i.i.i.i = icmp eq i32 %10, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !66

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %8, ptr noundef nonnull @.str.18) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !75
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !76
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #10
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #10, !srcloc !77
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@reiserfs_put_page, %if.then.i.i.i.i.i)) #10
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !79

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %8, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #10
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__put_page(ptr noundef %8) #10
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !80
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @trace_hardirqs_off() #10
  %1 = tail call ptr @llvm.returnaddress(i32 0) #10
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #10
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #10
  tail call void @trace_hardirqs_on() #10
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %3 = tail call ptr @llvm.returnaddress(i32 0) #10
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #10
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #10
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !81
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !66

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #10, !srcloc !82
  %6 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %i_size_seqcount, align 4
  %and29 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool.not30 = icmp eq i32 %and29, 0
  br i1 %tobool.not30, label %seqcount_lockdep_reader_access.exit.while.end_crit_edge, label %seqcount_lockdep_reader_access.exit.do.end_crit_edge

seqcount_lockdep_reader_access.exit.do.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  br label %do.end

seqcount_lockdep_reader_access.exit.while.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !83
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !84
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !85
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !86
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  ret i64 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_dio_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_setattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @reiserfs_xattr_set(ptr noundef %inode, ptr noundef %name, ptr noundef %buffer, i32 noundef %buffer_size, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %th = alloca %struct.reiserfs_transaction_handle, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %th) #10
  %0 = call ptr @memset(ptr %th, i32 255, i32 36)
  %conv = zext i32 %buffer_size to i64
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %1 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 33
  %3 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_mount_opt.i.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %s_mount_opt.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_mount_opt.i.i, align 4
  %and.i.i = and i32 %6, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %reiserfs_file_data_log.exit.i, label %entry.if.then.i_crit_edge

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

reiserfs_file_data_log.exit.i:                    ; preds = %entry
  %i_flags.i.i = getelementptr i8, ptr %inode, i32 -248
  %7 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i_flags.i.i, align 8
  %9 = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %reiserfs_file_data_log.exit.i.reiserfs_xattr_nblocks.exit_crit_edge, label %reiserfs_file_data_log.exit.i.if.then.i_crit_edge

reiserfs_file_data_log.exit.i.if.then.i_crit_edge: ; preds = %reiserfs_file_data_log.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

reiserfs_file_data_log.exit.i.reiserfs_xattr_nblocks.exit_crit_edge: ; preds = %reiserfs_file_data_log.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %reiserfs_xattr_nblocks.exit

if.then.i:                                        ; preds = %reiserfs_file_data_log.exit.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 3
  %10 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_blocksize.i, align 16
  %conv.i = zext i32 %11 to i64
  %add1.i = add nuw nsw i64 %conv, 7
  %sub.i = add nuw nsw i64 %add1.i, %conv.i
  %neg.i = sub i32 0, %11
  %conv5.i = zext i32 %neg.i to i64
  %and.i = and i64 %sub.i, %conv5.i
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 2
  %12 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %s_blocksize_bits.i, align 4
  %sh_prom.i = zext i8 %13 to i64
  %shr.i = lshr i64 %and.i, %sh_prom.i
  %extract.t = trunc i64 %shr.i to i32
  br label %reiserfs_xattr_nblocks.exit

reiserfs_xattr_nblocks.exit:                      ; preds = %if.then.i, %reiserfs_file_data_log.exit.i.reiserfs_xattr_nblocks.exit_crit_edge
  %ret.0.i.off0 = phi i32 [ %extract.t, %if.then.i ], [ 0, %reiserfs_file_data_log.exit.i.reiserfs_xattr_nblocks.exit_crit_edge ]
  %priv_root = getelementptr inbounds %struct.reiserfs_sb_info, ptr %4, i32 0, i32 31
  %14 = ptrtoint ptr %priv_root to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv_root, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %d_inode.i, align 8
  %cmp.i.not = icmp eq ptr %17, null
  br i1 %cmp.i.not, label %reiserfs_xattr_nblocks.exit.cleanup_crit_edge, label %if.end

reiserfs_xattr_nblocks.exit.cleanup_crit_edge:    ; preds = %reiserfs_xattr_nblocks.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %reiserfs_xattr_nblocks.exit
  %and = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then4, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then4:                                         ; preds = %if.end
  %and.i38 = and i32 %6, 25165824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i38)
  %tobool.not.i39 = icmp eq i32 %and.i38, 0
  %add7.i = select i1 %tobool.not.i39, i32 54, i32 224
  %i_flags.i = getelementptr i8, ptr %inode, i32 -248
  %18 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i_flags.i, align 8
  %and9.i = and i32 %19, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %cmp.i40 = icmp eq i32 %and9.i, 0
  br i1 %cmp.i40, label %if.then.i41, label %if.then4.reiserfs_xattr_jcreate_nblocks.exit_crit_edge

if.then4.reiserfs_xattr_jcreate_nblocks.exit_crit_edge: ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %reiserfs_xattr_jcreate_nblocks.exit

if.then.i41:                                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  %add25.i = select i1 %tobool.not.i39, i32 108, i32 448
  %xattr_root.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %4, i32 0, i32 32
  %20 = ptrtoint ptr %xattr_root.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %xattr_root.i, align 4
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %d_inode.i.i, align 8
  %cmp.i.i = icmp eq ptr %23, null
  %add45.i = select i1 %tobool.not.i39, i32 162, i32 672
  %spec.select.i = select i1 %cmp.i.i, i32 %add45.i, i32 %add25.i
  br label %reiserfs_xattr_jcreate_nblocks.exit

reiserfs_xattr_jcreate_nblocks.exit:              ; preds = %if.then.i41, %if.then4.reiserfs_xattr_jcreate_nblocks.exit_crit_edge
  %nblocks.0.i = phi i32 [ %add7.i, %if.then4.reiserfs_xattr_jcreate_nblocks.exit_crit_edge ], [ %spec.select.i, %if.then.i41 ]
  %add = add i32 %nblocks.0.i, %ret.0.i.off0
  br label %if.end6

if.end6:                                          ; preds = %reiserfs_xattr_jcreate_nblocks.exit, %if.end.if.end6_crit_edge
  %jbegin_count.0 = phi i32 [ %ret.0.i.off0, %if.end.if.end6_crit_edge ], [ %add, %reiserfs_xattr_jcreate_nblocks.exit ]
  tail call void @reiserfs_write_lock(ptr noundef %2) #10
  %24 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_sb.i.i, align 4
  %call9 = call i32 @journal_begin(ptr noundef nonnull %th, ptr noundef %25, i32 noundef %jbegin_count.0) #10
  %26 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_sb.i.i, align 4
  call void @reiserfs_write_unlock(ptr noundef %27) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool11.not = icmp eq i32 %call9, 0
  br i1 %tobool11.not, label %if.end13, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %call14 = call i32 @reiserfs_xattr_set_handle(ptr undef, ptr noundef %inode, ptr noundef %name, ptr noundef %buffer, i32 noundef %buffer_size, i32 noundef %flags)
  %28 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i_sb.i.i, align 4
  call void @reiserfs_write_lock(ptr noundef %29) #10
  %call16 = call i32 @journal_end(ptr noundef nonnull %th) #10
  %30 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i_sb.i.i, align 4
  call void @reiserfs_write_unlock(ptr noundef %31) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp = icmp eq i32 %call14, 0
  %spec.select = select i1 %cmp, i32 %call16, i32 %call14
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end6.cleanup_crit_edge, %reiserfs_xattr_nblocks.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end13 ], [ -95, %reiserfs_xattr_nblocks.exit.cleanup_crit_edge ], [ %call9, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %th) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @journal_begin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @journal_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @reiserfs_xattr_get(ptr noundef %inode, ptr noundef %name, ptr noundef %buffer, i32 noundef %buffer_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %name, null
  br i1 %cmp, label %entry.cleanup71_crit_edge, label %if.end

entry.cleanup71_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup71

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -264
  %i_flags = getelementptr i8, ptr %inode, i32 -248
  %0 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_flags, align 8
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %if.end.cleanup71_crit_edge, label %if.end3

if.end.cleanup71_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup71

if.end3:                                          ; preds = %if.end
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i, align 16
  %priv_root = getelementptr inbounds %struct.reiserfs_sb_info, ptr %6, i32 0, i32 31
  %7 = ptrtoint ptr %priv_root to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv_root, align 4
  %tobool5.not = icmp eq ptr %8, null
  br i1 %tobool5.not, label %if.end3.cleanup71_crit_edge, label %if.end7

if.end3.cleanup71_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup71

if.end7:                                          ; preds = %if.end3
  %call8 = tail call fastcc ptr @xattr_lookup(ptr noundef %inode, ptr noundef nonnull %name, i32 noundef 2)
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %call8 to i32
  br label %cleanup71

if.end12:                                         ; preds = %if.end7
  %i_xattr_sem = getelementptr i8, ptr %inode, i32 -112
  tail call void @down_read(ptr noundef %i_xattr_sem) #10
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %call8, i32 0, i32 5
  %10 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d_inode.i, align 8
  %call15 = tail call fastcc i64 @i_size_read(ptr noundef %11)
  %conv = trunc i64 %call15 to i32
  %cmp16 = icmp eq ptr %buffer, null
  %sub = add i32 %conv, -8
  br i1 %cmp16, label %if.end12.out_unlock_crit_edge, label %if.end19

if.end12.out_unlock_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %buffer_size)
  %cmp21 = icmp ugt i32 %sub, %buffer_size
  br i1 %cmp21, label %if.end19.out_unlock_crit_edge, label %while.cond.preheader

if.end19.out_unlock_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

while.cond.preheader:                             ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %cmp25142.not = icmp eq i32 %conv, 0
  br i1 %cmp25142.not, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %cleanup53.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %hash.0145 = phi i32 [ %hash.2, %cleanup53.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  %buffer_pos.0144 = phi i32 [ %add52, %cleanup53.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  %file_pos.0143 = phi i32 [ %add, %cleanup53.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  %sub27 = sub i32 %conv, %file_pos.0143
  %12 = tail call i32 @llvm.umin.i32(i32 %sub27, i32 4096)
  %13 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %d_inode.i, align 8
  %call34 = tail call fastcc ptr @reiserfs_get_page(ptr noundef %14, i32 noundef %file_pos.0143)
  %cmp.i124 = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i124, label %if.then36, label %if.end38

if.then36:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %call34 to i32
  br label %out_unlock

if.end38:                                         ; preds = %while.body
  tail call void @__might_sleep(ptr noundef nonnull @.str.15, i32 noundef 788) #10
  %16 = getelementptr inbounds %struct.page, ptr %call34, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %16, align 4
  %and.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !69

if.then.i.i:                                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %18, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %call34 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %19, %if.end.i.i ]
  %20 = inttoptr i32 %retval.0.i.i to ptr
  %21 = getelementptr inbounds %struct.page, ptr %20, i32 0, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %21, align 4
  %and.i.i.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !69

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %24 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %24, ptr noundef nonnull @.str.16) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !70
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %20, i32 noundef 4) #10
  %25 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %20, align 4
  %and.i.i4.i.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i_crit_edge

folio_flags.exit.i.i.if.then.i_crit_edge:         ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %20, i32 1, i32 3, i32 1) #10
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 1, ptr elementtype(i32) %20) #10, !srcloc !71
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %27, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !72
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i_crit_edge

folio_trylock.exit.i.if.then.i_crit_edge:         ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lock_page.exit

if.then.i:                                        ; preds = %folio_trylock.exit.i.if.then.i_crit_edge, %folio_flags.exit.i.i.if.then.i_crit_edge
  tail call void @__folio_lock(ptr noundef %20) #10
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i, %folio_trylock.exit.i.lock_page.exit_crit_edge
  %call39 = tail call ptr @page_address(ptr noundef %call34) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %file_pos.0143)
  %cmp40 = icmp eq i32 %file_pos.0143, 0
  br i1 %cmp40, label %if.then42, label %lock_page.exit.cleanup53_crit_edge

lock_page.exit.cleanup53_crit_edge:               ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup53

if.then42:                                        ; preds = %lock_page.exit
  %28 = ptrtoint ptr %call39 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %call39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1096304210, i32 %29)
  %cmp44.not = icmp eq i32 %29, 1096304210
  br i1 %cmp44.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  %sub43 = add nsw i32 %12, -8
  %h_hash = getelementptr inbounds %struct.reiserfs_xattr_header, ptr %call39, i32 0, i32 1
  %30 = ptrtoint ptr %h_hash to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %h_hash, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  br label %cleanup53

cleanup:                                          ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @unlock_page(ptr noundef %call34) #10
  tail call fastcc void @reiserfs_put_page(ptr noundef %call34)
  %33 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %34, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.reiserfs_xattr_get, ptr noundef nonnull @.str.5, ptr noundef nonnull %name, ptr noundef %add.ptr.i) #10
  br label %out_unlock

cleanup53:                                        ; preds = %cleanup.thread, %lock_page.exit.cleanup53_crit_edge
  %file_pos.1 = phi i32 [ %file_pos.0143, %lock_page.exit.cleanup53_crit_edge ], [ 8, %cleanup.thread ]
  %hash.2 = phi i32 [ %hash.0145, %lock_page.exit.cleanup53_crit_edge ], [ %32, %cleanup.thread ]
  %chunk.1 = phi i32 [ %12, %lock_page.exit.cleanup53_crit_edge ], [ %sub43, %cleanup.thread ]
  %skip.0 = phi i32 [ 0, %lock_page.exit.cleanup53_crit_edge ], [ 8, %cleanup.thread ]
  %add.ptr = getelementptr i8, ptr %buffer, i32 %buffer_pos.0144
  %add.ptr51 = getelementptr i8, ptr %call39, i32 %skip.0
  %35 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr51, i32 %chunk.1)
  tail call void @unlock_page(ptr noundef %call34) #10
  tail call fastcc void @reiserfs_put_page(ptr noundef %call34)
  %add = add i32 %chunk.1, %file_pos.1
  %add52 = add i32 %chunk.1, %buffer_pos.0144
  %cmp25 = icmp ult i32 %add, %conv
  br i1 %cmp25, label %cleanup53.while.body_crit_edge, label %cleanup53.while.end_crit_edge

cleanup53.while.end_crit_edge:                    ; preds = %cleanup53
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

cleanup53.while.body_crit_edge:                   ; preds = %cleanup53
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %cleanup53.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %hash.0.lcssa = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ %hash.2, %cleanup53.while.end_crit_edge ]
  %call.i = tail call i32 @csum_partial(ptr noundef nonnull %buffer, i32 noundef %sub, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %hash.0.lcssa)
  %cmp61.not = icmp eq i32 %call.i, %hash.0.lcssa
  br i1 %cmp61.not, label %while.end.out_unlock_crit_edge, label %if.then63

while.end.out_unlock_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.then63:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %37, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.reiserfs_xattr_get, ptr noundef nonnull @.str.7, ptr noundef nonnull %name, ptr noundef %add.ptr.i) #10
  br label %out_unlock

out_unlock:                                       ; preds = %if.then63, %while.end.out_unlock_crit_edge, %cleanup, %if.then36, %if.end19.out_unlock_crit_edge, %if.end12.out_unlock_crit_edge
  %err.4 = phi i32 [ -5, %if.then63 ], [ %sub, %while.end.out_unlock_crit_edge ], [ -34, %if.end19.out_unlock_crit_edge ], [ -5, %cleanup ], [ %15, %if.then36 ], [ %sub, %if.end12.out_unlock_crit_edge ]
  tail call void @up_read(ptr noundef %i_xattr_sem) #10
  tail call void @dput(ptr noundef %call8) #10
  br label %cleanup71

cleanup71:                                        ; preds = %out_unlock, %if.then10, %if.end3.cleanup71_crit_edge, %if.end.cleanup71_crit_edge, %entry.cleanup71_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup71_crit_edge ], [ -95, %if.end.cleanup71_crit_edge ], [ 0, %if.end3.cleanup71_crit_edge ], [ %9, %if.then10 ], [ %err.4, %out_unlock ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @reiserfs_listxattr(ptr noundef %dentry, ptr noundef %buffer, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca %struct.listxattr_buf, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #10
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %buf, align 8
  store ptr @listxattr_filler, ptr %buf, align 8
  %pos = getelementptr inbounds %struct.dir_context, ptr %buf, i32 0, i32 1
  %1 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %pos, align 8
  %size1 = getelementptr inbounds %struct.listxattr_buf, ptr %buf, i32 0, i32 1
  %tobool.not = icmp eq ptr %buffer, null
  %spec.select = select i1 %tobool.not, i32 0, i32 %size
  %2 = ptrtoint ptr %size1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %spec.select, ptr %size1, align 8
  %pos2 = getelementptr inbounds %struct.listxattr_buf, ptr %buf, i32 0, i32 2
  %3 = ptrtoint ptr %pos2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %pos2, align 4
  %buf3 = getelementptr inbounds %struct.listxattr_buf, ptr %buf, i32 0, i32 3
  %4 = ptrtoint ptr %buf3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %buffer, ptr %buf3, align 8
  %dentry4 = getelementptr inbounds %struct.listxattr_buf, ptr %buf, i32 0, i32 4
  %5 = ptrtoint ptr %dentry4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dentry, ptr %dentry4, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %6 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode.i, align 8
  %cmp.i = icmp eq ptr %7, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_flags = getelementptr i8, ptr %7, i32 -248
  %8 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_flags, align 8
  %10 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call12 = tail call fastcc ptr @open_xa_dir(ptr noundef nonnull %7, i32 noundef 2)
  %cmp.i44 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i44, label %if.then14, label %if.end19

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %call12 to i32
  %cmp16 = icmp eq ptr %call12, inttoptr (i32 -61 to ptr)
  %spec.store.select = select i1 %cmp16, i32 0, i32 %11
  br label %cleanup

if.end19:                                         ; preds = %if.end10
  %d_inode.i45 = getelementptr inbounds %struct.dentry, ptr %call12, i32 0, i32 5
  %12 = ptrtoint ptr %d_inode.i45 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %d_inode.i45, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 25
  tail call void @down_write_nested(ptr noundef %i_rwsem.i, i32 noundef 3) #10
  %14 = ptrtoint ptr %d_inode.i45 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %d_inode.i45, align 8
  %call23 = call i32 @reiserfs_readdir_inode(ptr noundef %15, ptr noundef nonnull %buf) #10
  %16 = ptrtoint ptr %d_inode.i45 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %d_inode.i45, align 8
  %i_rwsem.i48 = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i48) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool25.not = icmp eq i32 %call23, 0
  br i1 %tobool25.not, label %if.then26, label %if.end19.if.end28_crit_edge

if.end19.if.end28_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then26:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %pos2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pos2, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end19.if.end28_crit_edge
  %err.0 = phi i32 [ %call23, %if.end19.if.end28_crit_edge ], [ %19, %if.then26 ]
  call void @dput(ptr noundef %call12) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then14, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ %spec.store.select, %if.then14 ], [ %err.0, %if.end28 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @listxattr_filler(ptr nocapture noundef %ctx, ptr nocapture noundef readonly %name, i32 noundef %namelen, i64 noundef %offset, i64 noundef %ino, i32 noundef %d_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %1)
  %cmp.not = icmp eq i8 %1, 46
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %namelen)
  %cmp2.not = icmp eq i32 %namelen, 1
  br i1 %cmp2.not, label %lor.lhs.false.cleanup38_crit_edge, label %land.lhs.true

lor.lhs.false.cleanup38_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup38

land.lhs.true:                                    ; preds = %lor.lhs.false
  %arrayidx4 = getelementptr i8, ptr %name, i32 1
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %3)
  %cmp6.not = icmp eq i8 %3, 46
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %namelen)
  %cmp9.not = icmp eq i32 %namelen, 2
  %or.cond = and i1 %cmp9.not, %cmp6.not
  br i1 %or.cond, label %land.lhs.true.cleanup38_crit_edge, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

land.lhs.true.cleanup38_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup38

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %entry.if.then_crit_edge
  %dentry = getelementptr inbounds %struct.listxattr_buf, ptr %ctx, i32 0, i32 4
  %4 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dentry, align 4
  %d_sb = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_sb, align 4
  %s_xattr = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 18
  %8 = ptrtoint ptr %s_xattr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_xattr, align 16
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.then.cleanup38_crit_edge, label %if.then.for.cond.i_crit_edge

if.then.for.cond.i_crit_edge:                     ; preds = %if.then
  br label %for.cond.i

if.then.cleanup38_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup38

for.cond.i:                                       ; preds = %xattr_prefix.exit.i.for.cond.i_crit_edge, %if.then.for.cond.i_crit_edge
  %handlers.pn.i = phi ptr [ %handlers.addr.0.i, %xattr_prefix.exit.i.for.cond.i_crit_edge ], [ %9, %if.then.for.cond.i_crit_edge ]
  %10 = ptrtoint ptr %handlers.pn.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %xah.0.i = load ptr, ptr %handlers.pn.i, align 4
  %handlers.addr.0.i = getelementptr ptr, ptr %handlers.pn.i, i32 1
  %cmp.not.i = icmp eq ptr %xah.0.i, null
  br i1 %cmp.not.i, label %for.cond.i.cleanup38_crit_edge, label %for.body.i

for.cond.i.cleanup38_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup38

for.body.i:                                       ; preds = %for.cond.i
  %prefix.i.i = getelementptr inbounds %struct.xattr_handler, ptr %xah.0.i, i32 0, i32 1
  %11 = ptrtoint ptr %prefix.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prefix.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %cond.false.i.i, label %for.body.i.xattr_prefix.exit.i_crit_edge

for.body.i.xattr_prefix.exit.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xattr_prefix.exit.i

cond.false.i.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %xah.0.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %xah.0.i, align 4
  br label %xattr_prefix.exit.i

xattr_prefix.exit.i:                              ; preds = %cond.false.i.i, %for.body.i.xattr_prefix.exit.i_crit_edge
  %cond.i.i = phi ptr [ %14, %cond.false.i.i ], [ %12, %for.body.i.xattr_prefix.exit.i_crit_edge ]
  %call1.i = tail call i32 @strlen(ptr noundef %cond.i.i) #13
  %call2.i = tail call i32 @strncmp(ptr noundef %cond.i.i, ptr noundef %name, i32 noundef %call1.i) #10
  %cmp3.i = icmp eq i32 %call2.i, 0
  br i1 %cmp3.i, label %lor.lhs.false11, label %xattr_prefix.exit.i.for.cond.i_crit_edge

xattr_prefix.exit.i.for.cond.i_crit_edge:         ; preds = %xattr_prefix.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

lor.lhs.false11:                                  ; preds = %xattr_prefix.exit.i
  %list = getelementptr inbounds %struct.xattr_handler, ptr %xah.0.i, i32 0, i32 3
  %15 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %list, align 4
  %tobool12.not = icmp eq ptr %16, null
  br i1 %tobool12.not, label %lor.lhs.false11.if.end_crit_edge, label %land.lhs.true13

lor.lhs.false11.if.end_crit_edge:                 ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true13:                                  ; preds = %lor.lhs.false11
  %call16 = tail call zeroext i1 %16(ptr noundef %5) #10
  br i1 %call16, label %land.lhs.true13.if.end_crit_edge, label %land.lhs.true13.cleanup38_crit_edge

land.lhs.true13.cleanup38_crit_edge:              ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup38

land.lhs.true13.if.end_crit_edge:                 ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %land.lhs.true13.if.end_crit_edge, %lor.lhs.false11.if.end_crit_edge
  %add = add i32 %namelen, 1
  %buf = getelementptr inbounds %struct.listxattr_buf, ptr %ctx, i32 0, i32 3
  %17 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %buf, align 8
  %tobool18.not = icmp eq ptr %18, null
  br i1 %tobool18.not, label %if.end.cleanup_crit_edge, label %if.then19

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then19:                                        ; preds = %if.end
  %pos = getelementptr inbounds %struct.listxattr_buf, ptr %ctx, i32 0, i32 2
  %19 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pos, align 4
  %add20 = add i32 %20, %add
  %size21 = getelementptr inbounds %struct.listxattr_buf, ptr %ctx, i32 0, i32 1
  %21 = ptrtoint ptr %size21 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size21, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add20, i32 %22)
  %cmp22 = icmp ugt i32 %add20, %22
  br i1 %cmp22, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -34, ptr %pos, align 4
  br label %cleanup38

if.end26:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr29 = getelementptr i8, ptr %18, i32 %20
  %24 = call ptr @memcpy(ptr %add.ptr29, ptr %name, i32 %namelen)
  %25 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %buf, align 8
  %27 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pos, align 4
  %add32 = add i32 %28, %namelen
  %arrayidx33 = getelementptr i8, ptr %26, i32 %add32
  %29 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %arrayidx33, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end.cleanup_crit_edge
  %pos35 = getelementptr inbounds %struct.listxattr_buf, ptr %ctx, i32 0, i32 2
  %30 = ptrtoint ptr %pos35 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pos35, align 4
  %add36 = add i32 %31, %add
  store i32 %add36, ptr %pos35, align 4
  br label %cleanup38

cleanup38:                                        ; preds = %cleanup, %if.then24, %land.lhs.true13.cleanup38_crit_edge, %for.cond.i.cleanup38_crit_edge, %if.then.cleanup38_crit_edge, %land.lhs.true.cleanup38_crit_edge, %lor.lhs.false.cleanup38_crit_edge
  %retval.1 = phi i32 [ 0, %cleanup ], [ 0, %land.lhs.true.cleanup38_crit_edge ], [ 0, %lor.lhs.false.cleanup38_crit_edge ], [ 0, %land.lhs.true13.cleanup38_crit_edge ], [ -34, %if.then24 ], [ 0, %if.then.cleanup38_crit_edge ], [ 0, %for.cond.i.cleanup38_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @open_xa_dir(ptr nocapture noundef readonly %inode, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  %namebuf = alloca [17 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %namebuf) #10
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = call ptr @memset(ptr %namebuf, i32 255, i32 17)
  %1 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 33
  %3 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fs_info.i.i, align 16
  %priv_root.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %4, i32 0, i32 31
  %5 = ptrtoint ptr %priv_root.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv_root.i, align 4
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %d_inode.i.i, align 8
  %cmp.i.i = icmp eq ptr %8, null
  br i1 %cmp.i.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 25
  tail call void @down_write_nested(ptr noundef %i_rwsem.i.i, i32 noundef 3) #10
  %9 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fs_info.i.i, align 16
  %xattr_root.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %10, i32 0, i32 32
  %11 = ptrtoint ptr %xattr_root.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %xattr_root.i, align 4
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %if.end.i.open_xa_root.exit_crit_edge, label %if.else.i

if.end.i.open_xa_root.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %open_xa_root.exit

if.else.i:                                        ; preds = %if.end.i
  %d_lockref.i.i = getelementptr inbounds %struct.dentry, ptr %12, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i.i) #10
  %d_inode.i36.i = getelementptr inbounds %struct.dentry, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %d_inode.i36.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %d_inode.i36.i, align 8
  %cmp.i37.i = icmp eq ptr %14, null
  br i1 %cmp.i37.i, label %if.then9.i, label %if.else.i.open_xa_root.exit_crit_edge

if.else.i.open_xa_root.exit_crit_edge:            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %open_xa_root.exit

if.then9.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags)
  %tobool10.not.i = icmp ne i32 %flags, 0
  %and.i = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool11.not.i = icmp eq i32 %and.i, 0
  %or.cond.i = and i1 %tobool10.not.i, %tobool11.not.i
  br i1 %or.cond.i, label %if.then9.i.if.then17.i_crit_edge, label %if.then12.i

if.then9.i.if.then17.i_crit_edge:                 ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17.i

if.then12.i:                                      ; preds = %if.then9.i
  %15 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %d_inode.i.i, align 8
  %i_rwsem.i.i.i = getelementptr inbounds %struct.inode, ptr %16, i32 0, i32 25
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_rwsem.i.i.i, i32 noundef 4) #10
  %17 = ptrtoint ptr %i_rwsem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %i_rwsem.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i.i.not.i.i = icmp eq i32 %18, 0
  br i1 %cmp.i.i.not.i.i, label %do.body4.i.i, label %if.end15.i, !prof !66

do.body4.i.i:                                     ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/xattr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 75, 0\0A.popsection", ""() #10, !srcloc !87
  unreachable

if.end15.i:                                       ; preds = %if.then12.i
  %i_op.i.i = getelementptr inbounds %struct.inode, ptr %16, i32 0, i32 7
  %19 = ptrtoint ptr %i_op.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_op.i.i, align 8
  %mkdir.i.i = getelementptr inbounds %struct.inode_operations, ptr %20, i32 0, i32 9
  %21 = ptrtoint ptr %mkdir.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mkdir.i.i, align 4
  %call8.i.i = tail call i32 %22(ptr noundef nonnull @init_user_ns, ptr noundef %16, ptr noundef nonnull %12, i16 noundef zeroext 448) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool16.not.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool16.not.i, label %if.end15.i.open_xa_root.exit_crit_edge, label %if.end15.i.if.then17.i_crit_edge

if.end15.i.if.then17.i_crit_edge:                 ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17.i

if.end15.i.open_xa_root.exit_crit_edge:           ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %open_xa_root.exit

if.then17.i:                                      ; preds = %if.end15.i.if.then17.i_crit_edge, %if.then9.i.if.then17.i_crit_edge
  %err.043.i = phi i32 [ %call8.i.i, %if.end15.i.if.then17.i_crit_edge ], [ -61, %if.then9.i.if.then17.i_crit_edge ]
  tail call void @dput(ptr noundef nonnull %12) #10
  %23 = inttoptr i32 %err.043.i to ptr
  br label %open_xa_root.exit

open_xa_root.exit:                                ; preds = %if.then17.i, %if.end15.i.open_xa_root.exit_crit_edge, %if.else.i.open_xa_root.exit_crit_edge, %if.end.i.open_xa_root.exit_crit_edge
  %xaroot.1.i = phi ptr [ %12, %if.else.i.open_xa_root.exit_crit_edge ], [ %23, %if.then17.i ], [ %12, %if.end15.i.open_xa_root.exit_crit_edge ], [ inttoptr (i32 -95 to ptr), %if.end.i.open_xa_root.exit_crit_edge ]
  %24 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %d_inode.i.i, align 8
  %i_rwsem.i40.i = getelementptr inbounds %struct.inode, ptr %25, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i40.i) #10
  %cmp.i = icmp ugt ptr %xaroot.1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %open_xa_root.exit.cleanup_crit_edge, label %if.end

open_xa_root.exit.cleanup_crit_edge:              ; preds = %open_xa_root.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %open_xa_root.exit
  %k_objectid = getelementptr i8, ptr %inode, i32 -260
  %26 = ptrtoint ptr %k_objectid to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %k_objectid, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %i_generation = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 49
  %29 = ptrtoint ptr %i_generation to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %i_generation, align 8
  %call4 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %namebuf, i32 noundef 17, ptr noundef nonnull @.str.19, i32 noundef %28, i32 noundef %30)
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %xaroot.1.i, i32 0, i32 5
  %31 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %32, i32 0, i32 25
  tail call void @down_write_nested(ptr noundef %i_rwsem.i, i32 noundef 3) #10
  %call8 = call i32 @strlen(ptr noundef nonnull %namebuf) #14
  %call9 = call ptr @lookup_one_len(ptr noundef nonnull %namebuf, ptr noundef %xaroot.1.i, i32 noundef %call8) #10
  %cmp.i41 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i41, label %if.end.if.end22_crit_edge, label %land.lhs.true

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

land.lhs.true:                                    ; preds = %if.end
  %d_inode.i42 = getelementptr inbounds %struct.dentry, ptr %call9, i32 0, i32 5
  %33 = ptrtoint ptr %d_inode.i42 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %d_inode.i42, align 8
  %cmp.i43 = icmp eq ptr %34, null
  br i1 %cmp.i43, label %if.then12, label %land.lhs.true.if.end22_crit_edge

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags)
  %tobool.not = icmp ne i32 %flags, 0
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  %or.cond = and i1 %tobool.not, %tobool13.not
  br i1 %or.cond, label %if.then12.if.then19_crit_edge, label %if.then14

if.then12.if.then19_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

if.then14:                                        ; preds = %if.then12
  %35 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i.i45 = getelementptr inbounds %struct.inode, ptr %36, i32 0, i32 25
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %i_rwsem.i.i45, i32 noundef 4) #10
  %37 = ptrtoint ptr %i_rwsem.i.i45 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %i_rwsem.i.i45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.i.i.not.i = icmp eq i32 %38, 0
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %if.end17, !prof !66

do.body4.i:                                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/xattr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 75, 0\0A.popsection", ""() #10, !srcloc !87
  unreachable

if.end17:                                         ; preds = %if.then14
  %i_op.i = getelementptr inbounds %struct.inode, ptr %36, i32 0, i32 7
  %39 = ptrtoint ptr %i_op.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i_op.i, align 8
  %mkdir.i = getelementptr inbounds %struct.inode_operations, ptr %40, i32 0, i32 9
  %41 = ptrtoint ptr %mkdir.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mkdir.i, align 4
  %call8.i = call i32 %42(ptr noundef nonnull @init_user_ns, ptr noundef %36, ptr noundef %call9, i16 noundef zeroext 448) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool18.not = icmp eq i32 %call8.i, 0
  br i1 %tobool18.not, label %if.end17.if.end22_crit_edge, label %if.end17.if.then19_crit_edge

if.end17.if.then19_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

if.end17.if.end22_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then19:                                        ; preds = %if.end17.if.then19_crit_edge, %if.then12.if.then19_crit_edge
  %err.052 = phi i32 [ %call8.i, %if.end17.if.then19_crit_edge ], [ -61, %if.then12.if.then19_crit_edge ]
  call void @dput(ptr noundef %call9) #10
  %43 = inttoptr i32 %err.052 to ptr
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end17.if.end22_crit_edge, %land.lhs.true.if.end22_crit_edge, %if.end.if.end22_crit_edge
  %xadir.1 = phi ptr [ %call9, %if.end.if.end22_crit_edge ], [ %call9, %land.lhs.true.if.end22_crit_edge ], [ %43, %if.then19 ], [ %call9, %if.end17.if.end22_crit_edge ]
  %44 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i47 = getelementptr inbounds %struct.inode, ptr %45, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i47) #10
  call void @dput(ptr noundef %xaroot.1.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %open_xa_root.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %xadir.1, %if.end22 ], [ %xaroot.1.i, %open_xa_root.exit.cleanup_crit_edge ], [ inttoptr (i32 -95 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %namebuf) #10
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_readdir_inode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @reiserfs_permission(ptr nocapture noundef readnone %mnt_userns, ptr noundef %inode, i32 noundef %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %0 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_flags, align 4
  %and = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @generic_permission(ptr noundef nonnull @init_user_ns, ptr noundef %inode, i32 noundef %mask) #10
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @reiserfs_lookup_privroot(ptr nocapture noundef readonly %s) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %s_root = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 13
  %0 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_root, align 64
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #10
  %4 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_root, align 64
  %call2 = tail call ptr @lookup_one_len(ptr noundef nonnull @.str.8, ptr noundef %5, i32 noundef 14) #10
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %priv_root = getelementptr inbounds %struct.reiserfs_sb_info, ptr %7, i32 0, i32 31
  %8 = ptrtoint ptr %priv_root to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call2, ptr %priv_root, align 4
  tail call void @d_set_d_op(ptr noundef %call2, ptr noundef nonnull @xattr_lookup_poison_ops) #10
  %d_inode.i23 = getelementptr inbounds %struct.dentry, ptr %call2, i32 0, i32 5
  %9 = ptrtoint ptr %d_inode.i23 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %d_inode.i23, align 8
  %cmp.i24.not = icmp eq ptr %10, null
  br i1 %cmp.i24.not, label %if.then.if.end11_crit_edge, label %if.then6

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %i_flags = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_flags, align 4
  %or = or i32 %12, 512
  store i32 %or, ptr %i_flags, align 4
  %13 = ptrtoint ptr %d_inode.i23 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %d_inode.i23, align 8
  %i_opflags = getelementptr inbounds %struct.inode, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %i_opflags to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %i_opflags, align 2
  %17 = and i16 %16, -9
  store i16 %17, ptr %i_opflags, align 2
  br label %if.end11

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %call2 to i32
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then6, %if.then.if.end11_crit_edge
  %err.0 = phi i32 [ %18, %if.else ], [ 0, %if.then6 ], [ 0, %if.then.if.end11_crit_edge ]
  %19 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_root, align 64
  %d_inode.i27 = getelementptr inbounds %struct.dentry, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %d_inode.i27 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %d_inode.i27, align 8
  %i_rwsem.i28 = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i28) #10
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_one_len(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_set_d_op(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @reiserfs_xattr_init(ptr noundef %s, i32 noundef %mount_flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %priv_root = getelementptr inbounds %struct.reiserfs_sb_info, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %priv_root to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv_root, align 4
  %s_properties.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %s_properties.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_properties.i, align 4
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.then.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.i:                                        ; preds = %entry
  %s_mount_opt.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %s_mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_mount_opt.i, align 4
  %8 = and i32 %7, 98304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %if.then.i.if.end_crit_edge, label %error.thread

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

error.thread:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.xattr_mount_check, ptr noundef nonnull @.str.21) #10
  br label %if.then29

if.end:                                           ; preds = %if.then.i.if.end_crit_edge, %entry.if.end_crit_edge
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d_inode.i, align 8
  %cmp.i = icmp eq ptr %11, null
  %and = and i32 %mount_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  %or.cond = and i1 %tobool3.not, %cmp.i
  br i1 %or.cond, label %if.then4, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then4:                                         ; preds = %if.end
  %s_root = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 13
  %12 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_root, align 64
  %d_inode.i62 = getelementptr inbounds %struct.dentry, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %d_inode.i62 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %d_inode.i62, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #10
  %16 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_fs_info.i, align 16
  %priv_root7 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %17, i32 0, i32 31
  %18 = ptrtoint ptr %priv_root7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv_root7, align 4
  %d_parent.i = getelementptr inbounds %struct.dentry, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %d_parent.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %d_parent.i, align 8
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %d_inode.i.i, align 8
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 25
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_rwsem.i.i, i32 noundef 4) #10
  %24 = ptrtoint ptr %i_rwsem.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %i_rwsem.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i.i.not.i = icmp eq i32 %25, 0
  br i1 %cmp.i.i.not.i, label %land.rhs.i, label %if.then4.if.end30.i_crit_edge

if.then4.if.end30.i_crit_edge:                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30.i

land.rhs.i:                                       ; preds = %if.then4
  %.b57.i = load i1, ptr @create_privroot.__already_done, align 1
  br i1 %.b57.i, label %land.rhs.i.if.end30.i_crit_edge, label %if.then.i64, !prof !69

land.rhs.i.if.end30.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30.i

if.then.i64:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @create_privroot.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 887, i32 noundef 9, ptr noundef null) #10
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then.i64, %land.rhs.i.if.end30.i_crit_edge, %if.then4.if.end30.i_crit_edge
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_rwsem.i.i, i32 noundef 4) #10
  %26 = ptrtoint ptr %i_rwsem.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %i_rwsem.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i.i.not.i.i = icmp eq i32 %27, 0
  br i1 %cmp.i.i.not.i.i, label %do.body4.i.i, label %xattr_mkdir.exit.i, !prof !66

do.body4.i.i:                                     ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/xattr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 75, 0\0A.popsection", ""() #10, !srcloc !87
  unreachable

xattr_mkdir.exit.i:                               ; preds = %if.end30.i
  %i_op.i.i = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 7
  %28 = ptrtoint ptr %i_op.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i_op.i.i, align 8
  %mkdir.i.i = getelementptr inbounds %struct.inode_operations, ptr %29, i32 0, i32 9
  %30 = ptrtoint ptr %mkdir.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mkdir.i.i, align 4
  %call8.i.i = tail call i32 %31(ptr noundef nonnull @init_user_ns, ptr noundef %23, ptr noundef %19, i16 noundef zeroext 448) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool39.not.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool39.not.i, label %lor.lhs.false.i, label %xattr_mkdir.exit.i.if.then41.i_crit_edge

xattr_mkdir.exit.i.if.then41.i_crit_edge:         ; preds = %xattr_mkdir.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then41.i

lor.lhs.false.i:                                  ; preds = %xattr_mkdir.exit.i
  %d_inode.i58.i = getelementptr inbounds %struct.dentry, ptr %19, i32 0, i32 5
  %32 = ptrtoint ptr %d_inode.i58.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %d_inode.i58.i, align 8
  %cmp.i.i = icmp eq ptr %33, null
  br i1 %cmp.i.i, label %lor.lhs.false.i.if.then41.i_crit_edge, label %if.end42.i

lor.lhs.false.i.if.then41.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then41.i

if.then41.i:                                      ; preds = %lor.lhs.false.i.if.then41.i_crit_edge, %xattr_mkdir.exit.i.if.then41.i_crit_edge
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %19, i32 0, i32 9
  %34 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %d_sb.i, align 4
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %35, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.create_privroot, ptr noundef nonnull @.str.23) #10
  br label %create_privroot.exit

if.end42.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %33, i32 0, i32 4
  %36 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %i_flags.i, align 4
  %or.i = or i32 %37, 512
  store i32 %or.i, ptr %i_flags.i, align 4
  %38 = ptrtoint ptr %d_inode.i58.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %d_inode.i58.i, align 8
  %i_opflags.i = getelementptr inbounds %struct.inode, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %i_opflags.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %i_opflags.i, align 2
  %42 = and i16 %41, -9
  store i16 %42, ptr %i_opflags.i, align 2
  %d_sb46.i = getelementptr inbounds %struct.dentry, ptr %19, i32 0, i32 9
  %43 = ptrtoint ptr %d_sb46.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %d_sb46.i, align 4
  tail call void (ptr, ptr, ...) @reiserfs_info(ptr noundef %44, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.8) #10
  br label %create_privroot.exit

create_privroot.exit:                             ; preds = %if.end42.i, %if.then41.i
  %retval.0.i65 = phi i32 [ -95, %if.then41.i ], [ 0, %if.end42.i ]
  %45 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %s_root, align 64
  %d_inode.i66 = getelementptr inbounds %struct.dentry, ptr %46, i32 0, i32 5
  %47 = ptrtoint ptr %d_inode.i66 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %d_inode.i66, align 8
  %i_rwsem.i67 = getelementptr inbounds %struct.inode, ptr %48, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i67) #10
  %49 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pr = load ptr, ptr %d_inode.i, align 8
  br label %if.end11

if.end11:                                         ; preds = %create_privroot.exit, %if.end.if.end11_crit_edge
  %50 = phi ptr [ %.pr, %create_privroot.exit ], [ %11, %if.end.if.end11_crit_edge ]
  %err.0 = phi i32 [ %retval.0.i65, %create_privroot.exit ], [ 0, %if.end.if.end11_crit_edge ]
  %cmp.i69.not = icmp eq ptr %50, null
  br i1 %cmp.i69.not, label %if.end11.error_crit_edge, label %if.then13

if.end11.error_crit_edge:                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.then13:                                        ; preds = %if.end11
  %i_rwsem.i71 = getelementptr inbounds %struct.inode, ptr %50, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i71) #10
  %51 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %s_fs_info.i, align 16
  %xattr_root = getelementptr inbounds %struct.reiserfs_sb_info, ptr %52, i32 0, i32 32
  %53 = ptrtoint ptr %xattr_root to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %xattr_root, align 4
  %tobool16.not = icmp eq ptr %54, null
  br i1 %tobool16.not, label %if.then17, label %if.then13.if.end25_crit_edge

if.then13.if.end25_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then17:                                        ; preds = %if.then13
  %call18 = tail call ptr @lookup_one_len(ptr noundef nonnull @.str.9, ptr noundef %3, i32 noundef 6) #10
  %cmp.i73 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i73, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %s_fs_info.i, align 16
  %xattr_root22 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %56, i32 0, i32 32
  %57 = ptrtoint ptr %xattr_root22 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call18, ptr %xattr_root22, align 4
  br label %if.end25

if.else:                                          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %call18 to i32
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then20, %if.then13.if.end25_crit_edge
  %err.2 = phi i32 [ %err.0, %if.then13.if.end25_crit_edge ], [ %58, %if.else ], [ %err.0, %if.then20 ]
  %59 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i76 = getelementptr inbounds %struct.inode, ptr %60, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i76) #10
  br label %error

error:                                            ; preds = %if.end25, %if.end11.error_crit_edge
  %err.3 = phi i32 [ %err.2, %if.end25 ], [ %err.0, %if.end11.error_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.3)
  %tobool28.not = icmp eq i32 %err.3, 0
  br i1 %tobool28.not, label %error.if.end33_crit_edge, label %error.if.then29_crit_edge

error.if.then29_crit_edge:                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then29

error.if.end33_crit_edge:                         ; preds = %error
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then29:                                        ; preds = %error.if.then29_crit_edge, %error.thread
  %err.384 = phi i32 [ -95, %error.thread ], [ %err.3, %error.if.then29_crit_edge ]
  %61 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt = getelementptr inbounds %struct.reiserfs_sb_info, ptr %62, i32 0, i32 11
  tail call void @_clear_bit(i32 noundef 15, ptr noundef %s_mount_opt) #10
  %63 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt32 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %64, i32 0, i32 11
  tail call void @_clear_bit(i32 noundef 16, ptr noundef %s_mount_opt32) #10
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %error.if.end33_crit_edge
  %err.385 = phi i32 [ %err.384, %if.then29 ], [ 0, %error.if.end33_crit_edge ]
  %65 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt35 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %66, i32 0, i32 11
  %67 = ptrtoint ptr %s_mount_opt35 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %s_mount_opt35, align 4
  %and36 = and i32 %68, 65536
  %s_flags40 = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 10
  %69 = ptrtoint ptr %s_flags40 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %s_flags40, align 4
  %and41 = and i32 %70, -65537
  %and41.sink = or i32 %and41, %and36
  store i32 %and41.sink, ptr %s_flags40, align 4
  ret i32 %err.385
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fill_with_dentries(ptr nocapture noundef %ctx, ptr noundef %name, i32 noundef %namelen, i64 noundef %offset, i64 noundef %ino, i32 noundef %d_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %xadir = getelementptr inbounds %struct.reiserfs_dentry_buf, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %xadir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xadir, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 25
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_rwsem.i, i32 noundef 4) #10
  %4 = ptrtoint ptr %i_rwsem.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %i_rwsem.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.i.not = icmp eq i32 %5, 0
  br i1 %cmp.i.i.not, label %land.rhs, label %entry.if.end31_crit_edge

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

land.rhs:                                         ; preds = %entry
  %.b89 = load i1, ptr @fill_with_dentries.__already_done, align 1
  br i1 %.b89, label %land.rhs.if.end31_crit_edge, label %if.then, !prof !69

land.rhs.if.end31_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @fill_with_dentries.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 200, i32 noundef 9, ptr noundef null) #10
  br label %if.end31

if.end31:                                         ; preds = %if.then, %land.rhs.if.end31_crit_edge, %entry.if.end31_crit_edge
  %count = getelementptr inbounds %struct.reiserfs_dentry_buf, ptr %ctx, i32 0, i32 2
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %7)
  %cmp = icmp eq i32 %7, 8
  br i1 %cmp, label %if.end31.cleanup_crit_edge, label %if.end40

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end40:                                         ; preds = %if.end31
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %9)
  %cmp41 = icmp eq i8 %9, 46
  br i1 %cmp41, label %land.lhs.true, label %if.end40.if.end53_crit_edge

if.end40.if.end53_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

land.lhs.true:                                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %namelen)
  %cmp43 = icmp slt i32 %namelen, 2
  br i1 %cmp43, label %land.lhs.true.cleanup_crit_edge, label %lor.lhs.false

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %namelen)
  %cmp45 = icmp eq i32 %namelen, 2
  br i1 %cmp45, label %land.lhs.true47, label %lor.lhs.false.if.end53_crit_edge

lor.lhs.false.if.end53_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

land.lhs.true47:                                  ; preds = %lor.lhs.false
  %arrayidx48 = getelementptr i8, ptr %name, i32 1
  %10 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx48, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %11)
  %cmp50 = icmp eq i8 %11, 46
  br i1 %cmp50, label %land.lhs.true47.cleanup_crit_edge, label %land.lhs.true47.if.end53_crit_edge

land.lhs.true47.if.end53_crit_edge:               ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

land.lhs.true47.cleanup_crit_edge:                ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end53:                                         ; preds = %land.lhs.true47.if.end53_crit_edge, %lor.lhs.false.if.end53_crit_edge, %if.end40.if.end53_crit_edge
  %12 = ptrtoint ptr %xadir to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xadir, align 8
  %call55 = tail call ptr @lookup_one_len(ptr noundef %name, ptr noundef %13, i32 noundef %namelen) #10
  %cmp.i = icmp ugt ptr %call55, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then57, label %if.else

if.then57:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %call55 to i32
  %err = getelementptr inbounds %struct.reiserfs_dentry_buf, ptr %ctx, i32 0, i32 3
  %15 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %err, align 8
  br label %cleanup

if.else:                                          ; preds = %if.end53
  %d_inode.i90 = getelementptr inbounds %struct.dentry, ptr %call55, i32 0, i32 5
  %16 = ptrtoint ptr %d_inode.i90 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %d_inode.i90, align 8
  %cmp.i91 = icmp eq ptr %17, null
  br i1 %cmp.i91, label %if.then61, label %if.end65

if.then61:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %d_sb = getelementptr inbounds %struct.dentry, ptr %call55, i32 0, i32 9
  %18 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %d_sb, align 4
  %20 = ptrtoint ptr %xadir to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %xadir, align 8
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_error(ptr noundef %19, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.fill_with_dentries, ptr noundef nonnull @.str.12, ptr noundef %call55, ptr noundef %21) #10
  tail call void @dput(ptr noundef %call55) #10
  %err63 = getelementptr inbounds %struct.reiserfs_dentry_buf, ptr %ctx, i32 0, i32 3
  %22 = ptrtoint ptr %err63 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -5, ptr %err63, align 8
  br label %cleanup

if.end65:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %count, align 4
  %inc = add i32 %24, 1
  store i32 %inc, ptr %count, align 4
  %arrayidx67 = getelementptr %struct.reiserfs_dentry_buf, ptr %ctx, i32 0, i32 4, i32 %24
  %25 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call55, ptr %arrayidx67, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %if.then61, %if.then57, %land.lhs.true47.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end31.cleanup_crit_edge
  %retval.0 = phi i32 [ %14, %if.then57 ], [ -5, %if.then61 ], [ 0, %if.end65 ], [ -28, %if.end31.cleanup_crit_edge ], [ 0, %land.lhs.true47.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__reiserfs_error(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_cache_page(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xattr_hide_revalidate(ptr nocapture noundef readnone %dentry, i32 noundef %flags) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nobuiltin nounwind }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !17, !19, !21, !23, !24, !26, !27, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !47, !48, !50, !52, !53, !54}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/reiserfs/xattr.c", i32 367, i32 3}
!2 = !{ptr @__func__.reiserfs_delete_xattrs, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/reiserfs/xattr.c", i32 378, i32 3}
!6 = !{ptr @__func__.reiserfs_chown_xattrs, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/reiserfs/xattr.c", i32 732, i32 5}
!10 = !{ptr @__func__.reiserfs_xattr_get, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/reiserfs/xattr.c", i32 752, i32 3}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @reiserfs_xattr_handlers, !16, !"reiserfs_xattr_handlers", i1 false, i1 false}
!16 = !{!"../fs/reiserfs/xattr.c", i32 913, i32 29}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/reiserfs/xattr.c", i32 980, i32 26}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/reiserfs/xattr.c", i32 1021, i32 28}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../fs/reiserfs/xattr.c", i32 200, i32 2}
!23 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/reiserfs/xattr.c", i32 215, i32 3}
!26 = !{ptr @__func__.fill_with_dentries, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../include/linux/page-flags.h", i32 416, i32 1}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../include/linux/pagemap.h", i32 788, i32 2}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!36 = distinct !{null, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../include/linux/mm.h", i32 717, i32 2}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/reiserfs/xattr.c", i32 156, i32 37}
!42 = !{ptr @xattr_lookup_poison_ops, !43, !"xattr_lookup_poison_ops", i1 false, i1 false}
!43 = !{!"../fs/reiserfs/xattr.c", i32 969, i32 39}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/reiserfs/xattr.c", i32 940, i32 4}
!46 = !{ptr @__func__.xattr_mount_check, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!48 = distinct !{null, !49, !"__already_done", i1 false, i1 false}
!49 = !{!"../fs/reiserfs/xattr.c", i32 887, i32 2}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/reiserfs/xattr.c", i32 891, i32 3}
!52 = !{ptr @__func__.create_privroot, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/reiserfs/xattr.c", i32 900, i32 30}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{ptr @chown_one_xattr, ptr @delete_one_xattr}
!66 = !{!"branch_weights", i32 1, i32 2000}
!67 = !{i64 2154294745, i64 2154295229, i64 2154294782, i64 2154294838, i64 2154294872, i64 2154294896, i64 2154294937, i64 2154294958, i64 2154294986, i64 2154295020}
!68 = !{i64 2154293148, i64 2154293631, i64 2154293185, i64 2154293241, i64 2154293275, i64 2154293299, i64 2154293340, i64 2154293361, i64 2154293389, i64 2154293423}
!69 = !{!"branch_weights", i32 2000, i32 1}
!70 = !{i64 2150285477, i64 2150285968, i64 2150285514, i64 2150285570, i64 2150285604, i64 2150285628, i64 2150285669, i64 2150285690, i64 2150285718, i64 2150285752}
!71 = !{i64 2148737799, i64 2148737831, i64 2148737860, i64 2148737894, i64 2148737925, i64 2148737948}
!72 = !{i64 2148826904}
!73 = !{i64 2154285897, i64 2154286380, i64 2154285934, i64 2154285990, i64 2154286024, i64 2154286048, i64 2154286089, i64 2154286110, i64 2154286138, i64 2154286172}
!74 = !{i64 2150342570, i64 2150343061, i64 2150342607, i64 2150342663, i64 2150342697, i64 2150342721, i64 2150342762, i64 2150342783, i64 2150342811, i64 2150342845}
!75 = !{i64 2153760998, i64 2153761481, i64 2153761035, i64 2153761091, i64 2153761125, i64 2153761149, i64 2153761190, i64 2153761211, i64 2153761239, i64 2153761273}
!76 = !{i64 2148817417}
!77 = !{i64 2148732126, i64 2148732158, i64 2148732187, i64 2148732221, i64 2148732252, i64 2148732275}
!78 = !{i64 2148817646}
!79 = !{i64 2148349667, i64 2148349672, i64 2148349685, i64 2148349729, i64 2148349763, i64 2148349784}
!80 = !{i64 1133621, i64 1133682}
!81 = !{i64 1136353}
!82 = !{i64 1136638}
!83 = !{i64 2153450840}
!84 = !{i64 2153450682}
!85 = !{i64 2153451010}
!86 = !{i64 2149908340}
!87 = !{i64 2154291553, i64 2154292036, i64 2154291590, i64 2154291646, i64 2154291680, i64 2154291704, i64 2154291745, i64 2154291766, i64 2154291794, i64 2154291828}
