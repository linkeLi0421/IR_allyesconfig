; ModuleID = '/llk/IR_all_yes/fs/squashfs/dir.c_pt.bc'
source_filename = "../fs/squashfs/dir.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.squashfs_dir_header = type { i32, i32, i32 }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.55, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.56, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.57, ptr, %struct.address_space, %struct.list_head, %union.anon.60, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.55 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.56 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.57 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.60 = type { ptr }
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
%struct.squashfs_sb_info = type { ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i64, i64, i64, i32, i16, i64, i32, i32, i32, i32, i8 }
%struct.dir_context = type { ptr, i64 }
%struct.squashfs_dir_entry = type { i16, i16, i16, i16, [0 x i8] }
%struct.squashfs_dir_index = type { i32, i32, i32, [0 x i8] }

@squashfs_dir_ops = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @squashfs_readdir, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@squashfs_readdir.__UNIQUE_ID_ddebug205 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 26, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"squashfs\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"squashfs_readdir\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/squashfs/dir.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"SQUASHFS: Entered squashfs_readdir [%llx:%x]\0A\00", [50 x i8] zeroinitializer }, align 32
@squashfs_readdir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013SQUASHFS error: Failed to allocate squashfs_dir_entry\0A\00", [39 x i8] zeroinitializer }, align 32
@squashfs_readdir._entry_ptr = internal global ptr @squashfs_readdir._entry, section ".printk_index", align 4
@.str.5 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c".\00", [30 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"..\00", [29 x i8] zeroinitializer }, align 32
@squashfs_filetype_table = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\00\04\08\0A\06\02\01\0C", [24 x i8] zeroinitializer }, align 32
@squashfs_readdir._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013SQUASHFS error: Unable to read directory block [%llx:%x]\0A\00", [36 x i8] zeroinitializer }, align 32
@squashfs_readdir._entry_ptr.9 = internal global ptr @squashfs_readdir._entry.7, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@get_dir_index_using_offset.__UNIQUE_ID_ddebug204 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 12, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"get_dir_index_using_offset\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"SQUASHFS: Entered get_dir_index_using_offset, i_count %d, f_pos %lld\0A\00", [58 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"squashfs_dir_ops\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 219, i32 30 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 107, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 111, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 128, i32 11 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 132, i32 11 }
@___asan_gen_.39 = private unnamed_addr constant [24 x i8] c"squashfs_filetype_table\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 26, i32 28 }
@___asan_gen_.42 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 213, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.52 = private constant [21 x i8] c"../fs/squashfs/dir.c\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 47, i32 2 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @squashfs_readdir._entry, ptr @squashfs_readdir._entry.7, ptr @squashfs_readdir._entry_ptr, ptr @squashfs_readdir._entry_ptr.9, ptr @squashfs_dir_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @squashfs_filetype_table, ptr @.str.8, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @squashfs_dir_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @squashfs_readdir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @squashfs_filetype_table to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @squashfs_readdir._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_read_dir(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @squashfs_readdir(ptr nocapture noundef readonly %file, ptr noundef %ctx) #1 align 64 {
entry:
  %block = alloca i64, align 8
  %offset = alloca i32, align 4
  %dirh = alloca %struct.squashfs_dir_header, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %block) #7
  %add.ptr.i = getelementptr i8, ptr %1, i32 -56
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %add.ptr.i, align 8
  %directory_table = getelementptr inbounds %struct.squashfs_sb_info, ptr %5, i32 0, i32 15
  %8 = ptrtoint ptr %directory_table to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %directory_table, align 8
  %add = add i64 %9, %7
  %10 = ptrtoint ptr %block to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %add, ptr %block, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #7
  %offset3 = getelementptr i8, ptr %1, i32 -48
  %11 = ptrtoint ptr %offset3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %offset3, align 8
  %13 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %offset, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %dirh) #7
  %14 = ptrtoint ptr %dirh to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %dirh, align 4, !annotation !35
  %15 = getelementptr inbounds %struct.squashfs_dir_header, ptr %dirh, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %15, align 4, !annotation !35
  %17 = getelementptr inbounds %struct.squashfs_dir_header, ptr %dirh, i32 0, i32 2
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %17, align 4, !annotation !35
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @squashfs_readdir.__UNIQUE_ID_ddebug205, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@squashfs_readdir, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !36

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %block to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %block, align 8
  %21 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %offset, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @squashfs_readdir.__UNIQUE_ID_ddebug205, ptr noundef nonnull @.str.3, i64 noundef %20, i32 noundef %22) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3264, i32 noundef 265) #10
  %cmp = icmp eq ptr %call7.i, null
  br i1 %cmp, label %do.end11, label %while.cond.preheader

while.cond.preheader:                             ; preds = %do.end
  %pos = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %24 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 3, i64 %25)
  %cmp15186 = icmp slt i64 %25, 3
  br i1 %cmp15186, label %while.body.lr.ph, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %i_ino19 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %parent = getelementptr i8, ptr %1, i32 -8
  br label %while.body

do.end11:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #11
  br label %finish

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %26 = phi i64 [ %25, %while.body.lr.ph ], [ %add28, %cleanup.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %26)
  %cmp17 = icmp eq i64 %26, 0
  %size.0 = select i1 %cmp17, i32 1, i32 2
  %name.0 = select i1 %cmp17, ptr @.str.5, ptr @.str.6
  %i_ino.0.in = select i1 %cmp17, ptr %i_ino19, ptr %parent
  %27 = ptrtoint ptr %i_ino.0.in to i32
  call void @__asan_load4_noabort(i32 %27)
  %i_ino.0 = load i32, ptr %i_ino.0.in, align 8
  %conv = sext i32 %i_ino.0 to i64
  %28 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ctx, align 8
  %call.i = tail call i32 %29(ptr noundef %ctx, ptr noundef nonnull %name.0, i32 noundef %size.0, i64 noundef %26, i64 noundef %conv, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %cleanup, label %while.body.finish_crit_edge

while.body.finish_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %finish

cleanup:                                          ; preds = %while.body
  %conv26 = zext i32 %size.0 to i64
  %30 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %pos, align 8
  %add28 = add i64 %31, %conv26
  store i64 %add28, ptr %pos, align 8
  %cmp15 = icmp slt i64 %add28, 3
  br i1 %cmp15, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %.lcssa183 = phi i64 [ %25, %while.cond.preheader.while.end_crit_edge ], [ %add28, %cleanup.while.end_crit_edge ]
  %32 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i_sb, align 4
  %34 = getelementptr i8, ptr %1, i32 -24
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %34, align 8
  %dir_idx_offset = getelementptr i8, ptr %1, i32 -16
  %37 = ptrtoint ptr %dir_idx_offset to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dir_idx_offset, align 8
  %dir_idx_cnt = getelementptr i8, ptr %1, i32 -12
  %39 = ptrtoint ptr %dir_idx_cnt to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dir_idx_cnt, align 4
  %call35 = call fastcc i32 @get_dir_index_using_offset(ptr noundef %33, ptr noundef nonnull %block, ptr noundef nonnull %offset, i64 noundef %36, i32 noundef %38, i32 noundef %40, i64 noundef %.lcssa183)
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 23
  %dep_map.c48.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 23, i32 1
  %i_size18.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %size63 = getelementptr inbounds %struct.squashfs_dir_entry, ptr %call7.i, i32 0, i32 3
  %name71 = getelementptr inbounds %struct.squashfs_dir_entry, ptr %call7.i, i32 0, i32 4
  %type90 = getelementptr inbounds %struct.squashfs_dir_entry, ptr %call7.i, i32 0, i32 2
  %inode_number87 = getelementptr inbounds %struct.squashfs_dir_entry, ptr %call7.i, i32 0, i32 1
  br label %while.cond36

while.cond36:                                     ; preds = %while.cond36.backedge, %while.end
  %length.0 = phi i32 [ %call35, %while.end ], [ %length.0.be, %while.cond36.backedge ]
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %while.cond36
  %41 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !37
  %and.i.i.i = and i32 %41, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @trace_hardirqs_off() #7
  %42 = call ptr @llvm.returnaddress(i32 0) #7
  %43 = ptrtoint ptr %42 to i32
  call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %43) #7
  call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %43) #7
  call void @trace_hardirqs_on() #7
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %44 = call ptr @llvm.returnaddress(i32 0) #7
  %45 = ptrtoint ptr %44 to i32
  call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %45) #7
  call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %45) #7
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %46 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !38
  %and.i.i.i.i = and i32 %46, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !39

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @warn_bogus_irq_restore() #7
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %41) #7, !srcloc !40
  %47 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and29.i = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not30.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not30.i, label %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !41
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !42
  %49 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and.i = and i32 %50, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %48, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge ], [ %50, %do.end.i.while.end.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !43
  %51 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %i_size18.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !44
  %53 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %54, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %i_size_read.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

i_size_read.exit:                                 ; preds = %while.end.i
  %conv37 = sext i32 %length.0 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %52, i64 %conv37)
  %cmp39 = icmp sgt i64 %52, %conv37
  br i1 %cmp39, label %while.body41, label %i_size_read.exit.finish_crit_edge

i_size_read.exit.finish_crit_edge:                ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %finish

while.body41:                                     ; preds = %i_size_read.exit
  %55 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %i_sb, align 4
  %call43 = call i32 @squashfs_read_metadata(ptr noundef %56, ptr noundef nonnull %dirh, ptr noundef nonnull %block, ptr noundef nonnull %offset, i32 noundef 12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %while.body41.do.end110_crit_edge, label %if.end47

while.body41.do.end110_crit_edge:                 ; preds = %while.body41
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end110

if.end47:                                         ; preds = %while.body41
  %57 = ptrtoint ptr %dirh to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %dirh, align 4
  %59 = call i32 @llvm.bswap.i32(i32 %58)
  %add49 = add i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %add49)
  %cmp50 = icmp ugt i32 %add49, 256
  br i1 %cmp50, label %if.end47.do.end110_crit_edge, label %while.cond54.preheader

if.end47.do.end110_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end110

while.cond54.preheader:                           ; preds = %if.end47
  %add48 = add i32 %length.0, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add49)
  %tobool55.not189 = icmp eq i32 %add49, 0
  br i1 %tobool55.not189, label %while.cond54.preheader.while.cond36.backedge_crit_edge, label %while.cond54.preheader.while.body56_crit_edge

while.cond54.preheader.while.body56_crit_edge:    ; preds = %while.cond54.preheader
  br label %while.body56

while.cond54.preheader.while.cond36.backedge_crit_edge: ; preds = %while.cond54.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond36.backedge

while.cond36.backedge:                            ; preds = %while.cond54.backedge.while.cond36.backedge_crit_edge, %while.cond54.preheader.while.cond36.backedge_crit_edge
  %length.0.be = phi i32 [ %add48, %while.cond54.preheader.while.cond36.backedge_crit_edge ], [ %add78, %while.cond54.backedge.while.cond36.backedge_crit_edge ]
  br label %while.cond36

while.body56:                                     ; preds = %while.cond54.backedge.while.body56_crit_edge, %while.cond54.preheader.while.body56_crit_edge
  %dec191 = phi i32 [ %dec, %while.cond54.backedge.while.body56_crit_edge ], [ %59, %while.cond54.preheader.while.body56_crit_edge ]
  %length.1190 = phi i32 [ %add78, %while.cond54.backedge.while.body56_crit_edge ], [ %add48, %while.cond54.preheader.while.body56_crit_edge ]
  %60 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %i_sb, align 4
  %call58 = call i32 @squashfs_read_metadata(ptr noundef %61, ptr noundef nonnull %call7.i, ptr noundef nonnull %block, ptr noundef nonnull %offset, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %while.body56.do.end110_crit_edge, label %if.end62

while.body56.do.end110_crit_edge:                 ; preds = %while.body56
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end110

if.end62:                                         ; preds = %while.body56
  %62 = ptrtoint ptr %size63 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %size63, align 2
  %64 = call i16 @llvm.bswap.i16(i16 %63)
  %conv64 = zext i16 %64 to i32
  %add65 = add nuw nsw i32 %conv64, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %64)
  %cmp66 = icmp ugt i16 %64, 255
  br i1 %cmp66, label %if.end62.do.end110_crit_edge, label %if.end69

if.end62.do.end110_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end110

if.end69:                                         ; preds = %if.end62
  %65 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %i_sb, align 4
  %call72 = call i32 @squashfs_read_metadata(ptr noundef %66, ptr noundef %name71, ptr noundef nonnull %block, ptr noundef nonnull %offset, i32 noundef %add65) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp73 = icmp slt i32 %call72, 0
  br i1 %cmp73, label %if.end69.do.end110_crit_edge, label %if.end76

if.end69.do.end110_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end110

if.end76:                                         ; preds = %if.end69
  %add77 = add i32 %length.1190, 9
  %add78 = add i32 %add77, %conv64
  %67 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %pos, align 8
  %conv80 = sext i32 %add78 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %68, i64 %conv80)
  %cmp81.not = icmp slt i64 %68, %conv80
  br i1 %cmp81.not, label %if.end84, label %if.end76.while.cond54.backedge_crit_edge

if.end76.while.cond54.backedge_crit_edge:         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond54.backedge

if.end84:                                         ; preds = %if.end76
  %arrayidx = getelementptr %struct.squashfs_dir_entry, ptr %call7.i, i32 0, i32 4, i32 %add65
  %69 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %arrayidx, align 1
  %70 = ptrtoint ptr %type90 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %type90, align 4
  %72 = call i16 @llvm.bswap.i16(i16 %71)
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %72)
  %cmp92 = icmp ugt i16 %72, 7
  br i1 %cmp92, label %if.end84.do.end110_crit_edge, label %if.end95

if.end84.do.end110_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end110

if.end95:                                         ; preds = %if.end84
  %conv91 = zext i16 %72 to i32
  %73 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %17, align 4
  %75 = call i32 @llvm.bswap.i32(i32 %74)
  %76 = ptrtoint ptr %inode_number87 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %inode_number87, align 2
  %78 = call i16 @llvm.bswap.i16(i16 %77)
  %conv88 = sext i16 %78 to i32
  %add89 = add i32 %75, %conv88
  %conv98 = zext i32 %add89 to i64
  %arrayidx99 = getelementptr [8 x i8], ptr @squashfs_filetype_table, i32 0, i32 %conv91
  %79 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx99, align 1
  %conv100 = zext i8 %80 to i32
  %81 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ctx, align 8
  %call.i173 = call i32 %82(ptr noundef %ctx, ptr noundef %name71, i32 noundef %add65, i64 noundef %68, i64 noundef %conv98, i32 noundef %conv100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i173)
  %cmp.i174 = icmp eq i32 %call.i173, 0
  br i1 %cmp.i174, label %if.end103, label %if.end95.finish_crit_edge

if.end95.finish_crit_edge:                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #9
  br label %finish

if.end103:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #9
  %83 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %conv80, ptr %pos, align 8
  br label %while.cond54.backedge

while.cond54.backedge:                            ; preds = %if.end103, %if.end76.while.cond54.backedge_crit_edge
  %dec = add i32 %dec191, -1
  %tobool55.not = icmp eq i32 %dec191, 0
  br i1 %tobool55.not, label %while.cond54.backedge.while.cond36.backedge_crit_edge, label %while.cond54.backedge.while.body56_crit_edge

while.cond54.backedge.while.body56_crit_edge:     ; preds = %while.cond54.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body56

while.cond54.backedge.while.cond36.backedge_crit_edge: ; preds = %while.cond54.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond36.backedge

finish:                                           ; preds = %if.end95.finish_crit_edge, %i_size_read.exit.finish_crit_edge, %while.body.finish_crit_edge, %do.end11
  call void @kfree(ptr noundef %call7.i) #7
  br label %cleanup113

do.end110:                                        ; preds = %if.end84.do.end110_crit_edge, %if.end69.do.end110_crit_edge, %if.end62.do.end110_crit_edge, %while.body56.do.end110_crit_edge, %if.end47.do.end110_crit_edge, %while.body41.do.end110_crit_edge
  %84 = ptrtoint ptr %block to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %block, align 8
  %86 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %offset, align 4
  %call112 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i64 noundef %85, i32 noundef %87) #11
  call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %cleanup113

cleanup113:                                       ; preds = %do.end110, %finish
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %dirh) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %block) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_dir_index_using_offset(ptr noundef %sb, ptr nocapture noundef writeonly %next_block, ptr nocapture noundef %next_offset, i64 noundef %index_start, i32 noundef %index_offset, i32 noundef %i_count, i64 noundef %f_pos) unnamed_addr #1 align 64 {
entry:
  %index_start.addr = alloca i64, align 8
  %index_offset.addr = alloca i32, align 4
  %dir_index = alloca %struct.squashfs_dir_index, align 4
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %dir_index) #7
  %4 = ptrtoint ptr %dir_index to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %dir_index, align 4, !annotation !35
  %5 = getelementptr inbounds %struct.squashfs_dir_index, ptr %dir_index, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !35
  %7 = getelementptr inbounds %struct.squashfs_dir_index, ptr %dir_index, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !35
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_dir_index_using_offset.__UNIQUE_ID_ddebug204, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_dir_index_using_offset, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !36

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_dir_index_using_offset.__UNIQUE_ID_ddebug204, ptr noundef nonnull @.str.11, i32 noundef %i_count, i64 noundef %f_pos) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 4, i64 %f_pos)
  %cmp = icmp ult i64 %f_pos, 4
  br i1 %cmp, label %if.then3, label %if.end4

if.then3:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv = trunc i64 %f_pos to i32
  br label %cleanup

if.end4:                                          ; preds = %do.end
  %sub = add i64 %f_pos, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i_count)
  %cmp552 = icmp sgt i32 %i_count, 0
  br i1 %cmp552, label %for.body.lr.ph, label %if.end4.for.end_crit_edge

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end4
  %directory_table = getelementptr inbounds %struct.squashfs_sb_info, ptr %3, i32 0, i32 15
  %call759 = call i32 @squashfs_read_metadata(ptr noundef %sb, ptr noundef nonnull %dir_index, ptr noundef nonnull %index_start.addr, ptr noundef nonnull %index_offset.addr, i32 noundef 12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call759)
  %cmp860 = icmp slt i32 %call759, 0
  br i1 %cmp860, label %for.body.lr.ph.for.end_crit_edge, label %for.body.lr.ph.if.end11_crit_edge

for.body.lr.ph.if.end11_crit_edge:                ; preds = %for.body.lr.ph
  br label %if.end11

for.body.lr.ph.for.end_crit_edge:                 ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %if.end27
  %call7 = call i32 @squashfs_read_metadata(ptr noundef %sb, ptr noundef nonnull %dir_index, ptr noundef nonnull %index_start.addr, ptr noundef nonnull %index_offset.addr, i32 noundef 12) #7
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %for.body.for.end_crit_edge, label %for.body.if.end11_crit_edge

for.body.if.end11_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end11:                                         ; preds = %for.body.if.end11_crit_edge, %for.body.lr.ph.if.end11_crit_edge
  %i.05362 = phi i32 [ %inc, %for.body.if.end11_crit_edge ], [ 0, %for.body.lr.ph.if.end11_crit_edge ]
  %length.05461 = phi i32 [ %11, %for.body.if.end11_crit_edge ], [ 0, %for.body.lr.ph.if.end11_crit_edge ]
  %9 = ptrtoint ptr %dir_index to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dir_index, align 4
  %11 = call i32 @llvm.bswap.i32(i32 %10)
  %conv13 = sext i32 %11 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %conv13)
  %cmp14 = icmp ult i64 %sub, %conv13
  br i1 %cmp14, label %if.end11.for.end_crit_edge, label %if.end17

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end17:                                         ; preds = %if.end11
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %7, align 4
  %14 = call i32 @llvm.bswap.i32(i32 %13)
  %add = add i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %add)
  %cmp19 = icmp ugt i32 %add, 256
  br i1 %cmp19, label %if.end17.for.end_crit_edge, label %if.end22

if.end17.for.end_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end22:                                         ; preds = %if.end17
  %call23 = call i32 @squashfs_read_metadata(ptr noundef %sb, ptr noundef null, ptr noundef nonnull %index_start.addr, ptr noundef nonnull %index_offset.addr, i32 noundef %add) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.end22.for.end_crit_edge, label %if.end27

if.end22.for.end_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end27:                                         ; preds = %if.end22
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %5, align 4
  %17 = call i32 @llvm.bswap.i32(i32 %16)
  %conv28 = zext i32 %17 to i64
  %18 = ptrtoint ptr %directory_table to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %directory_table, align 8
  %add29 = add i64 %19, %conv28
  %20 = ptrtoint ptr %next_block to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %add29, ptr %next_block, align 8
  %inc = add nuw nsw i32 %i.05362, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %i_count)
  %exitcond.not = icmp eq i32 %inc, %i_count
  br i1 %exitcond.not, label %if.end27.for.end_crit_edge, label %for.body

if.end27.for.end_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %if.end27.for.end_crit_edge, %if.end22.for.end_crit_edge, %if.end17.for.end_crit_edge, %if.end11.for.end_crit_edge, %for.body.for.end_crit_edge, %for.body.lr.ph.for.end_crit_edge, %if.end4.for.end_crit_edge
  %length.0.lcssa = phi i32 [ 0, %if.end4.for.end_crit_edge ], [ 0, %for.body.lr.ph.for.end_crit_edge ], [ %11, %if.end27.for.end_crit_edge ], [ %11, %for.body.for.end_crit_edge ], [ %length.05461, %if.end11.for.end_crit_edge ], [ %length.05461, %if.end17.for.end_crit_edge ], [ %length.05461, %if.end22.for.end_crit_edge ]
  %21 = ptrtoint ptr %next_offset to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %next_offset, align 4
  %add30 = add i32 %22, %length.0.lcssa
  %rem = srem i32 %add30, 8192
  store i32 %rem, ptr %next_offset, align 4
  %add31 = add i32 %length.0.lcssa, 3
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then3
  %retval.0 = phi i32 [ %conv, %if.then3 ], [ %add31, %for.end ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %dir_index) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @squashfs_read_metadata(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !18, !19, !20, !22, !24, !25}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @squashfs_dir_ops, !1, !"squashfs_dir_ops", i1 false, i1 false}
!1 = !{!"../fs/squashfs/dir.c", i32 219, i32 30}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/squashfs/dir.c", i32 107, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @squashfs_readdir.__UNIQUE_ID_ddebug205, !3, !"__UNIQUE_ID_ddebug205", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/squashfs/dir.c", i32 111, i32 3}
!10 = !{ptr @squashfs_readdir._entry, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @squashfs_readdir._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/squashfs/dir.c", i32 128, i32 11}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/squashfs/dir.c", i32 132, i32 11}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/squashfs/dir.c", i32 213, i32 2}
!18 = !{ptr @squashfs_readdir._entry.7, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @squashfs_readdir._entry_ptr.9, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @squashfs_filetype_table, !21, !"squashfs_filetype_table", i1 false, i1 false}
!21 = !{!"../fs/squashfs/dir.c", i32 26, i32 28}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/squashfs/dir.c", i32 47, i32 2}
!24 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @get_dir_index_using_offset.__UNIQUE_ID_ddebug204, !23, !"__UNIQUE_ID_ddebug204", i1 false, i1 false}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{!"auto-init"}
!36 = !{i64 2148480256, i64 2148480261, i64 2148480274, i64 2148480318, i64 2148480352, i64 2148480373}
!37 = !{i64 1060338, i64 1060399}
!38 = !{i64 1063070}
!39 = !{!"branch_weights", i32 1, i32 2000}
!40 = !{i64 1063355}
!41 = !{i64 2152498489}
!42 = !{i64 2152498331}
!43 = !{i64 2152498659}
!44 = !{i64 2150084473}
