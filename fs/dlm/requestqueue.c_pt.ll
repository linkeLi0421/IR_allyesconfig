; ModuleID = '/llk/IR_all_yes/fs/dlm/requestqueue.c_pt.bc'
source_filename = "../fs/dlm/requestqueue.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dlm_config_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dlm_header = type { i32, %union.anon.43, i32, i16, i8, i8 }
%union.anon.43 = type { i32 }
%struct.dlm_ls = type { %struct.list_head, ptr, i32, i32, i32, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, %struct.kobject, %struct.idr, %struct.spinlock, ptr, i32, %struct.mutex, %struct.list_head, %struct.mutex, %struct.list_head, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, [65 x i8], [8 x ptr], i32, [8 x i32], %struct.list_head, %struct.list_head, i32, i32, i32, ptr, i32, i32, i32, ptr, %struct.dlm_rsb, %struct.dlm_lkb, %struct.dlm_message, ptr, ptr, ptr, ptr, ptr, %struct.wait_queue_head, i32, %struct.completion, i32, %struct.miscdevice, ptr, %struct.mutex, %struct.list_head, %struct.timer_list, ptr, %struct.mutex, %struct.spinlock, i32, i32, i64, ptr, %struct.rw_semaphore, %struct.rw_semaphore, %struct.list_head, %struct.atomic_t, %struct.wait_queue_head, %struct.mutex, ptr, i32, i32, i32, i32, i64, %struct.spinlock, %struct.list_head, %struct.spinlock, i32, %struct.idr, %struct.spinlock, %struct.wait_queue_head, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.rw_semaphore, ptr, ptr, i32, [1 x i8] }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dlm_rsb = type { ptr, %struct.kref, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %union.anon.41, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, ptr, [65 x i8] }
%union.anon.41 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dlm_lkb = type { ptr, %struct.kref, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i64, i64, i32, %struct.mutex, %struct.work_struct, %struct.list_head, [6 x %struct.dlm_callback], %struct.dlm_callback, %struct.dlm_callback, i64, i64, i64, ptr, ptr, ptr, ptr, %union.anon.42 }
%struct.dlm_callback = type { i64, i32, i32, i8, i8 }
%union.anon.42 = type { ptr }
%struct.dlm_message = type { %struct.dlm_header, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rq_entry = type { %struct.list_head, i32, i32, %struct.dlm_message }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@dlm_add_requestqueue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 39, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013dlm: dlm_add_requestqueue: out of memory len %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dlm_add_requestqueue\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fs/dlm/requestqueue.c\00", [42 x i8] zeroinitializer }, align 32
@dlm_add_requestqueue._entry_ptr = internal global ptr @dlm_add_requestqueue._entry, section ".printk_index", align 4
@dlm_config = external dso_local local_unnamed_addr global %struct.dlm_config_info, align 4
@dlm_process_requestqueue._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.dlm_process_requestqueue = private unnamed_addr constant [25 x i8] c"dlm_process_requestqueue\00", align 1
@dlm_process_requestqueue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @__func__.dlm_process_requestqueue, ptr @.str.2, i32 87, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\017dlm: %s: dlm_process_requestqueue msg %d from %d lkid %x remid %x result %d seq %u\0A\00", [42 x i8] zeroinitializer }, align 32
@dlm_process_requestqueue._entry_ptr = internal global ptr @dlm_process_requestqueue._entry, section ".printk_index", align 4
@dlm_process_requestqueue._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @__func__.dlm_process_requestqueue, ptr @.str.2, i32 98, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017dlm: %s: process_requestqueue abort running\0A\00", [49 x i8] zeroinitializer }, align 32
@dlm_process_requestqueue._entry_ptr.7 = internal global ptr @dlm_process_requestqueue._entry.5, section ".printk_index", align 4
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 39, i32 3 }
@___asan_gen_.20 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 83, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.36 = private constant [25 x i8] c"../fs/dlm/requestqueue.c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 98, i32 4 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @dlm_add_requestqueue._entry, ptr @dlm_add_requestqueue._entry_ptr, ptr @dlm_process_requestqueue._entry, ptr @dlm_process_requestqueue._entry.5, ptr @dlm_process_requestqueue._entry_ptr, ptr @dlm_process_requestqueue._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @dlm_process_requestqueue._rs, ptr @.str.3, ptr @.str.4, ptr @.str.6], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_add_requestqueue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_process_requestqueue._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_process_requestqueue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_process_requestqueue._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_add_requestqueue(ptr noundef %ls, i32 noundef %nodeid, ptr nocapture noundef readonly %ms) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %h_length = getelementptr inbounds %struct.dlm_header, ptr %ms, i32 0, i32 3
  %0 = ptrtoint ptr %h_length to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %h_length, align 4
  %conv = zext i16 %1 to i32
  %add = add nuw nsw i32 %conv, 16
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3136) #9
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sub = add nsw i32 %conv, -88
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %sub) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %ls_recover_seq = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 63
  %2 = ptrtoint ptr %ls_recover_seq to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ls_recover_seq, align 8
  %conv2 = trunc i64 %3 to i32
  %recover_seq = getelementptr inbounds %struct.rq_entry, ptr %call9.i, i32 0, i32 1
  %4 = ptrtoint ptr %recover_seq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv2, ptr %recover_seq, align 8
  %nodeid3 = getelementptr inbounds %struct.rq_entry, ptr %call9.i, i32 0, i32 2
  %5 = ptrtoint ptr %nodeid3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %nodeid, ptr %nodeid3, align 4
  %request = getelementptr inbounds %struct.rq_entry, ptr %call9.i, i32 0, i32 3
  %6 = ptrtoint ptr %h_length to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %h_length, align 4
  %conv6 = zext i16 %7 to i32
  %8 = call ptr @memcpy(ptr %request, ptr %ms, i32 %conv6)
  %ls_requestqueue_cnt = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 68
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ls_requestqueue_cnt, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %ls_requestqueue_cnt, i32 1, i32 3, i32 1) #6
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ls_requestqueue_cnt, ptr %ls_requestqueue_cnt, i32 1, ptr elementtype(i32) %ls_requestqueue_cnt) #6, !srcloc !26
  %ls_requestqueue_mutex = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 70
  tail call void @mutex_lock_nested(ptr noundef %ls_requestqueue_mutex, i32 noundef 0) #6
  %ls_requestqueue = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 67
  %prev.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 67, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i, align 4
  %call.i.i20 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i, ptr noundef %11, ptr noundef %ls_requestqueue) #6
  br i1 %call.i.i20, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call9.i, ptr %prev.i, align 4
  %13 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %ls_requestqueue, ptr %call9.i, align 128
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %call9.i, ptr %11, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %ls_requestqueue_mutex) #6
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %do.end
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_process_requestqueue(ptr noundef %ls) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ls_requestqueue_mutex = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 70
  tail call void @mutex_lock_nested(ptr noundef %ls_requestqueue_mutex, i32 noundef 0) #6
  %ls_requestqueue = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 67
  %0 = ptrtoint ptr %ls_requestqueue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %ls_requestqueue, align 4
  %cmp.i.not62 = icmp eq ptr %1, %ls_requestqueue
  br i1 %cmp.i.not62, label %entry.for.end_crit_edge, label %if.end.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end.lr.ph:                                     ; preds = %entry
  %ls_name = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 91
  %ls_requestqueue_cnt = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 68
  %ls_requestqueue_wait = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 69
  %ls_flags.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 9
  br label %if.end

if.end:                                           ; preds = %if.end39.if.end_crit_edge, %if.end.lr.ph
  %2 = phi ptr [ %1, %if.end.lr.ph ], [ %32, %if.end39.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %ls_requestqueue_mutex) #6
  %request = getelementptr inbounds %struct.rq_entry, ptr %2, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6) to i32))
  %3 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool4.not = icmp eq i32 %3, 0
  br i1 %tobool4.not, label %if.end.do.end15_crit_edge, label %if.then5

if.end.do.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

if.then5:                                         ; preds = %if.end
  %call6 = tail call i32 @___ratelimit(ptr noundef nonnull @dlm_process_requestqueue._rs, ptr noundef nonnull @__func__.dlm_process_requestqueue) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then5.do.end15_crit_edge, label %do.end

if.then5.do.end15_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  %m_type = getelementptr inbounds %struct.rq_entry, ptr %2, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %m_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %m_type, align 4
  %h_nodeid = getelementptr inbounds %struct.rq_entry, ptr %2, i32 0, i32 3, i32 0, i32 2
  %6 = ptrtoint ptr %h_nodeid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %h_nodeid, align 4
  %m_lkid = getelementptr inbounds %struct.rq_entry, ptr %2, i32 0, i32 3, i32 4
  %8 = ptrtoint ptr %m_lkid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %m_lkid, align 4
  %m_remid = getelementptr inbounds %struct.rq_entry, ptr %2, i32 0, i32 3, i32 5
  %10 = ptrtoint ptr %m_remid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %m_remid, align 4
  %m_result = getelementptr inbounds %struct.rq_entry, ptr %2, i32 0, i32 3, i32 18
  %12 = ptrtoint ptr %m_result to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %m_result, align 4
  %recover_seq = getelementptr inbounds %struct.rq_entry, ptr %2, i32 0, i32 1
  %14 = ptrtoint ptr %recover_seq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %recover_seq, align 4
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %ls_name, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15) #10
  br label %do.end15

do.end15:                                         ; preds = %do.end, %if.then5.do.end15_crit_edge, %if.end.do.end15_crit_edge
  %recover_seq17 = getelementptr inbounds %struct.rq_entry, ptr %2, i32 0, i32 1
  %16 = ptrtoint ptr %recover_seq17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %recover_seq17, align 4
  tail call void @dlm_receive_message_saved(ptr noundef %ls, ptr noundef %request, i32 noundef %17) #6
  tail call void @mutex_lock_nested(ptr noundef %ls_requestqueue_mutex, i32 noundef 0) #6
  %call.i.i61 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #6
  br i1 %call.i.i61, label %if.end.i.i, label %do.end15.list_del.exit_crit_edge

do.end15.list_del.exit_crit_edge:                 ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i, align 4
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.end15.list_del.exit_crit_edge
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ls_requestqueue_cnt, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !27
  tail call void @llvm.prefetch.p0(ptr %ls_requestqueue_cnt, i32 1, i32 3, i32 1) #6
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ls_requestqueue_cnt, ptr %ls_requestqueue_cnt, i32 1, ptr elementtype(i32) %ls_requestqueue_cnt) #6, !srcloc !28
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %26, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then20, label %list_del.exit.if.end21_crit_edge

list_del.exit.if.end21_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then20:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__wake_up(ptr noundef %ls_requestqueue_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %list_del.exit.if.end21_crit_edge
  tail call void @kfree(ptr noundef %2) #6
  %27 = ptrtoint ptr %ls_flags.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %ls_flags.i, align 4
  %29 = and i32 %28, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool23.not.not = icmp eq i32 %29, 0
  br i1 %tobool23.not.not, label %do.body25, label %if.end39

do.body25:                                        ; preds = %if.end21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6) to i32))
  %30 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool26.not = icmp eq i32 %30, 0
  br i1 %tobool26.not, label %do.body25.for.end_crit_edge, label %do.end30

do.body25.for.end_crit_edge:                      ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

do.end30:                                         ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #8
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %ls_name) #10
  br label %for.end

if.end39:                                         ; preds = %if.end21
  tail call void @schedule() #6
  %31 = ptrtoint ptr %ls_requestqueue to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %ls_requestqueue, align 4
  %cmp.i.not = icmp eq ptr %32, %ls_requestqueue
  br i1 %cmp.i.not, label %if.end39.for.end_crit_edge, label %if.end39.if.end_crit_edge

if.end39.if.end_crit_edge:                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end39.for.end_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %if.end39.for.end_crit_edge, %do.end30, %do.body25.for.end_crit_edge, %entry.for.end_crit_edge
  %error.0 = phi i32 [ 0, %entry.for.end_crit_edge ], [ -4, %do.end30 ], [ -4, %do.body25.for.end_crit_edge ], [ 0, %if.end39.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %ls_requestqueue_mutex) #6
  ret i32 %error.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_receive_message_saved(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_wait_requestqueue(ptr noundef %ls) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 122) #6
  %ls_requestqueue_cnt = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 68
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ls_requestqueue_cnt, i32 noundef 4) #6
  %0 = ptrtoint ptr %ls_requestqueue_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %ls_requestqueue_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.do.end11_crit_edge, label %if.end

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end11

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #6
  %2 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #6
  %ls_requestqueue_wait = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 69
  %call418 = call i32 @prepare_to_wait_event(ptr noundef %ls_requestqueue_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #6
  %call.i.i1519 = call zeroext i1 @__kasan_check_read(ptr noundef %ls_requestqueue_cnt, i32 noundef 4) #6
  %3 = ptrtoint ptr %ls_requestqueue_cnt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %ls_requestqueue_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp720 = icmp eq i32 %4, 0
  br i1 %cmp720, label %if.end.for.end_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  br label %cleanup

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @schedule() #6
  %call4 = call i32 @prepare_to_wait_event(ptr noundef %ls_requestqueue_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #6
  %call.i.i15 = call zeroext i1 @__kasan_check_read(ptr noundef %ls_requestqueue_cnt, i32 noundef 4) #6
  %5 = ptrtoint ptr %ls_requestqueue_cnt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %ls_requestqueue_cnt, align 4
  %cmp7 = icmp eq i32 %6, 0
  br i1 %cmp7, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @finish_wait(ptr noundef %ls_requestqueue_wait, ptr noundef nonnull %__wq_entry) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #6
  br label %do.end11

do.end11:                                         ; preds = %for.end, %entry.do.end11_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_purge_requestqueue(ptr noundef %ls) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ls_requestqueue_mutex = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 70
  tail call void @mutex_lock_nested(ptr noundef %ls_requestqueue_mutex, i32 noundef 0) #6
  %ls_requestqueue = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 67
  %0 = ptrtoint ptr %ls_requestqueue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ls_requestqueue, align 4
  %cmp.not33 = icmp eq ptr %1, %ls_requestqueue
  br i1 %cmp.not33, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ls_count.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 6
  %ls_flags.i.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 9
  %ls_requestqueue_cnt = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 68
  %ls_requestqueue_wait = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 69
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %e.034 = phi ptr [ %1, %for.body.lr.ph ], [ %safe.036, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %e.034 to i32
  call void @__asan_load4_noabort(i32 %2)
  %safe.036 = load ptr, ptr %e.034, align 4
  %nodeid = getelementptr inbounds %struct.rq_entry, ptr %e.034, i32 0, i32 2
  %3 = ptrtoint ptr %nodeid to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nodeid, align 4
  %m_type.i = getelementptr inbounds %struct.rq_entry, ptr %e.034, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %m_type.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %m_type.i, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ls_count.i, i32 noundef 4) #6
  %7 = ptrtoint ptr %ls_count.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %ls_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %for.body.if.then_crit_edge, label %if.end.i

for.body.if.then_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.end.i:                                         ; preds = %for.body
  %call1.i = tail call i32 @dlm_is_removed(ptr noundef %ls, i32 noundef %4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp ne i32 %call1.i, 0
  %.off.i = add i32 %6, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 3
  %or.cond.i = select i1 %tobool2.not.i, i1 true, i1 %switch.i
  br i1 %or.cond.i, label %if.end.i.if.then_crit_edge, label %purge_request.exit

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

purge_request.exit:                               ; preds = %if.end.i
  %9 = ptrtoint ptr %ls_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %ls_flags.i.i, align 4
  %11 = and i32 %10, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %purge_request.exit.for.inc_crit_edge, label %purge_request.exit.if.then_crit_edge

purge_request.exit.if.then_crit_edge:             ; preds = %purge_request.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

purge_request.exit.for.inc_crit_edge:             ; preds = %purge_request.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %purge_request.exit.if.then_crit_edge, %if.end.i.if.then_crit_edge, %for.body.if.then_crit_edge
  %call.i.i29 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %e.034) #6
  br i1 %call.i.i29, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %e.034, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %e.034 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %e.034, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %18 = ptrtoint ptr %e.034 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %e.034, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %e.034, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ls_requestqueue_cnt, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !27
  tail call void @llvm.prefetch.p0(ptr %ls_requestqueue_cnt, i32 1, i32 3, i32 1) #6
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ls_requestqueue_cnt, ptr %ls_requestqueue_cnt, i32 1, ptr elementtype(i32) %ls_requestqueue_cnt) #6, !srcloc !28
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %20, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then9, label %list_del.exit.if.end_crit_edge

list_del.exit.if.end_crit_edge:                   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then9:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__wake_up(ptr noundef %ls_requestqueue_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %if.then9, %list_del.exit.if.end_crit_edge
  tail call void @kfree(ptr noundef %e.034) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end, %purge_request.exit.for.inc_crit_edge
  %cmp.not = icmp eq ptr %safe.036, %ls_requestqueue
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %ls_requestqueue_mutex) #6
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_is_removed(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !12, !13, !15, !16}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/dlm/requestqueue.c", i32 39, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @dlm_add_requestqueue._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @dlm_add_requestqueue._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/dlm/requestqueue.c", i32 83, i32 3}
!8 = !{ptr @dlm_process_requestqueue._rs, !7, !"_rs", i1 false, i1 false}
!9 = !{ptr @__func__.dlm_process_requestqueue, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @dlm_process_requestqueue._entry, !7, !"_entry", i1 false, i1 false}
!12 = !{ptr @dlm_process_requestqueue._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/dlm/requestqueue.c", i32 98, i32 4}
!15 = !{ptr @dlm_process_requestqueue._entry.5, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @dlm_process_requestqueue._entry_ptr.7, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{i64 2148604772, i64 2148604798, i64 2148604827, i64 2148604861, i64 2148604892, i64 2148604915}
!27 = !{i64 2148693248}
!28 = !{i64 2148607957, i64 2148607989, i64 2148608018, i64 2148608052, i64 2148608083, i64 2148608106}
!29 = !{i64 2148693477}
