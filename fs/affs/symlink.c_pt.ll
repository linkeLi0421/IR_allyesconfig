; ModuleID = '/llk/IR_all_yes/fs/affs/symlink.c_pt.bc'
source_filename = "../fs/affs/symlink.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.atomic_t = type { i32 }
%struct.page = type { i32, %union.anon, %union.anon.63, %struct.atomic_t, i32 }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.63 = type { %struct.atomic_t }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.64 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
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
%struct.affs_sb_info = type { i32, i32, i32, i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i16, ptr, %struct.mutex, ptr, i32, i32, i32, ptr, ptr, [32 x i8], %struct.spinlock, ptr, i32, %struct.delayed_work, %struct.spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.slink_front = type { i32, i32, [3 x i32], i32, [1 x i8] }

@affs_symlink_aops = dso_local constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr null, ptr @affs_symlink_readpage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@affs_symlink_inode_operations = dso_local local_unnamed_addr constant %struct.inode_operations { ptr null, ptr @page_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @affs_notify_change, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@affs_symlink_readpage.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 6, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"affs\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"affs_symlink_readpage\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/affs/symlink.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"get_link(ino=%lu)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"affs: get_link(ino=%lu)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"/\00", [30 x i8] zeroinitializer }, align 32
@affs_bread.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.7, ptr @.str.8, i8 0, i8 59, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"affs_bread\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/affs/affs.h\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s: %d\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"affs: %s: %d\0A\00", [18 x i8] zeroinitializer }, align 32
@affs_brelse.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.7, ptr @.str.11, i8 0, i8 70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"affs_brelse\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s: %lld\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"affs: %s: %lld\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VM_BUG_ON_PAGE(1 && PageTail(page))\00", [60 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 47]
@___asan_gen_.17 = private unnamed_addr constant [18 x i8] c"affs_symlink_aops\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 69, i32 39 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 24, i32 2 }
@___asan_gen_.36 = private constant [21 x i8] c"../fs/affs/symlink.c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 38, i32 40 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 237, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [18 x i8] c"../fs/affs/affs.h\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 282, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 260, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 416, i32 1 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @affs_symlink_aops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @affs_symlink_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @affs_symlink_readpage(ptr nocapture noundef readnone %file, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call ptr @page_address(ptr noundef %page) #3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_symlink_readpage.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_symlink_readpage, %if.then)) #3
          to label %do.end [label %if.then], !srcloc !40

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %i_ino = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_symlink_readpage.__UNIQUE_ID_ddebug239, ptr noundef nonnull @.str.4, i32 noundef %5) #3
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb, align 4
  %i_ino4 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 11
  %8 = ptrtoint ptr %i_ino4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_ino4, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_bread.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_symlink_readpage, %if.then.i122)) #3
          to label %do.end.i [label %if.then.i122], !srcloc !40

if.then.i122:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_bread.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.6, i32 noundef %9) #3
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i122, %do.end
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %10 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_reserved.i.i = getelementptr inbounds %struct.affs_sb_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %s_reserved.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_reserved.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %9)
  %cmp.not.i.i = icmp sgt i32 %13, %9
  br i1 %cmp.not.i.i, label %do.end.i.fail_crit_edge, label %affs_validblock.exit.i

do.end.i.fail_crit_edge:                          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %fail

affs_validblock.exit.i:                           ; preds = %do.end.i
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %9)
  %cmp2.i.i = icmp sgt i32 %15, %9
  br i1 %cmp2.i.i, label %affs_bread.exit, label %affs_validblock.exit.i.fail_crit_edge

affs_validblock.exit.i.fail_crit_edge:            ; preds = %affs_validblock.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %fail

affs_bread.exit:                                  ; preds = %affs_validblock.exit.i
  %conv.i = sext i32 %9 to i64
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 26
  %16 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_bdev.i.i, align 4
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 3
  %18 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i.i = tail call ptr @__bread_gfp(ptr noundef %17, i64 noundef %conv.i, i32 noundef %19, i32 noundef 8) #3
  %tobool6.not = icmp eq ptr %call.i.i, null
  br i1 %tobool6.not, label %affs_bread.exit.fail_crit_edge, label %if.end8

affs_bread.exit.fail_crit_edge:                   ; preds = %affs_bread.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %fail

if.end8:                                          ; preds = %affs_bread.exit
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 5
  %20 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %b_data, align 4
  %symname = getelementptr inbounds %struct.slink_front, ptr %21, i32 0, i32 4
  %call9 = tail call ptr @strchr(ptr noundef %symname, i32 noundef 58)
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end8.land.rhs47.preheader_crit_edge, label %if.then11

if.end8.land.rhs47.preheader_crit_edge:           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.rhs47.preheader

if.then11:                                        ; preds = %if.end8
  %22 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 33
  %24 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_fs_info.i, align 16
  %symlink_lock = getelementptr inbounds %struct.affs_sb_info, ptr %25, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %symlink_lock) #3
  %s_prefix = getelementptr inbounds %struct.affs_sb_info, ptr %25, i32 0, i32 16
  %26 = ptrtoint ptr %s_prefix to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_prefix, align 4
  %tobool14.not = icmp eq ptr %27, null
  %spec.select = select i1 %tobool14.not, ptr @.str.5, ptr %27
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %if.then11
  %i.0134 = phi i32 [ 0, %if.then11 ], [ %inc, %while.body.land.rhs_crit_edge ]
  %arrayidx = getelementptr i8, ptr %spec.select, i32 %i.0134
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool16.not = icmp eq i8 %29, 0
  br i1 %tobool16.not, label %while.end, label %while.body

while.body:                                       ; preds = %land.rhs
  %inc = add nuw nsw i32 %i.0134, 1
  %arrayidx17 = getelementptr i8, ptr %call, i32 %i.0134
  %30 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %arrayidx17, align 1
  %exitcond.not = icmp eq i32 %inc, 1023
  br i1 %exitcond.not, label %while.end.thread, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.rhs

while.end.thread:                                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @_raw_spin_unlock(ptr noundef %symlink_lock) #3
  br label %do.body.i

while.end:                                        ; preds = %land.rhs
  tail call void @_raw_spin_unlock(ptr noundef %symlink_lock) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %i.0134)
  %cmp20135 = icmp ult i32 %i.0134, 1023
  br i1 %cmp20135, label %land.rhs22.preheader, label %while.end.if.end43_crit_edge

while.end.if.end43_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end43

land.rhs22.preheader:                             ; preds = %while.end
  %31 = sub nuw nsw i32 1023, %i.0134
  br label %land.rhs22

land.rhs22:                                       ; preds = %while.body29.land.rhs22_crit_edge, %land.rhs22.preheader
  %j.0137 = phi i32 [ %inc31, %while.body29.land.rhs22_crit_edge ], [ 0, %land.rhs22.preheader ]
  %i.1136 = phi i32 [ %inc33, %while.body29.land.rhs22_crit_edge ], [ %i.0134, %land.rhs22.preheader ]
  %arrayidx24 = getelementptr %struct.slink_front, ptr %21, i32 0, i32 4, i32 %j.0137
  %32 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx24, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %33)
  %cmp26.not = icmp eq i8 %33, 58
  br i1 %cmp26.not, label %if.then38.critedge, label %while.body29

while.body29:                                     ; preds = %land.rhs22
  %inc31 = add nuw nsw i32 %j.0137, 1
  %inc33 = add nuw nsw i32 %i.1136, 1
  %arrayidx34 = getelementptr i8, ptr %call, i32 %i.1136
  %34 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %arrayidx34, align 1
  %exitcond147.not = icmp eq i32 %inc31, %31
  br i1 %exitcond147.not, label %while.body29.do.body.i_crit_edge, label %while.body29.land.rhs22_crit_edge

while.body29.land.rhs22_crit_edge:                ; preds = %while.body29
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.rhs22

while.body29.do.body.i_crit_edge:                 ; preds = %while.body29
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i

if.then38.critedge:                               ; preds = %land.rhs22
  call void @__sanitizer_cov_trace_pc() #5
  %inc39 = add nuw nsw i32 %i.1136, 1
  %arrayidx40 = getelementptr i8, ptr %call, i32 %i.1136
  %35 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 47, ptr %arrayidx40, align 1
  br label %if.end43

if.end43:                                         ; preds = %if.then38.critedge, %while.end.if.end43_crit_edge
  %j.0132 = phi i32 [ %j.0137, %if.then38.critedge ], [ 0, %while.end.if.end43_crit_edge ]
  %i.2 = phi i32 [ %inc39, %if.then38.critedge ], [ %i.0134, %while.end.if.end43_crit_edge ]
  %inc42 = add nuw i32 %j.0132, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %i.2)
  %cmp45139 = icmp slt i32 %i.2, 1023
  br i1 %cmp45139, label %if.end43.land.rhs47.preheader_crit_edge, label %if.end43.do.body.i_crit_edge

if.end43.do.body.i_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i

if.end43.land.rhs47.preheader_crit_edge:          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.rhs47.preheader

land.rhs47.preheader:                             ; preds = %if.end43.land.rhs47.preheader_crit_edge, %if.end8.land.rhs47.preheader_crit_edge
  %lc.1142.ph = phi i8 [ 0, %if.end8.land.rhs47.preheader_crit_edge ], [ 47, %if.end43.land.rhs47.preheader_crit_edge ]
  %j.2141.ph = phi i32 [ 0, %if.end8.land.rhs47.preheader_crit_edge ], [ %inc42, %if.end43.land.rhs47.preheader_crit_edge ]
  %i.4140.ph = phi i32 [ 0, %if.end8.land.rhs47.preheader_crit_edge ], [ %i.2, %if.end43.land.rhs47.preheader_crit_edge ]
  br label %land.rhs47

land.rhs47:                                       ; preds = %if.end68.land.rhs47_crit_edge, %land.rhs47.preheader
  %lc.1142 = phi i8 [ %37, %if.end68.land.rhs47_crit_edge ], [ %lc.1142.ph, %land.rhs47.preheader ]
  %j.2141 = phi i32 [ %inc71, %if.end68.land.rhs47_crit_edge ], [ %j.2141.ph, %land.rhs47.preheader ]
  %i.4140 = phi i32 [ %inc69, %if.end68.land.rhs47_crit_edge ], [ %i.4140.ph, %land.rhs47.preheader ]
  %arrayidx49 = getelementptr %struct.slink_front, ptr %21, i32 0, i32 4, i32 %j.2141
  %36 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx49, align 1
  %38 = zext i8 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values)
  switch i8 %37, label %land.rhs47.if.end68_crit_edge [
    i8 0, label %land.rhs47.do.body.i_crit_edge
    i8 47, label %land.lhs.true
  ]

land.rhs47.do.body.i_crit_edge:                   ; preds = %land.rhs47
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i

land.rhs47.if.end68_crit_edge:                    ; preds = %land.rhs47
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end68

land.lhs.true:                                    ; preds = %land.rhs47
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %lc.1142)
  %cmp58 = icmp eq i8 %lc.1142, 47
  call void @__sanitizer_cov_trace_const_cmp4(i32 1020, i32 %i.4140)
  %cmp61 = icmp slt i32 %i.4140, 1020
  %or.cond = select i1 %cmp58, i1 %cmp61, i1 false
  br i1 %or.cond, label %if.then63, label %land.lhs.true.if.end68_crit_edge

land.lhs.true.if.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end68

if.then63:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %inc64 = add nsw i32 %i.4140, 1
  %arrayidx65 = getelementptr i8, ptr %call, i32 %i.4140
  %39 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 46, ptr %arrayidx65, align 1
  %inc66 = add nsw i32 %i.4140, 2
  %arrayidx67 = getelementptr i8, ptr %call, i32 %inc64
  %40 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 46, ptr %arrayidx67, align 1
  br label %if.end68

if.end68:                                         ; preds = %if.then63, %land.lhs.true.if.end68_crit_edge, %land.rhs47.if.end68_crit_edge
  %i.5 = phi i32 [ %inc66, %if.then63 ], [ %i.4140, %land.lhs.true.if.end68_crit_edge ], [ %i.4140, %land.rhs47.if.end68_crit_edge ]
  %inc69 = add i32 %i.5, 1
  %arrayidx70 = getelementptr i8, ptr %call, i32 %i.5
  %41 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %37, ptr %arrayidx70, align 1
  %inc71 = add i32 %j.2141, 1
  %cmp45 = icmp slt i32 %inc69, 1023
  br i1 %cmp45, label %if.end68.land.rhs47_crit_edge, label %if.end68.do.body.i_crit_edge

if.end68.do.body.i_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i

if.end68.land.rhs47_crit_edge:                    ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.rhs47

do.body.i:                                        ; preds = %if.end68.do.body.i_crit_edge, %land.rhs47.do.body.i_crit_edge, %if.end43.do.body.i_crit_edge, %while.body29.do.body.i_crit_edge, %while.end.thread
  %i.4.lcssa = phi i32 [ %i.2, %if.end43.do.body.i_crit_edge ], [ 1023, %while.end.thread ], [ %inc69, %if.end68.do.body.i_crit_edge ], [ %i.4140, %land.rhs47.do.body.i_crit_edge ], [ 1023, %while.body29.do.body.i_crit_edge ]
  %arrayidx73 = getelementptr i8, ptr %call, i32 %i.4.lcssa
  %42 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %arrayidx73, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_brelse.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_symlink_readpage, %if.then4.i125)) #3
          to label %affs_brelse.exit [label %if.then4.i125], !srcloc !40

if.then4.i125:                                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 3
  %43 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %b_blocknr.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_brelse.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10, i64 noundef %44) #3
  br label %affs_brelse.exit

affs_brelse.exit:                                 ; preds = %if.then4.i125, %do.body.i
  tail call void @__brelse(ptr noundef nonnull %call.i.i) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !41
  %45 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %45, align 4
  %and.i.i.i.i = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !42

if.then.i.i.i:                                    ; preds = %affs_brelse.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.13) #3
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #3, !srcloc !43
  unreachable

SetPageUptodate.exit:                             ; preds = %affs_brelse.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %page) #3
  br label %cleanup

fail:                                             ; preds = %affs_bread.exit.fail_crit_edge, %affs_validblock.exit.i.fail_crit_edge, %do.end.i.fail_crit_edge
  %48 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %48, align 4
  %and.i.i = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i, !prof !42

if.then.i:                                        ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.15) #3
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #3, !srcloc !44
  unreachable

do.body7.i:                                       ; preds = %fail
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %48, align 4
  %and.i31.i = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !42

if.then.i.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #5
  %sub.i.i = add i32 %52, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #5
  %53 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %53, %if.end.i.i ]
  %54 = inttoptr i32 %retval.0.i.i to ptr
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %56)
  %cmp.i.not.i = icmp eq i32 %56, -1
  %57 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %48, align 4
  %and.i32.i = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i, label %if.then17.i, label %do.end24.i, !prof !45

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !42

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #5
  %sub.i34.i = add i32 %58, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #5
  %59 = ptrtoint ptr %page to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %59, %if.end.i36.i ]
  %60 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %60, ptr noundef nonnull @.str.16) #3
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #3, !srcloc !46
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !42

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #5
  %sub.i41.i = add i32 %58, -1
  br label %SetPageError.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #5
  %61 = ptrtoint ptr %page to i32
  br label %SetPageError.exit

SetPageError.exit:                                ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %61, %if.end.i43.i ]
  %62 = inttoptr i32 %retval.0.i44.i to ptr
  tail call void @_set_bit(i32 noundef 8, ptr noundef %62) #3
  br label %cleanup

cleanup:                                          ; preds = %SetPageError.exit, %SetPageUptodate.exit
  %retval.0 = phi i32 [ 0, %SetPageUptodate.exit ], [ -5, %SetPageError.exit ]
  tail call void @unlock_page(ptr noundef %page) #3
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_get_link(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @affs_notify_change(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !13, !15, !16, !17, !18, !19, !21, !22, !23, !24, !26, !28, !30}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @affs_symlink_aops, !1, !"affs_symlink_aops", i1 false, i1 false}
!1 = !{!"../fs/affs/symlink.c", i32 69, i32 39}
!2 = !{ptr @affs_symlink_inode_operations, !3, !"affs_symlink_inode_operations", i1 false, i1 false}
!3 = !{!"../fs/affs/symlink.c", i32 73, i32 31}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/affs/symlink.c", i32 24, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @affs_symlink_readpage.__UNIQUE_ID_ddebug239, !5, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!10 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/affs/symlink.c", i32 38, i32 40}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/affs/affs.h", i32 237, i32 2}
!15 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @affs_bread.__UNIQUE_ID_ddebug234, !14, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!18 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/affs/affs.h", i32 282, i32 3}
!21 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @affs_brelse.__UNIQUE_ID_ddebug238, !20, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!23 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!26 = distinct !{null, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../include/linux/page-flags.h", i32 416, i32 1}
!30 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{i64 2148487900, i64 2148487905, i64 2148487918, i64 2148487962, i64 2148487996, i64 2148488017}
!41 = !{i64 2151323010}
!42 = !{!"branch_weights", i32 2000, i32 1}
!43 = !{i64 2150572047, i64 2150572538, i64 2150572084, i64 2150572140, i64 2150572174, i64 2150572198, i64 2150572239, i64 2150572260, i64 2150572288, i64 2150572322}
!44 = !{i64 2150633637, i64 2150633810, i64 2150633825, i64 2150633877, i64 2150633936, i64 2150633960, i64 2150634001, i64 2150634022, i64 2150634050, i64 2150634082}
!45 = !{!"branch_weights", i32 1, i32 2000}
!46 = !{i64 2150634512, i64 2150634685, i64 2150634700, i64 2150634752, i64 2150634811, i64 2150634835, i64 2150634876, i64 2150634897, i64 2150634925, i64 2150634957}
