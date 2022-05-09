; ModuleID = '/llk/IR_all_yes/drivers/infiniband/core/umem_dmabuf.c_pt.bc'
source_filename = "../drivers/infiniband/core/umem_dmabuf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ib_umem_dmabuf_map_pages\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_umem_dmabuf_map_pages\09\09\09\09"
module asm "\09.long\09__crc_ib_umem_dmabuf_map_pages\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_umem_dmabuf_map_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_umem_dmabuf_map_pages\22\09\09\09\09\09"
module asm "__kstrtabns_ib_umem_dmabuf_map_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_umem_dmabuf_unmap_pages\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_umem_dmabuf_unmap_pages\09\09\09\09"
module asm "\09.long\09__crc_ib_umem_dmabuf_unmap_pages\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_umem_dmabuf_unmap_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_umem_dmabuf_unmap_pages\22\09\09\09\09\09"
module asm "__kstrtabns_ib_umem_dmabuf_unmap_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_umem_dmabuf_get\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_umem_dmabuf_get\09\09\09\09"
module asm "\09.long\09__crc_ib_umem_dmabuf_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_umem_dmabuf_get:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_umem_dmabuf_get\22\09\09\09\09\09"
module asm "__kstrtabns_ib_umem_dmabuf_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_umem_dmabuf_get_pinned\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_umem_dmabuf_get_pinned\09\09\09\09"
module asm "\09.long\09__crc_ib_umem_dmabuf_get_pinned\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_umem_dmabuf_get_pinned:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_umem_dmabuf_get_pinned\22\09\09\09\09\09"
module asm "__kstrtabns_ib_umem_dmabuf_get_pinned:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dma_buf_attach_ops = type { i8, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ib_umem_dmabuf = type { %struct.ib_umem, ptr, ptr, ptr, ptr, i32, i32, ptr, i8 }
%struct.ib_umem = type { ptr, ptr, i64, i32, i32, i8, %struct.work_struct, %struct.sg_append_table }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.sg_append_table = type { %struct.sg_table, ptr, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.dma_buf = type { i32, ptr, %struct.list_head, ptr, %struct.mutex, i32, %struct.dma_buf_map, ptr, ptr, %struct.spinlock, ptr, %struct.list_head, ptr, ptr, %struct.wait_queue_head, %struct.dma_buf_poll_cb_t, %struct.dma_buf_poll_cb_t, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dma_buf_map = type { %union.anon.185, i8 }
%union.anon.185 = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dma_buf_poll_cb_t = type { %struct.dma_fence_cb, ptr, i32 }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.dma_buf_attachment = type { ptr, ptr, %struct.list_head, ptr, i32, i8, ptr, ptr, ptr }

@__UNIQUE_ID_import_ns506 = internal constant [28 x i8] c"ib_uverbs.import_ns=DMA_BUF\00", section ".modinfo", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/infiniband/core/umem_dmabuf.c\00", [58 x i8] zeroinitializer }, align 32
@__kstrtab_ib_umem_dmabuf_map_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_umem_dmabuf_map_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_umem_dmabuf_map_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_umem_dmabuf_map_pages to i32), ptr @__kstrtab_ib_umem_dmabuf_map_pages, ptr @__kstrtabns_ib_umem_dmabuf_map_pages }, section "___ksymtab+ib_umem_dmabuf_map_pages", align 4
@__kstrtab_ib_umem_dmabuf_unmap_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_umem_dmabuf_unmap_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_umem_dmabuf_unmap_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_umem_dmabuf_unmap_pages to i32), ptr @__kstrtab_ib_umem_dmabuf_unmap_pages, ptr @__kstrtabns_ib_umem_dmabuf_unmap_pages }, section "___ksymtab+ib_umem_dmabuf_unmap_pages", align 4
@__kstrtab_ib_umem_dmabuf_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_umem_dmabuf_get = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_umem_dmabuf_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_umem_dmabuf_get to i32), ptr @__kstrtab_ib_umem_dmabuf_get, ptr @__kstrtabns_ib_umem_dmabuf_get }, section "___ksymtab+ib_umem_dmabuf_get", align 4
@ib_umem_dmabuf_attach_pinned_ops = internal global { %struct.dma_buf_attach_ops, [24 x i8] } { %struct.dma_buf_attach_ops { i8 1, ptr @ib_umem_dmabuf_unsupported_move_notify }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_ib_umem_dmabuf_get_pinned = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_umem_dmabuf_get_pinned = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_umem_dmabuf_get_pinned = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_umem_dmabuf_get_pinned to i32), ptr @__kstrtab_ib_umem_dmabuf_get_pinned, ptr @__kstrtabns_ib_umem_dmabuf_get_pinned }, section "___ksymtab+ib_umem_dmabuf_get_pinned", align 4
@dma_resv_excl_fence.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/dma-resv.h\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ib_umem_dmabuf_unsupported_move_notify._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.ib_umem_dmabuf_unsupported_move_notify = private unnamed_addr constant [39 x i8] c"ib_umem_dmabuf_unsupported_move_notify\00", align 1
@.str.4 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Invalidate callback should not be called when memory is pinned\0A\00", [32 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 24, i32 2 }
@___asan_gen_.8 = private unnamed_addr constant [33 x i8] c"ib_umem_dmabuf_attach_pinned_ops\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 178, i32 34 }
@___asan_gen_.15 = private unnamed_addr constant [28 x i8] c"../include/linux/dma-resv.h\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 440, i32 9 }
@___asan_gen_.17 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private constant [41 x i8] c"../drivers/infiniband/core/umem_dmabuf.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 174, i32 2 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_import_ns506, ptr @__ksymtab_ib_umem_dmabuf_get, ptr @__ksymtab_ib_umem_dmabuf_get_pinned, ptr @__ksymtab_ib_umem_dmabuf_map_pages, ptr @__ksymtab_ib_umem_dmabuf_unmap_pages, ptr @.str, ptr @ib_umem_dmabuf_attach_pinned_ops, ptr @.str.1, ptr @.str.2, ptr @ib_umem_dmabuf_unsupported_move_notify._rs, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_umem_dmabuf_attach_pinned_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_umem_dmabuf_unsupported_move_notify._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ib_umem_dmabuf_map_pages(ptr nocapture noundef %umem_dmabuf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.rhs:                                         ; preds = %entry
  %attach = getelementptr inbounds %struct.ib_umem_dmabuf, ptr %umem_dmabuf, i32 0, i32 1
  %1 = ptrtoint ptr %attach to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %attach, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %resv = getelementptr inbounds %struct.dma_buf, ptr %4, i32 0, i32 13
  %5 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %resv, align 4
  %dep_map = getelementptr inbounds %struct.mutex, ptr %6, i32 0, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !32

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 24, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %sgt24 = getelementptr inbounds %struct.ib_umem_dmabuf, ptr %umem_dmabuf, i32 0, i32 2
  %7 = ptrtoint ptr %sgt24 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sgt24, align 4
  %tobool25.not = icmp eq ptr %8, null
  br i1 %tobool25.not, label %if.end27, label %if.end.wait_fence_crit_edge

if.end.wait_fence_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %wait_fence

if.end27:                                         ; preds = %if.end
  %attach28 = getelementptr inbounds %struct.ib_umem_dmabuf, ptr %umem_dmabuf, i32 0, i32 1
  %9 = ptrtoint ptr %attach28 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %attach28, align 8
  %call29 = tail call ptr @dma_buf_map_attachment(ptr noundef %10, i32 noundef 0) #5
  %cmp.i = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %call29 to i32
  br label %cleanup

if.end33:                                         ; preds = %if.end27
  %address = getelementptr inbounds %struct.ib_umem, ptr %umem_dmabuf, i32 0, i32 4
  %12 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %address, align 4
  %and = and i32 %13, -4096
  %length = getelementptr inbounds %struct.ib_umem, ptr %umem_dmabuf, i32 0, i32 3
  %14 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length, align 8
  %add37 = add i32 %13, 4095
  %add38 = add i32 %add37, %15
  %and39 = and i32 %add38, -4096
  %nents = getelementptr inbounds %struct.sg_table, ptr %call29, i32 0, i32 1
  %16 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp40152.not = icmp eq i32 %17, 0
  br i1 %cmp40152.not, label %if.end33.for.end_crit_edge, label %for.body.lr.ph

if.end33.for.end_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end33
  %18 = ptrtoint ptr %call29 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call29, align 4
  %first_sg = getelementptr inbounds %struct.ib_umem_dmabuf, ptr %umem_dmabuf, i32 0, i32 3
  %first_sg_offset = getelementptr inbounds %struct.ib_umem_dmabuf, ptr %umem_dmabuf, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %if.end69.for.body_crit_edge, %for.body.lr.ph
  %sg.0156 = phi ptr [ %19, %for.body.lr.ph ], [ %call73, %if.end69.for.body_crit_edge ]
  %i.0155 = phi i32 [ 0, %for.body.lr.ph ], [ %inc72, %if.end69.for.body_crit_edge ]
  %nmap.0154 = phi i32 [ 0, %for.body.lr.ph ], [ %nmap.1, %if.end69.for.body_crit_edge ]
  %cur.0153 = phi i32 [ 0, %for.body.lr.ph ], [ %add71, %if.end69.for.body_crit_edge ]
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.0156, i32 0, i32 4
  %20 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma_length, align 4
  %add41 = add i32 %21, %cur.0153
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %add41)
  %cmp42 = icmp ult i32 %and, %add41
  call void @__sanitizer_cov_trace_cmp4(i32 %cur.0153, i32 %and39)
  %cmp43 = icmp ult i32 %cur.0153, %and39
  %or.cond = select i1 %cmp42, i1 %cmp43, i1 false
  %inc = zext i1 %or.cond to i32
  %nmap.1 = add i32 %nmap.0154, %inc
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %cur.0153)
  %cmp46.not = icmp ult i32 %and, %cur.0153
  %cmp42.not = xor i1 %cmp42, true
  %brmerge = select i1 %cmp46.not, i1 true, i1 %cmp42.not
  br i1 %brmerge, label %for.body.if.end57_crit_edge, label %if.then51

for.body.if.end57_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

if.then51:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %sub52 = sub i32 %and, %cur.0153
  %22 = ptrtoint ptr %first_sg to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %sg.0156, ptr %first_sg, align 8
  %23 = ptrtoint ptr %first_sg_offset to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %sub52, ptr %first_sg_offset, align 8
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.0156, i32 0, i32 3
  %24 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dma_address, align 4
  %add53 = add i32 %25, %sub52
  store i32 %add53, ptr %dma_address, align 4
  %26 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dma_length, align 4
  %sub55 = sub i32 %27, %sub52
  store i32 %sub55, ptr %dma_length, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then51, %for.body.if.end57_crit_edge
  %cur.1 = phi i32 [ %and, %if.then51 ], [ %cur.0153, %for.body.if.end57_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cur.1, i32 %and39)
  %cmp58 = icmp ult i32 %cur.1, %and39
  br i1 %cmp58, label %land.lhs.true59, label %if.end57.if.end69_crit_edge

if.end57.if.end69_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

land.lhs.true59:                                  ; preds = %if.end57
  %28 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dma_length, align 4
  %add61 = add i32 %29, %cur.1
  call void @__sanitizer_cov_trace_cmp4(i32 %add61, i32 %and39)
  %cmp62.not = icmp ult i32 %add61, %and39
  br i1 %cmp62.not, label %land.lhs.true59.if.end69_crit_edge, label %if.then63

land.lhs.true59.if.end69_crit_edge:               ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

if.then63:                                        ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #7
  %sub66 = sub i32 %add61, %and39
  %last_sg = getelementptr inbounds %struct.ib_umem_dmabuf, ptr %umem_dmabuf, i32 0, i32 4
  %30 = ptrtoint ptr %last_sg to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %sg.0156, ptr %last_sg, align 4
  %last_sg_trim = getelementptr inbounds %struct.ib_umem_dmabuf, ptr %umem_dmabuf, i32 0, i32 6
  %31 = ptrtoint ptr %last_sg_trim to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %sub66, ptr %last_sg_trim, align 4
  %32 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dma_length, align 4
  %sub68 = sub i32 %33, %sub66
  store i32 %sub68, ptr %dma_length, align 4
  br label %for.end

if.end69:                                         ; preds = %land.lhs.true59.if.end69_crit_edge, %if.end57.if.end69_crit_edge
  %34 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dma_length, align 4
  %add71 = add i32 %35, %cur.1
  %inc72 = add nuw i32 %i.0155, 1
  %call73 = tail call ptr @sg_next(ptr noundef %sg.0156) #5
  %36 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nents, align 4
  %cmp40 = icmp ult i32 %inc72, %37
  br i1 %cmp40, label %if.end69.for.body_crit_edge, label %if.end69.for.end_crit_edge

if.end69.for.end_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end69.for.body_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %if.end69.for.end_crit_edge, %if.then63, %if.end33.for.end_crit_edge
  %nmap.2 = phi i32 [ %nmap.1, %if.then63 ], [ 0, %if.end33.for.end_crit_edge ], [ %nmap.1, %if.end69.for.end_crit_edge ]
  %first_sg74 = getelementptr inbounds %struct.ib_umem_dmabuf, ptr %umem_dmabuf, i32 0, i32 3
  %38 = ptrtoint ptr %first_sg74 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %first_sg74, align 8
  %sgt_append = getelementptr inbounds %struct.ib_umem, ptr %umem_dmabuf, i32 0, i32 7
  %40 = ptrtoint ptr %sgt_append to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %sgt_append, align 8
  %nents81 = getelementptr inbounds %struct.ib_umem, ptr %umem_dmabuf, i32 0, i32 7, i32 0, i32 1
  %41 = ptrtoint ptr %nents81 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %nmap.2, ptr %nents81, align 4
  %42 = ptrtoint ptr %sgt24 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call29, ptr %sgt24, align 4
  br label %wait_fence

wait_fence:                                       ; preds = %for.end, %if.end.wait_fence_crit_edge
  %attach83 = getelementptr inbounds %struct.ib_umem_dmabuf, ptr %umem_dmabuf, i32 0, i32 1
  %43 = ptrtoint ptr %attach83 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %attach83, align 8
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %resv85 = getelementptr inbounds %struct.dma_buf, ptr %46, i32 0, i32 13
  %47 = ptrtoint ptr %resv85 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %resv85, align 4
  %fence_excl.i = getelementptr inbounds %struct.dma_resv, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %fence_excl.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %fence_excl.i, align 4
  %dep_map.i = getelementptr inbounds %struct.mutex, ptr %48, i32 0, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %wait_fence.dma_resv_excl_fence.exit_crit_edge

wait_fence.dma_resv_excl_fence.exit_crit_edge:    ; preds = %wait_fence
  call void @__sanitizer_cov_trace_pc() #7
  br label %dma_resv_excl_fence.exit

lor.lhs.false.i:                                  ; preds = %wait_fence
  %call2.i = tail call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.dma_resv_excl_fence.exit_crit_edge

lor.lhs.false.i.dma_resv_excl_fence.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dma_resv_excl_fence.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.dma_resv_excl_fence.exit_crit_edge, label %land.lhs.true6.i

land.lhs.true.i.dma_resv_excl_fence.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dma_resv_excl_fence.exit

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %.b12.i = load i1, ptr @dma_resv_excl_fence.__warned, align 1
  br i1 %.b12.i, label %land.lhs.true6.i.dma_resv_excl_fence.exit_crit_edge, label %if.then.i

land.lhs.true6.i.dma_resv_excl_fence.exit_crit_edge: ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dma_resv_excl_fence.exit

if.then.i:                                        ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @dma_resv_excl_fence.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 440, ptr noundef nonnull @.str.2) #5
  br label %dma_resv_excl_fence.exit

dma_resv_excl_fence.exit:                         ; preds = %if.then.i, %land.lhs.true6.i.dma_resv_excl_fence.exit_crit_edge, %land.lhs.true.i.dma_resv_excl_fence.exit_crit_edge, %lor.lhs.false.i.dma_resv_excl_fence.exit_crit_edge, %wait_fence.dma_resv_excl_fence.exit_crit_edge
  %tobool87.not = icmp eq ptr %50, null
  br i1 %tobool87.not, label %dma_resv_excl_fence.exit.cleanup_crit_edge, label %if.then88

dma_resv_excl_fence.exit.cleanup_crit_edge:       ; preds = %dma_resv_excl_fence.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then88:                                        ; preds = %dma_resv_excl_fence.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call.i149 = tail call i32 @dma_fence_wait_timeout(ptr noundef nonnull %50, i1 noundef zeroext false, i32 noundef 2147483647) #5
  %51 = tail call i32 @llvm.smin.i32(i32 %call.i149, i32 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then88, %dma_resv_excl_fence.exit.cleanup_crit_edge, %if.then31
  %retval.0 = phi i32 [ %51, %if.then88 ], [ %11, %if.then31 ], [ 0, %dma_resv_excl_fence.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_buf_map_attachment(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ib_umem_dmabuf_unmap_pages(ptr nocapture noundef %umem_dmabuf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.rhs:                                         ; preds = %entry
  %attach = getelementptr inbounds %struct.ib_umem_dmabuf, ptr %umem_dmabuf, i32 0, i32 1
  %1 = ptrtoint ptr %attach to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %attach, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %resv = getelementptr inbounds %struct.dma_buf, ptr %4, i32 0, i32 13
  %5 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %resv, align 4
  %dep_map = getelementptr inbounds %struct.mutex, ptr %6, i32 0, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !32

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 81, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %sgt = getelementptr inbounds %struct.ib_umem_dmabuf, ptr %umem_dmabuf, i32 0, i32 2
  %7 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sgt, align 4
  %tobool24.not = icmp eq ptr %8, null
  br i1 %tobool24.not, label %if.end.return_crit_edge, label %if.end26

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end26:                                         ; preds = %if.end
  %first_sg = getelementptr inbounds %struct.ib_umem_dmabuf, ptr %umem_dmabuf, i32 0, i32 3
  %9 = ptrtoint ptr %first_sg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %first_sg, align 8
  %tobool27.not = icmp eq ptr %10, null
  br i1 %tobool27.not, label %if.end26.if.end34_crit_edge, label %if.then28

if.end26.if.end34_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  %first_sg_offset = getelementptr inbounds %struct.ib_umem_dmabuf, ptr %umem_dmabuf, i32 0, i32 5
  %11 = ptrtoint ptr %first_sg_offset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %first_sg_offset, align 8
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %10, i32 0, i32 3
  %13 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma_address, align 4
  %sub = sub i32 %14, %12
  store i32 %sub, ptr %dma_address, align 4
  %15 = load i32, ptr %first_sg_offset, align 8
  %16 = ptrtoint ptr %first_sg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %first_sg, align 8
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma_length, align 4
  %add = add i32 %19, %15
  store i32 %add, ptr %dma_length, align 4
  store ptr null, ptr %first_sg, align 8
  store i32 0, ptr %first_sg_offset, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.then28, %if.end26.if.end34_crit_edge
  %last_sg = getelementptr inbounds %struct.ib_umem_dmabuf, ptr %umem_dmabuf, i32 0, i32 4
  %20 = ptrtoint ptr %last_sg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %last_sg, align 4
  %tobool35.not = icmp eq ptr %21, null
  br i1 %tobool35.not, label %if.end34.if.end42_crit_edge, label %if.then36

if.end34.if.end42_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

if.then36:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  %last_sg_trim = getelementptr inbounds %struct.ib_umem_dmabuf, ptr %umem_dmabuf, i32 0, i32 6
  %22 = ptrtoint ptr %last_sg_trim to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %last_sg_trim, align 4
  %dma_length38 = getelementptr inbounds %struct.scatterlist, ptr %21, i32 0, i32 4
  %24 = ptrtoint ptr %dma_length38 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dma_length38, align 4
  %add39 = add i32 %25, %23
  store i32 %add39, ptr %dma_length38, align 4
  %26 = ptrtoint ptr %last_sg to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %last_sg, align 4
  store i32 0, ptr %last_sg_trim, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then36, %if.end34.if.end42_crit_edge
  %attach43 = getelementptr inbounds %struct.ib_umem_dmabuf, ptr %umem_dmabuf, i32 0, i32 1
  %27 = ptrtoint ptr %attach43 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %attach43, align 8
  %29 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sgt, align 4
  tail call void @dma_buf_unmap_attachment(ptr noundef %28, ptr noundef %30, i32 noundef 0) #5
  %31 = ptrtoint ptr %sgt to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %sgt, align 4
  br label %return

return:                                           ; preds = %if.end42, %if.end.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_buf_unmap_attachment(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ib_umem_dmabuf_get(ptr noundef %device, i32 noundef %offset, i32 noundef %size, i32 noundef %fd, i32 noundef %access, ptr noundef %ops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %offset, i32 %size)
  %1 = extractvalue { i32, i1 } %0, 1
  %2 = extractvalue { i32, i1 } %0, 0
  %tobool4.not = icmp eq ptr %ops, null
  %or.cond = or i1 %1, %tobool4.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.rhs, !prof !33

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.rhs:                                          ; preds = %entry
  %move_notify = getelementptr inbounds %struct.dma_buf_attach_ops, ptr %ops, i32 0, i32 1
  %3 = ptrtoint ptr %move_notify to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %move_notify, align 4
  %tobool5.not = icmp eq ptr %4, null
  br i1 %tobool5.not, label %lor.rhs.cleanup_crit_edge, label %if.end10, !prof !32

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %lor.rhs
  %call11 = tail call ptr @dma_buf_get(i32 noundef %fd) #5
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end10.cleanup_crit_edge, label %if.end15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %5 = ptrtoint ptr %call11 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %2)
  %cmp17 = icmp ult i32 %6, %2
  br i1 %cmp17, label %if.end15.out_release_dmabuf_crit_edge, label %if.end20

if.end15.out_release_dmabuf_crit_edge:            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_release_dmabuf

if.end20:                                         ; preds = %if.end15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 128) #8
  %tobool22.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool22.not, label %if.end20.out_release_dmabuf_crit_edge, label %if.end25

if.end20.out_release_dmabuf_crit_edge:            ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_release_dmabuf

if.end25:                                         ; preds = %if.end20
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %device, ptr %call7.i.i, align 8
  %length = getelementptr inbounds %struct.ib_umem, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %size, ptr %length, align 8
  %address = getelementptr inbounds %struct.ib_umem, ptr %call7.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %address to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %offset, ptr %address, align 4
  %and.i = and i32 %access, 27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %writable = getelementptr inbounds %struct.ib_umem, ptr %call7.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %writable to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %writable, align 8
  %bf.clear = and i8 %bf.load, 95
  %bf.set = select i1 %tobool.i.not, i8 32, i8 -96
  %bf.set31 = or i8 %bf.set, %bf.clear
  store i8 %bf.set31, ptr %writable, align 8
  %iova.i.i = getelementptr inbounds %struct.ib_umem, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %iova.i.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %iova.i.i, align 8
  %conv.i.i = zext i32 %size to i64
  %add.i.i = add nuw nsw i64 %conv.i.i, 4095
  %add2.i.i = add i64 %add.i.i, %13
  %and.i.i = and i64 %add2.i.i, 4294963200
  %and15.i.i = and i64 %13, 4294963200
  %sub16.i.i = sub nsw i64 %and.i.i, %and15.i.i
  %conv17.i.i = trunc i64 %sub16.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv17.i.i)
  %tobool33.not = icmp eq i32 %conv17.i.i, 0
  br i1 %tobool33.not, label %if.end25.out_free_umem_crit_edge, label %if.end35

if.end25.out_free_umem_crit_edge:                 ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_free_umem

if.end35:                                         ; preds = %if.end25
  %14 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device, align 8
  %call36 = tail call ptr @dma_buf_dynamic_attach(ptr noundef %call11, ptr noundef %15, ptr noundef nonnull %ops, ptr noundef nonnull %call7.i.i) #5
  %attach = getelementptr inbounds %struct.ib_umem_dmabuf, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %attach to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call36, ptr %attach, align 8
  %cmp.i71 = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i71, label %if.end35.out_free_umem_crit_edge, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end35.out_free_umem_crit_edge:                 ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_free_umem

out_free_umem:                                    ; preds = %if.end35.out_free_umem_crit_edge, %if.end25.out_free_umem_crit_edge
  %ret.0 = phi ptr [ inttoptr (i32 -22 to ptr), %if.end25.out_free_umem_crit_edge ], [ %call36, %if.end35.out_free_umem_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %out_release_dmabuf

out_release_dmabuf:                               ; preds = %out_free_umem, %if.end20.out_release_dmabuf_crit_edge, %if.end15.out_release_dmabuf_crit_edge
  %ret.1 = phi ptr [ inttoptr (i32 -22 to ptr), %if.end15.out_release_dmabuf_crit_edge ], [ %ret.0, %out_free_umem ], [ inttoptr (i32 -12 to ptr), %if.end20.out_release_dmabuf_crit_edge ]
  tail call void @dma_buf_put(ptr noundef %call11) #5
  br label %cleanup

cleanup:                                          ; preds = %out_release_dmabuf, %if.end35.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %lor.rhs.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %ret.1, %out_release_dmabuf ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.rhs.cleanup_crit_edge ], [ %call7.i.i, %if.end35.cleanup_crit_edge ], [ %call11, %if.end10.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_buf_get(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_buf_dynamic_attach(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_buf_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ib_umem_dmabuf_get_pinned(ptr noundef %device, i32 noundef %offset, i32 noundef %size, i32 noundef %fd, i32 noundef %access) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ib_umem_dmabuf_get(ptr noundef %device, i32 noundef %offset, i32 noundef %size, i32 noundef %fd, i32 noundef %access, ptr noundef nonnull @ib_umem_dmabuf_attach_pinned_ops)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %attach = getelementptr inbounds %struct.ib_umem_dmabuf, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %attach to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attach, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %resv = getelementptr inbounds %struct.dma_buf, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resv, align 4
  %call.i = tail call i32 @ww_mutex_lock(ptr noundef %5, ptr noundef null) #5
  %6 = ptrtoint ptr %attach to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %attach, align 8
  %call4 = tail call i32 @dma_buf_pin(ptr noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %if.end.err_release_crit_edge

if.end.err_release_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_release

if.end6:                                          ; preds = %if.end
  %pinned = getelementptr inbounds %struct.ib_umem_dmabuf, ptr %call, i32 0, i32 8
  %8 = ptrtoint ptr %pinned to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %pinned, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %pinned, align 4
  %call7 = tail call i32 @ib_umem_dmabuf_map_pages(ptr noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  %9 = ptrtoint ptr %attach to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %attach, align 8
  br i1 %tobool8.not, label %if.end10, label %err_unpin

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %resv13 = getelementptr inbounds %struct.dma_buf, ptr %12, i32 0, i32 13
  %13 = ptrtoint ptr %resv13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %resv13, align 4
  tail call void @dma_resv_reset_shared_max(ptr noundef %14) #5
  tail call void @ww_mutex_unlock(ptr noundef %14) #5
  br label %cleanup

err_unpin:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dma_buf_unpin(ptr noundef %10) #5
  br label %err_release

err_release:                                      ; preds = %err_unpin, %if.end.err_release_crit_edge
  %err.0 = phi i32 [ %call4, %if.end.err_release_crit_edge ], [ %call7, %err_unpin ]
  %15 = ptrtoint ptr %attach to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %attach, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %resv17 = getelementptr inbounds %struct.dma_buf, ptr %18, i32 0, i32 13
  %19 = ptrtoint ptr %resv17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %resv17, align 4
  tail call void @dma_resv_reset_shared_max(ptr noundef %20) #5
  tail call void @ww_mutex_unlock(ptr noundef %20) #5
  tail call void @ib_umem_release(ptr noundef %call) #5
  %21 = inttoptr i32 %err.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_release, %if.end10, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %21, %err_release ], [ %call, %if.end10 ], [ %call, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_buf_pin(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_buf_unpin(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_umem_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ib_umem_dmabuf_release(ptr noundef %umem_dmabuf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %attach = getelementptr inbounds %struct.ib_umem_dmabuf, ptr %umem_dmabuf, i32 0, i32 1
  %0 = ptrtoint ptr %attach to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attach, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %resv = getelementptr inbounds %struct.dma_buf, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resv, align 4
  %call.i = tail call i32 @ww_mutex_lock(ptr noundef %5, ptr noundef null) #5
  tail call void @ib_umem_dmabuf_unmap_pages(ptr noundef %umem_dmabuf)
  %pinned = getelementptr inbounds %struct.ib_umem_dmabuf, ptr %umem_dmabuf, i32 0, i32 8
  %6 = ptrtoint ptr %pinned to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %pinned, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %attach to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %attach, align 8
  tail call void @dma_buf_unpin(ptr noundef %8) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %9 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %resv, align 4
  tail call void @dma_resv_reset_shared_max(ptr noundef %10) #5
  tail call void @ww_mutex_unlock(ptr noundef %10) #5
  %11 = ptrtoint ptr %attach to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %attach, align 8
  tail call void @dma_buf_detach(ptr noundef %3, ptr noundef %12) #5
  tail call void @dma_buf_put(ptr noundef %3) #5
  tail call void @kfree(ptr noundef %umem_dmabuf) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_buf_detach(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_wait_timeout(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ib_umem_dmabuf_unsupported_move_notify(ptr nocapture noundef readonly %attach) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %importer_priv = getelementptr inbounds %struct.dma_buf_attachment, ptr %attach, i32 0, i32 7
  %0 = ptrtoint ptr %importer_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %importer_priv, align 4
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @ib_umem_dmabuf_unsupported_move_notify._rs, ptr noundef nonnull @__func__.ib_umem_dmabuf_unsupported_move_notify) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @ibdev_warn(ptr noundef %3, ptr noundef nonnull @.str.4) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @ibdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_reset_shared_max(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ww_mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !18, !20, !21, !22}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @__UNIQUE_ID_import_ns506, !1, !"__UNIQUE_ID_import_ns506", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/core/umem_dmabuf.c", i32 13, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/infiniband/core/umem_dmabuf.c", i32 24, i32 2}
!4 = !{ptr @__ksymtab_ib_umem_dmabuf_map_pages, !5, !"__ksymtab_ib_umem_dmabuf_map_pages", i1 false, i1 false}
!5 = !{!"../drivers/infiniband/core/umem_dmabuf.c", i32 77, i32 1}
!6 = !{ptr @__ksymtab_ib_umem_dmabuf_unmap_pages, !7, !"__ksymtab_ib_umem_dmabuf_unmap_pages", i1 false, i1 false}
!7 = !{!"../drivers/infiniband/core/umem_dmabuf.c", i32 107, i32 1}
!8 = !{ptr @__ksymtab_ib_umem_dmabuf_get, !9, !"__ksymtab_ib_umem_dmabuf_get", i1 false, i1 false}
!9 = !{!"../drivers/infiniband/core/umem_dmabuf.c", i32 167, i32 1}
!10 = !{ptr @__ksymtab_ib_umem_dmabuf_get_pinned, !11, !"__ksymtab_ib_umem_dmabuf_get_pinned", i1 false, i1 false}
!11 = !{!"../drivers/infiniband/core/umem_dmabuf.c", i32 216, i32 1}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../include/linux/dma-resv.h", i32 440, i32 9}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @ib_umem_dmabuf_attach_pinned_ops, !17, !"ib_umem_dmabuf_attach_pinned_ops", i1 false, i1 false}
!17 = !{!"../drivers/infiniband/core/umem_dmabuf.c", i32 178, i32 34}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/infiniband/core/umem_dmabuf.c", i32 174, i32 2}
!20 = !{ptr @ib_umem_dmabuf_unsupported_move_notify._rs, !19, !"_rs", i1 false, i1 false}
!21 = !{ptr @__func__.ib_umem_dmabuf_unsupported_move_notify, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{!"branch_weights", i32 1, i32 2000}
!33 = !{!"branch_weights", i32 2002, i32 2000}
