; ModuleID = '/llk/IR_all_yes/drivers/tee/optee/supp.c_pt.bc'
source_filename = "../drivers/tee/optee/supp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.optee_supp = type { %struct.mutex, ptr, i32, %struct.list_head, %struct.idr, %struct.completion }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.optee_supp_req = type { %struct.list_head, i8, i32, i32, i32, ptr, %struct.completion }
%struct.optee = type { ptr, ptr, ptr, ptr, %union.anon.42, %struct.optee_call_queue, %struct.optee_notif, %struct.optee_supp, ptr, i32, i8, ptr, %struct.work_struct }
%union.anon.42 = type { %struct.optee_ffa }
%struct.optee_ffa = type { ptr, ptr, %struct.mutex, %struct.rhashtable }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.optee_call_queue = type { %struct.mutex, %struct.list_head }
%struct.optee_notif = type { i32, %struct.spinlock, %struct.list_head, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tee_context = type { ptr, ptr, %struct.kref, i8, i8, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.tee_param = type { i64, %union.anon.2 }
%union.anon.2 = type { %struct.tee_param_value }
%struct.tee_param_value = type { i64, i64, i64 }
%struct.tee_param_memref = type { i32, i32, ptr }

@optee_supp_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&supp->mutex\00", [19 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 64, i64 0, i64 256]
@__sancov_gen_cov_switch_values.3 = internal global [6 x i64] [i64 4, i64 8, i64 2, i64 3, i64 6, i64 7]
@___asan_gen_.8 = private constant [28 x i8] c"../drivers/tee/optee/supp.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 25, i32 2 }
@___asan_gen_.14 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 87, i32 2 }
@___asan_gen_.16 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 378, i32 2 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @optee_supp_init.__key, ptr @.str, ptr @init_completion.__key, ptr @.str.1, ptr @xa_init_flags.__key, ptr @.str.2], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @optee_supp_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @optee_supp_init(ptr noundef %supp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %supp, i32 0, i32 224)
  tail call void @__mutex_init(ptr noundef %supp, ptr noundef nonnull @.str, ptr noundef nonnull @optee_supp_init.__key) #5
  %reqs_c = getelementptr inbounds %struct.optee_supp, ptr %supp, i32 0, i32 5
  %1 = ptrtoint ptr %reqs_c to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %reqs_c, align 4
  %wait.i = getelementptr inbounds %struct.optee_supp, ptr %supp, i32 0, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @init_completion.__key) #5
  %idr = getelementptr inbounds %struct.optee_supp, ptr %supp, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %idr, ptr noundef nonnull @.str.2, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #5
  %xa_flags.i.i.i = getelementptr inbounds %struct.optee_supp, ptr %supp, i32 0, i32 4, i32 0, i32 1
  %2 = ptrtoint ptr %xa_flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 67108868, ptr %xa_flags.i.i.i, align 4
  %xa_head.i.i.i = getelementptr inbounds %struct.optee_supp, ptr %supp, i32 0, i32 4, i32 0, i32 2
  %3 = ptrtoint ptr %xa_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %xa_head.i.i.i, align 4
  %idr_base.i.i = getelementptr inbounds %struct.optee_supp, ptr %supp, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %idr_base.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %idr_base.i.i, align 4
  %idr_next.i.i = getelementptr inbounds %struct.optee_supp, ptr %supp, i32 0, i32 4, i32 2
  %5 = ptrtoint ptr %idr_next.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %idr_next.i.i, align 4
  %reqs = getelementptr inbounds %struct.optee_supp, ptr %supp, i32 0, i32 3
  %6 = ptrtoint ptr %reqs to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %reqs, ptr %reqs, align 4
  %prev.i = getelementptr inbounds %struct.optee_supp, ptr %supp, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %reqs, ptr %prev.i, align 4
  %req_id = getelementptr inbounds %struct.optee_supp, ptr %supp, i32 0, i32 2
  %8 = ptrtoint ptr %req_id to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %req_id, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @optee_supp_uninit(ptr noundef %supp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_destroy(ptr noundef %supp) #5
  %idr = getelementptr inbounds %struct.optee_supp, ptr %supp, i32 0, i32 4
  tail call void @idr_destroy(ptr noundef %idr) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @optee_supp_release(ptr noundef %supp) local_unnamed_addr #0 align 64 {
entry:
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #5
  tail call void @mutex_lock_nested(ptr noundef %supp, i32 noundef 0) #5
  %idr = getelementptr inbounds %struct.optee_supp, ptr %supp, i32 0, i32 4
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %id, align 4
  %call38 = call ptr @idr_get_next(ptr noundef %idr, ptr noundef nonnull %id) #5
  %cmp.not39 = icmp eq ptr %call38, null
  br i1 %cmp.not39, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %call40 = phi ptr [ %call, %for.body.for.body_crit_edge ], [ %call38, %entry.for.body_crit_edge ]
  %1 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id, align 4
  %call2 = call ptr @idr_remove(ptr noundef %idr, i32 noundef %2) #5
  %ret = getelementptr inbounds %struct.optee_supp_req, ptr %call40, i32 0, i32 3
  %3 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -65522, ptr %ret, align 4
  %c = getelementptr inbounds %struct.optee_supp_req, ptr %call40, i32 0, i32 6
  call void @complete(ptr noundef %c) #5
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %add = add i32 %5, 1
  store i32 %add, ptr %id, align 4
  %call = call ptr @idr_get_next(ptr noundef %idr, ptr noundef nonnull %id) #5
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %reqs = getelementptr inbounds %struct.optee_supp, ptr %supp, i32 0, i32 3
  %6 = ptrtoint ptr %reqs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reqs, align 4
  %cmp10.not41 = icmp eq ptr %7, %reqs
  br i1 %cmp10.not41, label %for.end.for.end21_crit_edge, label %for.end.for.body11_crit_edge

for.end.for.body11_crit_edge:                     ; preds = %for.end
  br label %for.body11

for.end.for.end21_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end21

for.body11:                                       ; preds = %list_del.exit.for.body11_crit_edge, %for.end.for.body11_crit_edge
  %req.042 = phi ptr [ %req_tmp.0, %list_del.exit.for.body11_crit_edge ], [ %7, %for.end.for.body11_crit_edge ]
  %8 = ptrtoint ptr %req.042 to i32
  call void @__asan_load4_noabort(i32 %8)
  %req_tmp.0 = load ptr, ptr %req.042, align 4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %req.042) #5
  br i1 %call.i.i, label %if.end.i.i, label %for.body11.list_del.exit_crit_edge

for.body11.list_del.exit_crit_edge:               ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %req.042, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %req.042 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %req.042, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body11.list_del.exit_crit_edge
  %15 = ptrtoint ptr %req.042 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %req.042, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %req.042, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %in_queue = getelementptr inbounds %struct.optee_supp_req, ptr %req.042, i32 0, i32 1
  %17 = ptrtoint ptr %in_queue to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %in_queue, align 4
  %ret13 = getelementptr inbounds %struct.optee_supp_req, ptr %req.042, i32 0, i32 3
  %18 = ptrtoint ptr %ret13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -65522, ptr %ret13, align 4
  %c14 = getelementptr inbounds %struct.optee_supp_req, ptr %req.042, i32 0, i32 6
  call void @complete(ptr noundef %c14) #5
  %cmp10.not = icmp eq ptr %req_tmp.0, %reqs
  br i1 %cmp10.not, label %list_del.exit.for.end21_crit_edge, label %list_del.exit.for.body11_crit_edge

list_del.exit.for.body11_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body11

list_del.exit.for.end21_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end21

for.end21:                                        ; preds = %list_del.exit.for.end21_crit_edge, %for.end.for.end21_crit_edge
  %ctx = getelementptr inbounds %struct.optee_supp, ptr %supp, i32 0, i32 1
  %19 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %ctx, align 4
  %req_id = getelementptr inbounds %struct.optee_supp, ptr %supp, i32 0, i32 2
  %20 = ptrtoint ptr %req_id to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %req_id, align 4
  call void @mutex_unlock(ptr noundef %supp) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_get_next(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @optee_supp_thrd_req(ptr nocapture noundef readonly %ctx, i32 noundef %func, i32 noundef %num_params, ptr noundef %param) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %call = tail call ptr @tee_get_drvdata(ptr noundef %1) #5
  %supp1 = getelementptr inbounds %struct.optee, ptr %call, i32 0, i32 7
  %ctx2 = getelementptr inbounds %struct.optee, ptr %call, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %ctx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx2, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %supp_nowait = getelementptr inbounds %struct.tee_context, ptr %ctx, i32 0, i32 4
  %4 = ptrtoint ptr %supp_nowait to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %supp_nowait, align 1, !range !18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 84) #8
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %c = getelementptr inbounds %struct.optee_supp_req, ptr %call7.i.i, i32 0, i32 6
  %7 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %c, align 4
  %wait.i = getelementptr inbounds %struct.optee_supp_req, ptr %call7.i.i, i32 0, i32 6, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @init_completion.__key) #5
  %func8 = getelementptr inbounds %struct.optee_supp_req, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %func8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %func, ptr %func8, align 4
  %num_params9 = getelementptr inbounds %struct.optee_supp_req, ptr %call7.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %num_params9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %num_params, ptr %num_params9, align 4
  %param10 = getelementptr inbounds %struct.optee_supp_req, ptr %call7.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %param10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %param, ptr %param10, align 8
  tail call void @mutex_lock_nested(ptr noundef %supp1, i32 noundef 0) #5
  %reqs = getelementptr inbounds %struct.optee, ptr %call, i32 0, i32 7, i32 3
  %prev.i = getelementptr inbounds %struct.optee, ptr %call, i32 0, i32 7, i32 3, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %12, ptr noundef %reqs) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.end7.list_add_tail.exit_crit_edge

if.end7.list_add_tail.exit_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %reqs, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev3.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %call7.i.i, ptr %12, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end7.list_add_tail.exit_crit_edge
  %in_queue = getelementptr inbounds %struct.optee_supp_req, ptr %call7.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %in_queue to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %in_queue, align 8
  tail call void @mutex_unlock(ptr noundef %supp1) #5
  %reqs_c = getelementptr inbounds %struct.optee, ptr %call, i32 0, i32 7, i32 5
  tail call void @complete(ptr noundef %reqs_c) #5
  %call1363 = tail call i32 @wait_for_completion_interruptible(ptr noundef %c) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1363)
  %tobool14.not64 = icmp eq i32 %call1363, 0
  br i1 %tobool14.not64, label %list_add_tail.exit.while.end_crit_edge, label %list_add_tail.exit.while.body_crit_edge

list_add_tail.exit.while.body_crit_edge:          ; preds = %list_add_tail.exit
  br label %while.body

list_add_tail.exit.while.end_crit_edge:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.cond.critedge:                              ; preds = %while.body
  tail call void @mutex_unlock(ptr noundef %supp1) #5
  %call13 = tail call i32 @wait_for_completion_interruptible(ptr noundef %c) #5
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %while.cond.critedge.while.end_crit_edge, label %while.cond.critedge.while.body_crit_edge

while.cond.critedge.while.body_crit_edge:         ; preds = %while.cond.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.cond.critedge.while.end_crit_edge:          ; preds = %while.cond.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body:                                       ; preds = %while.cond.critedge.while.body_crit_edge, %list_add_tail.exit.while.body_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %supp1, i32 noundef 0) #5
  %18 = ptrtoint ptr %ctx2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctx2, align 4
  %tobool17.not = icmp eq ptr %19, null
  br i1 %tobool17.not, label %if.then19, label %while.cond.critedge

if.then19:                                        ; preds = %while.body
  %20 = ptrtoint ptr %in_queue to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %in_queue, align 8, !range !18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool21.not = icmp eq i8 %21, 0
  br i1 %tobool21.not, label %if.then19.if.then29_crit_edge, label %if.then22

if.then19.if.then29_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then29

if.then22:                                        ; preds = %if.then19
  %call.i.i60 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call7.i.i) #5
  br i1 %call.i.i60, label %if.end.i.i61, label %if.then22.list_del.exit_crit_edge

if.then22.list_del.exit_crit_edge:                ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i61:                                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i, align 4
  %24 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call7.i.i, align 8
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i61, %if.then22.list_del.exit_crit_edge
  %28 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 256 to ptr), ptr %call7.i.i, align 8
  %prev.i62 = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i62 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i62, align 4
  %30 = ptrtoint ptr %in_queue to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %in_queue, align 8
  br label %if.then29

if.then29:                                        ; preds = %list_del.exit, %if.then19.if.then29_crit_edge
  tail call void @mutex_unlock(ptr noundef %supp1) #5
  %ret30 = getelementptr inbounds %struct.optee_supp_req, ptr %call7.i.i, i32 0, i32 3
  %31 = ptrtoint ptr %ret30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -65522, ptr %ret30, align 8
  br label %while.end

while.end:                                        ; preds = %if.then29, %while.cond.critedge.while.end_crit_edge, %list_add_tail.exit.while.end_crit_edge
  %ret32 = getelementptr inbounds %struct.optee_supp_req, ptr %call7.i.i, i32 0, i32 3
  %32 = ptrtoint ptr %ret32 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ret32, align 8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %33, %while.end ], [ -65522, %land.lhs.true.cleanup_crit_edge ], [ -65524, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tee_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @optee_supp_recv(ptr nocapture noundef readonly %ctx, ptr nocapture noundef writeonly %func, ptr nocapture noundef %num_params, ptr nocapture noundef %param) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %call = tail call ptr @tee_get_drvdata(ptr noundef %1) #5
  %supp2 = getelementptr inbounds %struct.optee, ptr %call, i32 0, i32 7
  %2 = ptrtoint ptr %num_params to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body9.preheader.i:                            ; preds = %for.inc.i
  %umax.i = tail call i32 @llvm.umax.i32(i32 %3, i32 1) #5
  br label %for.body9.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %n.043.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr %struct.tee_param, ptr %param, i32 %n.043.i
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %add.ptr.i, align 8
  %trunc.i.i = trunc i64 %5 to i8
  %trunc.off.i.i = add i8 %trunc.i.i, -5
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %trunc.off.i.i)
  %switch.i.i = icmp ult i8 %trunc.off.i.i, 3
  br i1 %switch.i.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %shm.i = getelementptr %struct.tee_param, ptr %param, i32 %n.043.i, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %shm.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shm.i, align 8
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %if.then2.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then2.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @tee_shm_put(ptr noundef nonnull %7) #5
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then2.i, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %n.043.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.body9.preheader.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body9.i:                                      ; preds = %for.inc18.i.for.body9.i_crit_edge, %for.body9.preheader.i
  %n.146.i = phi i32 [ %inc19.i, %for.inc18.i.for.body9.i_crit_edge ], [ 0, %for.body9.preheader.i ]
  %arrayidx10.i = getelementptr %struct.tee_param, ptr %param, i32 %n.146.i
  %8 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx10.i, align 8
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i64 %9, label %for.body9.i.cleanup_crit_edge [
    i64 0, label %for.body9.i.for.inc18.i_crit_edge
    i64 256, label %for.body9.i.for.inc18.i_crit_edge88
  ]

for.body9.i.for.inc18.i_crit_edge88:              ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc18.i

for.body9.i.for.inc18.i_crit_edge:                ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc18.i

for.body9.i.cleanup_crit_edge:                    ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc18.i:                                      ; preds = %for.body9.i.for.inc18.i_crit_edge, %for.body9.i.for.inc18.i_crit_edge88
  %inc19.i = add nuw i32 %n.146.i, 1
  %exitcond47.not.i = icmp eq i32 %inc19.i, %umax.i
  br i1 %exitcond47.not.i, label %supp_check_recv_params.exit, label %for.inc18.i.for.body9.i_crit_edge

for.inc18.i.for.body9.i_crit_edge:                ; preds = %for.inc18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body9.i

supp_check_recv_params.exit:                      ; preds = %for.inc18.i
  %10 = ptrtoint ptr %param to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %param, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 256, i64 %11)
  %cmp22.i = icmp eq i64 %11, 256
  %..i = zext i1 %cmp22.i to i32
  %req_id.i = getelementptr inbounds %struct.optee, ptr %call, i32 0, i32 7, i32 2
  %reqs.i = getelementptr inbounds %struct.optee, ptr %call, i32 0, i32 7, i32 3
  %idr.i = getelementptr inbounds %struct.optee, ptr %call, i32 0, i32 7, i32 4
  %reqs_c = getelementptr inbounds %struct.optee, ptr %call, i32 0, i32 7, i32 5
  br label %while.cond

while.cond:                                       ; preds = %if.end12.while.cond_crit_edge, %supp_check_recv_params.exit
  tail call void @mutex_lock_nested(ptr noundef %supp2, i32 noundef 0) #5
  %12 = ptrtoint ptr %num_params to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_params, align 4
  %sub = sub i32 %13, %..i
  %14 = ptrtoint ptr %req_id.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %req_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp.not.i = icmp eq i32 %15, -1
  br i1 %cmp.not.i, label %if.end.i, label %while.cond.if.then7.thread_crit_edge

while.cond.if.then7.thread_crit_edge:             ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7.thread

if.end.i:                                         ; preds = %while.cond
  %16 = ptrtoint ptr %reqs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %reqs.i, align 4
  %cmp.i.not.i = icmp eq ptr %17, %reqs.i
  br i1 %cmp.i.not.i, label %supp_pop_entry.exit.thread66, label %if.end3.i

supp_pop_entry.exit.thread66:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mutex_unlock(ptr noundef %supp2) #5
  br label %if.end12

if.end3.i:                                        ; preds = %if.end.i
  %num_params5.i = getelementptr inbounds %struct.optee_supp_req, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %num_params5.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_params5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %sub)
  %cmp6.i = icmp ugt i32 %19, %sub
  br i1 %cmp6.i, label %if.end3.i.if.then7.thread_crit_edge, label %if.end9.i

if.end3.i.if.then7.thread_crit_edge:              ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7.thread

if.end9.i:                                        ; preds = %if.end3.i
  %call10.i = tail call i32 @idr_alloc(ptr noundef %idr.i, ptr noundef %17, i32 noundef 1, i32 noundef 0, i32 noundef 3264) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %if.end9.i.if.then7.thread_crit_edge, label %if.end14.i

if.end9.i.if.then7.thread_crit_edge:              ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7.thread

if.end14.i:                                       ; preds = %if.end9.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %17) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end14.i.supp_pop_entry.exit_crit_edge

if.end14.i.supp_pop_entry.exit_crit_edge:         ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %supp_pop_entry.exit

if.end.i.i.i:                                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i.i, align 4
  %22 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %17, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %supp_pop_entry.exit

if.then7.thread:                                  ; preds = %if.end9.i.if.then7.thread_crit_edge, %if.end3.i.if.then7.thread_crit_edge, %while.cond.if.then7.thread_crit_edge
  %retval.0.i54.ph = phi ptr [ inttoptr (i32 -12 to ptr), %if.end9.i.if.then7.thread_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end3.i.if.then7.thread_crit_edge ], [ inttoptr (i32 -22 to ptr), %while.cond.if.then7.thread_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %supp2) #5
  br label %if.then9

supp_pop_entry.exit:                              ; preds = %if.end.i.i.i, %if.end14.i.supp_pop_entry.exit_crit_edge
  %26 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 256 to ptr), ptr %17, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %in_queue.i = getelementptr inbounds %struct.optee_supp_req, ptr %17, i32 0, i32 1
  %28 = ptrtoint ptr %in_queue.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %in_queue.i, align 4
  tail call void @mutex_unlock(ptr noundef %supp2) #5
  %tobool6.not = icmp eq ptr %17, null
  br i1 %tobool6.not, label %supp_pop_entry.exit.if.end12_crit_edge, label %if.then7

supp_pop_entry.exit.if.end12_crit_edge:           ; preds = %supp_pop_entry.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then7:                                         ; preds = %supp_pop_entry.exit
  %num_params5.i.le = getelementptr inbounds %struct.optee_supp_req, ptr %17, i32 0, i32 4
  %cmp.i = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7.if.then9_crit_edge, label %while.end

if.then7.if.then9_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then9

if.then9:                                         ; preds = %if.then7.if.then9_crit_edge, %if.then7.thread
  %retval.0.i546574 = phi ptr [ %retval.0.i54.ph, %if.then7.thread ], [ %17, %if.then7.if.then9_crit_edge ]
  %29 = ptrtoint ptr %retval.0.i546574 to i32
  br label %cleanup

if.end12:                                         ; preds = %supp_pop_entry.exit.if.end12_crit_edge, %supp_pop_entry.exit.thread66
  %call13 = tail call i32 @wait_for_completion_interruptible(ptr noundef %reqs_c) #5
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end12.while.cond_crit_edge, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12.while.cond_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

while.end:                                        ; preds = %if.then7
  br i1 %cmp22.i, label %if.then18, label %if.else

if.then18:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %param to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 259, ptr %param, align 8
  %conv75 = zext i32 %call10.i to i64
  %u = getelementptr inbounds %struct.tee_param, ptr %param, i32 0, i32 1
  %31 = ptrtoint ptr %u to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %conv75, ptr %u, align 8
  %b = getelementptr inbounds %struct.tee_param, ptr %param, i32 0, i32 1, i32 0, i32 1
  %32 = call ptr @memset(ptr %b, i32 0, i32 16)
  br label %if.end23

if.else:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mutex_lock_nested(ptr noundef %supp2, i32 noundef 0) #5
  %33 = ptrtoint ptr %req_id.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call10.i, ptr %req_id.i, align 4
  tail call void @mutex_unlock(ptr noundef %supp2) #5
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then18
  %func24 = getelementptr inbounds %struct.optee_supp_req, ptr %17, i32 0, i32 2
  %34 = ptrtoint ptr %func24 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %func24, align 4
  %36 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %func, align 4
  %37 = ptrtoint ptr %num_params5.i.le to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_params5.i.le, align 4
  %add = add i32 %38, %..i
  %39 = ptrtoint ptr %num_params to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %add, ptr %num_params, align 4
  %add.ptr = getelementptr %struct.tee_param, ptr %param, i32 %..i
  %param26 = getelementptr inbounds %struct.optee_supp_req, ptr %17, i32 0, i32 5
  %40 = ptrtoint ptr %param26 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %param26, align 4
  %42 = load i32, ptr %num_params5.i.le, align 4
  %mul = shl i32 %42, 5
  %43 = call ptr @memcpy(ptr %add.ptr, ptr %41, i32 %mul)
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end12.cleanup_crit_edge, %if.then9, %for.body9.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %29, %if.then9 ], [ 0, %if.end23 ], [ -22, %entry.cleanup_crit_edge ], [ -512, %if.end12.cleanup_crit_edge ], [ -22, %for.body9.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @optee_supp_send(ptr nocapture noundef readonly %ctx, i32 noundef %ret, i32 noundef %num_params, ptr nocapture noundef readonly %param) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %call = tail call ptr @tee_get_drvdata(ptr noundef %1) #5
  %supp2 = getelementptr inbounds %struct.optee, ptr %call, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %supp2, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_params)
  %tobool.not.i = icmp eq i32 %num_params, 0
  br i1 %tobool.not.i, label %entry.supp_pop_req.exit.thread_crit_edge, label %if.end.i

entry.supp_pop_req.exit.thread_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %supp_pop_req.exit.thread

if.end.i:                                         ; preds = %entry
  %req_id.i = getelementptr inbounds %struct.optee, ptr %call, i32 0, i32 7, i32 2
  %2 = ptrtoint ptr %req_id.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %req_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.i = icmp eq i32 %3, -1
  br i1 %cmp.i, label %if.then1.i, label %if.end.i.if.end8.i_crit_edge

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i

if.then1.i:                                       ; preds = %if.end.i
  %4 = ptrtoint ptr %param to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %param, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 259, i64 %5)
  %cmp3.not.i = icmp eq i64 %5, 259
  br i1 %cmp3.not.i, label %if.end6.i, label %if.then1.i.supp_pop_req.exit.thread_crit_edge

if.then1.i.supp_pop_req.exit.thread_crit_edge:    ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %supp_pop_req.exit.thread

if.end6.i:                                        ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #7
  %u.i = getelementptr inbounds %struct.tee_param, ptr %param, i32 0, i32 1
  %6 = ptrtoint ptr %u.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %u.i, align 8
  %conv.i = trunc i64 %7 to i32
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.end6.i, %if.end.i.if.end8.i_crit_edge
  %id.0.i = phi i32 [ %conv.i, %if.end6.i ], [ %3, %if.end.i.if.end8.i_crit_edge ]
  %nm.0.i = phi i32 [ 1, %if.end6.i ], [ 0, %if.end.i.if.end8.i_crit_edge ]
  %idr.i = getelementptr inbounds %struct.optee, ptr %call, i32 0, i32 7, i32 4
  %call9.i = tail call ptr @idr_find(ptr noundef %idr.i, i32 noundef %id.0.i) #5
  %tobool10.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool10.not.i, label %if.end8.i.supp_pop_req.exit.thread_crit_edge, label %if.end13.i

if.end8.i.supp_pop_req.exit.thread_crit_edge:     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %supp_pop_req.exit.thread

if.end13.i:                                       ; preds = %if.end8.i
  %sub.i = sub nuw i32 %num_params, %nm.0.i
  %num_params14.i = getelementptr inbounds %struct.optee_supp_req, ptr %call9.i, i32 0, i32 4
  %8 = ptrtoint ptr %num_params14.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_params14.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %9)
  %cmp15.not.i = icmp eq i32 %sub.i, %9
  br i1 %cmp15.not.i, label %supp_pop_req.exit, label %if.end13.i.supp_pop_req.exit.thread_crit_edge

if.end13.i.supp_pop_req.exit.thread_crit_edge:    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %supp_pop_req.exit.thread

supp_pop_req.exit.thread:                         ; preds = %if.end13.i.supp_pop_req.exit.thread_crit_edge, %if.end8.i.supp_pop_req.exit.thread_crit_edge, %if.then1.i.supp_pop_req.exit.thread_crit_edge, %entry.supp_pop_req.exit.thread_crit_edge
  %retval.0.i.ph = phi ptr [ inttoptr (i32 -22 to ptr), %if.end13.i.supp_pop_req.exit.thread_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.end8.i.supp_pop_req.exit.thread_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then1.i.supp_pop_req.exit.thread_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.supp_pop_req.exit.thread_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %supp2) #5
  br label %if.then

supp_pop_req.exit:                                ; preds = %if.end13.i
  %call21.i = tail call ptr @idr_remove(ptr noundef %idr.i, i32 noundef %id.0.i) #5
  %10 = ptrtoint ptr %req_id.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %req_id.i, align 4
  tail call void @mutex_unlock(ptr noundef %supp2) #5
  %cmp.i55 = icmp ugt ptr %call9.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i55, label %supp_pop_req.exit.if.then_crit_edge, label %for.cond.preheader

supp_pop_req.exit.if.then_crit_edge:              ; preds = %supp_pop_req.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

for.cond.preheader:                               ; preds = %supp_pop_req.exit
  %11 = ptrtoint ptr %num_params14.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_params14.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp62.not = icmp eq i32 %12, 0
  br i1 %cmp62.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %param8 = getelementptr inbounds %struct.optee_supp_req, ptr %call9.i, i32 0, i32 5
  br label %for.body

if.then:                                          ; preds = %supp_pop_req.exit.if.then_crit_edge, %supp_pop_req.exit.thread
  %retval.0.i61 = phi ptr [ %retval.0.i.ph, %supp_pop_req.exit.thread ], [ %call9.i, %supp_pop_req.exit.if.then_crit_edge ]
  %13 = ptrtoint ptr %retval.0.i61 to i32
  br label %cleanup

for.body:                                         ; preds = %sw.epilog.for.body_crit_edge, %for.body.lr.ph
  %n.063 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %sw.epilog.for.body_crit_edge ]
  %14 = ptrtoint ptr %param8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %param8, align 4
  %add.ptr = getelementptr %struct.tee_param, ptr %15, i32 %n.063
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %add.ptr, align 8
  %trunc = trunc i64 %17 to i8
  %18 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.3)
  switch i8 %trunc, label %for.body.sw.epilog_crit_edge [
    i8 2, label %for.body.sw.bb_crit_edge
    i8 3, label %for.body.sw.bb_crit_edge65
    i8 6, label %for.body.sw.bb21_crit_edge
    i8 7, label %for.body.sw.bb21_crit_edge66
  ]

for.body.sw.bb21_crit_edge66:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb21

for.body.sw.bb21_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb21

for.body.sw.bb_crit_edge65:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

for.body.sw.bb_crit_edge:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %for.body.sw.bb_crit_edge, %for.body.sw.bb_crit_edge65
  %add = add nuw i32 %n.063, %nm.0.i
  %u = getelementptr %struct.tee_param, ptr %param, i32 %add, i32 1
  %19 = ptrtoint ptr %u to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %u, align 8
  %u9 = getelementptr %struct.tee_param, ptr %15, i32 %n.063, i32 1
  %21 = ptrtoint ptr %u9 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %u9, align 8
  %b = getelementptr %struct.tee_param, ptr %param, i32 %add, i32 1, i32 0, i32 1
  %22 = ptrtoint ptr %b to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %b, align 8
  %b15 = getelementptr inbounds %struct.tee_param_value, ptr %u9, i32 0, i32 1
  %24 = ptrtoint ptr %b15 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %b15, align 8
  %c = getelementptr %struct.tee_param, ptr %param, i32 %add, i32 1, i32 0, i32 2
  %25 = ptrtoint ptr %c to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %c, align 8
  %c20 = getelementptr inbounds %struct.tee_param_value, ptr %u9, i32 0, i32 2
  %27 = ptrtoint ptr %c20 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %c20, align 8
  br label %sw.epilog

sw.bb21:                                          ; preds = %for.body.sw.bb21_crit_edge, %for.body.sw.bb21_crit_edge66
  %add22 = add nuw i32 %n.063, %nm.0.i
  %u24 = getelementptr %struct.tee_param, ptr %param, i32 %add22, i32 1
  %size = getelementptr inbounds %struct.tee_param_memref, ptr %u24, i32 0, i32 1
  %28 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %size, align 4
  %u25 = getelementptr %struct.tee_param, ptr %15, i32 %n.063, i32 1
  %size26 = getelementptr inbounds %struct.tee_param_memref, ptr %u25, i32 0, i32 1
  %30 = ptrtoint ptr %size26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %size26, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb21, %sw.bb, %for.body.sw.epilog_crit_edge
  %inc = add nuw i32 %n.063, 1
  %31 = ptrtoint ptr %num_params14.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_params14.i, align 4
  %cmp = icmp ult i32 %inc, %32
  br i1 %cmp, label %sw.epilog.for.body_crit_edge, label %sw.epilog.for.end_crit_edge

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %sw.epilog.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %ret27 = getelementptr inbounds %struct.optee_supp_req, ptr %call9.i, i32 0, i32 3
  %33 = ptrtoint ptr %ret27 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %ret, ptr %ret27, align 4
  %c28 = getelementptr inbounds %struct.optee_supp_req, ptr %call9.i, i32 0, i32 6
  tail call void @complete(ptr noundef %c28) #5
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %retval.0 = phi i32 [ %13, %if.then ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tee_shm_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @optee_supp_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/tee/optee/supp.c", i32 25, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @init_completion.__key, !4, !"__key", i1 false, i1 false}
!4 = !{!"../include/linux/completion.h", i32 87, i32 2}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @xa_init_flags.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!18 = !{i8 0, i8 2}
