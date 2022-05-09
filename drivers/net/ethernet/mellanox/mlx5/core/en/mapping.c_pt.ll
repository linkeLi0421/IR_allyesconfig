; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/en/mapping.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/en/mapping.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mapping_ctx = type { %struct.xarray, [256 x %struct.hlist_head], %struct.mutex, i32, i32, i8, %struct.delayed_work, %struct.list_head, %struct.spinlock, i64, i8, %struct.list_head, %struct.refcount_struct }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mapping_item = type { %struct.callback_head, %struct.list_head, i32, %struct.hlist_node, i32, i32, [0 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@mapping_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&(&ctx->dwork)->work)\00", [56 x i8] zeroinitializer }, align 32
@mapping_create.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&(&ctx->dwork)->timer\00", [42 x i8] zeroinitializer }, align 32
@mapping_create.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&ctx->pending_list_lock\00", [40 x i8] zeroinitializer }, align 32
@mapping_create.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&ctx->lock\00", [21 x i8] zeroinitializer }, align 32
@shared_ctx_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @shared_ctx_lock, i64 52), ptr getelementptr (i8, ptr @shared_ctx_lock, i64 52) }, ptr @shared_ctx_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@shared_ctx_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @shared_ctx_list, ptr @shared_ctx_list }, [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"shared_ctx_lock.wait_lock\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"shared_ctx_lock\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 207, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 209, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 213, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant [16 x i8] c"shared_ctx_lock\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [16 x i8] c"shared_ctx_list\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 14, i32 8 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 695, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 723, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 378, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.62 = private constant [56 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/en/mapping.c\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 15, i32 8 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @mapping_create.__key, ptr @.str, ptr @mapping_create.__key.1, ptr @.str.2, ptr @mapping_create.__key.3, ptr @.str.4, ptr @mapping_create.__key.5, ptr @.str.6, ptr @shared_ctx_lock, ptr @shared_ctx_list, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @xa_init_flags.__key, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mapping_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mapping_create.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mapping_create.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mapping_create.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shared_ctx_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shared_ctx_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mapping_add(ptr noundef %ctx, ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mapping_ctx, ptr %ctx, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %data_size = getelementptr inbounds %struct.mapping_ctx, ptr %ctx, i32 0, i32 4
  %0 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_size, align 4
  %add.i = add i32 %1, -559038737
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %1)
  %cmp13.i = icmp ugt i32 %1, 12
  br i1 %cmp13.i, label %entry.while.body.i_crit_edge, label %entry.while.end.i_crit_edge

entry.while.end.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %k.018.i = phi ptr [ %add.ptr31.i, %while.body.i.while.body.i_crit_edge ], [ %data, %entry.while.body.i_crit_edge ]
  %c.017.i = phi i32 [ %xor28.i, %while.body.i.while.body.i_crit_edge ], [ %add.i, %entry.while.body.i_crit_edge ]
  %b.016.i = phi i32 [ %add29.i, %while.body.i.while.body.i_crit_edge ], [ %add.i, %entry.while.body.i_crit_edge ]
  %a.015.i = phi i32 [ %add25.i, %while.body.i.while.body.i_crit_edge ], [ %add.i, %entry.while.body.i_crit_edge ]
  %length.addr.014.i = phi i32 [ %sub30.i, %while.body.i.while.body.i_crit_edge ], [ %1, %entry.while.body.i_crit_edge ]
  %2 = ptrtoint ptr %k.018.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %k.018.i, align 1
  %add2.i = add i32 %3, %a.015.i
  %add.ptr.i = getelementptr i8, ptr %k.018.i, i32 4
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %add.ptr.i, align 1
  %add4.i = add i32 %5, %b.016.i
  %add.ptr5.i = getelementptr i8, ptr %k.018.i, i32 8
  %6 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %add.ptr5.i, align 1
  %add7.i = add i32 %7, %c.017.i
  %sub.i = sub i32 %add2.i, %add7.i
  %or.i.i = tail call i32 @llvm.fshl.i32(i32 %add7.i, i32 %add7.i, i32 4) #10
  %xor.i = xor i32 %sub.i, %or.i.i
  %add9.i = add i32 %add7.i, %add4.i
  %sub10.i = sub i32 %add4.i, %xor.i
  %or.i1.i = tail call i32 @llvm.fshl.i32(i32 %xor.i, i32 %xor.i, i32 6) #10
  %xor12.i = xor i32 %sub10.i, %or.i1.i
  %add13.i = add i32 %xor.i, %add9.i
  %sub14.i = sub i32 %add9.i, %xor12.i
  %or.i2.i = tail call i32 @llvm.fshl.i32(i32 %xor12.i, i32 %xor12.i, i32 8) #10
  %xor16.i = xor i32 %sub14.i, %or.i2.i
  %add17.i = add i32 %xor12.i, %add13.i
  %sub18.i = sub i32 %add13.i, %xor16.i
  %or.i3.i = tail call i32 @llvm.fshl.i32(i32 %xor16.i, i32 %xor16.i, i32 16) #10
  %xor20.i = xor i32 %sub18.i, %or.i3.i
  %add21.i = add i32 %xor16.i, %add17.i
  %sub22.i = sub i32 %add17.i, %xor20.i
  %or.i4.i = tail call i32 @llvm.fshl.i32(i32 %xor20.i, i32 %xor20.i, i32 19) #10
  %xor24.i = xor i32 %sub22.i, %or.i4.i
  %add25.i = add i32 %xor20.i, %add21.i
  %sub26.i = sub i32 %add21.i, %xor24.i
  %or.i5.i = tail call i32 @llvm.fshl.i32(i32 %xor24.i, i32 %xor24.i, i32 4) #10
  %xor28.i = xor i32 %sub26.i, %or.i5.i
  %add29.i = add i32 %xor24.i, %add25.i
  %sub30.i = add i32 %length.addr.014.i, -12
  %add.ptr31.i = getelementptr i8, ptr %k.018.i, i32 12
  %cmp.i = icmp ugt i32 %sub30.i, 12
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %entry.while.end.i_crit_edge
  %length.addr.0.lcssa.i = phi i32 [ %1, %entry.while.end.i_crit_edge ], [ %sub30.i, %while.body.i.while.end.i_crit_edge ]
  %a.0.lcssa.i = phi i32 [ %add.i, %entry.while.end.i_crit_edge ], [ %add25.i, %while.body.i.while.end.i_crit_edge ]
  %b.0.lcssa.i = phi i32 [ %add.i, %entry.while.end.i_crit_edge ], [ %add29.i, %while.body.i.while.end.i_crit_edge ]
  %c.0.lcssa.i = phi i32 [ %add.i, %entry.while.end.i_crit_edge ], [ %xor28.i, %while.body.i.while.end.i_crit_edge ]
  %k.0.lcssa.i = phi ptr [ %data, %entry.while.end.i_crit_edge ], [ %add.ptr31.i, %while.body.i.while.end.i_crit_edge ]
  %8 = zext i32 %length.addr.0.lcssa.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %length.addr.0.lcssa.i, label %while.end.i.jhash.exit_crit_edge [
    i32 12, label %sw.bb.i
    i32 11, label %while.end.i.sw.bb33.i_crit_edge
    i32 10, label %while.end.i.sw.bb38.i_crit_edge
    i32 9, label %while.end.i.sw.bb43.i_crit_edge
    i32 8, label %while.end.i.sw.bb47.i_crit_edge
    i32 7, label %while.end.i.sw.bb52.i_crit_edge
    i32 6, label %while.end.i.sw.bb57.i_crit_edge
    i32 5, label %while.end.i.sw.bb62.i_crit_edge
    i32 4, label %while.end.i.sw.bb66.i_crit_edge
    i32 3, label %while.end.i.sw.bb71.i_crit_edge
    i32 2, label %while.end.i.sw.bb76.i_crit_edge
    i32 1, label %while.end.i.sw.bb81.i_crit_edge
  ]

while.end.i.sw.bb81.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb81.i

while.end.i.sw.bb76.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb76.i

while.end.i.sw.bb71.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb71.i

while.end.i.sw.bb66.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb66.i

while.end.i.sw.bb62.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb62.i

while.end.i.sw.bb57.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb57.i

while.end.i.sw.bb52.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb52.i

while.end.i.sw.bb47.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb47.i

while.end.i.sw.bb43.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb43.i

while.end.i.sw.bb38.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb38.i

while.end.i.sw.bb33.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb33.i

while.end.i.jhash.exit_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %jhash.exit

sw.bb.i:                                          ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr i8, ptr %k.0.lcssa.i, i32 11
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %10 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %add32.i = add i32 %shl.i, %c.0.lcssa.i
  br label %sw.bb33.i

sw.bb33.i:                                        ; preds = %sw.bb.i, %while.end.i.sw.bb33.i_crit_edge
  %c.1.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb33.i_crit_edge ], [ %add32.i, %sw.bb.i ]
  %arrayidx34.i = getelementptr i8, ptr %k.0.lcssa.i, i32 10
  %11 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx34.i, align 1
  %conv35.i = zext i8 %12 to i32
  %shl36.i = shl nuw nsw i32 %conv35.i, 16
  %add37.i = add i32 %shl36.i, %c.1.i
  br label %sw.bb38.i

sw.bb38.i:                                        ; preds = %sw.bb33.i, %while.end.i.sw.bb38.i_crit_edge
  %c.2.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb38.i_crit_edge ], [ %add37.i, %sw.bb33.i ]
  %arrayidx39.i = getelementptr i8, ptr %k.0.lcssa.i, i32 9
  %13 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx39.i, align 1
  %conv40.i = zext i8 %14 to i32
  %shl41.i = shl nuw nsw i32 %conv40.i, 8
  %add42.i = add i32 %shl41.i, %c.2.i
  br label %sw.bb43.i

sw.bb43.i:                                        ; preds = %sw.bb38.i, %while.end.i.sw.bb43.i_crit_edge
  %c.3.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb43.i_crit_edge ], [ %add42.i, %sw.bb38.i ]
  %arrayidx44.i = getelementptr i8, ptr %k.0.lcssa.i, i32 8
  %15 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx44.i, align 1
  %conv45.i = zext i8 %16 to i32
  %add46.i = add i32 %c.3.i, %conv45.i
  br label %sw.bb47.i

sw.bb47.i:                                        ; preds = %sw.bb43.i, %while.end.i.sw.bb47.i_crit_edge
  %c.4.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb47.i_crit_edge ], [ %add46.i, %sw.bb43.i ]
  %arrayidx48.i = getelementptr i8, ptr %k.0.lcssa.i, i32 7
  %17 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx48.i, align 1
  %conv49.i = zext i8 %18 to i32
  %shl50.i = shl nuw i32 %conv49.i, 24
  %add51.i = add i32 %shl50.i, %b.0.lcssa.i
  br label %sw.bb52.i

sw.bb52.i:                                        ; preds = %sw.bb47.i, %while.end.i.sw.bb52.i_crit_edge
  %b.1.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb52.i_crit_edge ], [ %add51.i, %sw.bb47.i ]
  %c.5.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb52.i_crit_edge ], [ %c.4.i, %sw.bb47.i ]
  %arrayidx53.i = getelementptr i8, ptr %k.0.lcssa.i, i32 6
  %19 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx53.i, align 1
  %conv54.i = zext i8 %20 to i32
  %shl55.i = shl nuw nsw i32 %conv54.i, 16
  %add56.i = add i32 %shl55.i, %b.1.i
  br label %sw.bb57.i

sw.bb57.i:                                        ; preds = %sw.bb52.i, %while.end.i.sw.bb57.i_crit_edge
  %b.2.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb57.i_crit_edge ], [ %add56.i, %sw.bb52.i ]
  %c.6.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb57.i_crit_edge ], [ %c.5.i, %sw.bb52.i ]
  %arrayidx58.i = getelementptr i8, ptr %k.0.lcssa.i, i32 5
  %21 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx58.i, align 1
  %conv59.i = zext i8 %22 to i32
  %shl60.i = shl nuw nsw i32 %conv59.i, 8
  %add61.i = add i32 %shl60.i, %b.2.i
  br label %sw.bb62.i

sw.bb62.i:                                        ; preds = %sw.bb57.i, %while.end.i.sw.bb62.i_crit_edge
  %b.3.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb62.i_crit_edge ], [ %add61.i, %sw.bb57.i ]
  %c.7.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb62.i_crit_edge ], [ %c.6.i, %sw.bb57.i ]
  %arrayidx63.i = getelementptr i8, ptr %k.0.lcssa.i, i32 4
  %23 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx63.i, align 1
  %conv64.i = zext i8 %24 to i32
  %add65.i = add i32 %b.3.i, %conv64.i
  br label %sw.bb66.i

sw.bb66.i:                                        ; preds = %sw.bb62.i, %while.end.i.sw.bb66.i_crit_edge
  %b.4.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb66.i_crit_edge ], [ %add65.i, %sw.bb62.i ]
  %c.8.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb66.i_crit_edge ], [ %c.7.i, %sw.bb62.i ]
  %arrayidx67.i = getelementptr i8, ptr %k.0.lcssa.i, i32 3
  %25 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx67.i, align 1
  %conv68.i = zext i8 %26 to i32
  %shl69.i = shl nuw i32 %conv68.i, 24
  %add70.i = add i32 %shl69.i, %a.0.lcssa.i
  br label %sw.bb71.i

sw.bb71.i:                                        ; preds = %sw.bb66.i, %while.end.i.sw.bb71.i_crit_edge
  %a.1.i = phi i32 [ %a.0.lcssa.i, %while.end.i.sw.bb71.i_crit_edge ], [ %add70.i, %sw.bb66.i ]
  %b.5.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb71.i_crit_edge ], [ %b.4.i, %sw.bb66.i ]
  %c.9.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb71.i_crit_edge ], [ %c.8.i, %sw.bb66.i ]
  %arrayidx72.i = getelementptr i8, ptr %k.0.lcssa.i, i32 2
  %27 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx72.i, align 1
  %conv73.i = zext i8 %28 to i32
  %shl74.i = shl nuw nsw i32 %conv73.i, 16
  %add75.i = add i32 %shl74.i, %a.1.i
  br label %sw.bb76.i

sw.bb76.i:                                        ; preds = %sw.bb71.i, %while.end.i.sw.bb76.i_crit_edge
  %a.2.i = phi i32 [ %a.0.lcssa.i, %while.end.i.sw.bb76.i_crit_edge ], [ %add75.i, %sw.bb71.i ]
  %b.6.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb76.i_crit_edge ], [ %b.5.i, %sw.bb71.i ]
  %c.10.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb76.i_crit_edge ], [ %c.9.i, %sw.bb71.i ]
  %arrayidx77.i = getelementptr i8, ptr %k.0.lcssa.i, i32 1
  %29 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx77.i, align 1
  %conv78.i = zext i8 %30 to i32
  %shl79.i = shl nuw nsw i32 %conv78.i, 8
  %add80.i = add i32 %shl79.i, %a.2.i
  br label %sw.bb81.i

sw.bb81.i:                                        ; preds = %sw.bb76.i, %while.end.i.sw.bb81.i_crit_edge
  %a.3.i = phi i32 [ %a.0.lcssa.i, %while.end.i.sw.bb81.i_crit_edge ], [ %add80.i, %sw.bb76.i ]
  %b.7.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb81.i_crit_edge ], [ %b.6.i, %sw.bb76.i ]
  %c.11.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb81.i_crit_edge ], [ %c.10.i, %sw.bb76.i ]
  %31 = ptrtoint ptr %k.0.lcssa.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %k.0.lcssa.i, align 1
  %conv83.i = zext i8 %32 to i32
  %add84.i = add i32 %a.3.i, %conv83.i
  %xor85.i = xor i32 %c.11.i, %b.7.i
  %or.i6.i = tail call i32 @llvm.fshl.i32(i32 %b.7.i, i32 %b.7.i, i32 14) #10
  %sub87.i = sub i32 %xor85.i, %or.i6.i
  %xor88.i = xor i32 %add84.i, %sub87.i
  %or.i7.i = tail call i32 @llvm.fshl.i32(i32 %sub87.i, i32 %sub87.i, i32 11) #10
  %sub90.i = sub i32 %xor88.i, %or.i7.i
  %xor91.i = xor i32 %sub90.i, %b.7.i
  %or.i8.i = tail call i32 @llvm.fshl.i32(i32 %sub90.i, i32 %sub90.i, i32 25) #10
  %sub93.i = sub i32 %xor91.i, %or.i8.i
  %xor94.i = xor i32 %sub93.i, %sub87.i
  %or.i9.i = tail call i32 @llvm.fshl.i32(i32 %sub93.i, i32 %sub93.i, i32 16) #10
  %sub96.i = sub i32 %xor94.i, %or.i9.i
  %xor97.i = xor i32 %sub96.i, %sub90.i
  %or.i10.i = tail call i32 @llvm.fshl.i32(i32 %sub96.i, i32 %sub96.i, i32 4) #10
  %sub99.i = sub i32 %xor97.i, %or.i10.i
  %xor100.i = xor i32 %sub99.i, %sub93.i
  %or.i11.i = tail call i32 @llvm.fshl.i32(i32 %sub99.i, i32 %sub99.i, i32 14) #10
  %sub102.i = sub i32 %xor100.i, %or.i11.i
  %xor103.i = xor i32 %sub102.i, %sub96.i
  %or.i12.i = tail call i32 @llvm.fshl.i32(i32 %sub102.i, i32 %sub102.i, i32 24) #10
  %sub105.i = sub i32 %xor103.i, %or.i12.i
  br label %jhash.exit

jhash.exit:                                       ; preds = %sw.bb81.i, %while.end.i.jhash.exit_crit_edge
  %c.12.i = phi i32 [ %c.0.lcssa.i, %while.end.i.jhash.exit_crit_edge ], [ %sub105.i, %sw.bb81.i ]
  %mul.i.i = mul i32 %c.12.i, 1640531527
  %shr.i = lshr i32 %mul.i.i, 24
  %arrayidx = getelementptr %struct.mapping_ctx, ptr %ctx, i32 0, i32 1, i32 %shr.i
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %34, null
  %add.ptr = getelementptr i8, ptr %34, i32 -20
  %tobool3.not7982 = icmp eq ptr %add.ptr, null
  %tobool3.not79 = or i1 %tobool.not, %tobool3.not7982
  br i1 %tobool3.not79, label %jhash.exit.if.end8.i.i_crit_edge, label %jhash.exit.for.body_crit_edge

jhash.exit.for.body_crit_edge:                    ; preds = %jhash.exit
  br label %for.body

jhash.exit.if.end8.i.i_crit_edge:                 ; preds = %jhash.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %jhash.exit.for.body_crit_edge
  %mi.080 = phi ptr [ %add.ptr14, %for.inc.for.body_crit_edge ], [ %add.ptr, %jhash.exit.for.body_crit_edge ]
  %data4 = getelementptr inbounds %struct.mapping_item, ptr %mi.080, i32 0, i32 6
  %bcmp = tail call i32 @bcmp(ptr %data, ptr %data4, i32 %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool7.not = icmp eq i32 %bcmp, 0
  br i1 %tobool7.not, label %for.body.attach_crit_edge, label %for.inc

for.body.attach_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %attach

for.inc:                                          ; preds = %for.body
  %node = getelementptr inbounds %struct.mapping_item, ptr %mi.080, i32 0, i32 3
  %35 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %node, align 4
  %tobool10.not = icmp eq ptr %36, null
  %add.ptr14 = getelementptr i8, ptr %36, i32 -20
  %tobool3.not84 = icmp eq ptr %add.ptr14, null
  %tobool3.not = or i1 %tobool10.not, %tobool3.not84
  br i1 %tobool3.not, label %for.inc.if.end8.i.i_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.if.end8.i.i_crit_edge:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %for.inc.if.end8.i.i_crit_edge, %jhash.exit.if.end8.i.i_crit_edge
  %add = add i32 %1, 36
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #14
  %tobool20.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool20.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end22

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end22:                                         ; preds = %if.end8.i.i
  %data23 = getelementptr inbounds %struct.mapping_item, ptr %call9.i.i, i32 0, i32 6
  %37 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %data_size, align 4
  %39 = call ptr @memcpy(ptr %data23, ptr %data, i32 %38)
  %node26 = getelementptr inbounds %struct.mapping_item, ptr %call9.i.i, i32 0, i32 3
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx, align 4
  %42 = ptrtoint ptr %node26 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %41, ptr %node26, align 4
  %tobool.not.i = icmp eq ptr %41, null
  br i1 %tobool.not.i, label %if.end22.hlist_add_head.exit_crit_edge, label %do.body12.i

if.end22.hlist_add_head.exit_crit_edge:           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %41, i32 0, i32 1
  %43 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %node26, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %if.end22.hlist_add_head.exit_crit_edge
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %node26, ptr %arrayidx, align 4
  %pprev34.i = getelementptr inbounds %struct.mapping_item, ptr %call9.i.i, i32 0, i32 3, i32 1
  %45 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %arrayidx, ptr %pprev34.i, align 8
  %id30 = getelementptr inbounds %struct.mapping_item, ptr %call9.i.i, i32 0, i32 5
  %max_id = getelementptr inbounds %struct.mapping_ctx, ptr %ctx, i32 0, i32 3
  %46 = ptrtoint ptr %max_id to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %max_id, align 8
  %.fca.0.insert = insertvalue [2 x i32] poison, i32 %47, 0
  %.fca.1.insert = insertvalue [2 x i32] %.fca.0.insert, i32 1, 1
  tail call void @_raw_spin_lock(ptr noundef %ctx) #10
  %call.i = tail call i32 @__xa_alloc(ptr noundef %ctx, ptr noundef %id30, ptr noundef nonnull %call9.i.i, [2 x i32] %.fca.1.insert, i32 noundef 3264) #10
  tail call void @_raw_spin_unlock(ptr noundef %ctx) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool32.not = icmp eq i32 %call.i, 0
  br i1 %tobool32.not, label %hlist_add_head.exit.attach_crit_edge, label %err_assign

hlist_add_head.exit.attach_crit_edge:             ; preds = %hlist_add_head.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %attach

attach:                                           ; preds = %hlist_add_head.exit.attach_crit_edge, %for.body.attach_crit_edge
  %mi.1 = phi ptr [ %call9.i.i, %hlist_add_head.exit.attach_crit_edge ], [ %mi.080, %for.body.attach_crit_edge ]
  %cnt = getelementptr inbounds %struct.mapping_item, ptr %mi.1, i32 0, i32 4
  %48 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cnt, align 4
  %inc = add i32 %49, 1
  store i32 %inc, ptr %cnt, align 4
  %id35 = getelementptr inbounds %struct.mapping_item, ptr %mi.1, i32 0, i32 5
  %50 = ptrtoint ptr %id35 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %id35, align 4
  %52 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %id, align 4
  br label %cleanup

err_assign:                                       ; preds = %hlist_add_head.exit
  %53 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pprev34.i, align 8
  %tobool.not.i.not.i.i = icmp eq ptr %54, null
  br i1 %tobool.not.i.not.i.i, label %err_assign.hash_del.exit_crit_edge, label %if.then.i.i72

err_assign.hash_del.exit_crit_edge:               ; preds = %err_assign
  call void @__sanitizer_cov_trace_pc() #12
  br label %hash_del.exit

if.then.i.i72:                                    ; preds = %err_assign
  %55 = ptrtoint ptr %node26 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %node26, align 4
  %57 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %56, ptr %54, align 4
  %tobool.not.i3.i.i = icmp eq ptr %56, null
  br i1 %tobool.not.i3.i.i, label %if.then.i.i72.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i72.__hlist_del.exit.i.i_crit_edge:     ; preds = %if.then.i.i72
  call void @__sanitizer_cov_trace_pc() #12
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i72
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %56, i32 0, i32 1
  %58 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %54, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i72.__hlist_del.exit.i.i_crit_edge
  %59 = ptrtoint ptr %node26 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %node26, align 4
  %60 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %pprev34.i, align 8
  br label %hash_del.exit

hash_del.exit:                                    ; preds = %__hlist_del.exit.i.i, %err_assign.hash_del.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %hash_del.exit, %attach, %if.end8.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %attach ], [ %call.i, %hash_del.exit ], [ -12, %if.end8.i.i.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mapping_remove(ptr noundef %ctx, i32 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mapping_ctx, ptr %ctx, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %call = tail call ptr @xa_load(ptr noundef %ctx, i32 noundef %id) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  %cnt = getelementptr inbounds %struct.mapping_item, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cnt, align 4
  %dec = add i32 %1, -1
  store i32 %dec, ptr %cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp sgt i32 %dec, 0
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end2

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end2:                                          ; preds = %if.end
  %node = getelementptr inbounds %struct.mapping_item, ptr %call, i32 0, i32 3
  %pprev.i.i.i = getelementptr inbounds %struct.mapping_item, ptr %call, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.not.i.i, label %if.end2.hash_del.exit_crit_edge, label %if.then.i.i

if.end2.hash_del.exit_crit_edge:                  ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %hash_del.exit

if.then.i.i:                                      ; preds = %if.end2
  %4 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %node, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %5, ptr %3, align 4
  %tobool.not.i3.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i3.i.i, label %if.then.i.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i.__hlist_del.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %3, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i.__hlist_del.exit.i.i_crit_edge
  %8 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %node, align 4
  %9 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %pprev.i.i.i, align 4
  br label %hash_del.exit

hash_del.exit:                                    ; preds = %__hlist_del.exit.i.i, %if.end2.hash_del.exit_crit_edge
  %delayed_removal.i = getelementptr inbounds %struct.mapping_ctx, ptr %ctx, i32 0, i32 5
  %10 = ptrtoint ptr %delayed_removal.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %delayed_removal.i, align 8, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %do.end.i.i, label %if.end.i

do.end.i.i:                                       ; preds = %hash_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  %id.i.i = getelementptr inbounds %struct.mapping_item, ptr %call, i32 0, i32 5
  %12 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id.i.i, align 4
  %call.i.i = tail call ptr @xa_erase(ptr noundef %ctx, i32 noundef %13) #10
  tail call void @kvfree_call_rcu(ptr noundef nonnull %call, ptr noundef null) #10
  br label %out

if.end.i:                                         ; preds = %hash_del.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %14, 200
  %timeout.i = getelementptr inbounds %struct.mapping_item, ptr %call, i32 0, i32 2
  %15 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add.i, ptr %timeout.i, align 4
  %pending_list_lock.i = getelementptr inbounds %struct.mapping_ctx, ptr %ctx, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %pending_list_lock.i) #10
  %list.i = getelementptr inbounds %struct.mapping_item, ptr %call, i32 0, i32 1
  %pending_list.i = getelementptr inbounds %struct.mapping_ctx, ptr %ctx, i32 0, i32 7
  %prev.i.i = getelementptr inbounds %struct.mapping_ctx, ptr %ctx, i32 0, i32 7, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %17, ptr noundef %pending_list.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_add_tail.exit.i_crit_edge

if.end.i.list_add_tail.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %list.i, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %pending_list.i, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.mapping_item, ptr %call, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev3.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %list.i, ptr %17, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end.i.list_add_tail.exit.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %pending_list_lock.i) #10
  %dwork.i = getelementptr inbounds %struct.mapping_ctx, ptr %ctx, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %22 = load ptr, ptr @system_wq, align 4
  %call.i.i10.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %22, ptr noundef %dwork.i, i32 noundef 2000) #10
  br label %out

out:                                              ; preds = %list_add_tail.exit.i, %do.end.i.i, %if.end.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ 0, %if.end.out_crit_edge ], [ -2, %entry.out_crit_edge ], [ 0, %do.end.i.i ], [ 0, %list_add_tail.exit.i ]
  tail call void @mutex_unlock(ptr noundef %lock) #10
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mapping_find(ptr noundef %ctx, i32 noundef %id, ptr nocapture noundef writeonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !27) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !38
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call ptr @xa_load(ptr noundef %ctx, i32 noundef %id) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %rcu_read_lock.exit.err_find_crit_edge, label %if.end

rcu_read_lock.exit.err_find_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_find

if.end:                                           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  %data1 = getelementptr inbounds %struct.mapping_item, ptr %call, i32 0, i32 6
  %data_size = getelementptr inbounds %struct.mapping_ctx, ptr %ctx, i32 0, i32 4
  %4 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_size, align 4
  %6 = call ptr @memcpy(ptr %data, ptr %data1, i32 %5)
  br label %err_find

err_find:                                         ; preds = %if.end, %rcu_read_lock.exit.err_find_crit_edge
  %err.0 = phi i32 [ 0, %if.end ], [ -2, %rcu_read_lock.exit.err_find_crit_edge ]
  %call.i4 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i4, label %err_find.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i7

err_find.rcu_read_unlock.exit_crit_edge:          ; preds = %err_find
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i7:                                 ; preds = %err_find
  %call1.i5 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5)
  %tobool.not.i6 = icmp eq i32 %call1.i5, 0
  br i1 %tobool.not.i6, label %land.lhs.true.i7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i9

land.lhs.true.i7.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i7
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i9:                                ; preds = %land.lhs.true.i7
  %.b4.i8 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i8, label %land.lhs.true2.i9.rcu_read_unlock.exit_crit_edge, label %if.then.i10

land.lhs.true2.i9.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i9
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i10:                                      ; preds = %land.lhs.true2.i9
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i10, %land.lhs.true2.i9.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i7.rcu_read_unlock.exit_crit_edge, %err_find.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !39
  %7 = tail call i32 @llvm.read_register.i32(metadata !27) #10
  %and.i.i.i.i.i11 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i11 to ptr
  %preempt_count.i.i.i.i12 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i12, align 4
  %sub.i.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i12, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mapping_create(i32 noundef %data_size, i32 noundef %max_id, i1 noundef zeroext %delayed_removal) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1360) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_id)
  %tobool2.not = icmp eq i32 %max_id, 0
  %spec.select = select i1 %tobool2.not, i32 -1, i32 %max_id
  %max_id3 = getelementptr inbounds %struct.mapping_ctx, ptr %call7.i.i, i32 0, i32 3
  %1 = ptrtoint ptr %max_id3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %spec.select, ptr %max_id3, align 8
  %data_size4 = getelementptr inbounds %struct.mapping_ctx, ptr %call7.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %data_size4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %data_size, ptr %data_size4, align 4
  br i1 %delayed_removal, label %do.body7, label %if.end.do.body29_crit_edge

if.end.do.body29_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body29

do.body7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dwork = getelementptr inbounds %struct.mapping_ctx, ptr %call7.i.i, i32 0, i32 6
  tail call void @__init_work(ptr noundef %dwork, i32 noundef 0) #10
  %3 = ptrtoint ptr %dwork to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -64, ptr %dwork, align 4
  %lockdep_map = getelementptr inbounds %struct.mapping_ctx, ptr %call7.i.i, i32 0, i32 6, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @mapping_create.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry14 = getelementptr inbounds %struct.mapping_ctx, ptr %call7.i.i, i32 0, i32 6, i32 0, i32 1
  %4 = ptrtoint ptr %entry14 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %entry14, ptr %entry14, align 8
  %prev.i = getelementptr inbounds %struct.mapping_ctx, ptr %call7.i.i, i32 0, i32 6, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %entry14, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.mapping_ctx, ptr %call7.i.i, i32 0, i32 6, i32 0, i32 2
  %6 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @mapping_work_handler, ptr %func, align 8
  %timer = getelementptr inbounds %struct.mapping_ctx, ptr %call7.i.i, i32 0, i32 6, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.2, ptr noundef nonnull @mapping_create.__key.1) #10
  %pending_list = getelementptr inbounds %struct.mapping_ctx, ptr %call7.i.i, i32 0, i32 7
  %7 = ptrtoint ptr %pending_list to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %pending_list, ptr %pending_list, align 8
  %prev.i49 = getelementptr inbounds %struct.mapping_ctx, ptr %call7.i.i, i32 0, i32 7, i32 1
  %8 = ptrtoint ptr %prev.i49 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %pending_list, ptr %prev.i49, align 4
  %pending_list_lock = getelementptr inbounds %struct.mapping_ctx, ptr %call7.i.i, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %pending_list_lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @mapping_create.__key.3, i16 noundef signext 3) #10
  %delayed_removal27 = getelementptr inbounds %struct.mapping_ctx, ptr %call7.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %delayed_removal27 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %delayed_removal27, align 8
  br label %do.body29

do.body29:                                        ; preds = %do.body7, %if.end.do.body29_crit_edge
  %lock = getelementptr inbounds %struct.mapping_ctx, ptr %call7.i.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @mapping_create.__key.5) #10
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #10
  %xa_flags.i = getelementptr inbounds %struct.xarray, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %xa_flags.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 12, ptr %xa_flags.i, align 4
  %xa_head.i = getelementptr inbounds %struct.xarray, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %xa_head.i, align 8
  %refcount = getelementptr inbounds %struct.mapping_ctx, ptr %call7.i.i, i32 0, i32 12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  %12 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 1, ptr %refcount, align 4
  %list = getelementptr inbounds %struct.mapping_ctx, ptr %call7.i.i, i32 0, i32 11
  %13 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %list, ptr %list, align 4
  %prev.i50 = getelementptr inbounds %struct.mapping_ctx, ptr %call7.i.i, i32 0, i32 11, i32 1
  %14 = ptrtoint ptr %prev.i50 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %list, ptr %prev.i50, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.body29, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %do.body29 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mapping_work_handler(ptr noundef %work) #0 align 64 {
entry:
  %pending_items = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pending_items) #10
  %1 = getelementptr inbounds %struct.list_head, ptr %pending_items, i32 0, i32 1
  %2 = ptrtoint ptr %pending_items to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pending_items, ptr %pending_items, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %pending_items, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %work, i32 -1180
  %pending_list_lock = getelementptr i8, ptr %work, i32 108
  call void @_raw_spin_lock(ptr noundef %pending_list_lock) #10
  %pending_list = getelementptr i8, ptr %work, i32 100
  %4 = ptrtoint ptr %pending_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pending_list, align 8
  %cmp.not54 = icmp eq ptr %5, %pending_list
  br i1 %cmp.not54, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %min_timeout.057 = phi i32 [ %min_timeout.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %.pn.in55 = phi ptr [ %.pn58, %for.inc.for.body_crit_edge ], [ %5, %entry.for.body_crit_edge ]
  %6 = ptrtoint ptr %.pn.in55 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn58 = load ptr, ptr %.pn.in55, align 4
  %timeout = getelementptr i8, ptr %.pn.in55, i32 8
  %7 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %timeout, align 4
  %sub = sub i32 %8, %0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp12 = icmp slt i32 %sub, 0
  br i1 %cmp12, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in55) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then.__list_del_entry.exit.i_crit_edge

if.then.__list_del_entry.exit.i_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in55, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %.pn.in55 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %.pn.in55, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.then.__list_del_entry.exit.i_crit_edge
  %15 = ptrtoint ptr %pending_items to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pending_items, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in55, ptr noundef nonnull %pending_items, ptr noundef %16) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.for.inc_crit_edge

__list_del_entry.exit.i.for.inc_crit_edge:        ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %.pn.in55, ptr %prev1.i.i2.i, align 4
  %18 = ptrtoint ptr %.pn.in55 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %16, ptr %.pn.in55, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in55, i32 0, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %pending_items, ptr %prev3.i.i.i, align 4
  %20 = ptrtoint ptr %pending_items to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %.pn.in55, ptr %pending_items, align 4
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %min_timeout.057)
  %tobool.not = icmp eq i32 %min_timeout.057, 0
  %sub15 = sub i32 %8, %min_timeout.057
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub15)
  %cmp16 = icmp slt i32 %sub15, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp16
  %spec.select = select i1 %or.cond, i32 %8, i32 %min_timeout.057
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.end.i.i.i, %__list_del_entry.exit.i.for.inc_crit_edge
  %min_timeout.1 = phi i32 [ %min_timeout.057, %__list_del_entry.exit.i.for.inc_crit_edge ], [ %min_timeout.057, %if.end.i.i.i ], [ %spec.select, %if.else ]
  %cmp.not = icmp eq ptr %.pn58, %pending_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %min_timeout.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %min_timeout.1, %for.inc.for.end_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %pending_list_lock) #10
  %21 = ptrtoint ptr %pending_items to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn10.i = load ptr, ptr %pending_items, align 4
  %cmp.not11.i = icmp eq ptr %.pn10.i, %pending_items
  br i1 %cmp.not11.i, label %for.end.mapping_remove_and_free_list.exit_crit_edge, label %for.end.for.body.i_crit_edge

for.end.for.body.i_crit_edge:                     ; preds = %for.end
  br label %for.body.i

for.end.mapping_remove_and_free_list.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %mapping_remove_and_free_list.exit

for.body.i:                                       ; preds = %mapping_remove_and_free.exit.i.for.body.i_crit_edge, %for.end.for.body.i_crit_edge
  %.pn12.i = phi ptr [ %.pn.i, %mapping_remove_and_free.exit.i.for.body.i_crit_edge ], [ %.pn10.i, %for.end.for.body.i_crit_edge ]
  %mi.0.i = getelementptr i8, ptr %.pn12.i, i32 -8
  %id.i.i = getelementptr i8, ptr %.pn12.i, i32 24
  %22 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id.i.i, align 4
  %call.i.i51 = call ptr @xa_erase(ptr noundef %add.ptr, i32 noundef %23) #10
  %tobool.not.i.i = icmp eq ptr %mi.0.i, null
  br i1 %tobool.not.i.i, label %for.body.i.mapping_remove_and_free.exit.i_crit_edge, label %do.end.i.i

for.body.i.mapping_remove_and_free.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mapping_remove_and_free.exit.i

do.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @kvfree_call_rcu(ptr noundef nonnull %mi.0.i, ptr noundef null) #10
  br label %mapping_remove_and_free.exit.i

mapping_remove_and_free.exit.i:                   ; preds = %do.end.i.i, %for.body.i.mapping_remove_and_free.exit.i_crit_edge
  %24 = ptrtoint ptr %.pn12.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn.i = load ptr, ptr %.pn12.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %pending_items
  br i1 %cmp.not.i, label %mapping_remove_and_free.exit.i.mapping_remove_and_free_list.exit_crit_edge, label %mapping_remove_and_free.exit.i.for.body.i_crit_edge

mapping_remove_and_free.exit.i.for.body.i_crit_edge: ; preds = %mapping_remove_and_free.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

mapping_remove_and_free.exit.i.mapping_remove_and_free_list.exit_crit_edge: ; preds = %mapping_remove_and_free.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mapping_remove_and_free_list.exit

mapping_remove_and_free_list.exit:                ; preds = %mapping_remove_and_free.exit.i.mapping_remove_and_free_list.exit_crit_edge, %for.end.mapping_remove_and_free_list.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %min_timeout.0.lcssa)
  %tobool26.not = icmp eq i32 %min_timeout.0.lcssa, 0
  br i1 %tobool26.not, label %mapping_remove_and_free_list.exit.if.end32_crit_edge, label %if.then27

mapping_remove_and_free_list.exit.if.end32_crit_edge: ; preds = %mapping_remove_and_free_list.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then27:                                        ; preds = %mapping_remove_and_free_list.exit
  call void @__sanitizer_cov_trace_pc() #12
  %sub28 = sub i32 %min_timeout.0.lcssa, %0
  %25 = call i32 @llvm.abs.i32(i32 %sub28, i1 false)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %26 = load ptr, ptr @system_wq, align 4
  %call.i.i52 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %26, ptr noundef %work, i32 noundef %25) #10
  br label %if.end32

if.end32:                                         ; preds = %if.then27, %mapping_remove_and_free_list.exit.if.end32_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pending_items) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mapping_create_for_id(i64 noundef %id, i8 noundef zeroext %type, i32 noundef %data_size, i32 noundef %max_id, i1 noundef zeroext %delayed_removal) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @shared_ctx_lock, i32 noundef 0) #10
  %.pn33 = load ptr, ptr @shared_ctx_list, align 4
  %cmp.not34 = icmp eq ptr %.pn33, @shared_ctx_list
  br i1 %cmp.not34, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn35 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn33, %entry.for.body_crit_edge ]
  %id1 = getelementptr i8, ptr %.pn35, i32 -12
  %0 = ptrtoint ptr %id1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %id1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %id)
  %cmp2 = icmp eq i64 %1, %id
  br i1 %cmp2, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %type3 = getelementptr i8, ptr %.pn35, i32 -4
  %2 = ptrtoint ptr %type3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %type3, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %type)
  %cmp5 = icmp eq i8 %3, %type
  br i1 %cmp5, label %if.then, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  %ctx.0.le = getelementptr i8, ptr %.pn35, i32 -1348
  %refcount = getelementptr i8, ptr %.pn35, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #10
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #10
  %4 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %refcount, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %if.then
  %6 = phi i32 [ %5, %if.then ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %7 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %6, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #10
  %8 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %10 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 %9, i32 %add.i.i.i, ptr elementtype(i32) %refcount) #10, !srcloc !40
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %10, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %10, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %9
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !41

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %11 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %12, 1
  %13 = or i32 %add5.i.i.i, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %.not.i.i.i = icmp sgt i32 %13, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !41

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 0) #10
  %14 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load i32, ptr %old.i.i.i, align 4
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %15 = phi i32 [ %12, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool12.i.i.i.not = icmp eq i32 %15, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #10
  br i1 %tobool12.i.i.i.not, label %refcount_inc_not_zero.exit.for.end_crit_edge, label %refcount_inc_not_zero.exit.unlock_crit_edge

refcount_inc_not_zero.exit.unlock_crit_edge:      ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

refcount_inc_not_zero.exit.for.end_crit_edge:     ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %16 = ptrtoint ptr %.pn35 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn = load ptr, ptr %.pn35, align 4
  %cmp.not = icmp eq ptr %.pn, @shared_ctx_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %refcount_inc_not_zero.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %call13 = call ptr @mapping_create(i32 noundef %data_size, i32 noundef %max_id, i1 noundef zeroext %delayed_removal)
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %for.end.unlock_crit_edge, label %if.end16

for.end.unlock_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.end16:                                         ; preds = %for.end
  %id17 = getelementptr inbounds %struct.mapping_ctx, ptr %call13, i32 0, i32 9
  %17 = ptrtoint ptr %id17 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %id, ptr %id17, align 8
  %type18 = getelementptr inbounds %struct.mapping_ctx, ptr %call13, i32 0, i32 10
  %18 = ptrtoint ptr %type18 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %type, ptr %type18, align 8
  %list19 = getelementptr inbounds %struct.mapping_ctx, ptr %call13, i32 0, i32 11
  %19 = load ptr, ptr @shared_ctx_list, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list19, ptr noundef nonnull @shared_ctx_list, ptr noundef %19) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end16.unlock_crit_edge

if.end16.unlock_crit_edge:                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %list19, ptr %prev1.i.i, align 4
  %21 = ptrtoint ptr %list19 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %19, ptr %list19, align 4
  %prev3.i.i = getelementptr inbounds %struct.mapping_ctx, ptr %call13, i32 0, i32 11, i32 1
  %22 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @shared_ctx_list, ptr %prev3.i.i, align 4
  store volatile ptr %list19, ptr @shared_ctx_list, align 4
  br label %unlock

unlock:                                           ; preds = %if.end.i.i, %if.end16.unlock_crit_edge, %for.end.unlock_crit_edge, %refcount_inc_not_zero.exit.unlock_crit_edge
  %ctx.1 = phi ptr [ %ctx.0.le, %refcount_inc_not_zero.exit.unlock_crit_edge ], [ %call13, %for.end.unlock_crit_edge ], [ %call13, %if.end16.unlock_crit_edge ], [ %call13, %if.end.i.i ]
  call void @mutex_unlock(ptr noundef nonnull @shared_ctx_lock) #10
  ret ptr %ctx.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mapping_destroy(ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %refcount = getelementptr inbounds %struct.mapping_ctx, ptr %ctx, i32 0, i32 12
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !42
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #10, !srcloc !43
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.end, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.return_crit_edge, label %if.then10.i.i.i, !prof !41

if.end5.i.i.i.return_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #10
  br label %return

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !44
  tail call void @mutex_lock_nested(ptr noundef nonnull @shared_ctx_lock, i32 noundef 0) #10
  %list = getelementptr inbounds %struct.mapping_ctx, ptr %ctx, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.mapping_ctx, ptr %ctx, i32 0, i32 11, i32 1
  %1 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i.i, align 4
  %3 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev1.i.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %4, ptr %2, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.mapping_ctx, ptr %ctx, i32 0, i32 11, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @shared_ctx_lock) #10
  %delayed_removal.i = getelementptr inbounds %struct.mapping_ctx, ptr %ctx, i32 0, i32 5
  %9 = ptrtoint ptr %delayed_removal.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %delayed_removal.i, align 8, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %list_del.exit.mapping_flush_work.exit_crit_edge, label %if.end.i

list_del.exit.mapping_flush_work.exit_crit_edge:  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %mapping_flush_work.exit

if.end.i:                                         ; preds = %list_del.exit
  %dwork.i = getelementptr inbounds %struct.mapping_ctx, ptr %ctx, i32 0, i32 6
  %call.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %dwork.i) #10
  %pending_list.i = getelementptr inbounds %struct.mapping_ctx, ptr %ctx, i32 0, i32 7
  %11 = ptrtoint ptr %pending_list.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn10.i.i = load ptr, ptr %pending_list.i, align 4
  %cmp.not11.i.i = icmp eq ptr %.pn10.i.i, %pending_list.i
  br i1 %cmp.not11.i.i, label %if.end.i.mapping_flush_work.exit_crit_edge, label %if.end.i.for.body.i.i_crit_edge

if.end.i.for.body.i.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i.i

if.end.i.mapping_flush_work.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mapping_flush_work.exit

for.body.i.i:                                     ; preds = %mapping_remove_and_free.exit.i.i.for.body.i.i_crit_edge, %if.end.i.for.body.i.i_crit_edge
  %.pn12.i.i = phi ptr [ %.pn.i.i, %mapping_remove_and_free.exit.i.i.for.body.i.i_crit_edge ], [ %.pn10.i.i, %if.end.i.for.body.i.i_crit_edge ]
  %mi.0.i.i = getelementptr i8, ptr %.pn12.i.i, i32 -8
  %id.i.i.i = getelementptr i8, ptr %.pn12.i.i, i32 24
  %12 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id.i.i.i, align 4
  %call.i.i.i = tail call ptr @xa_erase(ptr noundef %ctx, i32 noundef %13) #10
  %tobool.not.i.i.i = icmp eq ptr %mi.0.i.i, null
  br i1 %tobool.not.i.i.i, label %for.body.i.i.mapping_remove_and_free.exit.i.i_crit_edge, label %do.end.i.i.i6

for.body.i.i.mapping_remove_and_free.exit.i.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mapping_remove_and_free.exit.i.i

do.end.i.i.i6:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kvfree_call_rcu(ptr noundef nonnull %mi.0.i.i, ptr noundef null) #10
  br label %mapping_remove_and_free.exit.i.i

mapping_remove_and_free.exit.i.i:                 ; preds = %do.end.i.i.i6, %for.body.i.i.mapping_remove_and_free.exit.i.i_crit_edge
  %14 = ptrtoint ptr %.pn12.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn.i.i = load ptr, ptr %.pn12.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %pending_list.i
  br i1 %cmp.not.i.i, label %mapping_remove_and_free.exit.i.i.mapping_flush_work.exit_crit_edge, label %mapping_remove_and_free.exit.i.i.for.body.i.i_crit_edge

mapping_remove_and_free.exit.i.i.for.body.i.i_crit_edge: ; preds = %mapping_remove_and_free.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

mapping_remove_and_free.exit.i.i.mapping_flush_work.exit_crit_edge: ; preds = %mapping_remove_and_free.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mapping_flush_work.exit

mapping_flush_work.exit:                          ; preds = %mapping_remove_and_free.exit.i.i.mapping_flush_work.exit_crit_edge, %if.end.i.mapping_flush_work.exit_crit_edge, %list_del.exit.mapping_flush_work.exit_crit_edge
  tail call void @xa_destroy(ptr noundef %ctx) #10
  %lock = getelementptr inbounds %struct.mapping_ctx, ptr %ctx, i32 0, i32 2
  tail call void @mutex_destroy(ptr noundef %lock) #10
  tail call void @kfree(ptr noundef %ctx) #10
  br label %return

return:                                           ; preds = %mapping_flush_work.exit, %if.then10.i.i.i, %if.end5.i.i.i.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xa_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xa_alloc(ptr noundef, ptr noundef, ptr noundef, [2 x i32], i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_erase(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nobuiltin }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !7, !8, !10, !11, !13, !14, !15, !17, !18, !20, !21, !23, !24, !25}
!llvm.named.register.sp = !{!27}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @mapping_create.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/mapping.c", i32 207, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @mapping_create.__key.1, !1, !"__key", i1 false, i1 false}
!4 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @mapping_create.__key.3, !6, !"__key", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/mapping.c", i32 209, i32 3}
!7 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @mapping_create.__key.5, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/mapping.c", i32 213, i32 2}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = distinct !{null, !12, !"__warned", i1 false, i1 false}
!12 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!13 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @xa_init_flags.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/mapping.c", i32 15, i32 8}
!23 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @shared_ctx_lock, !22, !"shared_ctx_lock", i1 false, i1 false}
!25 = !{ptr @shared_ctx_list, !26, !"shared_ctx_list", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/mapping.c", i32 14, i32 8}
!27 = !{!"sp"}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{i8 0, i8 2}
!38 = !{i64 2149930803}
!39 = !{i64 2149931069}
!40 = !{i64 654564, i64 654588, i64 654609, i64 654626, i64 654643}
!41 = !{!"branch_weights", i32 2000, i32 1}
!42 = !{i64 2148260359}
!43 = !{i64 2148174823, i64 2148174855, i64 2148174884, i64 2148174918, i64 2148174949, i64 2148174972}
!44 = !{i64 2149881260}
