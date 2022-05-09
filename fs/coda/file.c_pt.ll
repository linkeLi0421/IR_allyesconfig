; ModuleID = '/llk/IR_all_yes/fs/coda/file.c_pt.bc'
source_filename = "../fs/coda/file.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.19, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.19 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.77 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.79 = type { ptr }
%struct.coda_file_info = type { i32, ptr, i32, i8 }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.37 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.37 = type { %struct.callback_head }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.20, %union.anon.21 }
%union.anon.20 = type { ptr }
%union.anon.21 = type { i64 }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.15, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.coda_vm_ops = type { %struct.refcount_struct, ptr, ptr, %struct.vm_operations_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@coda_file_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr null, ptr @coda_file_read_iter, ptr @coda_file_write_iter, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @coda_file_mmap, i32 0, ptr @coda_open, ptr null, ptr @coda_release, ptr @coda_fsync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @generic_file_splice_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/linux/percpu-rwsem.h\00", [35 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rcu_sync_is_idle.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcu_sync.h\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"suspicious rcu_sync_is_idle() usage\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/coda/file.c\00", [17 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 40960]
@___asan_gen_.4 = private unnamed_addr constant [21 x i8] c"coda_file_operations\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 296, i32 30 }
@___asan_gen_.8 = private unnamed_addr constant [32 x i8] c"../include/linux/percpu-rwsem.h\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 49, i32 2 }
@___asan_gen_.14 = private unnamed_addr constant [28 x i8] c"../include/linux/rcu_sync.h\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 34, i32 2 }
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.17 = private constant [18 x i8] c"../fs/coda/file.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 140, i32 6 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @coda_file_operations, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_file_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @coda_open(ptr noundef %coda_inode, ptr nocapture noundef %coda_file) #0 align 64 {
entry:
  %host_file = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %host_file) #7
  %0 = ptrtoint ptr %host_file to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %host_file, align 4
  %f_flags = getelementptr inbounds %struct.file, ptr %coda_file, i32 0, i32 7
  %1 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %f_flags, align 4
  %3 = trunc i32 %2 to i16
  %conv = and i16 %3, -129
  %call = tail call zeroext i16 @coda_flags_to_cflags(i16 noundef zeroext %conv) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 16) #10
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %coda_inode, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb, align 4
  %add.ptr.i.i = getelementptr i8, ptr %coda_inode, i32 -80
  %conv3 = zext i16 %call to i32
  %call4 = call i32 @venus_open(ptr noundef %6, ptr noundef %add.ptr.i.i, i32 noundef %conv3, ptr noundef nonnull %host_file) #7
  %7 = ptrtoint ptr %host_file to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %host_file, align 4
  %tobool5.not = icmp eq ptr %8, null
  %spec.store.select = select i1 %tobool5.not, i32 -5, i32 %call4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select)
  %tobool8.not = icmp eq i32 %spec.store.select, 0
  br i1 %tobool8.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %9 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %f_flags, align 4
  %and12 = and i32 %10, 1053696
  %f_flags13 = getelementptr inbounds %struct.file, ptr %8, i32 0, i32 7
  %11 = ptrtoint ptr %f_flags13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %f_flags13, align 4
  %or = or i32 %12, %and12
  store i32 %or, ptr %f_flags13, align 4
  %13 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1059405606, ptr %call7.i, align 8
  %cfi_mapcount = getelementptr inbounds %struct.coda_file_info, ptr %call7.i, i32 0, i32 2
  %14 = ptrtoint ptr %cfi_mapcount to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %cfi_mapcount, align 8
  %cfi_container = getelementptr inbounds %struct.coda_file_info, ptr %call7.i, i32 0, i32 1
  %15 = ptrtoint ptr %cfi_container to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %8, ptr %cfi_container, align 4
  %cfi_access_intent = getelementptr inbounds %struct.coda_file_info, ptr %call7.i, i32 0, i32 3
  %16 = ptrtoint ptr %cfi_access_intent to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %cfi_access_intent, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %coda_file, i32 0, i32 16
  %17 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %private_data, align 4
  %cmp.not = icmp eq ptr %18, null
  br i1 %cmp.not, label %do.end24, label %do.body18, !prof !20

do.body18:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/coda/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 230, 0\0A.popsection", ""() #7, !srcloc !21
  unreachable

do.end24:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i, ptr %private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end24, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.store.select, %if.then9 ], [ 0, %do.end24 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %host_file) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @coda_flags_to_cflags(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venus_open(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @coda_release(ptr noundef %coda_inode, ptr noundef %coda_file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %f_flags = getelementptr inbounds %struct.file, ptr %coda_file, i32 0, i32 7
  %0 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f_flags, align 4
  %2 = trunc i32 %1 to i16
  %conv = and i16 %2, -129
  %call = tail call zeroext i16 @coda_flags_to_cflags(i16 noundef zeroext %conv) #7
  %call1 = tail call ptr @coda_ftoc(ptr noundef %coda_file) #7
  %i_sb = getelementptr inbounds %struct.inode, ptr %coda_inode, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %add.ptr.i.i = getelementptr i8, ptr %coda_inode, i32 -80
  %conv3 = zext i16 %call to i32
  %f_cred = getelementptr inbounds %struct.file, ptr %coda_file, i32 0, i32 12
  %5 = ptrtoint ptr %f_cred to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %f_cred, align 8
  %fsuid = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 10
  %7 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %7)
  %.unpack = load i32, ptr %fsuid, align 4
  %8 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call4 = tail call i32 @venus_close(ptr noundef %4, ptr noundef %add.ptr.i.i, i32 noundef %conv3, [1 x i32] %8) #7
  %cfi_container = getelementptr inbounds %struct.coda_file_info, ptr %call1, i32 0, i32 1
  %9 = ptrtoint ptr %cfi_container to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cfi_container, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %f_inode.i, align 8
  %c_lock = getelementptr i8, ptr %coda_inode, i32 -44
  tail call void @_raw_spin_lock(ptr noundef %c_lock) #7
  %i_mapping = getelementptr inbounds %struct.inode, ptr %coda_inode, i32 0, i32 9
  %13 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_mapping, align 8
  %i_data = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 46
  %cmp = icmp eq ptr %14, %i_data
  br i1 %cmp, label %if.then, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then:                                          ; preds = %entry
  %cfi_mapcount = getelementptr inbounds %struct.coda_file_info, ptr %call1, i32 0, i32 2
  %15 = ptrtoint ptr %cfi_mapcount to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cfi_mapcount, align 4
  %c_mapcount = getelementptr i8, ptr %coda_inode, i32 -60
  %17 = ptrtoint ptr %c_mapcount to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %c_mapcount, align 4
  %sub = sub i32 %18, %16
  store i32 %sub, ptr %c_mapcount, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %16)
  %tobool.not = icmp eq i32 %18, %16
  br i1 %tobool.not, label %if.then9, label %if.then.if.end12_crit_edge

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %i_data10 = getelementptr inbounds %struct.inode, ptr %coda_inode, i32 0, i32 46
  %19 = ptrtoint ptr %i_mapping to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %i_data10, ptr %i_mapping, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.then.if.end12_crit_edge, %entry.if.end12_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %c_lock) #7
  %20 = ptrtoint ptr %cfi_container to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cfi_container, align 4
  tail call void @fput(ptr noundef %21) #7
  %private_data = getelementptr inbounds %struct.file, ptr %coda_file, i32 0, i32 16
  %22 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %private_data, align 4
  tail call void @kfree(ptr noundef %23) #7
  %24 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %private_data, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @coda_ftoc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venus_close(ptr noundef, ptr noundef, i32 noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @coda_fsync(ptr noundef %coda_file, i64 noundef %start, i64 noundef %end, i32 noundef %datasync) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %coda_file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 8
  %4 = and i16 %3, -4096
  %5 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i16 %4, label %entry.cleanup_crit_edge [
    i16 -32768, label %entry.if.end_crit_edge
    i16 16384, label %entry.if.end_crit_edge40
    i16 -24576, label %entry.if.end_crit_edge41
  ]

entry.if.end_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge40, %entry.if.end_crit_edge41
  %i_mapping = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_mapping, align 8
  %call13 = tail call i32 @filemap_write_and_wait_range(ptr noundef %7, i64 noundef %start, i64 noundef %end) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %if.end15, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #7
  %call16 = tail call ptr @coda_ftoc(ptr noundef %coda_file) #7
  %cfi_container = getelementptr inbounds %struct.coda_file_info, ptr %call16, i32 0, i32 1
  %8 = ptrtoint ptr %cfi_container to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cfi_container, align 4
  %call17 = tail call i32 @vfs_fsync(ptr noundef %9, i32 noundef %datasync) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %land.lhs.true, label %if.end15.if.end23_crit_edge

if.end15.if.end23_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

land.lhs.true:                                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %datasync)
  %tobool19.not = icmp eq i32 %datasync, 0
  br i1 %tobool19.not, label %if.then20, label %land.lhs.true.if.end23_crit_edge

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -80
  %call22 = tail call i32 @venus_fsync(ptr noundef %11, ptr noundef %add.ptr.i.i) #7
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %land.lhs.true.if.end23_crit_edge, %if.end15.if.end23_crit_edge
  %err.0 = phi i32 [ %call17, %if.end15.if.end23_crit_edge ], [ 0, %land.lhs.true.if.end23_crit_edge ], [ %call22, %if.then20 ]
  tail call void @up_write(ptr noundef %i_rwsem.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end23 ], [ -22, %entry.cleanup_crit_edge ], [ %call13, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fsync(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venus_fsync(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coda_file_read_iter(ptr noundef %iocb, ptr noundef %to) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %call1 = tail call ptr @coda_ftoc(ptr noundef %1) #7
  %ki_pos2 = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %4 = ptrtoint ptr %ki_pos2 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ki_pos2, align 8
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %to, i32 0, i32 4
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 -80
  %cfi_access_intent = getelementptr inbounds %struct.coda_file_info, ptr %call1, i32 0, i32 3
  %call5 = tail call i32 @venus_access_intent(ptr noundef %9, ptr noundef %add.ptr.i.i, ptr noundef %cfi_access_intent, i32 noundef %7, i64 noundef %5, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end, label %entry.finish_read_crit_edge

entry.finish_read_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %finish_read

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %cfi_container = getelementptr inbounds %struct.coda_file_info, ptr %call1, i32 0, i32 1
  %10 = ptrtoint ptr %cfi_container to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cfi_container, align 4
  %call7 = tail call i32 @vfs_iter_read(ptr noundef %11, ptr noundef %to, ptr noundef %ki_pos2, i32 noundef 0) #7
  br label %finish_read

finish_read:                                      ; preds = %if.end, %entry.finish_read_crit_edge
  %ret.0 = phi i32 [ %call5, %entry.finish_read_crit_edge ], [ %call7, %if.end ]
  %12 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb, align 4
  %call11 = tail call i32 @venus_access_intent(ptr noundef %13, ptr noundef %add.ptr.i.i, ptr noundef %cfi_access_intent, i32 noundef %7, i64 noundef %5, i32 noundef 4) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coda_file_write_iter(ptr noundef %iocb, ptr noundef %to) #0 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %call1 = tail call ptr @coda_ftoc(ptr noundef %1) #7
  %cfi_container = getelementptr inbounds %struct.coda_file_info, ptr %call1, i32 0, i32 1
  %4 = ptrtoint ptr %cfi_container to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfi_container, align 4
  %ki_pos2 = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %6 = ptrtoint ptr %ki_pos2 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %ki_pos2, align 8
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %to, i32 0, i32 4
  %8 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %10 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 -80
  %cfi_access_intent = getelementptr inbounds %struct.coda_file_info, ptr %call1, i32 0, i32 3
  %call5 = tail call i32 @venus_access_intent(ptr noundef %11, ptr noundef %add.ptr.i.i, ptr noundef %cfi_access_intent, i32 noundef %9, i64 noundef %7, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end, label %entry.finish_write_crit_edge

entry.finish_write_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %finish_write

if.end:                                           ; preds = %entry
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 2
  %12 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %f_inode.i.i, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %13, align 8
  %16 = and i16 %15, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %16)
  %cmp.i = icmp eq i16 %16, -32768
  br i1 %cmp.i, label %if.end.i, label %if.end.file_start_write.exit_crit_edge

if.end.file_start_write.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %file_start_write.exit

if.end.i:                                         ; preds = %if.end
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 8
  %17 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_sb.i, align 4
  %add.ptr1.i.i.i = getelementptr %struct.super_block, ptr %18, i32 0, i32 32, i32 2
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 49) #7
  %dep_map.i.i.i.i = getelementptr %struct.super_block, ptr %18, i32 0, i32 32, i32 2, i32 0, i32 5
  %19 = tail call ptr @llvm.returnaddress(i32 0) #7
  %20 = ptrtoint ptr %19 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef %20) #7
  %21 = tail call i32 @llvm.read_register.i32(metadata !10) #7
  %and.i.i.i.i.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %24, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !22
  %call.i.i.i.i.i = tail call i32 @rcu_read_lock_any_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i, label %if.end.i.rcu_sync_is_idle.exit.i.i.i.i_crit_edge

if.end.i.rcu_sync_is_idle.exit.i.i.i.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_sync_is_idle.exit.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %if.end.i
  %call1.i.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool2.not.i.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.rcu_sync_is_idle.exit.i.i.i.i_crit_edge, label %land.lhs.true3.i.i.i.i.i

land.lhs.true.i.i.i.i.i.rcu_sync_is_idle.exit.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_sync_is_idle.exit.i.i.i.i

land.lhs.true3.i.i.i.i.i:                         ; preds = %land.lhs.true.i.i.i.i.i
  %.b8.i.i.i.i.i = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i.i.i.i.i, label %land.lhs.true3.i.i.i.i.i.rcu_sync_is_idle.exit.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i

land.lhs.true3.i.i.i.i.i.rcu_sync_is_idle.exit.i.i.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_sync_is_idle.exit.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %land.lhs.true3.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 35, ptr noundef nonnull @.str.2) #7
  br label %rcu_sync_is_idle.exit.i.i.i.i

rcu_sync_is_idle.exit.i.i.i.i:                    ; preds = %if.then.i.i.i.i.i, %land.lhs.true3.i.i.i.i.i.rcu_sync_is_idle.exit.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.rcu_sync_is_idle.exit.i.i.i.i_crit_edge, %if.end.i.rcu_sync_is_idle.exit.i.i.i.i_crit_edge
  %25 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %add.ptr1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool7.not.i.i.i.i.i = icmp eq i32 %26, 0
  br i1 %tobool7.not.i.i.i.i.i, label %do.body7.i.i.i.i, label %if.else.i.i.i.i, !prof !20

do.body7.i.i.i.i:                                 ; preds = %rcu_sync_is_idle.exit.i.i.i.i
  %27 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !23
  %read_count.i.i.i.i = getelementptr %struct.super_block, ptr %18, i32 0, i32 32, i32 2, i32 0, i32 1
  %28 = ptrtoint ptr %read_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read_count.i.i.i.i, align 4
  %30 = ptrtoint ptr %29 to i32
  %31 = tail call i32 @llvm.read_register.i32(metadata !10) #7
  %and.i.i.i.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %34
  %35 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %36, %30
  %37 = inttoptr i32 %add.i.i.i.i to ptr
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %add21.i.i.i.i = add i32 %39, 1
  store i32 %add21.i.i.i.i, ptr %37, align 4
  %40 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !24
  %and.i.i.i.i.i.i = and i32 %40, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool32.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool32.not.i.i.i.i, label %if.then41.i.i.i.i, label %do.body7.i.i.i.i.do.end43.i.i.i.i_crit_edge, !prof !25

do.body7.i.i.i.i.do.end43.i.i.i.i_crit_edge:      ; preds = %do.body7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end43.i.i.i.i

if.then41.i.i.i.i:                                ; preds = %do.body7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %do.end43.i.i.i.i

do.end43.i.i.i.i:                                 ; preds = %if.then41.i.i.i.i, %do.body7.i.i.i.i.do.end43.i.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %27) #7, !srcloc !26
  br label %sb_start_write.exit.i

if.else.i.i.i.i:                                  ; preds = %rcu_sync_is_idle.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call50.i.i.i.i = tail call zeroext i1 @__percpu_down_read(ptr noundef %add.ptr1.i.i.i, i1 noundef zeroext false) #7
  br label %sb_start_write.exit.i

sb_start_write.exit.i:                            ; preds = %if.else.i.i.i.i, %do.end43.i.i.i.i
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !27
  %41 = tail call i32 @llvm.read_register.i32(metadata !10) #7
  %and.i.i.i58.i.i.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i58.i.i.i.i to ptr
  %preempt_count.i.i59.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i59.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i59.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %44, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i59.i.i.i.i, align 4
  br label %file_start_write.exit

file_start_write.exit:                            ; preds = %sb_start_write.exit.i, %if.end.file_start_write.exit_crit_edge
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #7
  %45 = ptrtoint ptr %cfi_container to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cfi_container, align 4
  %call8 = tail call i32 @vfs_iter_write(ptr noundef %46, ptr noundef %to, ptr noundef %ki_pos2, i32 noundef 0) #7
  %47 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %f_inode.i.i, align 8
  %i_size = getelementptr inbounds %struct.inode, ptr %48, i32 0, i32 14
  %49 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %i_size, align 8
  %i_size10 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 14
  %51 = ptrtoint ptr %i_size10 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %50, ptr %i_size10, align 8
  %add = add i64 %50, 511
  %shr = ashr i64 %add, 9
  %i_blocks = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 22
  %52 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %shr, ptr %i_blocks, align 8
  %i_mtime = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #7
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %3) #7
  %53 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #7
  %54 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  call void @up_write(ptr noundef %i_rwsem.i) #7
  %55 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %f_inode.i.i, align 8
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %56, align 8
  %59 = and i16 %58, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %59)
  %cmp.i42 = icmp eq i16 %59, -32768
  br i1 %cmp.i42, label %if.end.i46, label %file_start_write.exit.finish_write_crit_edge

file_start_write.exit.finish_write_crit_edge:     ; preds = %file_start_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %finish_write

if.end.i46:                                       ; preds = %file_start_write.exit
  %i_sb.i43 = getelementptr inbounds %struct.inode, ptr %56, i32 0, i32 8
  %60 = ptrtoint ptr %i_sb.i43 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %i_sb.i43, align 4
  %add.ptr1.i.i = getelementptr %struct.super_block, ptr %61, i32 0, i32 32, i32 2
  %dep_map.i.i.i = getelementptr %struct.super_block, ptr %61, i32 0, i32 32, i32 2, i32 0, i32 5
  %62 = call ptr @llvm.returnaddress(i32 0) #7
  %63 = ptrtoint ptr %62 to i32
  call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %63) #7
  %64 = call i32 @llvm.read_register.i32(metadata !10) #7
  %and.i.i.i.i.i.i44 = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i.i.i.i44 to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i45 = add i32 %67, 1
  store volatile i32 %add.i.i.i.i45, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !28
  %call.i.i.i.i = call i32 @rcu_read_lock_any_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i, label %if.end.i46.rcu_sync_is_idle.exit.i.i.i_crit_edge

if.end.i46.rcu_sync_is_idle.exit.i.i.i_crit_edge: ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_sync_is_idle.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end.i46
  %call1.i.i.i.i = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, label %land.lhs.true3.i.i.i.i

land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_sync_is_idle.exit.i.i.i

land.lhs.true3.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b8.i.i.i.i = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i.i.i.i, label %land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_sync_is_idle.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 35, ptr noundef nonnull @.str.2) #7
  br label %rcu_sync_is_idle.exit.i.i.i

rcu_sync_is_idle.exit.i.i.i:                      ; preds = %if.then.i.i.i.i, %land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, %if.end.i46.rcu_sync_is_idle.exit.i.i.i_crit_edge
  %68 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %add.ptr1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool7.not.i.i.i.i = icmp eq i32 %69, 0
  br i1 %tobool7.not.i.i.i.i, label %do.body3.i.i.i, label %do.end49.i.i.i, !prof !20

do.body3.i.i.i:                                   ; preds = %rcu_sync_is_idle.exit.i.i.i
  %70 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !23
  %read_count.i.i.i = getelementptr %struct.super_block, ptr %61, i32 0, i32 32, i32 2, i32 0, i32 1
  %71 = ptrtoint ptr %read_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %read_count.i.i.i, align 4
  %73 = ptrtoint ptr %72 to i32
  %74 = call i32 @llvm.read_register.i32(metadata !10) #7
  %and.i.i.i.i = and i32 %74, -16384
  %75 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 3
  %76 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %77
  %78 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %79, %73
  %80 = inttoptr i32 %add.i.i.i to ptr
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %80, align 4
  %add17.i.i.i = add i32 %82, -1
  store i32 %add17.i.i.i, ptr %80, align 4
  %83 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !24
  %and.i.i.i.i.i47 = and i32 %83, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i47)
  %tobool28.not.i.i.i = icmp eq i32 %and.i.i.i.i.i47, 0
  br i1 %tobool28.not.i.i.i, label %if.then37.i.i.i, label %do.body3.i.i.i.do.end39.i.i.i_crit_edge, !prof !25

do.body3.i.i.i.do.end39.i.i.i_crit_edge:          ; preds = %do.body3.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end39.i.i.i

if.then37.i.i.i:                                  ; preds = %do.body3.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @warn_bogus_irq_restore() #7
  br label %do.end39.i.i.i

do.end39.i.i.i:                                   ; preds = %if.then37.i.i.i, %do.body3.i.i.i.do.end39.i.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %70) #7, !srcloc !26
  br label %__sb_end_write.exit.i

do.end49.i.i.i:                                   ; preds = %rcu_sync_is_idle.exit.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !29
  %84 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !23
  %read_count75.i.i.i = getelementptr %struct.super_block, ptr %61, i32 0, i32 32, i32 2, i32 0, i32 1
  %85 = ptrtoint ptr %read_count75.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %read_count75.i.i.i, align 4
  %87 = ptrtoint ptr %86 to i32
  %88 = call i32 @llvm.read_register.i32(metadata !10) #7
  %and.i122.i.i.i = and i32 %88, -16384
  %89 = inttoptr i32 %and.i122.i.i.i to ptr
  %cpu78.i.i.i = getelementptr inbounds %struct.thread_info, ptr %89, i32 0, i32 3
  %90 = ptrtoint ptr %cpu78.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %cpu78.i.i.i, align 4
  %arrayidx79.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %91
  %92 = ptrtoint ptr %arrayidx79.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx79.i.i.i, align 4
  %add80.i.i.i = add i32 %93, %87
  %94 = inttoptr i32 %add80.i.i.i to ptr
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %94, align 4
  %add81.i.i.i = add i32 %96, -1
  store i32 %add81.i.i.i, ptr %94, align 4
  %97 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !24
  %and.i.i123.i.i.i = and i32 %97, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i123.i.i.i)
  %tobool92.not.i.i.i = icmp eq i32 %and.i.i123.i.i.i, 0
  br i1 %tobool92.not.i.i.i, label %if.then101.i.i.i, label %do.end49.i.i.i.do.end104.i.i.i_crit_edge, !prof !25

do.end49.i.i.i.do.end104.i.i.i_crit_edge:         ; preds = %do.end49.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end104.i.i.i

if.then101.i.i.i:                                 ; preds = %do.end49.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @warn_bogus_irq_restore() #7
  br label %do.end104.i.i.i

do.end104.i.i.i:                                  ; preds = %if.then101.i.i.i, %do.end49.i.i.i.do.end104.i.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %84) #7, !srcloc !26
  %writer.i.i.i = getelementptr %struct.super_block, ptr %61, i32 0, i32 32, i32 2, i32 0, i32 2
  %call111.i.i.i = call i32 @rcuwait_wake_up(ptr noundef %writer.i.i.i) #7
  br label %__sb_end_write.exit.i

__sb_end_write.exit.i:                            ; preds = %do.end104.i.i.i, %do.end39.i.i.i
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !30
  %98 = call i32 @llvm.read_register.i32(metadata !10) #7
  %and.i.i.i120.i.i.i = and i32 %98, -16384
  %99 = inttoptr i32 %and.i.i.i120.i.i.i to ptr
  %preempt_count.i.i121.i.i.i = getelementptr inbounds %struct.thread_info, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %preempt_count.i.i121.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load volatile i32, ptr %preempt_count.i.i121.i.i.i, align 4
  %sub.i.i.i.i = add i32 %101, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i121.i.i.i, align 4
  br label %finish_write

finish_write:                                     ; preds = %__sb_end_write.exit.i, %file_start_write.exit.finish_write_crit_edge, %entry.finish_write_crit_edge
  %ret.0 = phi i32 [ %call5, %entry.finish_write_crit_edge ], [ %call8, %file_start_write.exit.finish_write_crit_edge ], [ %call8, %__sb_end_write.exit.i ]
  %102 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %i_sb, align 4
  %call15 = call i32 @venus_access_intent(ptr noundef %103, ptr noundef %add.ptr.i.i, ptr noundef %cfi_access_intent, i32 noundef %9, i64 noundef %7, i32 noundef 5) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coda_file_mmap(ptr noundef %coda_file, ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %coda_file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %call1 = tail call ptr @coda_ftoc(ptr noundef %coda_file) #7
  %cfi_container = getelementptr inbounds %struct.coda_file_info, ptr %call1, i32 0, i32 1
  %2 = ptrtoint ptr %cfi_container to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfi_container, align 4
  %f_inode.i124 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %f_inode.i124 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_inode.i124, align 8
  %f_op = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %f_op, align 4
  %mmap = getelementptr inbounds %struct.file_operations, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %mmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmap, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 14
  %10 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vm_file, align 4
  %cmp.not = icmp eq ptr %11, %coda_file
  br i1 %cmp.not, label %if.end26, label %do.end, !prof !20

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 140, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end26:                                         ; preds = %if.end
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %12 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vm_end, align 4
  %14 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vma, align 4
  %sub = sub i32 %13, %15
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %16 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vm_pgoff, align 4
  %mul = shl i32 %17, 12
  %conv = zext i32 %mul to i64
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %18 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_sb, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -80
  %cfi_access_intent = getelementptr inbounds %struct.coda_file_info, ptr %call1, i32 0, i32 3
  %call28 = tail call i32 @venus_access_intent(ptr noundef %19, ptr noundef %add.ptr.i.i, ptr noundef %cfi_access_intent, i32 noundef %sub, i64 noundef %conv, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end31:                                         ; preds = %if.end26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3264, i32 noundef 68) #10
  %tobool33.not = icmp eq ptr %call7.i, null
  br i1 %tobool33.not, label %if.end31.cleanup_crit_edge, label %if.end35

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end35:                                         ; preds = %if.end31
  %c_lock = getelementptr i8, ptr %1, i32 -44
  tail call void @_raw_spin_lock(ptr noundef %c_lock) #7
  %f_mapping = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 18
  %21 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %f_mapping, align 4
  %f_mapping37 = getelementptr inbounds %struct.file, ptr %coda_file, i32 0, i32 18
  %23 = ptrtoint ptr %f_mapping37 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %f_mapping37, align 4
  %i_mapping = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %24 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_mapping, align 8
  %i_data = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 46
  %cmp38 = icmp eq ptr %25, %i_data
  %i_mapping41 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 9
  %26 = ptrtoint ptr %i_mapping41 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_mapping41, align 8
  br i1 %cmp38, label %if.then40, label %if.else

if.then40:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %i_mapping to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %i_mapping, align 8
  br label %if.end50

if.else:                                          ; preds = %if.end35
  %cmp45.not = icmp eq ptr %25, %27
  br i1 %cmp45.not, label %if.else.if.end50_crit_edge, label %if.then47

if.else.if.end50_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.then47:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock(ptr noundef %c_lock) #7
  tail call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %cleanup

if.end50:                                         ; preds = %if.else.if.end50_crit_edge, %if.then40
  %c_mapcount = getelementptr i8, ptr %1, i32 -60
  %29 = ptrtoint ptr %c_mapcount to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %c_mapcount, align 4
  %inc = add i32 %30, 1
  store i32 %inc, ptr %c_mapcount, align 4
  %cfi_mapcount = getelementptr inbounds %struct.coda_file_info, ptr %call1, i32 0, i32 2
  %31 = ptrtoint ptr %cfi_mapcount to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cfi_mapcount, align 4
  %inc51 = add i32 %32, 1
  store i32 %inc51, ptr %cfi_mapcount, align 4
  tail call void @_raw_spin_unlock(ptr noundef %c_lock) #7
  %f_count.i = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %f_count.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %f_count.i, i32 1, i32 3, i32 1) #7
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %f_count.i, ptr %f_count.i, i32 1, ptr elementtype(i32) %f_count.i) #7, !srcloc !31
  %34 = ptrtoint ptr %vm_file to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %3, ptr %vm_file, align 4
  %35 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %f_op, align 4
  %mmap.i = getelementptr inbounds %struct.file_operations, ptr %36, i32 0, i32 12
  %37 = ptrtoint ptr %mmap.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mmap.i, align 4
  %call.i = tail call i32 %38(ptr noundef %3, ptr noundef %vma) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool57.not = icmp eq i32 %call.i, 0
  br i1 %tobool57.not, label %if.else59, label %if.then58

if.then58:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @fput(ptr noundef %coda_file) #7
  tail call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %cleanup

if.else59:                                        ; preds = %if.end50
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %39 = ptrtoint ptr %vm_ops to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %vm_ops, align 4
  %host_vm_ops = getelementptr inbounds %struct.coda_vm_ops, ptr %call7.i, i32 0, i32 2
  %41 = ptrtoint ptr %host_vm_ops to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %host_vm_ops, align 8
  %tobool61.not = icmp eq ptr %40, null
  br i1 %tobool61.not, label %if.else59.if.end65_crit_edge, label %if.then62

if.else59.if.end65_crit_edge:                     ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

if.then62:                                        ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #9
  %vm_ops63 = getelementptr inbounds %struct.coda_vm_ops, ptr %call7.i, i32 0, i32 3
  %42 = call ptr @memcpy(ptr %vm_ops63, ptr %40, i32 56)
  br label %if.end65

if.end65:                                         ; preds = %if.then62, %if.else59.if.end65_crit_edge
  %vm_ops66 = getelementptr inbounds %struct.coda_vm_ops, ptr %call7.i, i32 0, i32 3
  %43 = ptrtoint ptr %vm_ops66 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @coda_vm_open, ptr %vm_ops66, align 4
  %close = getelementptr inbounds %struct.coda_vm_ops, ptr %call7.i, i32 0, i32 3, i32 1
  %44 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @coda_vm_close, ptr %close, align 8
  %coda_file68 = getelementptr inbounds %struct.coda_vm_ops, ptr %call7.i, i32 0, i32 1
  %45 = ptrtoint ptr %coda_file68 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %coda_file, ptr %coda_file68, align 4
  %call.i.i.i125 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i, i32 noundef 4) #7
  %46 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile i32 1, ptr %call7.i, align 8
  %47 = ptrtoint ptr %vm_ops to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %vm_ops66, ptr %vm_ops, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %if.then58, %if.then47, %if.end31.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ -16, %if.then47 ], [ -19, %entry.cleanup_crit_edge ], [ %call28, %if.end26.cleanup_crit_edge ], [ -12, %if.end31.cleanup_crit_edge ], [ 0, %if.end65 ], [ %call.i, %if.then58 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_splice_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venus_access_intent(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_iter_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_iter_write(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__percpu_down_read(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @coda_vm_open(ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %0 = ptrtoint ptr %vm_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_ops, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -12
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %add.ptr, i32 1, i32 3, i32 1) #7
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr, ptr %add.ptr, i32 1, ptr elementtype(i32) %add.ptr) #7, !srcloc !32
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %entry.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !25

entry.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %entry
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !20

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %add.ptr, i32 noundef %.sink.i.i.i) #7
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  %host_vm_ops = getelementptr i8, ptr %1, i32 -4
  %4 = ptrtoint ptr %host_vm_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host_vm_ops, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %refcount_inc.exit.if.end_crit_edge, label %land.lhs.true

refcount_inc.exit.if.end_crit_edge:               ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %refcount_inc.exit
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %7(ptr noundef %vma) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %refcount_inc.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @coda_vm_close(ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %0 = ptrtoint ptr %vm_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_ops, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -12
  %host_vm_ops = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %host_vm_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_vm_ops, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %close = getelementptr inbounds %struct.vm_operations_struct, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %close, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %5(ptr noundef %vma) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @llvm.prefetch.p0(ptr %add.ptr, i32 1, i32 3, i32 1) #7
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr, ptr %add.ptr, i32 1, ptr elementtype(i32) %add.ptr) #7, !srcloc !34
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then5, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end8_crit_edge, label %if.then10.i.i.i, !prof !20

if.end5.i.i.i.if.end8_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %add.ptr, i32 noundef 3) #7
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !35
  %7 = ptrtoint ptr %host_vm_ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %host_vm_ops, align 4
  %9 = ptrtoint ptr %vm_ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %vm_ops, align 4
  %coda_file = getelementptr i8, ptr %1, i32 -8
  %10 = ptrtoint ptr %coda_file to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %coda_file, align 4
  tail call void @fput(ptr noundef %11) #7
  tail call void @kfree(ptr noundef %add.ptr) #7
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.then10.i.i.i, %if.end5.i.i.i.if.end8_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8}
!llvm.named.register.sp = !{!10}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @coda_file_operations, !1, !"coda_file_operations", i1 false, i1 false}
!1 = !{!"../fs/coda/file.c", i32 296, i32 30}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../include/linux/percpu-rwsem.h", i32 49, i32 2}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../include/linux/rcu_sync.h", i32 34, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/coda/file.c", i32 140, i32 6}
!10 = !{!"sp"}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!20 = !{!"branch_weights", i32 2000, i32 1}
!21 = !{i64 2154591849, i64 2154592328, i64 2154591886, i64 2154591942, i64 2154591976, i64 2154592000, i64 2154592041, i64 2154592062, i64 2154592090, i64 2154592124}
!22 = !{i64 2152345910}
!23 = !{i64 590214, i64 590275}
!24 = !{i64 592946}
!25 = !{!"branch_weights", i32 1, i32 2000}
!26 = !{i64 593231}
!27 = !{i64 2152354760}
!28 = !{i64 2152364714}
!29 = !{i64 2152374209}
!30 = !{i64 2152383686}
!31 = !{i64 2148136887, i64 2148136913, i64 2148136942, i64 2148136976, i64 2148137007, i64 2148137030}
!32 = !{i64 2148138417, i64 2148138449, i64 2148138478, i64 2148138512, i64 2148138543, i64 2148138566}
!33 = !{i64 2148226418}
!34 = !{i64 2148140882, i64 2148140914, i64 2148140943, i64 2148140977, i64 2148141008, i64 2148141031}
!35 = !{i64 2148593808}
