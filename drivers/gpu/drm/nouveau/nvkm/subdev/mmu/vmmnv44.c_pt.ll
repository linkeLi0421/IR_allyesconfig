; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmnv44.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmnv44.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_vmm_desc = type { i32, i8, i8, i32, ptr }
%struct.nvkm_vmm_page = type { i8, ptr, i8 }
%struct.nvkm_vmm_desc_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_mmu = type { ptr, %struct.nvkm_subdev, i8, i32, [4 x %struct.anon.137], i32, [16 x %struct.anon.138], ptr, %struct.anon.139, %struct.anon.139, %struct.mutex, %struct.nvkm_device_oclass }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.anon.137 = type { i8, i64 }
%struct.anon.138 = type { i8, i8 }
%struct.anon.139 = type { %struct.mutex, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_device_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.136, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.anon.136 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_vmm = type { ptr, ptr, ptr, i32, %struct.kref, %struct.mutex, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_root, %struct.rb_root, i8, [51 x %struct.atomic_t], i32, ptr, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rb_root = type { ptr }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nvkm_timer = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.nvkm_mmu_pt = type { %union.anon, ptr, i8, i16, i64, %struct.list_head }
%union.anon = type { ptr }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.nvkm_memory_ptrs = type { ptr, ptr }
%struct.nvkm_vmm_map = type { ptr, i64, ptr, ptr, ptr, ptr, i64, ptr, ptr, i64, i64, i64 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@nv44_vmm_new._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 225, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: unable to allocate dummy pages\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nv44_vmm_new\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmnv44.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nv44_vmm_new._entry_ptr = internal global ptr @nv44_vmm_new._entry, section ".printk_index", align 4
@nv44_vmm_desc_12 = internal constant { [2 x %struct.nvkm_vmm_desc], [32 x i8] } { [2 x %struct.nvkm_vmm_desc] [%struct.nvkm_vmm_desc { i32 1, i8 17, i8 4, i32 524288, ptr @nv44_vmm_desc_pgt }, %struct.nvkm_vmm_desc zeroinitializer], [32 x i8] zeroinitializer }, align 32
@nv44_vmm = internal constant { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [2 x %struct.nvkm_vmm_page] }, [32 x i8] } { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [2 x %struct.nvkm_vmm_page] } { ptr null, ptr null, ptr null, ptr @nv04_vmm_valid, ptr @nv44_vmm_flush, ptr null, ptr null, i64 0, [2 x %struct.nvkm_vmm_page] [%struct.nvkm_vmm_page { i8 12, ptr @nv44_vmm_desc_12, i8 4 }, %struct.nvkm_vmm_page zeroinitializer] }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s %s: timeout\0A\00", [16 x i8] zeroinitializer }, align 32
@nv44_vmm_desc_pgt = internal constant { %struct.nvkm_vmm_desc_func, [56 x i8] } { %struct.nvkm_vmm_desc_func { ptr null, ptr @nv44_vmm_pgt_unmap, ptr null, ptr null, ptr null, ptr @nv44_vmm_pgt_dma, ptr @nv44_vmm_pgt_sgl, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.7 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 225, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"nv44_vmm_desc_12\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 179, i32 1 }
@___asan_gen_.28 = private unnamed_addr constant [9 x i8] c"nv44_vmm\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 198, i32 1 }
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 190, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [18 x i8] c"nv44_vmm_desc_pgt\00", align 1
@___asan_gen_.35 = private constant [53 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmnv44.c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 172, i32 1 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @nv44_vmm_new._entry, ptr @nv44_vmm_new._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @nv44_vmm_desc_12, ptr @nv44_vmm, ptr @.str.6, ptr @nv44_vmm_desc_pgt], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv44_vmm_new._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv44_vmm_desc_12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv44_vmm to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv44_vmm_desc_pgt to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv44_vmm_new(ptr noundef %mmu, i1 noundef zeroext %managed, i64 noundef %addr, i64 noundef %size, ptr noundef %argv, i32 noundef %argc, ptr noundef %key, ptr noundef %name, ptr nocapture noundef writeonly %pvmm) local_unnamed_addr #0 align 64 {
entry:
  %vmm = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vmm) #5
  %0 = ptrtoint ptr %vmm to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %vmm, align 4, !annotation !25
  %call = call i32 @nv04_vmm_new_(ptr noundef nonnull @nv44_vmm, ptr noundef %mmu, i32 noundef 0, i1 noundef zeroext %managed, i64 noundef %addr, i64 noundef %size, ptr noundef %argv, i32 noundef %argc, ptr noundef %key, ptr noundef %name, ptr noundef nonnull %vmm) #5
  %1 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vmm, align 4
  %3 = ptrtoint ptr %pvmm to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %pvmm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %device = getelementptr inbounds %struct.nvkm_mmu, ptr %mmu, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %null = getelementptr inbounds %struct.nvkm_vmm, ptr %2, i32 0, i32 15
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %7, i32 noundef 16384, ptr noundef %null, i32 noundef 3264, i32 noundef 0) #5
  %8 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vmm, align 4
  %nullp = getelementptr inbounds %struct.nvkm_vmm, ptr %9, i32 0, i32 16
  %10 = ptrtoint ptr %nullp to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %nullp, align 8
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %do.body, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %if.end
  %debug = getelementptr inbounds %struct.nvkm_mmu, ptr %mmu, i32 0, i32 1, i32 5
  %11 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp = icmp ugt i32 %12, 1
  br i1 %cmp, label %do.end, label %do.body.if.end12_crit_edge

do.body.if.end12_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device, align 4
  %dev10 = getelementptr inbounds %struct.nvkm_device, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev10, align 8
  %name11 = getelementptr inbounds %struct.nvkm_mmu, ptr %mmu, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef %name11) #8
  br label %if.end12

if.end12:                                         ; preds = %do.end, %do.body.if.end12_crit_edge
  %17 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vmm, align 4
  %null15 = getelementptr inbounds %struct.nvkm_vmm, ptr %18, i32 0, i32 15
  %19 = ptrtoint ptr %null15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %null15, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vmm) #5
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_vmm_new_(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i64 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_vmm_valid(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv44_vmm_flush(ptr nocapture noundef readonly %vmm, i32 noundef %level) #0 align 64 {
entry:
  %_wait = alloca %struct.nvkm_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mmu = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 1
  %0 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmu, align 4
  %device1 = getelementptr inbounds %struct.nvkm_mmu, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %limit = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 7
  %4 = ptrtoint ptr %limit to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %limit, align 8
  %6 = trunc i64 %5 to i32
  %conv = add i32 %6, -4096
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %7 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 1050644
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %conv) #5, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !28
  tail call void @arm_heavy_mb() #5
  %9 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri, align 4
  %add.ptr6 = getelementptr i8, ptr %10, i32 1050632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 32) #5, !srcloc !27
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #5
  %11 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %3, i64 noundef 2000000000, ptr noundef nonnull %_wait) #5
  br label %do.body7

do.body7:                                         ; preds = %do.cond10.do.body7_crit_edge, %entry
  %12 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri, align 4
  %add.ptr9 = getelementptr i8, ptr %13, i32 1050632
  %14 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #5, !srcloc !29
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  %and = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.cond10, label %do.body7.if.end48_crit_edge

do.body7.if.end48_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

do.cond10:                                        ; preds = %do.body7
  %call11 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #5
  %cmp = icmp sgt i64 %call11, -1
  br i1 %cmp, label %do.cond10.do.body7_crit_edge, label %do.end26

do.cond10.do.body7_crit_edge:                     ; preds = %do.cond10
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body7

do.end26:                                         ; preds = %do.cond10
  %15 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %_wait, align 8
  %device28 = getelementptr inbounds %struct.nvkm_timer, ptr %16, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %device28 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %device28, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 8
  %call29 = call ptr @dev_driver_string(ptr noundef %20) #5
  %21 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %_wait, align 8
  %device32 = getelementptr inbounds %struct.nvkm_timer, ptr %22, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %device32 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %device32, align 4
  %dev33 = getelementptr inbounds %struct.nvkm_device, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev33, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end26.dev_name.exit_crit_edge

do.end26.dev_name.exit_crit_edge:                 ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %26, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end26.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %30, %if.end.i ], [ %28, %do.end26.dev_name.exit_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 193, i32 noundef 9, ptr noundef nonnull @.str.6, ptr noundef %call29, ptr noundef %retval.0.i) #5
  br label %if.end48

if.end48:                                         ; preds = %dev_name.exit, %do.body7.if.end48_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  call void @arm_heavy_mb() #5
  %31 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pri, align 4
  %add.ptr54 = getelementptr i8, ptr %32, i32 1050632
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54, i32 0) #5, !srcloc !27
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv44_vmm_pgt_unmap(ptr nocapture noundef readonly %vmm, ptr nocapture noundef readonly %pt, i32 noundef %ptei, i32 noundef %ptes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %call = tail call ptr %5(ptr noundef %1) #5
  %and = and i32 %ptei, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %sub = sub nuw nsw i32 4, %and
  %6 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %ptes)
  tail call fastcc void @nv44_vmm_pgt_fill(ptr noundef %vmm, ptr noundef %pt, ptr noundef null, i32 noundef %ptei, i32 noundef %6)
  %add = add i32 %6, %ptei
  %sub3 = sub i32 %ptes, %6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ptes.addr.0 = phi i32 [ %sub3, %if.then ], [ %ptes, %entry.if.end_crit_edge ]
  %ptei.addr.0 = phi i32 [ %add, %if.then ], [ %ptei, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %ptes.addr.0)
  %cmp4115 = icmp ugt i32 %ptes.addr.0, 4
  br i1 %cmp4115, label %do.body.lr.ph, label %while.end

do.body.lr.ph:                                    ; preds = %if.end
  %base = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %pt, i32 0, i32 3
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  %ptei.addr.1117 = phi i32 [ %ptei.addr.0, %do.body.lr.ph ], [ %inc52, %do.body.do.body_crit_edge ]
  %ptes.addr.1116 = phi i32 [ %ptes.addr.0, %do.body.lr.ph ], [ %sub69, %do.body.do.body_crit_edge ]
  %mul = shl i32 %ptei.addr.1117, 2
  %7 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %memory, align 4
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ptrs, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wr32, align 4
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %base, align 2
  %conv = zext i16 %14 to i32
  %add8 = add i32 %mul, %conv
  %conv9 = zext i32 %add8 to i64
  tail call void %12(ptr noundef %8, i64 noundef %conv9, i32 noundef 0) #5
  %mul15 = add i32 %mul, 4
  %15 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %memory, align 4
  %ptrs22 = getelementptr inbounds %struct.nvkm_memory, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %ptrs22 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ptrs22, align 4
  %wr3223 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %wr3223 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %wr3223, align 4
  %21 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %base, align 2
  %conv26 = zext i16 %22 to i32
  %add27 = add i32 %mul15, %conv26
  %conv28 = zext i32 %add27 to i64
  tail call void %20(ptr noundef %16, i64 noundef %conv28, i32 noundef 0) #5
  %mul34 = add i32 %mul, 8
  %23 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %memory, align 4
  %ptrs41 = getelementptr inbounds %struct.nvkm_memory, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %ptrs41 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ptrs41, align 4
  %wr3242 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %wr3242 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wr3242, align 4
  %29 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %base, align 2
  %conv45 = zext i16 %30 to i32
  %add46 = add i32 %mul34, %conv45
  %conv47 = zext i32 %add46 to i64
  tail call void %28(ptr noundef %24, i64 noundef %conv47, i32 noundef 0) #5
  %inc52 = add i32 %ptei.addr.1117, 4
  %mul53 = add i32 %mul, 12
  %31 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %memory, align 4
  %ptrs60 = getelementptr inbounds %struct.nvkm_memory, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %ptrs60 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ptrs60, align 4
  %wr3261 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %wr3261 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %wr3261, align 4
  %37 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %base, align 2
  %conv64 = zext i16 %38 to i32
  %add65 = add i32 %mul53, %conv64
  %conv66 = zext i32 %add65 to i64
  tail call void %36(ptr noundef %32, i64 noundef %conv66, i32 noundef 0) #5
  %sub69 = add i32 %ptes.addr.1116, -4
  %cmp4 = icmp ugt i32 %sub69, 4
  br i1 %cmp4, label %do.body.do.body_crit_edge, label %do.body.if.then71_crit_edge

do.body.if.then71_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then71

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

while.end:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ptes.addr.0)
  %tobool70.not = icmp eq i32 %ptes.addr.0, 0
  br i1 %tobool70.not, label %while.end.if.end72_crit_edge, label %while.end.if.then71_crit_edge

while.end.if.then71_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then71

while.end.if.end72_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end72

if.then71:                                        ; preds = %while.end.if.then71_crit_edge, %do.body.if.then71_crit_edge
  %ptei.addr.1.lcssa123 = phi i32 [ %ptei.addr.0, %while.end.if.then71_crit_edge ], [ %inc52, %do.body.if.then71_crit_edge ]
  %ptes.addr.1.lcssa122 = phi i32 [ %ptes.addr.0, %while.end.if.then71_crit_edge ], [ %sub69, %do.body.if.then71_crit_edge ]
  tail call fastcc void @nv44_vmm_pgt_fill(ptr noundef %vmm, ptr noundef %pt, ptr noundef null, i32 noundef %ptei.addr.1.lcssa123, i32 noundef %ptes.addr.1.lcssa122)
  br label %if.end72

if.end72:                                         ; preds = %if.then71, %while.end.if.end72_crit_edge
  %39 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %memory, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %release = getelementptr inbounds %struct.nvkm_memory_func, ptr %42, i32 0, i32 8
  %43 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %release, align 4
  tail call void %44(ptr noundef %40) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv44_vmm_pgt_dma(ptr nocapture noundef readonly %vmm, ptr nocapture noundef readonly %pt, i32 noundef %ptei, i32 noundef %ptes, ptr nocapture noundef %map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %call = tail call ptr %5(ptr noundef %1) #5
  %and = and i32 %ptei, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %sub = sub nuw nsw i32 4, %and
  %6 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %ptes)
  %dma = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 4
  %7 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dma, align 8
  tail call fastcc void @nv44_vmm_pgt_fill(ptr noundef %vmm, ptr noundef %pt, ptr noundef %8, i32 noundef %ptei, i32 noundef %6)
  %add = add i32 %6, %ptei
  %sub3 = sub i32 %ptes, %6
  %9 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dma, align 8
  %add.ptr = getelementptr i32, ptr %10, i32 %6
  store ptr %add.ptr, ptr %dma, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ptes.addr.0 = phi i32 [ %sub3, %if.then ], [ %ptes, %entry.if.end_crit_edge ]
  %ptei.addr.0 = phi i32 [ %add, %if.then ], [ %ptei, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %ptes.addr.0)
  %cmp5148 = icmp ugt i32 %ptes.addr.0, 3
  br i1 %cmp5148, label %while.body.lr.ph, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %dma8 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 4
  %base = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %pt, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %ptei.addr.1150 = phi i32 [ %ptei.addr.0, %while.body.lr.ph ], [ %inc70, %while.body.while.body_crit_edge ]
  %ptes.addr.1149 = phi i32 [ %ptes.addr.0, %while.body.lr.ph ], [ %sub90, %while.body.while.body_crit_edge ]
  %11 = ptrtoint ptr %dma8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dma8, align 8
  %incdec.ptr = getelementptr i32, ptr %12, i32 1
  store ptr %incdec.ptr, ptr %dma8, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %shr = lshr i32 %14, 12
  %incdec.ptr.1 = getelementptr i32, ptr %12, i32 2
  store ptr %incdec.ptr.1, ptr %dma8, align 8
  %15 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %incdec.ptr, align 4
  %incdec.ptr.2 = getelementptr i32, ptr %12, i32 3
  store ptr %incdec.ptr.2, ptr %dma8, align 8
  %17 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %incdec.ptr.1, align 4
  %incdec.ptr.3 = getelementptr i32, ptr %12, i32 4
  store ptr %incdec.ptr.3, ptr %dma8, align 8
  %19 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %incdec.ptr.2, align 4
  %mul = shl i32 %ptei.addr.1150, 2
  %21 = shl i32 %16, 15
  %shl = and i32 %21, -134217728
  %or = or i32 %shl, %shr
  %22 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %memory, align 4
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ptrs, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wr32, align 4
  %28 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %base, align 2
  %conv = zext i16 %29 to i32
  %add16 = add i32 %mul, %conv
  %conv17 = zext i32 %add16 to i64
  tail call void %27(ptr noundef %23, i64 noundef %conv17, i32 noundef %or) #5
  %mul23 = add i32 %mul, 4
  %shr26 = lshr i32 %16, 17
  %30 = shl i32 %18, 10
  %shl28 = and i32 %30, -4194304
  %or29 = or i32 %shl28, %shr26
  %31 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %memory, align 4
  %ptrs35 = getelementptr inbounds %struct.nvkm_memory, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %ptrs35 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ptrs35, align 4
  %wr3236 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %wr3236 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %wr3236, align 4
  %37 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %base, align 2
  %conv39 = zext i16 %38 to i32
  %add40 = add i32 %mul23, %conv39
  %conv41 = zext i32 %add40 to i64
  tail call void %36(ptr noundef %32, i64 noundef %conv41, i32 noundef %or29) #5
  %mul47 = add i32 %mul, 8
  %shr50 = lshr i32 %18, 22
  %39 = shl i32 %20, 5
  %shl52 = and i32 %39, -131072
  %or53 = or i32 %shl52, %shr50
  %40 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %memory, align 4
  %ptrs59 = getelementptr inbounds %struct.nvkm_memory, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %ptrs59 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ptrs59, align 4
  %wr3260 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %wr3260 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %wr3260, align 4
  %46 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %base, align 2
  %conv63 = zext i16 %47 to i32
  %add64 = add i32 %mul47, %conv63
  %conv65 = zext i32 %add64 to i64
  tail call void %45(ptr noundef %41, i64 noundef %conv65, i32 noundef %or53) #5
  %inc70 = add i32 %ptei.addr.1150, 4
  %mul71 = add i32 %mul, 12
  %shr74 = lshr i32 %20, 27
  %or75 = or i32 %shr74, 1073741824
  %48 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %memory, align 4
  %ptrs81 = getelementptr inbounds %struct.nvkm_memory, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %ptrs81 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ptrs81, align 4
  %wr3282 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %wr3282 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %wr3282, align 4
  %54 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %base, align 2
  %conv85 = zext i16 %55 to i32
  %add86 = add i32 %mul71, %conv85
  %conv87 = zext i32 %add86 to i64
  tail call void %53(ptr noundef %49, i64 noundef %conv87, i32 noundef %or75) #5
  %sub90 = add i32 %ptes.addr.1149, -4
  %cmp5 = icmp ugt i32 %sub90, 3
  br i1 %cmp5, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end.while.end_crit_edge
  %ptes.addr.1.lcssa = phi i32 [ %ptes.addr.0, %if.end.while.end_crit_edge ], [ %sub90, %while.body.while.end_crit_edge ]
  %ptei.addr.1.lcssa = phi i32 [ %ptei.addr.0, %if.end.while.end_crit_edge ], [ %inc70, %while.body.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ptes.addr.1.lcssa)
  %tobool91.not = icmp eq i32 %ptes.addr.1.lcssa, 0
  br i1 %tobool91.not, label %while.end.if.end96_crit_edge, label %if.then92

while.end.if.end96_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end96

if.then92:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  %dma93 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 4
  %56 = ptrtoint ptr %dma93 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dma93, align 8
  tail call fastcc void @nv44_vmm_pgt_fill(ptr noundef %vmm, ptr noundef %pt, ptr noundef %57, i32 noundef %ptei.addr.1.lcssa, i32 noundef %ptes.addr.1.lcssa)
  %58 = ptrtoint ptr %dma93 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dma93, align 8
  %add.ptr95 = getelementptr i32, ptr %59, i32 %ptes.addr.1.lcssa
  store ptr %add.ptr95, ptr %dma93, align 8
  br label %if.end96

if.end96:                                         ; preds = %if.then92, %while.end.if.end96_crit_edge
  %60 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %memory, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  %release = getelementptr inbounds %struct.nvkm_memory_func, ptr %63, i32 0, i32 8
  %64 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %release, align 4
  tail call void %65(ptr noundef %61) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv44_vmm_pgt_sgl(ptr nocapture noundef readonly %vmm, ptr nocapture noundef readonly %pt, i32 noundef %ptei, i32 noundef %ptes, ptr nocapture noundef %map) #0 align 64 {
entry:
  %tmp.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
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
  %call = tail call ptr %5(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ptes)
  %tobool.not56 = icmp eq i32 %ptes, 0
  br i1 %tobool.not56, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %sgl = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 3
  %off = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 6
  %page = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 7
  %6 = getelementptr inbounds [4 x i32], ptr %tmp.i, i32 0, i32 1
  %7 = getelementptr inbounds [4 x i32], ptr %tmp.i, i32 0, i32 2
  %8 = getelementptr inbounds [4 x i32], ptr %tmp.i, i32 0, i32 3
  %base.i = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %pt, i32 0, i32 3
  %arrayidx.i.1 = getelementptr inbounds [4 x i32], ptr %tmp.i, i32 0, i32 1
  %arrayidx.i.2 = getelementptr inbounds [4 x i32], ptr %tmp.i, i32 0, i32 2
  %arrayidx.i.3 = getelementptr inbounds [4 x i32], ptr %tmp.i, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %nv44_vmm_pgt_pte.exit.while.body_crit_edge, %while.body.lr.ph
  %ptei.addr.059 = phi i32 [ %ptei, %while.body.lr.ph ], [ %conv23, %nv44_vmm_pgt_pte.exit.while.body_crit_edge ]
  %ptes.addr.057 = phi i32 [ %ptes, %while.body.lr.ph ], [ %conv26, %nv44_vmm_pgt_pte.exit.while.body_crit_edge ]
  %9 = ptrtoint ptr %sgl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sgl, align 4
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dma_length, align 4
  %conv = zext i32 %12 to i64
  %13 = ptrtoint ptr %off to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %off, align 8
  %sub = sub i64 %conv, %14
  %15 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %page, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 4
  %sh_prom = zext i8 %18 to i64
  %shr = lshr i64 %sub, %sh_prom
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %10, i32 0, i32 3
  %19 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dma_address, align 4
  %conv4 = zext i32 %20 to i64
  %add = add i64 %14, %conv4
  %conv6 = zext i32 %ptes.addr.057 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shr, i64 %conv6)
  %cmp = icmp ugt i64 %shr, %conv6
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %conv2 = zext i8 %18 to i32
  %shl = shl i32 %ptes.addr.057, %conv2
  %conv11 = zext i32 %shl to i64
  %add13 = add i64 %14, %conv11
  %21 = ptrtoint ptr %off to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %add13, ptr %off, align 8
  br label %do.body19

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %off to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 0, ptr %off, align 8
  %call17 = call ptr @sg_next(ptr noundef %10) #5
  %23 = ptrtoint ptr %sgl to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call17, ptr %sgl, align 4
  %extract.t55 = trunc i64 %shr to i32
  br label %do.body19

do.body19:                                        ; preds = %if.else, %if.then
  %_ptes.0.off0 = phi i32 [ %ptes.addr.057, %if.then ], [ %extract.t55, %if.else ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #5
  %and.i = and i32 %ptei.addr.059, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %24 = call ptr @memset(ptr %tmp.i, i32 255, i32 16)
  br i1 %tobool.not.i, label %do.body19.if.end.i_crit_edge, label %if.then.i

do.body19.if.end.i_crit_edge:                     ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %do.body19
  %sub.i = sub nuw nsw i32 4, %and.i
  %25 = call i32 @llvm.umin.i32(i32 %sub.i, i32 %_ptes.0.off0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp31.not.i = icmp eq i32 %25, 0
  br i1 %cmp31.not.i, label %if.then.i.for.end.i_crit_edge, label %for.body.i

if.then.i.for.end.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.i:                                       ; preds = %if.then.i
  %conv.i = trunc i64 %add to i32
  %26 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv.i, ptr %tmp.i, align 4
  %add.i = add i64 %add, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %exitcond.not.i = icmp eq i32 %25, 1
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.1

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.i.1:                                     ; preds = %for.body.i
  %conv.i.1 = trunc i64 %add.i to i32
  %27 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv.i.1, ptr %arrayidx.i.1, align 4
  %add.i.1 = add i64 %add, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %exitcond.not.i.1 = icmp eq i32 %25, 2
  br i1 %exitcond.not.i.1, label %for.body.i.1.for.end.i_crit_edge, label %for.body.i.2

for.body.i.1.for.end.i_crit_edge:                 ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.i.2:                                     ; preds = %for.body.i.1
  %conv.i.2 = trunc i64 %add.i.1 to i32
  %28 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv.i.2, ptr %arrayidx.i.2, align 4
  %add.i.2 = add i64 %add, 12288
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %25)
  %exitcond.not.i.2 = icmp eq i32 %25, 3
  br i1 %exitcond.not.i.2, label %for.body.i.2.for.end.i_crit_edge, label %for.body.i.3

for.body.i.2.for.end.i_crit_edge:                 ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.i.3:                                     ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i.3 = trunc i64 %add.i.2 to i32
  %29 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv.i.3, ptr %arrayidx.i.3, align 4
  %add.i.3 = add i64 %add, 16384
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.3, %for.body.i.2.for.end.i_crit_edge, %for.body.i.1.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge, %if.then.i.for.end.i_crit_edge
  %addr.addr.0.lcssa.i = phi i64 [ %add, %if.then.i.for.end.i_crit_edge ], [ %add.i, %for.body.i.for.end.i_crit_edge ], [ %add.i.1, %for.body.i.1.for.end.i_crit_edge ], [ %add.i.2, %for.body.i.2.for.end.i_crit_edge ], [ %add.i.3, %for.body.i.3 ]
  call fastcc void @nv44_vmm_pgt_fill(ptr noundef %vmm, ptr noundef %pt, ptr noundef nonnull %tmp.i, i32 noundef %ptei.addr.059, i32 noundef %25) #5
  %add4.i = add i32 %25, %ptei.addr.059
  %sub5.i = sub i32 %_ptes.0.off0, %25
  br label %if.end.i

if.end.i:                                         ; preds = %for.end.i, %do.body19.if.end.i_crit_edge
  %addr.addr.1.i = phi i64 [ %addr.addr.0.lcssa.i, %for.end.i ], [ %add, %do.body19.if.end.i_crit_edge ]
  %ptes.addr.0.i = phi i32 [ %sub5.i, %for.end.i ], [ %_ptes.0.off0, %do.body19.if.end.i_crit_edge ]
  %ptei.addr.0.i = phi i32 [ %add4.i, %for.end.i ], [ %ptei.addr.059, %do.body19.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %ptes.addr.0.i)
  %cmp66.i = icmp ugt i32 %ptes.addr.0.i, 3
  br i1 %cmp66.i, label %if.end.i.for.cond8.preheader.i_crit_edge, label %if.end.i.while.end.i_crit_edge

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

if.end.i.for.cond8.preheader.i_crit_edge:         ; preds = %if.end.i
  br label %for.cond8.preheader.i

for.cond8.preheader.i:                            ; preds = %for.cond8.preheader.i.for.cond8.preheader.i_crit_edge, %if.end.i.for.cond8.preheader.i_crit_edge
  %ptei.addr.19.i = phi i32 [ %inc79.i, %for.cond8.preheader.i.for.cond8.preheader.i_crit_edge ], [ %ptei.addr.0.i, %if.end.i.for.cond8.preheader.i_crit_edge ]
  %ptes.addr.18.i = phi i32 [ %sub99.i, %for.cond8.preheader.i.for.cond8.preheader.i_crit_edge ], [ %ptes.addr.0.i, %if.end.i.for.cond8.preheader.i_crit_edge ]
  %addr.addr.27.i = phi i64 [ %add16.3.i, %for.cond8.preheader.i.for.cond8.preheader.i_crit_edge ], [ %addr.addr.1.i, %if.end.i.for.cond8.preheader.i_crit_edge ]
  %shr.i = lshr i64 %addr.addr.27.i, 12
  %conv12.i = trunc i64 %shr.i to i32
  %30 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv12.i, ptr %tmp.i, align 4
  %add16.i = add i64 %addr.addr.27.i, 4096
  %shr.1.i = lshr i64 %add16.i, 12
  %conv12.1.i = trunc i64 %shr.1.i to i32
  %31 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv12.1.i, ptr %6, align 4
  %add16.1.i = add i64 %addr.addr.27.i, 8192
  %shr.2.i = lshr i64 %add16.1.i, 12
  %conv12.2.i = trunc i64 %shr.2.i to i32
  %32 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv12.2.i, ptr %7, align 4
  %add16.2.i = add i64 %addr.addr.27.i, 12288
  %shr.3.i = lshr i64 %add16.2.i, 12
  %conv12.3.i = trunc i64 %shr.3.i to i32
  %33 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv12.3.i, ptr %8, align 4
  %add16.3.i = add i64 %addr.addr.27.i, 16384
  %mul.i = shl i32 %ptei.addr.19.i, 2
  %shl.i = shl i32 %conv12.1.i, 27
  %or.i = or i32 %shl.i, %conv12.i
  %34 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %memory, align 4
  %ptrs.i = getelementptr inbounds %struct.nvkm_memory, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %ptrs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ptrs.i, align 4
  %wr32.i = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %wr32.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wr32.i, align 4
  %40 = ptrtoint ptr %base.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %base.i, align 2
  %conv24.i = zext i16 %41 to i32
  %add25.i = add i32 %mul.i, %conv24.i
  %conv26.i = zext i32 %add25.i to i64
  call void %39(ptr noundef %35, i64 noundef %conv26.i, i32 noundef %or.i) #5
  %mul32.i = add i32 %mul.i, 4
  %42 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %6, align 4
  %shr35.i = lshr i32 %43, 5
  %44 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %7, align 4
  %shl37.i = shl i32 %45, 22
  %or38.i = or i32 %shl37.i, %shr35.i
  %46 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %memory, align 4
  %ptrs44.i = getelementptr inbounds %struct.nvkm_memory, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %ptrs44.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ptrs44.i, align 4
  %wr3245.i = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %wr3245.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %wr3245.i, align 4
  %52 = ptrtoint ptr %base.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %base.i, align 2
  %conv48.i = zext i16 %53 to i32
  %add49.i = add i32 %mul32.i, %conv48.i
  %conv50.i = zext i32 %add49.i to i64
  call void %51(ptr noundef %47, i64 noundef %conv50.i, i32 noundef %or38.i) #5
  %mul56.i = add i32 %mul.i, 8
  %54 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %7, align 4
  %shr59.i = lshr i32 %55, 10
  %56 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %8, align 4
  %shl61.i = shl i32 %57, 17
  %or62.i = or i32 %shl61.i, %shr59.i
  %58 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %memory, align 4
  %ptrs68.i = getelementptr inbounds %struct.nvkm_memory, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %ptrs68.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ptrs68.i, align 4
  %wr3269.i = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %wr3269.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %wr3269.i, align 4
  %64 = ptrtoint ptr %base.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %base.i, align 2
  %conv72.i = zext i16 %65 to i32
  %add73.i = add i32 %mul56.i, %conv72.i
  %conv74.i = zext i32 %add73.i to i64
  call void %63(ptr noundef %59, i64 noundef %conv74.i, i32 noundef %or62.i) #5
  %inc79.i = add i32 %ptei.addr.19.i, 4
  %mul80.i = add i32 %mul.i, 12
  %66 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %8, align 4
  %shr83.i = lshr i32 %67, 15
  %or84.i = or i32 %shr83.i, 1073741824
  %68 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %memory, align 4
  %ptrs90.i = getelementptr inbounds %struct.nvkm_memory, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %ptrs90.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ptrs90.i, align 4
  %wr3291.i = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %wr3291.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %wr3291.i, align 4
  %74 = ptrtoint ptr %base.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %base.i, align 2
  %conv94.i = zext i16 %75 to i32
  %add95.i = add i32 %mul80.i, %conv94.i
  %conv96.i = zext i32 %add95.i to i64
  call void %73(ptr noundef %69, i64 noundef %conv96.i, i32 noundef %or84.i) #5
  %sub99.i = add i32 %ptes.addr.18.i, -4
  %cmp6.i = icmp ugt i32 %sub99.i, 3
  br i1 %cmp6.i, label %for.cond8.preheader.i.for.cond8.preheader.i_crit_edge, label %for.cond8.preheader.i.while.end.i_crit_edge

for.cond8.preheader.i.while.end.i_crit_edge:      ; preds = %for.cond8.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

for.cond8.preheader.i.for.cond8.preheader.i_crit_edge: ; preds = %for.cond8.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond8.preheader.i

while.end.i:                                      ; preds = %for.cond8.preheader.i.while.end.i_crit_edge, %if.end.i.while.end.i_crit_edge
  %addr.addr.2.lcssa.i = phi i64 [ %addr.addr.1.i, %if.end.i.while.end.i_crit_edge ], [ %add16.3.i, %for.cond8.preheader.i.while.end.i_crit_edge ]
  %ptes.addr.1.lcssa.i = phi i32 [ %ptes.addr.0.i, %if.end.i.while.end.i_crit_edge ], [ %sub99.i, %for.cond8.preheader.i.while.end.i_crit_edge ]
  %ptei.addr.1.lcssa.i = phi i32 [ %ptei.addr.0.i, %if.end.i.while.end.i_crit_edge ], [ %inc79.i, %for.cond8.preheader.i.while.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ptes.addr.1.lcssa.i)
  %tobool100.not.i = icmp eq i32 %ptes.addr.1.lcssa.i, 0
  br i1 %tobool100.not.i, label %while.end.i.nv44_vmm_pgt_pte.exit_crit_edge, label %while.end.i.for.body105.i_crit_edge

while.end.i.for.body105.i_crit_edge:              ; preds = %while.end.i
  br label %for.body105.i

while.end.i.nv44_vmm_pgt_pte.exit_crit_edge:      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv44_vmm_pgt_pte.exit

for.body105.i:                                    ; preds = %for.body105.i.for.body105.i_crit_edge, %while.end.i.for.body105.i_crit_edge
  %addr.addr.415.i = phi i64 [ %add110.i, %for.body105.i.for.body105.i_crit_edge ], [ %addr.addr.2.lcssa.i, %while.end.i.for.body105.i_crit_edge ]
  %i.214.i = phi i32 [ %inc109.i, %for.body105.i.for.body105.i_crit_edge ], [ 0, %while.end.i.for.body105.i_crit_edge ]
  %conv106.i = trunc i64 %addr.addr.415.i to i32
  %arrayidx107.i = getelementptr [4 x i32], ptr %tmp.i, i32 0, i32 %i.214.i
  %76 = ptrtoint ptr %arrayidx107.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %conv106.i, ptr %arrayidx107.i, align 4
  %inc109.i = add nuw i32 %i.214.i, 1
  %add110.i = add i64 %addr.addr.415.i, 4096
  %exitcond17.not.i = icmp eq i32 %inc109.i, %ptes.addr.1.lcssa.i
  br i1 %exitcond17.not.i, label %for.end111.i, label %for.body105.i.for.body105.i_crit_edge

for.body105.i.for.body105.i_crit_edge:            ; preds = %for.body105.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body105.i

for.end111.i:                                     ; preds = %for.body105.i
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @nv44_vmm_pgt_fill(ptr noundef %vmm, ptr noundef %pt, ptr noundef nonnull %tmp.i, i32 noundef %ptei.addr.1.lcssa.i, i32 noundef %ptes.addr.1.lcssa.i) #5
  br label %nv44_vmm_pgt_pte.exit

nv44_vmm_pgt_pte.exit:                            ; preds = %for.end111.i, %while.end.i.nv44_vmm_pgt_pte.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #5
  %conv23 = add i32 %_ptes.0.off0, %ptei.addr.059
  %conv26 = sub i32 %ptes.addr.057, %_ptes.0.off0
  %tobool.not = icmp eq i32 %conv26, 0
  br i1 %tobool.not, label %nv44_vmm_pgt_pte.exit.while.end_crit_edge, label %nv44_vmm_pgt_pte.exit.while.body_crit_edge

nv44_vmm_pgt_pte.exit.while.body_crit_edge:       ; preds = %nv44_vmm_pgt_pte.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

nv44_vmm_pgt_pte.exit.while.end_crit_edge:        ; preds = %nv44_vmm_pgt_pte.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %nv44_vmm_pgt_pte.exit.while.end_crit_edge, %entry.while.end_crit_edge
  %77 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %memory, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %78, align 4
  %release = getelementptr inbounds %struct.nvkm_memory_func, ptr %80, i32 0, i32 8
  %81 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %release, align 4
  call void %82(ptr noundef %78) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nv44_vmm_pgt_fill(ptr nocapture noundef readonly %vmm, ptr nocapture noundef readonly %pt, ptr noundef readonly %list, i32 noundef %ptei, i32 noundef %ptes) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %ptei, 2
  %and = and i32 %shl, -16
  %memory = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %pt, i32 0, i32 1
  %0 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %memory, align 4
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ptrs, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %conv = zext i32 %and to i64
  %call = tail call i32 %5(ptr noundef %1, i64 noundef %conv) #5
  %6 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %memory, align 4
  %ptrs3 = getelementptr inbounds %struct.nvkm_memory, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %ptrs3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ptrs3, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %add6 = or i32 %and, 4
  %conv7 = zext i32 %add6 to i64
  %call8 = tail call i32 %11(ptr noundef %7, i64 noundef %conv7) #5
  %12 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %memory, align 4
  %ptrs11 = getelementptr inbounds %struct.nvkm_memory, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %ptrs11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ptrs11, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %add14 = or i32 %and, 8
  %conv15 = zext i32 %add14 to i64
  %call16 = tail call i32 %17(ptr noundef %13, i64 noundef %conv15) #5
  %18 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %memory, align 4
  %ptrs19 = getelementptr inbounds %struct.nvkm_memory, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %ptrs19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ptrs19, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %add22 = or i32 %shl, 12
  %conv23 = zext i32 %add22 to i64
  %call24 = tail call i32 %23(ptr noundef %19, i64 noundef %conv23) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ptes)
  %tobool.not190 = icmp eq i32 %ptes, 0
  br i1 %tobool.not190, label %entry.do.body_crit_edge, label %while.body.lr.ph

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

while.body.lr.ph:                                 ; preds = %entry
  %null = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 15
  br label %while.body

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %while.body.lr.ph
  %dec197.in = phi i32 [ %ptes, %while.body.lr.ph ], [ %dec197, %sw.epilog.while.body_crit_edge ]
  %list.addr.0196 = phi ptr [ %list, %while.body.lr.ph ], [ %list.addr.1, %sw.epilog.while.body_crit_edge ]
  %ptei.addr.0195 = phi i32 [ %ptei, %while.body.lr.ph ], [ %inc, %sw.epilog.while.body_crit_edge ]
  %tmp.sroa.35.0194 = phi i32 [ %call24, %while.body.lr.ph ], [ %tmp.sroa.35.1, %sw.epilog.while.body_crit_edge ]
  %tmp.sroa.24.0193 = phi i32 [ %call16, %while.body.lr.ph ], [ %tmp.sroa.24.1, %sw.epilog.while.body_crit_edge ]
  %tmp.sroa.13.0192 = phi i32 [ %call8, %while.body.lr.ph ], [ %tmp.sroa.13.1, %sw.epilog.while.body_crit_edge ]
  %tmp.sroa.0.0191 = phi i32 [ %call, %while.body.lr.ph ], [ %tmp.sroa.0.1, %sw.epilog.while.body_crit_edge ]
  %dec197 = add i32 %dec197.in, -1
  %tobool26.not = icmp eq ptr %list.addr.0196, null
  %incdec.ptr = getelementptr i32, ptr %list.addr.0196, i32 1
  %list.addr.1 = select i1 %tobool26.not, ptr null, ptr %incdec.ptr
  %cond.in = select i1 %tobool26.not, ptr %null, ptr %list.addr.0196
  %24 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %24)
  %cond = load i32, ptr %cond.in, align 4
  %shr = lshr i32 %cond, 12
  %inc = add i32 %ptei.addr.0195, 1
  %and27 = and i32 %ptei.addr.0195, 3
  %25 = zext i32 %and27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and27, label %cond.end.unreachabledefault [
    i32 0, label %sw.bb
    i32 1, label %sw.bb31
    i32 2, label %sw.bb42
    i32 3, label %sw.bb53
  ]

sw.bb:                                            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %and29 = and i32 %tmp.sroa.0.0191, -134217728
  %or = or i32 %shr, %and29
  br label %sw.epilog

sw.bb31:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %and33 = and i32 %tmp.sroa.0.0191, 134217727
  %shl34 = shl i32 %shr, 27
  %or36 = or i32 %shl34, %and33
  %and38 = and i32 %tmp.sroa.13.0192, -4194304
  %shr39 = lshr i32 %cond, 17
  %or41 = or i32 %shr39, %and38
  br label %sw.epilog

sw.bb42:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %and44 = and i32 %tmp.sroa.13.0192, 4194303
  %shl45 = shl i32 %shr, 22
  %or47 = or i32 %shl45, %and44
  %and49 = and i32 %tmp.sroa.24.0193, -131072
  %shr50 = lshr i32 %cond, 22
  %or52 = or i32 %shr50, %and49
  br label %sw.epilog

sw.bb53:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %and55 = and i32 %tmp.sroa.24.0193, 131071
  %shl56 = shl i32 %shr, 17
  %or58 = or i32 %shl56, %and55
  %and60 = and i32 %tmp.sroa.35.0194, -4096
  %shr61 = lshr i32 %cond, 27
  %or63 = or i32 %shr61, %and60
  br label %sw.epilog

cond.end.unreachabledefault:                      ; preds = %while.body
  unreachable

sw.epilog:                                        ; preds = %sw.bb53, %sw.bb42, %sw.bb31, %sw.bb
  %tmp.sroa.0.1 = phi i32 [ %tmp.sroa.0.0191, %sw.bb53 ], [ %tmp.sroa.0.0191, %sw.bb42 ], [ %or36, %sw.bb31 ], [ %or, %sw.bb ]
  %tmp.sroa.13.1 = phi i32 [ %tmp.sroa.13.0192, %sw.bb53 ], [ %or47, %sw.bb42 ], [ %or41, %sw.bb31 ], [ %tmp.sroa.13.0192, %sw.bb ]
  %tmp.sroa.24.1 = phi i32 [ %or58, %sw.bb53 ], [ %or52, %sw.bb42 ], [ %tmp.sroa.24.0193, %sw.bb31 ], [ %tmp.sroa.24.0193, %sw.bb ]
  %tmp.sroa.35.1 = phi i32 [ %or63, %sw.bb53 ], [ %tmp.sroa.35.0194, %sw.bb42 ], [ %tmp.sroa.35.0194, %sw.bb31 ], [ %tmp.sroa.35.0194, %sw.bb ]
  %tobool.not = icmp eq i32 %dec197, 0
  br i1 %tobool.not, label %sw.epilog.do.body_crit_edge, label %sw.epilog.while.body_crit_edge

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

sw.epilog.do.body_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.body:                                          ; preds = %sw.epilog.do.body_crit_edge, %entry.do.body_crit_edge
  %tmp.sroa.0.0.lcssa = phi i32 [ %call, %entry.do.body_crit_edge ], [ %tmp.sroa.0.1, %sw.epilog.do.body_crit_edge ]
  %tmp.sroa.13.0.lcssa = phi i32 [ %call8, %entry.do.body_crit_edge ], [ %tmp.sroa.13.1, %sw.epilog.do.body_crit_edge ]
  %tmp.sroa.24.0.lcssa = phi i32 [ %call16, %entry.do.body_crit_edge ], [ %tmp.sroa.24.1, %sw.epilog.do.body_crit_edge ]
  %tmp.sroa.35.0.lcssa = phi i32 [ %call24, %entry.do.body_crit_edge ], [ %tmp.sroa.35.1, %sw.epilog.do.body_crit_edge ]
  %26 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %memory, align 4
  %ptrs68 = getelementptr inbounds %struct.nvkm_memory, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %ptrs68 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ptrs68, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wr32, align 4
  %base = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %pt, i32 0, i32 3
  %32 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %base, align 2
  %conv70 = zext i16 %33 to i32
  %add71 = add i32 %and, %conv70
  %conv72 = zext i32 %add71 to i64
  tail call void %31(ptr noundef %27, i64 noundef %conv72, i32 noundef %tmp.sroa.0.0.lcssa) #5
  %34 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %memory, align 4
  %ptrs85 = getelementptr inbounds %struct.nvkm_memory, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %ptrs85 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ptrs85, align 4
  %wr3286 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %wr3286 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wr3286, align 4
  %40 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %base, align 2
  %conv89 = zext i16 %41 to i32
  %add90 = add i32 %add6, %conv89
  %conv91 = zext i32 %add90 to i64
  tail call void %39(ptr noundef %35, i64 noundef %conv91, i32 noundef %tmp.sroa.13.0.lcssa) #5
  %42 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %memory, align 4
  %ptrs104 = getelementptr inbounds %struct.nvkm_memory, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %ptrs104 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ptrs104, align 4
  %wr32105 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %wr32105 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %wr32105, align 4
  %48 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %base, align 2
  %conv108 = zext i16 %49 to i32
  %add109 = add i32 %add14, %conv108
  %conv110 = zext i32 %add109 to i64
  tail call void %47(ptr noundef %43, i64 noundef %conv110, i32 noundef %tmp.sroa.24.0.lcssa) #5
  %or118 = or i32 %tmp.sroa.35.0.lcssa, 1073741824
  %50 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %memory, align 4
  %ptrs124 = getelementptr inbounds %struct.nvkm_memory, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %ptrs124 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ptrs124, align 4
  %wr32125 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %wr32125 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %wr32125, align 4
  %56 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %base, align 2
  %conv128 = zext i16 %57 to i32
  %add129 = add i32 %add22, %conv128
  %conv130 = zext i32 %add129 to i64
  tail call void %55(ptr noundef %51, i64 noundef %conv130, i32 noundef %or118) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmnv44.c", i32 225, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nv44_vmm_new._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @nv44_vmm_new._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @nv44_vmm, !9, !"nv44_vmm", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmnv44.c", i32 198, i32 1}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmnv44.c", i32 190, i32 2}
!12 = !{ptr @nv44_vmm_desc_12, !13, !"nv44_vmm_desc_12", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmnv44.c", i32 179, i32 1}
!14 = !{ptr @nv44_vmm_desc_pgt, !15, !"nv44_vmm_desc_pgt", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmnv44.c", i32 172, i32 1}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{!"auto-init"}
!26 = !{i64 2156336607}
!27 = !{i64 5408561}
!28 = !{i64 2156337029}
!29 = !{i64 5408979}
!30 = !{i64 2156338905}
!31 = !{i64 2156340141}
