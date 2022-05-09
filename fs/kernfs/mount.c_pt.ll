; ModuleID = '/llk/IR_all_yes/fs/kernfs/mount.c_pt.bc'
source_filename = "../fs/kernfs/mount.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.export_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.72, %struct.list_head, %struct.list_head, %union.anon.73 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%union.anon.72 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.73 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.74, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.75, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.76, ptr, %struct.address_space, %struct.list_head, %union.anon.77, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.74 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.75 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.76 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.77 = type { ptr }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.lockdep_map, ptr, ptr, %struct.rb_node, ptr, i32, %union.anon.78, ptr, i64, i16, i16, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.78 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { ptr, ptr, i64, ptr }
%struct.kernfs_root = type { ptr, i32, %struct.idr, i32, i32, ptr, %struct.list_head, %struct.wait_queue_head, %struct.rw_semaphore }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kernfs_syscall_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kernfs_super_info = type { ptr, ptr, ptr, %struct.list_head }
%struct.fs_context = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.p_log, ptr, ptr, ptr, i32, i32, i32, i32, i24 }
%struct.p_log = type { ptr, ptr }
%struct.kernfs_fs_context = type { ptr, ptr, i32, i8 }
%struct.anon.70 = type { i32, i32, i32, i32 }

@kernfs_sops = dso_local constant { %struct.super_operations, [60 x i8] } { %struct.super_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @generic_delete_inode, ptr @kernfs_evict_inode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @simple_statfs, ptr null, ptr null, ptr @kernfs_sop_show_options, ptr null, ptr @kernfs_sop_show_path, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/kernfs/mount.c\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"kernfs_node_cache\00", [46 x i8] zeroinitializer }, align 32
@kernfs_node_cache = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"kernfs_iattrs_cache\00", [44 x i8] zeroinitializer }, align 32
@kernfs_iattrs_cache = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" \09\0A\\\00", [27 x i8] zeroinitializer }, align 32
@find_next_ancestor.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@find_next_ancestor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str, i32 177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\012BUG in find_next_ancestor: called with parent == child\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"find_next_ancestor\00", [45 x i8] zeroinitializer }, align 32
@find_next_ancestor._entry_ptr = internal global ptr @find_next_ancestor._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@kernfs_xattr_handlers = external dso_local global [0 x ptr], align 4
@kernfs_export_ops = internal constant { %struct.export_operations, [52 x i8] } { %struct.export_operations { ptr @kernfs_encode_fh, ptr @kernfs_fh_to_dentry, ptr @kernfs_fh_to_parent, ptr null, ptr @kernfs_get_parent_dentry, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [52 x i8] zeroinitializer }, align 32
@kernfs_fill_super.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str, ptr @.str.8, i8 0, i8 65, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mount\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"kernfs_fill_super\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"kernfs: could not get root inode\0A\00", [62 x i8] zeroinitializer }, align 32
@kernfs_fill_super.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str, ptr @.str.9, i8 0, i8 67, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: could not get root dentry!\0A\00", [32 x i8] zeroinitializer }, align 32
@kernfs_dops = external dso_local constant %struct.dentry_operations, align 128
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 254]
@__sancov_gen_cov_switch_values.10 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 254]
@___asan_gen_.11 = private unnamed_addr constant [12 x i8] c"kernfs_sops\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 47, i32 31 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 210, i32 6 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 392, i32 40 }
@___asan_gen_.20 = private unnamed_addr constant [18 x i8] c"kernfs_node_cache\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 22, i32 20 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 397, i32 43 }
@___asan_gen_.26 = private unnamed_addr constant [20 x i8] c"kernfs_iattrs_cache\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 22, i32 40 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 43, i32 25 }
@___asan_gen_.32 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 177, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant [18 x i8] c"kernfs_export_ops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 144, i32 39 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 263, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.54 = private constant [21 x i8] c"../fs/kernfs/mount.c\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 270, i32 3 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @find_next_ancestor._entry, ptr @find_next_ancestor._entry_ptr, ptr @kernfs_sops, ptr @.str, ptr @.str.1, ptr @kernfs_node_cache, ptr @.str.2, ptr @kernfs_iattrs_cache, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @kernfs_export_ops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kernfs_sops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kernfs_node_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kernfs_iattrs_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_next_ancestor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kernfs_export_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_delete_inode(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_evict_inode(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_statfs(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kernfs_sop_show_options(ptr noundef %sf, ptr nocapture noundef readonly %dentry) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i.i, align 8
  %cmp.i.i = icmp eq ptr %1, null
  br i1 %cmp.i.i, label %entry.kernfs_dentry_node.exit_crit_edge, label %if.end.i

entry.kernfs_dentry_node.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %kernfs_dentry_node.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %i_private.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private.i, align 4
  br label %kernfs_dentry_node.exit

kernfs_dentry_node.exit:                          ; preds = %if.end.i, %entry.kernfs_dentry_node.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ null, %entry.kernfs_dentry_node.exit_crit_edge ]
  %parent.i = getelementptr inbounds %struct.kernfs_node, ptr %retval.0.i, i32 0, i32 3
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  %spec.select.i = select i1 %tobool.not.i, ptr %retval.0.i, ptr %5
  %root.i = getelementptr inbounds %struct.kernfs_node, ptr %spec.select.i, i32 0, i32 8, i32 0, i32 2
  %6 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %root.i, align 8
  %syscall_ops = getelementptr inbounds %struct.kernfs_root, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %syscall_ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %syscall_ops, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %kernfs_dentry_node.exit.cleanup_crit_edge, label %land.lhs.true

kernfs_dentry_node.exit.cleanup_crit_edge:        ; preds = %kernfs_dentry_node.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %kernfs_dentry_node.exit
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool2.not = icmp eq ptr %11, null
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 %11(ptr noundef %sf, ptr noundef %7) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true.cleanup_crit_edge, %kernfs_dentry_node.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.then ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %kernfs_dentry_node.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kernfs_sop_show_path(ptr noundef %sf, ptr noundef %dentry) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i.i, align 8
  %cmp.i.i = icmp eq ptr %1, null
  br i1 %cmp.i.i, label %entry.kernfs_dentry_node.exit_crit_edge, label %if.end.i

entry.kernfs_dentry_node.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %kernfs_dentry_node.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %i_private.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private.i, align 4
  br label %kernfs_dentry_node.exit

kernfs_dentry_node.exit:                          ; preds = %if.end.i, %entry.kernfs_dentry_node.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ null, %entry.kernfs_dentry_node.exit_crit_edge ]
  %parent.i = getelementptr inbounds %struct.kernfs_node, ptr %retval.0.i, i32 0, i32 3
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  %spec.select.i = select i1 %tobool.not.i, ptr %retval.0.i, ptr %5
  %root.i = getelementptr inbounds %struct.kernfs_node, ptr %spec.select.i, i32 0, i32 8, i32 0, i32 2
  %6 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %root.i, align 8
  %syscall_ops = getelementptr inbounds %struct.kernfs_root, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %syscall_ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %syscall_ops, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %kernfs_dentry_node.exit.if.end_crit_edge, label %land.lhs.true

kernfs_dentry_node.exit.if.end_crit_edge:         ; preds = %kernfs_dentry_node.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %kernfs_dentry_node.exit
  %show_path = getelementptr inbounds %struct.kernfs_syscall_ops, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %show_path to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %show_path, align 4
  %tobool2.not = icmp eq ptr %11, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 %11(ptr noundef %sf, ptr noundef %retval.0.i, ptr noundef %7) #8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %kernfs_dentry_node.exit.if.end_crit_edge
  %call5 = tail call i32 @seq_dentry(ptr noundef %sf, ptr noundef %dentry, ptr noundef nonnull @.str.3) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call4, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @kernfs_root_from_sb(ptr nocapture noundef readonly %sb) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %s_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 6
  %0 = ptrtoint ptr %s_op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_op, align 4
  %cmp = icmp eq ptr %1, @kernfs_sops
  br i1 %cmp, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %root = getelementptr inbounds %struct.kernfs_super_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %root, align 4
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi ptr [ %5, %if.then ], [ null, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @kernfs_node_dentry(ptr noundef readonly %kn, ptr nocapture noundef readonly %sb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %s_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 6
  %0 = ptrtoint ptr %s_op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_op, align 4
  %cmp.not = icmp eq ptr %1, @kernfs_sops
  br i1 %cmp.not, label %do.end7, label %do.body2, !prof !39

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/kernfs/mount.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 201, 0\0A.popsection", ""() #8, !srcloc !40
  unreachable

do.end7:                                          ; preds = %entry
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %2 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_root, align 64
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.end7.dget.exit_crit_edge, label %if.then.i

do.end7.dget.exit_crit_edge:                      ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %dget.exit

if.then.i:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i) #8
  br label %dget.exit

dget.exit:                                        ; preds = %if.then.i, %do.end7.dget.exit_crit_edge
  %parent = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 3
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 4
  %tobool8.not = icmp eq ptr %5, null
  br i1 %tobool8.not, label %dget.exit.cleanup98_crit_edge, label %if.end10

dget.exit.cleanup98_crit_edge:                    ; preds = %dget.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup98

if.end10:                                         ; preds = %dget.exit
  %cmp.i = icmp eq ptr %kn, null
  br i1 %cmp.i, label %land.end.i, label %if.end10.while.cond.i_crit_edge

if.end10.while.cond.i_crit_edge:                  ; preds = %if.end10
  br label %while.cond.i

land.end.i:                                       ; preds = %if.end10
  %.b27.i = load i1, ptr @find_next_ancestor.__already_done, align 1
  br i1 %.b27.i, label %land.end.i.cleanup98.sink.split_crit_edge, label %if.then5.i, !prof !39

land.end.i.cleanup98.sink.split_crit_edge:        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup98.sink.split

if.then5.i:                                       ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @find_next_ancestor.__already_done, align 1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #11
  br label %cleanup98.sink.split

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.end10.while.cond.i_crit_edge
  %child.addr.0.i = phi ptr [ %7, %while.cond.i.while.cond.i_crit_edge ], [ %kn, %if.end10.while.cond.i_crit_edge ]
  %parent14.i = getelementptr inbounds %struct.kernfs_node, ptr %child.addr.0.i, i32 0, i32 3
  %6 = ptrtoint ptr %parent14.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent14.i, align 4
  %cmp15.not.i = icmp eq ptr %7, null
  br i1 %cmp15.not.i, label %while.cond.i.do.body47_crit_edge, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

while.cond.i.do.body47_crit_edge:                 ; preds = %while.cond.i
  br label %do.body47

do.body47:                                        ; preds = %cleanup.do.body47_crit_edge, %while.cond.i.do.body47_crit_edge
  %knparent.0 = phi ptr [ %child.addr.0.i125, %cleanup.do.body47_crit_edge ], [ %child.addr.0.i, %while.cond.i.do.body47_crit_edge ]
  %dentry.0 = phi ptr [ %call91, %cleanup.do.body47_crit_edge ], [ %3, %while.cond.i.do.body47_crit_edge ]
  %cmp48 = icmp eq ptr %knparent.0, %kn
  br i1 %cmp48, label %do.body47.cleanup98_crit_edge, label %do.body47.while.cond.i128_crit_edge

do.body47.while.cond.i128_crit_edge:              ; preds = %do.body47
  br label %while.cond.i128

do.body47.cleanup98_crit_edge:                    ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup98

while.cond.i128:                                  ; preds = %while.body.i130.while.cond.i128_crit_edge, %do.body47.while.cond.i128_crit_edge
  %child.addr.0.i125 = phi ptr [ %9, %while.body.i130.while.cond.i128_crit_edge ], [ %kn, %do.body47.while.cond.i128_crit_edge ]
  %parent14.i126 = getelementptr inbounds %struct.kernfs_node, ptr %child.addr.0.i125, i32 0, i32 3
  %8 = ptrtoint ptr %parent14.i126 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent14.i126, align 4
  %cmp15.not.i127 = icmp eq ptr %9, %knparent.0
  br i1 %cmp15.not.i127, label %find_next_ancestor.exit132, label %while.body.i130

while.body.i130:                                  ; preds = %while.cond.i128
  %tobool17.not.i129 = icmp eq ptr %9, null
  br i1 %tobool17.not.i129, label %while.body.i130.cleanup98.sink.split_crit_edge, label %while.body.i130.while.cond.i128_crit_edge

while.body.i130.while.cond.i128_crit_edge:        ; preds = %while.body.i130
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i128

while.body.i130.cleanup98.sink.split_crit_edge:   ; preds = %while.body.i130
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup98.sink.split

find_next_ancestor.exit132:                       ; preds = %while.cond.i128
  %tobool53.not = icmp eq ptr %child.addr.0.i125, null
  br i1 %tobool53.not, label %find_next_ancestor.exit132.cleanup98.sink.split_crit_edge, label %cleanup, !prof !41

find_next_ancestor.exit132.cleanup98.sink.split_crit_edge: ; preds = %find_next_ancestor.exit132
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup98.sink.split

cleanup:                                          ; preds = %find_next_ancestor.exit132
  %name = getelementptr inbounds %struct.kernfs_node, ptr %child.addr.0.i125, i32 0, i32 4
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name, align 8
  %call90 = tail call i32 @strlen(ptr noundef %11) #12
  %call91 = tail call ptr @lookup_positive_unlocked(ptr noundef %11, ptr noundef %dentry.0, i32 noundef %call90) #8
  tail call void @dput(ptr noundef %dentry.0) #8
  %cmp.i133 = icmp ugt ptr %call91, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i133, label %cleanup.cleanup98_crit_edge, label %cleanup.do.body47_crit_edge

cleanup.do.body47_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body47

cleanup.cleanup98_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup98

cleanup98.sink.split:                             ; preds = %find_next_ancestor.exit132.cleanup98.sink.split_crit_edge, %while.body.i130.cleanup98.sink.split_crit_edge, %if.then5.i, %land.end.i.cleanup98.sink.split_crit_edge
  %.sink = phi i32 [ 210, %if.then5.i ], [ 210, %land.end.i.cleanup98.sink.split_crit_edge ], [ 222, %while.body.i130.cleanup98.sink.split_crit_edge ], [ 222, %find_next_ancestor.exit132.cleanup98.sink.split_crit_edge ]
  %dentry.0156.sink = phi ptr [ %3, %if.then5.i ], [ %3, %land.end.i.cleanup98.sink.split_crit_edge ], [ %dentry.0, %while.body.i130.cleanup98.sink.split_crit_edge ], [ %dentry.0, %find_next_ancestor.exit132.cleanup98.sink.split_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #8
  tail call void @dput(ptr noundef %dentry.0156.sink) #8
  br label %cleanup98

cleanup98:                                        ; preds = %cleanup98.sink.split, %cleanup.cleanup98_crit_edge, %do.body47.cleanup98_crit_edge, %dget.exit.cleanup98_crit_edge
  %retval.2 = phi ptr [ %3, %dget.exit.cleanup98_crit_edge ], [ inttoptr (i32 -22 to ptr), %cleanup98.sink.split ], [ %dentry.0, %do.body47.cleanup98_crit_edge ], [ %call91, %cleanup.cleanup98_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_positive_unlocked(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @kernfs_super_ns(ptr nocapture noundef readonly %sb) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %ns = getelementptr inbounds %struct.kernfs_super_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ns, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kernfs_get_tree(ptr noundef %fc) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %fs_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_private, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 20) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup25_crit_edge, label %if.end

entry.cleanup25_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup25

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %root1 = getelementptr inbounds %struct.kernfs_super_info, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %root1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %root1, align 4
  %ns_tag = getelementptr inbounds %struct.kernfs_fs_context, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %ns_tag to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ns_tag, align 4
  %ns = getelementptr inbounds %struct.kernfs_super_info, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %ns to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %ns, align 8
  %node = getelementptr inbounds %struct.kernfs_super_info, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %node, ptr %node, align 4
  %prev.i = getelementptr inbounds %struct.kernfs_super_info, ptr %call7.i.i, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %node, ptr %prev.i, align 8
  %s_fs_info = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 12
  %11 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i, ptr %s_fs_info, align 4
  %call2 = tail call ptr @sget_fc(ptr noundef %fc, ptr noundef nonnull @kernfs_test_super, ptr noundef nonnull @kernfs_set_super) #8
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %call2 to i32
  br label %cleanup25

if.end6:                                          ; preds = %if.end
  %s_root = getelementptr inbounds %struct.super_block, ptr %call2, i32 0, i32 13
  %13 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_root, align 64
  %tobool7.not = icmp eq ptr %14, null
  br i1 %tobool7.not, label %if.then8, label %if.end6.if.then.i_crit_edge

if.end6.if.then.i_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then8:                                         ; preds = %if.end6
  %s_fs_info10 = getelementptr inbounds %struct.super_block, ptr %call2, i32 0, i32 33
  %15 = ptrtoint ptr %s_fs_info10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_fs_info10, align 16
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %new_sb_created = getelementptr inbounds %struct.kernfs_fs_context, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %new_sb_created to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %new_sb_created, align 4
  %call13 = tail call fastcc i32 @kernfs_fill_super(ptr noundef %call2, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @deactivate_locked_super(ptr noundef %call2) #8
  br label %cleanup25

if.end16:                                         ; preds = %if.then8
  %s_flags = getelementptr inbounds %struct.super_block, ptr %call2, i32 0, i32 10
  %20 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_flags, align 4
  %or = or i32 %21, 1073741824
  store i32 %or, ptr %s_flags, align 4
  %kernfs_rwsem = getelementptr inbounds %struct.kernfs_root, ptr %18, i32 0, i32 8
  tail call void @down_write(ptr noundef %kernfs_rwsem) #8
  %node17 = getelementptr inbounds %struct.kernfs_super_info, ptr %16, i32 0, i32 3
  %root18 = getelementptr inbounds %struct.kernfs_super_info, ptr %16, i32 0, i32 1
  %22 = ptrtoint ptr %root18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %root18, align 4
  %supers = getelementptr inbounds %struct.kernfs_root, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %supers to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %supers, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node17, ptr noundef %supers, ptr noundef %25) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end16.if.end21_crit_edge

if.end16.if.end21_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %node17, ptr %prev1.i.i, align 4
  %27 = ptrtoint ptr %node17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %25, ptr %node17, align 4
  %prev3.i.i = getelementptr inbounds %struct.kernfs_super_info, ptr %16, i32 0, i32 3, i32 1
  %28 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %supers, ptr %prev3.i.i, align 4
  %29 = ptrtoint ptr %supers to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %node17, ptr %supers, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.end.i.i, %if.end16.if.end21_crit_edge
  tail call void @up_write(ptr noundef %kernfs_rwsem) #8
  %30 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pr = load ptr, ptr %s_root, align 64
  %tobool.not.i = icmp eq ptr %.pr, null
  br i1 %tobool.not.i, label %if.end21.dget.exit_crit_edge, label %if.end21.if.then.i_crit_edge

if.end21.if.then.i_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.end21.dget.exit_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %dget.exit

if.then.i:                                        ; preds = %if.end21.if.then.i_crit_edge, %if.end6.if.then.i_crit_edge
  %31 = phi ptr [ %.pr, %if.end21.if.then.i_crit_edge ], [ %14, %if.end6.if.then.i_crit_edge ]
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %31, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i) #8
  br label %dget.exit

dget.exit:                                        ; preds = %if.then.i, %if.end21.dget.exit_crit_edge
  %32 = phi ptr [ null, %if.end21.dget.exit_crit_edge ], [ %31, %if.then.i ]
  %root24 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 5
  %33 = ptrtoint ptr %root24 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %root24, align 4
  br label %cleanup25

cleanup25:                                        ; preds = %dget.exit, %if.then15, %if.then4, %entry.cleanup25_crit_edge
  %retval.1 = phi i32 [ %12, %if.then4 ], [ 0, %dget.exit ], [ -12, %entry.cleanup25_crit_edge ], [ %call13, %if.then15 ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sget_fc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @kernfs_test_super(ptr nocapture noundef readonly %sb, ptr nocapture noundef readonly %fc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %s_fs_info1 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 12
  %2 = ptrtoint ptr %s_fs_info1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info1, align 4
  %root = getelementptr inbounds %struct.kernfs_super_info, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %root, align 4
  %root2 = getelementptr inbounds %struct.kernfs_super_info, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %root2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %root2, align 4
  %cmp = icmp eq ptr %5, %7
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ns = getelementptr inbounds %struct.kernfs_super_info, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ns, align 4
  %ns3 = getelementptr inbounds %struct.kernfs_super_info, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %ns3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ns3, align 4
  %cmp4 = icmp eq ptr %9, %11
  %phi.cast = zext i1 %cmp4 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %12 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kernfs_set_super(ptr noundef %sb, ptr noundef %fc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %fs_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_private, align 4
  %ns_tag = getelementptr inbounds %struct.kernfs_fs_context, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ns_tag to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %ns_tag, align 4
  %call = tail call i32 @set_anon_super_fc(ptr noundef %sb, ptr noundef %fc) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kernfs_fill_super(ptr noundef %sb, ptr nocapture noundef readonly %kfc) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %2 = ptrtoint ptr %kfc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kfc, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %sb, ptr %1, align 4
  %s_iflags = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 11
  %5 = ptrtoint ptr %s_iflags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_iflags, align 8
  %or = or i32 %6, 6
  store i32 %or, ptr %s_iflags, align 8
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %7 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4096, ptr %s_blocksize, align 16
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %8 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 12, ptr %s_blocksize_bits, align 4
  %magic = getelementptr inbounds %struct.kernfs_fs_context, ptr %kfc, i32 0, i32 2
  %9 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %magic, align 4
  %s_magic = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 12
  %11 = ptrtoint ptr %s_magic to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %s_magic, align 4
  %s_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 6
  %12 = ptrtoint ptr %s_op to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @kernfs_sops, ptr %s_op, align 4
  %s_xattr = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 18
  %13 = ptrtoint ptr %s_xattr to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @kernfs_xattr_handlers, ptr %s_xattr, align 16
  %root3 = getelementptr inbounds %struct.kernfs_super_info, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %root3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %root3, align 4
  %flags = getelementptr inbounds %struct.kernfs_root, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 4
  %and = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %s_export_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 9
  %18 = ptrtoint ptr %s_export_op to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @kernfs_export_ops, ptr %s_export_op, align 16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %s_time_gran = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 34
  %19 = ptrtoint ptr %s_time_gran to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %s_time_gran, align 4
  %seeks = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 46, i32 3
  %20 = ptrtoint ptr %seeks to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %seeks, align 4
  %kernfs_rwsem = getelementptr inbounds %struct.kernfs_root, ptr %3, i32 0, i32 8
  tail call void @down_read(ptr noundef %kernfs_rwsem) #8
  %21 = ptrtoint ptr %root3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %root3, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %call = tail call ptr @kernfs_get_inode(ptr noundef %sb, ptr noundef %24) #8
  tail call void @up_read(ptr noundef %kernfs_rwsem) #8
  %tobool6.not = icmp eq ptr %call, null
  br i1 %tobool6.not, label %do.body, label %if.end14

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kernfs_fill_super.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kernfs_fill_super, %if.then12)) #8
          to label %cleanup [label %if.then12], !srcloc !42

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @kernfs_fill_super.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.8) #8
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %call15 = tail call ptr @d_make_root(ptr noundef nonnull %call) #8
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %do.body18, label %if.end34

do.body18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kernfs_fill_super.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kernfs_fill_super, %if.then30)) #8
          to label %cleanup [label %if.then30], !srcloc !42

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @kernfs_fill_super.__UNIQUE_ID_ddebug237, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7) #8
  br label %cleanup

if.end34:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %25 = ptrtoint ptr %s_root to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call15, ptr %s_root, align 64
  %s_d_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 45
  %26 = ptrtoint ptr %s_d_op to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @kernfs_dops, ptr %s_d_op, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.then30, %do.body18, %if.then12, %do.body
  %retval.0 = phi i32 [ 0, %if.end34 ], [ -12, %if.then12 ], [ -12, %if.then30 ], [ -12, %do.body ], [ -12, %do.body18 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @deactivate_locked_super(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kernfs_free_fs_context(ptr nocapture noundef %fc) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 12
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 4
  tail call void @kfree(ptr noundef %1) #8
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %s_fs_info, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kernfs_kill_sb(ptr noundef %sb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %root1 = getelementptr inbounds %struct.kernfs_super_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %root1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %root1, align 4
  %kernfs_rwsem = getelementptr inbounds %struct.kernfs_root, ptr %3, i32 0, i32 8
  tail call void @down_write(ptr noundef %kernfs_rwsem) #8
  %node = getelementptr inbounds %struct.kernfs_super_info, ptr %1, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #8
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.kernfs_super_info, ptr %1, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %10 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %node, align 4
  %prev.i = getelementptr inbounds %struct.kernfs_super_info, ptr %1, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @up_write(ptr noundef %kernfs_rwsem) #8
  tail call void @kill_anon_super(ptr noundef %sb) #8
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_anon_super(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @kernfs_init() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.1, i32 noundef 112, i32 noundef 0, i32 noundef 262144, ptr noundef null) #8
  store ptr %call, ptr @kernfs_node_cache, align 4
  %call1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.2, i32 noundef 120, i32 noundef 0, i32 noundef 262144, ptr noundef null) #8
  store ptr %call1, ptr @kernfs_iattrs_cache, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_dentry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_anon_super_fc(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kernfs_get_inode(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @kernfs_encode_fh(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %fh, ptr nocapture noundef %max_len, ptr nocapture noundef readnone %parent) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %max_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp slt i32 %1, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %max_len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %max_len, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %3 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_private, align 4
  %5 = ptrtoint ptr %max_len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %max_len, align 4
  %id = getelementptr inbounds %struct.kernfs_node, ptr %4, i32 0, i32 10
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %id, align 8
  %8 = ptrtoint ptr %fh to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %fh, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 255, %if.then ], [ 254, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @kernfs_fh_to_dentry(ptr noundef %sb, ptr nocapture noundef readonly %fid, i32 noundef %fh_len, i32 noundef %fh_type) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %fh_len)
  %cmp.i = icmp slt i32 %fh_len, 2
  br i1 %cmp.i, label %entry.__kernfs_fh_to_dentry.exit_crit_edge, label %if.end.i

entry.__kernfs_fh_to_dentry.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__kernfs_fh_to_dentry.exit

if.end.i:                                         ; preds = %entry
  %2 = zext i32 %fh_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %fh_type, label %if.end.i.__kernfs_fh_to_dentry.exit_crit_edge [
    i32 254, label %sw.bb.i
    i32 1, label %if.end.i.sw.bb1.i_crit_edge
    i32 2, label %if.end.i.sw.bb1.i_crit_edge1
  ]

if.end.i.sw.bb1.i_crit_edge1:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i

if.end.i.sw.bb1.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i

if.end.i.__kernfs_fh_to_dentry.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__kernfs_fh_to_dentry.exit

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %fid, align 8
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %if.end.i.sw.bb1.i_crit_edge, %if.end.i.sw.bb1.i_crit_edge1
  %gen.i = getelementptr inbounds %struct.anon.70, ptr %fid, i32 0, i32 1
  %5 = ptrtoint ptr %gen.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %gen.i, align 4
  %conv.i = zext i32 %6 to i64
  %shl.i = shl nuw i64 %conv.i, 32
  %7 = ptrtoint ptr %fid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fid, align 4
  %conv2.i = zext i32 %8 to i64
  %or.i = or i64 %shl.i, %conv2.i
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb1.i, %sw.bb.i
  %id.0.i = phi i64 [ %or.i, %sw.bb1.i ], [ %4, %sw.bb.i ]
  %root.i = getelementptr inbounds %struct.kernfs_super_info, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %root.i, align 4
  %call.i = tail call ptr @kernfs_find_and_get_node_by_id(ptr noundef %10, i64 noundef %id.0.i) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %sw.epilog.i.__kernfs_fh_to_dentry.exit_crit_edge, label %if.end5.i

sw.epilog.i.__kernfs_fh_to_dentry.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__kernfs_fh_to_dentry.exit

if.end5.i:                                        ; preds = %sw.epilog.i
  %call14.i = tail call ptr @kernfs_get_inode(ptr noundef %sb, ptr noundef nonnull %call.i) #8
  tail call void @kernfs_put(ptr noundef nonnull %call.i) #8
  %tobool15.not.i = icmp eq ptr %call14.i, null
  br i1 %tobool15.not.i, label %if.end5.i.__kernfs_fh_to_dentry.exit_crit_edge, label %if.end18.i

if.end5.i.__kernfs_fh_to_dentry.exit_crit_edge:   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__kernfs_fh_to_dentry.exit

if.end18.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %call19.i = tail call ptr @d_obtain_alias(ptr noundef nonnull %call14.i) #8
  br label %__kernfs_fh_to_dentry.exit

__kernfs_fh_to_dentry.exit:                       ; preds = %if.end18.i, %if.end5.i.__kernfs_fh_to_dentry.exit_crit_edge, %sw.epilog.i.__kernfs_fh_to_dentry.exit_crit_edge, %if.end.i.__kernfs_fh_to_dentry.exit_crit_edge, %entry.__kernfs_fh_to_dentry.exit_crit_edge
  %retval.1.i = phi ptr [ %call19.i, %if.end18.i ], [ null, %entry.__kernfs_fh_to_dentry.exit_crit_edge ], [ null, %if.end.i.__kernfs_fh_to_dentry.exit_crit_edge ], [ inttoptr (i32 -116 to ptr), %sw.epilog.i.__kernfs_fh_to_dentry.exit_crit_edge ], [ inttoptr (i32 -116 to ptr), %if.end5.i.__kernfs_fh_to_dentry.exit_crit_edge ]
  ret ptr %retval.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @kernfs_fh_to_parent(ptr noundef %sb, ptr nocapture noundef readonly %fid, i32 noundef %fh_len, i32 noundef %fh_type) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @__kernfs_fh_to_dentry(ptr noundef %sb, ptr noundef %fid, i32 noundef %fh_len, i32 noundef %fh_type, i1 noundef zeroext true)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @kernfs_get_parent_dentry(ptr nocapture noundef readonly %child) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %child, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i.i, align 8
  %cmp.i.i = icmp eq ptr %1, null
  br i1 %cmp.i.i, label %entry.kernfs_dentry_node.exit_crit_edge, label %if.end.i

entry.kernfs_dentry_node.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %kernfs_dentry_node.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %i_private.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private.i, align 4
  br label %kernfs_dentry_node.exit

kernfs_dentry_node.exit:                          ; preds = %if.end.i, %entry.kernfs_dentry_node.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ null, %entry.kernfs_dentry_node.exit_crit_edge ]
  %d_sb = getelementptr inbounds %struct.dentry, ptr %child, i32 0, i32 9
  %4 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_sb, align 4
  %parent = getelementptr inbounds %struct.kernfs_node, ptr %retval.0.i, i32 0, i32 3
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 4
  %call1 = tail call ptr @kernfs_get_inode(ptr noundef %5, ptr noundef %7) #8
  %call2 = tail call ptr @d_obtain_alias(ptr noundef %call1) #8
  ret ptr %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__kernfs_fh_to_dentry(ptr noundef %sb, ptr nocapture noundef readonly %fid, i32 noundef %fh_len, i32 noundef %fh_type, i1 noundef zeroext %get_parent) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %fh_len)
  %cmp = icmp slt i32 %fh_len, 2
  br i1 %cmp, label %entry.cleanup20_crit_edge, label %if.end

entry.cleanup20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup20

if.end:                                           ; preds = %entry
  %2 = zext i32 %fh_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %fh_type, label %if.end.cleanup20_crit_edge [
    i32 254, label %sw.bb
    i32 1, label %if.end.sw.bb1_crit_edge
    i32 2, label %if.end.sw.bb1_crit_edge33
  ]

if.end.sw.bb1_crit_edge33:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

if.end.sw.bb1_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

if.end.cleanup20_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup20

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %fid, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end.sw.bb1_crit_edge, %if.end.sw.bb1_crit_edge33
  %gen = getelementptr inbounds %struct.anon.70, ptr %fid, i32 0, i32 1
  %5 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %gen, align 4
  %conv = zext i32 %6 to i64
  %shl = shl nuw i64 %conv, 32
  %7 = ptrtoint ptr %fid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fid, align 4
  %conv2 = zext i32 %8 to i64
  %or = or i64 %shl, %conv2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %id.0 = phi i64 [ %or, %sw.bb1 ], [ %4, %sw.bb ]
  %root = getelementptr inbounds %struct.kernfs_super_info, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %root, align 4
  %call = tail call ptr @kernfs_find_and_get_node_by_id(ptr noundef %10, i64 noundef %id.0) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %sw.epilog.cleanup20_crit_edge, label %if.end5

sw.epilog.cleanup20_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup20

if.end5:                                          ; preds = %sw.epilog
  br i1 %get_parent, label %if.then7, label %if.end5.if.end13_crit_edge

if.end5.if.end13_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then7:                                         ; preds = %if.end5
  %call8 = tail call ptr @kernfs_get_parent(ptr noundef nonnull %call) #8
  tail call void @kernfs_put(ptr noundef nonnull %call) #8
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.then7.cleanup20_crit_edge, label %if.then7.if.end13_crit_edge

if.then7.if.end13_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then7.cleanup20_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup20

if.end13:                                         ; preds = %if.then7.if.end13_crit_edge, %if.end5.if.end13_crit_edge
  %kn.0 = phi ptr [ %call8, %if.then7.if.end13_crit_edge ], [ %call, %if.end5.if.end13_crit_edge ]
  %call14 = tail call ptr @kernfs_get_inode(ptr noundef %sb, ptr noundef nonnull %kn.0) #8
  tail call void @kernfs_put(ptr noundef nonnull %kn.0) #8
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end13.cleanup20_crit_edge, label %if.end18

if.end13.cleanup20_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup20

if.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %call19 = tail call ptr @d_obtain_alias(ptr noundef nonnull %call14) #8
  br label %cleanup20

cleanup20:                                        ; preds = %if.end18, %if.end13.cleanup20_crit_edge, %if.then7.cleanup20_crit_edge, %sw.epilog.cleanup20_crit_edge, %if.end.cleanup20_crit_edge, %entry.cleanup20_crit_edge
  %retval.1 = phi ptr [ %call19, %if.end18 ], [ inttoptr (i32 -116 to ptr), %if.then7.cleanup20_crit_edge ], [ null, %entry.cleanup20_crit_edge ], [ null, %if.end.cleanup20_crit_edge ], [ inttoptr (i32 -116 to ptr), %sw.epilog.cleanup20_crit_edge ], [ inttoptr (i32 -116 to ptr), %if.end13.cleanup20_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kernfs_find_and_get_node_by_id(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kernfs_get_parent(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_obtain_alias(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !22, !23, !24, !25, !27, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @kernfs_sops, !1, !"kernfs_sops", i1 false, i1 false}
!1 = !{!"../fs/kernfs/mount.c", i32 47, i32 31}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/kernfs/mount.c", i32 210, i32 6}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/kernfs/mount.c", i32 392, i32 40}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/kernfs/mount.c", i32 397, i32 43}
!8 = !{ptr @kernfs_node_cache, !9, !"kernfs_node_cache", i1 false, i1 false}
!9 = !{!"../fs/kernfs/mount.c", i32 22, i32 20}
!10 = !{ptr @kernfs_iattrs_cache, !11, !"kernfs_iattrs_cache", i1 false, i1 false}
!11 = !{!"../fs/kernfs/mount.c", i32 22, i32 40}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/kernfs/mount.c", i32 43, i32 25}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../fs/kernfs/mount.c", i32 177, i32 3}
!16 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @find_next_ancestor._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @find_next_ancestor._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/kernfs/mount.c", i32 263, i32 3}
!22 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @kernfs_fill_super.__UNIQUE_ID_ddebug236, !21, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/kernfs/mount.c", i32 270, i32 3}
!27 = !{ptr @kernfs_fill_super.__UNIQUE_ID_ddebug237, !26, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!28 = !{ptr @kernfs_export_ops, !29, !"kernfs_export_ops", i1 false, i1 false}
!29 = !{!"../fs/kernfs/mount.c", i32 144, i32 39}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{!"branch_weights", i32 2000, i32 1}
!40 = !{i64 2153915044, i64 2153915526, i64 2153915081, i64 2153915137, i64 2153915171, i64 2153915195, i64 2153915236, i64 2153915257, i64 2153915285, i64 2153915319}
!41 = !{!"branch_weights", i32 1, i32 2000}
!42 = !{i64 2148484833, i64 2148484838, i64 2148484851, i64 2148484895, i64 2148484929, i64 2148484950}
