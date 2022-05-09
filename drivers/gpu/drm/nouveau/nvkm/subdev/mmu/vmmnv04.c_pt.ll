; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmnv04.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmnv04.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_vmm_desc = type { i32, i8, i8, i32, ptr }
%struct.nvkm_vmm_page = type { i8, ptr, i8 }
%struct.nvkm_vmm_desc_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_vmm = type { ptr, ptr, ptr, i32, %struct.kref, %struct.mutex, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_root, %struct.rb_root, i8, [51 x %struct.atomic_t], i32, ptr, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.rb_root = type { ptr }
%struct.nvkm_mmu = type { ptr, %struct.nvkm_subdev, i8, i32, [4 x %struct.anon.137], i32, [16 x %struct.anon.138], ptr, %struct.anon.139, %struct.anon.139, %struct.mutex, %struct.nvkm_device_oclass }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.137 = type { i8, i64 }
%struct.anon.138 = type { i8, i8 }
%struct.anon.139 = type { %struct.mutex, %struct.list_head }
%struct.nvkm_device_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.136, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.anon.136 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_mmu_pt = type { %union.anon, ptr, i8, i16, i64, %struct.list_head }
%union.anon = type { ptr }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.nvkm_memory_ptrs = type { ptr, ptr }
%struct.nvkm_vmm_map = type { ptr, i64, ptr, ptr, ptr, ptr, i64, ptr, ptr, i64, i64, i64 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@nv04_vmm_valid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 88, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: %s: args\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nv04_vmm_valid\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmnv04.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nv04_vmm_valid._entry_ptr = internal global ptr @nv04_vmm_valid._entry, section ".printk_index", align 4
@nv04_vmm_desc_12 = internal constant { [2 x %struct.nvkm_vmm_desc], [32 x i8] } { [2 x %struct.nvkm_vmm_desc] [%struct.nvkm_vmm_desc { i32 1, i8 15, i8 4, i32 4096, ptr @nv04_vmm_desc_pgt }, %struct.nvkm_vmm_desc zeroinitializer], [32 x i8] zeroinitializer }, align 32
@nv04_vmm = internal constant { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [2 x %struct.nvkm_vmm_page] }, [32 x i8] } { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [2 x %struct.nvkm_vmm_page] } { ptr null, ptr null, ptr null, ptr @nv04_vmm_valid, ptr null, ptr null, ptr null, i64 0, [2 x %struct.nvkm_vmm_page] [%struct.nvkm_vmm_page { i8 12, ptr @nv04_vmm_desc_12, i8 4 }, %struct.nvkm_vmm_page zeroinitializer] }, [32 x i8] zeroinitializer }, align 32
@nv04_vmm_desc_pgt = internal constant { %struct.nvkm_vmm_desc_func, [56 x i8] } { %struct.nvkm_vmm_desc_func { ptr null, ptr @nv04_vmm_pgt_unmap, ptr null, ptr null, ptr null, ptr @nv04_vmm_pgt_dma, ptr @nv04_vmm_pgt_sgl, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@___asan_gen_.6 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 88, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"nv04_vmm_desc_12\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 74, i32 1 }
@___asan_gen_.27 = private unnamed_addr constant [9 x i8] c"nv04_vmm\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 93, i32 1 }
@___asan_gen_.30 = private unnamed_addr constant [18 x i8] c"nv04_vmm_desc_pgt\00", align 1
@___asan_gen_.31 = private constant [53 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmnv04.c\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 67, i32 1 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @nv04_vmm_valid._entry, ptr @nv04_vmm_valid._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @nv04_vmm_desc_12, ptr @nv04_vmm, ptr @nv04_vmm_desc_pgt], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_vmm_valid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_vmm_desc_12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_vmm to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_vmm_desc_pgt to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv04_vmm_valid(ptr nocapture noundef readonly %vmm, ptr nocapture readnone %argv, i32 noundef %argc, ptr nocapture readnone %map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %argc)
  %cmp1 = icmp eq i32 %argc, 0
  br i1 %cmp1, label %entry.if.end17_crit_edge, label %do.body

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

do.body:                                          ; preds = %entry
  %debug = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 3
  %0 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp3 = icmp ugt i32 %1, 3
  br i1 %cmp3, label %do.end, label %do.body.if.end17_crit_edge

do.body.if.end17_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %mmu = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 1
  %2 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmu, align 4
  %device = getelementptr inbounds %struct.nvkm_mmu, ptr %3, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_mmu, ptr %3, i32 0, i32 1, i32 4
  %name10 = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 2
  %8 = ptrtoint ptr %name10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name10, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str, ptr noundef %name, ptr noundef %9) #7
  br label %if.end17

if.end17:                                         ; preds = %do.end, %do.body.if.end17_crit_edge, %entry.if.end17_crit_edge
  %_ret.0 = phi i32 [ -38, %do.body.if.end17_crit_edge ], [ -38, %do.end ], [ 0, %entry.if.end17_crit_edge ]
  ret i32 %_ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv04_vmm_new_(ptr noundef %func, ptr noundef %mmu, i32 noundef %pd_header, i1 noundef zeroext %managed, i64 noundef %addr, i64 noundef %size, ptr nocapture readnone %argv, i32 noundef %argc, ptr noundef %key, ptr noundef %name, ptr noundef %pvmm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nvkm_vmm_new_(ptr noundef %func, ptr noundef %mmu, i32 noundef %pd_header, i1 noundef zeroext %managed, i64 noundef %addr, i64 noundef %size, ptr noundef %key, ptr noundef %name, ptr noundef %pvmm) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %argc)
  %cmp2 = icmp eq i32 %argc, 0
  %spec.select = select i1 %cmp2, i32 0, i32 -38
  %retval.0 = select i1 %tobool1.not, i32 %spec.select, i32 %call
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_vmm_new_(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv04_vmm_new(ptr noundef %mmu, i1 noundef zeroext %managed, i64 noundef %addr, i64 noundef %size, ptr nocapture noundef readnone %argv, i32 noundef %argc, ptr noundef %key, ptr noundef %name, ptr nocapture noundef writeonly %pvmm) local_unnamed_addr #0 align 64 {
entry:
  %vmm = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vmm) #4
  %0 = ptrtoint ptr %vmm to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %vmm, align 4, !annotation !23
  %call.i = call i32 @nvkm_vmm_new_(ptr noundef nonnull @nv04_vmm, ptr noundef %mmu, i32 noundef 8, i1 noundef zeroext %managed, i64 noundef %addr, i64 noundef %size, ptr noundef %key, ptr noundef %name, ptr noundef nonnull %vmm) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %argc)
  %cmp2.i = icmp eq i32 %argc, 0
  %spec.select.i = select i1 %cmp2.i, i32 0, i32 -38
  %retval.0.i = select i1 %tobool1.not.i, i32 %spec.select.i, i32 %call.i
  %1 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vmm, align 4
  %3 = ptrtoint ptr %pvmm to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %pvmm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool1.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool1.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %pd = getelementptr inbounds %struct.nvkm_vmm, ptr %2, i32 0, i32 8
  %4 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pd, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %memory = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %memory, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %acquire = getelementptr inbounds %struct.nvkm_memory_func, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %acquire to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %acquire, align 4
  %call2 = call ptr %13(ptr noundef %9) #4
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %9, i32 0, i32 1
  %14 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ptrs, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wr32, align 4
  call void %17(ptr noundef %9, i64 noundef 0, i32 noundef 135229) #4
  %18 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ptrs, align 4
  %wr324 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %wr324 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wr324, align 4
  %22 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vmm, align 4
  %limit = getelementptr inbounds %struct.nvkm_vmm, ptr %23, i32 0, i32 7
  %24 = ptrtoint ptr %limit to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %limit, align 8
  %26 = trunc i64 %25 to i32
  %conv = add i32 %26, -1
  call void %21(ptr noundef %9, i64 noundef 4, i32 noundef %conv) #4
  %27 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %9, align 4
  %release = getelementptr inbounds %struct.nvkm_memory_func, ptr %28, i32 0, i32 8
  %29 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %release, align 4
  call void %30(ptr noundef %9) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vmm) #4
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv04_vmm_pgt_unmap(ptr nocapture noundef readnone %vmm, ptr nocapture noundef readonly %pt, i32 noundef %ptei, i32 noundef %ptes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %ptei, 2
  %add = add i32 %mul, 8
  %base = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %pt, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %base, align 2
  %conv = zext i16 %1 to i32
  %add3 = add i32 %add, %conv
  %memory = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %pt, i32 0, i32 1
  %2 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %memory, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %acquire = getelementptr inbounds %struct.nvkm_memory_func, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %acquire to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %acquire, align 4
  %call = tail call ptr %7(ptr noundef %3) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.cond.preheader, label %if.else, !prof !24

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ptes)
  %tobool22.not53 = icmp eq i32 %ptes, 0
  br i1 %tobool22.not53, label %for.cond.preheader.if.end28_crit_edge, label %for.body.preheader

for.cond.preheader.if.end28_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28

for.body.preheader:                               ; preds = %for.cond.preheader
  %conv4 = zext i32 %add3 to i64
  %conv5 = zext i32 %ptes to i64
  br label %for.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %shl = shl i32 %ptes, 2
  %shr = lshr i32 %add3, 2
  %arrayidx18 = getelementptr i32, ptr %call, i32 %shr
  tail call void @mmioset(ptr noundef %arrayidx18, i32 noundef 0, i32 noundef %shl) #4
  br label %if.end28

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %_c.155 = phi i64 [ %dec26, %for.body.for.body_crit_edge ], [ %conv5, %for.body.preheader ]
  %_a.054 = phi i64 [ %add27, %for.body.for.body_crit_edge ], [ %conv4, %for.body.preheader ]
  %8 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %memory, align 4
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ptrs, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wr32, align 4
  tail call void %13(ptr noundef %9, i64 noundef %_a.054, i32 noundef 0) #4
  %dec26 = add nsw i64 %_c.155, -1
  %add27 = add nuw nsw i64 %_a.054, 4
  %tobool22.not = icmp eq i64 %dec26, 0
  br i1 %tobool22.not, label %for.body.if.end28_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.if.end28_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28

if.end28:                                         ; preds = %for.body.if.end28_crit_edge, %if.else, %for.cond.preheader.if.end28_crit_edge
  %14 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %memory, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %release = getelementptr inbounds %struct.nvkm_memory_func, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %release, align 4
  tail call void %19(ptr noundef %15) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv04_vmm_pgt_dma(ptr nocapture noundef readnone %vmm, ptr nocapture noundef readonly %pt, i32 noundef %ptei, i32 noundef %ptes, ptr nocapture noundef %map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %memory = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %pt, i32 0, i32 1
  %0 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %memory, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %acquire = getelementptr inbounds %struct.nvkm_memory_func, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %acquire to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %acquire, align 4
  %call = tail call ptr %5(ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ptes)
  %tobool.not18 = icmp eq i32 %ptes, 0
  br i1 %tobool.not18, label %entry.while.end_crit_edge, label %do.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

do.body.lr.ph:                                    ; preds = %entry
  %dma = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 4
  %base = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %pt, i32 0, i32 3
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  %ptei.addr.020 = phi i32 [ %ptei, %do.body.lr.ph ], [ %inc, %do.body.do.body_crit_edge ]
  %ptes.addr.019 = phi i32 [ %ptes, %do.body.lr.ph ], [ %dec, %do.body.do.body_crit_edge ]
  %dec = add i32 %ptes.addr.019, -1
  %inc = add i32 %ptei.addr.020, 1
  %mul = shl i32 %ptei.addr.020, 2
  %add = add i32 %mul, 8
  %6 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma, align 8
  %incdec.ptr = getelementptr i32, ptr %7, i32 1
  store ptr %incdec.ptr, ptr %dma, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %or = or i32 %9, 3
  %10 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %memory, align 4
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ptrs, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wr32, align 4
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %base, align 2
  %conv = zext i16 %17 to i32
  %add5 = add i32 %add, %conv
  %conv6 = zext i32 %add5 to i64
  tail call void %15(ptr noundef %11, i64 noundef %conv6, i32 noundef %or) #4
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %do.body.while.end_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.body.while.end_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %do.body.while.end_crit_edge, %entry.while.end_crit_edge
  %18 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %memory, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %release = getelementptr inbounds %struct.nvkm_memory_func, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %release, align 4
  tail call void %23(ptr noundef %19) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv04_vmm_pgt_sgl(ptr nocapture noundef readnone %vmm, ptr nocapture noundef readonly %pt, i32 noundef %ptei, i32 noundef %ptes, ptr nocapture noundef %map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %memory = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %pt, i32 0, i32 1
  %0 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %memory, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %acquire = getelementptr inbounds %struct.nvkm_memory_func, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %acquire to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %acquire, align 4
  %call = tail call ptr %5(ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ptes)
  %tobool.not60 = icmp eq i32 %ptes, 0
  br i1 %tobool.not60, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %sgl = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 3
  %off = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 6
  %page = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 7
  %base.i = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %pt, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %nv04_vmm_pgt_pte.exit.while.body_crit_edge, %while.body.lr.ph
  %ptei.addr.064 = phi i32 [ %ptei, %while.body.lr.ph ], [ %conv23, %nv04_vmm_pgt_pte.exit.while.body_crit_edge ]
  %ptes.addr.061 = phi i32 [ %ptes, %while.body.lr.ph ], [ %conv26, %nv04_vmm_pgt_pte.exit.while.body_crit_edge ]
  %6 = ptrtoint ptr %sgl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sgl, align 4
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_length, align 4
  %conv = zext i32 %9 to i64
  %10 = ptrtoint ptr %off to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %off, align 8
  %sub = sub i64 %conv, %11
  %12 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %page, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 4
  %sh_prom = zext i8 %15 to i64
  %shr = lshr i64 %sub, %sh_prom
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %7, i32 0, i32 3
  %16 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_address, align 4
  %conv6 = zext i32 %ptes.addr.061 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shr, i64 %conv6)
  %cmp = icmp ugt i64 %shr, %conv6
  br i1 %cmp, label %do.body19.thread, label %do.body19

do.body19.thread:                                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %conv2 = zext i8 %15 to i32
  %shl = shl i32 %ptes.addr.061, %conv2
  %conv11 = zext i32 %shl to i64
  %add13 = add i64 %11, %conv11
  %18 = ptrtoint ptr %off to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %add13, ptr %off, align 8
  br label %do.body.lr.ph.i

do.body19:                                        ; preds = %while.body
  %19 = ptrtoint ptr %off to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 0, ptr %off, align 8
  %call17 = tail call ptr @sg_next(ptr noundef %7) #4
  %20 = ptrtoint ptr %sgl to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call17, ptr %sgl, align 4
  %extract.t55 = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %extract.t55)
  %tobool.not1.i = icmp eq i32 %extract.t55, 0
  br i1 %tobool.not1.i, label %do.body19.nv04_vmm_pgt_pte.exit_crit_edge, label %do.body19.do.body.lr.ph.i_crit_edge

do.body19.do.body.lr.ph.i_crit_edge:              ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.lr.ph.i

do.body19.nv04_vmm_pgt_pte.exit_crit_edge:        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #6
  br label %nv04_vmm_pgt_pte.exit

do.body.lr.ph.i:                                  ; preds = %do.body19.do.body.lr.ph.i_crit_edge, %do.body19.thread
  %_ptes.0.off058 = phi i32 [ %ptes.addr.061, %do.body19.thread ], [ %extract.t55, %do.body19.do.body.lr.ph.i_crit_edge ]
  %21 = trunc i64 %11 to i32
  %22 = add i32 %17, %21
  %conv.i = or i32 %22, 3
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %ptei.addr.04.i = phi i32 [ %ptei.addr.064, %do.body.lr.ph.i ], [ %inc.i, %do.body.i.do.body.i_crit_edge ]
  %ptes.addr.03.i = phi i32 [ %_ptes.0.off058, %do.body.lr.ph.i ], [ %dec.i, %do.body.i.do.body.i_crit_edge ]
  %data.02.i = phi i32 [ %conv.i, %do.body.lr.ph.i ], [ %add8.i, %do.body.i.do.body.i_crit_edge ]
  %dec.i = add i32 %ptes.addr.03.i, -1
  %inc.i = add i32 %ptei.addr.04.i, 1
  %mul.i = shl i32 %ptei.addr.04.i, 2
  %add.i = add i32 %mul.i, 8
  %23 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %memory, align 4
  %ptrs.i = getelementptr inbounds %struct.nvkm_memory, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %ptrs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ptrs.i, align 4
  %wr32.i = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %wr32.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wr32.i, align 4
  %29 = ptrtoint ptr %base.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %base.i, align 2
  %conv3.i = zext i16 %30 to i32
  %add4.i = add i32 %add.i, %conv3.i
  %conv5.i = zext i32 %add4.i to i64
  tail call void %28(ptr noundef %24, i64 noundef %conv5.i, i32 noundef %data.02.i) #4
  %add8.i = add i32 %data.02.i, 4096
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.body.i.nv04_vmm_pgt_pte.exit_crit_edge, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

do.body.i.nv04_vmm_pgt_pte.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nv04_vmm_pgt_pte.exit

nv04_vmm_pgt_pte.exit:                            ; preds = %do.body.i.nv04_vmm_pgt_pte.exit_crit_edge, %do.body19.nv04_vmm_pgt_pte.exit_crit_edge
  %_ptes.0.off059 = phi i32 [ 0, %do.body19.nv04_vmm_pgt_pte.exit_crit_edge ], [ %_ptes.0.off058, %do.body.i.nv04_vmm_pgt_pte.exit_crit_edge ]
  %conv23 = add i32 %_ptes.0.off059, %ptei.addr.064
  %conv26 = sub i32 %ptes.addr.061, %_ptes.0.off059
  %tobool.not = icmp eq i32 %conv26, 0
  br i1 %tobool.not, label %nv04_vmm_pgt_pte.exit.while.end_crit_edge, label %nv04_vmm_pgt_pte.exit.while.body_crit_edge

nv04_vmm_pgt_pte.exit.while.body_crit_edge:       ; preds = %nv04_vmm_pgt_pte.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

nv04_vmm_pgt_pte.exit.while.end_crit_edge:        ; preds = %nv04_vmm_pgt_pte.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %nv04_vmm_pgt_pte.exit.while.end_crit_edge, %entry.while.end_crit_edge
  %31 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %memory, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %release = getelementptr inbounds %struct.nvkm_memory_func, ptr %34, i32 0, i32 8
  %35 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %release, align 4
  tail call void %36(ptr noundef %32) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmnv04.c", i32 88, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nv04_vmm_valid._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @nv04_vmm_valid._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @nv04_vmm, !9, !"nv04_vmm", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmnv04.c", i32 93, i32 1}
!10 = !{ptr @nv04_vmm_desc_12, !11, !"nv04_vmm_desc_12", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmnv04.c", i32 74, i32 1}
!12 = !{ptr @nv04_vmm_desc_pgt, !13, !"nv04_vmm_desc_pgt", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmnv04.c", i32 67, i32 1}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{!"auto-init"}
!24 = !{!"branch_weights", i32 1, i32 2000}
