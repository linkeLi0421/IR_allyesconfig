; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/steering/dr_buddy.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_buddy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mlx5dr_icm_buddy_mem = type { ptr, ptr, i32, %struct.list_head, ptr, ptr, %struct.list_head, i64, %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }

@.str = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/steering/dr_buddy.c\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"ICM Buddy: failed finding free mem for order %d\0A\00", [47 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private constant [63 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_buddy.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 89, i32 7 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5dr_buddy_init(ptr noundef %buddy, i32 noundef %max_order) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %max_order1 = getelementptr inbounds %struct.mlx5dr_icm_buddy_mem, ptr %buddy, i32 0, i32 2
  %0 = ptrtoint ptr %max_order1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %max_order, ptr %max_order1, align 8
  %list_node = getelementptr inbounds %struct.mlx5dr_icm_buddy_mem, ptr %buddy, i32 0, i32 3
  %1 = ptrtoint ptr %list_node to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %list_node, ptr %list_node, align 4
  %prev.i = getelementptr inbounds %struct.mlx5dr_icm_buddy_mem, ptr %buddy, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list_node, ptr %prev.i, align 4
  %used_list = getelementptr inbounds %struct.mlx5dr_icm_buddy_mem, ptr %buddy, i32 0, i32 6
  %3 = ptrtoint ptr %used_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %used_list, ptr %used_list, align 4
  %prev.i64 = getelementptr inbounds %struct.mlx5dr_icm_buddy_mem, ptr %buddy, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %prev.i64 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %used_list, ptr %prev.i64, align 4
  %hot_list = getelementptr inbounds %struct.mlx5dr_icm_buddy_mem, ptr %buddy, i32 0, i32 8
  %5 = ptrtoint ptr %hot_list to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %hot_list, ptr %hot_list, align 4
  %prev.i65 = getelementptr inbounds %struct.mlx5dr_icm_buddy_mem, ptr %buddy, i32 0, i32 8, i32 1
  %6 = ptrtoint ptr %prev.i65 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %hot_list, ptr %prev.i65, align 4
  %add = add i32 %max_order, 1
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 4) #5
  %8 = extractvalue { i32, i1 } %7, 1
  br i1 %8, label %entry.kcalloc.exit_crit_edge, label %if.end7.i.i, !prof !12

entry.kcalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %kcalloc.exit

if.end7.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %9 = extractvalue { i32, i1 } %7, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %9, i32 noundef 3520) #8
  br label %kcalloc.exit

kcalloc.exit:                                     ; preds = %if.end7.i.i, %entry.kcalloc.exit_crit_edge
  %retval.0.i.i = phi ptr [ %call8.i.i, %if.end7.i.i ], [ null, %entry.kcalloc.exit_crit_edge ]
  %10 = ptrtoint ptr %buddy to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %retval.0.i.i, ptr %buddy, align 8
  %11 = ptrtoint ptr %max_order1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_order1, align 8
  %add4 = add i32 %12, 1
  %13 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add4, i32 4) #5
  %14 = extractvalue { i32, i1 } %13, 1
  br i1 %14, label %kcalloc.exit98.thread, label %if.end7.i.i96, !prof !12

kcalloc.exit98.thread:                            ; preds = %kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #7
  %num_free100 = getelementptr inbounds %struct.mlx5dr_icm_buddy_mem, ptr %buddy, i32 0, i32 1
  %15 = ptrtoint ptr %num_free100 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %num_free100, align 4
  br label %err_free_all

if.end7.i.i96:                                    ; preds = %kcalloc.exit
  %16 = extractvalue { i32, i1 } %13, 0
  %call8.i.i95 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %16, i32 noundef 3520) #8
  %num_free = getelementptr inbounds %struct.mlx5dr_icm_buddy_mem, ptr %buddy, i32 0, i32 1
  %17 = ptrtoint ptr %num_free to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call8.i.i95, ptr %num_free, align 4
  %18 = ptrtoint ptr %buddy to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buddy, align 8
  %tobool.not = icmp eq ptr %19, null
  %tobool8.not = icmp eq ptr %call8.i.i95, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool8.not
  br i1 %or.cond, label %if.end7.i.i96.err_free_all_crit_edge, label %for.cond.preheader

if.end7.i.i96.err_free_all_crit_edge:             ; preds = %if.end7.i.i96
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free_all

for.cond.preheader:                               ; preds = %if.end7.i.i96
  %20 = ptrtoint ptr %max_order1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_order1, align 8
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add i32 %i.0106, 1
  %22 = ptrtoint ptr %max_order1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_order1, align 8
  %cmp.not = icmp ult i32 %23, %inc
  br i1 %cmp.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader
  %24 = phi i32 [ %21, %for.cond.preheader ], [ %23, %for.cond.for.body_crit_edge ]
  %i.0106 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.cond.for.body_crit_edge ]
  %sub = sub i32 %24, %i.0106
  %shl = shl nuw i32 1, %sub
  %call11 = tail call ptr @bitmap_zalloc(i32 noundef %shl, i32 noundef 3264) #5
  %25 = ptrtoint ptr %buddy to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %buddy, align 8
  %arrayidx = getelementptr ptr, ptr %26, i32 %i.0106
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call11, ptr %arrayidx, align 4
  %28 = load ptr, ptr %buddy, align 8
  %arrayidx14 = getelementptr ptr, ptr %28, i32 %i.0106
  %29 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx14, align 4
  %tobool15.not = icmp eq ptr %30, null
  br i1 %tobool15.not, label %for.body.for.body27_crit_edge, label %for.cond

for.body.for.body27_crit_edge:                    ; preds = %for.body
  br label %for.body27

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %buddy to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %buddy, align 8
  %arrayidx20 = getelementptr ptr, ptr %32, i32 %23
  %33 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx20, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  %or.i.i = or i32 %36, 1
  store i32 %or.i.i, ptr %34, align 4
  %37 = ptrtoint ptr %num_free to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %num_free, align 4
  %39 = ptrtoint ptr %max_order1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %max_order1, align 8
  %arrayidx23 = getelementptr i32, ptr %38, i32 %40
  %41 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %arrayidx23, align 4
  br label %cleanup35

for.body27:                                       ; preds = %for.body27.for.body27_crit_edge, %for.body.for.body27_crit_edge
  %i.1107 = phi i32 [ %inc31, %for.body27.for.body27_crit_edge ], [ 0, %for.body.for.body27_crit_edge ]
  %42 = ptrtoint ptr %buddy to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %buddy, align 8
  %arrayidx29 = getelementptr ptr, ptr %43, i32 %i.1107
  %44 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx29, align 4
  tail call void @bitmap_free(ptr noundef %45) #5
  %inc31 = add i32 %i.1107, 1
  %46 = ptrtoint ptr %max_order1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %max_order1, align 8
  %cmp26.not = icmp ugt i32 %inc31, %47
  br i1 %cmp26.not, label %for.body27.err_free_all_crit_edge, label %for.body27.for.body27_crit_edge

for.body27.for.body27_crit_edge:                  ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body27

for.body27.err_free_all_crit_edge:                ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free_all

err_free_all:                                     ; preds = %for.body27.err_free_all_crit_edge, %if.end7.i.i96.err_free_all_crit_edge, %kcalloc.exit98.thread
  %num_free104 = phi ptr [ %num_free100, %kcalloc.exit98.thread ], [ %num_free, %if.end7.i.i96.err_free_all_crit_edge ], [ %num_free, %for.body27.err_free_all_crit_edge ]
  %48 = ptrtoint ptr %num_free104 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %num_free104, align 4
  tail call void @kfree(ptr noundef %49) #5
  %50 = ptrtoint ptr %buddy to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %buddy, align 8
  tail call void @kfree(ptr noundef %51) #5
  br label %cleanup35

cleanup35:                                        ; preds = %err_free_all, %for.end
  %retval.0 = phi i32 [ -12, %err_free_all ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5dr_buddy_cleanup(ptr noundef %buddy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %list_node = getelementptr inbounds %struct.mlx5dr_icm_buddy_mem, ptr %buddy, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list_node) #5
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.mlx5dr_icm_buddy_mem, ptr %buddy, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %list_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list_node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %list_node to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %list_node, align 4
  %prev.i = getelementptr inbounds %struct.mlx5dr_icm_buddy_mem, ptr %buddy, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %max_order = getelementptr inbounds %struct.mlx5dr_icm_buddy_mem, ptr %buddy, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %list_del.exit
  %i.08 = phi i32 [ 0, %list_del.exit ], [ %inc, %for.body.for.body_crit_edge ]
  %8 = ptrtoint ptr %buddy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buddy, align 8
  %arrayidx = getelementptr ptr, ptr %9, i32 %i.08
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  tail call void @bitmap_free(ptr noundef %11) #5
  %inc = add i32 %i.08, 1
  %12 = ptrtoint ptr %max_order to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_order, align 8
  %cmp.not = icmp ugt i32 %inc, %13
  br i1 %cmp.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %num_free = getelementptr inbounds %struct.mlx5dr_icm_buddy_mem, ptr %buddy, i32 0, i32 1
  %14 = ptrtoint ptr %num_free to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %num_free, align 4
  tail call void @kfree(ptr noundef %15) #5
  %16 = ptrtoint ptr %buddy to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buddy, align 8
  tail call void @kfree(ptr noundef %17) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5dr_buddy_alloc_mem(ptr nocapture noundef readonly %buddy, i32 noundef %order, ptr nocapture noundef writeonly %segment) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %max_order.i = getelementptr inbounds %struct.mlx5dr_icm_buddy_mem, ptr %buddy, i32 0, i32 2
  %0 = ptrtoint ptr %max_order.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_order.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %order)
  %cmp.not54.i = icmp ult i32 %1, %order
  br i1 %cmp.not54.i, label %entry.for.end.i_crit_edge, label %for.body.lr.ph.i

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %entry
  %num_free.i = getelementptr inbounds %struct.mlx5dr_icm_buddy_mem, ptr %buddy, i32 0, i32 1
  %2 = ptrtoint ptr %num_free.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %num_free.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %order_iter.055.i = phi i32 [ %order, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %3, i32 %order_iter.055.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %for.inc.i, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  %sub.i = sub i32 %1, %order_iter.055.i
  %shl.i = shl nuw i32 1, %sub.i
  %6 = ptrtoint ptr %buddy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buddy, align 8
  %arrayidx2.i = getelementptr ptr, ptr %7, i32 %order_iter.055.i
  %8 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx2.i, align 4
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef %9, i32 noundef %shl.i) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %shl.i)
  %cmp3.not.i = icmp ult i32 %call.i, %shl.i
  br i1 %cmp3.not.i, label %if.end.i.for.end.i_crit_edge, label %do.end.i, !prof !13

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 91, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %order_iter.055.i) #5
  br label %cleanup

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add i32 %order_iter.055.i, 1
  %cmp.not.i = icmp ult i32 %1, %inc.i
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  %order_iter.052.i = phi i32 [ %order_iter.055.i, %if.end.i.for.end.i_crit_edge ], [ %order, %entry.for.end.i_crit_edge ], [ %inc.i, %for.inc.i.for.end.i_crit_edge ]
  %seg.0.i = phi i32 [ %call.i, %if.end.i.for.end.i_crit_edge ], [ -1, %entry.for.end.i_crit_edge ], [ -1, %for.inc.i.for.end.i_crit_edge ]
  %10 = ptrtoint ptr %max_order.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_order.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %order_iter.052.i, i32 %11)
  %cmp29.i = icmp ugt i32 %order_iter.052.i, %11
  br i1 %cmp29.i, label %for.end.i.cleanup_crit_edge, label %if.end

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %for.end.i
  %12 = ptrtoint ptr %buddy to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buddy, align 8
  %arrayidx = getelementptr ptr, ptr %13, i32 %order_iter.052.i
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %rem.i.i = and i32 %seg.0.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %seg.0.i, 5
  %add.ptr.i.i = getelementptr i32, ptr %15, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %16 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %17, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  %num_free = getelementptr inbounds %struct.mlx5dr_icm_buddy_mem, ptr %buddy, i32 0, i32 1
  %18 = ptrtoint ptr %num_free to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %num_free, align 4
  %arrayidx1 = getelementptr i32, ptr %19, i32 %order_iter.052.i
  %20 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx1, align 4
  %dec = add i32 %21, -1
  store i32 %dec, ptr %arrayidx1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %order_iter.052.i, i32 %order)
  %cmp32 = icmp ugt i32 %order_iter.052.i, %order
  br i1 %cmp32, label %if.end.while.body_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end.while.body_crit_edge
  %order_iter.134 = phi i32 [ %dec2, %while.body.while.body_crit_edge ], [ %order_iter.052.i, %if.end.while.body_crit_edge ]
  %seg.133 = phi i32 [ %shl, %while.body.while.body_crit_edge ], [ %seg.0.i, %if.end.while.body_crit_edge ]
  %dec2 = add i32 %order_iter.134, -1
  %shl = shl i32 %seg.133, 1
  %22 = ptrtoint ptr %buddy to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %buddy, align 8
  %arrayidx4 = getelementptr ptr, ptr %23, i32 %dec2
  %24 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx4, align 4
  %xor17 = and i32 %shl, 30
  %rem.i.i18 = or i32 %xor17, 1
  %shl.i.i19 = shl nuw i32 1, %rem.i.i18
  %div2.i.i20 = lshr i32 %shl, 5
  %add.ptr.i.i21 = getelementptr i32, ptr %25, i32 %div2.i.i20
  %26 = ptrtoint ptr %add.ptr.i.i21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr.i.i21, align 4
  %or.i.i = or i32 %27, %shl.i.i19
  store i32 %or.i.i, ptr %add.ptr.i.i21, align 4
  %28 = ptrtoint ptr %num_free to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %num_free, align 4
  %arrayidx6 = getelementptr i32, ptr %29, i32 %dec2
  %30 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx6, align 4
  %inc = add i32 %31, 1
  store i32 %inc, ptr %arrayidx6, align 4
  %cmp = icmp ugt i32 %dec2, %order
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end.while.end_crit_edge
  %seg.1.lcssa = phi i32 [ %seg.0.i, %if.end.while.end_crit_edge ], [ %shl, %while.body.while.end_crit_edge ]
  %shl7 = shl i32 %seg.1.lcssa, %order
  %32 = ptrtoint ptr %segment to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %shl7, ptr %segment, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %for.end.i.cleanup_crit_edge, %do.end.i
  %retval.0 = phi i32 [ 0, %while.end ], [ -12, %do.end.i ], [ -12, %for.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5dr_buddy_free_mem(ptr nocapture noundef readonly %buddy, i32 noundef %seg, i32 noundef %order) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %seg, %order
  %0 = ptrtoint ptr %buddy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buddy, align 8
  %arrayidx29 = getelementptr ptr, ptr %1, i32 %order
  %2 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx29, align 4
  %div3.i30 = lshr i32 %shr, 5
  %arrayidx.i31 = getelementptr i32, ptr %3, i32 %div3.i30
  %4 = ptrtoint ptr %arrayidx.i31 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.i31, align 4
  %xor32 = and i32 %shr, 31
  %and.i33 = xor i32 %xor32, 1
  %6 = shl nuw i32 1, %and.i33
  %7 = and i32 %5, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not34 = icmp eq i32 %7, 0
  br i1 %tobool.not34, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %num_free = getelementptr inbounds %struct.mlx5dr_icm_buddy_mem, ptr %buddy, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %and.i38 = phi i32 [ %and.i33, %while.body.lr.ph ], [ %and.i, %while.body.while.body_crit_edge ]
  %8 = phi i32 [ %5, %while.body.lr.ph ], [ %19, %while.body.while.body_crit_edge ]
  %arrayidx.i37 = phi ptr [ %arrayidx.i31, %while.body.lr.ph ], [ %arrayidx.i, %while.body.while.body_crit_edge ]
  %order.addr.036 = phi i32 [ %order, %while.body.lr.ph ], [ %inc, %while.body.while.body_crit_edge ]
  %seg.addr.035 = phi i32 [ %shr, %while.body.lr.ph ], [ %shr5, %while.body.while.body_crit_edge ]
  %shl.i.i = shl nuw i32 1, %and.i38
  %neg.i.i = xor i32 %shl.i.i, -1
  %and.i.i = and i32 %8, %neg.i.i
  %9 = ptrtoint ptr %arrayidx.i37 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and.i.i, ptr %arrayidx.i37, align 4
  %10 = ptrtoint ptr %num_free to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %num_free, align 4
  %arrayidx4 = getelementptr i32, ptr %11, i32 %order.addr.036
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx4, align 4
  %dec = add i32 %13, -1
  store i32 %dec, ptr %arrayidx4, align 4
  %shr5 = lshr i32 %seg.addr.035, 1
  %inc = add i32 %order.addr.036, 1
  %14 = ptrtoint ptr %buddy to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buddy, align 8
  %arrayidx = getelementptr ptr, ptr %15, i32 %inc
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %div3.i = lshr i32 %seg.addr.035, 6
  %arrayidx.i = getelementptr i32, ptr %17, i32 %div3.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %arrayidx.i, align 4
  %xor = and i32 %shr5, 31
  %and.i = xor i32 %xor, 1
  %20 = shl nuw i32 1, %and.i
  %21 = and i32 %19, %20
  %tobool.not = icmp eq i32 %21, 0
  br i1 %tobool.not, label %while.end.loopexit, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end.loopexit:                               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %.pre = lshr i32 %seg.addr.035, 6
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %entry.while.end_crit_edge
  %div2.i.i27.pre-phi = phi i32 [ %.pre, %while.end.loopexit ], [ %div3.i30, %entry.while.end_crit_edge ]
  %rem.i.i25.pre-phi = phi i32 [ %xor, %while.end.loopexit ], [ %xor32, %entry.while.end_crit_edge ]
  %order.addr.0.lcssa = phi i32 [ %inc, %while.end.loopexit ], [ %order, %entry.while.end_crit_edge ]
  %.lcssa = phi ptr [ %17, %while.end.loopexit ], [ %3, %entry.while.end_crit_edge ]
  %shl.i.i26 = shl nuw i32 1, %rem.i.i25.pre-phi
  %add.ptr.i.i28 = getelementptr i32, ptr %.lcssa, i32 %div2.i.i27.pre-phi
  %22 = ptrtoint ptr %add.ptr.i.i28 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i.i28, align 4
  %or.i.i = or i32 %23, %shl.i.i26
  store i32 %or.i.i, ptr %add.ptr.i.i28, align 4
  %num_free8 = getelementptr inbounds %struct.mlx5dr_icm_buddy_mem, ptr %buddy, i32 0, i32 1
  %24 = ptrtoint ptr %num_free8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %num_free8, align 4
  %arrayidx9 = getelementptr i32, ptr %25, i32 %order.addr.0.lcssa
  %26 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx9, align 4
  %inc10 = add i32 %27, 1
  store i32 %inc10, ptr %arrayidx9, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_buddy.c", i32 89, i32 7}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{i32 1, !"wchar_size", i32 2}
!4 = !{i32 1, !"min_enum_size", i32 4}
!5 = !{i32 8, !"branch-target-enforcement", i32 0}
!6 = !{i32 8, !"sign-return-address", i32 0}
!7 = !{i32 8, !"sign-return-address-all", i32 0}
!8 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{!"branch_weights", i32 2000, i32 1}
