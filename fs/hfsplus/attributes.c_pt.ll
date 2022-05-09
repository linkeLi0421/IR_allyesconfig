; ModuleID = '/llk/IR_all_yes/fs/hfsplus/attributes.c_pt.bc'
source_filename = "../fs/hfsplus/attributes.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hfsplus_attr_key = type { i16, i16, i32, i32, %struct.hfsplus_attr_unistr }
%struct.hfsplus_attr_unistr = type { i16, [127 x i16] }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_bl_head = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.hfsplus_sb_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, ptr, ptr, ptr, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, i32, i32, %struct.mutex, i32, i32, i16, %struct.kuid_t, %struct.kgid_t, i32, i32, i32, i32, %struct.delayed_work, %struct.spinlock }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hfs_find_data = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.68, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.69, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.70, ptr, %struct.address_space, %struct.list_head, %union.anon.71, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.68 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.69 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.70 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.71 = type { ptr }
%struct.hfs_btree = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, %struct.spinlock, [256 x ptr], i32 }
%struct.hfsplus_attr_inline_data = type <{ i32, i32, [6 x i8], i16, [3802 x i8] }>

@hfsplus_attr_tree_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hfsplus_attr_cache\00", [45 x i8] zeroinitializer }, align 32
@hfsplus_find_attr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013hfsplus: attributes file doesn't exist\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hfsplus_find_attr\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fs/hfsplus/attributes.c\00", [40 x i8] zeroinitializer }, align 32
@hfsplus_find_attr._entry_ptr = internal global ptr @hfsplus_find_attr._entry, section ".printk_index", align 4
@hfsplus_create_attr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.4, ptr @.str.3, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hfsplus_create_attr\00", [44 x i8] zeroinitializer }, align 32
@hfsplus_create_attr._entry_ptr = internal global ptr @hfsplus_create_attr._entry, section ".printk_index", align 4
@hfsplus_delete_attr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.5, ptr @.str.3, i32 317, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hfsplus_delete_attr\00", [44 x i8] zeroinitializer }, align 32
@hfsplus_delete_attr._entry_ptr = internal global ptr @hfsplus_delete_attr._entry, section ".printk_index", align 4
@hfsplus_delete_attr._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.3, i32 336, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013hfsplus: invalid extended attribute name\0A\00", [52 x i8] zeroinitializer }, align 32
@hfsplus_delete_attr._entry_ptr.8 = internal global ptr @hfsplus_delete_attr._entry.6, section ".printk_index", align 4
@hfsplus_delete_all_attrs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.9, ptr @.str.3, i32 362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hfsplus_delete_all_attrs\00", [39 x i8] zeroinitializer }, align 32
@hfsplus_delete_all_attrs._entry_ptr = internal global ptr @hfsplus_delete_all_attrs._entry, section ".printk_index", align 4
@hfsplus_delete_all_attrs._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.3, i32 374, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013hfsplus: xattr search failed\0A\00", [32 x i8] zeroinitializer }, align 32
@hfsplus_delete_all_attrs._entry_ptr.12 = internal global ptr @hfsplus_delete_all_attrs._entry.10, section ".printk_index", align 4
@__hfsplus_delete_attr._entry = internal constant %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 288, ptr null, ptr null }, align 1
@.str.13 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013hfsplus: only inline data xattr are supported\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"__hfsplus_delete_attr\00", [42 x i8] zeroinitializer }, align 32
@__hfsplus_delete_attr._entry_ptr = internal global ptr @__hfsplus_delete_attr._entry, section ".printk_index", align 4
@__hfsplus_delete_attr._entry.15 = internal constant %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.3, i32 291, ptr null, ptr null }, align 1
@.str.16 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013hfsplus: invalid extended attribute record\0A\00", [50 x i8] zeroinitializer }, align 32
@__hfsplus_delete_attr._entry_ptr.17 = internal global ptr @__hfsplus_delete_attr._entry.15, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 32, i64 48]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@___asan_gen_.19 = private unnamed_addr constant [25 x i8] c"hfsplus_attr_tree_cachep\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 13, i32 27 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 21, i32 21 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 145, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 208, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 317, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 336, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 362, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 374, i32 5 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 288, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.74 = private constant [27 x i8] c"../fs/hfsplus/attributes.c\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 291, i32 3 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__hfsplus_delete_attr._entry, ptr @__hfsplus_delete_attr._entry.15, ptr @__hfsplus_delete_attr._entry_ptr, ptr @__hfsplus_delete_attr._entry_ptr.17, ptr @hfsplus_create_attr._entry, ptr @hfsplus_create_attr._entry_ptr, ptr @hfsplus_delete_all_attrs._entry, ptr @hfsplus_delete_all_attrs._entry.10, ptr @hfsplus_delete_all_attrs._entry_ptr, ptr @hfsplus_delete_all_attrs._entry_ptr.12, ptr @hfsplus_delete_attr._entry, ptr @hfsplus_delete_attr._entry.6, ptr @hfsplus_delete_attr._entry_ptr, ptr @hfsplus_delete_attr._entry_ptr.8, ptr @hfsplus_find_attr._entry, ptr @hfsplus_find_attr._entry_ptr, ptr @hfsplus_attr_tree_cachep, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_attr_tree_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_find_attr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_create_attr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_delete_attr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_delete_attr._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_delete_all_attrs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_delete_all_attrs._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfsplus_create_attr_tree_cache() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @hfsplus_attr_tree_cachep, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str, i32 noundef 3818, i32 noundef 0, i32 noundef 8192, ptr noundef null) #7
  store ptr %call, ptr @hfsplus_attr_tree_cachep, align 4
  %tobool1.not = icmp eq ptr %call, null
  %. = select i1 %tobool1.not, i32 -12, i32 0
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -17, %entry.return_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hfsplus_destroy_attr_tree_cache() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @hfsplus_attr_tree_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfsplus_attr_bin_cmp_key(ptr noundef %k1, ptr noundef %k2) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cnid = getelementptr inbounds %struct.hfsplus_attr_key, ptr %k1, i32 0, i32 2
  %0 = ptrtoint ptr %cnid to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %cnid, align 1
  %cnid1 = getelementptr inbounds %struct.hfsplus_attr_key, ptr %k2, i32 0, i32 2
  %2 = ptrtoint ptr %cnid1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %cnid1, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp eq i32 %1, %3
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp2 = icmp ult i32 %1, %3
  %cond = select i1 %cmp2, i32 -1, i32 1
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %key_name = getelementptr inbounds %struct.hfsplus_attr_key, ptr %k1, i32 0, i32 4
  %key_name3 = getelementptr inbounds %struct.hfsplus_attr_key, ptr %k2, i32 0, i32 4
  %call = tail call i32 @hfsplus_strcmp(ptr noundef %key_name, ptr noundef %key_name3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %cond, %if.then ], [ %call, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_strcmp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfsplus_attr_build_key(ptr noundef %sb, ptr noundef %key, i32 noundef %cnid, ptr noundef %name) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %key, i32 0, i32 268)
  %cnid1 = getelementptr inbounds %struct.hfsplus_attr_key, ptr %key, i32 0, i32 2
  %1 = ptrtoint ptr %cnid1 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 4)
  store i32 %cnid, ptr %cnid1, align 1
  %tobool.not = icmp eq ptr %name, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then:                                          ; preds = %entry
  %key_name = getelementptr inbounds %struct.hfsplus_attr_key, ptr %key, i32 0, i32 4
  %call = tail call i32 @strlen(ptr noundef nonnull %name) #10
  %call2 = tail call i32 @hfsplus_asc2uni(ptr noundef %sb, ptr noundef %key_name, i32 noundef 127, ptr noundef nonnull %name, i32 noundef %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %cleanup.thread, label %if.then.cleanup10_crit_edge

if.then.cleanup10_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup10

cleanup.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %key_name to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %key_name, align 1
  %phi.bo = shl i16 %3, 1
  %phi.bo20 = add i16 %phi.bo, 12
  br label %if.end8

if.end8:                                          ; preds = %cleanup.thread, %entry.if.end8_crit_edge
  %len.1 = phi i16 [ %phi.bo20, %cleanup.thread ], [ 12, %entry.if.end8_crit_edge ]
  %4 = ptrtoint ptr %key to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 %len.1, ptr %key, align 1
  br label %cleanup10

cleanup10:                                        ; preds = %if.end8, %if.then.cleanup10_crit_edge
  %retval.1 = phi i32 [ 0, %if.end8 ], [ %call2, %if.then.cleanup10_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_asc2uni(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @hfsplus_alloc_attr_entry() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @hfsplus_attr_tree_cachep, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #7
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hfsplus_destroy_attr_entry(ptr noundef %entry1) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %entry1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load ptr, ptr @hfsplus_attr_tree_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef nonnull %entry1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfsplus_find_attr(ptr noundef %sb, i32 noundef %cnid, ptr noundef %name, ptr noundef %fd) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %attr_tree = getelementptr inbounds %struct.hfsplus_sb_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %attr_tree to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attr_tree, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end3, label %if.end

do.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool5.not = icmp eq ptr %name, null
  %4 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fd, align 4
  br i1 %tobool5.not, label %if.end19, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %6 = call ptr @memset(ptr %5, i32 0, i32 268)
  %cnid1.i = getelementptr inbounds %struct.hfsplus_attr_key, ptr %5, i32 0, i32 2
  %7 = ptrtoint ptr %cnid1.i to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %cnid, ptr %cnid1.i, align 1
  %key_name.i = getelementptr inbounds %struct.hfsplus_attr_key, ptr %5, i32 0, i32 4
  %call.i = tail call i32 @strlen(ptr noundef nonnull %name) #12
  %call2.i = tail call i32 @hfsplus_asc2uni(ptr noundef %sb, ptr noundef %key_name.i, i32 noundef 127, ptr noundef nonnull %name, i32 noundef %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end10, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %key_name.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %key_name.i, align 1
  %phi.bo.i = shl i16 %9, 1
  %phi.bo20.i = add i16 %phi.bo.i, 12
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 %phi.bo20.i, ptr %5, align 1
  %call11 = tail call i32 @hfsplus_brec_find(ptr noundef %fd, ptr noundef nonnull @hfs_find_rec_by_key) #7
  br label %cleanup

if.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %11 = getelementptr inbounds i8, ptr %5, i32 2
  %12 = call ptr @memset(ptr %11, i32 0, i32 266)
  %cnid1.i34 = getelementptr inbounds %struct.hfsplus_attr_key, ptr %5, i32 0, i32 2
  %13 = ptrtoint ptr %cnid1.i34 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %cnid, ptr %cnid1.i34, align 1
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 12, ptr %5, align 1
  %call20 = tail call i32 @hfsplus_brec_find(ptr noundef %fd, ptr noundef nonnull @hfs_find_1st_rec_by_cnid) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end10, %if.then.i.cleanup_crit_edge, %do.end3
  %retval.0 = phi i32 [ -22, %do.end3 ], [ %call11, %if.end10 ], [ %call20, %if.end19 ], [ %call2.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_brec_find(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfs_find_rec_by_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfs_find_1st_rec_by_cnid(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfsplus_attr_exists(ptr nocapture noundef readonly %inode, ptr noundef %name) local_unnamed_addr #2 align 64 {
entry:
  %fd = alloca %struct.hfs_find_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %fd) #7
  %2 = call ptr @memset(ptr %fd, i32 255, i32 36)
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %3 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fs_info.i, align 16
  %attr_tree = getelementptr inbounds %struct.hfsplus_sb_info, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %attr_tree to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %attr_tree, align 8
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 @hfsplus_find_init(ptr noundef nonnull %6, ptr noundef nonnull %fd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %7 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i_ino, align 8
  %call7 = call i32 @hfsplus_find_attr(ptr noundef %1, i32 noundef %8, ptr noundef %name, ptr noundef nonnull %fd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  call void @hfsplus_find_exit(ptr noundef nonnull %fd) #7
  %. = zext i1 %tobool8.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %., %if.end6 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fd) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_find_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfsplus_find_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfsplus_create_attr(ptr noundef %inode, ptr noundef %name, ptr nocapture noundef readonly %value, i32 noundef %size) local_unnamed_addr #2 align 64 {
entry:
  %fd = alloca %struct.hfs_find_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %fd) #7
  %2 = call ptr @memset(ptr %fd, i32 255, i32 36)
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %3 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fs_info.i, align 16
  %attr_tree = getelementptr inbounds %struct.hfsplus_sb_info, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %attr_tree to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %attr_tree, align 8
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %do.end3, label %if.end

do.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr @hfsplus_attr_tree_cachep, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %7, i32 noundef 3264) #7
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %8 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i, align 16
  %attr_tree10 = getelementptr inbounds %struct.hfsplus_sb_info, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %attr_tree10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %attr_tree10, align 8
  %call11 = call i32 @hfsplus_find_init(ptr noundef %11, ptr noundef nonnull %fd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end8.hfsplus_destroy_attr_entry.exit_crit_edge

if.end8.hfsplus_destroy_attr_entry.exit_crit_edge: ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %hfsplus_destroy_attr_entry.exit

if.end14:                                         ; preds = %if.end8
  %tree = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 2
  %12 = ptrtoint ptr %tree to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tree, align 4
  %depth = getelementptr inbounds %struct.hfs_btree, ptr %13, i32 0, i32 14
  %14 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %depth, align 4
  %add = add i32 %15, 1
  %call16 = call i32 @hfsplus_bmap_reserve(ptr noundef %13, i32 noundef %add) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end14.failed_create_attr_crit_edge

if.end14.failed_create_attr_crit_edge:            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %failed_create_attr

if.end19:                                         ; preds = %if.end14
  %tobool20.not = icmp eq ptr %name, null
  br i1 %tobool20.not, label %if.end19.failed_create_attr_crit_edge, label %if.then.i

if.end19.failed_create_attr_crit_edge:            ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %failed_create_attr

if.then.i:                                        ; preds = %if.end19
  %16 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fd, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %18 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i_ino, align 8
  %20 = call ptr @memset(ptr %17, i32 0, i32 268)
  %cnid1.i = getelementptr inbounds %struct.hfsplus_attr_key, ptr %17, i32 0, i32 2
  %21 = ptrtoint ptr %cnid1.i to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %19, ptr %cnid1.i, align 1
  %key_name.i = getelementptr inbounds %struct.hfsplus_attr_key, ptr %17, i32 0, i32 4
  %call.i63 = call i32 @strlen(ptr noundef nonnull %name) #12
  %call2.i = call i32 @hfsplus_asc2uni(ptr noundef %1, ptr noundef %key_name.i, i32 noundef 127, ptr noundef nonnull %name, i32 noundef %call.i63) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end26, label %if.then.i.failed_create_attr_crit_edge

if.then.i.failed_create_attr_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %failed_create_attr

if.end26:                                         ; preds = %if.then.i
  %22 = ptrtoint ptr %key_name.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %key_name.i, align 1
  %phi.bo.i = shl i16 %23, 1
  %phi.bo20.i = add i16 %phi.bo.i, 12
  %24 = ptrtoint ptr %17 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 %phi.bo20.i, ptr %17, align 1
  %25 = getelementptr inbounds i8, ptr %call.i, i32 4
  %26 = call ptr @memset(ptr %25, i32 0, i32 3814)
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 16, ptr %call.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3803, i32 %size)
  %cmp8.i = icmp ult i32 %size, 3803
  br i1 %cmp8.i, label %hfsplus_attr_build_record.exit, label %if.end26.failed_create_attr_crit_edge

if.end26.failed_create_attr_crit_edge:            ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %failed_create_attr

hfsplus_attr_build_record.exit:                   ; preds = %if.end26
  %conv.i = trunc i32 %size to i16
  %length.i = getelementptr inbounds %struct.hfsplus_attr_inline_data, ptr %call.i, i32 0, i32 3
  %28 = ptrtoint ptr %length.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv.i, ptr %length.i, align 2
  %raw_bytes.i = getelementptr inbounds %struct.hfsplus_attr_inline_data, ptr %call.i, i32 0, i32 4
  %29 = call ptr @memcpy(ptr %raw_bytes.i, ptr %value, i32 %size)
  %call31 = call i32 @hfsplus_brec_find(ptr noundef nonnull %fd, ptr noundef nonnull @hfs_find_rec_by_key) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call31)
  %cmp32.not = icmp eq i32 %call31, -2
  br i1 %cmp32.not, label %if.end37, label %if.then33

if.then33:                                        ; preds = %hfsplus_attr_build_record.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool34.not = icmp eq i32 %call31, 0
  %spec.store.select = select i1 %tobool34.not, i32 -17, i32 %call31
  br label %failed_create_attr

if.end37:                                         ; preds = %hfsplus_attr_build_record.exit
  %30 = add nuw nsw i32 %size, 65535
  %31 = or i32 %30, 1
  %conv13.i = add i32 %31, 1
  %conv14.i = and i32 %conv13.i, 65534
  %add15.i = add nuw nsw i32 %conv14.i, 16
  %call38 = call i32 @hfsplus_brec_insert(ptr noundef nonnull %fd, ptr noundef nonnull %call.i, i32 noundef %add15.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end37.failed_create_attr_crit_edge

if.end37.failed_create_attr_crit_edge:            ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %failed_create_attr

if.end41:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @hfsplus_mark_inode_dirty(ptr noundef %inode)
  br label %failed_create_attr

failed_create_attr:                               ; preds = %if.end41, %if.end37.failed_create_attr_crit_edge, %if.then33, %if.end26.failed_create_attr_crit_edge, %if.then.i.failed_create_attr_crit_edge, %if.end19.failed_create_attr_crit_edge, %if.end14.failed_create_attr_crit_edge
  %err.0 = phi i32 [ %call16, %if.end14.failed_create_attr_crit_edge ], [ %spec.store.select, %if.then33 ], [ %call38, %if.end37.failed_create_attr_crit_edge ], [ 0, %if.end41 ], [ -22, %if.end19.failed_create_attr_crit_edge ], [ %call2.i, %if.then.i.failed_create_attr_crit_edge ], [ -22, %if.end26.failed_create_attr_crit_edge ]
  call void @hfsplus_find_exit(ptr noundef nonnull %fd) #7
  br label %hfsplus_destroy_attr_entry.exit

hfsplus_destroy_attr_entry.exit:                  ; preds = %failed_create_attr, %if.end8.hfsplus_destroy_attr_entry.exit_crit_edge
  %err.1 = phi i32 [ %call11, %if.end8.hfsplus_destroy_attr_entry.exit_crit_edge ], [ %err.0, %failed_create_attr ]
  %32 = load ptr, ptr @hfsplus_attr_tree_cachep, align 4
  call void @kmem_cache_free(ptr noundef %32, ptr noundef nonnull %call.i) #7
  br label %cleanup

cleanup:                                          ; preds = %hfsplus_destroy_attr_entry.exit, %if.end.cleanup_crit_edge, %do.end3
  %retval.0 = phi i32 [ %err.1, %hfsplus_destroy_attr_entry.exit ], [ -22, %do.end3 ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fd) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_bmap_reserve(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_brec_insert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hfsplus_mark_inode_dirty(ptr noundef %inode) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %flags = getelementptr i8, ptr %inode, i32 -84
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags) #7
  tail call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfsplus_delete_attr(ptr noundef %inode, ptr noundef %name) local_unnamed_addr #2 align 64 {
entry:
  %fd = alloca %struct.hfs_find_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %fd) #7
  %2 = call ptr @memset(ptr %fd, i32 255, i32 36)
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %3 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fs_info.i, align 16
  %attr_tree = getelementptr inbounds %struct.hfsplus_sb_info, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %attr_tree to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %attr_tree, align 8
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %do.end3, label %if.end

do.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call7 = call i32 @hfsplus_find_init(ptr noundef nonnull %6, ptr noundef nonnull %fd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %tree = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 2
  %7 = ptrtoint ptr %tree to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tree, align 4
  %depth = getelementptr inbounds %struct.hfs_btree, ptr %8, i32 0, i32 14
  %9 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %depth, align 4
  %call12 = call i32 @hfsplus_bmap_reserve(ptr noundef %8, i32 noundef %10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end10.out_crit_edge

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end15:                                         ; preds = %if.end10
  %tobool16.not = icmp eq ptr %name, null
  br i1 %tobool16.not, label %do.end24, label %if.then.i

if.then.i:                                        ; preds = %if.end15
  %11 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fd, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %13 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_ino, align 8
  %15 = call ptr @memset(ptr %12, i32 0, i32 268)
  %cnid1.i = getelementptr inbounds %struct.hfsplus_attr_key, ptr %12, i32 0, i32 2
  %16 = ptrtoint ptr %cnid1.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %14, ptr %cnid1.i, align 1
  %key_name.i = getelementptr inbounds %struct.hfsplus_attr_key, ptr %12, i32 0, i32 4
  %call.i = call i32 @strlen(ptr noundef nonnull %name) #12
  %call2.i = call i32 @hfsplus_asc2uni(ptr noundef %1, ptr noundef %key_name.i, i32 noundef 127, ptr noundef nonnull %name, i32 noundef %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end27, label %if.then.i.out_crit_edge

if.then.i.out_crit_edge:                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.end24:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #11
  br label %out

if.end27:                                         ; preds = %if.then.i
  %17 = ptrtoint ptr %key_name.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %key_name.i, align 1
  %phi.bo.i = shl i16 %18, 1
  %phi.bo20.i = add i16 %phi.bo.i, 12
  %19 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 %phi.bo20.i, ptr %12, align 1
  %call28 = call i32 @hfsplus_brec_find(ptr noundef nonnull %fd, ptr noundef nonnull @hfs_find_rec_by_key) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end27.out_crit_edge

if.end27.out_crit_edge:                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end31:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i_ino, align 8
  %call33 = call fastcc i32 @__hfsplus_delete_attr(ptr noundef %inode, i32 noundef %21, ptr noundef nonnull %fd)
  br label %out

out:                                              ; preds = %if.end31, %if.end27.out_crit_edge, %do.end24, %if.then.i.out_crit_edge, %if.end10.out_crit_edge
  %err.0 = phi i32 [ %call12, %if.end10.out_crit_edge ], [ %call28, %if.end27.out_crit_edge ], [ %call33, %if.end31 ], [ -22, %do.end24 ], [ %call2.i, %if.then.i.out_crit_edge ]
  call void @hfsplus_find_exit(ptr noundef nonnull %fd) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %do.end3
  %retval.0 = phi i32 [ %err.0, %out ], [ -22, %do.end3 ], [ %call7, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fd) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__hfsplus_delete_attr(ptr noundef %inode, i32 noundef %cnid, ptr noundef %fd) unnamed_addr #2 align 64 {
entry:
  %found_cnid = alloca i32, align 4
  %record_type = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %found_cnid) #7
  %0 = ptrtoint ptr %found_cnid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %found_cnid, align 4, !annotation !48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %record_type) #7
  %1 = ptrtoint ptr %record_type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %record_type, align 4, !annotation !48
  %bnode = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 3
  %2 = ptrtoint ptr %bnode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bnode, align 4
  %keyoffset = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 5
  %4 = ptrtoint ptr %keyoffset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %keyoffset, align 4
  %add = add i32 %5, 4
  call void @hfsplus_bnode_read(ptr noundef %3, ptr noundef nonnull %found_cnid, i32 noundef %add, i32 noundef 4) #7
  %6 = ptrtoint ptr %found_cnid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %found_cnid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %cnid)
  %cmp.not = icmp eq i32 %7, %cnid
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %bnode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bnode, align 4
  %entryoffset = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 7
  %10 = ptrtoint ptr %entryoffset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %entryoffset, align 4
  call void @hfsplus_bnode_read(ptr noundef %9, ptr noundef nonnull %record_type, i32 noundef %11, i32 noundef 4) #7
  %12 = ptrtoint ptr %record_type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %record_type, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %do.end4 [
    i32 16, label %sw.epilog
    i32 32, label %if.end.do.end_crit_edge
    i32 48, label %if.end.do.end_crit_edge24
  ]

if.end.do.end_crit_edge24:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %if.end.do.end_crit_edge, %if.end.do.end_crit_edge24
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #11
  br label %cleanup

do.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #11
  br label %cleanup

sw.epilog:                                        ; preds = %if.end
  %15 = ptrtoint ptr %bnode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bnode, align 4
  %17 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fd, align 4
  %19 = ptrtoint ptr %keyoffset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %keyoffset, align 4
  %keylength = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 6
  %21 = ptrtoint ptr %keylength to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %keylength, align 4
  call void @hfsplus_bnode_read(ptr noundef %16, ptr noundef %18, i32 noundef %20, i32 noundef %22) #7
  %call9 = call i32 @hfsplus_brec_remove(ptr noundef %fd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end11, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %flags.i = getelementptr i8, ptr %inode, i32 -84
  call void @_set_bit(i32 noundef 4, ptr noundef %flags.i) #7
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %sw.epilog.cleanup_crit_edge, %do.end4, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %do.end4 ], [ -95, %do.end ], [ 0, %if.end11 ], [ -2, %entry.cleanup_crit_edge ], [ %call9, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %record_type) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %found_cnid) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfsplus_delete_all_attrs(ptr noundef %dir, i32 noundef %cnid) local_unnamed_addr #2 align 64 {
entry:
  %fd = alloca %struct.hfs_find_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %fd) #7
  %0 = call ptr @memset(ptr %fd, i32 255, i32 36)
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %1 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 33
  %3 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fs_info.i, align 16
  %attr_tree = getelementptr inbounds %struct.hfsplus_sb_info, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %attr_tree to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %attr_tree, align 8
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %do.end3, label %if.end

do.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call8 = call i32 @hfsplus_find_init(ptr noundef nonnull %6, ptr noundef nonnull %fd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end.for.cond_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.for.cond_crit_edge:                        ; preds = %if.end
  br label %for.cond

for.cond:                                         ; preds = %if.end23.for.cond_crit_edge, %if.end.for.cond_crit_edge
  %7 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 33
  %9 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fs_info.i.i, align 16
  %attr_tree.i = getelementptr inbounds %struct.hfsplus_sb_info, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %attr_tree.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %attr_tree.i, align 8
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %hfsplus_find_attr.exit.thread, label %hfsplus_find_attr.exit

hfsplus_find_attr.exit.thread:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #11
  br label %do.end19

hfsplus_find_attr.exit:                           ; preds = %for.cond
  %13 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fd, align 4
  %15 = getelementptr inbounds i8, ptr %14, i32 2
  %16 = call ptr @memset(ptr %15, i32 0, i32 266)
  %cnid1.i34.i = getelementptr inbounds %struct.hfsplus_attr_key, ptr %14, i32 0, i32 2
  %17 = ptrtoint ptr %cnid1.i34.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %cnid, ptr %cnid1.i34.i, align 1
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 12, ptr %14, align 1
  %call20.i = call i32 @hfsplus_brec_find(ptr noundef nonnull %fd, ptr noundef nonnull @hfs_find_1st_rec_by_cnid) #7
  %19 = zext i32 %call20.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %call20.i, label %hfsplus_find_attr.exit.do.end19_crit_edge [
    i32 0, label %if.end23
    i32 -2, label %hfsplus_find_attr.exit.end_delete_all_crit_edge
  ]

hfsplus_find_attr.exit.end_delete_all_crit_edge:  ; preds = %hfsplus_find_attr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %end_delete_all

hfsplus_find_attr.exit.do.end19_crit_edge:        ; preds = %hfsplus_find_attr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end19

do.end19:                                         ; preds = %hfsplus_find_attr.exit.do.end19_crit_edge, %hfsplus_find_attr.exit.thread
  %retval.0.i40 = phi i32 [ -22, %hfsplus_find_attr.exit.thread ], [ %call20.i, %hfsplus_find_attr.exit.do.end19_crit_edge ]
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #11
  br label %end_delete_all

if.end23:                                         ; preds = %hfsplus_find_attr.exit
  %call24 = call fastcc i32 @__hfsplus_delete_attr(ptr noundef %dir, i32 noundef %cnid, ptr noundef nonnull %fd)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end23.for.cond_crit_edge, label %if.end23.end_delete_all_crit_edge

if.end23.end_delete_all_crit_edge:                ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %end_delete_all

if.end23.for.cond_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

end_delete_all:                                   ; preds = %if.end23.end_delete_all_crit_edge, %do.end19, %hfsplus_find_attr.exit.end_delete_all_crit_edge
  %err.0 = phi i32 [ %retval.0.i40, %do.end19 ], [ %call20.i, %hfsplus_find_attr.exit.end_delete_all_crit_edge ], [ %call24, %if.end23.end_delete_all_crit_edge ]
  call void @hfsplus_find_exit(ptr noundef nonnull %fd) #7
  br label %cleanup

cleanup:                                          ; preds = %end_delete_all, %if.end.cleanup_crit_edge, %do.end3
  %retval.0 = phi i32 [ %err.0, %end_delete_all ], [ -22, %do.end3 ], [ %call8, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fd) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfsplus_bnode_read(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_brec_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !32, !33, !34, !35, !37, !38}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/hfsplus/attributes.c", i32 21, i32 21}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/hfsplus/attributes.c", i32 145, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @hfsplus_find_attr._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @hfsplus_find_attr._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/hfsplus/attributes.c", i32 208, i32 3}
!10 = !{ptr @hfsplus_create_attr._entry, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @hfsplus_create_attr._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/hfsplus/attributes.c", i32 317, i32 3}
!14 = !{ptr @hfsplus_delete_attr._entry, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @hfsplus_delete_attr._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/hfsplus/attributes.c", i32 336, i32 3}
!18 = !{ptr @hfsplus_delete_attr._entry.6, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @hfsplus_delete_attr._entry_ptr.8, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/hfsplus/attributes.c", i32 362, i32 3}
!22 = !{ptr @hfsplus_delete_all_attrs._entry, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @hfsplus_delete_all_attrs._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/hfsplus/attributes.c", i32 374, i32 5}
!26 = !{ptr @hfsplus_delete_all_attrs._entry.10, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @hfsplus_delete_all_attrs._entry_ptr.12, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @hfsplus_attr_tree_cachep, !29, !"hfsplus_attr_tree_cachep", i1 false, i1 false}
!29 = !{!"../fs/hfsplus/attributes.c", i32 13, i32 27}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/hfsplus/attributes.c", i32 288, i32 3}
!32 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @__hfsplus_delete_attr._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @__hfsplus_delete_attr._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/hfsplus/attributes.c", i32 291, i32 3}
!37 = !{ptr @__hfsplus_delete_attr._entry.15, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @__hfsplus_delete_attr._entry_ptr.17, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{!"auto-init"}
