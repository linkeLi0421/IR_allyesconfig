; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/lima/lima_vm.c_pt.bc'
source_filename = "../drivers/gpu/drm/lima/lima_vm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sg_dma_page_iter = type { %struct.sg_page_iter }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%struct.lima_bo = type { %struct.drm_gem_shmem_object, %struct.mutex, %struct.list_head, i32 }
%struct.drm_gem_shmem_object = type { %struct.drm_gem_object, %struct.mutex, ptr, i32, i32, %struct.list_head, i8, ptr, %struct.mutex, ptr, i32, i8 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lima_bo_va = type { %struct.list_head, i32, %struct.drm_mm_node, ptr }
%struct.lima_vm = type { %struct.mutex, %struct.kref, %struct.drm_mm, ptr, %struct.lima_vm_page, [128 x %struct.lima_vm_page] }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.lima_vm_page = type { ptr, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.lima_device = type { ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [26 x %struct.lima_ip], [2 x %struct.lima_sched_pipe], ptr, i64, i64, ptr, i32, %struct.lima_devfreq, %struct.lima_dump_head, %struct.list_head, %struct.mutex }
%struct.lima_ip = type { ptr, i32, i8, ptr, i32, %union.anon.74 }
%union.anon.74 = type { %struct.spinlock }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.lima_sched_pipe = type { %struct.drm_gpu_scheduler, i64, i32, %struct.spinlock, ptr, ptr, ptr, [8 x ptr], i32, [2 x ptr], i32, [8 x ptr], i32, ptr, ptr, i32, i8, %struct.atomic_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.work_struct }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lima_devfreq = type { ptr, ptr, %struct.devfreq_simple_ondemand_data, i64, i64, i64, i32, %struct.spinlock }
%struct.devfreq_simple_ondemand_data = type { i32, i32 }
%struct.lima_dump_head = type { i32, i16, i16, i32, i32, [4 x i32] }

@lima_vm_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&vm->lock\00", [22 x i8] zeroinitializer }, align 32
@lima_vm_print._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016lima vm pd %03x:%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lima_vm_print\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/gpu/drm/lima/lima_vm.c\00", [33 x i8] zeroinitializer }, align 32
@lima_vm_print._entry_ptr = internal global ptr @lima_vm_print._entry, section ".printk_index", align 4
@lima_vm_print._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\016  pt %03x:%08x\0A\00", [46 x i8] zeroinitializer }, align 32
@lima_vm_print._entry_ptr.6 = internal global ptr @lima_vm_print._entry.4, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.7 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 209, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 271, i32 4 }
@___asan_gen_.25 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.29 = private constant [34 x i8] c"../drivers/gpu/drm/lima/lima_vm.c\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 277, i32 6 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @lima_vm_print._entry, ptr @lima_vm_print._entry.4, ptr @lima_vm_print._entry_ptr, ptr @lima_vm_print._entry_ptr.6, ptr @lima_vm_create.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_vm_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_vm_print._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_vm_print._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lima_vm_bo_add(ptr noundef %vm, ptr noundef %bo, i1 noundef zeroext %create) local_unnamed_addr #0 align 64 {
entry:
  %sg_iter = alloca %struct.sg_dma_page_iter, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sg_iter) #5
  %0 = getelementptr inbounds %struct.sg_page_iter, ptr %sg_iter, i32 0, i32 1
  %lock = getelementptr inbounds %struct.lima_bo, ptr %bo, i32 0, i32 1
  %1 = call ptr @memset(ptr %sg_iter, i32 255, i32 16)
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %va.i = getelementptr inbounds %struct.lima_bo, ptr %bo, i32 0, i32 2
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %bo_va.0.in.i = phi ptr [ %va.i, %entry ], [ %bo_va.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %bo_va.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %bo_va.0.i = load ptr, ptr %bo_va.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %bo_va.0.i, %va.i
  br i1 %cmp.not.i, label %for.cond.i.if.end_crit_edge, label %for.body.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i
  %vm2.i = getelementptr inbounds %struct.lima_bo_va, ptr %bo_va.0.i, i32 0, i32 3
  %3 = ptrtoint ptr %vm2.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vm2.i, align 8
  %cmp3.i = icmp eq ptr %4, %vm
  br i1 %cmp3.i, label %lima_vm_bo_find.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

lima_vm_bo_find.exit:                             ; preds = %for.body.i
  %tobool.not = icmp eq ptr %bo_va.0.i, null
  br i1 %tobool.not, label %lima_vm_bo_find.exit.if.end_crit_edge, label %if.then

lima_vm_bo_find.exit.if.end_crit_edge:            ; preds = %lima_vm_bo_find.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %lima_vm_bo_find.exit
  call void @__sanitizer_cov_trace_pc() #7
  %ref_count = getelementptr inbounds %struct.lima_bo_va, ptr %bo_va.0.i, i32 0, i32 1
  %5 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ref_count, align 8
  %inc = add i32 %6, 1
  store i32 %inc, ptr %ref_count, align 8
  tail call void @mutex_unlock(ptr noundef %lock) #5
  br label %cleanup

if.end:                                           ; preds = %lima_vm_bo_find.exit.if.end_crit_edge, %for.cond.i.if.end_crit_edge
  br i1 %create, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mutex_unlock(ptr noundef %lock) #5
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 136) #8
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %if.end5.err_out0_crit_edge, label %if.end9

if.end5.err_out0_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_out0

if.end9:                                          ; preds = %if.end5
  %vm10 = getelementptr inbounds %struct.lima_bo_va, ptr %call7.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %vm10 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %vm, ptr %vm10, align 8
  %ref_count11 = getelementptr inbounds %struct.lima_bo_va, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %ref_count11 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %ref_count11, align 8
  tail call void @mutex_lock_nested(ptr noundef %vm, i32 noundef 0) #5
  %mm = getelementptr inbounds %struct.lima_vm, ptr %vm, i32 0, i32 2
  %node = getelementptr inbounds %struct.lima_bo_va, ptr %call7.i.i, i32 0, i32 2
  %size.i = getelementptr inbounds %struct.drm_gem_object, ptr %bo, i32 0, i32 5
  %10 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size.i, align 8
  %conv = zext i32 %11 to i64
  %call.i.i = tail call i32 @drm_mm_insert_node_in_range(ptr noundef %mm, ptr noundef %node, i64 noundef %conv, i64 noundef 0, i32 noundef 0, i64 noundef 0, i64 noundef -1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool15.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool15.not, label %if.end17, label %if.end9.err_out1_crit_edge

if.end9.err_out1_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_out1

if.end17:                                         ; preds = %if.end9
  %sgt = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %bo, i32 0, i32 7
  %12 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sgt, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %nents = getelementptr inbounds %struct.sg_table, ptr %13, i32 0, i32 1
  %16 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nents, align 4
  call void @__sg_page_iter_start(ptr noundef nonnull %sg_iter, ptr noundef %15, i32 noundef %17, i32 noundef 0) #5
  %call21100 = call zeroext i1 @__sg_page_iter_dma_next(ptr noundef nonnull %sg_iter) #5
  br i1 %call21100, label %for.body.lr.ph, label %if.end17.for.end_crit_edge

if.end17.for.end_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end17
  %start = getelementptr inbounds %struct.lima_bo_va, ptr %call7.i.i, i32 0, i32 2, i32 1
  %dev.i = getelementptr inbounds %struct.lima_vm, ptr %vm, i32 0, i32 3
  %pd16.i = getelementptr inbounds %struct.lima_vm, ptr %vm, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %if.end29.for.body_crit_edge, %for.body.lr.ph
  %offset.0101 = phi i32 [ 0, %for.body.lr.ph ], [ %add30, %if.end29.for.body_crit_edge ]
  %18 = ptrtoint ptr %sg_iter to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sg_iter, align 4
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma_address.i, align 4
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %0, align 4
  %shl.i = shl i32 %23, 12
  %add.i = add i32 %shl.i, %21
  %24 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %start, align 8
  %26 = trunc i64 %25 to i32
  %conv25 = add i32 %offset.0101, %26
  %shr.i = lshr i32 %conv25, 25
  %and.i = lshr i32 %conv25, 12
  %shr1.i = and i32 %and.i, 8191
  %arrayidx.i = getelementptr %struct.lima_vm, ptr %vm, i32 0, i32 5, i32 %shr.i
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %if.then.i, label %for.body.if.end29_crit_edge

for.body.if.end29_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then.i:                                        ; preds = %for.body
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 8
  %dma.i = getelementptr %struct.lima_vm, ptr %vm, i32 0, i32 5, i32 %shr.i, i32 1
  %call.i.i83 = call ptr @dma_alloc_attrs(ptr noundef %32, i32 noundef 32768, ptr noundef %dma.i, i32 noundef 11712, i32 noundef 260) #5
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i.i83, ptr %arrayidx.i, align 4
  %tobool11.not.i = icmp eq ptr %call.i.i83, null
  br i1 %tobool11.not.i, label %err_out2, label %if.end.i

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dma.i, align 4
  %36 = ptrtoint ptr %pd16.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pd16.i, align 4
  %shl.i84 = shl nuw nsw i32 %shr.i, 3
  %add.ptr.i = getelementptr i32, ptr %37, i32 %shl.i84
  %or.i = or i32 %35, 1
  %38 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or.i, ptr %add.ptr.i, align 4
  %add.i85 = add i32 %35, 4096
  %or.1.i = or i32 %add.i85, 1
  %arrayidx18.1.i = getelementptr i32, ptr %add.ptr.i, i32 1
  %39 = ptrtoint ptr %arrayidx18.1.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or.1.i, ptr %arrayidx18.1.i, align 4
  %add.1.i = add i32 %35, 8192
  %or.2.i = or i32 %add.1.i, 1
  %arrayidx18.2.i = getelementptr i32, ptr %add.ptr.i, i32 2
  %40 = ptrtoint ptr %arrayidx18.2.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %or.2.i, ptr %arrayidx18.2.i, align 4
  %add.2.i = add i32 %35, 12288
  %or.3.i = or i32 %add.2.i, 1
  %arrayidx18.3.i = getelementptr i32, ptr %add.ptr.i, i32 3
  %41 = ptrtoint ptr %arrayidx18.3.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or.3.i, ptr %arrayidx18.3.i, align 4
  %add.3.i = add i32 %35, 16384
  %or.4.i = or i32 %add.3.i, 1
  %arrayidx18.4.i = getelementptr i32, ptr %add.ptr.i, i32 4
  %42 = ptrtoint ptr %arrayidx18.4.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %or.4.i, ptr %arrayidx18.4.i, align 4
  %add.4.i = add i32 %35, 20480
  %or.5.i = or i32 %add.4.i, 1
  %arrayidx18.5.i = getelementptr i32, ptr %add.ptr.i, i32 5
  %43 = ptrtoint ptr %arrayidx18.5.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or.5.i, ptr %arrayidx18.5.i, align 4
  %add.5.i = add i32 %35, 24576
  %or.6.i = or i32 %add.5.i, 1
  %arrayidx18.6.i = getelementptr i32, ptr %add.ptr.i, i32 6
  %44 = ptrtoint ptr %arrayidx18.6.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or.6.i, ptr %arrayidx18.6.i, align 4
  %add.6.i = add i32 %35, 28672
  %or.7.i = or i32 %add.6.i, 1
  %arrayidx18.7.i = getelementptr i32, ptr %add.ptr.i, i32 7
  %45 = ptrtoint ptr %arrayidx18.7.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or.7.i, ptr %arrayidx18.7.i, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.end.i, %for.body.if.end29_crit_edge
  %or22.i = or i32 %add.i, 479
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx26.i = getelementptr i32, ptr %47, i32 %shr1.i
  %48 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %or22.i, ptr %arrayidx26.i, align 4
  %add30 = add i32 %offset.0101, 4096
  %call21 = call zeroext i1 @__sg_page_iter_dma_next(ptr noundef nonnull %sg_iter) #5
  br i1 %call21, label %if.end29.for.body_crit_edge, label %if.end29.for.end_crit_edge

if.end29.for.end_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end29.for.body_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %if.end29.for.end_crit_edge, %if.end17.for.end_crit_edge
  call void @mutex_unlock(ptr noundef %vm) #5
  %prev.i = getelementptr inbounds %struct.lima_bo, ptr %bo, i32 0, i32 2, i32 1
  %49 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prev.i, align 4
  %call.i.i86 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %50, ptr noundef %va.i) #5
  br i1 %call.i.i86, label %if.end.i.i, label %for.end.list_add_tail.exit_crit_edge

for.end.list_add_tail.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %51 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %52 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %va.i, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %53 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %prev3.i.i, align 4
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %call7.i.i, ptr %50, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %for.end.list_add_tail.exit_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #5
  br label %cleanup

err_out2:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset.0101)
  %tobool33.not = icmp eq i32 %offset.0101, 0
  br i1 %tobool33.not, label %err_out2.if.end43_crit_edge, label %if.then34

err_out2.if.end43_crit_edge:                      ; preds = %err_out2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

if.then34:                                        ; preds = %err_out2
  %55 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %start, align 8
  %conv37 = trunc i64 %56 to i32
  %57 = add i32 %offset.0101, -1
  %conv42 = add i32 %57, %conv37
  call void @__sanitizer_cov_trace_cmp4(i32 %conv42, i32 %conv37)
  %cmp.not6.i = icmp ult i32 %conv42, %conv37
  br i1 %cmp.not6.i, label %if.then34.if.end43_crit_edge, label %if.then34.for.body.i93_crit_edge

if.then34.for.body.i93_crit_edge:                 ; preds = %if.then34
  br label %for.body.i93

if.then34.if.end43_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

for.body.i93:                                     ; preds = %for.body.i93.for.body.i93_crit_edge, %if.then34.for.body.i93_crit_edge
  %addr.07.i = phi i32 [ %add.i91, %for.body.i93.for.body.i93_crit_edge ], [ %conv37, %if.then34.for.body.i93_crit_edge ]
  %shr.i87 = lshr i32 %addr.07.i, 25
  %and.i88 = lshr i32 %addr.07.i, 12
  %shr1.i89 = and i32 %and.i88, 8191
  %arrayidx.i90 = getelementptr %struct.lima_vm, ptr %vm, i32 0, i32 5, i32 %shr.i87
  %58 = ptrtoint ptr %arrayidx.i90 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx.i90, align 4
  %arrayidx2.i = getelementptr i32, ptr %59, i32 %shr1.i89
  %60 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %arrayidx2.i, align 4
  %add.i91 = add i32 %addr.07.i, 4096
  %cmp.not.i92 = icmp ugt i32 %add.i91, %conv42
  br i1 %cmp.not.i92, label %for.body.i93.if.end43_crit_edge, label %for.body.i93.for.body.i93_crit_edge

for.body.i93.for.body.i93_crit_edge:              ; preds = %for.body.i93
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i93

for.body.i93.if.end43_crit_edge:                  ; preds = %for.body.i93
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

if.end43:                                         ; preds = %for.body.i93.if.end43_crit_edge, %if.then34.if.end43_crit_edge, %err_out2.if.end43_crit_edge
  call void @drm_mm_remove_node(ptr noundef %node) #5
  br label %err_out1

err_out1:                                         ; preds = %if.end43, %if.end9.err_out1_crit_edge
  %err.0 = phi i32 [ %call.i.i, %if.end9.err_out1_crit_edge ], [ -12, %if.end43 ]
  call void @mutex_unlock(ptr noundef %vm) #5
  call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %err_out0

err_out0:                                         ; preds = %err_out1, %if.end5.err_out0_crit_edge
  %err.1 = phi i32 [ %err.0, %err_out1 ], [ -12, %if.end5.err_out0_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #5
  br label %cleanup

cleanup:                                          ; preds = %err_out0, %list_add_tail.exit, %if.then3, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %err.1, %err_out0 ], [ 0, %list_add_tail.exit ], [ -2, %if.then3 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sg_iter) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sg_page_iter_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__sg_page_iter_dma_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_remove_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lima_vm_bo_del(ptr noundef %vm, ptr noundef %bo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.lima_bo, ptr %bo, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %va.i = getelementptr inbounds %struct.lima_bo, ptr %bo, i32 0, i32 2
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %bo_va.0.in.i = phi ptr [ %va.i, %entry ], [ %bo_va.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %bo_va.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %bo_va.0.i = load ptr, ptr %bo_va.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %bo_va.0.i, %va.i
  br i1 %cmp.not.i, label %for.cond.i.lima_vm_bo_find.exit_crit_edge, label %for.body.i

for.cond.i.lima_vm_bo_find.exit_crit_edge:        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lima_vm_bo_find.exit

for.body.i:                                       ; preds = %for.cond.i
  %vm2.i = getelementptr inbounds %struct.lima_bo_va, ptr %bo_va.0.i, i32 0, i32 3
  %1 = ptrtoint ptr %vm2.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vm2.i, align 8
  %cmp3.i = icmp eq ptr %2, %vm
  br i1 %cmp3.i, label %for.body.i.lima_vm_bo_find.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

for.body.i.lima_vm_bo_find.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lima_vm_bo_find.exit

lima_vm_bo_find.exit:                             ; preds = %for.body.i.lima_vm_bo_find.exit_crit_edge, %for.cond.i.lima_vm_bo_find.exit_crit_edge
  %ret.0.i = phi ptr [ null, %for.cond.i.lima_vm_bo_find.exit_crit_edge ], [ %bo_va.0.i, %for.body.i.lima_vm_bo_find.exit_crit_edge ]
  %ref_count = getelementptr inbounds %struct.lima_bo_va, ptr %ret.0.i, i32 0, i32 1
  %3 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ref_count, align 8
  %dec = add i32 %4, -1
  store i32 %dec, ptr %ref_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %lima_vm_bo_find.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mutex_unlock(ptr noundef %lock) #5
  br label %cleanup

if.end:                                           ; preds = %lima_vm_bo_find.exit
  tail call void @mutex_lock_nested(ptr noundef %vm, i32 noundef 0) #5
  %heap_size = getelementptr inbounds %struct.lima_bo, ptr %bo, i32 0, i32 3
  %5 = ptrtoint ptr %heap_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %heap_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %cond.false, label %if.end.cond.end_crit_edge

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %size4 = getelementptr inbounds %struct.lima_bo_va, ptr %ret.0.i, i32 0, i32 2, i32 2
  %7 = ptrtoint ptr %size4 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %size4, align 8
  %extract.t30 = trunc i64 %8 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %cond.off0 = phi i32 [ %extract.t30, %cond.false ], [ %6, %if.end.cond.end_crit_edge ]
  %node6 = getelementptr inbounds %struct.lima_bo_va, ptr %ret.0.i, i32 0, i32 2
  %start = getelementptr inbounds %struct.lima_bo_va, ptr %ret.0.i, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %start, align 8
  %conv7 = trunc i64 %10 to i32
  %11 = add i32 %cond.off0, -1
  %conv11 = add i32 %11, %conv7
  call void @__sanitizer_cov_trace_cmp4(i32 %conv11, i32 %conv7)
  %cmp.not6.i = icmp ult i32 %conv11, %conv7
  br i1 %cmp.not6.i, label %cond.end.lima_vm_unmap_range.exit_crit_edge, label %cond.end.for.body.i32_crit_edge

cond.end.for.body.i32_crit_edge:                  ; preds = %cond.end
  br label %for.body.i32

cond.end.lima_vm_unmap_range.exit_crit_edge:      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %lima_vm_unmap_range.exit

for.body.i32:                                     ; preds = %for.body.i32.for.body.i32_crit_edge, %cond.end.for.body.i32_crit_edge
  %addr.07.i = phi i32 [ %add.i, %for.body.i32.for.body.i32_crit_edge ], [ %conv7, %cond.end.for.body.i32_crit_edge ]
  %shr.i = lshr i32 %addr.07.i, 25
  %and.i = lshr i32 %addr.07.i, 12
  %shr1.i = and i32 %and.i, 8191
  %arrayidx.i = getelementptr %struct.lima_vm, ptr %vm, i32 0, i32 5, i32 %shr.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx2.i = getelementptr i32, ptr %13, i32 %shr1.i
  %14 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %arrayidx2.i, align 4
  %add.i = add i32 %addr.07.i, 4096
  %cmp.not.i31 = icmp ugt i32 %add.i, %conv11
  br i1 %cmp.not.i31, label %for.body.i32.lima_vm_unmap_range.exit_crit_edge, label %for.body.i32.for.body.i32_crit_edge

for.body.i32.for.body.i32_crit_edge:              ; preds = %for.body.i32
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i32

for.body.i32.lima_vm_unmap_range.exit_crit_edge:  ; preds = %for.body.i32
  call void @__sanitizer_cov_trace_pc() #7
  br label %lima_vm_unmap_range.exit

lima_vm_unmap_range.exit:                         ; preds = %for.body.i32.lima_vm_unmap_range.exit_crit_edge, %cond.end.lima_vm_unmap_range.exit_crit_edge
  tail call void @drm_mm_remove_node(ptr noundef %node6) #5
  tail call void @mutex_unlock(ptr noundef %vm) #5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ret.0.i) #5
  br i1 %call.i.i, label %if.end.i.i, label %lima_vm_unmap_range.exit.list_del.exit_crit_edge

lima_vm_unmap_range.exit.list_del.exit_crit_edge: ; preds = %lima_vm_unmap_range.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %lima_vm_unmap_range.exit
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %ret.0.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %ret.0.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ret.0.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %lima_vm_unmap_range.exit.list_del.exit_crit_edge
  %21 = ptrtoint ptr %ret.0.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %ret.0.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %ret.0.i, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #5
  tail call void @kfree(ptr noundef %ret.0.i) #5
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lima_vm_get_va(ptr noundef readnone %vm, ptr noundef %bo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.lima_bo, ptr %bo, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %va.i = getelementptr inbounds %struct.lima_bo, ptr %bo, i32 0, i32 2
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %bo_va.0.in.i = phi ptr [ %va.i, %entry ], [ %bo_va.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %bo_va.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %bo_va.0.i = load ptr, ptr %bo_va.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %bo_va.0.i, %va.i
  br i1 %cmp.not.i, label %for.cond.i.lima_vm_bo_find.exit_crit_edge, label %for.body.i

for.cond.i.lima_vm_bo_find.exit_crit_edge:        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lima_vm_bo_find.exit

for.body.i:                                       ; preds = %for.cond.i
  %vm2.i = getelementptr inbounds %struct.lima_bo_va, ptr %bo_va.0.i, i32 0, i32 3
  %1 = ptrtoint ptr %vm2.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vm2.i, align 8
  %cmp3.i = icmp eq ptr %2, %vm
  br i1 %cmp3.i, label %for.body.i.lima_vm_bo_find.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

for.body.i.lima_vm_bo_find.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lima_vm_bo_find.exit

lima_vm_bo_find.exit:                             ; preds = %for.body.i.lima_vm_bo_find.exit_crit_edge, %for.cond.i.lima_vm_bo_find.exit_crit_edge
  %ret.0.i = phi ptr [ null, %for.cond.i.lima_vm_bo_find.exit_crit_edge ], [ %bo_va.0.i, %for.body.i.lima_vm_bo_find.exit_crit_edge ]
  %start = getelementptr inbounds %struct.lima_bo_va, ptr %ret.0.i, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %start, align 8
  %conv = trunc i64 %4 to i32
  tail call void @mutex_unlock(ptr noundef %lock) #5
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @lima_vm_create(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1288) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup23_crit_edge, label %if.end

entry.cleanup23_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup23

if.end:                                           ; preds = %entry
  %dev1 = getelementptr inbounds %struct.lima_vm, ptr %call7.i.i, i32 0, i32 3
  %1 = ptrtoint ptr %dev1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %dev1, align 8
  tail call void @__mutex_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str, ptr noundef nonnull @lima_vm_create.__key) #5
  %refcount = getelementptr inbounds %struct.lima_vm, ptr %call7.i.i, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #5
  %2 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 1, ptr %refcount, align 4
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  %pd = getelementptr inbounds %struct.lima_vm, ptr %call7.i.i, i32 0, i32 4
  %dma = getelementptr inbounds %struct.lima_vm, ptr %call7.i.i, i32 0, i32 4, i32 1
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %4, i32 noundef 4096, ptr noundef %dma, i32 noundef 11712, i32 noundef 260) #5
  %5 = ptrtoint ptr %pd to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %pd, align 4
  %tobool7.not = icmp eq ptr %call.i, null
  br i1 %tobool7.not, label %if.end.err_out0_crit_edge, label %if.end9

if.end.err_out0_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_out0

if.end9:                                          ; preds = %if.end
  %dlbu_cpu = getelementptr inbounds %struct.lima_device, ptr %dev, i32 0, i32 16
  %6 = ptrtoint ptr %dlbu_cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dlbu_cpu, align 8
  %tobool10.not = icmp eq ptr %7, null
  br i1 %tobool10.not, label %if.end9.if.end16_crit_edge, label %if.then11

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then11:                                        ; preds = %if.end9
  %dlbu_dma = getelementptr inbounds %struct.lima_device, ptr %dev, i32 0, i32 17
  %8 = ptrtoint ptr %dlbu_dma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dlbu_dma, align 4
  %arrayidx.i = getelementptr %struct.lima_vm, ptr %call7.i.i, i32 0, i32 5, i32 127
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.then.i, label %if.then11.lima_vm_map_page.exit.thread_crit_edge

if.then11.lima_vm_map_page.exit.thread_crit_edge: ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  br label %lima_vm_map_page.exit.thread

if.then.i:                                        ; preds = %if.then11
  %12 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev1, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %dma.i = getelementptr %struct.lima_vm, ptr %call7.i.i, i32 0, i32 5, i32 127, i32 1
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %15, i32 noundef 32768, ptr noundef %dma.i, i32 noundef 11712, i32 noundef 260) #5
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i.i, ptr %arrayidx.i, align 4
  %tobool11.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool11.not.i, label %err_out1, label %if.end.i

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dma.i, align 8
  %19 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pd, align 4
  %add.ptr.i = getelementptr i32, ptr %20, i32 1016
  %or.i = or i32 %18, 1
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or.i, ptr %add.ptr.i, align 4
  %add.i = add i32 %18, 4096
  %or.1.i = or i32 %add.i, 1
  %arrayidx18.1.i = getelementptr i32, ptr %20, i32 1017
  %22 = ptrtoint ptr %arrayidx18.1.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or.1.i, ptr %arrayidx18.1.i, align 4
  %add.1.i = add i32 %18, 8192
  %or.2.i = or i32 %add.1.i, 1
  %arrayidx18.2.i = getelementptr i32, ptr %20, i32 1018
  %23 = ptrtoint ptr %arrayidx18.2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or.2.i, ptr %arrayidx18.2.i, align 4
  %add.2.i = add i32 %18, 12288
  %or.3.i = or i32 %add.2.i, 1
  %arrayidx18.3.i = getelementptr i32, ptr %20, i32 1019
  %24 = ptrtoint ptr %arrayidx18.3.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or.3.i, ptr %arrayidx18.3.i, align 4
  %add.3.i = add i32 %18, 16384
  %or.4.i = or i32 %add.3.i, 1
  %arrayidx18.4.i = getelementptr i32, ptr %20, i32 1020
  %25 = ptrtoint ptr %arrayidx18.4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or.4.i, ptr %arrayidx18.4.i, align 4
  %add.4.i = add i32 %18, 20480
  %or.5.i = or i32 %add.4.i, 1
  %arrayidx18.5.i = getelementptr i32, ptr %20, i32 1021
  %26 = ptrtoint ptr %arrayidx18.5.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or.5.i, ptr %arrayidx18.5.i, align 4
  %add.5.i = add i32 %18, 24576
  %or.6.i = or i32 %add.5.i, 1
  %arrayidx18.6.i = getelementptr i32, ptr %20, i32 1022
  %27 = ptrtoint ptr %arrayidx18.6.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.6.i, ptr %arrayidx18.6.i, align 4
  %add.6.i = add i32 %18, 28672
  %or.7.i = or i32 %add.6.i, 1
  %arrayidx18.7.i = getelementptr i32, ptr %20, i32 1023
  %28 = ptrtoint ptr %arrayidx18.7.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or.7.i, ptr %arrayidx18.7.i, align 4
  br label %lima_vm_map_page.exit.thread

lima_vm_map_page.exit.thread:                     ; preds = %if.end.i, %if.then11.lima_vm_map_page.exit.thread_crit_edge
  %or22.i = or i32 %9, 479
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx26.i = getelementptr i32, ptr %30, i32 7936
  %31 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or22.i, ptr %arrayidx26.i, align 4
  br label %if.end16

if.end16:                                         ; preds = %lima_vm_map_page.exit.thread, %if.end9.if.end16_crit_edge
  %mm = getelementptr inbounds %struct.lima_vm, ptr %call7.i.i, i32 0, i32 2
  %va_start = getelementptr inbounds %struct.lima_device, ptr %dev, i32 0, i32 14
  %32 = ptrtoint ptr %va_start to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %va_start, align 8
  %va_end = getelementptr inbounds %struct.lima_device, ptr %dev, i32 0, i32 15
  %34 = ptrtoint ptr %va_end to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %va_end, align 8
  %sub = sub i64 %35, %33
  tail call void @drm_mm_init(ptr noundef %mm, i64 noundef %33, i64 noundef %sub) #5
  br label %cleanup23

err_out1:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 8
  %38 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pd, align 4
  %40 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dma, align 8
  tail call void @dma_free_attrs(ptr noundef %37, i32 noundef 4096, ptr noundef %39, i32 noundef %41, i32 noundef 4) #5
  br label %err_out0

err_out0:                                         ; preds = %err_out1, %if.end.err_out0_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup23

cleanup23:                                        ; preds = %err_out0, %if.end16, %entry.cleanup23_crit_edge
  %retval.0 = phi ptr [ null, %err_out0 ], [ %call7.i.i, %if.end16 ], [ null, %entry.cleanup23_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_init(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lima_vm_release(ptr noundef %kref) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mm = getelementptr i8, ptr %kref, i32 4
  tail call void @drm_mm_takedown(ptr noundef %mm) #5
  %bts = getelementptr i8, ptr %kref, i32 168
  %dev = getelementptr i8, ptr %kref, i32 156
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.031 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [128 x %struct.lima_vm_page], ptr %bts, i32 0, i32 %i.031
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %dma = getelementptr inbounds %struct.lima_vm_page, ptr %arrayidx, i32 0, i32 1
  %6 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma, align 4
  tail call void @dma_free_attrs(ptr noundef %5, i32 noundef 32768, ptr noundef nonnull %1, i32 noundef %7, i32 noundef 4) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.031, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  %pd = getelementptr i8, ptr %kref, i32 160
  %8 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pd, align 4
  %tobool8.not = icmp eq ptr %9, null
  br i1 %tobool8.not, label %for.end.if.end16_crit_edge, label %if.then9

for.end.if.end16_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then9:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %dma15 = getelementptr i8, ptr %kref, i32 164
  %14 = ptrtoint ptr %dma15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma15, align 4
  tail call void @dma_free_attrs(ptr noundef %13, i32 noundef 4096, ptr noundef nonnull %9, i32 noundef %15, i32 noundef 4) #5
  br label %if.end16

if.end16:                                         ; preds = %if.then9, %for.end.if.end16_crit_edge
  %add.ptr = getelementptr i8, ptr %kref, i32 -92
  tail call void @kfree(ptr noundef %add.ptr) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_takedown(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lima_vm_print(ptr nocapture noundef readonly %vm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pd1 = getelementptr inbounds %struct.lima_vm, ptr %vm, i32 0, i32 4
  %0 = ptrtoint ptr %pd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %for.inc29.for.body_crit_edge, %entry.for.body_crit_edge
  %i.056 = phi i32 [ %inc30, %for.inc29.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.lima_vm, ptr %vm, i32 0, i32 5, i32 %i.056
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %for.body.for.inc29_crit_edge, label %for.cond11.preheader

for.body.for.inc29_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc29

for.cond11.preheader:                             ; preds = %for.body
  %shl = shl i32 %i.056, 3
  %arrayidx14 = getelementptr i32, ptr %1, i32 %shl
  %4 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx14, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %shl, i32 noundef %5) #9
  br label %for.body17

for.body17:                                       ; preds = %if.end25.for.body17_crit_edge, %for.cond11.preheader
  %k.052 = phi i32 [ 0, %for.cond11.preheader ], [ %inc, %if.end25.for.body17_crit_edge ]
  %pt.151 = phi ptr [ %3, %for.cond11.preheader ], [ %incdec.ptr, %if.end25.for.body17_crit_edge ]
  %incdec.ptr = getelementptr i32, ptr %pt.151, i32 1
  %6 = ptrtoint ptr %pt.151 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pt.151, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool18.not = icmp eq i32 %7, 0
  br i1 %tobool18.not, label %for.body17.if.end25_crit_edge, label %do.end22

for.body17.if.end25_crit_edge:                    ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

do.end22:                                         ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #7
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %k.052, i32 noundef %7) #9
  br label %if.end25

if.end25:                                         ; preds = %do.end22, %for.body17.if.end25_crit_edge
  %inc = add nuw nsw i32 %k.052, 1
  %exitcond.not = icmp eq i32 %inc, 1024
  br i1 %exitcond.not, label %for.end, label %if.end25.for.body17_crit_edge

if.end25.for.body17_crit_edge:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body17

for.end:                                          ; preds = %if.end25
  %add.1 = or i32 %shl, 1
  %arrayidx14.1 = getelementptr i32, ptr %1, i32 %add.1
  %8 = ptrtoint ptr %arrayidx14.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx14.1, align 4
  %call.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %add.1, i32 noundef %9) #9
  br label %for.body17.1

for.body17.1:                                     ; preds = %if.end25.1.for.body17.1_crit_edge, %for.end
  %k.052.1 = phi i32 [ 0, %for.end ], [ %inc.1, %if.end25.1.for.body17.1_crit_edge ]
  %pt.151.1 = phi ptr [ %incdec.ptr, %for.end ], [ %incdec.ptr.1, %if.end25.1.for.body17.1_crit_edge ]
  %incdec.ptr.1 = getelementptr i32, ptr %pt.151.1, i32 1
  %10 = ptrtoint ptr %pt.151.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pt.151.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool18.not.1 = icmp eq i32 %11, 0
  br i1 %tobool18.not.1, label %for.body17.1.if.end25.1_crit_edge, label %do.end22.1

for.body17.1.if.end25.1_crit_edge:                ; preds = %for.body17.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25.1

do.end22.1:                                       ; preds = %for.body17.1
  call void @__sanitizer_cov_trace_pc() #7
  %call24.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %k.052.1, i32 noundef %11) #9
  br label %if.end25.1

if.end25.1:                                       ; preds = %do.end22.1, %for.body17.1.if.end25.1_crit_edge
  %inc.1 = add nuw nsw i32 %k.052.1, 1
  %exitcond.1.not = icmp eq i32 %inc.1, 1024
  br i1 %exitcond.1.not, label %for.end.1, label %if.end25.1.for.body17.1_crit_edge

if.end25.1.for.body17.1_crit_edge:                ; preds = %if.end25.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body17.1

for.end.1:                                        ; preds = %if.end25.1
  %add.2 = or i32 %shl, 2
  %arrayidx14.2 = getelementptr i32, ptr %1, i32 %add.2
  %12 = ptrtoint ptr %arrayidx14.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx14.2, align 4
  %call.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %add.2, i32 noundef %13) #9
  br label %for.body17.2

for.body17.2:                                     ; preds = %if.end25.2.for.body17.2_crit_edge, %for.end.1
  %k.052.2 = phi i32 [ 0, %for.end.1 ], [ %inc.2, %if.end25.2.for.body17.2_crit_edge ]
  %pt.151.2 = phi ptr [ %incdec.ptr.1, %for.end.1 ], [ %incdec.ptr.2, %if.end25.2.for.body17.2_crit_edge ]
  %incdec.ptr.2 = getelementptr i32, ptr %pt.151.2, i32 1
  %14 = ptrtoint ptr %pt.151.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pt.151.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool18.not.2 = icmp eq i32 %15, 0
  br i1 %tobool18.not.2, label %for.body17.2.if.end25.2_crit_edge, label %do.end22.2

for.body17.2.if.end25.2_crit_edge:                ; preds = %for.body17.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25.2

do.end22.2:                                       ; preds = %for.body17.2
  call void @__sanitizer_cov_trace_pc() #7
  %call24.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %k.052.2, i32 noundef %15) #9
  br label %if.end25.2

if.end25.2:                                       ; preds = %do.end22.2, %for.body17.2.if.end25.2_crit_edge
  %inc.2 = add nuw nsw i32 %k.052.2, 1
  %exitcond.2.not = icmp eq i32 %inc.2, 1024
  br i1 %exitcond.2.not, label %for.end.2, label %if.end25.2.for.body17.2_crit_edge

if.end25.2.for.body17.2_crit_edge:                ; preds = %if.end25.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body17.2

for.end.2:                                        ; preds = %if.end25.2
  %add.3 = or i32 %shl, 3
  %arrayidx14.3 = getelementptr i32, ptr %1, i32 %add.3
  %16 = ptrtoint ptr %arrayidx14.3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx14.3, align 4
  %call.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %add.3, i32 noundef %17) #9
  br label %for.body17.3

for.body17.3:                                     ; preds = %if.end25.3.for.body17.3_crit_edge, %for.end.2
  %k.052.3 = phi i32 [ 0, %for.end.2 ], [ %inc.3, %if.end25.3.for.body17.3_crit_edge ]
  %pt.151.3 = phi ptr [ %incdec.ptr.2, %for.end.2 ], [ %incdec.ptr.3, %if.end25.3.for.body17.3_crit_edge ]
  %incdec.ptr.3 = getelementptr i32, ptr %pt.151.3, i32 1
  %18 = ptrtoint ptr %pt.151.3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pt.151.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool18.not.3 = icmp eq i32 %19, 0
  br i1 %tobool18.not.3, label %for.body17.3.if.end25.3_crit_edge, label %do.end22.3

for.body17.3.if.end25.3_crit_edge:                ; preds = %for.body17.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25.3

do.end22.3:                                       ; preds = %for.body17.3
  call void @__sanitizer_cov_trace_pc() #7
  %call24.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %k.052.3, i32 noundef %19) #9
  br label %if.end25.3

if.end25.3:                                       ; preds = %do.end22.3, %for.body17.3.if.end25.3_crit_edge
  %inc.3 = add nuw nsw i32 %k.052.3, 1
  %exitcond.3.not = icmp eq i32 %inc.3, 1024
  br i1 %exitcond.3.not, label %for.end.3, label %if.end25.3.for.body17.3_crit_edge

if.end25.3.for.body17.3_crit_edge:                ; preds = %if.end25.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body17.3

for.end.3:                                        ; preds = %if.end25.3
  %add.4 = or i32 %shl, 4
  %arrayidx14.4 = getelementptr i32, ptr %1, i32 %add.4
  %20 = ptrtoint ptr %arrayidx14.4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx14.4, align 4
  %call.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %add.4, i32 noundef %21) #9
  br label %for.body17.4

for.body17.4:                                     ; preds = %if.end25.4.for.body17.4_crit_edge, %for.end.3
  %k.052.4 = phi i32 [ 0, %for.end.3 ], [ %inc.4, %if.end25.4.for.body17.4_crit_edge ]
  %pt.151.4 = phi ptr [ %incdec.ptr.3, %for.end.3 ], [ %incdec.ptr.4, %if.end25.4.for.body17.4_crit_edge ]
  %incdec.ptr.4 = getelementptr i32, ptr %pt.151.4, i32 1
  %22 = ptrtoint ptr %pt.151.4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pt.151.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool18.not.4 = icmp eq i32 %23, 0
  br i1 %tobool18.not.4, label %for.body17.4.if.end25.4_crit_edge, label %do.end22.4

for.body17.4.if.end25.4_crit_edge:                ; preds = %for.body17.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25.4

do.end22.4:                                       ; preds = %for.body17.4
  call void @__sanitizer_cov_trace_pc() #7
  %call24.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %k.052.4, i32 noundef %23) #9
  br label %if.end25.4

if.end25.4:                                       ; preds = %do.end22.4, %for.body17.4.if.end25.4_crit_edge
  %inc.4 = add nuw nsw i32 %k.052.4, 1
  %exitcond.4.not = icmp eq i32 %inc.4, 1024
  br i1 %exitcond.4.not, label %for.end.4, label %if.end25.4.for.body17.4_crit_edge

if.end25.4.for.body17.4_crit_edge:                ; preds = %if.end25.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body17.4

for.end.4:                                        ; preds = %if.end25.4
  %add.5 = or i32 %shl, 5
  %arrayidx14.5 = getelementptr i32, ptr %1, i32 %add.5
  %24 = ptrtoint ptr %arrayidx14.5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx14.5, align 4
  %call.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %add.5, i32 noundef %25) #9
  br label %for.body17.5

for.body17.5:                                     ; preds = %if.end25.5.for.body17.5_crit_edge, %for.end.4
  %k.052.5 = phi i32 [ 0, %for.end.4 ], [ %inc.5, %if.end25.5.for.body17.5_crit_edge ]
  %pt.151.5 = phi ptr [ %incdec.ptr.4, %for.end.4 ], [ %incdec.ptr.5, %if.end25.5.for.body17.5_crit_edge ]
  %incdec.ptr.5 = getelementptr i32, ptr %pt.151.5, i32 1
  %26 = ptrtoint ptr %pt.151.5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pt.151.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool18.not.5 = icmp eq i32 %27, 0
  br i1 %tobool18.not.5, label %for.body17.5.if.end25.5_crit_edge, label %do.end22.5

for.body17.5.if.end25.5_crit_edge:                ; preds = %for.body17.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25.5

do.end22.5:                                       ; preds = %for.body17.5
  call void @__sanitizer_cov_trace_pc() #7
  %call24.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %k.052.5, i32 noundef %27) #9
  br label %if.end25.5

if.end25.5:                                       ; preds = %do.end22.5, %for.body17.5.if.end25.5_crit_edge
  %inc.5 = add nuw nsw i32 %k.052.5, 1
  %exitcond.5.not = icmp eq i32 %inc.5, 1024
  br i1 %exitcond.5.not, label %for.end.5, label %if.end25.5.for.body17.5_crit_edge

if.end25.5.for.body17.5_crit_edge:                ; preds = %if.end25.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body17.5

for.end.5:                                        ; preds = %if.end25.5
  %add.6 = or i32 %shl, 6
  %arrayidx14.6 = getelementptr i32, ptr %1, i32 %add.6
  %28 = ptrtoint ptr %arrayidx14.6 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx14.6, align 4
  %call.6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %add.6, i32 noundef %29) #9
  br label %for.body17.6

for.body17.6:                                     ; preds = %if.end25.6.for.body17.6_crit_edge, %for.end.5
  %k.052.6 = phi i32 [ 0, %for.end.5 ], [ %inc.6, %if.end25.6.for.body17.6_crit_edge ]
  %pt.151.6 = phi ptr [ %incdec.ptr.5, %for.end.5 ], [ %incdec.ptr.6, %if.end25.6.for.body17.6_crit_edge ]
  %incdec.ptr.6 = getelementptr i32, ptr %pt.151.6, i32 1
  %30 = ptrtoint ptr %pt.151.6 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pt.151.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool18.not.6 = icmp eq i32 %31, 0
  br i1 %tobool18.not.6, label %for.body17.6.if.end25.6_crit_edge, label %do.end22.6

for.body17.6.if.end25.6_crit_edge:                ; preds = %for.body17.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25.6

do.end22.6:                                       ; preds = %for.body17.6
  call void @__sanitizer_cov_trace_pc() #7
  %call24.6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %k.052.6, i32 noundef %31) #9
  br label %if.end25.6

if.end25.6:                                       ; preds = %do.end22.6, %for.body17.6.if.end25.6_crit_edge
  %inc.6 = add nuw nsw i32 %k.052.6, 1
  %exitcond.6.not = icmp eq i32 %inc.6, 1024
  br i1 %exitcond.6.not, label %for.end.6, label %if.end25.6.for.body17.6_crit_edge

if.end25.6.for.body17.6_crit_edge:                ; preds = %if.end25.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body17.6

for.end.6:                                        ; preds = %if.end25.6
  %add.7 = or i32 %shl, 7
  %arrayidx14.7 = getelementptr i32, ptr %1, i32 %add.7
  %32 = ptrtoint ptr %arrayidx14.7 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx14.7, align 4
  %call.7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %add.7, i32 noundef %33) #9
  br label %for.body17.7

for.body17.7:                                     ; preds = %if.end25.7.for.body17.7_crit_edge, %for.end.6
  %k.052.7 = phi i32 [ 0, %for.end.6 ], [ %inc.7, %if.end25.7.for.body17.7_crit_edge ]
  %pt.151.7 = phi ptr [ %incdec.ptr.6, %for.end.6 ], [ %incdec.ptr.7, %if.end25.7.for.body17.7_crit_edge ]
  %incdec.ptr.7 = getelementptr i32, ptr %pt.151.7, i32 1
  %34 = ptrtoint ptr %pt.151.7 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pt.151.7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool18.not.7 = icmp eq i32 %35, 0
  br i1 %tobool18.not.7, label %for.body17.7.if.end25.7_crit_edge, label %do.end22.7

for.body17.7.if.end25.7_crit_edge:                ; preds = %for.body17.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25.7

do.end22.7:                                       ; preds = %for.body17.7
  call void @__sanitizer_cov_trace_pc() #7
  %call24.7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %k.052.7, i32 noundef %35) #9
  br label %if.end25.7

if.end25.7:                                       ; preds = %do.end22.7, %for.body17.7.if.end25.7_crit_edge
  %inc.7 = add nuw nsw i32 %k.052.7, 1
  %exitcond.7.not = icmp eq i32 %inc.7, 1024
  br i1 %exitcond.7.not, label %if.end25.7.for.inc29_crit_edge, label %if.end25.7.for.body17.7_crit_edge

if.end25.7.for.body17.7_crit_edge:                ; preds = %if.end25.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body17.7

if.end25.7.for.inc29_crit_edge:                   ; preds = %if.end25.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc29

for.inc29:                                        ; preds = %if.end25.7.for.inc29_crit_edge, %for.body.for.inc29_crit_edge
  %inc30 = add nuw nsw i32 %i.056, 1
  %exitcond59.not = icmp eq i32 %inc30, 128
  br i1 %exitcond59.not, label %for.inc29.cleanup_crit_edge, label %for.inc29.for.body_crit_edge

for.inc29.for.body_crit_edge:                     ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc29.cleanup_crit_edge:                      ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.inc29.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lima_vm_map_bo(ptr noundef %vm, ptr noundef %bo, i32 noundef %pageoff) local_unnamed_addr #0 align 64 {
entry:
  %sg_iter = alloca %struct.sg_dma_page_iter, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sg_iter) #5
  %0 = getelementptr inbounds %struct.sg_page_iter, ptr %sg_iter, i32 0, i32 1
  %lock = getelementptr inbounds %struct.lima_bo, ptr %bo, i32 0, i32 1
  %1 = call ptr @memset(ptr %sg_iter, i32 255, i32 16)
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %va.i = getelementptr inbounds %struct.lima_bo, ptr %bo, i32 0, i32 2
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %bo_va.0.in.i = phi ptr [ %va.i, %entry ], [ %bo_va.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %bo_va.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %bo_va.0.i = load ptr, ptr %bo_va.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %bo_va.0.i, %va.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %vm2.i = getelementptr inbounds %struct.lima_bo_va, ptr %bo_va.0.i, i32 0, i32 3
  %3 = ptrtoint ptr %vm2.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vm2.i, align 8
  %cmp3.i = icmp eq ptr %4, %vm
  br i1 %cmp3.i, label %lima_vm_bo_find.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

lima_vm_bo_find.exit:                             ; preds = %for.body.i
  %tobool.not = icmp eq ptr %bo_va.0.i, null
  br i1 %tobool.not, label %lima_vm_bo_find.exit.cleanup_crit_edge, label %if.end

lima_vm_bo_find.exit.cleanup_crit_edge:           ; preds = %lima_vm_bo_find.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lima_vm_bo_find.exit
  tail call void @mutex_lock_nested(ptr noundef %vm, i32 noundef 0) #5
  %start = getelementptr inbounds %struct.lima_bo_va, ptr %bo_va.0.i, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %start, align 8
  %shl = shl i32 %pageoff, 12
  %7 = trunc i64 %6 to i32
  %conv2 = add i32 %shl, %7
  %sgt = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %bo, i32 0, i32 7
  %8 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sgt, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %nents = getelementptr inbounds %struct.sg_table, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nents, align 4
  call void @__sg_page_iter_start(ptr noundef nonnull %sg_iter, ptr noundef %11, i32 noundef %13, i32 noundef %pageoff) #5
  %call761 = call zeroext i1 @__sg_page_iter_dma_next(ptr noundef nonnull %sg_iter) #5
  br i1 %call761, label %for.body.lr.ph, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

for.body.lr.ph:                                   ; preds = %if.end
  %dev.i = getelementptr inbounds %struct.lima_vm, ptr %vm, i32 0, i32 3
  %pd16.i = getelementptr inbounds %struct.lima_vm, ptr %vm, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %if.end13.for.body_crit_edge, %for.body.lr.ph
  %offset.062 = phi i32 [ 0, %for.body.lr.ph ], [ %add14, %if.end13.for.body_crit_edge ]
  %14 = ptrtoint ptr %sg_iter to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sg_iter, align 4
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_address.i, align 4
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %0, align 4
  %shl.i = shl i32 %19, 12
  %add.i = add i32 %shl.i, %17
  %add9 = add i32 %offset.062, %conv2
  %shr.i = lshr i32 %add9, 25
  %and.i = lshr i32 %add9, 12
  %shr1.i = and i32 %and.i, 8191
  %arrayidx.i = getelementptr %struct.lima_vm, ptr %vm, i32 0, i32 5, i32 %shr.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.then.i, label %for.body.if.end13_crit_edge

for.body.if.end13_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then.i:                                        ; preds = %for.body
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  %dma.i = getelementptr %struct.lima_vm, ptr %vm, i32 0, i32 5, i32 %shr.i, i32 1
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %25, i32 noundef 32768, ptr noundef %dma.i, i32 noundef 11712, i32 noundef 260) #5
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i.i, ptr %arrayidx.i, align 4
  %tobool11.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool11.not.i, label %err_out1, label %if.end.i

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dma.i, align 4
  %29 = ptrtoint ptr %pd16.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pd16.i, align 4
  %shl.i46 = shl nuw nsw i32 %shr.i, 3
  %add.ptr.i = getelementptr i32, ptr %30, i32 %shl.i46
  %or.i = or i32 %28, 1
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or.i, ptr %add.ptr.i, align 4
  %add.i47 = add i32 %28, 4096
  %or.1.i = or i32 %add.i47, 1
  %arrayidx18.1.i = getelementptr i32, ptr %add.ptr.i, i32 1
  %32 = ptrtoint ptr %arrayidx18.1.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or.1.i, ptr %arrayidx18.1.i, align 4
  %add.1.i = add i32 %28, 8192
  %or.2.i = or i32 %add.1.i, 1
  %arrayidx18.2.i = getelementptr i32, ptr %add.ptr.i, i32 2
  %33 = ptrtoint ptr %arrayidx18.2.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or.2.i, ptr %arrayidx18.2.i, align 4
  %add.2.i = add i32 %28, 12288
  %or.3.i = or i32 %add.2.i, 1
  %arrayidx18.3.i = getelementptr i32, ptr %add.ptr.i, i32 3
  %34 = ptrtoint ptr %arrayidx18.3.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or.3.i, ptr %arrayidx18.3.i, align 4
  %add.3.i = add i32 %28, 16384
  %or.4.i = or i32 %add.3.i, 1
  %arrayidx18.4.i = getelementptr i32, ptr %add.ptr.i, i32 4
  %35 = ptrtoint ptr %arrayidx18.4.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or.4.i, ptr %arrayidx18.4.i, align 4
  %add.4.i = add i32 %28, 20480
  %or.5.i = or i32 %add.4.i, 1
  %arrayidx18.5.i = getelementptr i32, ptr %add.ptr.i, i32 5
  %36 = ptrtoint ptr %arrayidx18.5.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or.5.i, ptr %arrayidx18.5.i, align 4
  %add.5.i = add i32 %28, 24576
  %or.6.i = or i32 %add.5.i, 1
  %arrayidx18.6.i = getelementptr i32, ptr %add.ptr.i, i32 6
  %37 = ptrtoint ptr %arrayidx18.6.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or.6.i, ptr %arrayidx18.6.i, align 4
  %add.6.i = add i32 %28, 28672
  %or.7.i = or i32 %add.6.i, 1
  %arrayidx18.7.i = getelementptr i32, ptr %add.ptr.i, i32 7
  %38 = ptrtoint ptr %arrayidx18.7.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or.7.i, ptr %arrayidx18.7.i, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.end.i, %for.body.if.end13_crit_edge
  %or22.i = or i32 %add.i, 479
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx26.i = getelementptr i32, ptr %40, i32 %shr1.i
  %41 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or22.i, ptr %arrayidx26.i, align 4
  %add14 = add i32 %offset.062, 4096
  %call7 = call zeroext i1 @__sg_page_iter_dma_next(ptr noundef nonnull %sg_iter) #5
  br i1 %call7, label %if.end13.for.body_crit_edge, label %if.end13.cleanup.sink.split_crit_edge

if.end13.cleanup.sink.split_crit_edge:            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end13.for.body_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

err_out1:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset.062)
  %tobool17.not = icmp eq i32 %offset.062, 0
  br i1 %tobool17.not, label %err_out1.cleanup.sink.split_crit_edge, label %if.then18

err_out1.cleanup.sink.split_crit_edge:            ; preds = %err_out1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.then18:                                        ; preds = %err_out1
  %sub = add i32 %add9, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2, i32 %sub)
  %cmp.not6.i = icmp ugt i32 %conv2, %sub
  br i1 %cmp.not6.i, label %if.then18.cleanup.sink.split_crit_edge, label %if.then18.for.body.i54_crit_edge

if.then18.for.body.i54_crit_edge:                 ; preds = %if.then18
  br label %for.body.i54

if.then18.cleanup.sink.split_crit_edge:           ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

for.body.i54:                                     ; preds = %for.body.i54.for.body.i54_crit_edge, %if.then18.for.body.i54_crit_edge
  %addr.07.i = phi i32 [ %add.i52, %for.body.i54.for.body.i54_crit_edge ], [ %conv2, %if.then18.for.body.i54_crit_edge ]
  %shr.i48 = lshr i32 %addr.07.i, 25
  %and.i49 = lshr i32 %addr.07.i, 12
  %shr1.i50 = and i32 %and.i49, 8191
  %arrayidx.i51 = getelementptr %struct.lima_vm, ptr %vm, i32 0, i32 5, i32 %shr.i48
  %42 = ptrtoint ptr %arrayidx.i51 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i51, align 4
  %arrayidx2.i = getelementptr i32, ptr %43, i32 %shr1.i50
  %44 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %arrayidx2.i, align 4
  %add.i52 = add i32 %addr.07.i, 4096
  %cmp.not.i53 = icmp ugt i32 %add.i52, %sub
  br i1 %cmp.not.i53, label %for.body.i54.cleanup.sink.split_crit_edge, label %for.body.i54.for.body.i54_crit_edge

for.body.i54.for.body.i54_crit_edge:              ; preds = %for.body.i54
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i54

for.body.i54.cleanup.sink.split_crit_edge:        ; preds = %for.body.i54
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.body.i54.cleanup.sink.split_crit_edge, %if.then18.cleanup.sink.split_crit_edge, %err_out1.cleanup.sink.split_crit_edge, %if.end13.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end.cleanup.sink.split_crit_edge ], [ -12, %if.then18.cleanup.sink.split_crit_edge ], [ -12, %err_out1.cleanup.sink.split_crit_edge ], [ -12, %for.body.i54.cleanup.sink.split_crit_edge ], [ 0, %if.end13.cleanup.sink.split_crit_edge ]
  call void @mutex_unlock(ptr noundef %vm) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lima_vm_bo_find.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %lima_vm_bo_find.exit.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ -2, %for.cond.i.cleanup_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sg_iter) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mm_insert_node_in_range(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

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
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !11, !12}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @lima_vm_create.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/lima/lima_vm.c", i32 209, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/lima/lima_vm.c", i32 271, i32 4}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @lima_vm_print._entry, !4, !"_entry", i1 false, i1 false}
!8 = !{ptr @lima_vm_print._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/lima/lima_vm.c", i32 277, i32 6}
!11 = !{ptr @lima_vm_print._entry.4, !10, !"_entry", i1 false, i1 false}
!12 = !{ptr @lima_vm_print._entry_ptr.6, !10, !"_entry_ptr", i1 false, i1 false}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
