; ModuleID = '/llk/IR_all_yes/drivers/staging/fwserial/dma_fifo.c_pt.bc'
source_filename = "../drivers/staging/fwserial/dma_fifo.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dma_fifo = type { i32, i32, i32, %struct.anon, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, ptr }
%struct.anon = type { i8, [3 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.dma_pending = type { %struct.list_head, ptr, i32, i32, i32 }

@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/staging/fwserial/dma_fifo.c\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"fifo corrupt: in:%u out:%u done:%u n:%d avail:%d\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"past open limit:%d (limit:%d)\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"fifo out unaligned:%u (align:%u)\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"pending list disagrees with open count:%d\00", [54 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"in:%u out:%u done:%u saved:%u next:%u\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"open dma:%d < 0\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fifo avail:%d > size:%d\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 158, i32 6 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 225, i32 6 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 229, i32 6 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 253, i32 6 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 271, i32 7 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 287, i32 6 }
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.30 = private constant [39 x i8] c"../drivers/staging/fwserial/dma_fifo.c\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 289, i32 6 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dma_fifo_init(ptr noundef %fifo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %fifo, i32 0, i32 60)
  %pending = getelementptr inbounds %struct.dma_fifo, ptr %fifo, i32 0, i32 12
  %1 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %pending, ptr %pending, align 4
  %prev.i = getelementptr inbounds %struct.dma_fifo, ptr %fifo, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pending, ptr %prev.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dma_fifo_alloc(ptr nocapture noundef %fifo, i32 noundef %size, i32 noundef %align, i32 noundef %tx_limit, i32 noundef %open_limit, i32 noundef %gfp_mask) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %align)
  %cmp.not.i = icmp eq i32 %align, 0
  br i1 %cmp.not.i, label %entry.cleanup_crit_edge, label %is_power_of_2.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

is_power_of_2.exit:                               ; preds = %entry
  %0 = tail call i32 @llvm.ctpop.i32(i32 %align) #5, !range !24
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp1.i = icmp ugt i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp = icmp slt i32 %size, 0
  %or.cond = or i1 %cmp, %cmp1.i
  br i1 %or.cond, label %is_power_of_2.exit.cleanup_crit_edge, label %if.end

is_power_of_2.exit.cleanup_crit_edge:             ; preds = %is_power_of_2.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %is_power_of_2.exit
  %sub = add nsw i32 %size, -1
  %sub1 = add i32 %align, -1
  %or = or i32 %sub1, %sub
  %add = add i32 %or, 1
  %mul = mul i32 %open_limit, %align
  %add2 = add i32 %add, %mul
  %mul3 = mul i32 %align, 3
  %add4 = add i32 %add2, %mul3
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add4, i32 noundef %gfp_mask) #8
  %data = getelementptr inbounds %struct.dma_fifo, ptr %fifo, i32 0, i32 13
  %1 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call9.i, ptr %data, align 4
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %fifo to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %fifo, align 4
  %out = getelementptr inbounds %struct.dma_fifo, ptr %fifo, i32 0, i32 1
  %3 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %out, align 4
  %done = getelementptr inbounds %struct.dma_fifo, ptr %fifo, i32 0, i32 2
  %4 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %done, align 4
  %size9 = getelementptr inbounds %struct.dma_fifo, ptr %fifo, i32 0, i32 4
  %5 = ptrtoint ptr %size9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add, ptr %size9, align 4
  %avail = getelementptr inbounds %struct.dma_fifo, ptr %fifo, i32 0, i32 7
  %6 = ptrtoint ptr %avail to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add, ptr %avail, align 4
  %align10 = getelementptr inbounds %struct.dma_fifo, ptr %fifo, i32 0, i32 8
  %7 = ptrtoint ptr %align10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %align, ptr %align10, align 4
  %neg = sub i32 0, %align
  %and = and i32 %neg, %tx_limit
  %8 = tail call i32 @llvm.smax.i32(i32 %and, i32 %align)
  %tx_limit13 = getelementptr inbounds %struct.dma_fifo, ptr %fifo, i32 0, i32 9
  %9 = ptrtoint ptr %tx_limit13 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %tx_limit13, align 4
  %open = getelementptr inbounds %struct.dma_fifo, ptr %fifo, i32 0, i32 11
  %10 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %open, align 4
  %open_limit14 = getelementptr inbounds %struct.dma_fifo, ptr %fifo, i32 0, i32 10
  %11 = ptrtoint ptr %open_limit14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %open_limit, ptr %open_limit14, align 4
  %guard = getelementptr inbounds %struct.dma_fifo, ptr %fifo, i32 0, i32 5
  %12 = ptrtoint ptr %guard to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add2, ptr %guard, align 4
  %capacity17 = getelementptr inbounds %struct.dma_fifo, ptr %fifo, i32 0, i32 6
  %13 = ptrtoint ptr %capacity17 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add4, ptr %capacity17, align 4
  %14 = getelementptr inbounds %struct.dma_fifo, ptr %fifo, i32 0, i32 3
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load = load i8, ptr %14, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %14, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %is_power_of_2.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -22, %is_power_of_2.exit.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dma_fifo_free(ptr noundef %fifo) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dma_fifo, ptr %fifo, i32 0, i32 13
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %pending1 = getelementptr inbounds %struct.dma_fifo, ptr %fifo, i32 0, i32 12
  %2 = ptrtoint ptr %pending1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pending1, align 4
  %cmp.not25 = icmp eq ptr %3, %pending1
  br i1 %cmp.not25, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %list_del_init.exit.for.body_crit_edge, %if.end.for.body_crit_edge
  %pending.026 = phi ptr [ %next.0, %list_del_init.exit.for.body_crit_edge ], [ %3, %if.end.for.body_crit_edge ]
  %4 = ptrtoint ptr %pending.026 to i32
  call void @__asan_load4_noabort(i32 %4)
  %next.0 = load ptr, ptr %pending.026, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pending.026) #5
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pending.026, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %pending.026 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pending.026, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %11 = ptrtoint ptr %pending.026 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %pending.026, ptr %pending.026, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %pending.026, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %pending.026, ptr %prev.i3.i, align 4
  %cmp.not = icmp eq ptr %next.0, %pending1
  br i1 %cmp.not, label %list_del_init.exit.for.end_crit_edge, label %list_del_init.exit.for.body_crit_edge

list_del_init.exit.for.body_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

list_del_init.exit.for.end_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %list_del_init.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  tail call void @kfree(ptr noundef %14) #5
  %15 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %data, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dma_fifo_reset(ptr noundef %fifo) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dma_fifo, ptr %fifo, i32 0, i32 13
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %pending1 = getelementptr inbounds %struct.dma_fifo, ptr %fifo, i32 0, i32 12
  %2 = ptrtoint ptr %pending1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pending1, align 4
  %cmp.not28 = icmp eq ptr %3, %pending1
  br i1 %cmp.not28, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %list_del_init.exit.for.body_crit_edge, %if.end.for.body_crit_edge
  %pending.029 = phi ptr [ %next.0, %list_del_init.exit.for.body_crit_edge ], [ %3, %if.end.for.body_crit_edge ]
  %4 = ptrtoint ptr %pending.029 to i32
  call void @__asan_load4_noabort(i32 %4)
  %next.0 = load ptr, ptr %pending.029, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pending.029) #5
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pending.029, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %pending.029 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pending.029, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %11 = ptrtoint ptr %pending.029 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %pending.029, ptr %pending.029, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %pending.029, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %pending.029, ptr %prev.i3.i, align 4
  %cmp.not = icmp eq ptr %next.0, %pending1
  br i1 %cmp.not, label %list_del_init.exit.for.end_crit_edge, label %list_del_init.exit.for.body_crit_edge

list_del_init.exit.for.body_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

list_del_init.exit.for.end_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %list_del_init.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  %13 = ptrtoint ptr %fifo to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %fifo, align 4
  %out = getelementptr inbounds %struct.dma_fifo, ptr %fifo, i32 0, i32 1
  %14 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %out, align 4
  %done = getelementptr inbounds %struct.dma_fifo, ptr %fifo, i32 0, i32 2
  %15 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %done, align 4
  %size = getelementptr inbounds %struct.dma_fifo, ptr %fifo, i32 0, i32 4
  %16 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size, align 4
  %avail = getelementptr inbounds %struct.dma_fifo, ptr %fifo, i32 0, i32 7
  %18 = ptrtoint ptr %avail to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %avail, align 4
  %open = getelementptr inbounds %struct.dma_fifo, ptr %fifo, i32 0, i32 11
  %19 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %open, align 4
  %20 = getelementptr inbounds %struct.dma_fifo, ptr %fifo, i32 0, i32 3
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load = load i8, ptr %20, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %20, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dma_fifo_in(ptr nocapture noundef %fifo, ptr nocapture noundef readonly %src, i32 noundef %n) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dma_fifo, ptr %fifo, i32 0, i32 13
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.dma_fifo, ptr %fifo, i32 0, i32 3
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool1.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %avail = getelementptr inbounds %struct.dma_fifo, ptr %fifo, i32 0, i32 7
  %4 = ptrtoint ptr %avail to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %avail, align 4
  %6 = tail call i32 @llvm.smin.i32(i32 %5, i32 %n)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp7 = icmp slt i32 %6, 1
  br i1 %cmp7, label %if.end3.cleanup_crit_edge, label %if.end9

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  %7 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fifo, align 4
  %capacity = getelementptr inbounds %struct.dma_fifo, ptr %fifo, i32 0, i32 6
  %9 = ptrtoint ptr %capacity to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %capacity, align 4
  %rem = urem i32 %8, %10
  %sub = sub i32 %10, %rem
  %11 = tail call i32 @llvm.smin.i32(i32 %6, i32 %sub)
  %add.ptr = getelementptr i8, ptr %1, i32 %rem
  %12 = call ptr @memcpy(ptr %add.ptr, ptr %src, i32 %11)
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %add.ptr14 = getelementptr i8, ptr %src, i32 %11
  %sub15 = sub i32 %6, %11
  %15 = call ptr @memcpy(ptr %14, ptr %add.ptr14, i32 %sub15)
  %done = getelementptr inbounds %struct.dma_fifo, ptr %fifo, i32 0, i32 2
  %16 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %done, align 4
  %18 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fifo, align 4
  %add = add i32 %19, %6
  %add.neg.i = xor i32 %19, -1
  %sub.i = add i32 %17, %add.neg.i
  %sub2.i = add nsw i32 %6, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %sub2.i)
  %cmp.i = icmp ult i32 %sub.i, %sub2.i
  br i1 %cmp.i, label %if.end9.do.end_crit_edge, label %lor.rhs

if.end9.do.end_crit_edge:                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.rhs:                                          ; preds = %if.end9
  %20 = ptrtoint ptr %avail to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %avail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %6)
  %cmp19 = icmp slt i32 %21, %6
  br i1 %cmp19, label %lor.rhs.do.end_crit_edge, label %if.end57

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %if.end9.do.end_crit_edge
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load2199 = load i8, ptr %2, align 4
  %bf.set101 = or i8 %bf.load2199, -128
  store i8 %bf.set101, ptr %2, align 4
  %out = getelementptr inbounds %struct.dma_fifo, ptr %fifo, i32 0, i32 1
  %23 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %out, align 4
  %25 = ptrtoint ptr %avail to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %avail, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 161, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %19, i32 noundef %24, i32 noundef %17, i32 noundef %6, i32 noundef %26) #5
  br label %cleanup

if.end57:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load21 = load i8, ptr %2, align 4
  %bf.clear = and i8 %bf.load21, 127
  store i8 %bf.clear, ptr %2, align 4
  %28 = ptrtoint ptr %fifo to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add, ptr %fifo, align 4
  %29 = ptrtoint ptr %avail to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %avail, align 4
  %sub61 = sub i32 %30, %6
  store i32 %sub61, ptr %avail, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %do.end, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %do.end ], [ %6, %if.end57 ], [ -2, %entry.cleanup_crit_edge ], [ -6, %if.end.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dma_fifo_out_pend(ptr noundef %fifo, ptr noundef %pended) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dma_fifo, ptr %fifo, i32 0, i32 13
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.dma_fifo, ptr %fifo, i32 0, i32 3
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool1.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %len4 = getelementptr inbounds %struct.dma_pending, ptr %pended, i32 0, i32 2
  %4 = ptrtoint ptr %len4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %len4, align 4
  %data5 = getelementptr inbounds %struct.dma_pending, ptr %pended, i32 0, i32 1
  %5 = ptrtoint ptr %data5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %data5, align 4
  %out = getelementptr inbounds %struct.dma_fifo, ptr %fifo, i32 0, i32 1
  %6 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %out, align 4
  %out6 = getelementptr inbounds %struct.dma_pending, ptr %pended, i32 0, i32 4
  %8 = ptrtoint ptr %out6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %out6, align 4
  %9 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fifo, align 4
  %11 = load i32, ptr %out, align 4
  %sub = sub i32 %10, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool8.not = icmp eq i32 %sub, 0
  br i1 %tobool8.not, label %if.end3.cleanup_crit_edge, label %if.end10

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %if.end3
  %open = getelementptr inbounds %struct.dma_fifo, ptr %fifo, i32 0, i32 11
  %12 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %open, align 4
  %open_limit = getelementptr inbounds %struct.dma_fifo, ptr %fifo, i32 0, i32 10
  %14 = ptrtoint ptr %open_limit to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %open_limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp = icmp eq i32 %13, %15
  br i1 %cmp, label %if.end10.cleanup_crit_edge, label %if.end12

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %if.end10
  %capacity = getelementptr inbounds %struct.dma_fifo, ptr %fifo, i32 0, i32 6
  %16 = ptrtoint ptr %capacity to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %capacity, align 4
  %rem = urem i32 %11, %17
  %sub15 = sub i32 %17, %rem
  %tx_limit = getelementptr inbounds %struct.dma_fifo, ptr %fifo, i32 0, i32 9
  %18 = ptrtoint ptr %tx_limit to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_limit, align 4
  %20 = tail call i32 @llvm.umin.i32(i32 %sub15, i32 %19)
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %20)
  %cmp17 = icmp ugt i32 %sub, %20
  br i1 %cmp17, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %add = add i32 %20, %11
  %21 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add, ptr %out, align 4
  br label %if.end36

if.else:                                          ; preds = %if.end12
  %add20 = add i32 %rem, %sub
  %guard = getelementptr inbounds %struct.dma_fifo, ptr %fifo, i32 0, i32 5
  %22 = ptrtoint ptr %guard to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %guard, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add20, i32 %23)
  %cmp21 = icmp ugt i32 %add20, %23
  br i1 %cmp21, label %if.then22, label %if.else27

if.then22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %add24 = add i32 %sub15, %11
  %24 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add24, ptr %out, align 4
  %25 = ptrtoint ptr %fifo to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add24, ptr %fifo, align 4
  br label %if.end36

if.else27:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %sub28 = add i32 %sub, -1
  %align = getelementptr inbounds %struct.dma_fifo, ptr %fifo, i32 0, i32 8
  %26 = ptrtoint ptr %align to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %align, align 4
  %sub29 = add i32 %27, -1
  %or = or i32 %sub29, %sub28
  %add30 = add i32 %11, 1
  %add32 = add i32 %add30, %or
  %28 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add32, ptr %out, align 4
  %29 = ptrtoint ptr %fifo to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add32, ptr %fifo, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.else27, %if.then22, %if.then18
  %n.0 = phi i32 [ %20, %if.then18 ], [ %sub, %if.then22 ], [ %sub, %if.else27 ]
  %30 = ptrtoint ptr %len4 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %n.0, ptr %len4, align 4
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %32, i32 %rem
  %33 = ptrtoint ptr %data5 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr, ptr %data5, align 4
  %34 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %out, align 4
  %next = getelementptr inbounds %struct.dma_pending, ptr %pended, i32 0, i32 3
  %36 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %next, align 4
  %pending = getelementptr inbounds %struct.dma_fifo, ptr %fifo, i32 0, i32 12
  %prev.i = getelementptr inbounds %struct.dma_fifo, ptr %fifo, i32 0, i32 12, i32 1
  %37 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %pended, ptr noundef %38, ptr noundef %pending) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.end36.list_add_tail.exit_crit_edge

if.end36.list_add_tail.exit_crit_edge:            ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %pended, ptr %prev.i, align 4
  %40 = ptrtoint ptr %pended to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %pending, ptr %pended, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %pended, i32 0, i32 1
  %41 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev3.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %pended, ptr %38, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end36.list_add_tail.exit_crit_edge
  %43 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %open, align 4
  %inc = add i32 %44, 1
  store i32 %inc, ptr %open, align 4
  %45 = ptrtoint ptr %open_limit to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %open_limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %46)
  %cmp44 = icmp sgt i32 %inc, %46
  %47 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load46 = load i8, ptr %2, align 4
  %bf.shl = select i1 %cmp44, i8 -128, i8 0
  %bf.clear = and i8 %bf.load46, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %2, align 4
  br i1 %cmp44, label %do.end, label %if.end81, !prof !25

do.end:                                           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 227, i32 noundef 9, ptr noundef nonnull @.str.2, i32 noundef %inc, i32 noundef %46) #5
  br label %cleanup

if.end81:                                         ; preds = %list_add_tail.exit
  %48 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %out, align 4
  %align83 = getelementptr inbounds %struct.dma_fifo, ptr %fifo, i32 0, i32 8
  %50 = ptrtoint ptr %align83 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %align83, align 4
  %sub84 = add i32 %51, -1
  %and = and i32 %sub84, %49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool85.not = icmp eq i32 %and, 0
  %bf.shl92 = select i1 %tobool85.not, i8 0, i8 -128
  %bf.set94 = or i8 %bf.shl92, %bf.clear
  %52 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %bf.set94, ptr %2, align 4
  br i1 %tobool85.not, label %if.end135, label %do.end117, !prof !26

do.end117:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 231, i32 noundef 9, ptr noundef nonnull @.str.3, i32 noundef %49, i32 noundef %51) #5
  br label %cleanup

if.end135:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #7
  %sub136 = sub i32 %sub, %n.0
  br label %cleanup

cleanup:                                          ; preds = %if.end135, %do.end117, %do.end, %if.end10.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %do.end ], [ -6, %do.end117 ], [ %sub136, %if.end135 ], [ -2, %entry.cleanup_crit_edge ], [ -6, %if.end.cleanup_crit_edge ], [ -61, %if.end3.cleanup_crit_edge ], [ -11, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dma_fifo_out_complete(ptr noundef %fifo, ptr nocapture noundef readonly %complete) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dma_fifo, ptr %fifo, i32 0, i32 13
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.dma_fifo, ptr %fifo, i32 0, i32 3
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool1.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %pending4 = getelementptr inbounds %struct.dma_fifo, ptr %fifo, i32 0, i32 12
  %4 = ptrtoint ptr %pending4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %pending4, align 4
  %cmp.i.not = icmp eq ptr %5, %pending4
  br i1 %cmp.i.not, label %land.lhs.true, label %if.end3.if.end7_crit_edge

if.end3.if.end7_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end3
  %open = getelementptr inbounds %struct.dma_fifo, ptr %fifo, i32 0, i32 11
  %6 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %if.end3.if.end7_crit_edge
  %8 = ptrtoint ptr %pending4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %pending4, align 4
  %cmp.i293 = icmp ne ptr %9, %pending4
  %open10 = getelementptr inbounds %struct.dma_fifo, ptr %fifo, i32 0, i32 11
  %10 = ptrtoint ptr %open10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %open10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp11 = icmp eq i32 %11, 0
  %cmp12.not = xor i1 %cmp.i293, %cmp11
  %bf.shl = select i1 %cmp12.not, i8 0, i8 -128
  %bf.set = or i8 %bf.shl, %bf.load
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %bf.set, ptr %2, align 4
  br i1 %cmp12.not, label %if.end49, label %do.end, !prof !26

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 255, i32 noundef 9, ptr noundef nonnull @.str.4, i32 noundef %11) #5
  br label %cleanup

if.end49:                                         ; preds = %if.end7
  %data50 = getelementptr inbounds %struct.dma_pending, ptr %complete, i32 0, i32 1
  %13 = ptrtoint ptr %data50 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data50, align 4
  %15 = call ptr @memcpy(ptr %14, ptr %complete, i32 24)
  %16 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %complete, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %14, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %14, ptr %prev.i, align 4
  %prev3.i = getelementptr inbounds %struct.list_head, ptr %complete, i32 0, i32 1
  %20 = ptrtoint ptr %prev3.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev3.i, align 4
  %prev4.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %22 = ptrtoint ptr %prev4.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %prev4.i, align 4
  %23 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %14, ptr %21, align 4
  %data.i = getelementptr inbounds %struct.dma_pending, ptr %14, i32 0, i32 1
  %24 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %25, i32 1
  store ptr %add.ptr.i, ptr %data.i, align 4
  %26 = ptrtoint ptr %pending4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pending4, align 4
  %cmp62.not306 = icmp eq ptr %27, %pending4
  br i1 %cmp62.not306, label %if.end49.for.endthread-pre-split_crit_edge, label %for.body.lr.ph

if.end49.for.endthread-pre-split_crit_edge:       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.endthread-pre-split

for.body.lr.ph:                                   ; preds = %if.end49
  %done = getelementptr inbounds %struct.dma_fifo, ptr %fifo, i32 0, i32 2
  %avail = getelementptr inbounds %struct.dma_fifo, ptr %fifo, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %list_del_init.exit.for.body_crit_edge, %for.body.lr.ph
  %pending.0307 = phi ptr [ %27, %for.body.lr.ph ], [ %next.0309, %list_del_init.exit.for.body_crit_edge ]
  %28 = ptrtoint ptr %pending.0307 to i32
  call void @__asan_load4_noabort(i32 %28)
  %next.0309 = load ptr, ptr %pending.0307, align 4
  %data.i295 = getelementptr inbounds %struct.dma_pending, ptr %pending.0307, i32 0, i32 1
  %29 = ptrtoint ptr %data.i295 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i295, align 4
  %31 = ptrtoint ptr %30 to i32
  %and.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %for.body.for.endthread-pre-split_crit_edge, label %if.end68

for.body.for.endthread-pre-split_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.endthread-pre-split

if.end68:                                         ; preds = %for.body
  %out = getelementptr inbounds %struct.dma_pending, ptr %pending.0307, i32 0, i32 4
  %32 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %out, align 4
  %34 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %done, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp69.not = icmp eq i32 %33, %35
  br i1 %cmp69.not, label %lor.rhs, label %do.end106.critedge

lor.rhs:                                          ; preds = %if.end68
  %36 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %fifo, align 4
  %next72 = getelementptr inbounds %struct.dma_pending, ptr %pending.0307, i32 0, i32 3
  %38 = ptrtoint ptr %next72 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %next72, align 4
  %add.neg.i = xor i32 %33, -1
  %sub.i = add i32 %37, %add.neg.i
  %sub2.i = add i32 %39, %add.neg.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %sub2.i)
  %cmp.i296 = icmp ult i32 %sub.i, %sub2.i
  %40 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load79 = load i8, ptr %2, align 4
  %bf.shl81 = select i1 %cmp.i296, i8 -128, i8 0
  %bf.clear82 = and i8 %bf.load79, 127
  %bf.set83 = or i8 %bf.shl81, %bf.clear82
  store i8 %bf.set83, ptr %2, align 4
  br i1 %cmp.i296, label %lor.rhs.do.end106_crit_edge, label %if.end127, !prof !25

lor.rhs.do.end106_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end106

do.end106.critedge:                               ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load79.c = load i8, ptr %2, align 4
  %bf.set83.c = or i8 %bf.load79.c, -128
  store i8 %bf.set83.c, ptr %2, align 4
  br label %do.end106

do.end106:                                        ; preds = %do.end106.critedge, %lor.rhs.do.end106_crit_edge
  %42 = phi i32 [ %35, %do.end106.critedge ], [ %33, %lor.rhs.do.end106_crit_edge ]
  %out325 = getelementptr inbounds %struct.dma_pending, ptr %pending.0307, i32 0, i32 4
  %43 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %fifo, align 4
  %out108 = getelementptr inbounds %struct.dma_fifo, ptr %fifo, i32 0, i32 1
  %45 = ptrtoint ptr %out108 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %out108, align 4
  %47 = ptrtoint ptr %out325 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %out325, align 4
  %next111 = getelementptr inbounds %struct.dma_pending, ptr %pending.0307, i32 0, i32 3
  %49 = ptrtoint ptr %next111 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %next111, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 275, i32 noundef 9, ptr noundef nonnull @.str.5, i32 noundef %44, i32 noundef %46, i32 noundef %42, i32 noundef %48, i32 noundef %50) #5
  br label %cleanup

if.end127:                                        ; preds = %lor.rhs
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pending.0307) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.end127.list_del_init.exit_crit_edge

if.end127.list_del_init.exit_crit_edge:           ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pending.0307, i32 0, i32 1
  %51 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev.i.i, align 4
  %53 = ptrtoint ptr %pending.0307 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pending.0307, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %prev1.i.i.i, align 4
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %54, ptr %52, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end127.list_del_init.exit_crit_edge
  %57 = ptrtoint ptr %pending.0307 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %pending.0307, ptr %pending.0307, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %pending.0307, i32 0, i32 1
  %58 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %pending.0307, ptr %prev.i3.i, align 4
  %59 = ptrtoint ptr %next72 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %next72, align 4
  %61 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %done, align 4
  %len = getelementptr inbounds %struct.dma_pending, ptr %pending.0307, i32 0, i32 2
  %62 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %len, align 4
  %64 = ptrtoint ptr %avail to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %avail, align 4
  %add = add i32 %65, %63
  store i32 %add, ptr %avail, align 4
  %66 = ptrtoint ptr %open10 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %open10, align 4
  %dec = add i32 %67, -1
  store i32 %dec, ptr %open10, align 4
  %cmp62.not = icmp eq ptr %next.0309, %pending4
  br i1 %cmp62.not, label %list_del_init.exit.for.end_crit_edge, label %list_del_init.exit.for.body_crit_edge

list_del_init.exit.for.body_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

list_del_init.exit.for.end_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.endthread-pre-split:                          ; preds = %for.body.for.endthread-pre-split_crit_edge, %if.end49.for.endthread-pre-split_crit_edge
  %68 = ptrtoint ptr %open10 to i32
  call void @__asan_load4_noabort(i32 %68)
  %.pr = load i32, ptr %open10, align 4
  br label %for.end

for.end:                                          ; preds = %for.endthread-pre-split, %list_del_init.exit.for.end_crit_edge
  %69 = phi i32 [ %.pr, %for.endthread-pre-split ], [ %dec, %list_del_init.exit.for.end_crit_edge ]
  %70 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %70)
  %bf.load144 = load i8, ptr %2, align 4
  %sh.diff = lshr i32 %69, 24
  %tr.sh.diff = trunc i32 %sh.diff to i8
  %bf.shl146 = and i8 %tr.sh.diff, -128
  %bf.clear147 = and i8 %bf.load144, 127
  %bf.set148 = or i8 %bf.shl146, %bf.clear147
  store i8 %bf.set148, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %69)
  %tobool155.not = icmp sgt i32 %69, -1
  br i1 %tobool155.not, label %if.end188, label %do.end171, !prof !26

do.end171:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 287, i32 noundef 9, ptr noundef nonnull @.str.6, i32 noundef %69) #5
  br label %cleanup

if.end188:                                        ; preds = %for.end
  %avail189 = getelementptr inbounds %struct.dma_fifo, ptr %fifo, i32 0, i32 7
  %71 = ptrtoint ptr %avail189 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %avail189, align 4
  %size = getelementptr inbounds %struct.dma_fifo, ptr %fifo, i32 0, i32 4
  %73 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %74)
  %cmp190 = icmp sgt i32 %72, %74
  %bf.shl198 = select i1 %cmp190, i8 -128, i8 0
  %bf.set200 = or i8 %bf.shl198, %bf.clear147
  %75 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %bf.set200, ptr %2, align 4
  br i1 %cmp190, label %do.end223, label %if.end188.cleanup_crit_edge, !prof !25

if.end188.cleanup_crit_edge:                      ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end223:                                        ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 290, i32 noundef 9, ptr noundef nonnull @.str.7, i32 noundef %72, i32 noundef %74) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end223, %if.end188.cleanup_crit_edge, %do.end171, %do.end106, %do.end, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %do.end ], [ -6, %do.end106 ], [ -6, %do.end171 ], [ -2, %entry.cleanup_crit_edge ], [ -6, %if.end.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -6, %do.end223 ], [ 0, %if.end188.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { argmemonly nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/fwserial/dma_fifo.c", i32 158, i32 6}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/staging/fwserial/dma_fifo.c", i32 225, i32 6}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/staging/fwserial/dma_fifo.c", i32 229, i32 6}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/staging/fwserial/dma_fifo.c", i32 253, i32 6}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/staging/fwserial/dma_fifo.c", i32 271, i32 7}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/staging/fwserial/dma_fifo.c", i32 287, i32 6}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/staging/fwserial/dma_fifo.c", i32 289, i32 6}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{i32 0, i32 33}
!25 = !{!"branch_weights", i32 1, i32 2000}
!26 = !{!"branch_weights", i32 2000, i32 1}
