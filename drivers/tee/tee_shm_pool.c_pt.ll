; ModuleID = '/llk/IR_all_yes/drivers/tee/tee_shm_pool.c_pt.bc'
source_filename = "../drivers/tee/tee_shm_pool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+tee_shm_pool_alloc_res_mem\22, \22a\22\09"
module asm "\09.weak\09__crc_tee_shm_pool_alloc_res_mem\09\09\09\09"
module asm "\09.long\09__crc_tee_shm_pool_alloc_res_mem\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tee_shm_pool_alloc_res_mem:\09\09\09\09\09"
module asm "\09.asciz \09\22tee_shm_pool_alloc_res_mem\22\09\09\09\09\09"
module asm "__kstrtabns_tee_shm_pool_alloc_res_mem:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tee_shm_pool_mgr_alloc_res_mem\22, \22a\22\09"
module asm "\09.weak\09__crc_tee_shm_pool_mgr_alloc_res_mem\09\09\09\09"
module asm "\09.long\09__crc_tee_shm_pool_mgr_alloc_res_mem\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tee_shm_pool_mgr_alloc_res_mem:\09\09\09\09\09"
module asm "\09.asciz \09\22tee_shm_pool_mgr_alloc_res_mem\22\09\09\09\09\09"
module asm "__kstrtabns_tee_shm_pool_mgr_alloc_res_mem:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tee_shm_pool_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_tee_shm_pool_alloc\09\09\09\09"
module asm "\09.long\09__crc_tee_shm_pool_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tee_shm_pool_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22tee_shm_pool_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_tee_shm_pool_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tee_shm_pool_free\22, \22a\22\09"
module asm "\09.weak\09__crc_tee_shm_pool_free\09\09\09\09"
module asm "\09.long\09__crc_tee_shm_pool_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tee_shm_pool_free:\09\09\09\09\09"
module asm "\09.asciz \09\22tee_shm_pool_free\22\09\09\09\09\09"
module asm "__kstrtabns_tee_shm_pool_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tee_shm_pool_mgr_ops = type { ptr, ptr, ptr }
%struct.tee_shm_pool_mem_info = type { i32, i32, i32 }
%struct.tee_shm_pool = type { ptr, ptr }
%struct.tee_shm_pool_mgr = type { ptr, ptr }
%struct.gen_pool = type { %struct.spinlock, %struct.list_head, i32, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.tee_shm = type { ptr, i32, ptr, i32, i32, ptr, i32, %struct.refcount_struct, i32, i32, i64 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }

@__kstrtab_tee_shm_pool_alloc_res_mem = external dso_local constant [0 x i8], align 1
@__kstrtabns_tee_shm_pool_alloc_res_mem = external dso_local constant [0 x i8], align 1
@__ksymtab_tee_shm_pool_alloc_res_mem = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tee_shm_pool_alloc_res_mem to i32), ptr @__kstrtab_tee_shm_pool_alloc_res_mem, ptr @__kstrtabns_tee_shm_pool_alloc_res_mem }, section "___ksymtab_gpl+tee_shm_pool_alloc_res_mem", align 4
@pool_ops_generic = internal constant { %struct.tee_shm_pool_mgr_ops, [20 x i8] } { %struct.tee_shm_pool_mgr_ops { ptr @pool_op_gen_alloc, ptr @pool_op_gen_free, ptr @pool_op_gen_destroy_poolmgr }, [20 x i8] zeroinitializer }, align 32
@__kstrtab_tee_shm_pool_mgr_alloc_res_mem = external dso_local constant [0 x i8], align 1
@__kstrtabns_tee_shm_pool_mgr_alloc_res_mem = external dso_local constant [0 x i8], align 1
@__ksymtab_tee_shm_pool_mgr_alloc_res_mem = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tee_shm_pool_mgr_alloc_res_mem to i32), ptr @__kstrtab_tee_shm_pool_mgr_alloc_res_mem, ptr @__kstrtabns_tee_shm_pool_mgr_alloc_res_mem }, section "___ksymtab_gpl+tee_shm_pool_mgr_alloc_res_mem", align 4
@__kstrtab_tee_shm_pool_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_tee_shm_pool_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_tee_shm_pool_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tee_shm_pool_alloc to i32), ptr @__kstrtab_tee_shm_pool_alloc, ptr @__kstrtabns_tee_shm_pool_alloc }, section "___ksymtab_gpl+tee_shm_pool_alloc", align 4
@__kstrtab_tee_shm_pool_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_tee_shm_pool_free = external dso_local constant [0 x i8], align 1
@__ksymtab_tee_shm_pool_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tee_shm_pool_free to i32), ptr @__kstrtab_tee_shm_pool_free, ptr @__kstrtabns_tee_shm_pool_free }, section "___ksymtab_gpl+tee_shm_pool_free", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"pool_ops_generic\00", align 1
@___asan_gen_.2 = private constant [30 x i8] c"../drivers/tee/tee_shm_pool.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 44, i32 42 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_tee_shm_pool_alloc, ptr @__ksymtab_tee_shm_pool_alloc_res_mem, ptr @__ksymtab_tee_shm_pool_free, ptr @__ksymtab_tee_shm_pool_mgr_alloc_res_mem, ptr @pool_ops_generic], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pool_ops_generic to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tee_shm_pool_alloc_res_mem(ptr nocapture noundef readonly %priv_info, ptr nocapture noundef readonly %dmabuf_info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %priv_info, align 4
  %paddr = getelementptr inbounds %struct.tee_shm_pool_mem_info, ptr %priv_info, i32 0, i32 1
  %2 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %paddr, align 4
  %size = getelementptr inbounds %struct.tee_shm_pool_mem_info, ptr %priv_info, i32 0, i32 2
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  %call = tail call ptr @tee_shm_pool_mgr_alloc_res_mem(i32 noundef %1, i32 noundef %3, i32 noundef %5, i32 noundef 3)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %dmabuf_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dmabuf_info, align 4
  %paddr3 = getelementptr inbounds %struct.tee_shm_pool_mem_info, ptr %dmabuf_info, i32 0, i32 1
  %8 = ptrtoint ptr %paddr3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %paddr3, align 4
  %size4 = getelementptr inbounds %struct.tee_shm_pool_mem_info, ptr %dmabuf_info, i32 0, i32 2
  %10 = ptrtoint ptr %size4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size4, align 4
  %call5 = tail call ptr @tee_shm_pool_mgr_alloc_res_mem(i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef 12)
  %cmp.i28 = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i28, label %if.end.err_free_priv_mgr_crit_edge, label %if.end8

if.end.err_free_priv_mgr_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_free_priv_mgr

if.end8:                                          ; preds = %if.end
  %tobool.not.i.i = icmp eq ptr %call, null
  br i1 %tobool.not.i.i, label %if.end8.err_free_dmabuf_mgr_crit_edge, label %land.lhs.true.i.i

if.end8.err_free_dmabuf_mgr_crit_edge:            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_free_dmabuf_mgr

land.lhs.true.i.i:                                ; preds = %if.end8
  %12 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call, align 4
  %tobool1.not.i.i = icmp eq ptr %13, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.err_free_dmabuf_mgr_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.err_free_dmabuf_mgr_crit_edge:  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_free_dmabuf_mgr

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %tobool4.not.i.i = icmp eq ptr %15, null
  br i1 %tobool4.not.i.i, label %land.lhs.true2.i.i.err_free_dmabuf_mgr_crit_edge, label %land.lhs.true5.i.i

land.lhs.true2.i.i.err_free_dmabuf_mgr_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_free_dmabuf_mgr

land.lhs.true5.i.i:                               ; preds = %land.lhs.true2.i.i
  %free.i.i = getelementptr inbounds %struct.tee_shm_pool_mgr_ops, ptr %13, i32 0, i32 1
  %16 = ptrtoint ptr %free.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %free.i.i, align 4
  %tobool7.not.i.i = icmp eq ptr %17, null
  br i1 %tobool7.not.i.i, label %land.lhs.true5.i.i.err_free_dmabuf_mgr_crit_edge, label %check_mgr_ops.exit.i

land.lhs.true5.i.i.err_free_dmabuf_mgr_crit_edge: ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_free_dmabuf_mgr

check_mgr_ops.exit.i:                             ; preds = %land.lhs.true5.i.i
  %destroy_poolmgr.i.i = getelementptr inbounds %struct.tee_shm_pool_mgr_ops, ptr %13, i32 0, i32 2
  %18 = ptrtoint ptr %destroy_poolmgr.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %destroy_poolmgr.i.i, align 4
  %tobool9.i.i = icmp eq ptr %19, null
  %tobool.not.i12.i = icmp eq ptr %call5, null
  %or.cond.i = or i1 %tobool.not.i12.i, %tobool9.i.i
  br i1 %or.cond.i, label %check_mgr_ops.exit.i.err_free_dmabuf_mgr_crit_edge, label %land.lhs.true.i14.i

check_mgr_ops.exit.i.err_free_dmabuf_mgr_crit_edge: ; preds = %check_mgr_ops.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_free_dmabuf_mgr

land.lhs.true.i14.i:                              ; preds = %check_mgr_ops.exit.i
  %20 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call5, align 4
  %tobool1.not.i13.i = icmp eq ptr %21, null
  br i1 %tobool1.not.i13.i, label %land.lhs.true.i14.i.err_free_dmabuf_mgr_crit_edge, label %land.lhs.true2.i16.i

land.lhs.true.i14.i.err_free_dmabuf_mgr_crit_edge: ; preds = %land.lhs.true.i14.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_free_dmabuf_mgr

land.lhs.true2.i16.i:                             ; preds = %land.lhs.true.i14.i
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %tobool4.not.i15.i = icmp eq ptr %23, null
  br i1 %tobool4.not.i15.i, label %land.lhs.true2.i16.i.err_free_dmabuf_mgr_crit_edge, label %land.lhs.true5.i19.i

land.lhs.true2.i16.i.err_free_dmabuf_mgr_crit_edge: ; preds = %land.lhs.true2.i16.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_free_dmabuf_mgr

land.lhs.true5.i19.i:                             ; preds = %land.lhs.true2.i16.i
  %free.i17.i = getelementptr inbounds %struct.tee_shm_pool_mgr_ops, ptr %21, i32 0, i32 1
  %24 = ptrtoint ptr %free.i17.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %free.i17.i, align 4
  %tobool7.not.i18.i = icmp eq ptr %25, null
  br i1 %tobool7.not.i18.i, label %land.lhs.true5.i19.i.err_free_dmabuf_mgr_crit_edge, label %check_mgr_ops.exit23.i

land.lhs.true5.i19.i.err_free_dmabuf_mgr_crit_edge: ; preds = %land.lhs.true5.i19.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_free_dmabuf_mgr

check_mgr_ops.exit23.i:                           ; preds = %land.lhs.true5.i19.i
  %destroy_poolmgr.i20.i = getelementptr inbounds %struct.tee_shm_pool_mgr_ops, ptr %21, i32 0, i32 2
  %26 = ptrtoint ptr %destroy_poolmgr.i20.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %destroy_poolmgr.i20.i, align 4
  %tobool9.i21.not.i = icmp eq ptr %27, null
  br i1 %tobool9.i21.not.i, label %check_mgr_ops.exit23.i.err_free_dmabuf_mgr_crit_edge, label %if.end.i

check_mgr_ops.exit23.i.err_free_dmabuf_mgr_crit_edge: ; preds = %check_mgr_ops.exit23.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_free_dmabuf_mgr

if.end.i:                                         ; preds = %check_mgr_ops.exit23.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %28 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3520, i32 noundef 8) #6
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.i.err_free_dmabuf_mgr_crit_edge, label %tee_shm_pool_alloc.exit

if.end.i.err_free_dmabuf_mgr_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_free_dmabuf_mgr

tee_shm_pool_alloc.exit:                          ; preds = %if.end.i
  %29 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call, ptr %call7.i.i.i, align 8
  %dma_buf_mgr.i = getelementptr inbounds %struct.tee_shm_pool, ptr %call7.i.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %dma_buf_mgr.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call5, ptr %dma_buf_mgr.i, align 4
  %cmp.i29 = icmp ugt ptr %call7.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i29, label %tee_shm_pool_alloc.exit.err_free_dmabuf_mgr_crit_edge, label %tee_shm_pool_alloc.exit.cleanup_crit_edge

tee_shm_pool_alloc.exit.cleanup_crit_edge:        ; preds = %tee_shm_pool_alloc.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

tee_shm_pool_alloc.exit.err_free_dmabuf_mgr_crit_edge: ; preds = %tee_shm_pool_alloc.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_free_dmabuf_mgr

err_free_dmabuf_mgr:                              ; preds = %tee_shm_pool_alloc.exit.err_free_dmabuf_mgr_crit_edge, %if.end.i.err_free_dmabuf_mgr_crit_edge, %check_mgr_ops.exit23.i.err_free_dmabuf_mgr_crit_edge, %land.lhs.true5.i19.i.err_free_dmabuf_mgr_crit_edge, %land.lhs.true2.i16.i.err_free_dmabuf_mgr_crit_edge, %land.lhs.true.i14.i.err_free_dmabuf_mgr_crit_edge, %check_mgr_ops.exit.i.err_free_dmabuf_mgr_crit_edge, %land.lhs.true5.i.i.err_free_dmabuf_mgr_crit_edge, %land.lhs.true2.i.i.err_free_dmabuf_mgr_crit_edge, %land.lhs.true.i.i.err_free_dmabuf_mgr_crit_edge, %if.end8.err_free_dmabuf_mgr_crit_edge
  %retval.0.i33 = phi ptr [ %call7.i.i.i, %tee_shm_pool_alloc.exit.err_free_dmabuf_mgr_crit_edge ], [ inttoptr (i32 -22 to ptr), %land.lhs.true.i14.i.err_free_dmabuf_mgr_crit_edge ], [ inttoptr (i32 -22 to ptr), %land.lhs.true2.i16.i.err_free_dmabuf_mgr_crit_edge ], [ inttoptr (i32 -22 to ptr), %land.lhs.true5.i19.i.err_free_dmabuf_mgr_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end8.err_free_dmabuf_mgr_crit_edge ], [ inttoptr (i32 -22 to ptr), %land.lhs.true.i.i.err_free_dmabuf_mgr_crit_edge ], [ inttoptr (i32 -22 to ptr), %land.lhs.true2.i.i.err_free_dmabuf_mgr_crit_edge ], [ inttoptr (i32 -22 to ptr), %land.lhs.true5.i.i.err_free_dmabuf_mgr_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i.err_free_dmabuf_mgr_crit_edge ], [ inttoptr (i32 -22 to ptr), %check_mgr_ops.exit.i.err_free_dmabuf_mgr_crit_edge ], [ inttoptr (i32 -22 to ptr), %check_mgr_ops.exit23.i.err_free_dmabuf_mgr_crit_edge ]
  %31 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call5, align 4
  %destroy_poolmgr.i = getelementptr inbounds %struct.tee_shm_pool_mgr_ops, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %destroy_poolmgr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %destroy_poolmgr.i, align 4
  tail call void %34(ptr noundef %call5) #3
  br label %err_free_priv_mgr

err_free_priv_mgr:                                ; preds = %err_free_dmabuf_mgr, %if.end.err_free_priv_mgr_crit_edge
  %rc.0 = phi ptr [ %call5, %if.end.err_free_priv_mgr_crit_edge ], [ %retval.0.i33, %err_free_dmabuf_mgr ]
  %35 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call, align 4
  %destroy_poolmgr.i30 = getelementptr inbounds %struct.tee_shm_pool_mgr_ops, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %destroy_poolmgr.i30 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %destroy_poolmgr.i30, align 4
  tail call void %38(ptr noundef %call) #3
  br label %cleanup

cleanup:                                          ; preds = %err_free_priv_mgr, %tee_shm_pool_alloc.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %rc.0, %err_free_priv_mgr ], [ %call, %entry.cleanup_crit_edge ], [ %call7.i.i.i, %tee_shm_pool_alloc.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tee_shm_pool_mgr_alloc_res_mem(i32 noundef %vaddr, i32 noundef %paddr, i32 noundef %size, i32 noundef %min_alloc_order) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = or i32 %paddr, %vaddr
  %1 = or i32 %0, %size
  %2 = and i32 %1, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 8) #6
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = tail call ptr @gen_pool_create(i32 noundef %min_alloc_order, i32 noundef -1) #3
  %private_data = getelementptr inbounds %struct.tee_shm_pool_mgr, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call11, ptr %private_data, align 4
  %tobool13.not = icmp eq ptr %call11, null
  br i1 %tobool13.not, label %if.end10.err_crit_edge, label %if.end15

if.end10.err_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  br label %err

if.end15:                                         ; preds = %if.end10
  tail call void @gen_pool_set_algo(ptr noundef nonnull %call11, ptr noundef nonnull @gen_pool_best_fit, ptr noundef null) #3
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data, align 4
  %call.i = tail call i32 @gen_pool_add_owner(ptr noundef %7, i32 noundef %vaddr, i32 noundef %paddr, i32 noundef %size, i32 noundef -1, ptr noundef null) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool19.not = icmp eq i32 %call.i, 0
  br i1 %tobool19.not, label %if.end22, label %if.then20

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #5
  %8 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private_data, align 4
  tail call void @gen_pool_destroy(ptr noundef %9) #3
  %phi.cast = inttoptr i32 %call.i to ptr
  br label %err

if.end22:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #5
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @pool_ops_generic, ptr %call7.i.i, align 8
  br label %cleanup

err:                                              ; preds = %if.then20, %if.end10.err_crit_edge
  %rc.0 = phi ptr [ %phi.cast, %if.then20 ], [ inttoptr (i32 -12 to ptr), %if.end10.err_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #3
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end22, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %rc.0, %err ], [ %call7.i.i, %if.end22 ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tee_shm_pool_alloc(ptr noundef %priv_mgr, ptr noundef %dmabuf_mgr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %priv_mgr, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %land.lhs.true.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true.i:                                  ; preds = %entry
  %0 = ptrtoint ptr %priv_mgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_mgr, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool4.not.i = icmp eq ptr %3, null
  br i1 %tobool4.not.i, label %land.lhs.true2.i.cleanup_crit_edge, label %land.lhs.true5.i

land.lhs.true2.i.cleanup_crit_edge:               ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true5.i:                                 ; preds = %land.lhs.true2.i
  %free.i = getelementptr inbounds %struct.tee_shm_pool_mgr_ops, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %free.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %free.i, align 4
  %tobool7.not.i = icmp eq ptr %5, null
  br i1 %tobool7.not.i, label %land.lhs.true5.i.cleanup_crit_edge, label %check_mgr_ops.exit

land.lhs.true5.i.cleanup_crit_edge:               ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

check_mgr_ops.exit:                               ; preds = %land.lhs.true5.i
  %destroy_poolmgr.i = getelementptr inbounds %struct.tee_shm_pool_mgr_ops, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %destroy_poolmgr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %destroy_poolmgr.i, align 4
  %tobool9.i = icmp eq ptr %7, null
  %tobool.not.i12 = icmp eq ptr %dmabuf_mgr, null
  %or.cond = or i1 %tobool.not.i12, %tobool9.i
  br i1 %or.cond, label %check_mgr_ops.exit.cleanup_crit_edge, label %land.lhs.true.i14

check_mgr_ops.exit.cleanup_crit_edge:             ; preds = %check_mgr_ops.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true.i14:                                ; preds = %check_mgr_ops.exit
  %8 = ptrtoint ptr %dmabuf_mgr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dmabuf_mgr, align 4
  %tobool1.not.i13 = icmp eq ptr %9, null
  br i1 %tobool1.not.i13, label %land.lhs.true.i14.cleanup_crit_edge, label %land.lhs.true2.i16

land.lhs.true.i14.cleanup_crit_edge:              ; preds = %land.lhs.true.i14
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true2.i16:                               ; preds = %land.lhs.true.i14
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool4.not.i15 = icmp eq ptr %11, null
  br i1 %tobool4.not.i15, label %land.lhs.true2.i16.cleanup_crit_edge, label %land.lhs.true5.i19

land.lhs.true2.i16.cleanup_crit_edge:             ; preds = %land.lhs.true2.i16
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true5.i19:                               ; preds = %land.lhs.true2.i16
  %free.i17 = getelementptr inbounds %struct.tee_shm_pool_mgr_ops, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %free.i17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %free.i17, align 4
  %tobool7.not.i18 = icmp eq ptr %13, null
  br i1 %tobool7.not.i18, label %land.lhs.true5.i19.cleanup_crit_edge, label %check_mgr_ops.exit23

land.lhs.true5.i19.cleanup_crit_edge:             ; preds = %land.lhs.true5.i19
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

check_mgr_ops.exit23:                             ; preds = %land.lhs.true5.i19
  %destroy_poolmgr.i20 = getelementptr inbounds %struct.tee_shm_pool_mgr_ops, ptr %9, i32 0, i32 2
  %14 = ptrtoint ptr %destroy_poolmgr.i20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %destroy_poolmgr.i20, align 4
  %tobool9.i21.not = icmp eq ptr %15, null
  br i1 %tobool9.i21.not, label %check_mgr_ops.exit23.cleanup_crit_edge, label %if.end

check_mgr_ops.exit23.cleanup_crit_edge:           ; preds = %check_mgr_ops.exit23
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %check_mgr_ops.exit23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 8) #6
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %17 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %priv_mgr, ptr %call7.i.i, align 8
  %dma_buf_mgr = getelementptr inbounds %struct.tee_shm_pool, ptr %call7.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %dma_buf_mgr to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dmabuf_mgr, ptr %dma_buf_mgr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %check_mgr_ops.exit23.cleanup_crit_edge, %land.lhs.true5.i19.cleanup_crit_edge, %land.lhs.true2.i16.cleanup_crit_edge, %land.lhs.true.i14.cleanup_crit_edge, %check_mgr_ops.exit.cleanup_crit_edge, %land.lhs.true5.i.cleanup_crit_edge, %land.lhs.true2.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end6 ], [ inttoptr (i32 -22 to ptr), %check_mgr_ops.exit23.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %check_mgr_ops.exit.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %land.lhs.true5.i.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %land.lhs.true2.i.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %land.lhs.true.i.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %land.lhs.true5.i19.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %land.lhs.true2.i16.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %land.lhs.true.i14.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gen_pool_create(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gen_pool_set_algo(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_best_fit(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gen_pool_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tee_shm_pool_free(ptr noundef %pool) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pool, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %destroy_poolmgr.i = getelementptr inbounds %struct.tee_shm_pool_mgr_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %destroy_poolmgr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %destroy_poolmgr.i, align 4
  tail call void %5(ptr noundef nonnull %1) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dma_buf_mgr = getelementptr inbounds %struct.tee_shm_pool, ptr %pool, i32 0, i32 1
  %6 = ptrtoint ptr %dma_buf_mgr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_buf_mgr, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %destroy_poolmgr.i11 = getelementptr inbounds %struct.tee_shm_pool_mgr_ops, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %destroy_poolmgr.i11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %destroy_poolmgr.i11, align 4
  tail call void %11(ptr noundef nonnull %7) #3
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  tail call void @kfree(ptr noundef %pool) #3
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_add_owner(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pool_op_gen_alloc(ptr nocapture noundef readonly %poolm, ptr nocapture noundef writeonly %shm, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.tee_shm_pool_mgr, ptr %poolm, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %min_alloc_order = getelementptr inbounds %struct.gen_pool, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %min_alloc_order to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %min_alloc_order, align 4
  %notmask = shl nsw i32 -1, %3
  %sub = xor i32 %notmask, -1
  %add = add i32 %sub, %size
  %mul = and i32 %add, %notmask
  %algo.i = getelementptr inbounds %struct.gen_pool, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %algo.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %algo.i, align 4
  %data.i = getelementptr inbounds %struct.gen_pool, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %call.i.i = tail call i32 @gen_pool_alloc_algo_owner(ptr noundef %1, i32 noundef %mul, ptr noundef %5, ptr noundef %7, ptr noundef null) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %8 = inttoptr i32 %call.i.i to ptr
  %9 = call ptr @memset(ptr %8, i32 0, i32 %mul)
  %kaddr = getelementptr inbounds %struct.tee_shm, ptr %shm, i32 0, i32 2
  %10 = ptrtoint ptr %kaddr to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %8, ptr %kaddr, align 8
  %call1 = tail call i32 @gen_pool_virt_to_phys(ptr noundef %1, i32 noundef %call.i.i) #3
  %paddr = getelementptr inbounds %struct.tee_shm, ptr %shm, i32 0, i32 1
  %11 = ptrtoint ptr %paddr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call1, ptr %paddr, align 4
  %size2 = getelementptr inbounds %struct.tee_shm, ptr %shm, i32 0, i32 3
  %12 = ptrtoint ptr %size2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %mul, ptr %size2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pool_op_gen_free(ptr nocapture noundef readonly %poolm, ptr nocapture noundef %shm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.tee_shm_pool_mgr, ptr %poolm, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %kaddr = getelementptr inbounds %struct.tee_shm, ptr %shm, i32 0, i32 2
  %2 = ptrtoint ptr %kaddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kaddr, align 8
  %4 = ptrtoint ptr %3 to i32
  %size = getelementptr inbounds %struct.tee_shm, ptr %shm, i32 0, i32 3
  %5 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size, align 4
  tail call void @gen_pool_free_owner(ptr noundef %1, i32 noundef %4, i32 noundef %6, ptr noundef null) #3
  %7 = ptrtoint ptr %kaddr to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %kaddr, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pool_op_gen_destroy_poolmgr(ptr noundef %poolm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.tee_shm_pool_mgr, ptr %poolm, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @gen_pool_destroy(ptr noundef %1) #3
  tail call void @kfree(ptr noundef %poolm) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_virt_to_phys(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_alloc_algo_owner(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gen_pool_free_owner(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @__ksymtab_tee_shm_pool_alloc_res_mem, !1, !"__ksymtab_tee_shm_pool_alloc_res_mem", i1 false, i1 false}
!1 = !{!"../drivers/tee/tee_shm_pool.c", i32 104, i32 1}
!2 = !{ptr @__ksymtab_tee_shm_pool_mgr_alloc_res_mem, !3, !"__ksymtab_tee_shm_pool_mgr_alloc_res_mem", i1 false, i1 false}
!3 = !{!"../drivers/tee/tee_shm_pool.c", i32 144, i32 1}
!4 = !{ptr @__ksymtab_tee_shm_pool_alloc, !5, !"__ksymtab_tee_shm_pool_alloc", i1 false, i1 false}
!5 = !{!"../drivers/tee/tee_shm_pool.c", i32 169, i32 1}
!6 = !{ptr @__ksymtab_tee_shm_pool_free, !7, !"__ksymtab_tee_shm_pool_free", i1 false, i1 false}
!7 = !{!"../drivers/tee/tee_shm_pool.c", i32 186, i32 1}
!8 = !{ptr @pool_ops_generic, !9, !"pool_ops_generic", i1 false, i1 false}
!9 = !{!"../drivers/tee/tee_shm_pool.c", i32 44, i32 42}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
