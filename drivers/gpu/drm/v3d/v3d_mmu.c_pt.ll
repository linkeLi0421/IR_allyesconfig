; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/v3d/v3d_mmu.c_pt.bc'
source_filename = "../drivers/gpu/drm/v3d/v3d_mmu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v3d_dev = type { %struct.drm_device, i32, i8, ptr, [3 x ptr], ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, %struct.drm_mm, %struct.spinlock, %struct.work_struct, ptr, ptr, ptr, ptr, [5 x %struct.v3d_queue_state], %struct.spinlock, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, %struct.anon.87 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.85, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.anon.85 = type { i32, ptr }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.v3d_queue_state = type { %struct.drm_gpu_scheduler, i64, i64 }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.87 = type { i32, i32 }
%struct.sg_dma_page_iter = type { %struct.sg_page_iter }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.v3d_bo = type { %struct.drm_gem_shmem_object, %struct.drm_mm_node, %struct.list_head }
%struct.drm_gem_shmem_object = type { %struct.drm_gem_object, %struct.mutex, ptr, i32, i32, %struct.list_head, i8, ptr, %struct.mutex, ptr, i32, i8 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@v3d_mmu_insert_ptes.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/gpu/drm/v3d/v3d_mmu.c\00", [34 x i8] zeroinitializer }, align 32
@v3d_mmu_insert_ptes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 111, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MMU flush timeout\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"v3d_mmu_insert_ptes\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@v3d_mmu_insert_ptes._entry_ptr = internal global ptr @v3d_mmu_insert_ptes._entry, section ".printk_index", align 4
@v3d_mmu_remove_ptes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.5, ptr @.str, i32 124, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"v3d_mmu_remove_ptes\00", [44 x i8] zeroinitializer }, align 32
@v3d_mmu_remove_ptes._entry_ptr = internal global ptr @v3d_mmu_remove_ptes._entry, section ".printk_index", align 4
@v3d_mmu_flush_all._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str, i32 43, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"TLB clear wait idle pre-wait failed\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"v3d_mmu_flush_all\00", [46 x i8] zeroinitializer }, align 32
@v3d_mmu_flush_all._entry_ptr = internal global ptr @v3d_mmu_flush_all._entry, section ".printk_index", align 4
@v3d_mmu_flush_all._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str, i32 55, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"TLB clear wait idle failed\0A\00", [36 x i8] zeroinitializer }, align 32
@v3d_mmu_flush_all._entry_ptr.10 = internal global ptr @v3d_mmu_flush_all._entry.8, section ".printk_index", align 4
@v3d_mmu_flush_all._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str, i32 62, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"MMUC flush wait idle failed\0A\00", [35 x i8] zeroinitializer }, align 32
@v3d_mmu_flush_all._entry_ptr.13 = internal global ptr @v3d_mmu_flush_all._entry.11, section ".printk_index", align 4
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 107, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 111, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 124, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 43, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 55, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.57 = private constant [33 x i8] c"../drivers/gpu/drm/v3d/v3d_mmu.c\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 62, i32 3 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @v3d_mmu_flush_all._entry, ptr @v3d_mmu_flush_all._entry.11, ptr @v3d_mmu_flush_all._entry.8, ptr @v3d_mmu_flush_all._entry_ptr, ptr @v3d_mmu_flush_all._entry_ptr.10, ptr @v3d_mmu_flush_all._entry_ptr.13, ptr @v3d_mmu_insert_ptes._entry, ptr @v3d_mmu_insert_ptes._entry_ptr, ptr @v3d_mmu_remove_ptes._entry, ptr @v3d_mmu_remove_ptes._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3d_mmu_insert_ptes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3d_mmu_remove_ptes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3d_mmu_flush_all._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3d_mmu_flush_all._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3d_mmu_flush_all._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @v3d_mmu_set_page_table(ptr nocapture noundef readonly %v3d) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !36
  tail call void @arm_heavy_mb() #5
  %pt_paddr = getelementptr inbounds %struct.v3d_dev, ptr %v3d, i32 0, i32 10
  %0 = ptrtoint ptr %pt_paddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pt_paddr, align 8
  %shr = lshr i32 %1, 12
  %2 = tail call i32 @llvm.bswap.i32(i32 %shr)
  %hub_regs = getelementptr inbounds %struct.v3d_dev, ptr %v3d, i32 0, i32 3
  %3 = ptrtoint ptr %hub_regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hub_regs, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 4612
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #5, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %5 = ptrtoint ptr %hub_regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hub_regs, align 4
  %add.ptr4 = getelementptr i8, ptr %6, i32 4608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 17566982) #5, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !39
  tail call void @arm_heavy_mb() #5
  %mmu_scratch_paddr = getelementptr inbounds %struct.v3d_dev, ptr %v3d, i32 0, i32 12
  %7 = ptrtoint ptr %mmu_scratch_paddr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mmu_scratch_paddr, align 8
  %shr7 = lshr i32 %8, 12
  %or = or i32 %shr7, -2147483648
  %9 = tail call i32 @llvm.bswap.i32(i32 %or)
  %10 = ptrtoint ptr %hub_regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hub_regs, align 4
  %add.ptr9 = getelementptr i8, ptr %11, i32 4656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %9) #5, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  tail call void @arm_heavy_mb() #5
  %12 = ptrtoint ptr %hub_regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hub_regs, align 4
  %add.ptr13 = getelementptr i8, ptr %13, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 16777216) #5, !srcloc !37
  %call = tail call fastcc i32 @v3d_mmu_flush_all(ptr noundef %v3d)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @v3d_mmu_flush_all(ptr nocapture noundef readonly %v3d) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get_raw() #5
  %add = add i64 %call, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 41) #5
  %call4182 = tail call i64 @ktime_get_raw() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call4182, i64 %add)
  %cmp3.i.i183 = icmp sgt i64 %call4182, %add
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !41
  %hub_regs = getelementptr inbounds %struct.v3d_dev, ptr %v3d, i32 0, i32 3
  %0 = ptrtoint ptr %hub_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hub_regs, align 4
  %add.ptr184 = getelementptr i8, ptr %1, i32 4608
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr184) #5, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %tobool.not185 = icmp sgt i32 %2, -1
  %brmerge186 = select i1 %tobool.not185, i1 true, i1 %cmp3.i.i183
  br i1 %brmerge186, label %entry.for.end_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  br label %cleanup

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %entry.cleanup_crit_edge
  %wait__.0187 = phi i32 [ %spec.select, %cleanup.cleanup_crit_edge ], [ 10, %entry.cleanup_crit_edge ]
  %mul = shl i32 %wait__.0187, 1
  tail call void @usleep_range_state(i32 noundef %wait__.0187, i32 noundef %mul, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %wait__.0187)
  %cmp = icmp slt i32 %wait__.0187, 1000
  %spec.select = select i1 %cmp, i32 %mul, i32 %wait__.0187
  %call4 = tail call i64 @ktime_get_raw() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call4, i64 %add)
  %cmp3.i.i = icmp sgt i64 %call4, %add
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !41
  %3 = ptrtoint ptr %hub_regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hub_regs, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 4608
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool.not = icmp sgt i32 %5, -1
  %brmerge = select i1 %tobool.not, i1 true, i1 %cmp3.i.i
  br i1 %brmerge, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  %tobool.not.lcssa = phi i1 [ %tobool.not185, %entry.for.end_crit_edge ], [ %tobool.not, %cleanup.for.end_crit_edge ]
  br i1 %tobool.not.lcssa, label %for.end.do.body20_crit_edge, label %do.end18

for.end.do.body20_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body20

do.end18:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.drm_device, ptr %v3d, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.6) #8
  br label %do.body20

do.body20:                                        ; preds = %do.end18, %for.end.do.body20_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %hub_regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hub_regs, align 4
  %add.ptr26 = getelementptr i8, ptr %9, i32 4608
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #5, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  %11 = or i32 %10, 67108864
  %12 = ptrtoint ptr %hub_regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hub_regs, align 4
  %add.ptr31 = getelementptr i8, ptr %13, i32 4608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %11) #5, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %14 = ptrtoint ptr %hub_regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hub_regs, align 4
  %add.ptr36 = getelementptr i8, ptr %15, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 50331648) #5, !srcloc !37
  %call38 = tail call i64 @ktime_get_raw() #5
  %add39 = add i64 %call38, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 53) #5
  %call50188 = tail call i64 @ktime_get_raw() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call50188, i64 %add39)
  %cmp3.i.i165189 = icmp sgt i64 %call50188, %add39
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !47
  %16 = ptrtoint ptr %hub_regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hub_regs, align 4
  %add.ptr56190 = getelementptr i8, ptr %17, i32 4608
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr56190) #5, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !48
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %tobool61.not191 = icmp sgt i32 %18, -1
  %brmerge161192 = select i1 %tobool61.not191, i1 true, i1 %cmp3.i.i165189
  br i1 %brmerge161192, label %do.body20.for.end75_crit_edge, label %do.body20.cleanup72_crit_edge

do.body20.cleanup72_crit_edge:                    ; preds = %do.body20
  br label %cleanup72

do.body20.for.end75_crit_edge:                    ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end75

cleanup72:                                        ; preds = %cleanup72.cleanup72_crit_edge, %do.body20.cleanup72_crit_edge
  %wait__40.0193 = phi i32 [ %spec.select157, %cleanup72.cleanup72_crit_edge ], [ 10, %do.body20.cleanup72_crit_edge ]
  %mul67 = shl i32 %wait__40.0193, 1
  tail call void @usleep_range_state(i32 noundef %wait__40.0193, i32 noundef %mul67, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %wait__40.0193)
  %cmp68 = icmp slt i32 %wait__40.0193, 1000
  %spec.select157 = select i1 %cmp68, i32 %mul67, i32 %wait__40.0193
  %call50 = tail call i64 @ktime_get_raw() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call50, i64 %add39)
  %cmp3.i.i165 = icmp sgt i64 %call50, %add39
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !47
  %19 = ptrtoint ptr %hub_regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hub_regs, align 4
  %add.ptr56 = getelementptr i8, ptr %20, i32 4608
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr56) #5, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !48
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %tobool61.not = icmp sgt i32 %21, -1
  %brmerge161 = select i1 %tobool61.not, i1 true, i1 %cmp3.i.i165
  br i1 %brmerge161, label %cleanup72.for.end75_crit_edge, label %cleanup72.cleanup72_crit_edge

cleanup72.cleanup72_crit_edge:                    ; preds = %cleanup72
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup72

cleanup72.for.end75_crit_edge:                    ; preds = %cleanup72
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end75

for.end75:                                        ; preds = %cleanup72.for.end75_crit_edge, %do.body20.for.end75_crit_edge
  %tobool61.not.lcssa = phi i1 [ %tobool61.not191, %do.body20.for.end75_crit_edge ], [ %tobool61.not, %cleanup72.for.end75_crit_edge ]
  br i1 %tobool61.not.lcssa, label %if.end84, label %for.end75.cleanup133.sink.split_crit_edge

for.end75.cleanup133.sink.split_crit_edge:        ; preds = %for.end75
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup133.sink.split

if.end84:                                         ; preds = %for.end75
  %call86 = tail call i64 @ktime_get_raw() #5
  %add87 = add i64 %call86, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 60) #5
  %call98195 = tail call i64 @ktime_get_raw() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call98195, i64 %add87)
  %cmp3.i.i166196 = icmp sgt i64 %call98195, %add87
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !49
  %22 = ptrtoint ptr %hub_regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hub_regs, align 4
  %add.ptr104197 = getelementptr i8, ptr %23, i32 4096
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr104197) #5, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  %25 = and i32 %24, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool109.not198 = icmp eq i32 %25, 0
  %brmerge163199 = select i1 %tobool109.not198, i1 true, i1 %cmp3.i.i166196
  br i1 %brmerge163199, label %if.end84.for.end123_crit_edge, label %if.end84.cleanup120_crit_edge

if.end84.cleanup120_crit_edge:                    ; preds = %if.end84
  br label %cleanup120

if.end84.for.end123_crit_edge:                    ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end123

cleanup120:                                       ; preds = %cleanup120.cleanup120_crit_edge, %if.end84.cleanup120_crit_edge
  %wait__88.0200 = phi i32 [ %spec.select159, %cleanup120.cleanup120_crit_edge ], [ 10, %if.end84.cleanup120_crit_edge ]
  %mul115 = shl i32 %wait__88.0200, 1
  tail call void @usleep_range_state(i32 noundef %wait__88.0200, i32 noundef %mul115, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %wait__88.0200)
  %cmp116 = icmp slt i32 %wait__88.0200, 1000
  %spec.select159 = select i1 %cmp116, i32 %mul115, i32 %wait__88.0200
  %call98 = tail call i64 @ktime_get_raw() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call98, i64 %add87)
  %cmp3.i.i166 = icmp sgt i64 %call98, %add87
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !49
  %26 = ptrtoint ptr %hub_regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hub_regs, align 4
  %add.ptr104 = getelementptr i8, ptr %27, i32 4096
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr104) #5, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  %29 = and i32 %28, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool109.not = icmp eq i32 %29, 0
  %brmerge163 = select i1 %tobool109.not, i1 true, i1 %cmp3.i.i166
  br i1 %brmerge163, label %cleanup120.for.end123_crit_edge, label %cleanup120.cleanup120_crit_edge

cleanup120.cleanup120_crit_edge:                  ; preds = %cleanup120
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup120

cleanup120.for.end123_crit_edge:                  ; preds = %cleanup120
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end123

for.end123:                                       ; preds = %cleanup120.for.end123_crit_edge, %if.end84.for.end123_crit_edge
  %tobool109.not.lcssa = phi i1 [ %tobool109.not198, %if.end84.for.end123_crit_edge ], [ %tobool109.not, %cleanup120.for.end123_crit_edge ]
  br i1 %tobool109.not.lcssa, label %for.end123.cleanup133_crit_edge, label %for.end123.cleanup133.sink.split_crit_edge

for.end123.cleanup133.sink.split_crit_edge:       ; preds = %for.end123
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup133.sink.split

for.end123.cleanup133_crit_edge:                  ; preds = %for.end123
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup133

cleanup133.sink.split:                            ; preds = %for.end123.cleanup133.sink.split_crit_edge, %for.end75.cleanup133.sink.split_crit_edge
  %.str.12.sink = phi ptr [ @.str.9, %for.end75.cleanup133.sink.split_crit_edge ], [ @.str.12, %for.end123.cleanup133.sink.split_crit_edge ]
  %dev131 = getelementptr inbounds %struct.drm_device, ptr %v3d, i32 0, i32 2
  %30 = ptrtoint ptr %dev131 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev131, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull %.str.12.sink) #8
  br label %cleanup133

cleanup133:                                       ; preds = %cleanup133.sink.split, %for.end123.cleanup133_crit_edge
  %retval.0 = phi i32 [ 0, %for.end123.cleanup133_crit_edge ], [ -110, %cleanup133.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @v3d_mmu_insert_ptes(ptr nocapture noundef readonly %bo) local_unnamed_addr #0 align 64 {
entry:
  %dma_iter = alloca %struct.sg_dma_page_iter, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_gem_object, ptr %bo, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %start = getelementptr inbounds %struct.v3d_bo, ptr %bo, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %start, align 8
  %conv = trunc i64 %3 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dma_iter) #5
  %4 = getelementptr inbounds %struct.sg_page_iter, ptr %dma_iter, i32 0, i32 1
  %sgt = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %bo, i32 0, i32 7
  %5 = call ptr @memset(ptr %dma_iter, i32 255, i32 16)
  %6 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sgt, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %nents = getelementptr inbounds %struct.sg_table, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nents, align 4
  call void @__sg_page_iter_start(ptr noundef nonnull %dma_iter, ptr noundef %9, i32 noundef %11, i32 noundef 0) #5
  %call4100 = call zeroext i1 @__sg_page_iter_dma_next(ptr noundef nonnull %dma_iter) #5
  br i1 %call4100, label %for.body.lr.ph, label %entry.for.end20_crit_edge

entry.for.end20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end20

for.body.lr.ph:                                   ; preds = %entry
  %pt = getelementptr inbounds %struct.v3d_dev, ptr %1, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %page.0101 = phi i32 [ %conv, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %12 = ptrtoint ptr %dma_iter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dma_iter, align 4
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma_address.i, align 4
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %4, align 4
  %18 = lshr i32 %15, 12
  %19 = add i32 %18, %17
  %shr = and i32 %19, 1048575
  %or = or i32 %shr, 805306368
  %20 = ptrtoint ptr %pt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pt, align 4
  %inc = add i32 %page.0101, 1
  %arrayidx = getelementptr i32, ptr %21, i32 %page.0101
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 %or, ptr %arrayidx, align 4
  %call4 = call zeroext i1 @__sg_page_iter_dma_next(ptr noundef nonnull %dma_iter) #5
  br i1 %call4, label %for.body.for.body_crit_edge, label %for.body.for.end20_crit_edge

for.body.for.end20_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end20

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end20:                                        ; preds = %for.body.for.end20_crit_edge, %entry.for.end20_crit_edge
  %page.0.lcssa = phi i32 [ %conv, %entry.for.end20_crit_edge ], [ %inc, %for.body.for.end20_crit_edge ]
  %conv21 = zext i32 %page.0.lcssa to i64
  %23 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %start, align 8
  %sub = sub i64 %conv21, %24
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %bo, i32 0, i32 5
  %25 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %size, align 8
  %shr25 = lshr i32 %26, 12
  %conv26 = zext i32 %shr25 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %conv26)
  %cmp27.not = icmp eq i64 %sub, %conv26
  br i1 %cmp27.not, label %for.end20.if.end69_crit_edge, label %land.rhs

for.end20.if.end69_crit_edge:                     ; preds = %for.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

land.rhs:                                         ; preds = %for.end20
  %.b98 = load i1, ptr @v3d_mmu_insert_ptes.__already_done, align 1
  br i1 %.b98, label %land.rhs.if.end69_crit_edge, label %if.then44, !prof !51

land.rhs.if.end69_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

if.then44:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @v3d_mmu_insert_ptes.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 108, i32 noundef 9, ptr noundef null) #5
  br label %if.end69

if.end69:                                         ; preds = %if.then44, %land.rhs.if.end69_crit_edge, %for.end20.if.end69_crit_edge
  %call77 = call fastcc i32 @v3d_mmu_flush_all(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end69.if.end84_crit_edge, label %do.end82

if.end69.if.end84_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end84

do.end82:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  %dev83 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %27 = ptrtoint ptr %dev83 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev83, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.1) #8
  br label %if.end84

if.end84:                                         ; preds = %do.end82, %if.end69.if.end84_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dma_iter) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sg_page_iter_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__sg_page_iter_dma_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @v3d_mmu_remove_ptes(ptr nocapture noundef readonly %bo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_gem_object, ptr %bo, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %bo, i32 0, i32 5
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 8
  %shr = lshr i32 %3, 12
  %start = getelementptr inbounds %struct.v3d_bo, ptr %bo, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %start, align 8
  %conv7 = zext i32 %shr to i64
  %conv418 = and i64 %5, 4294967295
  %add19 = add i64 %5, %conv7
  call void @__sanitizer_cov_trace_cmp8(i64 %add19, i64 %conv418)
  %cmp20 = icmp ugt i64 %add19, %conv418
  br i1 %cmp20, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %conv = trunc i64 %5 to i32
  %pt = getelementptr inbounds %struct.v3d_dev, ptr %1, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %page.021 = phi i32 [ %conv, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %pt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pt, align 4
  %arrayidx = getelementptr i32, ptr %7, i32 %page.021
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 0, ptr %arrayidx, align 4
  %inc = add i32 %page.021, 1
  %conv4 = zext i32 %inc to i64
  %9 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %start, align 8
  %add = add i64 %10, %conv7
  %cmp = icmp ugt i64 %add, %conv4
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %call9 = tail call fastcc i32 @v3d_mmu_flush_all(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %for.end.if.end_crit_edge, label %do.end

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev10 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev10, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.1) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %for.end.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_raw() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23, !25, !26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/v3d/v3d_mmu.c", i32 107, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/v3d/v3d_mmu.c", i32 111, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @v3d_mmu_insert_ptes._entry, !4, !"_entry", i1 false, i1 false}
!9 = !{ptr @v3d_mmu_insert_ptes._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/v3d/v3d_mmu.c", i32 124, i32 3}
!12 = !{ptr @v3d_mmu_remove_ptes._entry, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @v3d_mmu_remove_ptes._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/v3d/v3d_mmu.c", i32 43, i32 3}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @v3d_mmu_flush_all._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @v3d_mmu_flush_all._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/v3d/v3d_mmu.c", i32 55, i32 3}
!21 = !{ptr @v3d_mmu_flush_all._entry.8, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @v3d_mmu_flush_all._entry_ptr.10, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/v3d/v3d_mmu.c", i32 62, i32 3}
!25 = !{ptr @v3d_mmu_flush_all._entry.11, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @v3d_mmu_flush_all._entry_ptr.13, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{i64 2156749394}
!37 = !{i64 6900483}
!38 = !{i64 2156751051}
!39 = !{i64 2156752436}
!40 = !{i64 2156753200}
!41 = !{i64 2156735677}
!42 = !{i64 6900901}
!43 = !{i64 2156735352}
!44 = !{i64 2156738826}
!45 = !{i64 2156739805}
!46 = !{i64 2156740395}
!47 = !{i64 2156743312}
!48 = !{i64 2156742987}
!49 = !{i64 2156747480}
!50 = !{i64 2156747155}
!51 = !{!"branch_weights", i32 2000, i32 1}
