; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/etnaviv/etnaviv_dump.c_pt.bc'
source_filename = "../drivers/gpu/drm/etnaviv/etnaviv_dump.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.etnaviv_gem_submit = type { %struct.drm_sched_job, %struct.kref, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.list_head, %struct.etnaviv_cmdbuf, i8, i32, i32, i32, ptr, i32, [0 x %struct.etnaviv_gem_submit_bo] }
%struct.drm_sched_job = type { %struct.spsc_node, %struct.list_head, ptr, ptr, %union.anon.85, i64, %struct.atomic_t, i32, ptr, %struct.dma_fence_cb, %struct.xarray, i32 }
%struct.spsc_node = type { ptr }
%union.anon.85 = type { %struct.irq_work }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.atomic_t = type { i32 }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.etnaviv_cmdbuf = type { ptr, i32, ptr, i32, i32 }
%struct.etnaviv_gem_submit_bo = type { i32, i64, ptr, ptr, ptr, i32, ptr }
%struct.etnaviv_gpu = type { ptr, ptr, ptr, %struct.mutex, %struct.etnaviv_chip_identity, i32, ptr, %struct.drm_gpu_scheduler, i8, i8, %struct.etnaviv_cmdbuf, i32, [1 x i32], [30 x %struct.etnaviv_event], %struct.completion, %struct.spinlock, i32, %struct.mutex, %struct.idr, i32, i32, %struct.wait_queue_head, i64, %struct.spinlock, %struct.work_struct, i32, i32, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.etnaviv_chip_identity = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.etnaviv_event = type { ptr, ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.etnaviv_iommu_context = type { %struct.kref, ptr, %struct.mutex, %struct.list_head, %struct.drm_mm, i32, %struct.etnaviv_vram_mapping }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.etnaviv_vram_mapping = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, %struct.drm_mm_node, i32, i32 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.etnaviv_dump_object_header = type { i32, i32, i32, i32, i64, [2 x i32] }
%struct.etnaviv_dump_registers = type { i32, i32 }
%struct.etnaviv_gem_object = type { %struct.drm_gem_object, ptr, %struct.mutex, i32, %struct.list_head, ptr, %struct.atomic_t, i32, ptr, ptr, ptr, %struct.list_head, i32, %struct.etnaviv_gem_userptr }
%struct.etnaviv_gem_userptr = type { i32, ptr, i8 }

@__param_str_dump_core = internal constant [18 x i8] c"etnaviv.dump_core\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@etnaviv_dump_core = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_dump_core = internal constant %struct.kernel_param { ptr @__param_str_dump_core, ptr null, ptr @param_ops_bool, i16 384, i8 -1, i8 0, %union.anon.76 { ptr @etnaviv_dump_core } }, section "__param", align 4
@__UNIQUE_ID_dump_coretype321 = internal constant [32 x i8] c"etnaviv.parmtype=dump_core:bool\00", section ".modinfo", align 1
@etnaviv_core_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 161, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to allocate devcoredump file\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"etnaviv_core_dump\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/etnaviv/etnaviv_dump.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@etnaviv_core_dump._entry_ptr = internal global ptr @etnaviv_core_dump._entry, section ".printk_index", align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@etnaviv_dump_registers = internal constant { [37 x i16], [54 x i8] } { [37 x i16] [i16 12, i16 0, i16 4, i16 8, i16 20, i16 24, i16 28, i16 32, i16 36, i16 40, i16 44, i16 52, i16 56, i16 112, i16 256, i16 260, i16 264, i16 268, i16 1024, i16 1028, i16 1032, i16 1036, i16 1040, i16 1044, i16 1048, i16 1052, i16 1056, i16 1060, i16 1064, i16 1068, i16 1152, i16 1628, i16 1632, i16 1636, i16 1640, i16 1644, i16 1648], [54 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [18 x i8] c"etnaviv_dump_core\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 18, i32 13 }
@___asan_gen_.8 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 161, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant [23 x i8] c"etnaviv_dump_registers\00", align 1
@___asan_gen_.27 = private constant [42 x i8] c"../drivers/gpu/drm/etnaviv/etnaviv_dump.c\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 27, i32 29 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_dump_coretype321, ptr @__param_dump_core, ptr @etnaviv_core_dump._entry, ptr @etnaviv_core_dump._entry_ptr, ptr @etnaviv_dump_core, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @etnaviv_dump_registers], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_dump_core to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_core_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_dump_registers to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @etnaviv_core_dump(ptr noundef %submit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %gpu1 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 3
  %0 = ptrtoint ptr %gpu1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpu1, align 8
  %2 = load i8, ptr @etnaviv_dump_core, align 1, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  store i8 0, ptr @etnaviv_dump_core, align 1
  %mmu_context = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 30
  %3 = ptrtoint ptr %mmu_context to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmu_context, align 4
  %lock = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %4, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %5 = ptrtoint ptr %mmu_context to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmu_context, align 4
  %call = tail call i32 @etnaviv_iommu_dump_size(ptr noundef %6) #5
  %add = add i32 %call, 296
  %buffer = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 10
  %size = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 10, i32 3
  %7 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size, align 4
  %add3 = add i32 %add, %8
  %cmdbuf = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 10
  %size4 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 10, i32 3
  %9 = ptrtoint ptr %size4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size4, align 4
  %add5 = add i32 %add3, %10
  %nr_bos = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 16
  %11 = ptrtoint ptr %nr_bos to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr_bos, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp312.not = icmp eq i32 %12, 0
  br i1 %cmp312.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.0316 = phi i32 [ %inc12, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %file_size.0315 = phi i32 [ %add8, %for.body.for.body_crit_edge ], [ %add5, %if.end.for.body_crit_edge ]
  %n_bomap_pages.0314 = phi i32 [ %add11, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %obj6 = getelementptr %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 17, i32 %i.0316, i32 2
  %13 = ptrtoint ptr %obj6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %obj6, align 8
  %size7 = getelementptr inbounds %struct.drm_gem_object, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %size7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size7, align 8
  %add8 = add i32 %16, %file_size.0315
  %shr = lshr i32 %16, 12
  %add11 = add i32 %shr, %n_bomap_pages.0314
  %inc12 = add nuw i32 %i.0316, 1
  %exitcond.not = icmp eq i32 %inc12, %12
  br i1 %exitcond.not, label %for.end.loopexit, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %17 = add i32 %12, 5
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end.for.end_crit_edge
  %n_obj.0.lcssa = phi i32 [ 5, %if.end.for.end_crit_edge ], [ %17, %for.end.loopexit ]
  %n_bomap_pages.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %add11, %for.end.loopexit ]
  %file_size.0.lcssa = phi i32 [ %add5, %if.end.for.end_crit_edge ], [ %add8, %for.end.loopexit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_bomap_pages.0.lcssa)
  %tobool13.not = icmp eq i32 %n_bomap_pages.0.lcssa, 0
  %mul = shl i32 %n_bomap_pages.0.lcssa, 3
  %not.tobool13.not = xor i1 %tobool13.not, true
  %inc16 = zext i1 %not.tobool13.not to i32
  %n_obj.1 = add i32 %n_obj.0.lcssa, %inc16
  %file_size.1 = add i32 %file_size.0.lcssa, %mul
  %mul18 = shl i32 %n_obj.1, 5
  %add19 = add i32 %file_size.1, %mul18
  %call20 = tail call noalias ptr @__vmalloc(i32 noundef %add19, i32 noundef 76992) #8
  %tobool22.not = icmp eq ptr %call20, null
  br i1 %tobool22.not, label %if.then23, label %if.end26

if.then23:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %mmu_context to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmu_context, align 4
  %lock25 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %19, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %lock25) #5
  %dev = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str) #9
  br label %cleanup

if.end26:                                         ; preds = %for.end
  %arrayidx29 = getelementptr %struct.etnaviv_dump_object_header, ptr %call20, i32 %n_obj.1
  %sub.ptr.lhs.cast = ptrtoint ptr %arrayidx29 to i32
  %22 = call ptr @memset(ptr %call20, i32 0, i32 %mul18)
  %mmio.i.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 28
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end26
  %i.013.i = phi i32 [ 0, %if.end26 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %reg.012.i = phi ptr [ %arrayidx29, %if.end26 ], [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [37 x i16], ptr @etnaviv_dump_registers, i32 0, i32 %i.013.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %24 to i32
  %25 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #5
  %26 = ptrtoint ptr %reg.012.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %reg.012.i, align 4
  %27 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %28, i32 %conv.i
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  %value.i = getelementptr inbounds %struct.etnaviv_dump_registers, ptr %reg.012.i, i32 0, i32 1
  %30 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %value.i, align 4
  %inc.i = add nuw nsw i32 %i.013.i, 1
  %incdec.ptr.i = getelementptr %struct.etnaviv_dump_registers, ptr %reg.012.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, 37
  br i1 %exitcond.not.i, label %etnaviv_core_dump_registers.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

etnaviv_core_dump_registers.exit:                 ; preds = %for.body.i
  %sub.ptr.rhs.cast = ptrtoint ptr %call20 to i32
  %31 = ptrtoint ptr %call20 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1163152961, ptr %call20, align 8
  %type2.i.i = getelementptr inbounds %struct.etnaviv_dump_object_header, ptr %call20, i32 0, i32 1
  %32 = ptrtoint ptr %type2.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %type2.i.i, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %mul18) #5
  %file_offset.i.i = getelementptr inbounds %struct.etnaviv_dump_object_header, ptr %call20, i32 0, i32 2
  %34 = ptrtoint ptr %file_offset.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %file_offset.i.i, align 8
  %sub.ptr.lhs.cast4.i.i = ptrtoint ptr %incdec.ptr.i to i32
  %sub.ptr.sub6.i.i = sub i32 %sub.ptr.lhs.cast4.i.i, %sub.ptr.lhs.cast
  %35 = tail call i32 @llvm.bswap.i32(i32 %sub.ptr.sub6.i.i) #5
  %file_size.i.i = getelementptr inbounds %struct.etnaviv_dump_object_header, ptr %call20, i32 0, i32 3
  %36 = ptrtoint ptr %file_size.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %file_size.i.i, align 4
  %incdec.ptr.i.i = getelementptr %struct.etnaviv_dump_object_header, ptr %call20, i32 1
  %add.ptr.i11.i = getelementptr i8, ptr %arrayidx29, i32 %sub.ptr.sub6.i.i
  %37 = ptrtoint ptr %mmu_context to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mmu_context, align 4
  tail call void @etnaviv_iommu_dump(ptr noundef %38, ptr noundef %add.ptr.i11.i) #5
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i11.i, i32 %call
  %39 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1163152961, ptr %incdec.ptr.i.i, align 8
  %type2.i.i187 = getelementptr %struct.etnaviv_dump_object_header, ptr %call20, i32 1, i32 1
  %40 = ptrtoint ptr %type2.i.i187 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 16777216, ptr %type2.i.i187, align 4
  %sub.ptr.lhs.cast.i.i188 = ptrtoint ptr %add.ptr.i11.i to i32
  %sub.ptr.sub.i.i190 = sub i32 %sub.ptr.lhs.cast.i.i188, %sub.ptr.rhs.cast
  %41 = tail call i32 @llvm.bswap.i32(i32 %sub.ptr.sub.i.i190) #5
  %file_offset.i.i191 = getelementptr %struct.etnaviv_dump_object_header, ptr %call20, i32 1, i32 2
  %42 = ptrtoint ptr %file_offset.i.i191 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %file_offset.i.i191, align 8
  %sub.ptr.lhs.cast4.i.i192 = ptrtoint ptr %add.ptr.i to i32
  %43 = tail call i32 @llvm.bswap.i32(i32 %call) #5
  %file_size.i.i195 = getelementptr %struct.etnaviv_dump_object_header, ptr %call20, i32 1, i32 3
  %44 = ptrtoint ptr %file_size.i.i195 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %file_size.i.i195, align 4
  %incdec.ptr.i.i196 = getelementptr %struct.etnaviv_dump_object_header, ptr %call20, i32 2
  %vaddr = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 10, i32 2
  %45 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %vaddr, align 4
  %47 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %size, align 4
  %49 = ptrtoint ptr %mmu_context to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mmu_context, align 4
  %cmdbuf_mapping = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %50, i32 0, i32 6
  %call39 = tail call i32 @etnaviv_cmdbuf_get_va(ptr noundef %buffer, ptr noundef %cmdbuf_mapping) #5
  %conv = zext i32 %call39 to i64
  %51 = call ptr @memcpy(ptr %add.ptr.i, ptr %46, i32 %48)
  %52 = tail call i64 @llvm.bswap.i64(i64 %conv) #5
  %iova1.i = getelementptr %struct.etnaviv_dump_object_header, ptr %call20, i32 2, i32 4
  %53 = ptrtoint ptr %iova1.i to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %52, ptr %iova1.i, align 8
  %add.ptr.i199 = getelementptr i8, ptr %add.ptr.i, i32 %48
  %54 = ptrtoint ptr %incdec.ptr.i.i196 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1163152961, ptr %incdec.ptr.i.i196, align 8
  %type2.i.i200 = getelementptr %struct.etnaviv_dump_object_header, ptr %call20, i32 2, i32 1
  %55 = ptrtoint ptr %type2.i.i200 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 33554432, ptr %type2.i.i200, align 4
  %sub.ptr.sub.i.i203 = sub i32 %sub.ptr.lhs.cast4.i.i192, %sub.ptr.rhs.cast
  %56 = tail call i32 @llvm.bswap.i32(i32 %sub.ptr.sub.i.i203) #5
  %file_offset.i.i204 = getelementptr %struct.etnaviv_dump_object_header, ptr %call20, i32 2, i32 2
  %57 = ptrtoint ptr %file_offset.i.i204 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %file_offset.i.i204, align 8
  %sub.ptr.lhs.cast4.i.i205 = ptrtoint ptr %add.ptr.i199 to i32
  %58 = tail call i32 @llvm.bswap.i32(i32 %48) #5
  %file_size.i.i208 = getelementptr %struct.etnaviv_dump_object_header, ptr %call20, i32 2, i32 3
  %59 = ptrtoint ptr %file_size.i.i208 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %file_size.i.i208, align 4
  %incdec.ptr.i.i209 = getelementptr %struct.etnaviv_dump_object_header, ptr %call20, i32 3
  %vaddr41 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 10, i32 2
  %60 = ptrtoint ptr %vaddr41 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %vaddr41, align 8
  %62 = ptrtoint ptr %size4 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %size4, align 4
  %64 = ptrtoint ptr %mmu_context to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mmu_context, align 4
  %cmdbuf_mapping46 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %65, i32 0, i32 6
  %call47 = tail call i32 @etnaviv_cmdbuf_get_va(ptr noundef %cmdbuf, ptr noundef %cmdbuf_mapping46) #5
  %conv48 = zext i32 %call47 to i64
  %66 = call ptr @memcpy(ptr %add.ptr.i199, ptr %61, i32 %63)
  %67 = tail call i64 @llvm.bswap.i64(i64 %conv48) #5
  %iova1.i213 = getelementptr %struct.etnaviv_dump_object_header, ptr %call20, i32 3, i32 4
  %68 = ptrtoint ptr %iova1.i213 to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %67, ptr %iova1.i213, align 8
  %add.ptr.i214 = getelementptr i8, ptr %add.ptr.i199, i32 %63
  %69 = ptrtoint ptr %incdec.ptr.i.i209 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 1163152961, ptr %incdec.ptr.i.i209, align 8
  %type2.i.i215 = getelementptr %struct.etnaviv_dump_object_header, ptr %call20, i32 3, i32 1
  %70 = ptrtoint ptr %type2.i.i215 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 50331648, ptr %type2.i.i215, align 4
  %sub.ptr.sub.i.i218 = sub i32 %sub.ptr.lhs.cast4.i.i205, %sub.ptr.rhs.cast
  %71 = tail call i32 @llvm.bswap.i32(i32 %sub.ptr.sub.i.i218) #5
  %file_offset.i.i219 = getelementptr %struct.etnaviv_dump_object_header, ptr %call20, i32 3, i32 2
  %72 = ptrtoint ptr %file_offset.i.i219 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %file_offset.i.i219, align 8
  %73 = tail call i32 @llvm.bswap.i32(i32 %63) #5
  %file_size.i.i223 = getelementptr %struct.etnaviv_dump_object_header, ptr %call20, i32 3, i32 3
  %74 = ptrtoint ptr %file_size.i.i223 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %file_size.i.i223, align 4
  %incdec.ptr.i.i224 = getelementptr %struct.etnaviv_dump_object_header, ptr %call20, i32 4
  %75 = ptrtoint ptr %mmu_context to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mmu_context, align 4
  %lock50 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %76, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %lock50) #5
  br i1 %tobool13.not, label %etnaviv_core_dump_registers.exit.if.end55_crit_edge, label %if.then52

etnaviv_core_dump_registers.exit.if.end55_crit_edge: ; preds = %etnaviv_core_dump_registers.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55

if.then52:                                        ; preds = %etnaviv_core_dump_registers.exit
  call void @__sanitizer_cov_trace_pc() #7
  %sub.ptr.lhs.cast4.i.i220 = ptrtoint ptr %add.ptr.i214 to i32
  %77 = call ptr @memset(ptr %add.ptr.i214, i32 0, i32 %mul)
  %add.ptr = getelementptr i64, ptr %add.ptr.i214, i32 %n_bomap_pages.0.lcssa
  %78 = ptrtoint ptr %incdec.ptr.i.i224 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 1163152961, ptr %incdec.ptr.i.i224, align 8
  %type2.i = getelementptr %struct.etnaviv_dump_object_header, ptr %call20, i32 4, i32 1
  %79 = ptrtoint ptr %type2.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 67108864, ptr %type2.i, align 4
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast4.i.i220, %sub.ptr.rhs.cast
  %80 = tail call i32 @llvm.bswap.i32(i32 %sub.ptr.sub.i) #5
  %file_offset.i = getelementptr %struct.etnaviv_dump_object_header, ptr %call20, i32 4, i32 2
  %81 = ptrtoint ptr %file_offset.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %file_offset.i, align 8
  %82 = tail call i32 @llvm.bswap.i32(i32 %mul) #5
  %file_size.i = getelementptr %struct.etnaviv_dump_object_header, ptr %call20, i32 4, i32 3
  %83 = ptrtoint ptr %file_size.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %file_size.i, align 4
  %incdec.ptr.i227 = getelementptr %struct.etnaviv_dump_object_header, ptr %call20, i32 5
  br label %if.end55

if.end55:                                         ; preds = %if.then52, %etnaviv_core_dump_registers.exit.if.end55_crit_edge
  %iter.sroa.40.0 = phi ptr [ %add.ptr.i214, %etnaviv_core_dump_registers.exit.if.end55_crit_edge ], [ %add.ptr, %if.then52 ]
  %iter.sroa.13.0 = phi ptr [ %incdec.ptr.i.i224, %etnaviv_core_dump_registers.exit.if.end55_crit_edge ], [ %incdec.ptr.i227, %if.then52 ]
  %bomap_start.0 = phi ptr [ null, %etnaviv_core_dump_registers.exit.if.end55_crit_edge ], [ %add.ptr.i214, %if.then52 ]
  %84 = ptrtoint ptr %nr_bos to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %nr_bos, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp58325.not = icmp eq i32 %85, 0
  br i1 %cmp58325.not, label %if.end55.for.end113_crit_edge, label %for.body60.lr.ph

if.end55.for.end113_crit_edge:                    ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end113

for.body60.lr.ph:                                 ; preds = %if.end55
  %sub.ptr.rhs.cast73 = ptrtoint ptr %bomap_start.0 to i32
  br label %for.body60

for.body60:                                       ; preds = %if.end106.for.body60_crit_edge, %for.body60.lr.ph
  %i.1331 = phi i32 [ 0, %for.body60.lr.ph ], [ %inc112, %if.end106.for.body60_crit_edge ]
  %bomap.1330 = phi ptr [ %bomap_start.0, %for.body60.lr.ph ], [ %bomap.3, %if.end106.for.body60_crit_edge ]
  %iter.sroa.13.1328 = phi ptr [ %iter.sroa.13.0, %for.body60.lr.ph ], [ %incdec.ptr.i240, %if.end106.for.body60_crit_edge ]
  %iter.sroa.40.1326 = phi ptr [ %iter.sroa.40.0, %for.body60.lr.ph ], [ %add.ptr110, %if.end106.for.body60_crit_edge ]
  %obj64 = getelementptr %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 17, i32 %i.1331, i32 2
  %86 = ptrtoint ptr %obj64 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %obj64, align 8
  %mapping = getelementptr %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 17, i32 %i.1331, i32 3
  %88 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %mapping, align 4
  %lock67 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %87, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock67, i32 noundef 0) #5
  %call68 = tail call ptr @etnaviv_gem_get_pages(ptr noundef %87) #5
  tail call void @mutex_unlock(ptr noundef %lock67) #5
  %cmp.i = icmp ugt ptr %call68, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %for.body60.if.end95_crit_edge, label %if.then71

for.body60.if.end95_crit_edge:                    ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end95

if.then71:                                        ; preds = %for.body60
  %sub.ptr.lhs.cast72 = ptrtoint ptr %bomap.1330 to i32
  %sub.ptr.sub74 = sub i32 %sub.ptr.lhs.cast72, %sub.ptr.rhs.cast73
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub74, 3
  %90 = tail call i32 @llvm.bswap.i32(i32 %sub.ptr.div)
  %data76 = getelementptr inbounds %struct.etnaviv_dump_object_header, ptr %iter.sroa.13.1328, i32 0, i32 5
  %91 = ptrtoint ptr %data76 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %data76, align 8
  %size80 = getelementptr inbounds %struct.drm_gem_object, ptr %87, i32 0, i32 5
  %92 = ptrtoint ptr %size80 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %size80, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %93)
  %cmp82320.not = icmp ult i32 %93, 4096
  br i1 %cmp82320.not, label %if.then71.if.end95_crit_edge, label %if.then71.for.body84_crit_edge

if.then71.for.body84_crit_edge:                   ; preds = %if.then71
  br label %for.body84

if.then71.if.end95_crit_edge:                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end95

for.body84:                                       ; preds = %for.body84.for.body84_crit_edge, %if.then71.for.body84_crit_edge
  %j.0323 = phi i32 [ %inc93, %for.body84.for.body84_crit_edge ], [ 0, %if.then71.for.body84_crit_edge ]
  %pages.0322 = phi ptr [ %incdec.ptr, %for.body84.for.body84_crit_edge ], [ %call68, %if.then71.for.body84_crit_edge ]
  %bomap.2321 = phi ptr [ %incdec.ptr91, %for.body84.for.body84_crit_edge ], [ %bomap.1330, %if.then71.for.body84_crit_edge ]
  %incdec.ptr = getelementptr ptr, ptr %pages.0322, i32 1
  %94 = ptrtoint ptr %pages.0322 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %pages.0322, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %96 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast85 = ptrtoint ptr %95 to i32
  %sub.ptr.rhs.cast86 = ptrtoint ptr %96 to i32
  %sub.ptr.sub87 = sub i32 %sub.ptr.lhs.cast85, %sub.ptr.rhs.cast86
  %sub.ptr.div88 = sdiv exact i32 %sub.ptr.sub87, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %97 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add89 = add i32 %sub.ptr.div88, %97
  %shl = shl i32 %add89, 12
  %conv90 = zext i32 %shl to i64
  %98 = tail call i64 @llvm.bswap.i64(i64 %conv90)
  %incdec.ptr91 = getelementptr i64, ptr %bomap.2321, i32 1
  %99 = ptrtoint ptr %bomap.2321 to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 %98, ptr %bomap.2321, align 8
  %inc93 = add nuw nsw i32 %j.0323, 1
  %100 = ptrtoint ptr %size80 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %size80, align 8
  %shr81 = lshr i32 %101, 12
  %cmp82 = icmp ult i32 %inc93, %shr81
  br i1 %cmp82, label %for.body84.for.body84_crit_edge, label %for.body84.if.end95_crit_edge

for.body84.if.end95_crit_edge:                    ; preds = %for.body84
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end95

for.body84.for.body84_crit_edge:                  ; preds = %for.body84
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body84

if.end95:                                         ; preds = %for.body84.if.end95_crit_edge, %if.then71.if.end95_crit_edge, %for.body60.if.end95_crit_edge
  %bomap.3 = phi ptr [ %bomap.1330, %for.body60.if.end95_crit_edge ], [ %bomap.1330, %if.then71.if.end95_crit_edge ], [ %incdec.ptr91, %for.body84.if.end95_crit_edge ]
  %iova = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %89, i32 0, i32 7
  %102 = ptrtoint ptr %iova to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %iova, align 4
  %conv96 = zext i32 %103 to i64
  %104 = tail call i64 @llvm.bswap.i64(i64 %conv96)
  %iova98 = getelementptr inbounds %struct.etnaviv_dump_object_header, ptr %iter.sroa.13.1328, i32 0, i32 4
  %105 = ptrtoint ptr %iova98 to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 %104, ptr %iova98, align 8
  %call100 = tail call ptr @etnaviv_gem_vmap(ptr noundef %87) #5
  %tobool101.not = icmp eq ptr %call100, null
  br i1 %tobool101.not, label %if.end95.if.end106_crit_edge, label %if.then102

if.end95.if.end106_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end106

if.then102:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  %size105 = getelementptr inbounds %struct.drm_gem_object, ptr %87, i32 0, i32 5
  %106 = ptrtoint ptr %size105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %size105, align 8
  %108 = call ptr @memcpy(ptr %iter.sroa.40.1326, ptr %call100, i32 %107)
  br label %if.end106

if.end106:                                        ; preds = %if.then102, %if.end95.if.end106_crit_edge
  %size109 = getelementptr inbounds %struct.drm_gem_object, ptr %87, i32 0, i32 5
  %109 = ptrtoint ptr %size109 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %size109, align 8
  %add.ptr110 = getelementptr i8, ptr %iter.sroa.40.1326, i32 %110
  %111 = ptrtoint ptr %iter.sroa.13.1328 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 1163152961, ptr %iter.sroa.13.1328, align 8
  %type2.i230 = getelementptr inbounds %struct.etnaviv_dump_object_header, ptr %iter.sroa.13.1328, i32 0, i32 1
  %112 = ptrtoint ptr %type2.i230 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 83886080, ptr %type2.i230, align 4
  %sub.ptr.lhs.cast.i232 = ptrtoint ptr %iter.sroa.40.1326 to i32
  %sub.ptr.sub.i234 = sub i32 %sub.ptr.lhs.cast.i232, %sub.ptr.rhs.cast
  %113 = tail call i32 @llvm.bswap.i32(i32 %sub.ptr.sub.i234) #5
  %file_offset.i235 = getelementptr inbounds %struct.etnaviv_dump_object_header, ptr %iter.sroa.13.1328, i32 0, i32 2
  %114 = ptrtoint ptr %file_offset.i235 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %file_offset.i235, align 8
  %115 = tail call i32 @llvm.bswap.i32(i32 %110) #5
  %file_size.i239 = getelementptr inbounds %struct.etnaviv_dump_object_header, ptr %iter.sroa.13.1328, i32 0, i32 3
  %116 = ptrtoint ptr %file_size.i239 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %file_size.i239, align 4
  %incdec.ptr.i240 = getelementptr %struct.etnaviv_dump_object_header, ptr %iter.sroa.13.1328, i32 1
  %inc112 = add nuw i32 %i.1331, 1
  %117 = ptrtoint ptr %nr_bos to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %nr_bos, align 8
  %cmp58 = icmp ult i32 %inc112, %118
  br i1 %cmp58, label %if.end106.for.body60_crit_edge, label %if.end106.for.end113_crit_edge

if.end106.for.end113_crit_edge:                   ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end113

if.end106.for.body60_crit_edge:                   ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body60

for.end113:                                       ; preds = %if.end106.for.end113_crit_edge, %if.end55.for.end113_crit_edge
  %iter.sroa.40.1.lcssa = phi ptr [ %iter.sroa.40.0, %if.end55.for.end113_crit_edge ], [ %add.ptr110, %if.end106.for.end113_crit_edge ]
  %iter.sroa.13.1.lcssa = phi ptr [ %iter.sroa.13.0, %if.end55.for.end113_crit_edge ], [ %incdec.ptr.i240, %if.end106.for.end113_crit_edge ]
  %119 = ptrtoint ptr %iter.sroa.13.1.lcssa to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 1163152961, ptr %iter.sroa.13.1.lcssa, align 8
  %type2.i243 = getelementptr inbounds %struct.etnaviv_dump_object_header, ptr %iter.sroa.13.1.lcssa, i32 0, i32 1
  %120 = ptrtoint ptr %type2.i243 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 100663296, ptr %type2.i243, align 4
  %sub.ptr.lhs.cast.i245 = ptrtoint ptr %iter.sroa.40.1.lcssa to i32
  %sub.ptr.sub.i247 = sub i32 %sub.ptr.lhs.cast.i245, %sub.ptr.rhs.cast
  %121 = tail call i32 @llvm.bswap.i32(i32 %sub.ptr.sub.i247) #5
  %file_offset.i248 = getelementptr inbounds %struct.etnaviv_dump_object_header, ptr %iter.sroa.13.1.lcssa, i32 0, i32 2
  %122 = ptrtoint ptr %file_offset.i248 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %file_offset.i248, align 8
  %file_size.i252 = getelementptr inbounds %struct.etnaviv_dump_object_header, ptr %iter.sroa.13.1.lcssa, i32 0, i32 3
  %123 = ptrtoint ptr %file_size.i252 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 0, ptr %file_size.i252, align 4
  %dev115 = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 2
  %124 = ptrtoint ptr %dev115 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dev115, align 8
  tail call void @dev_coredumpv(ptr noundef %125, ptr noundef %call20, i32 noundef %sub.ptr.sub.i247, i32 noundef 3264) #5
  br label %cleanup

cleanup:                                          ; preds = %for.end113, %if.then23, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_iommu_dump_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__vmalloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_cmdbuf_get_va(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @etnaviv_gem_get_pages(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @etnaviv_gem_vmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_coredumpv(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @etnaviv_iommu_dump(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !10, !11, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @__param_dump_core, !1, !"__param_dump_core", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_dump.c", i32 19, i32 1}
!2 = !{ptr @__UNIQUE_ID_dump_coretype321, !1, !"__UNIQUE_ID_dump_coretype321", i1 false, i1 false}
!3 = !{ptr @.str, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_dump.c", i32 161, i32 3}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @etnaviv_core_dump._entry, !4, !"_entry", i1 false, i1 false}
!10 = !{ptr @etnaviv_core_dump._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @__param_str_dump_core, !1, !"__param_str_dump_core", i1 false, i1 false}
!12 = !{ptr @etnaviv_dump_core, !13, !"etnaviv_dump_core", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_dump.c", i32 18, i32 13}
!14 = !{ptr @etnaviv_dump_registers, !15, !"etnaviv_dump_registers", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_dump.c", i32 27, i32 29}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{i8 0, i8 2}
!26 = !{i64 6215235}
!27 = !{i64 2156678783}
