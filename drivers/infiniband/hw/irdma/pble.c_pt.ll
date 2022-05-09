; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/irdma/pble.c_pt.bc'
source_filename = "../drivers/infiniband/hw/irdma/pble.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.irdma_hmc_pble_rsrc = type { i32, %struct.mutex, ptr, i64, i64, %struct.irdma_pble_prm, i64, i64, i32, i32, i64, i64, i64, i64, i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.irdma_pble_prm = type { %struct.list_head, %struct.spinlock, i64, i64, i8 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.irdma_chunk = type { %struct.list_head, %struct.irdma_dma_info, ptr, i32, i64, ptr, i64, i32, i32, ptr, %struct.irdma_virt_mem }
%struct.irdma_dma_info = type { ptr }
%struct.irdma_virt_mem = type { ptr, i32 }
%struct.irdma_sc_dev = type { %struct.list_head, %struct.spinlock, [128 x i8], [32 x %struct.irdma_dma_mem], i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr], i32, [6 x i64], [6 x i64], [13 x i64], [33 x i64], [27 x i64], [51 x i64], %struct.irdma_hw_attrs, ptr, ptr, ptr, [1024 x ptr], ptr, ptr, %struct.irdma_hmc_fpm_misc, ptr, %struct.mutex, i16, i8, i8, i8, i8, ptr, ptr, ptr }
%struct.irdma_dma_mem = type { ptr, i32, i32 }
%struct.irdma_hw_attrs = type { %struct.irdma_uk_attrs, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.irdma_uk_attrs = type { i64, i32, i32, i32, i32, i32, i32, i32, i16, i8 }
%struct.irdma_hmc_fpm_misc = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.irdma_hmc_info = type { i32, i8, i16, ptr, %struct.irdma_virt_mem, %struct.irdma_hmc_sd_table, [8192 x i16] }
%struct.irdma_hmc_sd_table = type { %struct.irdma_virt_mem, i32, i32, ptr }
%struct.irdma_hmc_obj_info = type { i64, i32, i32, i64 }
%struct.irdma_add_page_info = type { ptr, ptr, ptr, %struct.sd_pd_idx, i32 }
%struct.sd_pd_idx = type { i32, i32, i32 }
%struct.irdma_hmc_sd_entry = type { i32, i8, %union.anon.127 }
%union.anon.127 = type { %struct.irdma_hmc_pd_table }
%struct.irdma_hmc_pd_table = type { %struct.irdma_dma_mem, ptr, %struct.irdma_virt_mem, i32, i32 }
%struct.irdma_hmc_pd_entry = type { %struct.irdma_hmc_bp, i32, i8 }
%struct.irdma_hmc_bp = type { i32, %struct.irdma_dma_mem, i32, i32 }
%struct.irdma_pble_alloc = type { i32, i32, %union.anon.150 }
%union.anon.150 = type { %struct.irdma_pble_level2 }
%struct.irdma_pble_level2 = type { %struct.irdma_pble_info, ptr, %struct.irdma_virt_mem, i32 }
%struct.irdma_pble_info = type { ptr, i32, i32, %struct.irdma_pble_chunkinfo }
%struct.irdma_pble_chunkinfo = type { ptr, i64, i64 }

@irdma_hmc_init_pble.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&pble_rsrc->pble_mutex_lock\00", [36 x i8] zeroinitializer }, align 32
@irdma_hmc_init_pble.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&pble_rsrc->pinfo.prm_lock\00", [37 x i8] zeroinitializer }, align 32
@add_pble_prm.__UNIQUE_ID_ddebug499 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, i8 0, i8 64, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"irdma\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"add_pble_prm\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/infiniband/hw/irdma/pble.c\00", [61 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"PBLE: pages = %d, unallocated_pble[%d] current_fpm_addr = %llx\0A\00", [32 x i8] zeroinitializer }, align 32
@add_pble_prm.__UNIQUE_ID_ddebug500 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, i8 0, i8 64, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"PBLE: sd_entry_type = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@add_pble_prm.__UNIQUE_ID_ddebug501 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.8, i8 0, i8 70, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"PBLE: next_fpm_addr = %llx chunk_size[%llu] = 0x%llx\0A\00", [42 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@add_sd_direct.__UNIQUE_ID_ddebug496 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.9, ptr @.str.5, ptr @.str.10, i8 0, i8 29, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"add_sd_direct\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"PBLE: chunk_size[%lld] = 0x%llx vaddr=0x%pK fpm_addr = %llx\0A\00", [35 x i8] zeroinitializer }, align 32
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 57, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 59, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 255, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 259, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 281, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.45 = private constant [38 x i8] c"../drivers/infiniband/hw/irdma/pble.c\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 114, i32 2 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @irdma_hmc_init_pble.__key, ptr @.str, ptr @irdma_hmc_init_pble.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irdma_hmc_init_pble.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irdma_hmc_init_pble.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irdma_destroy_pble_prm(ptr noundef %pble_rsrc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pinfo1 = getelementptr inbounds %struct.irdma_hmc_pble_rsrc, ptr %pble_rsrc, i32 0, i32 5
  %0 = ptrtoint ptr %pinfo1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pinfo1, align 4
  %cmp.i.not8 = icmp eq ptr %1, %pinfo1
  br i1 %cmp.i.not8, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %18, %if.end.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #6
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %type = getelementptr inbounds %struct.irdma_chunk, ptr %2, i32 0, i32 8
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp = icmp eq i32 %12, 2
  br i1 %cmp, label %if.then, label %list_del.exit.if.end_crit_edge

list_del.exit.if.end_crit_edge:                   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @irdma_pble_free_paged_mem(ptr noundef %2) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %list_del.exit.if.end_crit_edge
  %bitmapbuf = getelementptr inbounds %struct.irdma_chunk, ptr %2, i32 0, i32 2
  %13 = ptrtoint ptr %bitmapbuf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bitmapbuf, align 4
  tail call void @bitmap_free(ptr noundef %14) #6
  %chunkmem = getelementptr inbounds %struct.irdma_chunk, ptr %2, i32 0, i32 10
  %15 = ptrtoint ptr %chunkmem to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chunkmem, align 4
  tail call void @kfree(ptr noundef %16) #6
  %17 = ptrtoint ptr %pinfo1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %pinfo1, align 4
  %cmp.i.not = icmp eq ptr %18, %pinfo1
  br i1 %cmp.i.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_pble_free_paged_mem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irdma_hmc_init_pble(ptr noundef %dev, ptr noundef %pble_rsrc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hmc_info1 = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 26
  %0 = ptrtoint ptr %hmc_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hmc_info1, align 8
  %dev2 = getelementptr inbounds %struct.irdma_hmc_pble_rsrc, ptr %pble_rsrc, i32 0, i32 2
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %dev2, align 8
  %hmc_obj = getelementptr inbounds %struct.irdma_hmc_info, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %hmc_obj to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hmc_obj, align 4
  %arrayidx = getelementptr %struct.irdma_hmc_obj_info, ptr %4, i32 14
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %arrayidx, align 8
  %fpm_base_addr = getelementptr inbounds %struct.irdma_hmc_pble_rsrc, ptr %pble_rsrc, i32 0, i32 3
  %7 = ptrtoint ptr %fpm_base_addr to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %fpm_base_addr, align 8
  %and = and i64 %6, 4095
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %sub = sub nuw nsw i64 4096, %and
  %shr = lshr i64 %sub, 3
  %conv = trunc i64 %shr to i32
  %fpm_idx.0 = select i1 %tobool.not, i32 0, i32 %conv
  %8 = ptrtoint ptr %hmc_obj to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hmc_obj, align 4
  %cnt = getelementptr %struct.irdma_hmc_obj_info, ptr %9, i32 14, i32 2
  %10 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cnt, align 4
  %sub8 = sub i32 %11, %fpm_idx.0
  %12 = ptrtoint ptr %pble_rsrc to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub8, ptr %pble_rsrc, align 8
  %shl = shl nuw nsw i32 %fpm_idx.0, 3
  %conv10 = zext i32 %shl to i64
  %add = add i64 %6, %conv10
  %next_fpm_addr = getelementptr inbounds %struct.irdma_hmc_pble_rsrc, ptr %pble_rsrc, i32 0, i32 4
  %13 = ptrtoint ptr %next_fpm_addr to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %add, ptr %next_fpm_addr, align 8
  %pinfo = getelementptr inbounds %struct.irdma_hmc_pble_rsrc, ptr %pble_rsrc, i32 0, i32 5
  %pble_shift = getelementptr inbounds %struct.irdma_hmc_pble_rsrc, ptr %pble_rsrc, i32 0, i32 5, i32 4
  %14 = ptrtoint ptr %pble_shift to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 6, ptr %pble_shift, align 8
  %pble_mutex_lock = getelementptr inbounds %struct.irdma_hmc_pble_rsrc, ptr %pble_rsrc, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %pble_mutex_lock, ptr noundef nonnull @.str, ptr noundef nonnull @irdma_hmc_init_pble.__key) #6
  %prm_lock = getelementptr inbounds %struct.irdma_hmc_pble_rsrc, ptr %pble_rsrc, i32 0, i32 5, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %prm_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @irdma_hmc_init_pble.__key.1, i16 noundef signext 3) #6
  %15 = ptrtoint ptr %pinfo to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %pinfo, ptr %pinfo, align 4
  %prev.i = getelementptr inbounds %struct.irdma_hmc_pble_rsrc, ptr %pble_rsrc, i32 0, i32 5, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %pinfo, ptr %prev.i, align 4
  %call16 = tail call fastcc i32 @add_pble_prm(ptr noundef %pble_rsrc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %entry.if.end19_crit_edge, label %if.then18

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then18:                                        ; preds = %entry
  %17 = ptrtoint ptr %pinfo to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %pinfo, align 4
  %cmp.i.not8.i = icmp eq ptr %18, %pinfo
  br i1 %cmp.i.not8.i, label %if.then18.if.end19_crit_edge, label %if.then18.while.body.i_crit_edge

if.then18.while.body.i_crit_edge:                 ; preds = %if.then18
  br label %while.body.i

if.then18.if.end19_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.then18.while.body.i_crit_edge
  %19 = phi ptr [ %35, %if.end.i.while.body.i_crit_edge ], [ %18, %if.then18.while.body.i_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %19) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i.i, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %19, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %while.body.i.list_del.exit.i_crit_edge
  %26 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 256 to ptr), ptr %19, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %type.i = getelementptr inbounds %struct.irdma_chunk, ptr %19, i32 0, i32 8
  %28 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %cmp.i = icmp eq i32 %29, 2
  br i1 %cmp.i, label %if.then.i, label %list_del.exit.i.if.end.i_crit_edge

list_del.exit.i.if.end.i_crit_edge:               ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @irdma_pble_free_paged_mem(ptr noundef %19) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %list_del.exit.i.if.end.i_crit_edge
  %bitmapbuf.i = getelementptr inbounds %struct.irdma_chunk, ptr %19, i32 0, i32 2
  %30 = ptrtoint ptr %bitmapbuf.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bitmapbuf.i, align 4
  tail call void @bitmap_free(ptr noundef %31) #6
  %chunkmem.i = getelementptr inbounds %struct.irdma_chunk, ptr %19, i32 0, i32 10
  %32 = ptrtoint ptr %chunkmem.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %chunkmem.i, align 4
  tail call void @kfree(ptr noundef %33) #6
  %34 = ptrtoint ptr %pinfo to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %pinfo, align 4
  %cmp.i.not.i = icmp eq ptr %35, %pinfo
  br i1 %cmp.i.not.i, label %if.end.i.if.end19_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

if.end.i.if.end19_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.end19:                                         ; preds = %if.end.i.if.end19_crit_edge, %if.then18.if.end19_crit_edge, %entry.if.end19_crit_edge
  %status.0 = phi i32 [ 0, %entry.if.end19_crit_edge ], [ -9, %if.then18.if.end19_crit_edge ], [ -9, %if.end.i.if.end19_crit_edge ]
  ret i32 %status.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @add_pble_prm(ptr noundef %pble_rsrc) unnamed_addr #0 align 64 {
entry:
  %mem.i = alloca %struct.irdma_dma_mem, align 4
  %info = alloca %struct.irdma_add_page_info, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.irdma_hmc_pble_rsrc, ptr %pble_rsrc, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %info) #6
  %2 = getelementptr inbounds %struct.irdma_add_page_info, ptr %info, i32 0, i32 1
  %3 = getelementptr inbounds %struct.irdma_add_page_info, ptr %info, i32 0, i32 2
  %4 = getelementptr inbounds %struct.irdma_add_page_info, ptr %info, i32 0, i32 3
  %5 = getelementptr inbounds %struct.irdma_add_page_info, ptr %info, i32 0, i32 3, i32 1
  %6 = getelementptr inbounds %struct.irdma_add_page_info, ptr %info, i32 0, i32 3, i32 2
  %7 = getelementptr inbounds %struct.irdma_add_page_info, ptr %info, i32 0, i32 4
  %8 = ptrtoint ptr %pble_rsrc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pble_rsrc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %9)
  %cmp = icmp ult i32 %9, 512
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %next_fpm_addr = getelementptr inbounds %struct.irdma_hmc_pble_rsrc, ptr %pble_rsrc, i32 0, i32 4
  %10 = ptrtoint ptr %next_fpm_addr to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %next_fpm_addr, align 8
  %and = and i64 %11, 4095
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 72) #9
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %chunkmem11 = getelementptr inbounds %struct.irdma_chunk, ptr %call7.i.i, i32 0, i32 10
  %13 = ptrtoint ptr %chunkmem11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %chunkmem11, align 4
  %chunkmem.sroa.7.0.chunkmem11.sroa_idx = getelementptr inbounds %struct.irdma_chunk, ptr %call7.i.i, i32 0, i32 10, i32 1
  %14 = ptrtoint ptr %chunkmem.sroa.7.0.chunkmem11.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 72, ptr %chunkmem.sroa.7.0.chunkmem11.sroa_idx, align 8
  %hmc_info12 = getelementptr inbounds %struct.irdma_sc_dev, ptr %1, i32 0, i32 26
  %15 = ptrtoint ptr %hmc_info12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hmc_info12, align 8
  %dev13 = getelementptr inbounds %struct.irdma_chunk, ptr %call7.i.i, i32 0, i32 9
  %17 = ptrtoint ptr %dev13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %1, ptr %dev13, align 8
  %18 = ptrtoint ptr %next_fpm_addr to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %next_fpm_addr, align 8
  %fpm_addr = getelementptr inbounds %struct.irdma_chunk, ptr %call7.i.i, i32 0, i32 6
  %20 = ptrtoint ptr %fpm_addr to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %fpm_addr, align 8
  %conv.i = trunc i64 %19 to i32
  %div9.i = lshr i32 %conv.i, 21
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div9.i, ptr %4, align 4
  %div210.i = lshr i64 %19, 12
  %conv3.i = trunc i64 %div210.i to i32
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv3.i, ptr %5, align 4
  %rem.i = and i32 %conv3.i, 511
  %23 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %rem.i, ptr %6, align 4
  %sd_entry15 = getelementptr inbounds %struct.irdma_hmc_info, ptr %16, i32 0, i32 5, i32 3
  %24 = ptrtoint ptr %sd_entry15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sd_entry15, align 4
  %arrayidx = getelementptr %struct.irdma_hmc_sd_entry, ptr %25, i32 %div9.i
  %sub = sub nuw nsw i32 512, %rem.i
  %26 = ptrtoint ptr %pble_rsrc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pble_rsrc, align 8
  %shr = lshr i32 %27, 9
  %28 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %shr)
  %29 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call7.i.i, ptr %info, align 4
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %16, ptr %3, align 4
  %31 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %28, ptr %7, align 4
  %32 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %arrayidx, ptr %2, align 4
  %valid = getelementptr %struct.irdma_hmc_sd_entry, ptr %25, i32 %div9.i, i32 1
  %33 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %valid, align 4, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool28.not = icmp eq i8 %34, 0
  br i1 %tobool28.not, label %if.then29, label %if.else

if.then29:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %28)
  %cmp.i = icmp eq i32 %28, 512
  %35 = and i1 %tobool.not.i, %cmp.i
  %36 = select i1 %35, i32 2, i32 1
  br label %do.body

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx, align 4
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then29
  %sd_entry_type.0 = phi i32 [ %38, %if.else ], [ %36, %if.then29 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @add_pble_prm.__UNIQUE_ID_ddebug499, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_pble_prm, %if.then37)) #6
          to label %do.body42 [label %if.then37], !srcloc !32

if.then37:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call38 = tail call ptr @to_ibdev(ptr noundef %1) #6
  %39 = ptrtoint ptr %pble_rsrc to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pble_rsrc, align 8
  %41 = ptrtoint ptr %next_fpm_addr to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %next_fpm_addr, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @add_pble_prm.__UNIQUE_ID_ddebug499, ptr noundef %call38, ptr noundef nonnull @.str.6, i32 noundef %28, i32 noundef %40, i64 noundef %42) #6
  br label %do.body42

do.body42:                                        ; preds = %if.then37, %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @add_pble_prm.__UNIQUE_ID_ddebug500, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_pble_prm, %if.then54)) #6
          to label %do.end58 [label %if.then54], !srcloc !32

if.then54:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #8
  %call55 = tail call ptr @to_ibdev(ptr noundef %1) #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @add_pble_prm.__UNIQUE_ID_ddebug500, ptr noundef %call55, ptr noundef nonnull @.str.7, i32 noundef %sd_entry_type.0) #6
  br label %do.end58

do.end58:                                         ; preds = %if.then54, %do.body42
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sd_entry_type.0)
  %cmp59 = icmp eq i32 %sd_entry_type.0, 2
  br i1 %cmp59, label %if.then60, label %if.end66

if.then60:                                        ; preds = %do.end58
  %call61 = call fastcc i32 @add_sd_direct(ptr noundef %pble_rsrc, ptr noundef nonnull %info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %phi.cmp = icmp eq i32 %call61, 0
  br i1 %phi.cmp, label %if.end66.thread216, label %if.then60.if.then68_crit_edge

if.then60.if.then68_crit_edge:                    ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then68

if.end66.thread216:                               ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #8
  %stats_direct_sds217 = getelementptr inbounds %struct.irdma_hmc_pble_rsrc, ptr %pble_rsrc, i32 0, i32 8
  %43 = ptrtoint ptr %stats_direct_sds217 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %stats_direct_sds217, align 8
  %inc218 = add i32 %44, 1
  store i32 %inc218, ptr %stats_direct_sds217, align 8
  br label %if.end75

if.end66:                                         ; preds = %do.end58
  %stats_direct_sds = getelementptr inbounds %struct.irdma_hmc_pble_rsrc, ptr %pble_rsrc, i32 0, i32 8
  %45 = ptrtoint ptr %stats_direct_sds to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %stats_direct_sds, align 8
  %inc = add i32 %46, 1
  store i32 %inc, ptr %stats_direct_sds, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sd_entry_type.0)
  %cmp67 = icmp eq i32 %sd_entry_type.0, 1
  br i1 %cmp67, label %if.end66.if.then68_crit_edge, label %if.end66.if.end75_crit_edge

if.end66.if.end75_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end75

if.end66.if.then68_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then68

if.then68:                                        ; preds = %if.end66.if.then68_crit_edge, %if.then60.if.then68_crit_edge
  %47 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev1, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %mem.i) #6
  %49 = ptrtoint ptr %mem.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr inttoptr (i32 -1 to ptr), ptr %mem.i, align 4, !annotation !33
  %50 = getelementptr inbounds %struct.irdma_dma_mem, ptr %mem.i, i32 0, i32 1
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %50, align 4, !annotation !33
  %52 = getelementptr inbounds %struct.irdma_dma_mem, ptr %mem.i, i32 0, i32 2
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %52, align 4, !annotation !33
  %54 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %5, align 4
  %call.i = tail call i32 @irdma_pble_get_paged_mem(ptr noundef nonnull %call7.i.i, i32 noundef %28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i206 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i206, label %if.end.i, label %if.then68.add_bp_pages.exit.thread_crit_edge

if.then68.add_bp_pages.exit.thread_crit_edge:     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_bp_pages.exit.thread

if.end.i:                                         ; preds = %if.then68
  %hw.i = getelementptr inbounds %struct.irdma_sc_dev, ptr %48, i32 0, i32 8
  %56 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hw.i, align 8
  %call9.i = tail call i32 @irdma_add_sd_table_entry(ptr noundef %57, ptr noundef %16, i32 noundef %div9.i, i32 noundef 1, i64 noundef 2097152) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end.i.error.i_crit_edge

if.end.i.error.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %error.i

if.end12.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp54.not.i = icmp eq i32 %28, 0
  br i1 %cmp54.not.i, label %if.end12.i.if.else72_crit_edge, label %for.body.lr.ph.i

if.end12.i.if.else72_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else72

for.body.lr.ph.i:                                 ; preds = %if.end12.i
  %vaddr.i = getelementptr inbounds %struct.irdma_chunk, ptr %call7.i.i, i32 0, i32 5
  %58 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %vaddr.i, align 8
  %dmainfo.i = getelementptr inbounds %struct.irdma_chunk, ptr %call7.i.i, i32 0, i32 1
  %pd_entry15.i = getelementptr %struct.irdma_hmc_sd_entry, ptr %25, i32 %div9.i, i32 2, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.058.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc24.i, %for.inc.i.for.body.i_crit_edge ]
  %pd_idx.057.i = phi i32 [ %55, %for.body.lr.ph.i ], [ %pd_idx.1.i, %for.inc.i.for.body.i_crit_edge ]
  %rel_pd_idx.056.i = phi i32 [ %rem.i, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %addr.055.i = phi ptr [ %59, %for.body.lr.ph.i ], [ %addr.1.i, %for.inc.i.for.body.i_crit_edge ]
  %60 = ptrtoint ptr %dmainfo.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dmainfo.i, align 8
  %arrayidx.i = getelementptr i32, ptr %61, i32 %i.058.i
  %62 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx.i, align 4
  %64 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %50, align 4
  %65 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 4096, ptr %52, align 4
  %66 = ptrtoint ptr %mem.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %addr.055.i, ptr %mem.i, align 4
  %67 = ptrtoint ptr %pd_entry15.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pd_entry15.i, align 4
  %inc.i = add nuw nsw i32 %rel_pd_idx.056.i, 1
  %valid.i = getelementptr %struct.irdma_hmc_pd_entry, ptr %68, i32 %rel_pd_idx.056.i, i32 2
  %69 = ptrtoint ptr %valid.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %bf.load.i = load i8, ptr %valid.i, align 4
  %70 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %bf.cast.not.i = icmp eq i8 %70, 0
  br i1 %bf.cast.not.i, label %if.then17.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then17.i:                                      ; preds = %for.body.i
  %call19.i = call i32 @irdma_add_pd_table_entry(ptr noundef %48, ptr noundef %16, i32 noundef %pd_idx.057.i, ptr noundef nonnull %mem.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.end22.i, label %if.then17.i.error.i_crit_edge

if.then17.i.error.i_crit_edge:                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %error.i

if.end22.i:                                       ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc18.i = add i32 %pd_idx.057.i, 1
  %add.ptr.i = getelementptr i8, ptr %addr.055.i, i32 4096
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end22.i, %for.body.i.for.inc.i_crit_edge
  %addr.1.i = phi ptr [ %addr.055.i, %for.body.i.for.inc.i_crit_edge ], [ %add.ptr.i, %if.end22.i ]
  %pd_idx.1.i = phi i32 [ %pd_idx.057.i, %for.body.i.for.inc.i_crit_edge ], [ %inc18.i, %if.end22.i ]
  %inc24.i = add nuw nsw i32 %i.058.i, 1
  %exitcond.not = icmp eq i32 %inc24.i, %28
  br i1 %exitcond.not, label %for.inc.i.if.else72_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.if.else72_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else72

error.i:                                          ; preds = %if.then17.i.error.i_crit_edge, %if.end.i.error.i_crit_edge
  %status.0.i = phi i32 [ %call9.i, %if.end.i.error.i_crit_edge ], [ %call19.i, %if.then17.i.error.i_crit_edge ]
  call void @irdma_pble_free_paged_mem(ptr noundef nonnull %call7.i.i) #6
  br label %add_bp_pages.exit.thread

add_bp_pages.exit.thread:                         ; preds = %error.i, %if.then68.add_bp_pages.exit.thread_crit_edge
  %retval.0.i209.ph = phi i32 [ -9, %if.then68.add_bp_pages.exit.thread_crit_edge ], [ %status.0.i, %error.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mem.i) #6
  br label %error

if.else72:                                        ; preds = %for.inc.i.if.else72_crit_edge, %if.end12.i.if.else72_crit_edge
  %71 = ptrtoint ptr %next_fpm_addr to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %next_fpm_addr, align 8
  %73 = ptrtoint ptr %fpm_addr to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %72, ptr %fpm_addr, align 8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mem.i) #6
  %stats_paged_sds = getelementptr inbounds %struct.irdma_hmc_pble_rsrc, ptr %pble_rsrc, i32 0, i32 9
  %74 = ptrtoint ptr %stats_paged_sds to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %stats_paged_sds, align 4
  %inc73 = add i32 %75, 1
  store i32 %inc73, ptr %stats_paged_sds, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.else72, %if.end66.if.end75_crit_edge, %if.end66.thread216
  %cmp67214 = phi i1 [ true, %if.else72 ], [ false, %if.end66.if.end75_crit_edge ], [ false, %if.end66.thread216 ]
  %pinfo = getelementptr inbounds %struct.irdma_hmc_pble_rsrc, ptr %pble_rsrc, i32 0, i32 5
  %call76 = call i32 @irdma_prm_add_pble_mem(ptr noundef %pinfo, ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end79, label %if.end75.error_crit_edge

if.end75.error_crit_edge:                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end79:                                         ; preds = %if.end75
  %size80 = getelementptr inbounds %struct.irdma_chunk, ptr %call7.i.i, i32 0, i32 4
  %76 = ptrtoint ptr %size80 to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %size80, align 8
  %78 = ptrtoint ptr %next_fpm_addr to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %next_fpm_addr, align 8
  %add = add i64 %79, %77
  store i64 %add, ptr %next_fpm_addr, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @add_pble_prm.__UNIQUE_ID_ddebug501, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_pble_prm, %if.then94)) #6
          to label %do.end101 [label %if.then94], !srcloc !32

if.then94:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  %call95 = call ptr @to_ibdev(ptr noundef %1) #6
  %80 = ptrtoint ptr %next_fpm_addr to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %next_fpm_addr, align 8
  %82 = ptrtoint ptr %size80 to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %size80, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @add_pble_prm.__UNIQUE_ID_ddebug501, ptr noundef %call95, ptr noundef nonnull @.str.8, i64 noundef %81, i64 noundef %83, i64 noundef %83) #6
  br label %do.end101

do.end101:                                        ; preds = %if.then94, %if.end79
  %84 = ptrtoint ptr %size80 to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %size80, align 8
  %shr103 = lshr i64 %85, 3
  %conv = trunc i64 %shr103 to i32
  %86 = ptrtoint ptr %pble_rsrc to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %pble_rsrc, align 8
  %sub105 = sub i32 %87, %conv
  store i32 %sub105, ptr %pble_rsrc, align 8
  %88 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %valid, align 4, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool116.not = icmp eq i8 %89, 0
  br i1 %tobool116.not, label %if.then117, label %do.end101.if.end124_crit_edge

do.end101.if.end124_crit_edge:                    ; preds = %do.end101
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end124

if.then117:                                       ; preds = %do.end101
  %pa = getelementptr %struct.irdma_hmc_sd_entry, ptr %25, i32 %div9.i, i32 2, i32 0, i32 0, i32 1
  %pa111 = getelementptr %struct.irdma_hmc_sd_entry, ptr %25, i32 %div9.i, i32 2, i32 0, i32 0, i32 2
  %cond113.in = select i1 %cmp67214, ptr %pa, ptr %pa111
  %90 = ptrtoint ptr %cond113.in to i32
  call void @__asan_load4_noabort(i32 %90)
  %cond113 = load i32, ptr %cond113.in, align 4
  %conv114 = zext i32 %cond113 to i64
  %hmc_fn_id = getelementptr inbounds %struct.irdma_hmc_info, ptr %16, i32 0, i32 1
  %91 = ptrtoint ptr %hmc_fn_id to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %hmc_fn_id, align 4
  %93 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx, align 4
  %call120 = call i32 @irdma_hmc_sd_one(ptr noundef %1, i8 noundef zeroext %92, i64 noundef %conv114, i32 noundef %div9.i, i32 noundef %94, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %if.then117.if.end124_crit_edge, label %if.then117.error_crit_edge

if.then117.error_crit_edge:                       ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.then117.if.end124_crit_edge:                   ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end124

if.end124:                                        ; preds = %if.then117.if.end124_crit_edge, %do.end101.if.end124_crit_edge
  %95 = ptrtoint ptr %pinfo to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %pinfo, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %pinfo, ptr noundef %96) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end124.list_add.exit_crit_edge

if.end124.list_add.exit_crit_edge:                ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %call7.i.i, ptr %prev1.i.i, align 4
  %98 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %96, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %99 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %pinfo, ptr %prev3.i.i, align 4
  %100 = ptrtoint ptr %pinfo to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile ptr %call7.i.i, ptr %pinfo, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end124.list_add.exit_crit_edge
  %101 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 1, ptr %valid, align 4
  br label %cleanup

error:                                            ; preds = %if.then117.error_crit_edge, %if.end75.error_crit_edge, %add_bp_pages.exit.thread
  %ret_code.1 = phi i32 [ %call76, %if.end75.error_crit_edge ], [ %call120, %if.then117.error_crit_edge ], [ %retval.0.i209.ph, %add_bp_pages.exit.thread ]
  %bitmapbuf = getelementptr inbounds %struct.irdma_chunk, ptr %call7.i.i, i32 0, i32 2
  %102 = ptrtoint ptr %bitmapbuf to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %bitmapbuf, align 4
  call void @bitmap_free(ptr noundef %103) #6
  %104 = ptrtoint ptr %chunkmem11 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %chunkmem11, align 4
  call void @kfree(ptr noundef %105) #6
  br label %cleanup

cleanup:                                          ; preds = %error, %list_add.exit, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret_code.1, %error ], [ 0, %list_add.exit ], [ -9, %entry.cleanup_crit_edge ], [ -36, %if.end.cleanup_crit_edge ], [ -9, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %info) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irdma_get_pble(ptr noundef %pble_rsrc, ptr noundef %palloc, i32 noundef %pble_cnt, i1 noundef zeroext %level1_only) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %palloc to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %pble_cnt, ptr %palloc, align 8
  %level = getelementptr inbounds %struct.irdma_pble_alloc, ptr %palloc, i32 0, i32 1
  %1 = ptrtoint ptr %level to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %level, align 4
  %pble_mutex_lock = getelementptr inbounds %struct.irdma_hmc_pble_rsrc, ptr %pble_rsrc, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %pble_mutex_lock, i32 noundef 0) #6
  %call = tail call fastcc i32 @get_lvl1_lvl2_pble(ptr noundef %pble_rsrc, ptr noundef %palloc, i1 noundef zeroext %level1_only)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %entry.if.then14_crit_edge, label %if.end

entry.if.then14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %palloc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %palloc, align 8
  %shr = lshr i32 %3, 18
  br label %for.body

for.cond:                                         ; preds = %if.end6
  %inc = add nuw nsw i32 %i.047, 1
  %exitcond = icmp eq i32 %i.047, %shr
  br i1 %exitcond, label %for.cond.if.else_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond.if.else_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end
  %i.047 = phi i32 [ 0, %if.end ], [ %inc, %for.cond.for.body_crit_edge ]
  %call3 = tail call fastcc i32 @add_pble_prm(ptr noundef %pble_rsrc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %for.body.if.else_crit_edge

for.body.if.else_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.end6:                                          ; preds = %for.body
  %call8 = tail call fastcc i32 @get_lvl1_lvl2_pble(ptr noundef %pble_rsrc, ptr noundef %palloc, i1 noundef zeroext %level1_only)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  %brmerge = or i1 %tobool9.not, %level1_only
  br i1 %brmerge, label %exit, label %for.cond

exit:                                             ; preds = %if.end6
  br i1 %tobool9.not, label %exit.if.then14_crit_edge, label %exit.if.else_crit_edge

exit.if.else_crit_edge:                           ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

exit.if.then14_crit_edge:                         ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14

if.then14:                                        ; preds = %exit.if.then14_crit_edge, %entry.if.then14_crit_edge
  %conv = zext i32 %pble_cnt to i64
  %allocdpbles = getelementptr inbounds %struct.irdma_hmc_pble_rsrc, ptr %pble_rsrc, i32 0, i32 6
  %4 = ptrtoint ptr %allocdpbles to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %allocdpbles, align 8
  %add15 = add i64 %5, %conv
  store i64 %add15, ptr %allocdpbles, align 8
  %stats_alloc_ok = getelementptr inbounds %struct.irdma_hmc_pble_rsrc, ptr %pble_rsrc, i32 0, i32 10
  br label %if.end18

if.else:                                          ; preds = %exit.if.else_crit_edge, %for.body.if.else_crit_edge, %for.cond.if.else_crit_edge
  %status.142 = phi i32 [ %call8, %exit.if.else_crit_edge ], [ %call3, %for.body.if.else_crit_edge ], [ %call8, %for.cond.if.else_crit_edge ]
  %stats_alloc_fail = getelementptr inbounds %struct.irdma_hmc_pble_rsrc, ptr %pble_rsrc, i32 0, i32 11
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then14
  %stats_alloc_fail.sink48 = phi ptr [ %stats_alloc_fail, %if.else ], [ %stats_alloc_ok, %if.then14 ]
  %status.141 = phi i32 [ %status.142, %if.else ], [ 0, %if.then14 ]
  %6 = ptrtoint ptr %stats_alloc_fail.sink48 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %stats_alloc_fail.sink48, align 8
  %inc17 = add i64 %7, 1
  store i64 %inc17, ptr %stats_alloc_fail.sink48, align 8
  tail call void @mutex_unlock(ptr noundef %pble_mutex_lock) #6
  ret i32 %status.141
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_lvl1_lvl2_pble(ptr noundef %pble_rsrc, ptr noundef %palloc, i1 noundef zeroext %level1_only) unnamed_addr #0 align 64 {
entry:
  %fpm_addr.i9 = alloca i64, align 8
  %fpm_addr.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fpm_addr.i) #6
  %0 = ptrtoint ptr %fpm_addr.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %fpm_addr.i, align 8, !annotation !33
  %1 = getelementptr inbounds %struct.irdma_pble_alloc, ptr %palloc, i32 0, i32 2
  %pinfo.i = getelementptr inbounds %struct.irdma_hmc_pble_rsrc, ptr %pble_rsrc, i32 0, i32 5
  %chunkinfo.i = getelementptr inbounds %struct.irdma_pble_alloc, ptr %palloc, i32 0, i32 2, i32 0, i32 0, i32 3
  %2 = ptrtoint ptr %palloc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %palloc, align 8
  %shl.i = shl i32 %3, 3
  %conv.i = zext i32 %shl.i to i64
  %call.i = call i32 @irdma_prm_get_pbles(ptr noundef %pinfo.i, ptr noundef %chunkinfo.i, i64 noundef %conv.i, ptr noundef %1, ptr noundef nonnull %fpm_addr.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %get_lvl1_pble.exit.thread, label %get_lvl1_pble.exit

get_lvl1_pble.exit.thread:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %level.i = getelementptr inbounds %struct.irdma_pble_alloc, ptr %palloc, i32 0, i32 1
  %4 = ptrtoint ptr %level.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %level.i, align 4
  %5 = ptrtoint ptr %fpm_addr.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %fpm_addr.i, align 8
  %fpm_base_addr.i.i = getelementptr inbounds %struct.irdma_hmc_pble_rsrc, ptr %pble_rsrc, i32 0, i32 3
  %7 = ptrtoint ptr %fpm_base_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %fpm_base_addr.i.i, align 8
  %sub.i.i = sub i64 %6, %8
  %shr.i.i = lshr i64 %sub.i.i, 3
  %conv.i.i = trunc i64 %shr.i.i to i32
  %idx.i = getelementptr inbounds %struct.irdma_pble_alloc, ptr %palloc, i32 0, i32 2, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %idx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv.i.i, ptr %idx.i, align 4
  %10 = ptrtoint ptr %palloc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %palloc, align 8
  %cnt.i = getelementptr inbounds %struct.irdma_pble_alloc, ptr %palloc, i32 0, i32 2, i32 0, i32 0, i32 2
  %12 = ptrtoint ptr %cnt.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %cnt.i, align 8
  %stats_lvl1.i = getelementptr inbounds %struct.irdma_hmc_pble_rsrc, ptr %pble_rsrc, i32 0, i32 13
  %13 = ptrtoint ptr %stats_lvl1.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %stats_lvl1.i, align 8
  %inc.i = add i64 %14, 1
  store i64 %inc.i, ptr %stats_lvl1.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fpm_addr.i) #6
  br label %cleanup

get_lvl1_pble.exit:                               ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fpm_addr.i) #6
  br i1 %level1_only, label %get_lvl1_pble.exit.cleanup_crit_edge, label %lor.lhs.false2

get_lvl1_pble.exit.cleanup_crit_edge:             ; preds = %get_lvl1_pble.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false2:                                   ; preds = %get_lvl1_pble.exit
  %15 = ptrtoint ptr %palloc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %palloc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 513, i32 %16)
  %cmp = icmp ult i32 %16, 513
  br i1 %cmp, label %lor.lhs.false2.cleanup_crit_edge, label %if.end

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fpm_addr.i9) #6
  %17 = ptrtoint ptr %fpm_addr.i9 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 -1, ptr %fpm_addr.i9, align 8, !annotation !33
  %shr.i = lshr i32 %16, 9
  %rem.i = and i32 %16, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp.i = icmp ne i32 %rem.i, 0
  %add.i = zext i1 %cmp.i to i32
  %cond.i = add nuw nsw i32 %shr.i, %add.i
  %leaf_cnt.i = getelementptr inbounds %struct.irdma_pble_alloc, ptr %palloc, i32 0, i32 2, i32 0, i32 3
  %18 = ptrtoint ptr %leaf_cnt.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %cond.i, ptr %leaf_cnt.i, align 4
  %mul.i = mul nuw nsw i32 %cond.i, 40
  %leafmem.i = getelementptr inbounds %struct.irdma_pble_alloc, ptr %palloc, i32 0, i32 2, i32 0, i32 2
  %size.i = getelementptr inbounds %struct.irdma_pble_alloc, ptr %palloc, i32 0, i32 2, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mul.i, ptr %size.i, align 4
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i, i32 noundef 3520) #10
  %20 = ptrtoint ptr %leafmem.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call9.i.i.i, ptr %leafmem.i, align 4
  %tobool.not.i10 = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i10, label %if.end.get_lvl2_pble.exit_crit_edge, label %if.end.i15

if.end.get_lvl2_pble.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_lvl2_pble.exit

if.end.i15:                                       ; preds = %if.end
  %leaf10.i = getelementptr inbounds %struct.irdma_pble_alloc, ptr %palloc, i32 0, i32 2, i32 0, i32 1
  %21 = ptrtoint ptr %leaf10.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call9.i.i.i, ptr %leaf10.i, align 8
  %shl.i13 = shl nuw nsw i32 %cond.i, 3
  %conv.i14 = zext i32 %shl.i13 to i64
  %call13.i = call i32 @irdma_prm_get_pbles(ptr noundef %pinfo.i, ptr noundef %chunkinfo.i, i64 noundef %conv.i14, ptr noundef %1, ptr noundef nonnull %fpm_addr.i9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %for.body.lr.ph.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %leafmem.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %leafmem.i, align 4
  call void @kfree(ptr noundef %23) #6
  %24 = ptrtoint ptr %leaf10.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %leaf10.i, align 8
  br label %get_lvl2_pble.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i15
  %25 = ptrtoint ptr %fpm_addr.i9 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %fpm_addr.i9, align 8
  %fpm_base_addr.i.i16 = getelementptr inbounds %struct.irdma_hmc_pble_rsrc, ptr %pble_rsrc, i32 0, i32 3
  %27 = ptrtoint ptr %fpm_base_addr.i.i16 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %fpm_base_addr.i.i16, align 8
  %sub.i.i17 = sub i64 %26, %28
  %shr.i.i18 = lshr i64 %sub.i.i17, 3
  %conv.i.i19 = trunc i64 %shr.i.i18 to i32
  %idx.i20 = getelementptr inbounds %struct.irdma_pble_alloc, ptr %palloc, i32 0, i32 2, i32 0, i32 0, i32 1
  %29 = ptrtoint ptr %idx.i20 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv.i.i19, ptr %idx.i20, align 4
  %cnt.i21 = getelementptr inbounds %struct.irdma_pble_alloc, ptr %palloc, i32 0, i32 2, i32 0, i32 0, i32 2
  %30 = ptrtoint ptr %cnt.i21 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %cond.i, ptr %cnt.i21, align 8
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %if.end40.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %leaf.0109.i = phi ptr [ %call9.i.i.i, %for.body.lr.ph.i ], [ %incdec.ptr46.i, %if.end40.i.for.body.i_crit_edge ]
  %addr.0108.i = phi ptr [ %32, %for.body.lr.ph.i ], [ %incdec.ptr.i, %if.end40.i.for.body.i_crit_edge ]
  %i.0107.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add25.i, %if.end40.i.for.body.i_crit_edge ]
  %add25.i = add nuw nsw i32 %i.0107.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add25.i, i32 %cond.i)
  %cmp26.i = icmp eq i32 %add25.i, %cond.i
  %or.cond.i = select i1 %cmp.i, i1 %cmp26.i, i1 false
  %cond31.i = select i1 %or.cond.i, i32 %rem.i, i32 512
  %chunkinfo33.i = getelementptr inbounds %struct.irdma_pble_info, ptr %leaf.0109.i, i32 0, i32 3
  %shl34.i = shl nuw nsw i32 %cond31.i, 3
  %conv35.i = zext i32 %shl34.i to i64
  %call37.i = call i32 @irdma_prm_get_pbles(ptr noundef %pinfo.i, ptr noundef %chunkinfo33.i, i64 noundef %conv35.i, ptr noundef %leaf.0109.i, ptr noundef nonnull %fpm_addr.i9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %if.end40.i, label %error.i

if.end40.i:                                       ; preds = %for.body.i
  %33 = ptrtoint ptr %fpm_addr.i9 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %fpm_addr.i9, align 8
  %35 = ptrtoint ptr %fpm_base_addr.i.i16 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %fpm_base_addr.i.i16, align 8
  %sub.i100.i = sub i64 %34, %36
  %shr.i101.i = lshr i64 %sub.i100.i, 3
  %conv.i102.i = trunc i64 %shr.i101.i to i32
  %idx42.i = getelementptr inbounds %struct.irdma_pble_info, ptr %leaf.0109.i, i32 0, i32 1
  %37 = ptrtoint ptr %idx42.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv.i102.i, ptr %idx42.i, align 4
  %cnt43.i = getelementptr inbounds %struct.irdma_pble_info, ptr %leaf.0109.i, i32 0, i32 2
  %38 = ptrtoint ptr %cnt43.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %cond31.i, ptr %cnt43.i, align 8
  %conv45.i = and i64 %shr.i101.i, 4294967295
  %39 = ptrtoint ptr %addr.0108.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %conv45.i, ptr %addr.0108.i, align 8
  %incdec.ptr.i = getelementptr i64, ptr %addr.0108.i, i32 1
  %incdec.ptr46.i = getelementptr %struct.irdma_pble_info, ptr %leaf.0109.i, i32 1
  br i1 %cmp26.i, label %for.end.i, label %if.end40.i.for.body.i_crit_edge

if.end40.i.for.body.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  %level.i22 = getelementptr inbounds %struct.irdma_pble_alloc, ptr %palloc, i32 0, i32 1
  %40 = ptrtoint ptr %level.i22 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 2, ptr %level.i22, align 4
  %stats_lvl2.i = getelementptr inbounds %struct.irdma_hmc_pble_rsrc, ptr %pble_rsrc, i32 0, i32 14
  %41 = ptrtoint ptr %stats_lvl2.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %stats_lvl2.i, align 8
  %inc47.i = add i64 %42, 1
  store i64 %inc47.i, ptr %stats_lvl2.i, align 8
  br label %get_lvl2_pble.exit

error.i:                                          ; preds = %for.body.i
  %43 = ptrtoint ptr %leaf_cnt.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %leaf_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp19.not.i.i = icmp eq i32 %44, 0
  br i1 %cmp19.not.i.i, label %error.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

error.i.for.end.i.i_crit_edge:                    ; preds = %error.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %error.i
  %45 = ptrtoint ptr %leaf10.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %leaf10.i, align 8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.then.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %leaf.021.i.i = phi ptr [ %46, %for.body.lr.ph.i.i ], [ %incdec.ptr.i.i, %if.then.i.i.for.body.i.i_crit_edge ]
  %i.020.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %if.then.i.i.for.body.i.i_crit_edge ]
  %47 = ptrtoint ptr %leaf.021.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %leaf.021.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %48, null
  br i1 %tobool.not.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %if.then.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  %chunkinfo.i.i = getelementptr inbounds %struct.irdma_pble_info, ptr %leaf.021.i.i, i32 0, i32 3
  call void @irdma_prm_return_pbles(ptr noundef %pinfo.i, ptr noundef %chunkinfo.i.i) #6
  %inc.i.i = add nuw i32 %i.020.i.i, 1
  %incdec.ptr.i.i = getelementptr %struct.irdma_pble_info, ptr %leaf.021.i.i, i32 1
  %49 = ptrtoint ptr %leaf_cnt.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %leaf_cnt.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %50
  br i1 %cmp.i.i, label %if.then.i.i.for.body.i.i_crit_edge, label %if.then.i.i.for.end.i.i_crit_edge

if.then.i.i.for.end.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

if.then.i.i.for.body.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %if.then.i.i.for.end.i.i_crit_edge, %for.body.i.i.for.end.i.i_crit_edge, %error.i.for.end.i.i_crit_edge
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 8
  %tobool4.not.i.i = icmp eq ptr %52, null
  br i1 %tobool4.not.i.i, label %for.end.i.i.free_lvl2.exit.i_crit_edge, label %if.then5.i.i

for.end.i.i.free_lvl2.exit.i_crit_edge:           ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_lvl2.exit.i

if.then5.i.i:                                     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @irdma_prm_return_pbles(ptr noundef %pinfo.i, ptr noundef %chunkinfo.i) #6
  br label %free_lvl2.exit.i

free_lvl2.exit.i:                                 ; preds = %if.then5.i.i, %for.end.i.i.free_lvl2.exit.i_crit_edge
  %53 = ptrtoint ptr %leafmem.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %leafmem.i, align 4
  call void @kfree(ptr noundef %54) #6
  %55 = ptrtoint ptr %leaf10.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %leaf10.i, align 8
  br label %get_lvl2_pble.exit

get_lvl2_pble.exit:                               ; preds = %free_lvl2.exit.i, %for.end.i, %if.then15.i, %if.end.get_lvl2_pble.exit_crit_edge
  %retval.0.i23 = phi i32 [ -9, %if.then15.i ], [ -9, %free_lvl2.exit.i ], [ 0, %for.end.i ], [ -9, %if.end.get_lvl2_pble.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fpm_addr.i9) #6
  br label %cleanup

cleanup:                                          ; preds = %get_lvl2_pble.exit, %lor.lhs.false2.cleanup_crit_edge, %get_lvl1_pble.exit.cleanup_crit_edge, %get_lvl1_pble.exit.thread
  %retval.0 = phi i32 [ %retval.0.i23, %get_lvl2_pble.exit ], [ -9, %get_lvl1_pble.exit.cleanup_crit_edge ], [ -9, %lor.lhs.false2.cleanup_crit_edge ], [ 0, %get_lvl1_pble.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irdma_free_pble(ptr noundef %pble_rsrc, ptr noundef %palloc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %palloc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %palloc, align 8
  %conv = zext i32 %1 to i64
  %freedpbles = getelementptr inbounds %struct.irdma_hmc_pble_rsrc, ptr %pble_rsrc, i32 0, i32 7
  %2 = ptrtoint ptr %freedpbles to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %freedpbles, align 8
  %add = add i64 %3, %conv
  store i64 %add, ptr %freedpbles, align 8
  %level = getelementptr inbounds %struct.irdma_pble_alloc, ptr %palloc, i32 0, i32 1
  %4 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp eq i32 %5, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = getelementptr inbounds %struct.irdma_pble_alloc, ptr %palloc, i32 0, i32 2
  %leaf2.i = getelementptr inbounds %struct.irdma_pble_alloc, ptr %palloc, i32 0, i32 2, i32 0, i32 1
  %leaf_cnt.i = getelementptr inbounds %struct.irdma_pble_alloc, ptr %palloc, i32 0, i32 2, i32 0, i32 3
  %7 = ptrtoint ptr %leaf_cnt.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %leaf_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp19.not.i = icmp eq i32 %8, 0
  br i1 %cmp19.not.i, label %if.then.for.end.i_crit_edge, label %for.body.lr.ph.i

if.then.for.end.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.then
  %9 = ptrtoint ptr %leaf2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %leaf2.i, align 8
  %pinfo.i = getelementptr inbounds %struct.irdma_hmc_pble_rsrc, ptr %pble_rsrc, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %if.then.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %leaf.021.i = phi ptr [ %10, %for.body.lr.ph.i ], [ %incdec.ptr.i, %if.then.i.for.body.i_crit_edge ]
  %i.020.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.then.i.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %leaf.021.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %leaf.021.i, align 8
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %for.body.i.for.end.i_crit_edge, label %if.then.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

if.then.i:                                        ; preds = %for.body.i
  %chunkinfo.i = getelementptr inbounds %struct.irdma_pble_info, ptr %leaf.021.i, i32 0, i32 3
  tail call void @irdma_prm_return_pbles(ptr noundef %pinfo.i, ptr noundef %chunkinfo.i) #6
  %inc.i = add nuw i32 %i.020.i, 1
  %incdec.ptr.i = getelementptr %struct.irdma_pble_info, ptr %leaf.021.i, i32 1
  %13 = ptrtoint ptr %leaf_cnt.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %leaf_cnt.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %14
  br i1 %cmp.i, label %if.then.i.for.body.i_crit_edge, label %if.then.i.for.end.i_crit_edge

if.then.i.for.end.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

if.then.i.for.body.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %if.then.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge, %if.then.for.end.i_crit_edge
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %6, align 8
  %tobool4.not.i = icmp eq ptr %16, null
  br i1 %tobool4.not.i, label %for.end.i.free_lvl2.exit_crit_edge, label %if.then5.i

for.end.i.free_lvl2.exit_crit_edge:               ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_lvl2.exit

if.then5.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %pinfo6.i = getelementptr inbounds %struct.irdma_hmc_pble_rsrc, ptr %pble_rsrc, i32 0, i32 5
  %chunkinfo7.i = getelementptr inbounds %struct.irdma_pble_alloc, ptr %palloc, i32 0, i32 2, i32 0, i32 0, i32 3
  tail call void @irdma_prm_return_pbles(ptr noundef %pinfo6.i, ptr noundef %chunkinfo7.i) #6
  br label %free_lvl2.exit

free_lvl2.exit:                                   ; preds = %if.then5.i, %for.end.i.free_lvl2.exit_crit_edge
  %leafmem.i = getelementptr inbounds %struct.irdma_pble_alloc, ptr %palloc, i32 0, i32 2, i32 0, i32 2
  %17 = ptrtoint ptr %leafmem.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %leafmem.i, align 4
  tail call void @kfree(ptr noundef %18) #6
  %19 = ptrtoint ptr %leaf2.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %leaf2.i, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pinfo = getelementptr inbounds %struct.irdma_hmc_pble_rsrc, ptr %pble_rsrc, i32 0, i32 5
  %chunkinfo = getelementptr inbounds %struct.irdma_pble_alloc, ptr %palloc, i32 0, i32 2, i32 0, i32 0, i32 3
  tail call void @irdma_prm_return_pbles(ptr noundef %pinfo, ptr noundef %chunkinfo) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %free_lvl2.exit
  %stats_alloc_freed = getelementptr inbounds %struct.irdma_hmc_pble_rsrc, ptr %pble_rsrc, i32 0, i32 12
  %20 = ptrtoint ptr %stats_alloc_freed to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %stats_alloc_freed, align 8
  %inc = add i64 %21, 1
  store i64 %inc, ptr %stats_alloc_freed, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_prm_return_pbles(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_ibdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @to_ibdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @add_sd_direct(ptr nocapture noundef readonly %pble_rsrc, ptr nocapture noundef readonly %info) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.irdma_hmc_pble_rsrc, ptr %pble_rsrc, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %sd_entry5 = getelementptr inbounds %struct.irdma_add_page_info, ptr %info, i32 0, i32 1
  %4 = ptrtoint ptr %sd_entry5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sd_entry5, align 4
  %valid = getelementptr inbounds %struct.irdma_hmc_sd_entry, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %valid, align 4, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then:                                          ; preds = %entry
  %idx2 = getelementptr inbounds %struct.irdma_add_page_info, ptr %info, i32 0, i32 3
  %hmc_info4 = getelementptr inbounds %struct.irdma_add_page_info, ptr %info, i32 0, i32 2
  %8 = ptrtoint ptr %hmc_info4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hmc_info4, align 4
  %hw = getelementptr inbounds %struct.irdma_sc_dev, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 8
  %12 = ptrtoint ptr %idx2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %idx2, align 4
  %call = tail call i32 @irdma_add_sd_table_entry(ptr noundef %11, ptr noundef %9, i32 noundef %13, i32 noundef 2, i64 noundef 2097152) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %type = getelementptr inbounds %struct.irdma_chunk, ptr %3, i32 0, i32 8
  %14 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %type, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end, %entry.if.end9_crit_edge
  %rel_pd_idx = getelementptr inbounds %struct.irdma_add_page_info, ptr %info, i32 0, i32 3, i32 2
  %15 = ptrtoint ptr %rel_pd_idx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rel_pd_idx, align 4
  %shl = shl i32 %16, 12
  %pages = getelementptr inbounds %struct.irdma_add_page_info, ptr %info, i32 0, i32 4
  %17 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pages, align 4
  %shl10 = shl i32 %18, 12
  %conv = zext i32 %shl10 to i64
  %size = getelementptr inbounds %struct.irdma_chunk, ptr %3, i32 0, i32 4
  %19 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %conv, ptr %size, align 8
  %addr = getelementptr inbounds %struct.irdma_hmc_sd_entry, ptr %5, i32 0, i32 2, i32 0, i32 0, i32 1
  %20 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %addr, align 4
  %add.ptr = getelementptr i8, ptr %21, i32 %shl
  %vaddr = getelementptr inbounds %struct.irdma_chunk, ptr %3, i32 0, i32 5
  %22 = ptrtoint ptr %vaddr to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr, ptr %vaddr, align 8
  %next_fpm_addr = getelementptr inbounds %struct.irdma_hmc_pble_rsrc, ptr %pble_rsrc, i32 0, i32 4
  %23 = ptrtoint ptr %next_fpm_addr to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %next_fpm_addr, align 8
  %fpm_addr = getelementptr inbounds %struct.irdma_chunk, ptr %3, i32 0, i32 6
  %25 = ptrtoint ptr %fpm_addr to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %fpm_addr, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @add_sd_direct.__UNIQUE_ID_ddebug496, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_sd_direct, %if.then15)) #6
          to label %cleanup [label %if.then15], !srcloc !32

if.then15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %call16 = tail call ptr @to_ibdev(ptr noundef %1) #6
  %26 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %size, align 8
  %28 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vaddr, align 8
  %30 = ptrtoint ptr %fpm_addr to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %fpm_addr, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @add_sd_direct.__UNIQUE_ID_ddebug496, ptr noundef %call16, ptr noundef nonnull @.str.10, i64 noundef %27, i64 noundef %27, ptr noundef %29, i64 noundef %31) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end9, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then.cleanup_crit_edge ], [ 0, %if.then15 ], [ 0, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_prm_add_pble_mem(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_hmc_sd_one(ptr noundef, i8 noundef zeroext, i64 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_add_sd_table_entry(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_pble_get_paged_mem(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_add_pd_table_entry(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_prm_get_pbles(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !10, !11, !12, !14, !15, !17, !18, !20, !21}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @irdma_hmc_init_pble.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/irdma/pble.c", i32 57, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @irdma_hmc_init_pble.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/infiniband/hw/irdma/pble.c", i32 59, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/infiniband/hw/irdma/pble.c", i32 255, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @add_pble_prm.__UNIQUE_ID_ddebug499, !7, !"__UNIQUE_ID_ddebug499", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/infiniband/hw/irdma/pble.c", i32 259, i32 2}
!14 = !{ptr @add_pble_prm.__UNIQUE_ID_ddebug500, !13, !"__UNIQUE_ID_ddebug500", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/infiniband/hw/irdma/pble.c", i32 281, i32 2}
!17 = !{ptr @add_pble_prm.__UNIQUE_ID_ddebug501, !16, !"__UNIQUE_ID_ddebug501", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/infiniband/hw/irdma/pble.c", i32 114, i32 2}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @add_sd_direct.__UNIQUE_ID_ddebug496, !19, !"__UNIQUE_ID_ddebug496", i1 false, i1 false}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{i8 0, i8 2}
!32 = !{i64 2148500236, i64 2148500241, i64 2148500254, i64 2148500298, i64 2148500332, i64 2148500353}
!33 = !{!"auto-init"}
