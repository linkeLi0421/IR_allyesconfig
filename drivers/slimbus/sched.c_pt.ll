; ModuleID = '/llk/IR_all_yes/drivers/slimbus/sched.c_pt.bc'
source_filename = "../drivers/slimbus/sched.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+slim_ctrl_clk_pause\22, \22a\22\09"
module asm "\09.weak\09__crc_slim_ctrl_clk_pause\09\09\09\09"
module asm "\09.long\09__crc_slim_ctrl_clk_pause\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_slim_ctrl_clk_pause:\09\09\09\09\09"
module asm "\09.asciz \09\22slim_ctrl_clk_pause\22\09\09\09\09\09"
module asm "__kstrtabns_slim_ctrl_clk_pause:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.slim_val_inf = type { i16, i8, ptr, ptr, ptr }
%struct.slim_msg_txn = type { i8, i8, i8, i8, i16, i8, i8, ptr, ptr }
%struct.slim_controller = type { ptr, i32, [32 x i8], i32, i32, i32, %struct.ida, ptr, %struct.mutex, %struct.list_head, %struct.idr, %struct.spinlock, %struct.slim_sched, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.slim_sched = type { i32, %struct.completion, %struct.mutex }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }

@slim_ctrl_clk_pause._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 53, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013Previous clock pause did not finish\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"slim_ctrl_clk_pause\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/slimbus/sched.c\00", [40 x i8] zeroinitializer }, align 32
@slim_ctrl_clk_pause._entry_ptr = internal global ptr @slim_ctrl_clk_pause._entry, section ".printk_index", align 4
@__kstrtab_slim_ctrl_clk_pause = external dso_local constant [0 x i8], align 1
@__kstrtabns_slim_ctrl_clk_pause = external dso_local constant [0 x i8], align 1
@__ksymtab_slim_ctrl_clk_pause = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @slim_ctrl_clk_pause to i32), ptr @__kstrtab_slim_ctrl_clk_pause, ptr @__kstrtabns_slim_ctrl_clk_pause }, section "___ksymtab_gpl+slim_ctrl_clk_pause", align 4
@___asan_gen_.3 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [27 x i8] c"../drivers/slimbus/sched.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 53, i32 4 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_slim_ctrl_clk_pause, ptr @slim_ctrl_clk_pause._entry, ptr @slim_ctrl_clk_pause._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slim_ctrl_clk_pause._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @slim_ctrl_clk_pause(ptr noundef %ctrl, i1 noundef zeroext %wakeup, i8 noundef zeroext %restart) #0 align 64 {
entry:
  %restart.addr = alloca i8, align 1
  %msg = alloca %struct.slim_val_inf, align 4
  %txn = alloca %struct.slim_msg_txn, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %restart.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %restart, ptr %restart.addr, align 1
  %sched1 = getelementptr inbounds %struct.slim_controller, ptr %ctrl, i32 0, i32 12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #4
  %1 = call ptr @memset(ptr %msg, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %txn) #4
  %2 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 1
  %3 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 2
  %4 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 3
  %5 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 4
  %6 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 5
  %7 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 6
  %8 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 7
  %9 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 8
  %10 = ptrtoint ptr %txn to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 3, ptr %txn, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %2, align 1
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 64, ptr %3, align 2
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 3, ptr %4, align 1
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %5, align 4
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %6, align 2
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %7, align 1
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg, ptr %8, align 4
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %9, align 4
  br i1 %wakeup, label %if.then8, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %restart)
  %cmp5 = icmp ugt i8 %restart, 2
  br i1 %cmp5, label %land.lhs.true.cleanup_crit_edge, label %if.end35

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then8:                                         ; preds = %entry
  %m_reconf126 = getelementptr inbounds %struct.slim_controller, ptr %ctrl, i32 0, i32 12, i32 2
  call void @mutex_lock_nested(ptr noundef %m_reconf126, i32 noundef 0) #4
  %19 = ptrtoint ptr %sched1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sched1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp9 = icmp eq i32 %20, 0
  br i1 %cmp9, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  call void @mutex_unlock(ptr noundef %m_reconf126) #4
  br label %cleanup

if.end13:                                         ; preds = %if.then8
  %pause_comp = getelementptr inbounds %struct.slim_controller, ptr %ctrl, i32 0, i32 12, i32 1
  %call14 = call i32 @wait_for_completion_timeout(ptr noundef %pause_comp, i32 noundef 10) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  call void @mutex_unlock(ptr noundef %m_reconf126) #4
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #7
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  %21 = ptrtoint ptr %sched1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sched1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp21 = icmp eq i32 %22, 2
  br i1 %cmp21, label %land.lhs.true23, label %if.end19.if.then31_crit_edge

if.end19.if.then31_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then31

land.lhs.true23:                                  ; preds = %if.end19
  %wakeup24 = getelementptr inbounds %struct.slim_controller, ptr %ctrl, i32 0, i32 18
  %23 = ptrtoint ptr %wakeup24 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wakeup24, align 4
  %tobool25.not = icmp eq ptr %24, null
  br i1 %tobool25.not, label %land.lhs.true23.if.then31_crit_edge, label %if.end29

land.lhs.true23.if.then31_crit_edge:              ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then31

if.end29:                                         ; preds = %land.lhs.true23
  %call28 = call i32 %24(ptr noundef %ctrl) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool30.not = icmp eq i32 %call28, 0
  br i1 %tobool30.not, label %if.end29.if.then31_crit_edge, label %if.end29.if.end33_crit_edge

if.end29.if.end33_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33

if.end29.if.then31_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then31

if.then31:                                        ; preds = %if.end29.if.then31_crit_edge, %land.lhs.true23.if.then31_crit_edge, %if.end19.if.then31_crit_edge
  %25 = ptrtoint ptr %sched1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %sched1, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end29.if.end33_crit_edge
  %ret.0130 = phi i32 [ 0, %if.then31 ], [ %call28, %if.end29.if.end33_crit_edge ]
  call void @mutex_unlock(ptr noundef %m_reconf126) #4
  br label %cleanup

if.end35:                                         ; preds = %land.lhs.true
  %m_reconf = getelementptr inbounds %struct.slim_controller, ptr %ctrl, i32 0, i32 12, i32 2
  call void @mutex_lock_nested(ptr noundef %m_reconf, i32 noundef 0) #4
  %26 = ptrtoint ptr %sched1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sched1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp38 = icmp eq i32 %27, 2
  br i1 %cmp38, label %if.then40, label %do.body44

if.then40:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  call void @mutex_unlock(ptr noundef %m_reconf) #4
  br label %cleanup

do.body44:                                        ; preds = %if.end35
  %txn_lock = getelementptr inbounds %struct.slim_controller, ptr %ctrl, i32 0, i32 11
  %call49 = call i32 @_raw_spin_lock_irqsave(ptr noundef %txn_lock) #4
  %tid_idr = getelementptr inbounds %struct.slim_controller, ptr %ctrl, i32 0, i32 10
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0136, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %do.body44
  %i.0136 = phi i32 [ 0, %do.body44 ], [ %inc, %for.cond.for.body_crit_edge ]
  %call56 = call ptr @idr_find(ptr noundef %tid_idr, i32 noundef %i.0136) #4
  %tobool57.not = icmp eq ptr %call56, null
  br i1 %tobool57.not, label %for.cond, label %if.then58

if.then58:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  call void @_raw_spin_unlock_irqrestore(ptr noundef %txn_lock, i32 noundef %call49) #4
  call void @mutex_unlock(ptr noundef %m_reconf) #4
  br label %cleanup

for.end:                                          ; preds = %for.cond
  call void @_raw_spin_unlock_irqrestore(ptr noundef %txn_lock, i32 noundef %call49) #4
  %28 = ptrtoint ptr %sched1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %sched1, align 4
  %call64 = call i32 @slim_do_transfer(ptr noundef %ctrl, ptr noundef nonnull %txn) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %for.end.if.then80_crit_edge

for.end.if.then80_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then80

if.end67:                                         ; preds = %for.end
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 74, ptr %3, align 2
  %30 = ptrtoint ptr %txn to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 4, ptr %txn, align 4
  %num_bytes = getelementptr inbounds %struct.slim_val_inf, ptr %msg, i32 0, i32 1
  %31 = ptrtoint ptr %num_bytes to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %num_bytes, align 2
  %wbuf = getelementptr inbounds %struct.slim_val_inf, ptr %msg, i32 0, i32 3
  %32 = ptrtoint ptr %wbuf to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %restart.addr, ptr %wbuf, align 4
  %call70 = call i32 @slim_do_transfer(ptr noundef %ctrl, ptr noundef nonnull %txn) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %clk_pause_ret, label %if.end67.if.then80_crit_edge

if.end67.if.then80_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then80

clk_pause_ret:                                    ; preds = %if.end67
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 95, ptr %3, align 2
  %34 = ptrtoint ptr %txn to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 3, ptr %txn, align 4
  %35 = ptrtoint ptr %num_bytes to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %num_bytes, align 2
  %36 = ptrtoint ptr %wbuf to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %wbuf, align 4
  %call78 = call i32 @slim_do_transfer(ptr noundef %ctrl, ptr noundef nonnull %txn) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.else, label %clk_pause_ret.if.then80_crit_edge

clk_pause_ret.if.then80_crit_edge:                ; preds = %clk_pause_ret
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then80

if.then80:                                        ; preds = %clk_pause_ret.if.then80_crit_edge, %if.end67.if.then80_crit_edge, %for.end.if.then80_crit_edge
  %ret.1135 = phi i32 [ %call78, %clk_pause_ret.if.then80_crit_edge ], [ %call70, %if.end67.if.then80_crit_edge ], [ %call64, %for.end.if.then80_crit_edge ]
  %37 = ptrtoint ptr %sched1 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %sched1, align 4
  br label %if.end84

if.else:                                          ; preds = %clk_pause_ret
  call void @__sanitizer_cov_trace_pc() #6
  %38 = ptrtoint ptr %sched1 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 2, ptr %sched1, align 4
  %pause_comp83 = getelementptr inbounds %struct.slim_controller, ptr %ctrl, i32 0, i32 12, i32 1
  call void @complete(ptr noundef %pause_comp83) #4
  br label %if.end84

if.end84:                                         ; preds = %if.else, %if.then80
  %ret.1134 = phi i32 [ 0, %if.else ], [ %ret.1135, %if.then80 ]
  call void @mutex_unlock(ptr noundef %m_reconf) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end84, %if.then58, %if.then40, %if.end33, %if.then16, %if.then11, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then11 ], [ %ret.0130, %if.end33 ], [ -110, %if.then16 ], [ 0, %if.then40 ], [ -16, %if.then58 ], [ %ret.1134, %if.end84 ], [ -22, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %txn) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @slim_do_transfer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/slimbus/sched.c", i32 53, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @slim_ctrl_clk_pause._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @slim_ctrl_clk_pause._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__ksymtab_slim_ctrl_clk_pause, !7, !"__ksymtab_slim_ctrl_clk_pause", i1 false, i1 false}
!7 = !{!"../drivers/slimbus/sched.c", i32 121, i32 1}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
