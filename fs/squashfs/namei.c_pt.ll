; ModuleID = '/llk/IR_all_yes/fs/squashfs/namei.c_pt.bc'
source_filename = "../fs/squashfs/namei.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.squashfs_dir_header = type { i32, i32, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.70, %struct.list_head, %struct.list_head, %union.anon.71 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.68 }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%union.anon.70 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.71 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.64 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.65 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.66 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.67 = type { ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.squashfs_sb_info = type { ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i64, i64, i64, i32, i16, i64, i32, i32, i32, i32, i8 }
%struct.squashfs_dir_entry = type { i16, i16, i16, i16, [0 x i8] }
%struct.squashfs_dir_index = type { i32, i32, i32, [0 x i8] }

@squashfs_dir_inode_ops = dso_local local_unnamed_addr constant %struct.inode_operations { ptr @squashfs_lookup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @squashfs_listxattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@squashfs_lookup.__UNIQUE_ID_ddebug218 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 35, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"squashfs\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"squashfs_lookup\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fs/squashfs/namei.c\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"SQUASHFS: Entered squashfs_lookup [%llx:%x]\0A\00", [51 x i8] zeroinitializer }, align 32
@squashfs_lookup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013SQUASHFS error: Failed to allocate squashfs_dir_entry\0A\00", [39 x i8] zeroinitializer }, align 32
@squashfs_lookup._entry_ptr = internal global ptr @squashfs_lookup._entry, section ".printk_index", align 4
@squashfs_lookup.__UNIQUE_ID_ddebug219 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 52, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"SQUASHFS: calling squashfs_iget for directory entry %s, inode  %x:%x, %d\0A\00", [54 x i8] zeroinitializer }, align 32
@squashfs_lookup._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013SQUASHFS error: Unable to read directory block [%llx:%x]\0A\00", [36 x i8] zeroinitializer }, align 32
@squashfs_lookup._entry_ptr.8 = internal global ptr @squashfs_lookup._entry.6, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@get_dir_index_using_name.__UNIQUE_ID_ddebug217 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 18, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"get_dir_index_using_name\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"SQUASHFS: Entered get_dir_index_using_name, i_count %d\0A\00", [40 x i8] zeroinitializer }, align 32
@get_dir_index_using_name._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 78, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013SQUASHFS error: Failed to allocate squashfs_dir_index\0A\00", [39 x i8] zeroinitializer }, align 32
@get_dir_index_using_name._entry_ptr = internal global ptr @get_dir_index_using_name._entry, section ".printk_index", align 4
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 140, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 144, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 208, i32 5 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 226, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 74, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.49 = private constant [23 x i8] c"../fs/squashfs/namei.c\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 78, i32 3 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @get_dir_index_using_name._entry, ptr @get_dir_index_using_name._entry_ptr, ptr @squashfs_lookup._entry, ptr @squashfs_lookup._entry.6, ptr @squashfs_lookup._entry_ptr, ptr @squashfs_lookup._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @squashfs_lookup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @squashfs_lookup._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_dir_index_using_name._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @squashfs_lookup(ptr noundef %dir, ptr noundef %dentry, i32 noundef %flags) #0 align 64 {
entry:
  %dirh = alloca %struct.squashfs_dir_header, align 4
  %block = alloca i64, align 8
  %offset = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %name1 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name1, align 8
  %2 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %d_name, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %dirh) #9
  %8 = ptrtoint ptr %dirh to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %dirh, align 4, !annotation !36
  %9 = getelementptr inbounds %struct.squashfs_dir_header, ptr %dirh, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4, !annotation !36
  %11 = getelementptr inbounds %struct.squashfs_dir_header, ptr %dirh, i32 0, i32 2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %11, align 4, !annotation !36
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %block) #9
  %add.ptr.i = getelementptr i8, ptr %dir, i32 -56
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %add.ptr.i, align 8
  %directory_table = getelementptr inbounds %struct.squashfs_sb_info, ptr %7, i32 0, i32 15
  %15 = ptrtoint ptr %directory_table to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %directory_table, align 8
  %add = add i64 %16, %14
  %17 = ptrtoint ptr %block to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %add, ptr %block, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #9
  %offset5 = getelementptr i8, ptr %dir, i32 -48
  %18 = ptrtoint ptr %offset5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %offset5, align 8
  %20 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %offset, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @squashfs_lookup.__UNIQUE_ID_ddebug218, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@squashfs_lookup, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !37

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %block to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %block, align 8
  %23 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %offset, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @squashfs_lookup.__UNIQUE_ID_ddebug218, ptr noundef nonnull @.str.3, i64 noundef %22, i32 noundef %24) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3264, i32 noundef 265) #12
  %cmp = icmp eq ptr %call7.i, null
  br i1 %cmp, label %do.end13, label %if.end17

do.end13:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #13
  br label %cleanup

if.end17:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %3)
  %cmp18 = icmp sgt i32 %3, 256
  br i1 %cmp18, label %if.end17.failed_crit_edge, label %if.end20

if.end17.failed_crit_edge:                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed

if.end20:                                         ; preds = %if.end17
  %26 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_sb, align 4
  %28 = getelementptr i8, ptr %dir, i32 -24
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %28, align 8
  %dir_idx_offset = getelementptr i8, ptr %dir, i32 -16
  %31 = ptrtoint ptr %dir_idx_offset to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dir_idx_offset, align 8
  %dir_idx_cnt = getelementptr i8, ptr %dir, i32 -12
  %33 = ptrtoint ptr %dir_idx_cnt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dir_idx_cnt, align 4
  %call25 = call fastcc i32 @get_dir_index_using_name(ptr noundef %27, ptr noundef nonnull %block, ptr noundef nonnull %offset, i64 noundef %30, i32 noundef %32, i32 noundef %34, ptr noundef %1, i32 noundef %3)
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 23
  %dep_map.c48.i.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 23, i32 1
  %i_size18.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 14
  %size50 = getelementptr inbounds %struct.squashfs_dir_entry, ptr %call7.i, i32 0, i32 3
  %name58 = getelementptr inbounds %struct.squashfs_dir_entry, ptr %call7.i, i32 0, i32 4
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %if.end20
  %length.0 = phi i32 [ %call25, %if.end20 ], [ %length.0.be, %while.cond.backedge ]
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %while.cond
  %35 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !38
  %and.i.i.i = and i32 %35, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @trace_hardirqs_off() #9
  %36 = call ptr @llvm.returnaddress(i32 0) #9
  %37 = ptrtoint ptr %36 to i32
  call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %37) #9
  call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %37) #9
  call void @trace_hardirqs_on() #9
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %38 = call ptr @llvm.returnaddress(i32 0) #9
  %39 = ptrtoint ptr %38 to i32
  call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %39) #9
  call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %39) #9
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %40 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !39
  %and.i.i.i.i = and i32 %40, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !40

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @warn_bogus_irq_restore() #9
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %35) #9, !srcloc !41
  %41 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and29.i = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not30.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not30.i, label %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !42
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !43
  %43 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and.i = and i32 %44, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %42, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge ], [ %44, %do.end.i.while.end.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !44
  %45 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %i_size18.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !45
  %47 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %48, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %i_size_read.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

i_size_read.exit:                                 ; preds = %while.end.i
  %conv = sext i32 %length.0 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %46, i64 %conv)
  %cmp27 = icmp sgt i64 %46, %conv
  br i1 %cmp27, label %while.body, label %i_size_read.exit.exit_lookup_crit_edge

i_size_read.exit.exit_lookup_crit_edge:           ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_lookup

while.body:                                       ; preds = %i_size_read.exit
  %49 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %i_sb, align 4
  %call30 = call i32 @squashfs_read_metadata(ptr noundef %50, ptr noundef nonnull %dirh, ptr noundef nonnull %block, ptr noundef nonnull %offset, i32 noundef 12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %while.body.do.end112_crit_edge, label %if.end34

while.body.do.end112_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end112

if.end34:                                         ; preds = %while.body
  %51 = ptrtoint ptr %dirh to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dirh, align 4
  %53 = call i32 @llvm.bswap.i32(i32 %52)
  %add36 = add i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %add36)
  %cmp37 = icmp ugt i32 %add36, 256
  br i1 %cmp37, label %if.end34.do.end112_crit_edge, label %while.cond41.preheader

if.end34.do.end112_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end112

while.cond41.preheader:                           ; preds = %if.end34
  %add35 = add i32 %length.0, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add36)
  %tobool42.not195 = icmp eq i32 %add36, 0
  br i1 %tobool42.not195, label %while.cond41.preheader.while.cond.backedge_crit_edge, label %while.cond41.preheader.while.body43_crit_edge

while.cond41.preheader.while.body43_crit_edge:    ; preds = %while.cond41.preheader
  br label %while.body43

while.cond41.preheader.while.cond.backedge_crit_edge: ; preds = %while.cond41.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end107.while.cond.backedge_crit_edge, %while.cond41.preheader.while.cond.backedge_crit_edge
  %length.0.be = phi i32 [ %add35, %while.cond41.preheader.while.cond.backedge_crit_edge ], [ %add65, %if.end107.while.cond.backedge_crit_edge ]
  br label %while.cond

while.body43:                                     ; preds = %if.end107.while.body43_crit_edge, %while.cond41.preheader.while.body43_crit_edge
  %dec197 = phi i32 [ %dec, %if.end107.while.body43_crit_edge ], [ %53, %while.cond41.preheader.while.body43_crit_edge ]
  %length.1196 = phi i32 [ %add65, %if.end107.while.body43_crit_edge ], [ %add35, %while.cond41.preheader.while.body43_crit_edge ]
  %54 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %i_sb, align 4
  %call45 = call i32 @squashfs_read_metadata(ptr noundef %55, ptr noundef nonnull %call7.i, ptr noundef nonnull %block, ptr noundef nonnull %offset, i32 noundef 8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %while.body43.do.end112_crit_edge, label %if.end49

while.body43.do.end112_crit_edge:                 ; preds = %while.body43
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end112

if.end49:                                         ; preds = %while.body43
  %56 = ptrtoint ptr %size50 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %size50, align 2
  %58 = call i16 @llvm.bswap.i16(i16 %57)
  %conv51 = zext i16 %58 to i32
  %add52 = add nuw nsw i32 %conv51, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %58)
  %cmp53 = icmp ugt i16 %58, 255
  br i1 %cmp53, label %if.end49.do.end112_crit_edge, label %if.end56

if.end49.do.end112_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end112

if.end56:                                         ; preds = %if.end49
  %59 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %i_sb, align 4
  %call59 = call i32 @squashfs_read_metadata(ptr noundef %60, ptr noundef %name58, ptr noundef nonnull %block, ptr noundef nonnull %offset, i32 noundef %add52) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60 = icmp slt i32 %call59, 0
  br i1 %cmp60, label %if.end56.do.end112_crit_edge, label %if.end63

if.end56.do.end112_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end112

if.end63:                                         ; preds = %if.end56
  %add64 = add i32 %length.1196, 9
  %add65 = add i32 %add64, %conv51
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %1, align 1
  %63 = ptrtoint ptr %name58 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %name58, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %62, i8 %64)
  %cmp70 = icmp ult i8 %62, %64
  br i1 %cmp70, label %if.end63.exit_lookup_crit_edge, label %if.end73

if.end63.exit_lookup_crit_edge:                   ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_lookup

if.end73:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %add52)
  %cmp74 = icmp eq i32 %3, %add52
  br i1 %cmp74, label %land.lhs.true, label %if.end73.if.end107_crit_edge

if.end73.if.end107_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end107

land.lhs.true:                                    ; preds = %if.end73
  %call78 = call i32 @strncmp(ptr noundef %1, ptr noundef %name58, i32 noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.then80, label %land.lhs.true.if.end107_crit_edge

land.lhs.true.if.end107_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end107

if.then80:                                        ; preds = %land.lhs.true
  %65 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %9, align 4
  %67 = call i32 @llvm.bswap.i32(i32 %66)
  %68 = ptrtoint ptr %call7.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %call7.i, align 8
  %70 = call i16 @llvm.bswap.i16(i16 %69)
  %71 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %11, align 4
  %73 = call i32 @llvm.bswap.i32(i32 %72)
  %inode_number83 = getelementptr inbounds %struct.squashfs_dir_entry, ptr %call7.i, i32 0, i32 1
  %74 = ptrtoint ptr %inode_number83 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %inode_number83, align 2
  %76 = call i16 @llvm.bswap.i16(i16 %75)
  %conv84 = sext i16 %76 to i32
  %add85 = add i32 %73, %conv84
  %conv86 = zext i32 %67 to i64
  %shl = shl nuw nsw i64 %conv86, 16
  %conv87 = zext i16 %70 to i64
  %add88 = or i64 %shl, %conv87
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @squashfs_lookup.__UNIQUE_ID_ddebug219, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@squashfs_lookup, %if.then101)) #9
          to label %do.end104 [label %if.then101], !srcloc !37

if.then101:                                       ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #11
  %conv82 = zext i16 %70 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @squashfs_lookup.__UNIQUE_ID_ddebug219, ptr noundef nonnull @.str.5, ptr noundef %1, i32 noundef %67, i32 noundef %conv82, i32 noundef %add85) #9
  br label %do.end104

do.end104:                                        ; preds = %if.then101, %if.then80
  %77 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %i_sb, align 4
  %call106 = call ptr @squashfs_iget(ptr noundef %78, i64 noundef %add88, i32 noundef %add85) #9
  br label %exit_lookup

if.end107:                                        ; preds = %land.lhs.true.if.end107_crit_edge, %if.end73.if.end107_crit_edge
  %dec = add i32 %dec197, -1
  %tobool42.not = icmp eq i32 %dec197, 0
  br i1 %tobool42.not, label %if.end107.while.cond.backedge_crit_edge, label %if.end107.while.body43_crit_edge

if.end107.while.body43_crit_edge:                 ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body43

if.end107.while.cond.backedge_crit_edge:          ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

exit_lookup:                                      ; preds = %do.end104, %if.end63.exit_lookup_crit_edge, %i_size_read.exit.exit_lookup_crit_edge
  %inode.0 = phi ptr [ %call106, %do.end104 ], [ null, %if.end63.exit_lookup_crit_edge ], [ null, %i_size_read.exit.exit_lookup_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i) #9
  %call109 = call ptr @d_splice_alias(ptr noundef %inode.0, ptr noundef %dentry) #9
  br label %cleanup

do.end112:                                        ; preds = %if.end56.do.end112_crit_edge, %if.end49.do.end112_crit_edge, %while.body43.do.end112_crit_edge, %if.end34.do.end112_crit_edge, %while.body.do.end112_crit_edge
  %err.0 = phi i32 [ -5, %if.end49.do.end112_crit_edge ], [ %call59, %if.end56.do.end112_crit_edge ], [ %call45, %while.body43.do.end112_crit_edge ], [ -5, %if.end34.do.end112_crit_edge ], [ %call30, %while.body.do.end112_crit_edge ]
  %79 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %add.ptr.i, align 8
  %81 = ptrtoint ptr %directory_table to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %directory_table, align 8
  %add117 = add i64 %82, %80
  %83 = ptrtoint ptr %offset5 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %offset5, align 8
  %call120 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %add117, i32 noundef %84) #13
  br label %failed

failed:                                           ; preds = %do.end112, %if.end17.failed_crit_edge
  %err.1 = phi i32 [ %err.0, %do.end112 ], [ -36, %if.end17.failed_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i) #9
  %85 = inttoptr i32 %err.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %failed, %exit_lookup, %do.end13
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %do.end13 ], [ %85, %failed ], [ %call109, %exit_lookup ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %block) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %dirh) #9
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @squashfs_listxattr(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_dir_index_using_name(ptr noundef %sb, ptr nocapture noundef writeonly %next_block, ptr nocapture noundef %next_offset, i64 noundef %index_start, i32 noundef %index_offset, i32 noundef %i_count, ptr nocapture noundef readonly %name, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  %index_start.addr = alloca i64, align 8
  %index_offset.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %index_start.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %index_start, ptr %index_start.addr, align 8
  %1 = ptrtoint ptr %index_offset.addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %index_offset, ptr %index_offset.addr, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_dir_index_using_name.__UNIQUE_ID_ddebug217, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_dir_index_using_name, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !37

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_dir_index_using_name.__UNIQUE_ID_ddebug217, ptr noundef nonnull @.str.10, i32 noundef %i_count) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 526) #12
  %cmp = icmp eq ptr %call7.i, null
  br i1 %cmp, label %do.end7, label %if.end10

do.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #13
  br label %out

if.end10:                                         ; preds = %do.end
  %name11 = getelementptr inbounds %struct.squashfs_dir_index, ptr %call7.i, i32 0, i32 3
  %arrayidx = getelementptr [0 x i8], ptr %name11, i32 0, i32 257
  %call12 = tail call ptr @strncpy(ptr noundef %arrayidx, ptr noundef %name, i32 noundef %len)
  %arrayidx13 = getelementptr i8, ptr %arrayidx, i32 %len
  %5 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx13, align 1
  %size19 = getelementptr inbounds %struct.squashfs_dir_index, ptr %call7.i, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i_count)
  %cmp1462 = icmp sgt i32 %i_count, 0
  br i1 %cmp1462, label %for.body.lr.ph, label %if.end10.for.end_crit_edge

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end10
  %start_block = getelementptr inbounds %struct.squashfs_dir_index, ptr %call7.i, i32 0, i32 1
  %directory_table = getelementptr inbounds %struct.squashfs_sb_info, ptr %3, i32 0, i32 15
  %call1569 = call i32 @squashfs_read_metadata(ptr noundef %sb, ptr noundef nonnull %call7.i, ptr noundef nonnull %index_start.addr, ptr noundef nonnull %index_offset.addr, i32 noundef 12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1569)
  %cmp1670 = icmp slt i32 %call1569, 0
  br i1 %cmp1670, label %for.body.lr.ph.for.end_crit_edge, label %for.body.lr.ph.if.end18_crit_edge

for.body.lr.ph.if.end18_crit_edge:                ; preds = %for.body.lr.ph
  br label %if.end18

for.body.lr.ph.for.end_crit_edge:                 ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %if.end35
  %call15 = call i32 @squashfs_read_metadata(ptr noundef %sb, ptr noundef nonnull %call7.i, ptr noundef nonnull %index_start.addr, ptr noundef nonnull %index_offset.addr, i32 noundef 12) #9
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %for.body.for.end_crit_edge, label %for.body.if.end18_crit_edge

for.body.if.end18_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end18:                                         ; preds = %for.body.if.end18_crit_edge, %for.body.lr.ph.if.end18_crit_edge
  %length.06372 = phi i32 [ %12, %for.body.if.end18_crit_edge ], [ 0, %for.body.lr.ph.if.end18_crit_edge ]
  %i.06471 = phi i32 [ %inc, %for.body.if.end18_crit_edge ], [ 0, %for.body.lr.ph.if.end18_crit_edge ]
  %6 = ptrtoint ptr %size19 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size19, align 8
  %8 = call i32 @llvm.bswap.i32(i32 %7)
  %add = add i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %add)
  %cmp20 = icmp ugt i32 %add, 256
  br i1 %cmp20, label %if.end18.for.end_crit_edge, label %if.end22

if.end18.for.end_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end22:                                         ; preds = %if.end18
  %call24 = call i32 @squashfs_read_metadata(ptr noundef %sb, ptr noundef %name11, ptr noundef nonnull %index_start.addr, ptr noundef nonnull %index_offset.addr, i32 noundef %add) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.end22.for.end_crit_edge, label %if.end27

if.end22.for.end_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end27:                                         ; preds = %if.end22
  %arrayidx29 = getelementptr %struct.squashfs_dir_index, ptr %call7.i, i32 0, i32 3, i32 %add
  %9 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx29, align 1
  %call32 = call i32 @strcmp(ptr noundef %name11, ptr noundef %arrayidx) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp sgt i32 %call32, 0
  br i1 %cmp33, label %if.end27.for.end_crit_edge, label %if.end35

if.end27.for.end_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end35:                                         ; preds = %if.end27
  %10 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call7.i, align 8
  %12 = call i32 @llvm.bswap.i32(i32 %11)
  %13 = ptrtoint ptr %start_block to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %start_block, align 4
  %15 = call i32 @llvm.bswap.i32(i32 %14)
  %conv = zext i32 %15 to i64
  %16 = ptrtoint ptr %directory_table to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %directory_table, align 8
  %add37 = add i64 %17, %conv
  %18 = ptrtoint ptr %next_block to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %add37, ptr %next_block, align 8
  %inc = add nuw nsw i32 %i.06471, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %i_count)
  %exitcond.not = icmp eq i32 %inc, %i_count
  br i1 %exitcond.not, label %if.end35.for.end_crit_edge, label %for.body

if.end35.for.end_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.end35.for.end_crit_edge, %if.end27.for.end_crit_edge, %if.end22.for.end_crit_edge, %if.end18.for.end_crit_edge, %for.body.for.end_crit_edge, %for.body.lr.ph.for.end_crit_edge, %if.end10.for.end_crit_edge
  %length.0.lcssa = phi i32 [ 0, %if.end10.for.end_crit_edge ], [ 0, %for.body.lr.ph.for.end_crit_edge ], [ %12, %if.end35.for.end_crit_edge ], [ %12, %for.body.for.end_crit_edge ], [ %length.06372, %if.end18.for.end_crit_edge ], [ %length.06372, %if.end22.for.end_crit_edge ], [ %length.06372, %if.end27.for.end_crit_edge ]
  %19 = ptrtoint ptr %next_offset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %next_offset, align 4
  %add38 = add i32 %20, %length.0.lcssa
  %rem = srem i32 %add38, 8192
  store i32 %rem, ptr %next_offset, align 4
  call void @kfree(ptr noundef nonnull %call7.i) #9
  br label %out

out:                                              ; preds = %for.end, %do.end7
  %length.1 = phi i32 [ 0, %do.end7 ], [ %length.0.lcssa, %for.end ]
  %add39 = add i32 %length.1, 3
  ret i32 %add39
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @squashfs_read_metadata(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @squashfs_iget(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_splice_alias(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @squashfs_dir_inode_ops, !1, !"squashfs_dir_inode_ops", i1 false, i1 false}
!1 = !{!"../fs/squashfs/namei.c", i32 235, i32 31}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/squashfs/namei.c", i32 140, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @squashfs_lookup.__UNIQUE_ID_ddebug218, !3, !"__UNIQUE_ID_ddebug218", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/squashfs/namei.c", i32 144, i32 3}
!10 = !{ptr @squashfs_lookup._entry, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @squashfs_lookup._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/squashfs/namei.c", i32 208, i32 5}
!14 = !{ptr @squashfs_lookup.__UNIQUE_ID_ddebug219, !13, !"__UNIQUE_ID_ddebug219", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/squashfs/namei.c", i32 226, i32 2}
!17 = !{ptr @squashfs_lookup._entry.6, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @squashfs_lookup._entry_ptr.8, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/squashfs/namei.c", i32 74, i32 2}
!21 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @get_dir_index_using_name.__UNIQUE_ID_ddebug217, !20, !"__UNIQUE_ID_ddebug217", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/squashfs/namei.c", i32 78, i32 3}
!25 = !{ptr @get_dir_index_using_name._entry, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @get_dir_index_using_name._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{!"auto-init"}
!37 = !{i64 2148481867, i64 2148481872, i64 2148481885, i64 2148481929, i64 2148481963, i64 2148481984}
!38 = !{i64 1061949, i64 1062010}
!39 = !{i64 1064681}
!40 = !{!"branch_weights", i32 1, i32 2000}
!41 = !{i64 1064966}
!42 = !{i64 2152500100}
!43 = !{i64 2152499942}
!44 = !{i64 2152500270}
!45 = !{i64 2150086084}
