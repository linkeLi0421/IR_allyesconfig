; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx4/icm.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx4/icm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mlx4_icm_chunk = type { %struct.list_head, i32, i32, i8, %union.anon.123 }
%struct.list_head = type { ptr, ptr }
%union.anon.123 = type { [12 x %struct.scatterlist] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.99, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.99 = type { ptr }
%struct.mlx4_icm_buf = type { ptr, i32, i32 }
%struct.mlx4_dev = type { ptr, i32, i32, %struct.mlx4_caps, %struct.mlx4_phys_caps, %struct.mlx4_quotas, %struct.xarray, i8, i8, [64 x i8], i32, i32, [3 x i64], [3 x i64], ptr, i8 }
%struct.mlx4_caps = type { i64, i32, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i64], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i64], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i16, [3 x i8], i32, i32, [5 x i32], i32, [5 x i32], i32, i32, [3 x i32], [3 x i8], [3 x i8], [3 x i8], [3 x i32], [3 x i32], i32, [3 x i8], i16, i32, i32, i8, i32, i32, i16, [3 x i64], i32, [3 x i8], [3 x i8], i8, i32, i32, i32, [3 x i8], %struct.mlx4_rate_limit_caps, i32, i8 }
%struct.mlx4_rate_limit_caps = type { i16, i8, i16, i8, i16 }
%struct.mlx4_phys_caps = type { [3 x i32], [3 x i32], i32, i32, i32, i32 }
%struct.mlx4_quotas = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mlx4_icm = type { %struct.list_head, i32 }
%struct.mlx4_icm_table = type { i64, i32, i32, i32, i32, i32, %struct.mutex, ptr }

@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/ethernet/mellanox/mlx4/icm.c\00", [55 x i8] zeroinitializer }, align 32
@mlx4_init_icm_table.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&table->mutex\00", [18 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 426, i32 6 }
@___asan_gen_.6 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private constant [44 x i8] c"../drivers/net/ethernet/mellanox/mlx4/icm.c\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 439, i32 2 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @mlx4_init_icm_table.__key, ptr @.str.1], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_init_icm_table.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_free_icm(ptr nocapture noundef readonly %dev, ptr noundef %icm, i32 noundef %coherent) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %icm, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %icm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icm, align 4
  %cmp.not35 = icmp eq ptr %1, %icm
  br i1 %cmp.not35, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %coherent)
  %tobool8.not = icmp eq i32 %coherent, 0
  br label %for.body

for.body:                                         ; preds = %if.end10.for.body_crit_edge, %for.body.lr.ph
  %chunk.036 = phi ptr [ %1, %for.body.lr.ph ], [ %tmp.039, %if.end10.for.body_crit_edge ]
  %2 = ptrtoint ptr %chunk.036 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.039 = load ptr, ptr %chunk.036, align 4
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %for.body
  %npages.i = getelementptr inbounds %struct.mlx4_icm_chunk, ptr %chunk.036, i32 0, i32 1
  %3 = ptrtoint ptr %npages.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %npages.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp11.i = icmp sgt i32 %4, 0
  br i1 %cmp11.i, label %for.body.lr.ph.i, label %if.then9.if.end10_crit_edge

if.then9.if.end10_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

for.body.lr.ph.i:                                 ; preds = %if.then9
  %5 = getelementptr inbounds %struct.mlx4_icm_chunk, ptr %chunk.036, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.012.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %arrayidx.i = getelementptr [12 x %struct.mlx4_icm_buf], ptr %5, i32 0, i32 %i.012.i
  %size.i = getelementptr [12 x %struct.mlx4_icm_buf], ptr %5, i32 0, i32 %i.012.i, i32 1
  %10 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size.i, align 4
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %dma_addr.i = getelementptr [12 x %struct.mlx4_icm_buf], ptr %5, i32 0, i32 %i.012.i, i32 2
  %14 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma_addr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev1.i, i32 noundef %11, ptr noundef %13, i32 noundef %15, i32 noundef 0) #5
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %16 = ptrtoint ptr %npages.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %npages.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %17
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end10_crit_edge

for.body.i.if.end10_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

if.else:                                          ; preds = %for.body
  %nsg.i = getelementptr inbounds %struct.mlx4_icm_chunk, ptr %chunk.036, i32 0, i32 2
  %18 = ptrtoint ptr %nsg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nsg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i26 = icmp sgt i32 %19, 0
  br i1 %cmp.i26, label %if.then.i, label %if.else.if.end.i_crit_edge

if.else.if.end.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %dev1.i27 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %24 = getelementptr inbounds %struct.mlx4_icm_chunk, ptr %chunk.036, i32 0, i32 4
  %npages.i28 = getelementptr inbounds %struct.mlx4_icm_chunk, ptr %chunk.036, i32 0, i32 1
  %25 = ptrtoint ptr %npages.i28 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %npages.i28, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev1.i27, ptr noundef %24, i32 noundef %26, i32 noundef 0, i32 noundef 0) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.else.if.end.i_crit_edge
  %npages2.i = getelementptr inbounds %struct.mlx4_icm_chunk, ptr %chunk.036, i32 0, i32 1
  %27 = ptrtoint ptr %npages2.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %npages2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp314.i = icmp sgt i32 %28, 0
  br i1 %cmp314.i, label %for.body.lr.ph.i29, label %if.end.i.if.end10_crit_edge

if.end.i.if.end10_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

for.body.lr.ph.i29:                               ; preds = %if.end.i
  %29 = getelementptr inbounds %struct.mlx4_icm_chunk, ptr %chunk.036, i32 0, i32 4
  br label %for.body.i31

for.body.i31:                                     ; preds = %sg_page.exit.i.for.body.i31_crit_edge, %for.body.lr.ph.i29
  %i.015.i = phi i32 [ 0, %for.body.lr.ph.i29 ], [ %inc.i32, %sg_page.exit.i.for.body.i31_crit_edge ]
  %arrayidx.i30 = getelementptr [12 x %struct.scatterlist], ptr %29, i32 0, i32 %i.015.i
  %30 = ptrtoint ptr %arrayidx.i30 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i30, align 4
  %and.i.i.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_page.exit.i, label %do.body2.i.i, !prof !17

do.body2.i.i:                                     ; preds = %for.body.i31
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #5, !srcloc !18
  unreachable

sg_page.exit.i:                                   ; preds = %for.body.i31
  %and.i.i = and i32 %31, -4
  %32 = inttoptr i32 %and.i.i to ptr
  %length.i = getelementptr [12 x %struct.scatterlist], ptr %29, i32 0, i32 %i.015.i, i32 2
  %33 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %length.i, align 4
  %dec.i.i = add i32 %34, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i.i)
  %tobool.not.i.i.i = icmp ult i32 %dec.i.i, 4096
  %shr.i.i = lshr i32 %dec.i.i, 12
  %35 = tail call i32 @llvm.ctlz.i32(i32 %shr.i.i, i1 true) #5, !range !19
  %sub.i.i.i = sub nuw nsw i32 32, %35
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 0, i32 %sub.i.i.i
  tail call void @__free_pages(ptr noundef %32, i32 noundef %cond.i.i.i) #5
  %inc.i32 = add nuw nsw i32 %i.015.i, 1
  %36 = ptrtoint ptr %npages2.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %npages2.i, align 4
  %cmp3.i = icmp slt i32 %inc.i32, %37
  br i1 %cmp3.i, label %sg_page.exit.i.for.body.i31_crit_edge, label %sg_page.exit.i.if.end10_crit_edge

sg_page.exit.i.if.end10_crit_edge:                ; preds = %sg_page.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

sg_page.exit.i.for.body.i31_crit_edge:            ; preds = %sg_page.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i31

if.end10:                                         ; preds = %sg_page.exit.i.if.end10_crit_edge, %if.end.i.if.end10_crit_edge, %for.body.i.if.end10_crit_edge, %if.then9.if.end10_crit_edge
  tail call void @kfree(ptr noundef %chunk.036) #5
  %cmp.not = icmp eq ptr %tmp.039, %icm
  br i1 %cmp.not, label %if.end10.for.end_crit_edge, label %if.end10.for.body_crit_edge

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %if.end10.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %icm) #5
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx4_alloc_icm(ptr nocapture noundef readonly %dev, i32 noundef %npages, i32 noundef %gfp_mask, i32 noundef %coherent) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %coherent)
  %tobool = icmp ne i32 %coherent, 0
  %and = and i32 %gfp_mask, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1 = icmp ne i32 %and, 0
  %0 = and i1 %tobool, %tobool1
  br i1 %0, label %do.body4, label %do.end9, !prof !20

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/mellanox/mlx4/icm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 142, 0\0A.popsection", ""() #5, !srcloc !21
  unreachable

do.end9:                                          ; preds = %entry
  %and10 = and i32 %gfp_mask, -8195
  %numa_node = getelementptr inbounds %struct.mlx4_dev, ptr %dev, i32 0, i32 10
  %and.i.i = and i32 %gfp_mask, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i1.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i1.i, label %do.end9.kmalloc_node.exit_crit_edge, label %if.end.i.i, !prof !17

do.end9.kmalloc_node.exit_crit_edge:              ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %kmalloc_node.exit

if.end.i.i:                                       ; preds = %do.end9
  %and2.i.i = and i32 %gfp_mask, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end5.i.i, label %if.end.i.i.kmalloc_node.exit_crit_edge

if.end.i.i.kmalloc_node.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %kmalloc_node.exit

if.end5.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %and6.i.i = and i32 %gfp_mask, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  %..i.i = select i1 %tobool7.not.i.i, i32 1, i32 2
  br label %kmalloc_node.exit

kmalloc_node.exit:                                ; preds = %if.end5.i.i, %if.end.i.i.kmalloc_node.exit_crit_edge, %do.end9.kmalloc_node.exit_crit_edge
  %retval.0.i2.i = phi i32 [ 0, %do.end9.kmalloc_node.exit_crit_edge ], [ 3, %if.end.i.i.kmalloc_node.exit_crit_edge ], [ %..i.i, %if.end5.i.i ]
  %arrayidx3.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i2.i, i32 7
  %1 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx3.i, align 4
  %call.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef %and10, i32 noundef 12) #8
  %tobool11.not = icmp eq ptr %call.i.i, null
  br i1 %tobool11.not, label %if.then12, label %kmalloc_node.exit.if.end18_crit_edge

kmalloc_node.exit.if.end18_crit_edge:             ; preds = %kmalloc_node.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then12:                                        ; preds = %kmalloc_node.exit
  br i1 %cmp.i1.i, label %if.then12.kmalloc.exit_crit_edge, label %if.end.i.i169, !prof !17

if.then12.kmalloc.exit_crit_edge:                 ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %kmalloc.exit

if.end.i.i169:                                    ; preds = %if.then12
  %and2.i.i167 = and i32 %gfp_mask, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i167)
  %tobool3.not.i.i168 = icmp eq i32 %and2.i.i167, 0
  br i1 %tobool3.not.i.i168, label %if.end5.i.i173, label %if.end.i.i169.kmalloc.exit_crit_edge

if.end.i.i169.kmalloc.exit_crit_edge:             ; preds = %if.end.i.i169
  call void @__sanitizer_cov_trace_pc() #7
  br label %kmalloc.exit

if.end5.i.i173:                                   ; preds = %if.end.i.i169
  call void @__sanitizer_cov_trace_pc() #7
  %and6.i.i170 = and i32 %gfp_mask, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i170)
  %tobool7.not.i.i171 = icmp eq i32 %and6.i.i170, 0
  %..i.i172 = select i1 %tobool7.not.i.i171, i32 1, i32 2
  br label %kmalloc.exit

kmalloc.exit:                                     ; preds = %if.end5.i.i173, %if.end.i.i169.kmalloc.exit_crit_edge, %if.then12.kmalloc.exit_crit_edge
  %retval.0.i20.i = phi i32 [ 0, %if.then12.kmalloc.exit_crit_edge ], [ 3, %if.end.i.i169.kmalloc.exit_crit_edge ], [ %..i.i172, %if.end5.i.i173 ]
  %arrayidx6.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i20.i, i32 7
  %3 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx6.i, align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef %and10, i32 noundef 12) #8
  %tobool15.not = icmp eq ptr %call7.i, null
  br i1 %tobool15.not, label %kmalloc.exit.cleanup_crit_edge, label %kmalloc.exit.if.end18_crit_edge

kmalloc.exit.if.end18_crit_edge:                  ; preds = %kmalloc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

kmalloc.exit.cleanup_crit_edge:                   ; preds = %kmalloc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end18:                                         ; preds = %kmalloc.exit.if.end18_crit_edge, %kmalloc_node.exit.if.end18_crit_edge
  %icm.0 = phi ptr [ %call.i.i, %kmalloc_node.exit.if.end18_crit_edge ], [ %call7.i, %kmalloc.exit.if.end18_crit_edge ]
  %refcount = getelementptr inbounds %struct.mlx4_icm, ptr %icm.0, i32 0, i32 1
  %5 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %refcount, align 8
  %6 = ptrtoint ptr %icm.0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %icm.0, ptr %icm.0, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %icm.0, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %icm.0, ptr %prev.i, align 4
  %and2.i.i.i = and i32 %gfp_mask, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  %and6.i.i.i = and i32 %gfp_mask, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  %or.i = or i32 %and10, 256
  %frombool = zext i1 %tobool to i8
  %and45 = and i32 %gfp_mask, -1025
  %spec.select221 = select i1 %tobool3.not.i.i.i, i32 %..i.i.i, i32 3
  %spec.select222 = select i1 %tobool3.not.i.i.i, i32 %..i.i.i, i32 3
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.end84, %if.end18
  %npages.addr.0.ph = phi i32 [ %sub, %if.end84 ], [ %npages, %if.end18 ]
  %chunk.0.ph = phi ptr [ %spec.select165, %if.end84 ], [ null, %if.end18 ]
  %cur_order.0.ph = phi i32 [ %cur_order.1, %if.end84 ], [ 6, %if.end18 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %npages.addr.0.ph)
  %cmp = icmp sgt i32 %npages.addr.0.ph, 0
  br label %while.cond

while.cond:                                       ; preds = %if.then58.while.cond_crit_edge, %while.cond.outer
  %chunk.0 = phi ptr [ %chunk.2, %if.then58.while.cond_crit_edge ], [ %chunk.0.ph, %while.cond.outer ]
  %cur_order.0 = phi i32 [ %dec, %if.then58.while.cond_crit_edge ], [ %cur_order.0.ph, %while.cond.outer ]
  br i1 %cmp, label %while.body, label %while.end90

while.body:                                       ; preds = %while.cond
  %tobool20.not = icmp eq ptr %chunk.0, null
  br i1 %tobool20.not, label %if.then21, label %while.body.if.end39_crit_edge

while.body.if.end39_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

if.then21:                                        ; preds = %while.body
  br i1 %cmp.i1.i, label %if.then21.kzalloc_node.exit_crit_edge, label %if.end.i.i.i, !prof !17

if.then21.kzalloc_node.exit_crit_edge:            ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  br label %kzalloc_node.exit

if.end.i.i.i:                                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  br label %kzalloc_node.exit

kzalloc_node.exit:                                ; preds = %if.end.i.i.i, %if.then21.kzalloc_node.exit_crit_edge
  %retval.0.i2.i.i = phi i32 [ 0, %if.then21.kzalloc_node.exit_crit_edge ], [ %spec.select221, %if.end.i.i.i ]
  %arrayidx3.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i2.i.i, i32 9
  %8 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx3.i.i, align 4
  %call.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef %or.i, i32 noundef 260) #8
  %tobool25.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool25.not, label %if.then26, label %kzalloc_node.exit.if.end32_crit_edge

kzalloc_node.exit.if.end32_crit_edge:             ; preds = %kzalloc_node.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.then26:                                        ; preds = %kzalloc_node.exit
  br i1 %cmp.i1.i, label %if.then26.kzalloc.exit_crit_edge, label %if.end.i.i.i177, !prof !17

if.then26.kzalloc.exit_crit_edge:                 ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #7
  br label %kzalloc.exit

if.end.i.i.i177:                                  ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #7
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end.i.i.i177, %if.then26.kzalloc.exit_crit_edge
  %retval.0.i20.i.i = phi i32 [ 0, %if.then26.kzalloc.exit_crit_edge ], [ %spec.select222, %if.end.i.i.i177 ]
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i20.i.i, i32 9
  %10 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef %or.i, i32 noundef 260) #8
  %tobool29.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool29.not, label %kzalloc.exit.fail_crit_edge, label %kzalloc.exit.if.end32_crit_edge

kzalloc.exit.if.end32_crit_edge:                  ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

kzalloc.exit.fail_crit_edge:                      ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail

if.end32:                                         ; preds = %kzalloc.exit.if.end32_crit_edge, %kzalloc_node.exit.if.end32_crit_edge
  %chunk.1 = phi ptr [ %call.i.i.i, %kzalloc_node.exit.if.end32_crit_edge ], [ %call7.i.i, %kzalloc.exit.if.end32_crit_edge ]
  %coherent34 = getelementptr inbounds %struct.mlx4_icm_chunk, ptr %chunk.1, i32 0, i32 3
  %12 = ptrtoint ptr %coherent34 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %frombool, ptr %coherent34, align 8
  br i1 %tobool, label %if.end32.if.end37_crit_edge, label %if.then36

if.end32.if.end37_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  %13 = getelementptr inbounds %struct.mlx4_icm_chunk, ptr %chunk.1, i32 0, i32 4
  tail call void @sg_init_table(ptr noundef %13, i32 noundef 12) #5
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end32.if.end37_crit_edge
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i, align 4
  %call.i.i184 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %chunk.1, ptr noundef %15, ptr noundef %icm.0) #5
  br i1 %call.i.i184, label %if.end.i.i185, label %if.end37.if.end39_crit_edge

if.end37.if.end39_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

if.end.i.i185:                                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %chunk.1, ptr %prev.i, align 4
  %17 = ptrtoint ptr %chunk.1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %icm.0, ptr %chunk.1, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %chunk.1, i32 0, i32 1
  %18 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev3.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %chunk.1, ptr %15, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.end.i.i185, %if.end37.if.end39_crit_edge, %while.body.if.end39_crit_edge
  %chunk.2 = phi ptr [ %chunk.0, %while.body.if.end39_crit_edge ], [ %chunk.1, %if.end37.if.end39_crit_edge ], [ %chunk.1, %if.end.i.i185 ]
  br label %while.cond40

while.cond40:                                     ; preds = %while.cond40.while.cond40_crit_edge, %if.end39
  %cur_order.1 = phi i32 [ %cur_order.0, %if.end39 ], [ %dec, %while.cond40.while.cond40_crit_edge ]
  %shl = shl nuw i32 1, %cur_order.1
  %cmp41 = icmp slt i32 %npages.addr.0.ph, %shl
  %dec = add i32 %cur_order.1, -1
  br i1 %cmp41, label %while.cond40.while.cond40_crit_edge, label %while.end

while.cond40.while.cond40_crit_edge:              ; preds = %while.cond40
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond40

while.end:                                        ; preds = %while.cond40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cur_order.1)
  %tobool43.not = icmp eq i32 %cur_order.1, 0
  %spec.select = select i1 %tobool43.not, i32 %gfp_mask, i32 %and45
  br i1 %tobool, label %if.then48, label %if.else

if.then48:                                        ; preds = %while.end
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %dev49 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %24 = getelementptr inbounds %struct.mlx4_icm_chunk, ptr %chunk.2, i32 0, i32 4
  %npages50 = getelementptr inbounds %struct.mlx4_icm_chunk, ptr %chunk.2, i32 0, i32 1
  %25 = ptrtoint ptr %npages50 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %npages50, align 4
  %arrayidx = getelementptr [12 x %struct.mlx4_icm_buf], ptr %24, i32 0, i32 %26
  %shl.i = shl i32 4096, %cur_order.1
  %dma_addr.i = getelementptr [12 x %struct.mlx4_icm_buf], ptr %24, i32 0, i32 %26, i32 2
  %and.i.i186 = lshr i32 %spec.select, 5
  %27 = and i32 %and.i.i186, 256
  %call.i.i187 = tail call ptr @dma_alloc_attrs(ptr noundef %dev49, i32 noundef %shl.i, ptr noundef %dma_addr.i, i32 noundef %spec.select, i32 noundef %27) #5
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i.i187, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %call.i.i187, null
  br i1 %tobool.not.i, label %if.then48.if.then58_crit_edge, label %if.end.i

if.then48.if.then58_crit_edge:                    ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then58

if.end.i:                                         ; preds = %if.then48
  %29 = ptrtoint ptr %call.i.i187 to i32
  %and.i = and i32 %29, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %if.then66, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dma_addr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev49, i32 noundef %shl.i, ptr noundef nonnull %call.i.i187, i32 noundef %31, i32 noundef 0) #5
  br label %if.then58

if.else:                                          ; preds = %while.end
  %npages52 = getelementptr inbounds %struct.mlx4_icm_chunk, ptr %chunk.2, i32 0, i32 1
  %32 = ptrtoint ptr %npages52 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %npages52, align 4
  %34 = ptrtoint ptr %numa_node to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %numa_node, align 4
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values)
  switch i32 %35, label %do.body3.i.i.i [
    i32 -1, label %if.else.alloc_pages_node.exit.i_crit_edge
    i32 0, label %if.else.alloc_pages_node.exit.i_crit_edge313
  ], !prof !22

if.else.alloc_pages_node.exit.i_crit_edge313:     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %alloc_pages_node.exit.i

if.else.alloc_pages_node.exit.i_crit_edge:        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %alloc_pages_node.exit.i

do.body3.i.i.i:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/gfp.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 569, 0\0A.popsection", ""() #5, !srcloc !23
  unreachable

alloc_pages_node.exit.i:                          ; preds = %if.else.alloc_pages_node.exit.i_crit_edge, %if.else.alloc_pages_node.exit.i_crit_edge313
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef %spec.select, i32 noundef %cur_order.1, i32 noundef 0, ptr noundef null) #5
  %tobool.not.i188 = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool.not.i188, label %if.then.i, label %alloc_pages_node.exit.i.if.end4.i_crit_edge

alloc_pages_node.exit.i.if.end4.i_crit_edge:      ; preds = %alloc_pages_node.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i

if.then.i:                                        ; preds = %alloc_pages_node.exit.i
  %call38.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef %spec.select, i32 noundef %cur_order.1, i32 noundef 0, ptr noundef null) #5
  %tobool2.not.i = icmp eq ptr %call38.i.i.i.i, null
  br i1 %tobool2.not.i, label %if.then.i.if.then58_crit_edge, label %if.then.i.if.end4.i_crit_edge

if.then.i.if.end4.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i

if.then.i.if.then58_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then58

if.end4.i:                                        ; preds = %if.then.i.if.end4.i_crit_edge, %alloc_pages_node.exit.i.if.end4.i_crit_edge
  %page.0.i = phi ptr [ %call38.i.i.i, %alloc_pages_node.exit.i.if.end4.i_crit_edge ], [ %call38.i.i.i.i, %if.then.i.if.end4.i_crit_edge ]
  %npages52.le = getelementptr inbounds %struct.mlx4_icm_chunk, ptr %chunk.2, i32 0, i32 1
  %37 = getelementptr inbounds %struct.mlx4_icm_chunk, ptr %chunk.2, i32 0, i32 4
  %arrayidx53.le = getelementptr [12 x %struct.scatterlist], ptr %37, i32 0, i32 %33
  %shl.i189 = shl i32 4096, %cur_order.1
  %38 = ptrtoint ptr %arrayidx53.le to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx53.le, align 4
  %40 = ptrtoint ptr %page.0.i to i32
  %and2.i.i.i190 = and i32 %40, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i190)
  %tobool.not.i.i.i = icmp eq i32 %and2.i.i.i190, 0
  br i1 %tobool.not.i.i.i, label %do.body11.i.i.i, label %do.body5.i.i.i, !prof !17

do.body5.i.i.i:                                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #5, !srcloc !24
  unreachable

do.body11.i.i.i:                                  ; preds = %if.end4.i
  %and.i.i.i.i = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %if.else68, label %do.body19.i.i.i, !prof !17

do.body19.i.i.i:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #5, !srcloc !25
  unreachable

if.then58:                                        ; preds = %if.then.i.if.then58_crit_edge, %if.then4.i, %if.then48.if.then58_crit_edge
  %cmp60 = icmp slt i32 %dec, 0
  br i1 %cmp60, label %if.then58.fail_crit_edge, label %if.then58.while.cond_crit_edge

if.then58.while.cond_crit_edge:                   ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

if.then58.fail_crit_edge:                         ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail

if.then66:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %npages50.le = getelementptr inbounds %struct.mlx4_icm_chunk, ptr %chunk.2, i32 0, i32 1
  %size.i = getelementptr [12 x %struct.mlx4_icm_buf], ptr %24, i32 0, i32 %26, i32 1
  %41 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %shl.i, ptr %size.i, align 4
  %42 = ptrtoint ptr %npages50.le to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %npages50.le, align 4
  %inc197 = add i32 %43, 1
  store i32 %inc197, ptr %npages50.le, align 4
  %nsg = getelementptr inbounds %struct.mlx4_icm_chunk, ptr %chunk.2, i32 0, i32 2
  %44 = ptrtoint ptr %nsg to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %nsg, align 4
  %inc67 = add i32 %45, 1
  store i32 %inc67, ptr %nsg, align 4
  br label %if.end84

if.else68:                                        ; preds = %do.body11.i.i.i
  %and.i.i.i191 = and i32 %39, 3
  %or.i.i.i = or i32 %and.i.i.i191, %40
  %46 = ptrtoint ptr %arrayidx53.le to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %or.i.i.i, ptr %arrayidx53.le, align 4
  %offset1.i.i = getelementptr [12 x %struct.scatterlist], ptr %37, i32 0, i32 %33, i32 1
  %47 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %offset1.i.i, align 4
  %length.i.i = getelementptr [12 x %struct.scatterlist], ptr %37, i32 0, i32 %33, i32 2
  %48 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %shl.i189, ptr %length.i.i, align 4
  %49 = ptrtoint ptr %npages52.le to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %npages52.le, align 4
  %inc = add i32 %50, 1
  store i32 %inc, ptr %npages52.le, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %inc)
  %cmp70 = icmp eq i32 %inc, 12
  br i1 %cmp70, label %if.then71, label %if.else68.if.end84_crit_edge

if.else68.if.end84_crit_edge:                     ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end84

if.then71:                                        ; preds = %if.else68
  %51 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %dev74 = getelementptr inbounds %struct.pci_dev, ptr %54, i32 0, i32 44
  %call77 = tail call i32 @dma_map_sg_attrs(ptr noundef %dev74, ptr noundef %37, i32 noundef 12, i32 noundef 0, i32 noundef 0) #5
  %nsg78 = getelementptr inbounds %struct.mlx4_icm_chunk, ptr %chunk.2, i32 0, i32 2
  %55 = ptrtoint ptr %nsg78 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %call77, ptr %nsg78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call77)
  %cmp80 = icmp slt i32 %call77, 1
  br i1 %cmp80, label %if.then71.fail_crit_edge, label %if.then71.if.end84_crit_edge

if.then71.if.end84_crit_edge:                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end84

if.then71.fail_crit_edge:                         ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail

if.end84:                                         ; preds = %if.then71.if.end84_crit_edge, %if.else68.if.end84_crit_edge, %if.then66
  %npages64198 = phi ptr [ %npages52.le, %if.else68.if.end84_crit_edge ], [ %npages52.le, %if.then71.if.end84_crit_edge ], [ %npages50.le, %if.then66 ]
  %56 = ptrtoint ptr %npages64198 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %npages64198, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %57)
  %cmp86 = icmp eq i32 %57, 12
  %spec.select165 = select i1 %cmp86, ptr null, ptr %chunk.2
  %sub = sub i32 %npages.addr.0.ph, %shl
  br label %while.cond.outer

while.end90:                                      ; preds = %while.cond
  %tobool92.not = icmp eq ptr %chunk.0.ph, null
  %or.cond = select i1 %tobool, i1 true, i1 %tobool92.not
  br i1 %or.cond, label %while.end90.cleanup_crit_edge, label %if.then93

while.end90.cleanup_crit_edge:                    ; preds = %while.end90
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then93:                                        ; preds = %while.end90
  %58 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev, align 8
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %dev96 = getelementptr inbounds %struct.pci_dev, ptr %61, i32 0, i32 44
  %62 = getelementptr inbounds %struct.mlx4_icm_chunk, ptr %chunk.0.ph, i32 0, i32 4
  %npages98 = getelementptr inbounds %struct.mlx4_icm_chunk, ptr %chunk.0.ph, i32 0, i32 1
  %63 = ptrtoint ptr %npages98 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %npages98, align 4
  %call99 = tail call i32 @dma_map_sg_attrs(ptr noundef %dev96, ptr noundef %62, i32 noundef %64, i32 noundef 0, i32 noundef 0) #5
  %nsg100 = getelementptr inbounds %struct.mlx4_icm_chunk, ptr %chunk.0.ph, i32 0, i32 2
  %65 = ptrtoint ptr %nsg100 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %call99, ptr %nsg100, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call99)
  %cmp102 = icmp slt i32 %call99, 1
  br i1 %cmp102, label %if.then93.fail_crit_edge, label %if.then93.cleanup_crit_edge

if.then93.cleanup_crit_edge:                      ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then93.fail_crit_edge:                         ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail

fail:                                             ; preds = %if.then93.fail_crit_edge, %if.then71.fail_crit_edge, %if.then58.fail_crit_edge, %kzalloc.exit.fail_crit_edge
  tail call void @mlx4_free_icm(ptr noundef %dev, ptr noundef %icm.0, i32 noundef %coherent)
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.then93.cleanup_crit_edge, %while.end90.cleanup_crit_edge, %kmalloc.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %fail ], [ null, %kmalloc.exit.cleanup_crit_edge ], [ %icm.0, %if.then93.cleanup_crit_edge ], [ %icm.0, %while.end90.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_MAP_ICM_AUX(ptr noundef %dev, ptr noundef %icm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mlx4_map_cmd(ptr noundef %dev, i16 noundef zeroext 4092, ptr noundef %icm, i64 noundef -1) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_map_cmd(ptr noundef, i16 noundef zeroext, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_UNMAP_ICM_AUX(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__mlx4_cmd(ptr noundef %dev, i64 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 0, i16 noundef zeroext 4091, i32 noundef 60000, i32 noundef 1) #5
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_table_get(ptr noundef %dev, ptr noundef %table, i32 noundef %obj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %num_obj = getelementptr inbounds %struct.mlx4_icm_table, ptr %table, i32 0, i32 2
  %0 = ptrtoint ptr %num_obj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_obj, align 4
  %sub = add i32 %1, -1
  %and = and i32 %sub, %obj
  %obj_size = getelementptr inbounds %struct.mlx4_icm_table, ptr %table, i32 0, i32 3
  %2 = ptrtoint ptr %obj_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %obj_size, align 8
  %div = sdiv i32 262144, %3
  %div1 = udiv i32 %and, %div
  %mutex = getelementptr inbounds %struct.mlx4_icm_table, ptr %table, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %icm = getelementptr inbounds %struct.mlx4_icm_table, ptr %table, i32 0, i32 7
  %4 = ptrtoint ptr %icm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %icm, align 8
  %arrayidx = getelementptr ptr, ptr %5, i32 %div1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %refcount = getelementptr inbounds %struct.mlx4_icm, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %refcount, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %refcount, align 4
  br label %out

if.end:                                           ; preds = %entry
  %lowmem = getelementptr inbounds %struct.mlx4_icm_table, ptr %table, i32 0, i32 4
  %10 = ptrtoint ptr %lowmem to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lowmem, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool4.not = icmp eq i32 %11, 0
  %or = select i1 %tobool4.not, i32 1060034, i32 11456
  %coherent = getelementptr inbounds %struct.mlx4_icm_table, ptr %table, i32 0, i32 5
  %12 = ptrtoint ptr %coherent to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %coherent, align 8
  %call = tail call ptr @mlx4_alloc_icm(ptr noundef %dev, i32 noundef 64, i32 noundef %or, i32 noundef %13)
  %14 = ptrtoint ptr %icm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %icm, align 8
  %arrayidx6 = getelementptr ptr, ptr %15, i32 %div1
  %16 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call, ptr %arrayidx6, align 4
  %17 = load ptr, ptr %icm, align 8
  %arrayidx8 = getelementptr ptr, ptr %17, i32 %div1
  %18 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx8, align 4
  %tobool9.not = icmp eq ptr %19, null
  br i1 %tobool9.not, label %if.end.out_crit_edge, label %if.end11

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end11:                                         ; preds = %if.end
  %20 = ptrtoint ptr %table to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %table, align 8
  %conv = zext i32 %div1 to i64
  %mul = shl nuw nsw i64 %conv, 18
  %add = add i64 %21, %mul
  %call.i = tail call i32 @mlx4_map_cmd(ptr noundef %dev, i16 noundef zeroext 4090, ptr noundef nonnull %19, i64 noundef %add) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool15.not = icmp eq i32 %call.i, 0
  %22 = ptrtoint ptr %icm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %icm, align 8
  %arrayidx24 = getelementptr ptr, ptr %23, i32 %div1
  %24 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx24, align 4
  br i1 %tobool15.not, label %if.end22, label %if.then16

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %coherent to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %coherent, align 8
  tail call void @mlx4_free_icm(ptr noundef %dev, ptr noundef %25, i32 noundef %27)
  %28 = ptrtoint ptr %icm to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %icm, align 8
  %arrayidx21 = getelementptr ptr, ptr %29, i32 %div1
  %30 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %arrayidx21, align 4
  br label %out

if.end22:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %refcount25 = getelementptr inbounds %struct.mlx4_icm, ptr %25, i32 0, i32 1
  %31 = ptrtoint ptr %refcount25 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %refcount25, align 4
  %inc26 = add i32 %32, 1
  store i32 %inc26, ptr %refcount25, align 4
  br label %out

out:                                              ; preds = %if.end22, %if.then16, %if.end.out_crit_edge, %if.then
  %ret.0 = phi i32 [ 0, %if.then ], [ -12, %if.then16 ], [ 0, %if.end22 ], [ -12, %if.end.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_table_put(ptr noundef %dev, ptr noundef %table, i32 noundef %obj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %num_obj = getelementptr inbounds %struct.mlx4_icm_table, ptr %table, i32 0, i32 2
  %0 = ptrtoint ptr %num_obj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_obj, align 4
  %sub = add i32 %1, -1
  %and = and i32 %sub, %obj
  %obj_size = getelementptr inbounds %struct.mlx4_icm_table, ptr %table, i32 0, i32 3
  %2 = ptrtoint ptr %obj_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %obj_size, align 8
  %div = sdiv i32 262144, %3
  %div1 = udiv i32 %and, %div
  %mutex = getelementptr inbounds %struct.mlx4_icm_table, ptr %table, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %icm = getelementptr inbounds %struct.mlx4_icm_table, ptr %table, i32 0, i32 7
  %4 = ptrtoint ptr %icm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %icm, align 8
  %arrayidx = getelementptr ptr, ptr %5, i32 %div1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %refcount = getelementptr inbounds %struct.mlx4_icm, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %refcount, align 4
  %dec = add i32 %9, -1
  store i32 %dec, ptr %refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i32 %div1 to i64
  %mul = shl nuw nsw i64 %conv, 18
  %10 = ptrtoint ptr %table to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %table, align 8
  %add = add i64 %11, %mul
  %call.i.i = tail call i32 @__mlx4_cmd(ptr noundef %dev, i64 noundef %add, ptr noundef null, i32 noundef 0, i32 noundef 64, i8 noundef zeroext 0, i16 noundef zeroext 4089, i32 noundef 60000, i32 noundef 1) #5
  %12 = ptrtoint ptr %icm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %icm, align 8
  %arrayidx3 = getelementptr ptr, ptr %13, i32 %div1
  %14 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx3, align 4
  %coherent = getelementptr inbounds %struct.mlx4_icm_table, ptr %table, i32 0, i32 5
  %16 = ptrtoint ptr %coherent to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %coherent, align 8
  tail call void @mlx4_free_icm(ptr noundef %dev, ptr noundef %15, i32 noundef %17)
  %18 = ptrtoint ptr %icm to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %icm, align 8
  %arrayidx5 = getelementptr ptr, ptr %19, i32 %div1
  %20 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %arrayidx5, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx4_table_find(ptr noundef %table, i32 noundef %obj, ptr noundef writeonly %dma_handle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lowmem = getelementptr inbounds %struct.mlx4_icm_table, ptr %table, i32 0, i32 4
  %0 = ptrtoint ptr %lowmem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lowmem, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup51_crit_edge, label %if.end

entry.cleanup51_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup51

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.mlx4_icm_table, ptr %table, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %num_obj = getelementptr inbounds %struct.mlx4_icm_table, ptr %table, i32 0, i32 2
  %2 = ptrtoint ptr %num_obj to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_obj, align 4
  %sub = add i32 %3, -1
  %and = and i32 %sub, %obj
  %conv = zext i32 %and to i64
  %obj_size = getelementptr inbounds %struct.mlx4_icm_table, ptr %table, i32 0, i32 3
  %4 = ptrtoint ptr %obj_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %obj_size, align 8
  %conv1 = sext i32 %5 to i64
  %mul = mul nsw i64 %conv, %conv1
  %icm2 = getelementptr inbounds %struct.mlx4_icm_table, ptr %table, i32 0, i32 7
  %6 = ptrtoint ptr %icm2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %icm2, align 8
  %div92 = lshr i64 %mul, 18
  %idxprom = trunc i64 %div92 to i32
  %arrayidx = getelementptr ptr, ptr %7, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %10 = trunc i64 %mul to i32
  %conv3 = and i32 %10, 262143
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %if.end.out_crit_edge, label %for.cond.preheader

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

for.cond.preheader:                               ; preds = %if.end
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %chunk.0107 = load ptr, ptr %9, align 4
  %cmp.not108 = icmp eq ptr %chunk.0107, %9
  br i1 %cmp.not108, label %for.cond.preheader.out_crit_edge, label %for.cond9.preheader.lr.ph

for.cond.preheader.out_crit_edge:                 ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

for.cond9.preheader.lr.ph:                        ; preds = %for.cond.preheader
  %coherent = getelementptr inbounds %struct.mlx4_icm_table, ptr %table, i32 0, i32 5
  %tobool25.not = icmp ne ptr %dma_handle, null
  br label %for.cond9.preheader

for.cond.loopexit:                                ; preds = %for.inc.for.cond.loopexit_crit_edge, %for.cond9.preheader.for.cond.loopexit_crit_edge
  %dma_offset.1.lcssa = phi i32 [ %dma_offset.0109, %for.cond9.preheader.for.cond.loopexit_crit_edge ], [ %dma_offset.2, %for.inc.for.cond.loopexit_crit_edge ]
  %offset.1.lcssa = phi i32 [ %offset.0110, %for.cond9.preheader.for.cond.loopexit_crit_edge ], [ %sub39, %for.inc.for.cond.loopexit_crit_edge ]
  %12 = ptrtoint ptr %chunk.0111 to i32
  call void @__asan_load4_noabort(i32 %12)
  %chunk.0 = load ptr, ptr %chunk.0111, align 4
  %cmp.not = icmp eq ptr %chunk.0, %9
  br i1 %cmp.not, label %for.cond.loopexit.out_crit_edge, label %for.cond.loopexit.for.cond9.preheader_crit_edge

for.cond.loopexit.for.cond9.preheader_crit_edge:  ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond9.preheader

for.cond.loopexit.out_crit_edge:                  ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

for.cond9.preheader:                              ; preds = %for.cond.loopexit.for.cond9.preheader_crit_edge, %for.cond9.preheader.lr.ph
  %chunk.0111 = phi ptr [ %chunk.0107, %for.cond9.preheader.lr.ph ], [ %chunk.0, %for.cond.loopexit.for.cond9.preheader_crit_edge ]
  %offset.0110 = phi i32 [ %conv3, %for.cond9.preheader.lr.ph ], [ %offset.1.lcssa, %for.cond.loopexit.for.cond9.preheader_crit_edge ]
  %dma_offset.0109 = phi i32 [ %conv3, %for.cond9.preheader.lr.ph ], [ %dma_offset.1.lcssa, %for.cond.loopexit.for.cond9.preheader_crit_edge ]
  %npages = getelementptr inbounds %struct.mlx4_icm_chunk, ptr %chunk.0111, i32 0, i32 1
  %13 = ptrtoint ptr %npages to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %npages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp10100 = icmp sgt i32 %14, 0
  br i1 %cmp10100, label %for.body12.lr.ph, label %for.cond9.preheader.for.cond.loopexit_crit_edge

for.cond9.preheader.for.cond.loopexit_crit_edge:  ; preds = %for.cond9.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.loopexit

for.body12.lr.ph:                                 ; preds = %for.cond9.preheader
  %15 = getelementptr inbounds %struct.mlx4_icm_chunk, ptr %chunk.0111, i32 0, i32 4
  br label %for.body12

for.body12:                                       ; preds = %for.inc.for.body12_crit_edge, %for.body12.lr.ph
  %offset.1105 = phi i32 [ %offset.0110, %for.body12.lr.ph ], [ %sub39, %for.inc.for.body12_crit_edge ]
  %dma_offset.1103 = phi i32 [ %dma_offset.0109, %for.body12.lr.ph ], [ %dma_offset.2, %for.inc.for.body12_crit_edge ]
  %i.0101 = phi i32 [ 0, %for.body12.lr.ph ], [ %inc, %for.inc.for.body12_crit_edge ]
  %16 = ptrtoint ptr %coherent to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %coherent, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool13.not = icmp eq i32 %17, 0
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx15 = getelementptr [12 x %struct.mlx4_icm_buf], ptr %15, i32 0, i32 %i.0101
  %size = getelementptr [12 x %struct.mlx4_icm_buf], ptr %15, i32 0, i32 %i.0101, i32 1
  %dma_addr17 = getelementptr [12 x %struct.mlx4_icm_buf], ptr %15, i32 0, i32 %i.0101, i32 2
  %18 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx15, align 4
  br label %if.end24

if.else:                                          ; preds = %for.body12
  %arrayidx20 = getelementptr [12 x %struct.scatterlist], ptr %15, i32 0, i32 %i.0101
  %20 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx20, align 4
  %and.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !17

do.body2.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #5, !srcloc !18
  unreachable

sg_page.exit:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %dma_address = getelementptr [12 x %struct.scatterlist], ptr %15, i32 0, i32 %i.0101, i32 3
  %dma_length = getelementptr [12 x %struct.scatterlist], ptr %15, i32 0, i32 %i.0101, i32 4
  %and.i = and i32 %21, -4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %22 = load ptr, ptr @mem_map, align 4
  %sub.ptr.rhs.cast.i = ptrtoint ptr %22 to i32
  %sub.ptr.sub.i = sub i32 %and.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %23 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %sub.ptr.div.i, %23
  %shl.i = shl i32 %add.i, 12
  %24 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %shl.i, i32 -2130706432, i32 8454144) #9, !srcloc !26
  %25 = inttoptr i32 %24 to ptr
  br label %if.end24

if.end24:                                         ; preds = %sg_page.exit, %if.then14
  %addr.0 = phi ptr [ %19, %if.then14 ], [ %25, %sg_page.exit ]
  %dma_addr.0.in = phi ptr [ %dma_addr17, %if.then14 ], [ %dma_address, %sg_page.exit ]
  %len.0.in = phi ptr [ %size, %if.then14 ], [ %dma_length, %sg_page.exit ]
  %26 = ptrtoint ptr %len.0.in to i32
  call void @__asan_load4_noabort(i32 %26)
  %len.0 = load i32, ptr %len.0.in, align 4
  %27 = ptrtoint ptr %dma_addr.0.in to i32
  call void @__asan_load4_noabort(i32 %27)
  %dma_addr.0 = load i32, ptr %dma_addr.0.in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dma_offset.1103)
  %cmp26 = icmp sgt i32 %dma_offset.1103, -1
  %or.cond = select i1 %tobool25.not, i1 %cmp26, i1 false
  br i1 %or.cond, label %if.then28, label %if.end24.if.end34_crit_edge

if.end24.if.end34_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_cmp4(i32 %dma_offset.1103, i32 %len.0)
  %cmp29 = icmp ult i32 %dma_offset.1103, %len.0
  br i1 %cmp29, label %if.then31, label %if.then28.if.end32_crit_edge

if.then28.if.end32_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.then31:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #7
  %add = add i32 %dma_addr.0, %dma_offset.1103
  %28 = ptrtoint ptr %dma_handle to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add, ptr %dma_handle, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.then28.if.end32_crit_edge
  %sub33 = sub i32 %dma_offset.1103, %len.0
  br label %if.end34

if.end34:                                         ; preds = %if.end32, %if.end24.if.end34_crit_edge
  %dma_offset.2 = phi i32 [ %sub33, %if.end32 ], [ %dma_offset.1103, %if.end24.if.end34_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.1105, i32 %len.0)
  %cmp35 = icmp ult i32 %offset.1105, %len.0
  br i1 %cmp35, label %if.end34.out_crit_edge, label %for.inc

if.end34.out_crit_edge:                           ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

for.inc:                                          ; preds = %if.end34
  %sub39 = sub i32 %offset.1105, %len.0
  %inc = add nuw nsw i32 %i.0101, 1
  %29 = ptrtoint ptr %npages to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %npages, align 4
  %cmp10 = icmp slt i32 %inc, %30
  br i1 %cmp10, label %for.inc.for.body12_crit_edge, label %for.inc.for.cond.loopexit_crit_edge

for.inc.for.cond.loopexit_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.loopexit

for.inc.for.body12_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body12

out:                                              ; preds = %if.end34.out_crit_edge, %for.cond.loopexit.out_crit_edge, %for.cond.preheader.out_crit_edge, %if.end.out_crit_edge
  %addr.1 = phi ptr [ null, %if.end.out_crit_edge ], [ null, %for.cond.preheader.out_crit_edge ], [ %addr.0, %if.end34.out_crit_edge ], [ null, %for.cond.loopexit.out_crit_edge ]
  %offset.3 = phi i32 [ %conv3, %if.end.out_crit_edge ], [ %conv3, %for.cond.preheader.out_crit_edge ], [ %offset.1105, %if.end34.out_crit_edge ], [ %offset.1.lcssa, %for.cond.loopexit.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  %tobool49.not = icmp eq ptr %addr.1, null
  %add.ptr50 = getelementptr i8, ptr %addr.1, i32 %offset.3
  %cond = select i1 %tobool49.not, ptr null, ptr %add.ptr50
  br label %cleanup51

cleanup51:                                        ; preds = %out, %entry.cleanup51_crit_edge
  %retval.0 = phi ptr [ %cond, %out ], [ null, %entry.cleanup51_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_table_get_range(ptr noundef %dev, ptr noundef %table, i32 noundef %start, i32 noundef %end) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %obj_size = getelementptr inbounds %struct.mlx4_icm_table, ptr %table, i32 0, i32 3
  %0 = ptrtoint ptr %obj_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %obj_size, align 8
  %div = sdiv i32 262144, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %start, i32 %end)
  %cmp.not17 = icmp ugt i32 %start, %end
  br i1 %cmp.not17, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.018 = phi i32 [ %add, %for.inc.for.body_crit_edge ], [ %start, %entry.for.body_crit_edge ]
  %call = tail call i32 @mlx4_table_get(ptr noundef %dev, ptr noundef %table, i32 noundef %i.018)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc, label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %i.018, i32 %start)
  %cmp119 = icmp ugt i32 %i.018, %start
  br i1 %cmp119, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.cleanup_crit_edge

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

for.inc:                                          ; preds = %for.body
  %add = add i32 %i.018, %div
  %cmp.not = icmp ugt i32 %add, %end
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %i.120 = phi i32 [ %sub, %while.body.while.body_crit_edge ], [ %i.018, %while.cond.preheader.while.body_crit_edge ]
  %sub = sub i32 %i.120, %div
  tail call void @mlx4_table_put(ptr noundef %dev, ptr noundef %table, i32 noundef %sub)
  %cmp1 = icmp ugt i32 %sub, %start
  br i1 %cmp1, label %while.body.while.body_crit_edge, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %while.cond.preheader.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %call, %while.body.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_table_put_range(ptr noundef %dev, ptr noundef %table, i32 noundef %start, i32 noundef %end) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp4(i32 %start, i32 %end)
  %cmp.not4 = icmp ugt i32 %start, %end
  br i1 %cmp.not4, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %obj_size = getelementptr inbounds %struct.mlx4_icm_table, ptr %table, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.05 = phi i32 [ %start, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  tail call void @mlx4_table_put(ptr noundef %dev, ptr noundef %table, i32 noundef %i.05)
  %0 = ptrtoint ptr %obj_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %obj_size, align 8
  %div = sdiv i32 262144, %1
  %add = add i32 %div, %i.05
  %cmp.not = icmp ugt i32 %add, %end
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_init_icm_table(ptr noundef %dev, ptr noundef %table, i64 noundef %virt, i32 noundef %obj_size, i32 noundef %nobj, i32 noundef %reserved, i32 noundef %use_lowmem, i32 noundef %use_coherent) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %div = sdiv i32 262144, %obj_size
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div)
  %tobool.not = icmp eq i32 %div, 0
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !20

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 426, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end23:                                         ; preds = %entry
  %add = add i32 %nobj, -1
  %sub = add i32 %add, %div
  %div24 = udiv i32 %sub, %div
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %div24, i32 4) #5
  %1 = extractvalue { i32, i1 } %0, 1
  br i1 %1, label %kvcalloc.exit.thread, label %kvcalloc.exit, !prof !20

kvcalloc.exit.thread:                             ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %icm153 = getelementptr inbounds %struct.mlx4_icm_table, ptr %table, i32 0, i32 7
  %2 = ptrtoint ptr %icm153 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %icm153, align 8
  br label %cleanup

kvcalloc.exit:                                    ; preds = %if.end23
  %3 = extractvalue { i32, i1 } %0, 0
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %3, i32 noundef 3520, i32 noundef -1) #10
  %icm = getelementptr inbounds %struct.mlx4_icm_table, ptr %table, i32 0, i32 7
  %4 = ptrtoint ptr %icm to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i.i.i, ptr %icm, align 8
  %tobool26.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool26.not, label %kvcalloc.exit.cleanup_crit_edge, label %if.end28

kvcalloc.exit.cleanup_crit_edge:                  ; preds = %kvcalloc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end28:                                         ; preds = %kvcalloc.exit
  %5 = ptrtoint ptr %table to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %virt, ptr %table, align 8
  %num_icm30 = getelementptr inbounds %struct.mlx4_icm_table, ptr %table, i32 0, i32 1
  %6 = ptrtoint ptr %num_icm30 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %div24, ptr %num_icm30, align 8
  %num_obj = getelementptr inbounds %struct.mlx4_icm_table, ptr %table, i32 0, i32 2
  %7 = ptrtoint ptr %num_obj to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %nobj, ptr %num_obj, align 4
  %obj_size31 = getelementptr inbounds %struct.mlx4_icm_table, ptr %table, i32 0, i32 3
  %8 = ptrtoint ptr %obj_size31 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %obj_size, ptr %obj_size31, align 8
  %lowmem = getelementptr inbounds %struct.mlx4_icm_table, ptr %table, i32 0, i32 4
  %9 = ptrtoint ptr %lowmem to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %use_lowmem, ptr %lowmem, align 4
  %coherent = getelementptr inbounds %struct.mlx4_icm_table, ptr %table, i32 0, i32 5
  %10 = ptrtoint ptr %coherent to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %use_coherent, ptr %coherent, align 8
  %mutex = getelementptr inbounds %struct.mlx4_icm_table, ptr %table, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.1, ptr noundef nonnull @mlx4_init_icm_table.__key) #5
  %conv = zext i32 %nobj to i64
  %conv35 = sext i32 %obj_size to i64
  %mul = mul nsw i64 %conv, %conv35
  %mul37 = mul i32 %reserved, %obj_size
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul37)
  %cmp158 = icmp sgt i32 %mul37, 0
  br i1 %cmp158, label %for.body.lr.ph, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end28
  %11 = trunc i64 %mul to i32
  %12 = add i32 %11, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %use_lowmem)
  %tobool51.not = icmp eq i32 %use_lowmem, 0
  %or = select i1 %tobool51.not, i32 1060034, i32 11456
  br label %for.body

for.body:                                         ; preds = %if.end71.for.body_crit_edge, %for.body.lr.ph
  %mul36160 = phi i32 [ 0, %for.body.lr.ph ], [ %mul40, %if.end71.for.body_crit_edge ]
  %i.0159 = phi i32 [ 0, %for.body.lr.ph ], [ %add39, %if.end71.for.body_crit_edge ]
  %add39 = add i32 %i.0159, 1
  %mul40 = shl i32 %add39, 18
  %conv41 = sext i32 %mul40 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %mul, i64 %conv41)
  %cmp42 = icmp ult i64 %mul, %conv41
  %13 = sub i32 %12, %mul36160
  %conv49 = lshr i32 %13, 12
  %shr = select i1 %cmp42, i32 %conv49, i32 64
  %call52 = tail call ptr @mlx4_alloc_icm(ptr noundef %dev, i32 noundef %shr, i32 noundef %or, i32 noundef %use_coherent)
  %14 = ptrtoint ptr %icm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %icm, align 8
  %arrayidx = getelementptr ptr, ptr %15, i32 %i.0159
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call52, ptr %arrayidx, align 4
  %17 = load ptr, ptr %icm, align 8
  %arrayidx55 = getelementptr ptr, ptr %17, i32 %i.0159
  %18 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx55, align 4
  %tobool56.not = icmp eq ptr %19, null
  br i1 %tobool56.not, label %for.body.err_crit_edge, label %if.end58

for.body.err_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end58:                                         ; preds = %for.body
  %conv62 = sext i32 %mul36160 to i64
  %add63 = add i64 %conv62, %virt
  %call.i = tail call i32 @mlx4_map_cmd(ptr noundef %dev, i16 noundef zeroext 4090, ptr noundef nonnull %19, i64 noundef %add63) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool65.not = icmp eq i32 %call.i, 0
  %20 = ptrtoint ptr %icm to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %icm, align 8
  %arrayidx73 = getelementptr ptr, ptr %21, i32 %i.0159
  %22 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx73, align 4
  br i1 %tobool65.not, label %if.end71, label %if.then66

if.then66:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mlx4_free_icm(ptr noundef %dev, ptr noundef %23, i32 noundef %use_coherent)
  %24 = ptrtoint ptr %icm to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %icm, align 8
  %arrayidx70 = getelementptr ptr, ptr %25, i32 %i.0159
  %26 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %arrayidx70, align 4
  br label %err

if.end71:                                         ; preds = %if.end58
  %refcount = getelementptr inbounds %struct.mlx4_icm, ptr %23, i32 0, i32 1
  %27 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %refcount, align 4
  %inc = add i32 %28, 1
  store i32 %inc, ptr %refcount, align 4
  %cmp = icmp slt i32 %mul40, %mul37
  br i1 %cmp, label %if.end71.for.body_crit_edge, label %if.end71.cleanup_crit_edge

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end71.for.body_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

err:                                              ; preds = %if.then66, %for.body.err_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div24)
  %cmp76161 = icmp sgt i32 %div24, 0
  br i1 %cmp76161, label %err.for.body78_crit_edge, label %err.for.end92_crit_edge

err.for.end92_crit_edge:                          ; preds = %err
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end92

err.for.body78_crit_edge:                         ; preds = %err
  br label %for.body78

for.body78:                                       ; preds = %for.inc90.for.body78_crit_edge, %err.for.body78_crit_edge
  %i.1162 = phi i32 [ %inc91, %for.inc90.for.body78_crit_edge ], [ 0, %err.for.body78_crit_edge ]
  %29 = ptrtoint ptr %icm to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %icm, align 8
  %arrayidx80 = getelementptr ptr, ptr %30, i32 %i.1162
  %31 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx80, align 4
  %tobool81.not = icmp eq ptr %32, null
  br i1 %tobool81.not, label %for.body78.for.inc90_crit_edge, label %if.then82

for.body78.for.inc90_crit_edge:                   ; preds = %for.body78
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc90

if.then82:                                        ; preds = %for.body78
  call void @__sanitizer_cov_trace_pc() #7
  %mul83 = shl i32 %i.1162, 18
  %conv84 = sext i32 %mul83 to i64
  %add85 = add i64 %conv84, %virt
  %call.i.i = tail call i32 @__mlx4_cmd(ptr noundef %dev, i64 noundef %add85, ptr noundef null, i32 noundef 0, i32 noundef 64, i8 noundef zeroext 0, i16 noundef zeroext 4089, i32 noundef 60000, i32 noundef 1) #5
  %33 = ptrtoint ptr %icm to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %icm, align 8
  %arrayidx88 = getelementptr ptr, ptr %34, i32 %i.1162
  %35 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx88, align 4
  tail call void @mlx4_free_icm(ptr noundef %dev, ptr noundef %36, i32 noundef %use_coherent)
  br label %for.inc90

for.inc90:                                        ; preds = %if.then82, %for.body78.for.inc90_crit_edge
  %inc91 = add nuw nsw i32 %i.1162, 1
  %exitcond.not = icmp eq i32 %inc91, %div24
  br i1 %exitcond.not, label %for.inc90.for.end92_crit_edge, label %for.inc90.for.body78_crit_edge

for.inc90.for.body78_crit_edge:                   ; preds = %for.inc90
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body78

for.inc90.for.end92_crit_edge:                    ; preds = %for.inc90
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end92

for.end92:                                        ; preds = %for.inc90.for.end92_crit_edge, %err.for.end92_crit_edge
  %37 = ptrtoint ptr %icm to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %icm, align 8
  tail call void @kvfree(ptr noundef %38) #5
  br label %cleanup

cleanup:                                          ; preds = %for.end92, %if.end71.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %kvcalloc.exit.cleanup_crit_edge, %kvcalloc.exit.thread, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -12, %for.end92 ], [ -12, %kvcalloc.exit.cleanup_crit_edge ], [ -12, %kvcalloc.exit.thread ], [ 0, %if.end28.cleanup_crit_edge ], [ 0, %if.end71.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_cleanup_icm_table(ptr noundef %dev, ptr nocapture noundef readonly %table) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %num_icm = getelementptr inbounds %struct.mlx4_icm_table, ptr %table, i32 0, i32 1
  %0 = ptrtoint ptr %num_icm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_icm, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp14 = icmp sgt i32 %1, 0
  br i1 %cmp14, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %icm = getelementptr inbounds %struct.mlx4_icm_table, ptr %table, i32 0, i32 7
  %coherent = getelementptr inbounds %struct.mlx4_icm_table, ptr %table, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.015 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %icm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %icm, align 8
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.015
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %table to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %table, align 8
  %mul = shl i32 %i.015, 18
  %conv = sext i32 %mul to i64
  %add = add i64 %7, %conv
  %call.i.i = tail call i32 @__mlx4_cmd(ptr noundef %dev, i64 noundef %add, ptr noundef null, i32 noundef 0, i32 noundef 64, i8 noundef zeroext 0, i16 noundef zeroext 4089, i32 noundef 60000, i32 noundef 1) #5
  %8 = ptrtoint ptr %icm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %icm, align 8
  %arrayidx2 = getelementptr ptr, ptr %9, i32 %i.015
  %10 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx2, align 4
  %12 = ptrtoint ptr %coherent to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %coherent, align 8
  tail call void @mlx4_free_icm(ptr noundef %dev, ptr noundef %11, i32 noundef %13)
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.015, 1
  %14 = ptrtoint ptr %num_icm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_icm, align 8
  %cmp = icmp slt i32 %inc, %15
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %icm3 = getelementptr inbounds %struct.mlx4_icm_table, ptr %table, i32 0, i32 7
  %16 = ptrtoint ptr %icm3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %icm3, align 8
  tail call void @kvfree(ptr noundef %17) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mlx4_cmd(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { nounwind readnone }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5}
!llvm.named.register.sp = !{!7}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx4/icm.c", i32 426, i32 6}
!2 = !{ptr @mlx4_init_icm_table.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlx4/icm.c", i32 439, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!7 = !{!"sp"}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{i64 2153356008, i64 2153356500, i64 2153356045, i64 2153356101, i64 2153356135, i64 2153356159, i64 2153356200, i64 2153356221, i64 2153356249, i64 2153356283}
!19 = !{i32 0, i32 33}
!20 = !{!"branch_weights", i32 1, i32 2000}
!21 = !{i64 2156620342, i64 2156620847, i64 2156620379, i64 2156620435, i64 2156620469, i64 2156620493, i64 2156620534, i64 2156620555, i64 2156620583, i64 2156620617}
!22 = !{!"branch_weights", i32 1, i32 2001, i32 2000}
!23 = !{i64 2151215112, i64 2151215596, i64 2151215149, i64 2151215205, i64 2151215239, i64 2151215263, i64 2151215304, i64 2151215325, i64 2151215353, i64 2151215387}
!24 = !{i64 2153352450, i64 2153352942, i64 2153352487, i64 2153352543, i64 2153352577, i64 2153352601, i64 2153352642, i64 2153352663, i64 2153352691, i64 2153352725}
!25 = !{i64 2153354060, i64 2153354552, i64 2153354097, i64 2153354153, i64 2153354187, i64 2153354211, i64 2153354252, i64 2153354273, i64 2153354301, i64 2153354335}
!26 = !{i64 2149082382, i64 2149082405, i64 2149082437, i64 2149082469, i64 2149082507, i64 2149082537}
