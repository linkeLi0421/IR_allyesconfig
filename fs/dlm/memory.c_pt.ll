; ModuleID = '/llk/IR_all_yes/fs/dlm/memory.c_pt.bc'
source_filename = "../fs/dlm/memory.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dlm_ls = type { %struct.list_head, ptr, i32, i32, i32, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, %struct.kobject, %struct.idr, %struct.spinlock, ptr, i32, %struct.mutex, %struct.list_head, %struct.mutex, %struct.list_head, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, [65 x i8], [8 x ptr], i32, [8 x i32], %struct.list_head, %struct.list_head, i32, i32, i32, ptr, i32, i32, i32, ptr, %struct.dlm_rsb, %struct.dlm_lkb, %struct.dlm_message, ptr, ptr, ptr, ptr, ptr, %struct.wait_queue_head, i32, %struct.completion, i32, %struct.miscdevice, ptr, %struct.mutex, %struct.list_head, %struct.timer_list, ptr, %struct.mutex, %struct.spinlock, i32, i32, i64, ptr, %struct.rw_semaphore, %struct.rw_semaphore, %struct.list_head, %struct.atomic_t, %struct.wait_queue_head, %struct.mutex, ptr, i32, i32, i32, i32, i64, %struct.spinlock, %struct.list_head, %struct.spinlock, i32, %struct.idr, %struct.spinlock, %struct.wait_queue_head, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.rw_semaphore, ptr, ptr, i32, [1 x i8] }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dlm_rsb = type { ptr, %struct.kref, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %union.anon.41, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, ptr, [65 x i8] }
%union.anon.41 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dlm_lkb = type { ptr, %struct.kref, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i64, i64, i32, %struct.mutex, %struct.work_struct, %struct.list_head, [6 x %struct.dlm_callback], %struct.dlm_callback, %struct.dlm_callback, i64, i64, i64, ptr, ptr, ptr, ptr, %union.anon.42 }
%struct.dlm_callback = type { i64, i32, i32, i8, i8 }
%union.anon.42 = type { ptr }
%struct.dlm_message = type { %struct.dlm_header, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.dlm_header = type { i32, %union.anon.43, i32, i16, i8, i8 }
%union.anon.43 = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.dlm_user_args = type { ptr, %struct.dlm_lksb, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.dlm_lksb = type { i32, i32, i8, ptr }

@writequeue_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@mhandle_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dlm_lkb\00", [24 x i8] zeroinitializer }, align 32
@lkb_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@msg_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dlm_rsb\00", [24 x i8] zeroinitializer }, align 32
@rsb_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@___asan_gen_.2 = private unnamed_addr constant [17 x i8] c"writequeue_cache\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 18, i32 27 }
@___asan_gen_.5 = private unnamed_addr constant [14 x i8] c"mhandle_cache\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 19, i32 27 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 35, i32 32 }
@___asan_gen_.11 = private unnamed_addr constant [10 x i8] c"lkb_cache\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 21, i32 27 }
@___asan_gen_.14 = private unnamed_addr constant [10 x i8] c"msg_cache\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 20, i32 27 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 44, i32 32 }
@___asan_gen_.20 = private unnamed_addr constant [10 x i8] c"rsb_cache\00", align 1
@___asan_gen_.21 = private constant [19 x i8] c"../fs/dlm/memory.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 22, i32 27 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @writequeue_cache, ptr @mhandle_cache, ptr @.str, ptr @lkb_cache, ptr @msg_cache, ptr @.str.1, ptr @rsb_cache], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @writequeue_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhandle_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkb_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msg_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsb_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_memory_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @dlm_lowcomms_writequeue_cache_create() #4
  store ptr %call, ptr @writequeue_cache, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @dlm_midcomms_cache_create() #4
  store ptr %call1, ptr @mhandle_cache, align 4
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.mhandle_crit_edge, label %if.end4

if.end.mhandle_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %mhandle

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str, i32 noundef 504, i32 noundef 8, i32 noundef 0, ptr noundef null) #4
  store ptr %call5, ptr @lkb_cache, align 4
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.lkb_crit_edge, label %if.end8

if.end4.lkb_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %lkb

if.end8:                                          ; preds = %if.end4
  %call9 = tail call ptr @dlm_lowcomms_msg_cache_create() #4
  store ptr %call9, ptr @msg_cache, align 4
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end8.msg_crit_edge, label %if.end12

if.end8.msg_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %msg

if.end12:                                         ; preds = %if.end8
  %call13 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.1, i32 noundef 280, i32 noundef 4, i32 noundef 0, ptr noundef null) #4
  store ptr %call13, ptr @rsb_cache, align 4
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %rsb, label %if.end12.return_crit_edge

if.end12.return_crit_edge:                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

rsb:                                              ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %0 = load ptr, ptr @msg_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #4
  br label %msg

msg:                                              ; preds = %rsb, %if.end8.msg_crit_edge
  %1 = load ptr, ptr @lkb_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #4
  br label %lkb

lkb:                                              ; preds = %msg, %if.end4.lkb_crit_edge
  %2 = load ptr, ptr @mhandle_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %2) #4
  br label %mhandle

mhandle:                                          ; preds = %lkb, %if.end.mhandle_crit_edge
  %3 = load ptr, ptr @writequeue_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %3) #4
  br label %return

return:                                           ; preds = %mhandle, %if.end12.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12.return_crit_edge ], [ -12, %entry.return_crit_edge ], [ -12, %mhandle ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dlm_lowcomms_writequeue_cache_create() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dlm_midcomms_cache_create() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dlm_lowcomms_msg_cache_create() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_memory_exit() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @writequeue_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #4
  %1 = load ptr, ptr @mhandle_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #4
  %2 = load ptr, ptr @msg_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %2) #4
  %3 = load ptr, ptr @lkb_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %3) #4
  %4 = load ptr, ptr @rsb_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %4) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dlm_allocate_lvb(ptr nocapture noundef readonly %ls) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ls_lvblen = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 5
  %0 = ptrtoint ptr %ls_lvblen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ls_lvblen, align 8
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %1, i32 noundef 3392) #7
  ret ptr %call9.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_free_lvb(ptr noundef %p) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %p) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @dlm_allocate_rsb(ptr nocapture noundef readnone %ls) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @rsb_cache, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3392) #4
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_free_rsb(ptr noundef %r) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %res_lvbptr = getelementptr inbounds %struct.dlm_rsb, ptr %r, i32 0, i32 22
  %0 = ptrtoint ptr %res_lvbptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res_lvbptr, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %1) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = load ptr, ptr @rsb_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %2, ptr noundef %r) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @dlm_allocate_lkb(ptr nocapture noundef readnone %ls) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @lkb_cache, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3392) #4
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_free_lkb(ptr noundef %lkb) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %lkb_flags = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 8
  %0 = ptrtoint ptr %lkb_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lkb_flags, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3

if.then:                                          ; preds = %entry
  %2 = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 38
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %if.then.if.end3_crit_edge, label %if.then2

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %sb_lvbptr = getelementptr inbounds %struct.dlm_user_args, ptr %4, i32 0, i32 1, i32 3
  %5 = ptrtoint ptr %sb_lvbptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sb_lvbptr, align 4
  tail call void @kfree(ptr noundef %6) #4
  tail call void @kfree(ptr noundef nonnull %4) #4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %7 = load ptr, ptr @lkb_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %7, ptr noundef %lkb) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @dlm_allocate_mhandle() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @mhandle_cache, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3136) #4
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_free_mhandle(ptr noundef %mhandle) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @mhandle_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %mhandle) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @dlm_allocate_writequeue() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @writequeue_cache, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 2592) #4
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_free_writequeue(ptr noundef %writequeue) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @writequeue_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %writequeue) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @dlm_allocate_msg(i32 noundef %allocation) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @msg_cache, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef %allocation) #4
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_free_msg(ptr noundef %msg) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @msg_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %msg) #4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/dlm/memory.c", i32 35, i32 32}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/dlm/memory.c", i32 44, i32 32}
!4 = !{ptr @writequeue_cache, !5, !"writequeue_cache", i1 false, i1 false}
!5 = !{!"../fs/dlm/memory.c", i32 18, i32 27}
!6 = !{ptr @mhandle_cache, !7, !"mhandle_cache", i1 false, i1 false}
!7 = !{!"../fs/dlm/memory.c", i32 19, i32 27}
!8 = !{ptr @msg_cache, !9, !"msg_cache", i1 false, i1 false}
!9 = !{!"../fs/dlm/memory.c", i32 20, i32 27}
!10 = !{ptr @lkb_cache, !11, !"lkb_cache", i1 false, i1 false}
!11 = !{!"../fs/dlm/memory.c", i32 21, i32 27}
!12 = !{ptr @rsb_cache, !13, !"rsb_cache", i1 false, i1 false}
!13 = !{!"../fs/dlm/memory.c", i32 22, i32 27}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
