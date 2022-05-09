; ModuleID = '/llk/IR_all_yes/drivers/dma-buf/sync_file.c_pt.bc'
source_filename = "../drivers/dma-buf/sync_file.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+sync_file_create\22, \22a\22\09"
module asm "\09.weak\09__crc_sync_file_create\09\09\09\09"
module asm "\09.long\09__crc_sync_file_create\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sync_file_create:\09\09\09\09\09"
module asm "\09.asciz \09\22sync_file_create\22\09\09\09\09\09"
module asm "__kstrtabns_sync_file_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sync_file_get_fence\22, \22a\22\09"
module asm "\09.weak\09__crc_sync_file_get_fence\09\09\09\09"
module asm "\09.long\09__crc_sync_file_get_fence\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sync_file_get_fence:\09\09\09\09\09"
module asm "\09.asciz \09\22sync_file_get_fence\22\09\09\09\09\09"
module asm "__kstrtabns_sync_file_get_fence:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dma_fence_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sync_file = type { ptr, [32 x i8], %struct.list_head, %struct.wait_queue_head, i32, ptr, %struct.dma_fence_cb }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.dma_fence = type { ptr, ptr, %union.anon.68, i64, i64, i32, %struct.kref, i32 }
%union.anon.68 = type { i64 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.sync_file_info = type { [32 x i8], i32, i32, i32, i32, i64 }
%struct.sync_merge_data = type { [32 x i8], i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.dma_fence_array = type { %struct.dma_fence, %struct.spinlock, i32, %struct.atomic_t, ptr, %struct.irq_work }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.16 }
%struct.llist_node = type { ptr }
%union.anon.16 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.sync_fence_info = type { [32 x i8], [32 x i8], i32, i32, i64 }

@__kstrtab_sync_file_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_sync_file_create = external dso_local constant [0 x i8], align 1
@__ksymtab_sync_file_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sync_file_create to i32), ptr @__kstrtab_sync_file_create, ptr @__kstrtabns_sync_file_create }, section "___ksymtab+sync_file_create", align 4
@__kstrtab_sync_file_get_fence = external dso_local constant [0 x i8], align 1
@__kstrtabns_sync_file_get_fence = external dso_local constant [0 x i8], align 1
@__ksymtab_sync_file_get_fence = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sync_file_get_fence to i32), ptr @__kstrtab_sync_file_get_fence, ptr @__kstrtabns_sync_file_get_fence }, section "___ksymtab+sync_file_get_fence", align 4
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s-%s%llu-%lld\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sync_file\00", [22 x i8] zeroinitializer }, align 32
@sync_file_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sync_file_poll, ptr @sync_file_ioctl, ptr null, ptr null, i32 0, ptr null, ptr null, ptr @sync_file_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@sync_file_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&sync_file->wq\00", [17 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@dma_fence_array_ops = external dso_local constant %struct.dma_fence_ops, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 3224387075, i64 3224911364]
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 138, i32 22 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 30, i32 39 }
@___asan_gen_.12 = private unnamed_addr constant [15 x i8] c"sync_file_fops\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 479, i32 37 }
@___asan_gen_.15 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.19 = private constant [31 x i8] c"../drivers/dma-buf/sync_file.c\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 35, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 230, i32 6 }
@___asan_gen_.25 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 214, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.28 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 156, i32 2 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__ksymtab_sync_file_create, ptr @__ksymtab_sync_file_get_fence, ptr @.str, ptr @.str.1, ptr @sync_file_fops, ptr @sync_file_alloc.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sync_file_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sync_file_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sync_file_create(ptr noundef %fence) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 116) #14
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call ptr @anon_inode_getfile(ptr noundef nonnull @.str.1, ptr noundef nonnull @sync_file_fops, ptr noundef nonnull %call7.i.i.i, i32 noundef 0) #11
  %1 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1.i, ptr %call7.i.i.i, align 8
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %err.i, label %if.end

err.i:                                            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %wq.i = getelementptr inbounds %struct.sync_file, ptr %call7.i.i.i, i32 0, i32 3
  tail call void @__init_waitqueue_head(ptr noundef %wq.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @sync_file_alloc.__key) #11
  %cb.i = getelementptr inbounds %struct.sync_file, ptr %call7.i.i.i, i32 0, i32 6
  %2 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %cb.i, ptr %cb.i, align 8
  %prev.i.i = getelementptr inbounds %struct.sync_file, ptr %call7.i.i.i, i32 0, i32 6, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %cb.i, ptr %prev.i.i, align 4
  %tobool.not.i5 = icmp eq ptr %fence, null
  br i1 %tobool.not.i5, label %if.end.dma_fence_get.exit_crit_edge, label %if.then.i

if.end.dma_fence_get.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_fence_get.exit

if.then.i:                                        ; preds = %if.end
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !30
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !31

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !32

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge:   ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_fence_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i) #11
  br label %dma_fence_get.exit

dma_fence_get.exit:                               ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, %if.end.dma_fence_get.exit_crit_edge
  %fence2 = getelementptr inbounds %struct.sync_file, ptr %call7.i.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %fence2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %fence, ptr %fence2, align 4
  br label %cleanup

cleanup:                                          ; preds = %dma_fence_get.exit, %err.i, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i.i, %dma_fence_get.exit ], [ null, %err.i ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sync_file_get_fence(i32 noundef %fd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @fget(i32 noundef %fd) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %f_op.i = getelementptr inbounds %struct.file, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %f_op.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_op.i, align 4
  %cmp.not.i = icmp eq ptr %1, @sync_file_fops
  br i1 %cmp.not.i, label %sync_file_fdget.exit, label %err.i

err.i:                                            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @fput(ptr noundef nonnull %call.i) #11
  br label %cleanup

sync_file_fdget.exit:                             ; preds = %if.end.i
  %private_data.i = getelementptr inbounds %struct.file, ptr %call.i, i32 0, i32 16
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %sync_file_fdget.exit.cleanup_crit_edge, label %if.end

sync_file_fdget.exit.cleanup_crit_edge:           ; preds = %sync_file_fdget.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %sync_file_fdget.exit
  %fence1 = getelementptr inbounds %struct.sync_file, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %fence1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fence1, align 4
  %tobool.not.i6 = icmp eq ptr %5, null
  br i1 %tobool.not.i6, label %if.end.dma_fence_get.exit_crit_edge, label %if.then.i

if.end.dma_fence_get.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_fence_get.exit

if.then.i:                                        ; preds = %if.end
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %5, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !30
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !31

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %7 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %.not.i.i.i.i.i = icmp sgt i32 %7, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !32

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge:   ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_fence_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i) #11
  br label %dma_fence_get.exit

dma_fence_get.exit:                               ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, %if.end.dma_fence_get.exit_crit_edge
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  tail call void @fput(ptr noundef %9) #11
  br label %cleanup

cleanup:                                          ; preds = %dma_fence_get.exit, %sync_file_fdget.exit.cleanup_crit_edge, %err.i, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %5, %dma_fence_get.exit ], [ null, %sync_file_fdget.exit.cleanup_crit_edge ], [ null, %err.i ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sync_file_get_name(ptr noundef %sync_file, ptr noundef returned %buf, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %user_name = getelementptr inbounds %struct.sync_file, ptr %sync_file, i32 0, i32 1
  %0 = ptrtoint ptr %user_name to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %user_name, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @strlcpy(ptr noundef %buf, ptr noundef %user_name, i32 noundef %len) #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %fence2 = getelementptr inbounds %struct.sync_file, ptr %sync_file, i32 0, i32 5
  %2 = ptrtoint ptr %fence2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fence2, align 4
  %ops = getelementptr inbounds %struct.dma_fence, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %get_driver_name = getelementptr inbounds %struct.dma_fence_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %get_driver_name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_driver_name, align 4
  %call3 = tail call ptr %7(ptr noundef %3) #11
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %get_timeline_name = getelementptr inbounds %struct.dma_fence_ops, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %get_timeline_name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_timeline_name, align 4
  %call5 = tail call ptr %11(ptr noundef %3) #11
  %context = getelementptr inbounds %struct.dma_fence, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %context to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %context, align 8
  %seqno = getelementptr inbounds %struct.dma_fence, ptr %3, i32 0, i32 4
  %14 = ptrtoint ptr %seqno to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %seqno, align 8
  %call6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @.str, ptr noundef %call3, ptr noundef %call5, i64 noundef %13, i64 noundef %15)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret ptr %buf
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @anon_inode_getfile(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sync_file_poll(ptr noundef %file, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %wq = getelementptr inbounds %struct.sync_file, ptr %1, i32 0, i32 3
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  %tobool3.not.i = icmp eq ptr %wq, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %3(ptr noundef %file, ptr noundef nonnull %wq, ptr noundef nonnull %wait) #11
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %cb = getelementptr inbounds %struct.sync_file, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %cb, align 4
  %cmp.i.not = icmp eq ptr %5, %cb
  br i1 %cmp.i.not, label %land.lhs.true, label %poll_wait.exit.if.end7_crit_edge

poll_wait.exit.if.end7_crit_edge:                 ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

land.lhs.true:                                    ; preds = %poll_wait.exit
  %flags = getelementptr inbounds %struct.sync_file, ptr %1, i32 0, i32 4
  %call1 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then:                                          ; preds = %land.lhs.true
  %fence = getelementptr inbounds %struct.sync_file, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fence, align 4
  %call4 = tail call i32 @dma_fence_add_callback(ptr noundef %7, ptr noundef %cb, ptr noundef nonnull @fence_check_cb_func) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.then5, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__wake_up(ptr noundef %wq, i32 noundef 3, i32 noundef 0, ptr noundef null) #11
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.then.if.end7_crit_edge, %land.lhs.true.if.end7_crit_edge, %poll_wait.exit.if.end7_crit_edge
  %fence8 = getelementptr inbounds %struct.sync_file, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %fence8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fence8, align 4
  %flags.i = getelementptr inbounds %struct.dma_fence, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i17 = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i17, label %if.end.i, label %if.end7.dma_fence_is_signaled.exit_crit_edge

if.end7.dma_fence_is_signaled.exit_crit_edge:     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_fence_is_signaled.exit

if.end.i:                                         ; preds = %if.end7
  %ops.i = getelementptr inbounds %struct.dma_fence, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i, align 4
  %signaled.i = getelementptr inbounds %struct.dma_fence_ops, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %signaled.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %signaled.i, align 4
  %tobool1.not.i18 = icmp eq ptr %15, null
  br i1 %tobool1.not.i18, label %if.end.i.dma_fence_is_signaled.exit_crit_edge, label %land.lhs.true.i19

if.end.i.dma_fence_is_signaled.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_fence_is_signaled.exit

land.lhs.true.i19:                                ; preds = %if.end.i
  %call4.i = tail call zeroext i1 %15(ptr noundef %9) #11
  br i1 %call4.i, label %if.then5.i, label %land.lhs.true.i19.dma_fence_is_signaled.exit_crit_edge

land.lhs.true.i19.dma_fence_is_signaled.exit_crit_edge: ; preds = %land.lhs.true.i19
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_fence_is_signaled.exit

if.then5.i:                                       ; preds = %land.lhs.true.i19
  call void @__sanitizer_cov_trace_pc() #13
  %call6.i = tail call i32 @dma_fence_signal(ptr noundef %9) #11
  br label %dma_fence_is_signaled.exit

dma_fence_is_signaled.exit:                       ; preds = %if.then5.i, %land.lhs.true.i19.dma_fence_is_signaled.exit_crit_edge, %if.end.i.dma_fence_is_signaled.exit_crit_edge, %if.end7.dma_fence_is_signaled.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %if.then5.i ], [ 1, %if.end7.dma_fence_is_signaled.exit_crit_edge ], [ 0, %land.lhs.true.i19.dma_fence_is_signaled.exit_crit_edge ], [ 0, %if.end.i.dma_fence_is_signaled.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sync_file_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %info.i = alloca %struct.sync_file_info, align 8
  %data.i = alloca %struct.sync_merge_data, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 -1070580221, label %sw.bb
    i32 -1070055932, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call.i = tail call i32 @get_unused_fd_flags(i32 noundef 524288) #11
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %data.i) #11
  %3 = call ptr @memset(ptr %data.i, i32 255, i32 48)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sw.bb.sync_file_ioctl_merge.exit_crit_edge, label %if.end.i

sw.bb.sync_file_ioctl_merge.exit_crit_edge:       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sync_file_ioctl_merge.exit

if.end.i:                                         ; preds = %sw.bb
  %4 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 156) #11
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i, label %if.end.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i.if.then11.i.i.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 48, i32 -1226833920) #15
  %asmresult.i.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !32

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %data.i, i32 noundef 48) #11
  %6 = call i32 @llvm.read_register.i32(metadata !20) #11
  %and.i.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #7, !srcloc !33
  %and.i.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #11, !srcloc !34
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !35
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %data.i, ptr noundef %4, i32 noundef 48) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #11, !srcloc !34
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end3.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !32

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.end.i.if.then11.i.i.i_crit_edge
  %res.0.i.i57.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 48, %if.end.i.if.then11.i.i.i_crit_edge ], [ 48, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 48, %res.0.i.i57.i
  %add.ptr.i.i.i = getelementptr i8, ptr %data.i, i32 %sub.i.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i57.i)
  br label %err_put_fd.i

if.end3.i:                                        ; preds = %if.end.i.i.i
  %flags.i = getelementptr inbounds %struct.sync_merge_data, ptr %data.i, i32 0, i32 3
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool4.not.i = icmp eq i32 %11, 0
  br i1 %tobool4.not.i, label %lor.lhs.false.i, label %if.end3.i.err_put_fd.i_crit_edge

if.end3.i.err_put_fd.i_crit_edge:                 ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_put_fd.i

lor.lhs.false.i:                                  ; preds = %if.end3.i
  %pad.i = getelementptr inbounds %struct.sync_merge_data, ptr %data.i, i32 0, i32 4
  %12 = ptrtoint ptr %pad.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pad.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool5.not.i = icmp eq i32 %13, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %lor.lhs.false.i.err_put_fd.i_crit_edge

lor.lhs.false.i.err_put_fd.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_put_fd.i

if.end7.i:                                        ; preds = %lor.lhs.false.i
  %fd2.i = getelementptr inbounds %struct.sync_merge_data, ptr %data.i, i32 0, i32 1
  %14 = ptrtoint ptr %fd2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fd2.i, align 4
  %call.i.i = call ptr @fget(i32 noundef %15) #11
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end7.i.err_put_fd.i_crit_edge, label %if.end.i.i

if.end7.i.err_put_fd.i_crit_edge:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_put_fd.i

if.end.i.i:                                       ; preds = %if.end7.i
  %f_op.i.i = getelementptr inbounds %struct.file, ptr %call.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %f_op.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %f_op.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %17, @sync_file_fops
  br i1 %cmp.not.i.i, label %sync_file_fdget.exit.i, label %err.i.i

err.i.i:                                          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @fput(ptr noundef nonnull %call.i.i) #11
  br label %err_put_fd.i

sync_file_fdget.exit.i:                           ; preds = %if.end.i.i
  %private_data.i.i = getelementptr inbounds %struct.file, ptr %call.i.i, i32 0, i32 16
  %18 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %private_data.i.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %sync_file_fdget.exit.i.err_put_fd.i_crit_edge, label %if.end11.i

sync_file_fdget.exit.i.err_put_fd.i_crit_edge:    ; preds = %sync_file_fdget.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_put_fd.i

if.end11.i:                                       ; preds = %sync_file_fdget.exit.i
  %arrayidx.i = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 31
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %arrayidx.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 116) #14
  %tobool.not.i.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end11.i.err_put_fence2.i_crit_edge, label %if.end.i.i48.i

if.end11.i.err_put_fence2.i_crit_edge:            ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_put_fence2.i

if.end.i.i48.i:                                   ; preds = %if.end11.i
  %call1.i.i.i = call ptr @anon_inode_getfile(ptr noundef nonnull @.str.1, ptr noundef nonnull @sync_file_fops, ptr noundef nonnull %call7.i.i.i.i.i, i32 noundef 0) #11
  %22 = ptrtoint ptr %call7.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call1.i.i.i, ptr %call7.i.i.i.i.i, align 8
  %cmp.i.i.i.i = icmp ugt ptr %call1.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.i, label %err.i.i.i, label %if.end.i49.i

err.i.i.i:                                        ; preds = %if.end.i.i48.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i.i) #11
  br label %err_put_fence2.i

if.end.i49.i:                                     ; preds = %if.end.i.i48.i
  %wq.i.i.i = getelementptr inbounds %struct.sync_file, ptr %call7.i.i.i.i.i, i32 0, i32 3
  call void @__init_waitqueue_head(ptr noundef %wq.i.i.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @sync_file_alloc.__key) #11
  %cb.i.i.i = getelementptr inbounds %struct.sync_file, ptr %call7.i.i.i.i.i, i32 0, i32 6
  %23 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %cb.i.i.i, ptr %cb.i.i.i, align 8
  %prev.i.i.i.i = getelementptr inbounds %struct.sync_file, ptr %call7.i.i.i.i.i, i32 0, i32 6, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %cb.i.i.i, ptr %prev.i.i.i.i, align 4
  %fence.i.i.i = getelementptr inbounds %struct.sync_file, ptr %1, i32 0, i32 5
  %25 = ptrtoint ptr %fence.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fence.i.i.i, align 4
  %ops.i.i.i.i = getelementptr inbounds %struct.dma_fence, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops.i.i.i.i, align 4
  %cmp.i.i119.i.i = icmp eq ptr %28, @dma_fence_array_ops
  br i1 %cmp.i.i119.i.i, label %if.then.i.i50.i, label %if.end.i49.i.get_fences.exit.i.i_crit_edge

if.end.i49.i.get_fences.exit.i.i_crit_edge:       ; preds = %if.end.i49.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_fences.exit.i.i

if.then.i.i50.i:                                  ; preds = %if.end.i49.i
  call void @__sanitizer_cov_trace_pc() #13
  %num_fences3.i.i.i = getelementptr inbounds %struct.dma_fence_array, ptr %26, i32 0, i32 2
  %29 = ptrtoint ptr %num_fences3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_fences3.i.i.i, align 4
  %fences.i.i.i = getelementptr inbounds %struct.dma_fence_array, ptr %26, i32 0, i32 4
  %31 = ptrtoint ptr %fences.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fences.i.i.i, align 4
  br label %get_fences.exit.i.i

get_fences.exit.i.i:                              ; preds = %if.then.i.i50.i, %if.end.i49.i.get_fences.exit.i.i_crit_edge
  %a_num_fences.0.i.i = phi i32 [ %30, %if.then.i.i50.i ], [ 1, %if.end.i49.i.get_fences.exit.i.i_crit_edge ]
  %retval.0.i121.i.i = phi ptr [ %32, %if.then.i.i50.i ], [ %fence.i.i.i, %if.end.i49.i.get_fences.exit.i.i_crit_edge ]
  %fence.i122.i.i = getelementptr inbounds %struct.sync_file, ptr %19, i32 0, i32 5
  %33 = ptrtoint ptr %fence.i122.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fence.i122.i.i, align 4
  %ops.i.i123.i.i = getelementptr inbounds %struct.dma_fence, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %ops.i.i123.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ops.i.i123.i.i, align 4
  %cmp.i.i124.i.i = icmp eq ptr %36, @dma_fence_array_ops
  br i1 %cmp.i.i124.i.i, label %if.then.i127.i.i, label %get_fences.exit.i.i.get_fences.exit130.i.i_crit_edge

get_fences.exit.i.i.get_fences.exit130.i.i_crit_edge: ; preds = %get_fences.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_fences.exit130.i.i

if.then.i127.i.i:                                 ; preds = %get_fences.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %num_fences3.i125.i.i = getelementptr inbounds %struct.dma_fence_array, ptr %34, i32 0, i32 2
  %37 = ptrtoint ptr %num_fences3.i125.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_fences3.i125.i.i, align 4
  %fences.i126.i.i = getelementptr inbounds %struct.dma_fence_array, ptr %34, i32 0, i32 4
  %39 = ptrtoint ptr %fences.i126.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %fences.i126.i.i, align 4
  br label %get_fences.exit130.i.i

get_fences.exit130.i.i:                           ; preds = %if.then.i127.i.i, %get_fences.exit.i.i.get_fences.exit130.i.i_crit_edge
  %b_num_fences.0.i.i = phi i32 [ %38, %if.then.i127.i.i ], [ 1, %get_fences.exit.i.i.get_fences.exit130.i.i_crit_edge ]
  %retval.0.i129.i.i = phi ptr [ %40, %if.then.i127.i.i ], [ %fence.i122.i.i, %get_fences.exit.i.i.get_fences.exit130.i.i_crit_edge ]
  %sub.i.i = sub i32 2147483647, %b_num_fences.0.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %a_num_fences.0.i.i, i32 %sub.i.i)
  %cmp.i.i = icmp sgt i32 %a_num_fences.0.i.i, %sub.i.i
  br i1 %cmp.i.i, label %get_fences.exit130.i.i.while.end.i.i_crit_edge, label %if.end4.i.i

get_fences.exit130.i.i.while.end.i.i_crit_edge:   ; preds = %get_fences.exit130.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i.i

if.end4.i.i:                                      ; preds = %get_fences.exit130.i.i
  %add.i.i = add i32 %b_num_fences.0.i.i, %a_num_fences.0.i.i
  %41 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add.i.i, i32 4) #11
  %42 = extractvalue { i32, i1 } %41, 1
  br i1 %42, label %if.end4.i.i.while.end.i.i_crit_edge, label %if.end7.i.i.i.i, !prof !31

if.end4.i.i.while.end.i.i_crit_edge:              ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i.i

if.end7.i.i.i.i:                                  ; preds = %if.end4.i.i
  %43 = extractvalue { i32, i1 } %41, 0
  %call8.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %43, i32 noundef 3520) #16
  %tobool6.not.i.i = icmp eq ptr %call8.i.i.i.i, null
  br i1 %tobool6.not.i.i, label %if.end7.i.i.i.i.while.end.i.i_crit_edge, label %for.cond.preheader.i.i

if.end7.i.i.i.i.while.end.i.i_crit_edge:          ; preds = %if.end7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i.i

for.cond.preheader.i.i:                           ; preds = %if.end7.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %a_num_fences.0.i.i)
  %cmp9329.i.i = icmp sgt i32 %a_num_fences.0.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %b_num_fences.0.i.i)
  %cmp10330.i.i = icmp sgt i32 %b_num_fences.0.i.i, 0
  %or.cond331.i.i = select i1 %cmp9329.i.i, i1 %cmp10330.i.i, i1 false
  br i1 %or.cond331.i.i, label %for.cond.preheader.i.i.for.body.i.i_crit_edge, label %for.cond.preheader.i.i.for.cond30.preheader.i.i_crit_edge

for.cond.preheader.i.i.for.cond30.preheader.i.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond30.preheader.i.i

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond30.preheader.i.i:                         ; preds = %if.end29.i.i.for.cond30.preheader.i.i_crit_edge, %for.cond.preheader.i.i.for.cond30.preheader.i.i_crit_edge
  %i.0.lcssa.i.i = phi i32 [ 0, %for.cond.preheader.i.i.for.cond30.preheader.i.i_crit_edge ], [ %i.6.i.i, %if.end29.i.i.for.cond30.preheader.i.i_crit_edge ]
  %i_a.0.lcssa.i.i = phi i32 [ 0, %for.cond.preheader.i.i.for.cond30.preheader.i.i_crit_edge ], [ %i_a.1.i.i, %if.end29.i.i.for.cond30.preheader.i.i_crit_edge ]
  %i_b.0.lcssa.i.i = phi i32 [ 0, %for.cond.preheader.i.i.for.cond30.preheader.i.i_crit_edge ], [ %i_b.1.i.i, %if.end29.i.i.for.cond30.preheader.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i_a.0.lcssa.i.i, i32 %a_num_fences.0.i.i)
  %cmp31341.i.i = icmp slt i32 %i_a.0.lcssa.i.i, %a_num_fences.0.i.i
  br i1 %cmp31341.i.i, label %for.cond30.preheader.i.i.for.body32.i.i_crit_edge, label %for.cond30.preheader.i.i.for.cond36.preheader.i.i_crit_edge

for.cond30.preheader.i.i.for.cond36.preheader.i.i_crit_edge: ; preds = %for.cond30.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond36.preheader.i.i

for.cond30.preheader.i.i.for.body32.i.i_crit_edge: ; preds = %for.cond30.preheader.i.i
  br label %for.body32.i.i

for.body.i.i:                                     ; preds = %if.end29.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %i_b.0338.i.i = phi i32 [ %i_b.1.i.i, %if.end29.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %i_a.0337.i.i = phi i32 [ %i_a.1.i.i, %if.end29.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %i.0332.i.i = phi i32 [ %i.6.i.i, %if.end29.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr ptr, ptr %retval.0.i121.i.i, i32 %i_a.0337.i.i
  %44 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i.i, align 4
  %arrayidx11.i.i = getelementptr ptr, ptr %retval.0.i129.i.i, i32 %i_b.0338.i.i
  %46 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx11.i.i, align 4
  %context.i.i = getelementptr inbounds %struct.dma_fence, ptr %45, i32 0, i32 3
  %48 = ptrtoint ptr %context.i.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %context.i.i, align 8
  %context12.i.i = getelementptr inbounds %struct.dma_fence, ptr %47, i32 0, i32 3
  %50 = ptrtoint ptr %context12.i.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %context12.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %49, i64 %51)
  %cmp13.i.i = icmp ult i64 %49, %51
  br i1 %cmp13.i.i, label %if.then14.i.i, label %if.else.i.i

if.then14.i.i:                                    ; preds = %for.body.i.i
  %arrayidx.i.i.i = getelementptr ptr, ptr %call8.i.i.i.i, i32 %i.0332.i.i
  %52 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %45, ptr %arrayidx.i.i.i, align 4
  %flags.i.i.i.i = getelementptr inbounds %struct.dma_fence, ptr %45, i32 0, i32 5
  %53 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %flags.i.i.i.i, align 4
  %and1.i.i.i.i.i = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i133.i.i, label %if.then14.i.i.add_fence.exit.i.i_crit_edge

if.then14.i.i.add_fence.exit.i.i_crit_edge:       ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %add_fence.exit.i.i

if.end.i.i133.i.i:                                ; preds = %if.then14.i.i
  %ops.i.i132.i.i = getelementptr inbounds %struct.dma_fence, ptr %45, i32 0, i32 1
  %55 = ptrtoint ptr %ops.i.i132.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ops.i.i132.i.i, align 4
  %signaled.i.i.i.i = getelementptr inbounds %struct.dma_fence_ops, ptr %56, i32 0, i32 4
  %57 = ptrtoint ptr %signaled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %signaled.i.i.i.i, align 4
  %tobool1.not.i.i.i.i = icmp eq ptr %58, null
  br i1 %tobool1.not.i.i.i.i, label %if.end.i.i133.i.i.if.then.i135.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end.i.i133.i.i.if.then.i135.i.i_crit_edge:     ; preds = %if.end.i.i133.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i135.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end.i.i133.i.i
  %call4.i.i.i.i = call zeroext i1 %58(ptr noundef %45) #11
  br i1 %call4.i.i.i.i, label %if.then5.i.i134.i.i, label %land.lhs.true.i.i.i.i.if.then.i135.i.i_crit_edge

land.lhs.true.i.i.i.i.if.then.i135.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i135.i.i

if.then5.i.i134.i.i:                              ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call6.i.i.i.i = call i32 @dma_fence_signal(ptr noundef %45) #11
  br label %add_fence.exit.i.i

if.then.i135.i.i:                                 ; preds = %land.lhs.true.i.i.i.i.if.then.i135.i.i_crit_edge, %if.end.i.i133.i.i.if.then.i135.i.i_crit_edge
  %tobool.not.i5.i.i.i = icmp eq ptr %45, null
  br i1 %tobool.not.i5.i.i.i, label %if.then.i135.i.i.dma_fence_get.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

if.then.i135.i.i.dma_fence_get.exit.i.i.i_crit_edge: ; preds = %if.then.i135.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_fence_get.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.then.i135.i.i
  %refcount.i.i.i.i = getelementptr inbounds %struct.dma_fence, ptr %45, i32 0, i32 6
  %call.i.i.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i.i.i, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %refcount.i.i.i.i, i32 1, i32 3, i32 1) #11
  %59 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i.i.i, ptr %refcount.i.i.i.i, i32 1, ptr elementtype(i32) %refcount.i.i.i.i) #11, !srcloc !30
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %59, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i.i.i, label %if.then.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i.i.i, !prof !31

if.then.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i.i:                          ; preds = %if.then.i.i.i.i
  %add.i.i.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 1
  %60 = or i32 %add.i.i.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %60)
  %.not.i.i.i.i.i.i.i.i = icmp sgt i32 %60, -1
  br i1 %.not.i.i.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.i.i.dma_fence_get.exit.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i.i_crit_edge, !prof !32

if.else.i.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i.i.dma_fence_get.exit.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_fence_get.exit.i.i.i

if.end15.sink.split.i.i.i.i.i.i.i.i:              ; preds = %if.else.i.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i.i_crit_edge, %if.then.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i.i.i, i32 noundef %.sink.i.i.i.i.i.i.i.i) #11
  br label %dma_fence_get.exit.i.i.i

dma_fence_get.exit.i.i.i:                         ; preds = %if.end15.sink.split.i.i.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.i.i.dma_fence_get.exit.i.i.i_crit_edge, %if.then.i135.i.i.dma_fence_get.exit.i.i.i_crit_edge
  %inc.i.i.i = add i32 %i.0332.i.i, 1
  br label %add_fence.exit.i.i

add_fence.exit.i.i:                               ; preds = %dma_fence_get.exit.i.i.i, %if.then5.i.i134.i.i, %if.then14.i.i.add_fence.exit.i.i_crit_edge
  %i.1.i.i = phi i32 [ %inc.i.i.i, %dma_fence_get.exit.i.i.i ], [ %i.0332.i.i, %if.then5.i.i134.i.i ], [ %i.0332.i.i, %if.then14.i.i.add_fence.exit.i.i_crit_edge ]
  %inc.i.i = add nsw i32 %i_a.0337.i.i, 1
  br label %if.end29.i.i

if.else.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %49, i64 %51)
  %cmp17.i.i = icmp ugt i64 %49, %51
  br i1 %cmp17.i.i, label %if.then18.i.i, label %if.else20.i.i

if.then18.i.i:                                    ; preds = %if.else.i.i
  %arrayidx.i137.i.i = getelementptr ptr, ptr %call8.i.i.i.i, i32 %i.0332.i.i
  %61 = ptrtoint ptr %arrayidx.i137.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %47, ptr %arrayidx.i137.i.i, align 4
  %flags.i.i138.i.i = getelementptr inbounds %struct.dma_fence, ptr %47, i32 0, i32 5
  %62 = ptrtoint ptr %flags.i.i138.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %flags.i.i138.i.i, align 4
  %and1.i.i.i139.i.i = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i139.i.i)
  %tobool.not.i.i140.i.i = icmp eq i32 %and1.i.i.i139.i.i, 0
  br i1 %tobool.not.i.i140.i.i, label %if.end.i.i144.i.i, label %if.then18.i.i.add_fence.exit164.i.i_crit_edge

if.then18.i.i.add_fence.exit164.i.i_crit_edge:    ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %add_fence.exit164.i.i

if.end.i.i144.i.i:                                ; preds = %if.then18.i.i
  %ops.i.i141.i.i = getelementptr inbounds %struct.dma_fence, ptr %47, i32 0, i32 1
  %64 = ptrtoint ptr %ops.i.i141.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ops.i.i141.i.i, align 4
  %signaled.i.i142.i.i = getelementptr inbounds %struct.dma_fence_ops, ptr %65, i32 0, i32 4
  %66 = ptrtoint ptr %signaled.i.i142.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %signaled.i.i142.i.i, align 4
  %tobool1.not.i.i143.i.i = icmp eq ptr %67, null
  br i1 %tobool1.not.i.i143.i.i, label %if.end.i.i144.i.i.if.then.i150.i.i_crit_edge, label %land.lhs.true.i.i146.i.i

if.end.i.i144.i.i.if.then.i150.i.i_crit_edge:     ; preds = %if.end.i.i144.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i150.i.i

land.lhs.true.i.i146.i.i:                         ; preds = %if.end.i.i144.i.i
  %call4.i.i145.i.i = call zeroext i1 %67(ptr noundef %47) #11
  br i1 %call4.i.i145.i.i, label %if.then5.i.i148.i.i, label %land.lhs.true.i.i146.i.i.if.then.i150.i.i_crit_edge

land.lhs.true.i.i146.i.i.if.then.i150.i.i_crit_edge: ; preds = %land.lhs.true.i.i146.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i150.i.i

if.then5.i.i148.i.i:                              ; preds = %land.lhs.true.i.i146.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call6.i.i147.i.i = call i32 @dma_fence_signal(ptr noundef %47) #11
  br label %add_fence.exit164.i.i

if.then.i150.i.i:                                 ; preds = %land.lhs.true.i.i146.i.i.if.then.i150.i.i_crit_edge, %if.end.i.i144.i.i.if.then.i150.i.i_crit_edge
  %tobool.not.i5.i149.i.i = icmp eq ptr %47, null
  br i1 %tobool.not.i5.i149.i.i, label %if.then.i150.i.i.dma_fence_get.exit.i162.i.i_crit_edge, label %if.then.i.i155.i.i

if.then.i150.i.i.dma_fence_get.exit.i162.i.i_crit_edge: ; preds = %if.then.i150.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_fence_get.exit.i162.i.i

if.then.i.i155.i.i:                               ; preds = %if.then.i150.i.i
  %refcount.i.i151.i.i = getelementptr inbounds %struct.dma_fence, ptr %47, i32 0, i32 6
  %call.i.i.i.i.i.i.i.i152.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i151.i.i, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %refcount.i.i151.i.i, i32 1, i32 3, i32 1) #11
  %68 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i151.i.i, ptr %refcount.i.i151.i.i, i32 1, ptr elementtype(i32) %refcount.i.i151.i.i) #11, !srcloc !30
  %asmresult.i.i.i.i.i.i.i.i153.i.i = extractvalue { i32, i32, i32 } %68, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i153.i.i)
  %tobool1.not.i.i.i.i.i.i154.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i153.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i154.i.i, label %if.then.i.i155.i.i.if.end15.sink.split.i.i.i.i.i.i160.i.i_crit_edge, label %if.else.i.i.i.i.i.i158.i.i, !prof !31

if.then.i.i155.i.i.if.end15.sink.split.i.i.i.i.i.i160.i.i_crit_edge: ; preds = %if.then.i.i155.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i.i160.i.i

if.else.i.i.i.i.i.i158.i.i:                       ; preds = %if.then.i.i155.i.i
  %add.i.i.i.i.i.i156.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i153.i.i, 1
  %69 = or i32 %add.i.i.i.i.i.i156.i.i, %asmresult.i.i.i.i.i.i.i.i153.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %69)
  %.not.i.i.i.i.i.i157.i.i = icmp sgt i32 %69, -1
  br i1 %.not.i.i.i.i.i.i157.i.i, label %if.else.i.i.i.i.i.i158.i.i.dma_fence_get.exit.i162.i.i_crit_edge, label %if.else.i.i.i.i.i.i158.i.i.if.end15.sink.split.i.i.i.i.i.i160.i.i_crit_edge, !prof !32

if.else.i.i.i.i.i.i158.i.i.if.end15.sink.split.i.i.i.i.i.i160.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i158.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i.i160.i.i

if.else.i.i.i.i.i.i158.i.i.dma_fence_get.exit.i162.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i158.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_fence_get.exit.i162.i.i

if.end15.sink.split.i.i.i.i.i.i160.i.i:           ; preds = %if.else.i.i.i.i.i.i158.i.i.if.end15.sink.split.i.i.i.i.i.i160.i.i_crit_edge, %if.then.i.i155.i.i.if.end15.sink.split.i.i.i.i.i.i160.i.i_crit_edge
  %.sink.i.i.i.i.i.i159.i.i = phi i32 [ 2, %if.then.i.i155.i.i.if.end15.sink.split.i.i.i.i.i.i160.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i158.i.i.if.end15.sink.split.i.i.i.i.i.i160.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i151.i.i, i32 noundef %.sink.i.i.i.i.i.i159.i.i) #11
  br label %dma_fence_get.exit.i162.i.i

dma_fence_get.exit.i162.i.i:                      ; preds = %if.end15.sink.split.i.i.i.i.i.i160.i.i, %if.else.i.i.i.i.i.i158.i.i.dma_fence_get.exit.i162.i.i_crit_edge, %if.then.i150.i.i.dma_fence_get.exit.i162.i.i_crit_edge
  %inc.i161.i.i = add i32 %i.0332.i.i, 1
  br label %add_fence.exit164.i.i

add_fence.exit164.i.i:                            ; preds = %dma_fence_get.exit.i162.i.i, %if.then5.i.i148.i.i, %if.then18.i.i.add_fence.exit164.i.i_crit_edge
  %i.2.i.i = phi i32 [ %inc.i161.i.i, %dma_fence_get.exit.i162.i.i ], [ %i.0332.i.i, %if.then5.i.i148.i.i ], [ %i.0332.i.i, %if.then18.i.i.add_fence.exit164.i.i_crit_edge ]
  %inc19.i.i = add nsw i32 %i_b.0338.i.i, 1
  br label %if.end29.i.i

if.else20.i.i:                                    ; preds = %if.else.i.i
  %seqno.i.i = getelementptr inbounds %struct.dma_fence, ptr %45, i32 0, i32 4
  %70 = ptrtoint ptr %seqno.i.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %seqno.i.i, align 8
  %seqno21.i.i = getelementptr inbounds %struct.dma_fence, ptr %47, i32 0, i32 4
  %72 = ptrtoint ptr %seqno21.i.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %seqno21.i.i, align 8
  %ops.i.i = getelementptr inbounds %struct.dma_fence, ptr %45, i32 0, i32 1
  %74 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ops.i.i, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %75, align 4, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool.not.i165.i.i = icmp eq i8 %77, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %71, i64 %73)
  %cmp.i.i51.i = icmp ugt i64 %71, %73
  %conv.i.i.i = trunc i64 %71 to i32
  %conv2.i.i.i = trunc i64 %73 to i32
  %sub.i.i52.i = sub i32 %conv.i.i.i, %conv2.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i52.i)
  %cmp3.i.i.i = icmp sgt i32 %sub.i.i52.i, 0
  %retval.0.i166.i.i = select i1 %tobool.not.i165.i.i, i1 %cmp3.i.i.i, i1 %cmp.i.i51.i
  %arrayidx.i167.i.i = getelementptr ptr, ptr %call8.i.i.i.i, i32 %i.0332.i.i
  br i1 %retval.0.i166.i.i, label %if.then23.i.i, label %if.else24.i.i

if.then23.i.i:                                    ; preds = %if.else20.i.i
  %78 = ptrtoint ptr %arrayidx.i167.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %45, ptr %arrayidx.i167.i.i, align 4
  %flags.i.i168.i.i = getelementptr inbounds %struct.dma_fence, ptr %45, i32 0, i32 5
  %79 = ptrtoint ptr %flags.i.i168.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %flags.i.i168.i.i, align 4
  %and1.i.i.i169.i.i = and i32 %80, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i169.i.i)
  %tobool.not.i.i170.i.i = icmp eq i32 %and1.i.i.i169.i.i, 0
  br i1 %tobool.not.i.i170.i.i, label %if.end.i.i174.i.i, label %if.then23.i.i.if.end25.i.i_crit_edge

if.then23.i.i.if.end25.i.i_crit_edge:             ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25.i.i

if.end.i.i174.i.i:                                ; preds = %if.then23.i.i
  %81 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ops.i.i, align 4
  %signaled.i.i172.i.i = getelementptr inbounds %struct.dma_fence_ops, ptr %82, i32 0, i32 4
  %83 = ptrtoint ptr %signaled.i.i172.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %signaled.i.i172.i.i, align 4
  %tobool1.not.i.i173.i.i = icmp eq ptr %84, null
  br i1 %tobool1.not.i.i173.i.i, label %if.end.i.i174.i.i.if.then.i180.i.i_crit_edge, label %land.lhs.true.i.i176.i.i

if.end.i.i174.i.i.if.then.i180.i.i_crit_edge:     ; preds = %if.end.i.i174.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i180.i.i

land.lhs.true.i.i176.i.i:                         ; preds = %if.end.i.i174.i.i
  %call4.i.i175.i.i = call zeroext i1 %84(ptr noundef %45) #11
  br i1 %call4.i.i175.i.i, label %if.then5.i.i178.i.i, label %land.lhs.true.i.i176.i.i.if.then.i180.i.i_crit_edge

land.lhs.true.i.i176.i.i.if.then.i180.i.i_crit_edge: ; preds = %land.lhs.true.i.i176.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i180.i.i

if.then5.i.i178.i.i:                              ; preds = %land.lhs.true.i.i176.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call6.i.i177.i.i = call i32 @dma_fence_signal(ptr noundef %45) #11
  br label %if.end25.i.i

if.then.i180.i.i:                                 ; preds = %land.lhs.true.i.i176.i.i.if.then.i180.i.i_crit_edge, %if.end.i.i174.i.i.if.then.i180.i.i_crit_edge
  %tobool.not.i5.i179.i.i = icmp eq ptr %45, null
  br i1 %tobool.not.i5.i179.i.i, label %if.then.i180.i.i.dma_fence_get.exit.i192.i.i_crit_edge, label %if.then.i.i185.i.i

if.then.i180.i.i.dma_fence_get.exit.i192.i.i_crit_edge: ; preds = %if.then.i180.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_fence_get.exit.i192.i.i

if.then.i.i185.i.i:                               ; preds = %if.then.i180.i.i
  %refcount.i.i181.i.i = getelementptr inbounds %struct.dma_fence, ptr %45, i32 0, i32 6
  %call.i.i.i.i.i.i.i.i182.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i181.i.i, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %refcount.i.i181.i.i, i32 1, i32 3, i32 1) #11
  %85 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i181.i.i, ptr %refcount.i.i181.i.i, i32 1, ptr elementtype(i32) %refcount.i.i181.i.i) #11, !srcloc !30
  %asmresult.i.i.i.i.i.i.i.i183.i.i = extractvalue { i32, i32, i32 } %85, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i183.i.i)
  %tobool1.not.i.i.i.i.i.i184.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i183.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i184.i.i, label %if.then.i.i185.i.i.if.end15.sink.split.i.i.i.i.i.i190.i.i_crit_edge, label %if.else.i.i.i.i.i.i188.i.i, !prof !31

if.then.i.i185.i.i.if.end15.sink.split.i.i.i.i.i.i190.i.i_crit_edge: ; preds = %if.then.i.i185.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i.i190.i.i

if.else.i.i.i.i.i.i188.i.i:                       ; preds = %if.then.i.i185.i.i
  %add.i.i.i.i.i.i186.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i183.i.i, 1
  %86 = or i32 %add.i.i.i.i.i.i186.i.i, %asmresult.i.i.i.i.i.i.i.i183.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %86)
  %.not.i.i.i.i.i.i187.i.i = icmp sgt i32 %86, -1
  br i1 %.not.i.i.i.i.i.i187.i.i, label %if.else.i.i.i.i.i.i188.i.i.dma_fence_get.exit.i192.i.i_crit_edge, label %if.else.i.i.i.i.i.i188.i.i.if.end15.sink.split.i.i.i.i.i.i190.i.i_crit_edge, !prof !32

if.else.i.i.i.i.i.i188.i.i.if.end15.sink.split.i.i.i.i.i.i190.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i188.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i.i190.i.i

if.else.i.i.i.i.i.i188.i.i.dma_fence_get.exit.i192.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i188.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_fence_get.exit.i192.i.i

if.end15.sink.split.i.i.i.i.i.i190.i.i:           ; preds = %if.else.i.i.i.i.i.i188.i.i.if.end15.sink.split.i.i.i.i.i.i190.i.i_crit_edge, %if.then.i.i185.i.i.if.end15.sink.split.i.i.i.i.i.i190.i.i_crit_edge
  %.sink.i.i.i.i.i.i189.i.i = phi i32 [ 2, %if.then.i.i185.i.i.if.end15.sink.split.i.i.i.i.i.i190.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i188.i.i.if.end15.sink.split.i.i.i.i.i.i190.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i181.i.i, i32 noundef %.sink.i.i.i.i.i.i189.i.i) #11
  br label %dma_fence_get.exit.i192.i.i

dma_fence_get.exit.i192.i.i:                      ; preds = %if.end15.sink.split.i.i.i.i.i.i190.i.i, %if.else.i.i.i.i.i.i188.i.i.dma_fence_get.exit.i192.i.i_crit_edge, %if.then.i180.i.i.dma_fence_get.exit.i192.i.i_crit_edge
  %inc.i191.i.i = add i32 %i.0332.i.i, 1
  br label %if.end25.i.i

if.else24.i.i:                                    ; preds = %if.else20.i.i
  %87 = ptrtoint ptr %arrayidx.i167.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %47, ptr %arrayidx.i167.i.i, align 4
  %flags.i.i196.i.i = getelementptr inbounds %struct.dma_fence, ptr %47, i32 0, i32 5
  %88 = ptrtoint ptr %flags.i.i196.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %flags.i.i196.i.i, align 4
  %and1.i.i.i197.i.i = and i32 %89, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i197.i.i)
  %tobool.not.i.i198.i.i = icmp eq i32 %and1.i.i.i197.i.i, 0
  br i1 %tobool.not.i.i198.i.i, label %if.end.i.i202.i.i, label %if.else24.i.i.if.end25.i.i_crit_edge

if.else24.i.i.if.end25.i.i_crit_edge:             ; preds = %if.else24.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25.i.i

if.end.i.i202.i.i:                                ; preds = %if.else24.i.i
  %ops.i.i199.i.i = getelementptr inbounds %struct.dma_fence, ptr %47, i32 0, i32 1
  %90 = ptrtoint ptr %ops.i.i199.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ops.i.i199.i.i, align 4
  %signaled.i.i200.i.i = getelementptr inbounds %struct.dma_fence_ops, ptr %91, i32 0, i32 4
  %92 = ptrtoint ptr %signaled.i.i200.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %signaled.i.i200.i.i, align 4
  %tobool1.not.i.i201.i.i = icmp eq ptr %93, null
  br i1 %tobool1.not.i.i201.i.i, label %if.end.i.i202.i.i.if.then.i208.i.i_crit_edge, label %land.lhs.true.i.i204.i.i

if.end.i.i202.i.i.if.then.i208.i.i_crit_edge:     ; preds = %if.end.i.i202.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i208.i.i

land.lhs.true.i.i204.i.i:                         ; preds = %if.end.i.i202.i.i
  %call4.i.i203.i.i = call zeroext i1 %93(ptr noundef %47) #11
  br i1 %call4.i.i203.i.i, label %if.then5.i.i206.i.i, label %land.lhs.true.i.i204.i.i.if.then.i208.i.i_crit_edge

land.lhs.true.i.i204.i.i.if.then.i208.i.i_crit_edge: ; preds = %land.lhs.true.i.i204.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i208.i.i

if.then5.i.i206.i.i:                              ; preds = %land.lhs.true.i.i204.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call6.i.i205.i.i = call i32 @dma_fence_signal(ptr noundef %47) #11
  br label %if.end25.i.i

if.then.i208.i.i:                                 ; preds = %land.lhs.true.i.i204.i.i.if.then.i208.i.i_crit_edge, %if.end.i.i202.i.i.if.then.i208.i.i_crit_edge
  %tobool.not.i5.i207.i.i = icmp eq ptr %47, null
  br i1 %tobool.not.i5.i207.i.i, label %if.then.i208.i.i.dma_fence_get.exit.i220.i.i_crit_edge, label %if.then.i.i213.i.i

if.then.i208.i.i.dma_fence_get.exit.i220.i.i_crit_edge: ; preds = %if.then.i208.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_fence_get.exit.i220.i.i

if.then.i.i213.i.i:                               ; preds = %if.then.i208.i.i
  %refcount.i.i209.i.i = getelementptr inbounds %struct.dma_fence, ptr %47, i32 0, i32 6
  %call.i.i.i.i.i.i.i.i210.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i209.i.i, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %refcount.i.i209.i.i, i32 1, i32 3, i32 1) #11
  %94 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i209.i.i, ptr %refcount.i.i209.i.i, i32 1, ptr elementtype(i32) %refcount.i.i209.i.i) #11, !srcloc !30
  %asmresult.i.i.i.i.i.i.i.i211.i.i = extractvalue { i32, i32, i32 } %94, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i211.i.i)
  %tobool1.not.i.i.i.i.i.i212.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i211.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i212.i.i, label %if.then.i.i213.i.i.if.end15.sink.split.i.i.i.i.i.i218.i.i_crit_edge, label %if.else.i.i.i.i.i.i216.i.i, !prof !31

if.then.i.i213.i.i.if.end15.sink.split.i.i.i.i.i.i218.i.i_crit_edge: ; preds = %if.then.i.i213.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i.i218.i.i

if.else.i.i.i.i.i.i216.i.i:                       ; preds = %if.then.i.i213.i.i
  %add.i.i.i.i.i.i214.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i211.i.i, 1
  %95 = or i32 %add.i.i.i.i.i.i214.i.i, %asmresult.i.i.i.i.i.i.i.i211.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %95)
  %.not.i.i.i.i.i.i215.i.i = icmp sgt i32 %95, -1
  br i1 %.not.i.i.i.i.i.i215.i.i, label %if.else.i.i.i.i.i.i216.i.i.dma_fence_get.exit.i220.i.i_crit_edge, label %if.else.i.i.i.i.i.i216.i.i.if.end15.sink.split.i.i.i.i.i.i218.i.i_crit_edge, !prof !32

if.else.i.i.i.i.i.i216.i.i.if.end15.sink.split.i.i.i.i.i.i218.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i216.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i.i218.i.i

if.else.i.i.i.i.i.i216.i.i.dma_fence_get.exit.i220.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i216.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_fence_get.exit.i220.i.i

if.end15.sink.split.i.i.i.i.i.i218.i.i:           ; preds = %if.else.i.i.i.i.i.i216.i.i.if.end15.sink.split.i.i.i.i.i.i218.i.i_crit_edge, %if.then.i.i213.i.i.if.end15.sink.split.i.i.i.i.i.i218.i.i_crit_edge
  %.sink.i.i.i.i.i.i217.i.i = phi i32 [ 2, %if.then.i.i213.i.i.if.end15.sink.split.i.i.i.i.i.i218.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i216.i.i.if.end15.sink.split.i.i.i.i.i.i218.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i209.i.i, i32 noundef %.sink.i.i.i.i.i.i217.i.i) #11
  br label %dma_fence_get.exit.i220.i.i

dma_fence_get.exit.i220.i.i:                      ; preds = %if.end15.sink.split.i.i.i.i.i.i218.i.i, %if.else.i.i.i.i.i.i216.i.i.dma_fence_get.exit.i220.i.i_crit_edge, %if.then.i208.i.i.dma_fence_get.exit.i220.i.i_crit_edge
  %inc.i219.i.i = add i32 %i.0332.i.i, 1
  br label %if.end25.i.i

if.end25.i.i:                                     ; preds = %dma_fence_get.exit.i220.i.i, %if.then5.i.i206.i.i, %if.else24.i.i.if.end25.i.i_crit_edge, %dma_fence_get.exit.i192.i.i, %if.then5.i.i178.i.i, %if.then23.i.i.if.end25.i.i_crit_edge
  %i.5.i.i = phi i32 [ %inc.i191.i.i, %dma_fence_get.exit.i192.i.i ], [ %i.0332.i.i, %if.then5.i.i178.i.i ], [ %i.0332.i.i, %if.then23.i.i.if.end25.i.i_crit_edge ], [ %inc.i219.i.i, %dma_fence_get.exit.i220.i.i ], [ %i.0332.i.i, %if.then5.i.i206.i.i ], [ %i.0332.i.i, %if.else24.i.i.if.end25.i.i_crit_edge ]
  %inc26.i.i = add nsw i32 %i_a.0337.i.i, 1
  %inc27.i.i = add nsw i32 %i_b.0338.i.i, 1
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.end25.i.i, %add_fence.exit164.i.i, %add_fence.exit.i.i
  %i.6.i.i = phi i32 [ %i.1.i.i, %add_fence.exit.i.i ], [ %i.2.i.i, %add_fence.exit164.i.i ], [ %i.5.i.i, %if.end25.i.i ]
  %i_a.1.i.i = phi i32 [ %inc.i.i, %add_fence.exit.i.i ], [ %i_a.0337.i.i, %add_fence.exit164.i.i ], [ %inc26.i.i, %if.end25.i.i ]
  %i_b.1.i.i = phi i32 [ %i_b.0338.i.i, %add_fence.exit.i.i ], [ %inc19.i.i, %add_fence.exit164.i.i ], [ %inc27.i.i, %if.end25.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i_a.1.i.i, i32 %a_num_fences.0.i.i)
  %cmp9.i.i = icmp slt i32 %i_a.1.i.i, %a_num_fences.0.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %i_b.1.i.i, i32 %b_num_fences.0.i.i)
  %cmp10.i.i = icmp slt i32 %i_b.1.i.i, %b_num_fences.0.i.i
  %or.cond.i.i = select i1 %cmp9.i.i, i1 %cmp10.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end29.i.i.for.body.i.i_crit_edge, label %if.end29.i.i.for.cond30.preheader.i.i_crit_edge

if.end29.i.i.for.cond30.preheader.i.i_crit_edge:  ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond30.preheader.i.i

if.end29.i.i.for.body.i.i_crit_edge:              ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.cond36.preheader.i.i:                         ; preds = %add_fence.exit250.i.i.for.cond36.preheader.i.i_crit_edge, %for.cond30.preheader.i.i.for.cond36.preheader.i.i_crit_edge
  %i.7.lcssa.i.i = phi i32 [ %i.0.lcssa.i.i, %for.cond30.preheader.i.i.for.cond36.preheader.i.i_crit_edge ], [ %i.8.i.i, %add_fence.exit250.i.i.for.cond36.preheader.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i_b.0.lcssa.i.i, i32 %b_num_fences.0.i.i)
  %cmp37346.i.i = icmp slt i32 %i_b.0.lcssa.i.i, %b_num_fences.0.i.i
  br i1 %cmp37346.i.i, label %for.cond36.preheader.i.i.for.body38.i.i_crit_edge, label %for.cond36.preheader.i.i.for.end42.i.i_crit_edge

for.cond36.preheader.i.i.for.end42.i.i_crit_edge: ; preds = %for.cond36.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end42.i.i

for.cond36.preheader.i.i.for.body38.i.i_crit_edge: ; preds = %for.cond36.preheader.i.i
  br label %for.body38.i.i

for.body32.i.i:                                   ; preds = %add_fence.exit250.i.i.for.body32.i.i_crit_edge, %for.cond30.preheader.i.i.for.body32.i.i_crit_edge
  %i_a.2344.i.i = phi i32 [ %inc34.i.i, %add_fence.exit250.i.i.for.body32.i.i_crit_edge ], [ %i_a.0.lcssa.i.i, %for.cond30.preheader.i.i.for.body32.i.i_crit_edge ]
  %i.7342.i.i = phi i32 [ %i.8.i.i, %add_fence.exit250.i.i.for.body32.i.i_crit_edge ], [ %i.0.lcssa.i.i, %for.cond30.preheader.i.i.for.body32.i.i_crit_edge ]
  %arrayidx33.i.i = getelementptr ptr, ptr %retval.0.i121.i.i, i32 %i_a.2344.i.i
  %96 = ptrtoint ptr %arrayidx33.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx33.i.i, align 4
  %arrayidx.i223.i.i = getelementptr ptr, ptr %call8.i.i.i.i, i32 %i.7342.i.i
  %98 = ptrtoint ptr %arrayidx.i223.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %97, ptr %arrayidx.i223.i.i, align 4
  %flags.i.i224.i.i = getelementptr inbounds %struct.dma_fence, ptr %97, i32 0, i32 5
  %99 = ptrtoint ptr %flags.i.i224.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %flags.i.i224.i.i, align 4
  %and1.i.i.i225.i.i = and i32 %100, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i225.i.i)
  %tobool.not.i.i226.i.i = icmp eq i32 %and1.i.i.i225.i.i, 0
  br i1 %tobool.not.i.i226.i.i, label %if.end.i.i230.i.i, label %for.body32.i.i.add_fence.exit250.i.i_crit_edge

for.body32.i.i.add_fence.exit250.i.i_crit_edge:   ; preds = %for.body32.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %add_fence.exit250.i.i

if.end.i.i230.i.i:                                ; preds = %for.body32.i.i
  %ops.i.i227.i.i = getelementptr inbounds %struct.dma_fence, ptr %97, i32 0, i32 1
  %101 = ptrtoint ptr %ops.i.i227.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %ops.i.i227.i.i, align 4
  %signaled.i.i228.i.i = getelementptr inbounds %struct.dma_fence_ops, ptr %102, i32 0, i32 4
  %103 = ptrtoint ptr %signaled.i.i228.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %signaled.i.i228.i.i, align 4
  %tobool1.not.i.i229.i.i = icmp eq ptr %104, null
  br i1 %tobool1.not.i.i229.i.i, label %if.end.i.i230.i.i.if.then.i236.i.i_crit_edge, label %land.lhs.true.i.i232.i.i

if.end.i.i230.i.i.if.then.i236.i.i_crit_edge:     ; preds = %if.end.i.i230.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i236.i.i

land.lhs.true.i.i232.i.i:                         ; preds = %if.end.i.i230.i.i
  %call4.i.i231.i.i = call zeroext i1 %104(ptr noundef %97) #11
  br i1 %call4.i.i231.i.i, label %if.then5.i.i234.i.i, label %land.lhs.true.i.i232.i.i.if.then.i236.i.i_crit_edge

land.lhs.true.i.i232.i.i.if.then.i236.i.i_crit_edge: ; preds = %land.lhs.true.i.i232.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i236.i.i

if.then5.i.i234.i.i:                              ; preds = %land.lhs.true.i.i232.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call6.i.i233.i.i = call i32 @dma_fence_signal(ptr noundef %97) #11
  br label %add_fence.exit250.i.i

if.then.i236.i.i:                                 ; preds = %land.lhs.true.i.i232.i.i.if.then.i236.i.i_crit_edge, %if.end.i.i230.i.i.if.then.i236.i.i_crit_edge
  %tobool.not.i5.i235.i.i = icmp eq ptr %97, null
  br i1 %tobool.not.i5.i235.i.i, label %if.then.i236.i.i.dma_fence_get.exit.i248.i.i_crit_edge, label %if.then.i.i241.i.i

if.then.i236.i.i.dma_fence_get.exit.i248.i.i_crit_edge: ; preds = %if.then.i236.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_fence_get.exit.i248.i.i

if.then.i.i241.i.i:                               ; preds = %if.then.i236.i.i
  %refcount.i.i237.i.i = getelementptr inbounds %struct.dma_fence, ptr %97, i32 0, i32 6
  %call.i.i.i.i.i.i.i.i238.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i237.i.i, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %refcount.i.i237.i.i, i32 1, i32 3, i32 1) #11
  %105 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i237.i.i, ptr %refcount.i.i237.i.i, i32 1, ptr elementtype(i32) %refcount.i.i237.i.i) #11, !srcloc !30
  %asmresult.i.i.i.i.i.i.i.i239.i.i = extractvalue { i32, i32, i32 } %105, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i239.i.i)
  %tobool1.not.i.i.i.i.i.i240.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i239.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i240.i.i, label %if.then.i.i241.i.i.if.end15.sink.split.i.i.i.i.i.i246.i.i_crit_edge, label %if.else.i.i.i.i.i.i244.i.i, !prof !31

if.then.i.i241.i.i.if.end15.sink.split.i.i.i.i.i.i246.i.i_crit_edge: ; preds = %if.then.i.i241.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i.i246.i.i

if.else.i.i.i.i.i.i244.i.i:                       ; preds = %if.then.i.i241.i.i
  %add.i.i.i.i.i.i242.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i239.i.i, 1
  %106 = or i32 %add.i.i.i.i.i.i242.i.i, %asmresult.i.i.i.i.i.i.i.i239.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %106)
  %.not.i.i.i.i.i.i243.i.i = icmp sgt i32 %106, -1
  br i1 %.not.i.i.i.i.i.i243.i.i, label %if.else.i.i.i.i.i.i244.i.i.dma_fence_get.exit.i248.i.i_crit_edge, label %if.else.i.i.i.i.i.i244.i.i.if.end15.sink.split.i.i.i.i.i.i246.i.i_crit_edge, !prof !32

if.else.i.i.i.i.i.i244.i.i.if.end15.sink.split.i.i.i.i.i.i246.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i244.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i.i246.i.i

if.else.i.i.i.i.i.i244.i.i.dma_fence_get.exit.i248.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i244.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_fence_get.exit.i248.i.i

if.end15.sink.split.i.i.i.i.i.i246.i.i:           ; preds = %if.else.i.i.i.i.i.i244.i.i.if.end15.sink.split.i.i.i.i.i.i246.i.i_crit_edge, %if.then.i.i241.i.i.if.end15.sink.split.i.i.i.i.i.i246.i.i_crit_edge
  %.sink.i.i.i.i.i.i245.i.i = phi i32 [ 2, %if.then.i.i241.i.i.if.end15.sink.split.i.i.i.i.i.i246.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i244.i.i.if.end15.sink.split.i.i.i.i.i.i246.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i237.i.i, i32 noundef %.sink.i.i.i.i.i.i245.i.i) #11
  br label %dma_fence_get.exit.i248.i.i

dma_fence_get.exit.i248.i.i:                      ; preds = %if.end15.sink.split.i.i.i.i.i.i246.i.i, %if.else.i.i.i.i.i.i244.i.i.dma_fence_get.exit.i248.i.i_crit_edge, %if.then.i236.i.i.dma_fence_get.exit.i248.i.i_crit_edge
  %inc.i247.i.i = add i32 %i.7342.i.i, 1
  br label %add_fence.exit250.i.i

add_fence.exit250.i.i:                            ; preds = %dma_fence_get.exit.i248.i.i, %if.then5.i.i234.i.i, %for.body32.i.i.add_fence.exit250.i.i_crit_edge
  %i.8.i.i = phi i32 [ %inc.i247.i.i, %dma_fence_get.exit.i248.i.i ], [ %i.7342.i.i, %if.then5.i.i234.i.i ], [ %i.7342.i.i, %for.body32.i.i.add_fence.exit250.i.i_crit_edge ]
  %inc34.i.i = add i32 %i_a.2344.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc34.i.i, %a_num_fences.0.i.i
  br i1 %exitcond.not.i.i, label %add_fence.exit250.i.i.for.cond36.preheader.i.i_crit_edge, label %add_fence.exit250.i.i.for.body32.i.i_crit_edge

add_fence.exit250.i.i.for.body32.i.i_crit_edge:   ; preds = %add_fence.exit250.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body32.i.i

add_fence.exit250.i.i.for.cond36.preheader.i.i_crit_edge: ; preds = %add_fence.exit250.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond36.preheader.i.i

for.body38.i.i:                                   ; preds = %add_fence.exit278.i.i.for.body38.i.i_crit_edge, %for.cond36.preheader.i.i.for.body38.i.i_crit_edge
  %i_b.2349.i.i = phi i32 [ %inc41.i.i, %add_fence.exit278.i.i.for.body38.i.i_crit_edge ], [ %i_b.0.lcssa.i.i, %for.cond36.preheader.i.i.for.body38.i.i_crit_edge ]
  %i.9347.i.i = phi i32 [ %i.10.i.i, %add_fence.exit278.i.i.for.body38.i.i_crit_edge ], [ %i.7.lcssa.i.i, %for.cond36.preheader.i.i.for.body38.i.i_crit_edge ]
  %arrayidx39.i.i = getelementptr ptr, ptr %retval.0.i129.i.i, i32 %i_b.2349.i.i
  %107 = ptrtoint ptr %arrayidx39.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %arrayidx39.i.i, align 4
  %arrayidx.i251.i.i = getelementptr ptr, ptr %call8.i.i.i.i, i32 %i.9347.i.i
  %109 = ptrtoint ptr %arrayidx.i251.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %108, ptr %arrayidx.i251.i.i, align 4
  %flags.i.i252.i.i = getelementptr inbounds %struct.dma_fence, ptr %108, i32 0, i32 5
  %110 = ptrtoint ptr %flags.i.i252.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load volatile i32, ptr %flags.i.i252.i.i, align 4
  %and1.i.i.i253.i.i = and i32 %111, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i253.i.i)
  %tobool.not.i.i254.i.i = icmp eq i32 %and1.i.i.i253.i.i, 0
  br i1 %tobool.not.i.i254.i.i, label %if.end.i.i258.i.i, label %for.body38.i.i.add_fence.exit278.i.i_crit_edge

for.body38.i.i.add_fence.exit278.i.i_crit_edge:   ; preds = %for.body38.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %add_fence.exit278.i.i

if.end.i.i258.i.i:                                ; preds = %for.body38.i.i
  %ops.i.i255.i.i = getelementptr inbounds %struct.dma_fence, ptr %108, i32 0, i32 1
  %112 = ptrtoint ptr %ops.i.i255.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %ops.i.i255.i.i, align 4
  %signaled.i.i256.i.i = getelementptr inbounds %struct.dma_fence_ops, ptr %113, i32 0, i32 4
  %114 = ptrtoint ptr %signaled.i.i256.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %signaled.i.i256.i.i, align 4
  %tobool1.not.i.i257.i.i = icmp eq ptr %115, null
  br i1 %tobool1.not.i.i257.i.i, label %if.end.i.i258.i.i.if.then.i264.i.i_crit_edge, label %land.lhs.true.i.i260.i.i

if.end.i.i258.i.i.if.then.i264.i.i_crit_edge:     ; preds = %if.end.i.i258.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i264.i.i

land.lhs.true.i.i260.i.i:                         ; preds = %if.end.i.i258.i.i
  %call4.i.i259.i.i = call zeroext i1 %115(ptr noundef %108) #11
  br i1 %call4.i.i259.i.i, label %if.then5.i.i262.i.i, label %land.lhs.true.i.i260.i.i.if.then.i264.i.i_crit_edge

land.lhs.true.i.i260.i.i.if.then.i264.i.i_crit_edge: ; preds = %land.lhs.true.i.i260.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i264.i.i

if.then5.i.i262.i.i:                              ; preds = %land.lhs.true.i.i260.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call6.i.i261.i.i = call i32 @dma_fence_signal(ptr noundef %108) #11
  br label %add_fence.exit278.i.i

if.then.i264.i.i:                                 ; preds = %land.lhs.true.i.i260.i.i.if.then.i264.i.i_crit_edge, %if.end.i.i258.i.i.if.then.i264.i.i_crit_edge
  %tobool.not.i5.i263.i.i = icmp eq ptr %108, null
  br i1 %tobool.not.i5.i263.i.i, label %if.then.i264.i.i.dma_fence_get.exit.i276.i.i_crit_edge, label %if.then.i.i269.i.i

if.then.i264.i.i.dma_fence_get.exit.i276.i.i_crit_edge: ; preds = %if.then.i264.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_fence_get.exit.i276.i.i

if.then.i.i269.i.i:                               ; preds = %if.then.i264.i.i
  %refcount.i.i265.i.i = getelementptr inbounds %struct.dma_fence, ptr %108, i32 0, i32 6
  %call.i.i.i.i.i.i.i.i266.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i265.i.i, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %refcount.i.i265.i.i, i32 1, i32 3, i32 1) #11
  %116 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i265.i.i, ptr %refcount.i.i265.i.i, i32 1, ptr elementtype(i32) %refcount.i.i265.i.i) #11, !srcloc !30
  %asmresult.i.i.i.i.i.i.i.i267.i.i = extractvalue { i32, i32, i32 } %116, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i267.i.i)
  %tobool1.not.i.i.i.i.i.i268.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i267.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i268.i.i, label %if.then.i.i269.i.i.if.end15.sink.split.i.i.i.i.i.i274.i.i_crit_edge, label %if.else.i.i.i.i.i.i272.i.i, !prof !31

if.then.i.i269.i.i.if.end15.sink.split.i.i.i.i.i.i274.i.i_crit_edge: ; preds = %if.then.i.i269.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i.i274.i.i

if.else.i.i.i.i.i.i272.i.i:                       ; preds = %if.then.i.i269.i.i
  %add.i.i.i.i.i.i270.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i267.i.i, 1
  %117 = or i32 %add.i.i.i.i.i.i270.i.i, %asmresult.i.i.i.i.i.i.i.i267.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %117)
  %.not.i.i.i.i.i.i271.i.i = icmp sgt i32 %117, -1
  br i1 %.not.i.i.i.i.i.i271.i.i, label %if.else.i.i.i.i.i.i272.i.i.dma_fence_get.exit.i276.i.i_crit_edge, label %if.else.i.i.i.i.i.i272.i.i.if.end15.sink.split.i.i.i.i.i.i274.i.i_crit_edge, !prof !32

if.else.i.i.i.i.i.i272.i.i.if.end15.sink.split.i.i.i.i.i.i274.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i272.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i.i274.i.i

if.else.i.i.i.i.i.i272.i.i.dma_fence_get.exit.i276.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i272.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_fence_get.exit.i276.i.i

if.end15.sink.split.i.i.i.i.i.i274.i.i:           ; preds = %if.else.i.i.i.i.i.i272.i.i.if.end15.sink.split.i.i.i.i.i.i274.i.i_crit_edge, %if.then.i.i269.i.i.if.end15.sink.split.i.i.i.i.i.i274.i.i_crit_edge
  %.sink.i.i.i.i.i.i273.i.i = phi i32 [ 2, %if.then.i.i269.i.i.if.end15.sink.split.i.i.i.i.i.i274.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i272.i.i.if.end15.sink.split.i.i.i.i.i.i274.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i265.i.i, i32 noundef %.sink.i.i.i.i.i.i273.i.i) #11
  br label %dma_fence_get.exit.i276.i.i

dma_fence_get.exit.i276.i.i:                      ; preds = %if.end15.sink.split.i.i.i.i.i.i274.i.i, %if.else.i.i.i.i.i.i272.i.i.dma_fence_get.exit.i276.i.i_crit_edge, %if.then.i264.i.i.dma_fence_get.exit.i276.i.i_crit_edge
  %inc.i275.i.i = add i32 %i.9347.i.i, 1
  br label %add_fence.exit278.i.i

add_fence.exit278.i.i:                            ; preds = %dma_fence_get.exit.i276.i.i, %if.then5.i.i262.i.i, %for.body38.i.i.add_fence.exit278.i.i_crit_edge
  %i.10.i.i = phi i32 [ %inc.i275.i.i, %dma_fence_get.exit.i276.i.i ], [ %i.9347.i.i, %if.then5.i.i262.i.i ], [ %i.9347.i.i, %for.body38.i.i.add_fence.exit278.i.i_crit_edge ]
  %inc41.i.i = add i32 %i_b.2349.i.i, 1
  %exitcond353.not.i.i = icmp eq i32 %inc41.i.i, %b_num_fences.0.i.i
  br i1 %exitcond353.not.i.i, label %add_fence.exit278.i.i.for.end42.i.i_crit_edge, label %add_fence.exit278.i.i.for.body38.i.i_crit_edge

add_fence.exit278.i.i.for.body38.i.i_crit_edge:   ; preds = %add_fence.exit278.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body38.i.i

add_fence.exit278.i.i.for.end42.i.i_crit_edge:    ; preds = %add_fence.exit278.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end42.i.i

for.end42.i.i:                                    ; preds = %add_fence.exit278.i.i.for.end42.i.i_crit_edge, %for.cond36.preheader.i.i.for.end42.i.i_crit_edge
  %i.9.lcssa.i.i = phi i32 [ %i.7.lcssa.i.i, %for.cond36.preheader.i.i.for.end42.i.i_crit_edge ], [ %i.10.i.i, %add_fence.exit278.i.i.for.end42.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.9.lcssa.i.i)
  %cmp43.i.i = icmp eq i32 %i.9.lcssa.i.i, 0
  br i1 %cmp43.i.i, label %if.then44.i.i, label %for.end42.i.i.if.end49.i.i_crit_edge

for.end42.i.i.if.end49.i.i_crit_edge:             ; preds = %for.end42.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49.i.i

if.then44.i.i:                                    ; preds = %for.end42.i.i
  %118 = ptrtoint ptr %retval.0.i121.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %retval.0.i121.i.i, align 4
  %tobool.not.i279.i.i = icmp eq ptr %119, null
  br i1 %tobool.not.i279.i.i, label %if.then44.i.i.dma_fence_get.exit.i.i_crit_edge, label %if.then.i280.i.i

if.then44.i.i.dma_fence_get.exit.i.i_crit_edge:   ; preds = %if.then44.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_fence_get.exit.i.i

if.then.i280.i.i:                                 ; preds = %if.then44.i.i
  %refcount.i.i.i = getelementptr inbounds %struct.dma_fence, ptr %119, i32 0, i32 6
  %call.i.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i.i, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %refcount.i.i.i, i32 1, i32 3, i32 1) #11
  %120 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i.i, ptr %refcount.i.i.i, i32 1, ptr elementtype(i32) %refcount.i.i.i) #11, !srcloc !30
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %120, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i.i, label %if.then.i280.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i.i, !prof !31

if.then.i280.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i280.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i:                            ; preds = %if.then.i280.i.i
  %add.i.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  %121 = or i32 %add.i.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %121)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %121, -1
  br i1 %.not.i.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.i.dma_fence_get.exit.i.i_crit_edge, label %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, !prof !32

if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i.dma_fence_get.exit.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_fence_get.exit.i.i

if.end15.sink.split.i.i.i.i.i.i.i:                ; preds = %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, %if.then.i280.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i.i = phi i32 [ 2, %if.then.i280.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i.i, i32 noundef %.sink.i.i.i.i.i.i.i) #11
  br label %dma_fence_get.exit.i.i

dma_fence_get.exit.i.i:                           ; preds = %if.end15.sink.split.i.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.i.dma_fence_get.exit.i.i_crit_edge, %if.then44.i.i.dma_fence_get.exit.i.i_crit_edge
  %122 = ptrtoint ptr %call8.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %119, ptr %call8.i.i.i.i, align 128
  br label %if.end49.i.i

if.end49.i.i:                                     ; preds = %dma_fence_get.exit.i.i, %for.end42.i.i.if.end49.i.i_crit_edge
  %i.11.i.i = phi i32 [ 1, %dma_fence_get.exit.i.i ], [ %i.9.lcssa.i.i, %for.end42.i.i.if.end49.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %i.11.i.i)
  %cmp50.i.i = icmp sgt i32 %add.i.i, %i.11.i.i
  br i1 %cmp50.i.i, label %if.then51.i.i, label %if.end49.i.i.if.end56.i.i_crit_edge

if.end49.i.i.if.end56.i.i_crit_edge:              ; preds = %if.end49.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56.i.i

if.then51.i.i:                                    ; preds = %if.end49.i.i
  %123 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.11.i.i, i32 4) #11
  %124 = extractvalue { i32, i1 } %123, 1
  br i1 %124, label %if.then51.i.i.while.body.preheader.i.i_crit_edge, label %krealloc_array.exit.i.i, !prof !31

if.then51.i.i.while.body.preheader.i.i_crit_edge: ; preds = %if.then51.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.preheader.i.i

krealloc_array.exit.i.i:                          ; preds = %if.then51.i.i
  %125 = extractvalue { i32, i1 } %123, 0
  %call5.i.i.i = call noalias ptr @krealloc(ptr noundef nonnull %call8.i.i.i.i, i32 noundef %125, i32 noundef 3264) #17
  %tobool53.not.i.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool53.not.i.i, label %krealloc_array.exit.i.i.while.body.preheader.i.i_crit_edge, label %krealloc_array.exit.i.i.if.end56.i.i_crit_edge

krealloc_array.exit.i.i.if.end56.i.i_crit_edge:   ; preds = %krealloc_array.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56.i.i

krealloc_array.exit.i.i.while.body.preheader.i.i_crit_edge: ; preds = %krealloc_array.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.preheader.i.i

if.end56.i.i:                                     ; preds = %krealloc_array.exit.i.i.if.end56.i.i_crit_edge, %if.end49.i.i.if.end56.i.i_crit_edge
  %fences.0.i.i = phi ptr [ %call8.i.i.i.i, %if.end49.i.i.if.end56.i.i_crit_edge ], [ %call5.i.i.i, %krealloc_array.exit.i.i.if.end56.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.11.i.i)
  %cmp.i284.i.i = icmp eq i32 %i.11.i.i, 1
  br i1 %cmp.i284.i.i, label %if.then.i286.i.i, label %if.else.i.i.i

if.then.i286.i.i:                                 ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %126 = ptrtoint ptr %fences.0.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %fences.0.i.i, align 4
  %fence.i285.i.i = getelementptr inbounds %struct.sync_file, ptr %call7.i.i.i.i.i, i32 0, i32 5
  %128 = ptrtoint ptr %fence.i285.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %127, ptr %fence.i285.i.i, align 4
  call void @kfree(ptr noundef %fences.0.i.i) #11
  br label %sync_file_merge.exit.i

if.else.i.i.i:                                    ; preds = %if.end56.i.i
  %call.i.i53.i = call i64 @dma_fence_context_alloc(i32 noundef 1) #11
  %call1.i287.i.i = call ptr @dma_fence_array_create(i32 noundef %i.11.i.i, ptr noundef %fences.0.i.i, i64 noundef %call.i.i53.i, i32 noundef 1, i1 noundef zeroext false) #11
  %tobool.not.i288.i.i = icmp eq ptr %call1.i287.i.i, null
  br i1 %tobool.not.i288.i.i, label %if.else.i.i.i.while.body.preheader.i.i_crit_edge, label %if.end.i289.i.i

if.else.i.i.i.while.body.preheader.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.preheader.i.i

if.end.i289.i.i:                                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %fence3.i.i.i = getelementptr inbounds %struct.sync_file, ptr %call7.i.i.i.i.i, i32 0, i32 5
  %129 = ptrtoint ptr %fence3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %call1.i287.i.i, ptr %fence3.i.i.i, align 4
  br label %sync_file_merge.exit.i

while.body.preheader.i.i:                         ; preds = %if.else.i.i.i.while.body.preheader.i.i_crit_edge, %krealloc_array.exit.i.i.while.body.preheader.i.i_crit_edge, %if.then51.i.i.while.body.preheader.i.i_crit_edge
  %fences.1.i.i = phi ptr [ %call8.i.i.i.i, %krealloc_array.exit.i.i.while.body.preheader.i.i_crit_edge ], [ %fences.0.i.i, %if.else.i.i.i.while.body.preheader.i.i_crit_edge ], [ %call8.i.i.i.i, %if.then51.i.i.while.body.preheader.i.i_crit_edge ]
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %dma_fence_put.exit.i.i.while.body.i.i_crit_edge, %while.body.preheader.i.i
  %i.13352.i.i = phi i32 [ %dec.i.i, %dma_fence_put.exit.i.i.while.body.i.i_crit_edge ], [ %i.11.i.i, %while.body.preheader.i.i ]
  %dec.i.i = add i32 %i.13352.i.i, -1
  %arrayidx63.i.i = getelementptr ptr, ptr %fences.1.i.i, i32 %dec.i.i
  %130 = ptrtoint ptr %arrayidx63.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %arrayidx63.i.i, align 4
  %tobool.not.i291.i.i = icmp eq ptr %131, null
  br i1 %tobool.not.i291.i.i, label %while.body.i.i.dma_fence_put.exit.i.i_crit_edge, label %if.then.i295.i.i

while.body.i.i.dma_fence_put.exit.i.i_crit_edge:  ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_fence_put.exit.i.i

if.then.i295.i.i:                                 ; preds = %while.body.i.i
  %refcount.i292.i.i = getelementptr inbounds %struct.dma_fence, ptr %131, i32 0, i32 6
  %call.i.i.i.i.i.i.i293.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i292.i.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !37
  call void @llvm.prefetch.p0(ptr %refcount.i292.i.i, i32 1, i32 3, i32 1) #11
  %132 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i292.i.i, ptr %refcount.i292.i.i, i32 1, ptr elementtype(i32) %refcount.i292.i.i) #11, !srcloc !38
  %asmresult.i.i.i.i.i.i.i.i294.i.i = extractvalue { i32, i32, i32 } %132, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i294.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i294.i.i, 1
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i.i297.i.i, label %if.end5.i.i.i.i.i.i.i

if.end5.i.i.i.i.i.i.i:                            ; preds = %if.then.i295.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i294.i.i)
  %.not.i.i.i.i.i296.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i294.i.i, 0
  br i1 %.not.i.i.i.i.i296.i.i, label %if.end5.i.i.i.i.i.i.i.dma_fence_put.exit.i.i_crit_edge, label %if.then10.i.i.i.i.i.i.i, !prof !32

if.end5.i.i.i.i.i.i.i.dma_fence_put.exit.i.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_fence_put.exit.i.i

if.then10.i.i.i.i.i.i.i:                          ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount.i292.i.i, i32 noundef 3) #11
  br label %dma_fence_put.exit.i.i

if.then.i.i297.i.i:                               ; preds = %if.then.i295.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !39
  call void @dma_fence_release(ptr noundef %refcount.i292.i.i) #11
  br label %dma_fence_put.exit.i.i

dma_fence_put.exit.i.i:                           ; preds = %if.then.i.i297.i.i, %if.then10.i.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.i.dma_fence_put.exit.i.i_crit_edge, %while.body.i.i.dma_fence_put.exit.i.i_crit_edge
  %tobool62.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool62.not.i.i, label %dma_fence_put.exit.i.i.while.end.i.i_crit_edge, label %dma_fence_put.exit.i.i.while.body.i.i_crit_edge

dma_fence_put.exit.i.i.while.body.i.i_crit_edge:  ; preds = %dma_fence_put.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i

dma_fence_put.exit.i.i.while.end.i.i_crit_edge:   ; preds = %dma_fence_put.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %dma_fence_put.exit.i.i.while.end.i.i_crit_edge, %if.end7.i.i.i.i.while.end.i.i_crit_edge, %if.end4.i.i.while.end.i.i_crit_edge, %get_fences.exit130.i.i.while.end.i.i_crit_edge
  %fences.1360.i.i = phi ptr [ null, %get_fences.exit130.i.i.while.end.i.i_crit_edge ], [ null, %if.end7.i.i.i.i.while.end.i.i_crit_edge ], [ null, %if.end4.i.i.while.end.i.i_crit_edge ], [ %fences.1.i.i, %dma_fence_put.exit.i.i.while.end.i.i_crit_edge ]
  call void @kfree(ptr noundef %fences.1360.i.i) #11
  %133 = ptrtoint ptr %call7.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %call7.i.i.i.i.i, align 8
  call void @fput(ptr noundef %134) #11
  br label %err_put_fence2.i

sync_file_merge.exit.i:                           ; preds = %if.end.i289.i.i, %if.then.i286.i.i
  %user_name.i.i = getelementptr inbounds %struct.sync_file, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %call61.i.i = call i32 @strlcpy(ptr noundef %user_name.i.i, ptr noundef nonnull %data.i, i32 noundef 32) #11
  %fence.i = getelementptr inbounds %struct.sync_merge_data, ptr %data.i, i32 0, i32 2
  %135 = ptrtoint ptr %fence.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %call.i, ptr %fence.i, align 4
  call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 174) #11
  %call.i.i42.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i42.i, label %sync_file_merge.exit.i.if.then19.i_crit_edge, label %copy_to_user.exit.i

sync_file_merge.exit.i.if.then19.i_crit_edge:     ; preds = %sync_file_merge.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then19.i

copy_to_user.exit.i:                              ; preds = %sync_file_merge.exit.i
  %call.i.i.i46.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %data.i, i32 noundef 48) #11
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %4, ptr noundef nonnull %data.i, i32 noundef 48) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool18.not.i = icmp eq i32 %call.i12.i.i.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %copy_to_user.exit.i.if.then19.i_crit_edge

copy_to_user.exit.i.if.then19.i_crit_edge:        ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then19.i

if.then19.i:                                      ; preds = %copy_to_user.exit.i.if.then19.i_crit_edge, %sync_file_merge.exit.i.if.then19.i_crit_edge
  %136 = ptrtoint ptr %call7.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %call7.i.i.i.i.i, align 8
  call void @fput(ptr noundef %137) #11
  br label %err_put_fence2.i

if.end20.i:                                       ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %138 = ptrtoint ptr %call7.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %call7.i.i.i.i.i, align 8
  call void @fd_install(i32 noundef %call.i, ptr noundef %139) #11
  %140 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %19, align 4
  call void @fput(ptr noundef %141) #11
  br label %sync_file_ioctl_merge.exit

err_put_fence2.i:                                 ; preds = %if.then19.i, %while.end.i.i, %err.i.i.i, %if.end11.i.err_put_fence2.i_crit_edge
  %err.0.i = phi i32 [ -14, %if.then19.i ], [ -12, %while.end.i.i ], [ -12, %err.i.i.i ], [ -12, %if.end11.i.err_put_fence2.i_crit_edge ]
  %142 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %19, align 4
  call void @fput(ptr noundef %143) #11
  br label %err_put_fd.i

err_put_fd.i:                                     ; preds = %err_put_fence2.i, %sync_file_fdget.exit.i.err_put_fd.i_crit_edge, %err.i.i, %if.end7.i.err_put_fd.i_crit_edge, %lor.lhs.false.i.err_put_fd.i_crit_edge, %if.end3.i.err_put_fd.i_crit_edge, %if.then11.i.i.i
  %err.1.i = phi i32 [ %err.0.i, %err_put_fence2.i ], [ -22, %lor.lhs.false.i.err_put_fd.i_crit_edge ], [ -22, %if.end3.i.err_put_fd.i_crit_edge ], [ -2, %sync_file_fdget.exit.i.err_put_fd.i_crit_edge ], [ -14, %if.then11.i.i.i ], [ -2, %err.i.i ], [ -2, %if.end7.i.err_put_fd.i_crit_edge ]
  call void @put_unused_fd(i32 noundef %call.i) #11
  br label %sync_file_ioctl_merge.exit

sync_file_ioctl_merge.exit:                       ; preds = %err_put_fd.i, %if.end20.i, %sw.bb.sync_file_ioctl_merge.exit_crit_edge
  %retval.0.i = phi i32 [ %err.1.i, %err_put_fd.i ], [ 0, %if.end20.i ], [ %call.i, %sw.bb.sync_file_ioctl_merge.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %data.i) #11
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %info.i) #11
  %144 = call ptr @memset(ptr %info.i, i32 255, i32 56)
  %145 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 156) #11
  %call.i.i.i5 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i5, label %sw.bb1.if.then11.i.i.i19_crit_edge, label %land.lhs.true.i.i.i8

sw.bb1.if.then11.i.i.i19_crit_edge:               ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i19

land.lhs.true.i.i.i8:                             ; preds = %sw.bb1
  %146 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %145, i32 56, i32 -1226833920) #15
  %asmresult.i.i.i6 = extractvalue { i32, i32 } %146, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i6)
  %cmp.i6.i.i7 = icmp eq i32 %asmresult.i.i.i6, 0
  br i1 %cmp.i6.i.i7, label %if.end.i.i.i16, label %land.lhs.true.i.i.i8.if.then11.i.i.i19_crit_edge, !prof !32

land.lhs.true.i.i.i8.if.then11.i.i.i19_crit_edge: ; preds = %land.lhs.true.i.i.i8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i19

if.end.i.i.i16:                                   ; preds = %land.lhs.true.i.i.i8
  %call.i.i.i.i9 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %info.i, i32 noundef 56) #11
  %147 = call i32 @llvm.read_register.i32(metadata !20) #11
  %and.i.i.i.i.i.i.i10 = and i32 %147, -16384
  %148 = inttoptr i32 %and.i.i.i.i.i.i.i10 to ptr
  %cpu_domain.i.i.i.i.i.i11 = getelementptr inbounds %struct.thread_info, ptr %148, i32 0, i32 4
  %149 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i11) #7, !srcloc !33
  %and.i.i.i.i.i12 = and i32 %149, -13
  %or.i.i.i.i.i13 = or i32 %and.i.i.i.i.i12, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i13) #11, !srcloc !34
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !35
  %call1.i.i.i.i14 = call i32 @arm_copy_from_user(ptr noundef nonnull %info.i, ptr noundef %145, i32 noundef 56) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %149) #11, !srcloc !34
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i14)
  %tobool4.not.i.i.i15 = icmp eq i32 %call1.i.i.i.i14, 0
  br i1 %tobool4.not.i.i.i15, label %if.end.i21, label %if.end.i.i.i16.if.then11.i.i.i19_crit_edge, !prof !32

if.end.i.i.i16.if.then11.i.i.i19_crit_edge:       ; preds = %if.end.i.i.i16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i19

if.then11.i.i.i19:                                ; preds = %if.end.i.i.i16.if.then11.i.i.i19_crit_edge, %land.lhs.true.i.i.i8.if.then11.i.i.i19_crit_edge, %sw.bb1.if.then11.i.i.i19_crit_edge
  %res.0.i.i104.i = phi i32 [ %call1.i.i.i.i14, %if.end.i.i.i16.if.then11.i.i.i19_crit_edge ], [ 56, %sw.bb1.if.then11.i.i.i19_crit_edge ], [ 56, %land.lhs.true.i.i.i8.if.then11.i.i.i19_crit_edge ]
  %sub.i.i.i17 = sub i32 56, %res.0.i.i104.i
  %add.ptr.i.i.i18 = getelementptr i8, ptr %info.i, i32 %sub.i.i.i17
  %150 = call ptr @memset(ptr %add.ptr.i.i.i18, i32 0, i32 %res.0.i.i104.i)
  br label %sync_file_ioctl_fence_info.exit

if.end.i21:                                       ; preds = %if.end.i.i.i16
  %flags.i20 = getelementptr inbounds %struct.sync_file_info, ptr %info.i, i32 0, i32 2
  %151 = ptrtoint ptr %flags.i20 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %flags.i20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %tobool1.not.i = icmp eq i32 %152, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i23, label %if.end.i21.sync_file_ioctl_fence_info.exit_crit_edge

if.end.i21.sync_file_ioctl_fence_info.exit_crit_edge: ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #13
  br label %sync_file_ioctl_fence_info.exit

lor.lhs.false.i23:                                ; preds = %if.end.i21
  %pad.i22 = getelementptr inbounds %struct.sync_file_info, ptr %info.i, i32 0, i32 4
  %153 = ptrtoint ptr %pad.i22 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %pad.i22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %tobool2.not.i = icmp eq i32 %154, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %lor.lhs.false.i23.sync_file_ioctl_fence_info.exit_crit_edge

lor.lhs.false.i23.sync_file_ioctl_fence_info.exit_crit_edge: ; preds = %lor.lhs.false.i23
  call void @__sanitizer_cov_trace_pc() #13
  br label %sync_file_ioctl_fence_info.exit

if.end4.i:                                        ; preds = %lor.lhs.false.i23
  %fence.i.i = getelementptr inbounds %struct.sync_file, ptr %1, i32 0, i32 5
  %155 = ptrtoint ptr %fence.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %fence.i.i, align 4
  %ops.i.i.i = getelementptr inbounds %struct.dma_fence, ptr %156, i32 0, i32 1
  %157 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %ops.i.i.i, align 4
  %cmp.i.i84.i = icmp eq ptr %158, @dma_fence_array_ops
  br i1 %cmp.i.i84.i, label %if.then.i85.i, label %if.end4.i.get_fences.exit.i_crit_edge

if.end4.i.get_fences.exit.i_crit_edge:            ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_fences.exit.i

if.then.i85.i:                                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  %num_fences3.i.i = getelementptr inbounds %struct.dma_fence_array, ptr %156, i32 0, i32 2
  %159 = ptrtoint ptr %num_fences3.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %num_fences3.i.i, align 4
  %fences.i.i = getelementptr inbounds %struct.dma_fence_array, ptr %156, i32 0, i32 4
  %161 = ptrtoint ptr %fences.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %fences.i.i, align 4
  br label %get_fences.exit.i

get_fences.exit.i:                                ; preds = %if.then.i85.i, %if.end4.i.get_fences.exit.i_crit_edge
  %num_fences.0.i = phi i32 [ %160, %if.then.i85.i ], [ 1, %if.end4.i.get_fences.exit.i_crit_edge ]
  %retval.0.i.i = phi ptr [ %162, %if.then.i85.i ], [ %fence.i.i, %if.end4.i.get_fences.exit.i_crit_edge ]
  %num_fences6.i = getelementptr inbounds %struct.sync_file_info, ptr %info.i, i32 0, i32 3
  %163 = ptrtoint ptr %num_fences6.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %num_fences6.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %tobool7.not.i = icmp eq i32 %164, 0
  br i1 %tobool7.not.i, label %if.then8.i, label %if.else.i

if.then8.i:                                       ; preds = %get_fences.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %call9.i = call i32 @dma_fence_get_status(ptr noundef %156) #11
  %status.i = getelementptr inbounds %struct.sync_file_info, ptr %info.i, i32 0, i32 1
  %165 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %call9.i, ptr %status.i, align 8
  br label %no_fences.i

if.else.i:                                        ; preds = %get_fences.exit.i
  %status10.i = getelementptr inbounds %struct.sync_file_info, ptr %info.i, i32 0, i32 1
  %166 = ptrtoint ptr %status10.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 1, ptr %status10.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %164, i32 %num_fences.0.i)
  %cmp.i24 = icmp ult i32 %164, %num_fences.0.i
  br i1 %cmp.i24, label %if.else.i.sync_file_ioctl_fence_info.exit_crit_edge, label %if.end14.i

if.else.i.sync_file_ioctl_fence_info.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sync_file_ioctl_fence_info.exit

if.end14.i:                                       ; preds = %if.else.i
  %mul.i = mul i32 %num_fences.0.i, 80
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i, i32 noundef 3520) #16
  %tobool16.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool16.not.i, label %if.end14.i.sync_file_ioctl_fence_info.exit_crit_edge, label %for.cond.preheader.i

if.end14.i.sync_file_ioctl_fence_info.exit_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sync_file_ioctl_fence_info.exit

for.cond.preheader.i:                             ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_fences.0.i)
  %cmp19111.i = icmp sgt i32 %num_fences.0.i, 0
  br i1 %cmp19111.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %sync_fill_fence_info.exit.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.0112.i = phi i32 [ %inc.i, %sync_fill_fence_info.exit.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i28 = getelementptr ptr, ptr %retval.0.i.i, i32 %i.0112.i
  %167 = ptrtoint ptr %arrayidx.i28 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %arrayidx.i28, align 4
  %arrayidx21.i = getelementptr %struct.sync_fence_info, ptr %call9.i.i.i, i32 %i.0112.i
  %ops.i.i29 = getelementptr inbounds %struct.dma_fence, ptr %168, i32 0, i32 1
  %169 = ptrtoint ptr %ops.i.i29 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %ops.i.i29, align 4
  %get_timeline_name.i.i = getelementptr inbounds %struct.dma_fence_ops, ptr %170, i32 0, i32 2
  %171 = ptrtoint ptr %get_timeline_name.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %get_timeline_name.i.i, align 4
  %call.i.i30 = call ptr %172(ptr noundef %168) #11
  %call1.i.i = call i32 @strlcpy(ptr noundef %arrayidx21.i, ptr noundef %call.i.i30, i32 noundef 32) #11
  %driver_name.i.i = getelementptr %struct.sync_fence_info, ptr %call9.i.i.i, i32 %i.0112.i, i32 1
  %173 = ptrtoint ptr %ops.i.i29 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %ops.i.i29, align 4
  %get_driver_name.i.i = getelementptr inbounds %struct.dma_fence_ops, ptr %174, i32 0, i32 1
  %175 = ptrtoint ptr %get_driver_name.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %get_driver_name.i.i, align 4
  %call4.i.i = call ptr %176(ptr noundef %168) #11
  %call5.i.i = call i32 @strlcpy(ptr noundef %driver_name.i.i, ptr noundef %call4.i.i, i32 noundef 32) #11
  %call6.i.i = call i32 @dma_fence_get_status(ptr noundef %168) #11
  %status.i.i = getelementptr %struct.sync_fence_info, ptr %call9.i.i.i, i32 %i.0112.i, i32 2
  %177 = ptrtoint ptr %status.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %call6.i.i, ptr %status.i.i, align 16
  %flags.i.i = getelementptr inbounds %struct.dma_fence, ptr %168, i32 0, i32 5
  %178 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i36.i.i = and i32 %179, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i36.i.i)
  %tobool.not37.i.i = icmp eq i32 %and1.i36.i.i, 0
  br i1 %tobool.not37.i.i, label %for.body.i.while.end.i.i32_crit_edge, label %for.body.i.land.rhs.i.i_crit_edge

for.body.i.land.rhs.i.i_crit_edge:                ; preds = %for.body.i
  br label %land.rhs.i.i

for.body.i.while.end.i.i32_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i.i32

land.rhs.i.i:                                     ; preds = %do.end.i.i.land.rhs.i.i_crit_edge, %for.body.i.land.rhs.i.i_crit_edge
  %180 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load volatile i32, ptr %flags.i.i, align 4
  %182 = and i32 %181, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %182)
  %tobool10.not.i.i = icmp eq i32 %182, 0
  br i1 %tobool10.not.i.i, label %do.end.i.i, label %land.rhs.i.i.while.end.i.i32_crit_edge

land.rhs.i.i.while.end.i.i32_crit_edge:           ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i.i32

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !40
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !41
  %183 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i = and i32 %184, 1
  %tobool.not.i.i31 = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i.i31, label %do.end.i.i.while.end.i.i32_crit_edge, label %do.end.i.i.land.rhs.i.i_crit_edge

do.end.i.i.land.rhs.i.i_crit_edge:                ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i.i

do.end.i.i.while.end.i.i32_crit_edge:             ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i.i32

while.end.i.i32:                                  ; preds = %do.end.i.i.while.end.i.i32_crit_edge, %land.rhs.i.i.while.end.i.i32_crit_edge, %for.body.i.while.end.i.i32_crit_edge
  %185 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load volatile i32, ptr %flags.i.i, align 4
  %187 = and i32 %186, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %187)
  %tobool17.not.i.i = icmp eq i32 %187, 0
  br i1 %tobool17.not.i.i, label %while.end.i.i32.sync_fill_fence_info.exit.i_crit_edge, label %cond.true.i.i

while.end.i.i32.sync_fill_fence_info.exit.i_crit_edge: ; preds = %while.end.i.i32
  call void @__sanitizer_cov_trace_pc() #13
  br label %sync_fill_fence_info.exit.i

cond.true.i.i:                                    ; preds = %while.end.i.i32
  call void @__sanitizer_cov_trace_pc() #13
  %188 = getelementptr inbounds %struct.dma_fence, ptr %168, i32 0, i32 2
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_load8_noabort(i32 %189)
  %190 = load i64, ptr %188, align 8
  br label %sync_fill_fence_info.exit.i

sync_fill_fence_info.exit.i:                      ; preds = %cond.true.i.i, %while.end.i.i32.sync_fill_fence_info.exit.i_crit_edge
  %cond.i.i = phi i64 [ %190, %cond.true.i.i ], [ 0, %while.end.i.i32.sync_fill_fence_info.exit.i_crit_edge ]
  %timestamp_ns.i.i = getelementptr %struct.sync_fence_info, ptr %call9.i.i.i, i32 %i.0112.i, i32 4
  %191 = ptrtoint ptr %timestamp_ns.i.i to i32
  call void @__asan_store8_noabort(i32 %191)
  store i64 %cond.i.i, ptr %timestamp_ns.i.i, align 8
  %192 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %status.i.i, align 16
  %194 = ptrtoint ptr %status10.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %status10.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %195)
  %cmp24.i = icmp slt i32 %195, 1
  %.call22.i = select i1 %cmp24.i, i32 %195, i32 %193
  %196 = ptrtoint ptr %status10.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %.call22.i, ptr %status10.i, align 8
  %inc.i = add nuw nsw i32 %i.0112.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %num_fences.0.i
  br i1 %exitcond.not.i, label %sync_fill_fence_info.exit.i.for.end.i_crit_edge, label %sync_fill_fence_info.exit.i.for.body.i_crit_edge

sync_fill_fence_info.exit.i.for.body.i_crit_edge: ; preds = %sync_fill_fence_info.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

sync_fill_fence_info.exit.i.for.end.i_crit_edge:  ; preds = %sync_fill_fence_info.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %sync_fill_fence_info.exit.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %sync_fence_info.i = getelementptr inbounds %struct.sync_file_info, ptr %info.i, i32 0, i32 5
  %197 = ptrtoint ptr %sync_fence_info.i to i32
  call void @__asan_load8_noabort(i32 %197)
  %198 = load i64, ptr %sync_fence_info.i, align 8
  %conv29.i = trunc i64 %198 to i32
  %199 = inttoptr i32 %conv29.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %cmp9.i.i.i = icmp slt i32 %mul.i, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i34

land.rhs16.i.i.i:                                 ; preds = %for.end.i
  %.b71.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.out.i_crit_edge, label %if.then27.i.i.i, !prof !32

land.rhs16.i.i.i.out.i_crit_edge:                 ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %out.i

if.then.i.i.i.i34:                                ; preds = %for.end.i
  call void @__check_object_size(ptr noundef nonnull %call9.i.i.i, i32 noundef %mul.i, i1 noundef zeroext true) #11
  call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 174) #11
  %call.i.i62.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i62.i, label %if.then.i.i.i.i34.copy_to_user.exit.i36_crit_edge, label %if.end.i.i65.i

if.then.i.i.i.i34.copy_to_user.exit.i36_crit_edge: ; preds = %if.then.i.i.i.i34
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit.i36

if.end.i.i65.i:                                   ; preds = %if.then.i.i.i.i34
  %200 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %199, i32 %mul.i, i32 -1226833920) #15, !srcloc !42
  %asmresult.i.i63.i = extractvalue { i32, i32 } %200, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i63.i)
  %cmp.i6.i64.i = icmp eq i32 %asmresult.i.i63.i, 0
  br i1 %cmp.i6.i64.i, label %if.then2.i.i.i, label %if.end.i.i65.i.copy_to_user.exit.i36_crit_edge

if.end.i.i65.i.copy_to_user.exit.i36_crit_edge:   ; preds = %if.end.i.i65.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit.i36

if.then2.i.i.i:                                   ; preds = %if.end.i.i65.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i66.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call9.i.i.i, i32 noundef %mul.i) #11
  %call.i12.i.i.i35 = call i32 @arm_copy_to_user(ptr noundef %199, ptr noundef nonnull %call9.i.i.i, i32 noundef %mul.i) #11
  br label %copy_to_user.exit.i36

copy_to_user.exit.i36:                            ; preds = %if.then2.i.i.i, %if.end.i.i65.i.copy_to_user.exit.i36_crit_edge, %if.then.i.i.i.i34.copy_to_user.exit.i36_crit_edge
  %n.addr.0.i67.i = phi i32 [ %mul.i, %if.then.i.i.i.i34.copy_to_user.exit.i36_crit_edge ], [ %call.i12.i.i.i35, %if.then2.i.i.i ], [ %mul.i, %if.end.i.i65.i.copy_to_user.exit.i36_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i67.i)
  %tobool31.not.i = icmp eq i32 %n.addr.0.i67.i, 0
  br i1 %tobool31.not.i, label %copy_to_user.exit.i36.no_fences.i_crit_edge, label %copy_to_user.exit.i36.out.i_crit_edge

copy_to_user.exit.i36.out.i_crit_edge:            ; preds = %copy_to_user.exit.i36
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

copy_to_user.exit.i36.no_fences.i_crit_edge:      ; preds = %copy_to_user.exit.i36
  call void @__sanitizer_cov_trace_pc() #13
  br label %no_fences.i

no_fences.i:                                      ; preds = %copy_to_user.exit.i36.no_fences.i_crit_edge, %if.then8.i
  %fence_info.0.i = phi ptr [ %call9.i.i.i, %copy_to_user.exit.i36.no_fences.i_crit_edge ], [ null, %if.then8.i ]
  %user_name.i.i37 = getelementptr inbounds %struct.sync_file, ptr %1, i32 0, i32 1
  %201 = ptrtoint ptr %user_name.i.i37 to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %user_name.i.i37, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %202)
  %tobool.not.i91.i = icmp eq i8 %202, 0
  br i1 %tobool.not.i91.i, label %if.else.i.i40, label %if.then.i93.i

if.then.i93.i:                                    ; preds = %no_fences.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i92.i = call i32 @strlcpy(ptr noundef nonnull %info.i, ptr noundef %user_name.i.i37, i32 noundef 32) #11
  br label %sync_file_get_name.exit.i

if.else.i.i40:                                    ; preds = %no_fences.i
  call void @__sanitizer_cov_trace_pc() #13
  %203 = ptrtoint ptr %fence.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %fence.i.i, align 4
  %ops.i94.i = getelementptr inbounds %struct.dma_fence, ptr %204, i32 0, i32 1
  %205 = ptrtoint ptr %ops.i94.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %ops.i94.i, align 4
  %get_driver_name.i95.i = getelementptr inbounds %struct.dma_fence_ops, ptr %206, i32 0, i32 1
  %207 = ptrtoint ptr %get_driver_name.i95.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %get_driver_name.i95.i, align 4
  %call3.i.i = call ptr %208(ptr noundef %204) #11
  %209 = ptrtoint ptr %ops.i94.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %ops.i94.i, align 4
  %get_timeline_name.i96.i = getelementptr inbounds %struct.dma_fence_ops, ptr %210, i32 0, i32 2
  %211 = ptrtoint ptr %get_timeline_name.i96.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %get_timeline_name.i96.i, align 4
  %call5.i97.i = call ptr %212(ptr noundef %204) #11
  %context.i.i38 = getelementptr inbounds %struct.dma_fence, ptr %204, i32 0, i32 3
  %213 = ptrtoint ptr %context.i.i38 to i32
  call void @__asan_load8_noabort(i32 %213)
  %214 = load i64, ptr %context.i.i38, align 8
  %seqno.i.i39 = getelementptr inbounds %struct.dma_fence, ptr %204, i32 0, i32 4
  %215 = ptrtoint ptr %seqno.i.i39 to i32
  call void @__asan_load8_noabort(i32 %215)
  %216 = load i64, ptr %seqno.i.i39, align 8
  %call6.i98.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %info.i, i32 noundef 32, ptr noundef nonnull @.str, ptr noundef %call3.i.i, ptr noundef %call5.i97.i, i64 noundef %214, i64 noundef %216) #11
  br label %sync_file_get_name.exit.i

sync_file_get_name.exit.i:                        ; preds = %if.else.i.i40, %if.then.i93.i
  %217 = ptrtoint ptr %num_fences6.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 %num_fences.0.i, ptr %num_fences6.i, align 8
  call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 174) #11
  %call.i.i74.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i74.i, label %sync_file_get_name.exit.i.out.i_crit_edge, label %copy_to_user.exit83.i

sync_file_get_name.exit.i.out.i_crit_edge:        ; preds = %sync_file_get_name.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

copy_to_user.exit83.i:                            ; preds = %sync_file_get_name.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i79.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %info.i, i32 noundef 56) #11
  %call.i12.i.i80.i = call i32 @arm_copy_to_user(ptr noundef %145, ptr noundef nonnull %info.i, i32 noundef 56) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i80.i)
  %tobool37.not.i = icmp eq i32 %call.i12.i.i80.i, 0
  %spec.select.i = select i1 %tobool37.not.i, i32 0, i32 -14
  br label %out.i

out.i:                                            ; preds = %copy_to_user.exit83.i, %sync_file_get_name.exit.i.out.i_crit_edge, %copy_to_user.exit.i36.out.i_crit_edge, %if.then27.i.i.i, %land.rhs16.i.i.i.out.i_crit_edge
  %ret.0.i = phi i32 [ -14, %copy_to_user.exit.i36.out.i_crit_edge ], [ -14, %if.then27.i.i.i ], [ -14, %land.rhs16.i.i.i.out.i_crit_edge ], [ -14, %sync_file_get_name.exit.i.out.i_crit_edge ], [ %spec.select.i, %copy_to_user.exit83.i ]
  %fence_info.1.i = phi ptr [ %call9.i.i.i, %copy_to_user.exit.i36.out.i_crit_edge ], [ %call9.i.i.i, %if.then27.i.i.i ], [ %call9.i.i.i, %land.rhs16.i.i.i.out.i_crit_edge ], [ %fence_info.0.i, %sync_file_get_name.exit.i.out.i_crit_edge ], [ %fence_info.0.i, %copy_to_user.exit83.i ]
  call void @kfree(ptr noundef %fence_info.1.i) #11
  br label %sync_file_ioctl_fence_info.exit

sync_file_ioctl_fence_info.exit:                  ; preds = %out.i, %if.end14.i.sync_file_ioctl_fence_info.exit_crit_edge, %if.else.i.sync_file_ioctl_fence_info.exit_crit_edge, %lor.lhs.false.i23.sync_file_ioctl_fence_info.exit_crit_edge, %if.end.i21.sync_file_ioctl_fence_info.exit_crit_edge, %if.then11.i.i.i19
  %retval.0.i41 = phi i32 [ %ret.0.i, %out.i ], [ -22, %lor.lhs.false.i23.sync_file_ioctl_fence_info.exit_crit_edge ], [ -22, %if.end.i21.sync_file_ioctl_fence_info.exit_crit_edge ], [ -22, %if.else.i.sync_file_ioctl_fence_info.exit_crit_edge ], [ -12, %if.end14.i.sync_file_ioctl_fence_info.exit_crit_edge ], [ -14, %if.then11.i.i.i19 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %info.i) #11
  br label %cleanup

cleanup:                                          ; preds = %sync_file_ioctl_fence_info.exit, %sync_file_ioctl_merge.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i41, %sync_file_ioctl_fence_info.exit ], [ %retval.0.i, %sync_file_ioctl_merge.exit ], [ -25, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sync_file_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %flags = getelementptr inbounds %struct.sync_file, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %fence = getelementptr inbounds %struct.sync_file, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fence, align 4
  %cb = getelementptr inbounds %struct.sync_file, ptr %1, i32 0, i32 6
  %call1 = tail call zeroext i1 @dma_fence_remove_callback(ptr noundef %5, ptr noundef %cb) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %fence2 = getelementptr inbounds %struct.sync_file, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %fence2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fence2, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.dma_fence_put.exit_crit_edge, label %if.then.i

if.end.dma_fence_put.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_fence_put.exit

if.then.i:                                        ; preds = %if.end
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %7, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !37
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !38
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !32

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #11
  br label %dma_fence_put.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !39
  tail call void @dma_fence_release(ptr noundef %refcount.i) #11
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, %if.end.dma_fence_put.exit_crit_edge
  tail call void @kfree(ptr noundef %1) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_add_callback(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fence_check_cb_func(ptr nocapture noundef readnone %f, ptr noundef %cb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %wq = getelementptr i8, ptr %cb, i32 -60
  tail call void @__wake_up(ptr noundef %wq, i32 noundef 3, i32 noundef 0, ptr noundef null) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_signal(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unused_fd_flags(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fd_install(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_unused_fd(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_fence_array_create(i32 noundef, ptr noundef, i64 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dma_fence_context_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_get_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dma_fence_remove_callback(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fget(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind readnone }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind allocsize(1) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !16, !18}
!llvm.named.register.sp = !{!20}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @__ksymtab_sync_file_create, !1, !"__ksymtab_sync_file_create", i1 false, i1 false}
!1 = !{!"../drivers/dma-buf/sync_file.c", i32 76, i32 1}
!2 = !{ptr @__ksymtab_sync_file_get_fence, !3, !"__ksymtab_sync_file_get_fence", i1 false, i1 false}
!3 = !{!"../drivers/dma-buf/sync_file.c", i32 116, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/dma-buf/sync_file.c", i32 138, i32 22}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/dma-buf/sync_file.c", i32 30, i32 39}
!8 = !{ptr @sync_file_alloc.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/dma-buf/sync_file.c", i32 35, i32 2}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @sync_file_fops, !12, !"sync_file_fops", i1 false, i1 false}
!12 = !{!"../drivers/dma-buf/sync_file.c", i32 479, i32 37}
!13 = distinct !{null, !14, !"__already_done", i1 false, i1 false}
!14 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!15 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!20 = !{!"sp"}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{i64 2148668969, i64 2148669001, i64 2148669030, i64 2148669064, i64 2148669095, i64 2148669118}
!31 = !{!"branch_weights", i32 1, i32 2000}
!32 = !{!"branch_weights", i32 2000, i32 1}
!33 = !{i64 4673935}
!34 = !{i64 4674132}
!35 = !{i64 2152159365}
!36 = !{i8 0, i8 2}
!37 = !{i64 2148756994}
!38 = !{i64 2148671434, i64 2148671466, i64 2148671495, i64 2148671529, i64 2148671560, i64 2148671583}
!39 = !{i64 2150376545}
!40 = !{i64 2153512659}
!41 = !{i64 2153512501}
!42 = !{i64 2152179061, i64 2152179086}
