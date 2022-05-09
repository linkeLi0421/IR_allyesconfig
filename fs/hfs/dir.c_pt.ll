; ModuleID = '/llk/IR_all_yes/fs/hfs/dir.c_pt.bc'
source_filename = "../fs/hfs/dir.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%union.hfs_cat_rec = type { %struct.hfs_cat_file }
%struct.hfs_cat_file = type <{ i8, i8, i8, i8, %struct.hfs_finfo, i32, i16, i32, i32, i16, i32, i32, i32, i32, i32, %struct.hfs_fxinfo, i16, [3 x %struct.hfs_extent], [3 x %struct.hfs_extent], i32 }>
%struct.hfs_finfo = type { i32, i32, i16, %struct.hfs_point, i16 }
%struct.hfs_point = type { i16, i16 }
%struct.hfs_fxinfo = type { i16, [8 x i8], i16, i32 }
%struct.hfs_extent = type { i16, i16 }
%struct.hfs_find_data = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.58, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.59, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.60, ptr, %struct.address_space, %struct.list_head, %union.anon.63, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.58 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.59 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.60 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.63 = type { ptr }
%struct.dir_context = type { ptr, i64 }
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
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hfs_sb_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, %struct.kuid_t, %struct.kgid_t, i32, i32, ptr, ptr, %struct.mutex, i32, i16, i32, ptr, i32, %struct.delayed_work, %struct.spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.66, %struct.list_head, %struct.list_head, %union.anon.67 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.lockref = type { %union.anon.64 }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { %struct.spinlock, i32 }
%union.anon.66 = type { %struct.list_head }
%union.anon.67 = type { %struct.hlist_node }
%struct.hfs_cat_thread = type <{ i8, [9 x i8], i32, %struct.hfs_name }>
%struct.hfs_name = type { i8, [31 x i8] }
%struct.hfs_cat_dir = type <{ i8, i8, i16, i16, i32, i32, i32, i32, %struct.hfs_dinfo, %struct.hfs_dxinfo, [16 x i8] }>
%struct.hfs_dinfo = type { %struct.hfs_rect, i16, %struct.hfs_point, i16 }
%struct.hfs_rect = type { i16, i16, i16, i16 }
%struct.hfs_dxinfo = type { %struct.hfs_point, i32, i16, i16, i32 }
%struct.hfs_cat_key = type <{ i8, i8, i32, %struct.hfs_name }>
%struct.hfs_readdir_data = type { %struct.list_head, ptr, %struct.hfs_cat_key }

@hfs_dir_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hfs_readdir, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr @hfs_dir_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@hfs_dir_inode_operations = dso_local local_unnamed_addr constant %struct.inode_operations { ptr @hfs_lookup, ptr null, ptr null, ptr null, ptr null, ptr @hfs_create, ptr null, ptr @hfs_remove, ptr null, ptr @hfs_mkdir, ptr @hfs_remove, ptr null, ptr @hfs_rename, ptr @hfs_inode_setattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@hfs_readdir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 84, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013hfs: bad catalog folder thread\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hfs_readdir\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fs/hfs/dir.c\00", [19 x i8] zeroinitializer }, align 32
@hfs_readdir._entry_ptr = internal global ptr @hfs_readdir._entry, section ".printk_index", align 4
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"..\00", [29 x i8] zeroinitializer }, align 32
@hfs_readdir._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013hfs: walked past end of dir\0A\00", [33 x i8] zeroinitializer }, align 32
@hfs_readdir._entry_ptr.6 = internal global ptr @hfs_readdir._entry.4, section ".printk_index", align 4
@hfs_readdir._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013hfs: small dir entry\0A\00", [40 x i8] zeroinitializer }, align 32
@hfs_readdir._entry_ptr.9 = internal global ptr @hfs_readdir._entry.7, section ".printk_index", align 4
@hfs_readdir._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013hfs: small file entry\0A\00", [39 x i8] zeroinitializer }, align 32
@hfs_readdir._entry_ptr.12 = internal global ptr @hfs_readdir._entry.10, section ".printk_index", align 4
@hfs_readdir._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013hfs: bad catalog entry type %d\0A\00", [62 x i8] zeroinitializer }, align 32
@hfs_readdir._entry_ptr.15 = internal global ptr @hfs_readdir._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c".\00", [30 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 64, i64 0, i64 1]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@___asan_gen_.19 = private unnamed_addr constant [19 x i8] c"hfs_dir_operations\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 309, i32 30 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 84, i32 4 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 93, i32 22 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 106, i32 4 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 121, i32 5 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 130, i32 5 }
@___asan_gen_.55 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.59 = private constant [16 x i8] c"../fs/hfs/dir.c\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 138, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [22 x i8] c"../include/linux/fs.h\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 3566, i32 25 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @hfs_readdir._entry, ptr @hfs_readdir._entry.10, ptr @hfs_readdir._entry.13, ptr @hfs_readdir._entry.4, ptr @hfs_readdir._entry.7, ptr @hfs_readdir._entry_ptr, ptr @hfs_readdir._entry_ptr.12, ptr @hfs_readdir._entry_ptr.15, ptr @hfs_readdir._entry_ptr.6, ptr @hfs_readdir._entry_ptr.9, ptr @hfs_dir_operations, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.16], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfs_dir_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfs_readdir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfs_readdir._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfs_readdir._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfs_readdir._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfs_readdir._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_read_dir(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfs_readdir(ptr noundef %file, ptr noundef %ctx) #1 align 64 {
entry:
  %strbuf = alloca [128 x i8], align 1
  %entry1 = alloca %union.hfs_cat_rec, align 1
  %fd = alloca %struct.hfs_find_data, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %strbuf) #5
  %4 = call ptr @memset(ptr %strbuf, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 102, ptr nonnull %entry1) #5
  %5 = call ptr @memset(ptr %entry1, i32 255, i32 102)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %fd) #5
  %6 = call ptr @memset(ptr %fd, i32 255, i32 36)
  %pos = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %7 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %pos, align 8
  %i_size = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %9 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %10)
  %cmp.not = icmp slt i64 %8, %10
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %11 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_fs_info, align 16
  %cat_tree = getelementptr inbounds %struct.hfs_sb_info, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %cat_tree to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cat_tree, align 4
  %call2 = call i32 @hfs_find_init(ptr noundef %14, ptr noundef nonnull %fd) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %search_key = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 1
  %15 = ptrtoint ptr %search_key to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %search_key, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %17 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i_ino, align 8
  call void @hfs_cat_build_key(ptr noundef %3, ptr noundef %16, i32 noundef %18, ptr noundef null) #5
  %call5 = call i32 @hfs_brec_find(ptr noundef nonnull %fd) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.out_crit_edge

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end8:                                          ; preds = %if.end4
  %19 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i64 %20, label %if.end8.if.end36_crit_edge [
    i64 0, label %if.then11
    i64 1, label %if.end8.if.then19_crit_edge
  ]

if.end8.if.then19_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then19

if.end8.if.end36_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.then11:                                        ; preds = %if.end8
  %21 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctx, align 8
  %dentry.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dentry.i, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %d_inode.i, align 8
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %26, i32 0, i32 11
  %27 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %i_ino.i, align 8
  %conv.i = zext i32 %28 to i64
  %call.i = call i32 %22(ptr noundef %ctx, ptr noundef nonnull @.str.16, i32 noundef 1, i64 noundef 0, i64 noundef %conv.i, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end16.thread, label %if.then11.out_crit_edge

if.then11.out_crit_edge:                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end16.thread:                                  ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 1, ptr %pos, align 8
  br label %if.then19

if.then19:                                        ; preds = %if.end16.thread, %if.end8.if.then19_crit_edge
  %entrylength = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 8
  %30 = ptrtoint ptr %entrylength to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %entrylength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 102, i32 %31)
  %cmp20 = icmp ugt i32 %31, 102
  br i1 %cmp20, label %if.then19.out_crit_edge, label %if.end24

if.then19.out_crit_edge:                          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end24:                                         ; preds = %if.then19
  %bnode = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 3
  %32 = ptrtoint ptr %bnode to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bnode, align 4
  %entryoffset = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 7
  %34 = ptrtoint ptr %entryoffset to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %entryoffset, align 4
  call void @hfs_bnode_read(ptr noundef %33, ptr noundef nonnull %entry1, i32 noundef %35, i32 noundef %31) #5
  %36 = ptrtoint ptr %entry1 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %entry1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %37)
  %cmp26.not = icmp eq i8 %37, 3
  br i1 %cmp26.not, label %if.end30, label %do.end

do.end:                                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  br label %out

if.end30:                                         ; preds = %if.end24
  %ParID = getelementptr inbounds %struct.hfs_cat_thread, ptr %entry1, i32 0, i32 2
  %38 = ptrtoint ptr %ParID to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %ParID, align 1
  %conv31 = zext i32 %39 to i64
  %40 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ctx, align 8
  %42 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %pos, align 8
  %call.i203 = call i32 %41(ptr noundef %ctx, ptr noundef nonnull @.str.3, i32 noundef 2, i64 noundef %43, i64 noundef %conv31, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i203)
  %cmp.i204 = icmp eq i32 %call.i203, 0
  br i1 %cmp.i204, label %if.end34, label %if.end30.out_crit_edge

if.end30.out_crit_edge:                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end34:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 2, ptr %pos, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.end34, %if.end8.if.end36_crit_edge
  %45 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %pos, align 8
  %47 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %46, i64 %48)
  %cmp39.not = icmp slt i64 %46, %48
  br i1 %cmp39.not, label %if.end42, label %if.end36.out_crit_edge

if.end36.out_crit_edge:                           ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end42:                                         ; preds = %if.end36
  %49 = trunc i64 %46 to i32
  %conv44 = add i32 %49, -1
  %call45 = call i32 @hfs_brec_goto(ptr noundef nonnull %fd, i32 noundef %conv44) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %for.cond.preheader, label %if.end42.out_crit_edge

if.end42.out_crit_edge:                           ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

for.cond.preheader:                               ; preds = %if.end42
  %entrylength60 = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 8
  %bnode69 = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 3
  %entryoffset70 = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 7
  %FlNum = getelementptr inbounds %struct.hfs_cat_file, ptr %entry1, i32 0, i32 5
  %DirID = getelementptr inbounds %struct.hfs_cat_dir, ptr %entry1, i32 0, i32 4
  br label %for.cond

for.cond:                                         ; preds = %if.end128.for.cond_crit_edge, %for.cond.preheader
  %50 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %fd, align 4
  %ParID49 = getelementptr inbounds %struct.hfs_cat_key, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %ParID49 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %ParID49, align 1
  %54 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %55)
  %cmp51.not = icmp eq i32 %53, %55
  br i1 %cmp51.not, label %if.end59, label %do.end56

do.end56:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  %call58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #8
  br label %out

if.end59:                                         ; preds = %for.cond
  %56 = ptrtoint ptr %entrylength60 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %entrylength60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 102, i32 %57)
  %cmp61 = icmp ugt i32 %57, 102
  br i1 %cmp61, label %if.end59.out_crit_edge, label %if.end68

if.end59.out_crit_edge:                           ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end68:                                         ; preds = %if.end59
  %58 = ptrtoint ptr %bnode69 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bnode69, align 4
  %60 = ptrtoint ptr %entryoffset70 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %entryoffset70, align 4
  call void @hfs_bnode_read(ptr noundef %59, ptr noundef nonnull %entry1, i32 noundef %61, i32 noundef %57) #5
  %62 = ptrtoint ptr %entry1 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %entry1, align 1
  %64 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %fd, align 4
  %CName = getelementptr inbounds %struct.hfs_cat_key, ptr %65, i32 0, i32 3
  %call74 = call i32 @hfs_mac2asc(ptr noundef %3, ptr noundef nonnull %strbuf, ptr noundef %CName) #5
  %trunc = sext i8 %63 to i16
  %66 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.17)
  switch i16 %trunc, label %do.end116 [
    i16 1, label %if.then78
    i16 2, label %if.then97
  ]

if.then78:                                        ; preds = %if.end68
  %67 = ptrtoint ptr %entrylength60 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %entrylength60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 70, i32 %68)
  %cmp80 = icmp ult i32 %68, 70
  br i1 %cmp80, label %do.end85, label %if.end88

do.end85:                                         ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #7
  %call87 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #8
  br label %out

if.end88:                                         ; preds = %if.then78
  %69 = ptrtoint ptr %DirID to i32
  call void @__asan_loadN_noabort(i32 %69, i32 4)
  %70 = load i32, ptr %DirID, align 1
  %conv90 = zext i32 %70 to i64
  %71 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ctx, align 8
  %73 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %pos, align 8
  %call.i206 = call i32 %72(ptr noundef %ctx, ptr noundef nonnull %strbuf, i32 noundef %call74, i64 noundef %74, i64 noundef %conv90, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i206)
  %cmp.i207 = icmp eq i32 %call.i206, 0
  br i1 %cmp.i207, label %if.end88.if.end121_crit_edge, label %if.end88.for.end_crit_edge

if.end88.for.end_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end88.if.end121_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end121

if.then97:                                        ; preds = %if.end68
  %75 = ptrtoint ptr %entrylength60 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %entrylength60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 102, i32 %76)
  %cmp99 = icmp ult i32 %76, 102
  br i1 %cmp99, label %do.end104, label %if.end107

do.end104:                                        ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #7
  %call106 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #8
  br label %out

if.end107:                                        ; preds = %if.then97
  %77 = ptrtoint ptr %FlNum to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %78 = load i32, ptr %FlNum, align 1
  %conv109 = zext i32 %78 to i64
  %79 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ctx, align 8
  %81 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %pos, align 8
  %call.i209 = call i32 %80(ptr noundef %ctx, ptr noundef nonnull %strbuf, i32 noundef %call74, i64 noundef %82, i64 noundef %conv109, i32 noundef 8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i209)
  %cmp.i210 = icmp eq i32 %call.i209, 0
  br i1 %cmp.i210, label %if.end107.if.end121_crit_edge, label %if.end107.for.end_crit_edge

if.end107.for.end_crit_edge:                      ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end107.if.end121_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end121

do.end116:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  %conv72 = sext i8 %63 to i32
  %conv75 = and i32 %conv72, 65535
  %call119 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %conv75) #8
  br label %out

if.end121:                                        ; preds = %if.end107.if.end121_crit_edge, %if.end88.if.end121_crit_edge
  %83 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %pos, align 8
  %inc = add i64 %84, 1
  store i64 %inc, ptr %pos, align 8
  %85 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %inc, i64 %86)
  %cmp125.not = icmp slt i64 %inc, %86
  br i1 %cmp125.not, label %if.end128, label %if.end121.out_crit_edge

if.end121.out_crit_edge:                          ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end128:                                        ; preds = %if.end121
  %call129 = call i32 @hfs_brec_goto(ptr noundef nonnull %fd, i32 noundef 1) #5
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %if.end128.for.cond_crit_edge, label %if.end128.out_crit_edge

if.end128.out_crit_edge:                          ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end128.for.cond_crit_edge:                     ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

for.end:                                          ; preds = %if.end107.for.end_crit_edge, %if.end88.for.end_crit_edge
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %87 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %private_data, align 4
  %tobool133.not = icmp eq ptr %88, null
  br i1 %tobool133.not, label %if.then134, label %for.end.if.end149_crit_edge

for.end.if.end149_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end149

if.then134:                                       ; preds = %for.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %89 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %89, i32 noundef 3264, i32 noundef 52) #9
  %tobool136.not = icmp eq ptr %call7.i, null
  br i1 %tobool136.not, label %if.then134.out_crit_edge, label %if.end138

if.then134.out_crit_edge:                         ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end138:                                        ; preds = %if.then134
  %90 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call7.i, ptr %private_data, align 4
  %file140 = getelementptr inbounds %struct.hfs_readdir_data, ptr %call7.i, i32 0, i32 1
  %91 = ptrtoint ptr %file140 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %file, ptr %file140, align 8
  %open_dir_lock = getelementptr i8, ptr %1, i32 -196
  call void @_raw_spin_lock(ptr noundef %open_dir_lock) #5
  %open_dir_list = getelementptr i8, ptr %1, i32 -204
  %92 = ptrtoint ptr %open_dir_list to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %open_dir_list, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %open_dir_list, ptr noundef %93) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.end138.list_add.exit_crit_edge

if.end138.list_add.exit_crit_edge:                ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %call7.i, ptr %prev1.i.i, align 4
  %95 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %93, ptr %call7.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %96 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %open_dir_list, ptr %prev3.i.i, align 4
  %97 = ptrtoint ptr %open_dir_list to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %call7.i, ptr %open_dir_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end138.list_add.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %open_dir_lock) #5
  br label %if.end149

if.end149:                                        ; preds = %list_add.exit, %for.end.if.end149_crit_edge
  %rd.0 = phi ptr [ %88, %for.end.if.end149_crit_edge ], [ %call7.i, %list_add.exit ]
  %key150 = getelementptr inbounds %struct.hfs_readdir_data, ptr %rd.0, i32 0, i32 2
  %98 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %fd, align 4
  %100 = call ptr @memcpy(ptr %key150, ptr %99, i32 38)
  br label %out

out:                                              ; preds = %if.end149, %if.then134.out_crit_edge, %if.end128.out_crit_edge, %if.end121.out_crit_edge, %do.end116, %do.end104, %do.end85, %if.end59.out_crit_edge, %do.end56, %if.end42.out_crit_edge, %if.end36.out_crit_edge, %if.end30.out_crit_edge, %do.end, %if.then19.out_crit_edge, %if.then11.out_crit_edge, %if.end4.out_crit_edge
  %err.1 = phi i32 [ %call5, %if.end4.out_crit_edge ], [ -5, %do.end ], [ 0, %if.end36.out_crit_edge ], [ %call45, %if.end42.out_crit_edge ], [ -5, %do.end56 ], [ -5, %do.end85 ], [ 0, %if.end149 ], [ -5, %do.end104 ], [ -5, %do.end116 ], [ 0, %if.end30.out_crit_edge ], [ 0, %if.then11.out_crit_edge ], [ -5, %if.then19.out_crit_edge ], [ -12, %if.then134.out_crit_edge ], [ -5, %if.end59.out_crit_edge ], [ %call129, %if.end128.out_crit_edge ], [ 0, %if.end121.out_crit_edge ]
  call void @hfs_find_exit(ptr noundef nonnull %fd) #5
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %out ], [ 0, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fd) #5
  call void @llvm.lifetime.end.p0(i64 102, ptr nonnull %entry1) #5
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %strbuf) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfs_dir_release(ptr noundef %inode, ptr nocapture noundef readonly %file) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %open_dir_lock = getelementptr i8, ptr %inode, i32 -196
  tail call void @_raw_spin_lock(ptr noundef %open_dir_lock) #5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %1) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %open_dir_lock) #5
  tail call void @kfree(ptr noundef nonnull %1) #5
  br label %if.end

if.end:                                           ; preds = %list_del.exit, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @hfs_lookup(ptr nocapture noundef readonly %dir, ptr noundef %dentry, i32 noundef %flags) #1 align 64 {
entry:
  %rec = alloca %union.hfs_cat_rec, align 1
  %fd = alloca %struct.hfs_find_data, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 102, ptr nonnull %rec) #5
  %0 = call ptr @memset(ptr %rec, i32 255, i32 102)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %fd) #5
  %1 = call ptr @memset(ptr %fd, i32 255, i32 36)
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  %cat_tree = getelementptr inbounds %struct.hfs_sb_info, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %cat_tree to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cat_tree, align 4
  %call = call i32 @hfs_find_init(ptr noundef %7, ptr noundef nonnull %fd) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %8 = inttoptr i32 %call to ptr
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_sb, align 4
  %search_key = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 1
  %11 = ptrtoint ptr %search_key to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %search_key, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %13 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_ino, align 8
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  call void @hfs_cat_build_key(ptr noundef %10, ptr noundef %12, i32 noundef %14, ptr noundef %d_name) #5
  %call3 = call i32 @hfs_brec_read(ptr noundef nonnull %fd, ptr noundef nonnull %rec, i32 noundef 102) #5
  %15 = zext i32 %call3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %call3, label %if.then6 [
    i32 0, label %if.else
    i32 -2, label %if.end.if.end16_crit_edge
  ]

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %16 = inttoptr i32 %call3 to ptr
  br label %if.end16

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_sb, align 4
  %19 = ptrtoint ptr %search_key to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %search_key, align 4
  %call11 = call ptr @hfs_iget(ptr noundef %18, ptr noundef %20, ptr noundef nonnull %rec) #5
  %tobool12.not = icmp eq ptr %call11, null
  %spec.select = select i1 %tobool12.not, ptr inttoptr (i32 -13 to ptr), ptr %call11
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then6, %if.end.if.end16_crit_edge
  %inode.0 = phi ptr [ %16, %if.then6 ], [ null, %if.end.if.end16_crit_edge ], [ %spec.select, %if.else ]
  call void @hfs_find_exit(ptr noundef nonnull %fd) #5
  %call17 = call ptr @d_splice_alias(ptr noundef %inode.0, ptr noundef %dentry) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then
  %retval.0 = phi ptr [ %8, %if.then ], [ %call17, %if.end16 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fd) #5
  call void @llvm.lifetime.end.p0(i64 102, ptr nonnull %rec) #5
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfs_create(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode, i1 noundef zeroext %excl) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %call = tail call ptr @hfs_new_inode(ptr noundef %dir, ptr noundef %d_name, i16 noundef zeroext %mode) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_ino = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 11
  %0 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_ino, align 8
  %call2 = tail call i32 @hfs_cat_create(i32 noundef %1, ptr noundef %dir, ptr noundef %d_name, ptr noundef nonnull %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clear_nlink(ptr noundef nonnull %call) #5
  tail call void @hfs_delete_inode(ptr noundef nonnull %call) #5
  tail call void @iput(ptr noundef nonnull %call) #5
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @d_instantiate(ptr noundef %dentry, ptr noundef nonnull %call) #5
  tail call void @__mark_inode_dirty(ptr noundef nonnull %call, i32 noundef 7) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then4 ], [ 0, %if.end5 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfs_remove(ptr noundef %dir, ptr noundef %dentry) #1 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 8
  %4 = and i16 %3, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %4)
  %cmp = icmp eq i16 %4, 16384
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %i_size = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %5 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %6)
  %cmp2.not = icmp eq i64 %6, 2
  br i1 %cmp2.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %i_ino = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i_ino, align 8
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %call4 = tail call i32 @hfs_cat_delete(i32 noundef %8, ptr noundef %dir, ptr noundef %d_name) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clear_nlink(ptr noundef %1) #5
  %i_ctime = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #5
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %1) #5
  %9 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #5
  call void @hfs_delete_inode(ptr noundef %1) #5
  call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -39, %land.lhs.true.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfs_mkdir(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %0 = or i16 %mode, 16384
  %call = tail call ptr @hfs_new_inode(ptr noundef %dir, ptr noundef %d_name, i16 noundef zeroext %0) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_ino = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 11
  %1 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %i_ino, align 8
  %call3 = tail call i32 @hfs_cat_create(i32 noundef %2, ptr noundef %dir, ptr noundef %d_name, ptr noundef nonnull %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clear_nlink(ptr noundef nonnull %call) #5
  tail call void @hfs_delete_inode(ptr noundef nonnull %call) #5
  tail call void @iput(ptr noundef nonnull %call) #5
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @d_instantiate(ptr noundef %dentry, ptr noundef nonnull %call) #5
  tail call void @__mark_inode_dirty(ptr noundef nonnull %call, i32 noundef 7) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then5 ], [ 0, %if.end6 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfs_rename(ptr nocapture noundef readnone %mnt_userns, ptr noundef %old_dir, ptr noundef %old_dentry, ptr noundef %new_dir, ptr noundef %new_dentry, i32 noundef %flags) #1 align 64 {
entry:
  %tmp.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %flags)
  %tobool.not = icmp ult i32 %flags, 2
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %cmp.i.not = icmp eq ptr %1, null
  br i1 %cmp.i.not, label %if.end.if.end6_crit_edge, label %if.then1

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then1:                                         ; preds = %if.end
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 8
  %4 = and i16 %3, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %4)
  %cmp.i27 = icmp eq i16 %4, 16384
  br i1 %cmp.i27, label %land.lhs.true.i, label %if.then1.if.end.i_crit_edge

if.then1.if.end.i_crit_edge:                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then1
  %i_size.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %5 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %i_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %6)
  %cmp2.not.i = icmp eq i64 %6, 2
  br i1 %cmp2.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.then1.if.end.i_crit_edge
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i_ino.i, align 8
  %d_name.i = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 4
  %call4.i = tail call i32 @hfs_cat_delete(i32 noundef %8, ptr noundef %new_dir, ptr noundef %d_name.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %hfs_remove.exit, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

hfs_remove.exit:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clear_nlink(ptr noundef nonnull %1) #5
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #5
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, ptr noundef nonnull %1) #5
  %9 = call ptr @memcpy(ptr %i_ctime.i, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #5
  call void @hfs_delete_inode(ptr noundef nonnull %1) #5
  call void @__mark_inode_dirty(ptr noundef nonnull %1, i32 noundef 7) #5
  br label %if.end6

if.end6:                                          ; preds = %hfs_remove.exit, %if.end.if.end6_crit_edge
  %d_inode.i28 = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 5
  %10 = ptrtoint ptr %d_inode.i28 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d_inode.i28, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_ino, align 8
  %d_name = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 4
  %d_name8 = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 4
  %call9 = call i32 @hfs_cat_move(i32 noundef %13, ptr noundef %old_dir, ptr noundef %d_name, ptr noundef %new_dir, ptr noundef %d_name8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %i_sb = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 8
  %14 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_sb, align 4
  %16 = ptrtoint ptr %d_inode.i28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %d_inode.i28, align 8
  %cat_key = getelementptr i8, ptr %17, i32 -244
  %i_ino13 = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 11
  %18 = ptrtoint ptr %i_ino13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i_ino13, align 8
  call void @hfs_cat_build_key(ptr noundef %15, ptr noundef %cat_key, i32 noundef %19, ptr noundef %d_name8) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end6.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then11 ], [ %call9, %if.end6.cleanup_crit_edge ], [ %call4.i, %if.end.i.cleanup_crit_edge ], [ -39, %land.lhs.true.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfs_inode_setattr(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfs_find_init(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfs_cat_build_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfs_brec_find(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfs_bnode_read(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfs_brec_goto(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfs_mac2asc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfs_find_exit(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfs_brec_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hfs_iget(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_splice_alias(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hfs_new_inode(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfs_cat_create(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_nlink(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfs_delete_inode(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfs_cat_delete(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfs_cat_move(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @hfs_dir_operations, !1, !"hfs_dir_operations", i1 false, i1 false}
!1 = !{!"../fs/hfs/dir.c", i32 309, i32 30}
!2 = !{ptr @hfs_dir_inode_operations, !3, !"hfs_dir_inode_operations", i1 false, i1 false}
!3 = !{!"../fs/hfs/dir.c", i32 316, i32 31}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/hfs/dir.c", i32 84, i32 4}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @hfs_readdir._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @hfs_readdir._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/hfs/dir.c", i32 93, i32 22}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/hfs/dir.c", i32 106, i32 4}
!14 = !{ptr @hfs_readdir._entry.4, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @hfs_readdir._entry_ptr.6, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/hfs/dir.c", i32 121, i32 5}
!18 = !{ptr @hfs_readdir._entry.7, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @hfs_readdir._entry_ptr.9, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/hfs/dir.c", i32 130, i32 5}
!22 = !{ptr @hfs_readdir._entry.10, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @hfs_readdir._entry_ptr.12, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/hfs/dir.c", i32 138, i32 4}
!26 = !{ptr @hfs_readdir._entry.13, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @hfs_readdir._entry_ptr.15, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../include/linux/fs.h", i32 3566, i32 25}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
