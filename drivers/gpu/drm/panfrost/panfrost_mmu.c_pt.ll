; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/panfrost/panfrost_mmu.c_pt.bc'
source_filename = "../drivers/gpu/drm/panfrost/panfrost_mmu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iommu_flush_ops = type { ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.panfrost_device = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], [3 x ptr], i8, %struct.panfrost_features, ptr, %struct.spinlock, i32, i32, i32, %struct.list_head, ptr, [3 x [2 x ptr]], %struct.list_head, ptr, %struct.mutex, %struct.anon.90, %struct.mutex, %struct.list_head, %struct.shrinker, %struct.panfrost_devfreq }
%struct.panfrost_features = type { i16, i16, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32], [16 x i32], i32, i32, [2 x i32], [2 x i32] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.90 = type { ptr, %struct.work_struct, %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.panfrost_devfreq = type { ptr, ptr, %struct.devfreq_simple_ondemand_data, i8, i64, i64, i64, i32, %struct.spinlock }
%struct.devfreq_simple_ondemand_data = type { i32, i32 }
%struct.panfrost_mmu = type { ptr, %struct.kref, %struct.io_pgtable_cfg, ptr, %struct.drm_mm, %struct.spinlock, i32, %struct.atomic_t, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.io_pgtable_cfg = type { i32, i32, i32, i32, i8, ptr, ptr, %union.anon.93 }
%union.anon.93 = type { %struct.anon.100 }
%struct.anon.100 = type { [4 x i64], i32 }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.panfrost_gem_mapping = type { %struct.list_head, %struct.kref, ptr, %struct.drm_mm_node, ptr, i8 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.84, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.89, ptr, i32, ptr, i8, i32 }
%struct.anon.84 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.89 = type { i32, ptr }
%struct.panfrost_gem_object = type { %struct.drm_gem_shmem_object, ptr, %struct.anon.103, %struct.atomic_t, i8 }
%struct.drm_gem_shmem_object = type { %struct.drm_gem_object, %struct.mutex, ptr, i32, i32, %struct.list_head, i8, ptr, %struct.mutex, ptr, i32, i8 }
%struct.anon.103 = type { %struct.list_head, %struct.mutex }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.io_pgtable_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }

@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/gpu/drm/panfrost/panfrost_mmu.c\00", [56 x i8] zeroinitializer }, align 32
@panfrost_mmu_as_get.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.3, i8 0, i8 53, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"panfrost\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"panfrost_mmu_as_get\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Assigned AS%d to mmu %p, alloc_mask=%lx\00", [56 x i8] zeroinitializer }, align 32
@panfrost_mmu_unmap.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.4, ptr @.str, ptr @.str.5, i8 0, i8 86, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"panfrost_mmu_unmap\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unmap: as=%d, iova=%llx, len=%zx\00", [63 x i8] zeroinitializer }, align 32
@panfrost_mmu_ctx_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&mmu->mm_lock\00", [18 x i8] zeroinitializer }, align 32
@mmu_tlb_ops = internal constant { %struct.iommu_flush_ops, [20 x i8] } { %struct.iommu_flush_ops { ptr @mmu_tlb_inv_context_s1, ptr @mmu_tlb_flush_walk, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mmu\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"panfrost-mmu\00", [19 x i8] zeroinitializer }, align 32
@panfrost_mmu_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str, i32 747, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to request mmu irq\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"panfrost_mmu_init\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@panfrost_mmu_init._entry_ptr = internal global ptr @panfrost_mmu_init._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@wait_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str, i32 42, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"AS_ACTIVE bit stuck\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wait_ready\00", [21 x i8] zeroinitializer }, align 32
@wait_ready._entry_ptr = internal global ptr @wait_ready._entry, section ".printk_index", align 4
@mmu_map_sg.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.15, ptr @.str, ptr @.str.16, i8 0, i8 71, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mmu_map_sg\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"map: as=%d, iova=%llx, paddr=%lx, len=%zx\00", [54 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@panfrost_mmu_irq_handler_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str, i32 705, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [165 x i8], [59 x i8] } { [165 x i8] c"Unhandled Page fault in AS%d at VA 0x%016llX\0AReason: %s\0Araw fault status: 0x%X\0Adecoded fault status: %s\0Aexception type 0x%X: %s\0Aaccess type 0x%X: %s\0Asource id 0x%X\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"panfrost_mmu_irq_handler_thread\00", [32 x i8] zeroinitializer }, align 32
@panfrost_mmu_irq_handler_thread._entry_ptr = internal global ptr @panfrost_mmu_irq_handler_thread._entry, section ".printk_index", align 4
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TODO\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DECODER FAULT\00", [18 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SLAVE FAULT\00", [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s %s: matching BO is not heap type (GPU VA = %llx)\00", [44 x i8] zeroinitializer }, align 32
@panfrost_mmu_map_fault_addr.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.23, ptr @.str, ptr @.str.24, i8 0, i8 127, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"panfrost_mmu_map_fault_addr\00", [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mapped page fault @ AS%d %llx\00", [34 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ATOMIC\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UNKNOWN\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"READ\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"WRITE\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"EXECUTE\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 173, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 215, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 343, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 596, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [12 x i8] c"mmu_tlb_ops\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 378, i32 37 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 736, i32 64 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 743, i32 19 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 747, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 42, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 287, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 691, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 437, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 509, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 632, i32 11 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 634, i32 11 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 636, i32 10 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 638, i32 10 }
@___asan_gen_.132 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.133 = private constant [43 x i8] c"../drivers/gpu/drm/panfrost/panfrost_mmu.c\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 640, i32 10 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @panfrost_mmu_init._entry, ptr @panfrost_mmu_init._entry_ptr, ptr @panfrost_mmu_irq_handler_thread._entry, ptr @panfrost_mmu_irq_handler_thread._entry_ptr, ptr @wait_ready._entry, ptr @wait_ready._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @panfrost_mmu_ctx_create.__key, ptr @.str.6, ptr @mmu_tlb_ops, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panfrost_mmu_ctx_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmu_tlb_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panfrost_mmu_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panfrost_mmu_irq_handler_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 165, i32 224, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @panfrost_mmu_as_get(ptr noundef %pfdev, ptr noundef %mmu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %as_lock = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %as_lock) #9
  %as1 = getelementptr inbounds %struct.panfrost_mmu, ptr %mmu, i32 0, i32 6
  %0 = ptrtoint ptr %as1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %as1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp = icmp sgt i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end38

if.then:                                          ; preds = %entry
  %as_count = getelementptr inbounds %struct.panfrost_mmu, ptr %mmu, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %as_count, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !69
  tail call void @llvm.prefetch.p0(ptr %as_count, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %as_count, ptr %as_count, i32 1, ptr elementtype(i32) %as_count) #9, !srcloc !70
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !71
  %or = shl i32 65537, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %asmresult.i.i.i.i)
  %cmp3 = icmp sgt i32 %asmresult.i.i.i.i, 3
  br i1 %cmp3, label %do.end, label %if.then.if.end_crit_edge, !prof !72

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 173, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %list = getelementptr inbounds %struct.panfrost_mmu, ptr %mmu, i32 0, i32 8
  %as_lru_list = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 17
  %call.i.i199 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #9
  br i1 %call.i.i199, label %if.end.i.i, label %if.end.__list_del_entry.exit.i_crit_edge

if.end.__list_del_entry.exit.i_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.panfrost_mmu, ptr %mmu, i32 0, i32 8, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end.__list_del_entry.exit.i_crit_edge
  %9 = ptrtoint ptr %as_lru_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %as_lru_list, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %as_lru_list, ptr noundef %10) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move.exit_crit_edge

__list_del_entry.exit.i.list_move.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_move.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %list, ptr %prev1.i.i2.i, align 4
  %12 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %10, ptr %list, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.panfrost_mmu, ptr %mmu, i32 0, i32 8, i32 1
  %13 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %as_lru_list, ptr %prev3.i.i.i, align 4
  %14 = ptrtoint ptr %as_lru_list to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %list, ptr %as_lru_list, align 4
  br label %list_move.exit

list_move.exit:                                   ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move.exit_crit_edge
  %as_faulty_mask = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 16
  %15 = ptrtoint ptr %as_faulty_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %as_faulty_mask, align 8
  %and = and i32 %16, %or
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %list_move.exit.out_crit_edge, label %do.body25

list_move.exit.out_crit_edge:                     ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.body25:                                        ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !73
  tail call void @arm_heavy_mb() #9
  %17 = tail call i32 @llvm.bswap.i32(i32 %or)
  %iomem = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 3
  %18 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iomem, align 4
  %add.ptr = getelementptr i8, ptr %19, i32 8196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %17) #9, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  tail call void @arm_heavy_mb() #9
  %20 = ptrtoint ptr %as_faulty_mask to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %as_faulty_mask, align 8
  %neg = xor i32 %21, -1
  %22 = tail call i32 @llvm.bswap.i32(i32 %neg)
  %23 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %iomem, align 4
  %add.ptr33 = getelementptr i8, ptr %24, i32 8200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %22) #9, !srcloc !74
  %neg34 = xor i32 %or, -1
  %25 = ptrtoint ptr %as_faulty_mask to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %as_faulty_mask, align 8
  %and36 = and i32 %26, %neg34
  store i32 %and36, ptr %as_faulty_mask, align 8
  br label %out.sink.split

if.end38:                                         ; preds = %entry
  %as_alloc_mask = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 15
  %27 = ptrtoint ptr %as_alloc_mask to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %as_alloc_mask, align 4
  %neg39 = xor i32 %28, -1
  %29 = tail call i32 @llvm.cttz.i32(i32 %neg39, i1 false) #9, !range !76
  %shl41 = shl nuw i32 1, %29
  %as_present = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 11, i32 6
  %30 = ptrtoint ptr %as_present to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %as_present, align 8
  %and42 = and i32 %shl41, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.then44, label %if.end38.if.end130_crit_edge

if.end38.if.end130_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end130

if.then44:                                        ; preds = %if.end38
  %as_lru_list45 = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 17
  %prev = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 17, i32 1
  %32 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn211 = load ptr, ptr %prev, align 4
  %cmp50212 = icmp eq ptr %.pn211, %as_lru_list45
  br i1 %cmp50212, label %if.then44.do.end82.critedge_crit_edge, label %if.then44.for.body_crit_edge

if.then44.for.body_crit_edge:                     ; preds = %if.then44
  br label %for.body

if.then44.do.end82.critedge_crit_edge:            ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end82.critedge

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then44.for.body_crit_edge
  %.pn213 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn211, %if.then44.for.body_crit_edge ]
  %as_count53 = getelementptr i8, ptr %.pn213, i32 -4
  %call.i.i197 = tail call zeroext i1 @__kasan_check_read(ptr noundef %as_count53, i32 noundef 4) #9
  %33 = ptrtoint ptr %as_count53 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %as_count53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool55.not = icmp eq i32 %34, 0
  br i1 %tobool55.not, label %for.body.if.end88_crit_edge, label %for.inc

for.body.if.end88_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88

for.inc:                                          ; preds = %for.body
  %prev60 = getelementptr inbounds %struct.list_head, ptr %.pn213, i32 0, i32 1
  %35 = ptrtoint ptr %prev60 to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pn = load ptr, ptr %prev60, align 4
  %cmp50 = icmp eq ptr %.pn, %as_lru_list45
  br i1 %cmp50, label %for.inc.do.end82.critedge_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.do.end82.critedge_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end82.critedge

do.end82.critedge:                                ; preds = %for.inc.do.end82.critedge_crit_edge, %if.then44.do.end82.critedge_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 200, i32 noundef 9, ptr noundef null) #9
  br label %if.end88

if.end88:                                         ; preds = %do.end82.critedge, %for.body.if.end88_crit_edge
  %.pn209 = phi ptr [ %as_lru_list45, %do.end82.critedge ], [ %.pn213, %for.body.if.end88_crit_edge ]
  %call.i.i200 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn209) #9
  br i1 %call.i.i200, label %if.end.i.i203, label %if.end88.list_del_init.exit_crit_edge

if.end88.list_del_init.exit_crit_edge:            ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i203:                                    ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i201 = getelementptr inbounds %struct.list_head, ptr %.pn209, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i.i201 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i.i201, align 4
  %38 = ptrtoint ptr %.pn209 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %.pn209, align 4
  %prev1.i.i.i202 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %prev1.i.i.i202 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev1.i.i.i202, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %39, ptr %37, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i203, %if.end88.list_del_init.exit_crit_edge
  %42 = ptrtoint ptr %.pn209 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %.pn209, ptr %.pn209, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn209, i32 0, i32 1
  %43 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %.pn209, ptr %prev.i3.i, align 4
  %as97 = getelementptr i8, ptr %.pn209, i32 -8
  %44 = ptrtoint ptr %as97 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %as97, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp99 = icmp slt i32 %45, 0
  br i1 %cmp99, label %do.end115, label %list_del_init.exit.if.end121_crit_edge, !prof !72

list_del_init.exit.if.end121_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end121

do.end115:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 205, i32 noundef 9, ptr noundef null) #9
  br label %if.end121

if.end121:                                        ; preds = %do.end115, %list_del_init.exit.if.end121_crit_edge
  %46 = ptrtoint ptr %as97 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %as97, align 4
  br label %if.end130

if.end130:                                        ; preds = %if.end121, %if.end38.if.end130_crit_edge
  %as.0 = phi i32 [ %29, %if.end38.if.end130_crit_edge ], [ %45, %if.end121 ]
  %47 = ptrtoint ptr %as1 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %as.0, ptr %as1, align 4
  tail call void @_set_bit(i32 noundef %as.0, ptr noundef %as_alloc_mask) #9
  %as_count133 = getelementptr inbounds %struct.panfrost_mmu, ptr %mmu, i32 0, i32 7
  %call.i.i198 = tail call zeroext i1 @__kasan_check_write(ptr noundef %as_count133, i32 noundef 4) #9
  %48 = ptrtoint ptr %as_count133 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 1, ptr %as_count133, align 4
  %list134 = getelementptr inbounds %struct.panfrost_mmu, ptr %mmu, i32 0, i32 8
  %as_lru_list135 = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 17
  %49 = ptrtoint ptr %as_lru_list135 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %as_lru_list135, align 4
  %call.i.i205 = tail call zeroext i1 @__list_add_valid(ptr noundef %list134, ptr noundef %as_lru_list135, ptr noundef %50) #9
  br i1 %call.i.i205, label %if.end.i.i206, label %if.end130.list_add.exit_crit_edge

if.end130.list_add.exit_crit_edge:                ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit

if.end.i.i206:                                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %list134, ptr %prev1.i.i, align 4
  %52 = ptrtoint ptr %list134 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %50, ptr %list134, align 4
  %prev3.i.i = getelementptr inbounds %struct.panfrost_mmu, ptr %mmu, i32 0, i32 8, i32 1
  %53 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %as_lru_list135, ptr %prev3.i.i, align 4
  %54 = ptrtoint ptr %as_lru_list135 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %list134, ptr %as_lru_list135, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i206, %if.end130.list_add.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @panfrost_mmu_as_get.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@panfrost_mmu_as_get, %if.then146)) #9
          to label %out.sink.split [label %if.then146], !srcloc !77

if.then146:                                       ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pfdev, align 8
  %57 = ptrtoint ptr %as_alloc_mask to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %as_alloc_mask, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @panfrost_mmu_as_get.__UNIQUE_ID_ddebug310, ptr noundef %56, ptr noundef nonnull @.str.3, i32 noundef %as.0, ptr noundef %mmu, i32 noundef %58) #9
  br label %out.sink.split

out.sink.split:                                   ; preds = %if.then146, %list_add.exit, %do.body25
  %as.1.ph = phi i32 [ %1, %do.body25 ], [ %as.0, %list_add.exit ], [ %as.0, %if.then146 ]
  tail call fastcc void @panfrost_mmu_enable(ptr noundef %pfdev, ptr noundef %mmu)
  br label %out

out:                                              ; preds = %out.sink.split, %list_move.exit.out_crit_edge
  %as.1 = phi i32 [ %1, %list_move.exit.out_crit_edge ], [ %as.1.ph, %out.sink.split ]
  tail call void @_raw_spin_unlock(ptr noundef %as_lock) #9
  ret i32 %as.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @panfrost_mmu_enable(ptr noundef %pfdev, ptr nocapture noundef readonly %mmu) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %as = getelementptr inbounds %struct.panfrost_mmu, ptr %mmu, i32 0, i32 6
  %0 = ptrtoint ptr %as to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %as, align 4
  %2 = getelementptr inbounds %struct.panfrost_mmu, ptr %mmu, i32 0, i32 2, i32 7
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %2, align 8
  %memattr2 = getelementptr inbounds %struct.panfrost_mmu, ptr %mmu, i32 0, i32 2, i32 7, i32 0, i32 0, i32 1
  %5 = ptrtoint ptr %memattr2 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %memattr2, align 8
  tail call fastcc void @mmu_hw_do_operation_locked(ptr noundef %pfdev, i32 noundef %1, i64 noundef 0, i64 noundef -1, i32 noundef 5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !78
  tail call void @arm_heavy_mb() #9
  %conv = trunc i64 %4 to i32
  %7 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %iomem = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 3
  %8 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iomem, align 4
  %shl = shl i32 %1, 6
  %add = add i32 %shl, 9216
  %add.ptr = getelementptr i8, ptr %9, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %7) #9, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !79
  tail call void @arm_heavy_mb() #9
  %shr = lshr i64 %4, 32
  %conv8 = trunc i64 %shr to i32
  %10 = tail call i32 @llvm.bswap.i32(i32 %conv8)
  %11 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iomem, align 4
  %add12 = add i32 %shl, 9220
  %add.ptr13 = getelementptr i8, ptr %12, i32 %add12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %10) #9, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !80
  tail call void @arm_heavy_mb() #9
  %conv18 = trunc i64 %6 to i32
  %13 = tail call i32 @llvm.bswap.i32(i32 %conv18)
  %14 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iomem, align 4
  %add22 = add i32 %shl, 9224
  %add.ptr23 = getelementptr i8, ptr %15, i32 %add22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %13) #9, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !81
  tail call void @arm_heavy_mb() #9
  %shr27 = lshr i64 %6, 32
  %conv29 = trunc i64 %shr27 to i32
  %16 = tail call i32 @llvm.bswap.i32(i32 %conv29)
  %17 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %iomem, align 4
  %add33 = add i32 %shl, 9228
  %add.ptr34 = getelementptr i8, ptr %18, i32 %add33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 %16) #9, !srcloc !74
  %call.i = tail call fastcc i32 @wait_ready(ptr noundef %pfdev, i32 noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body.i, label %entry.write_cmd.exit_crit_edge

entry.write_cmd.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %write_cmd.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  tail call void @arm_heavy_mb() #9
  %19 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %iomem, align 4
  %add1.i = add i32 %shl, 9240
  %add.ptr.i = getelementptr i8, ptr %20, i32 %add1.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #9, !srcloc !74
  br label %write_cmd.exit

write_cmd.exit:                                   ; preds = %do.body.i, %entry.write_cmd.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @panfrost_mmu_as_put(ptr nocapture noundef readnone %pfdev, ptr noundef %mmu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %as_count = getelementptr inbounds %struct.panfrost_mmu, ptr %mmu, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %as_count, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %as_count, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %as_count, ptr %as_count, i32 1, ptr elementtype(i32) %as_count) #9, !srcloc !83
  %call.i.i22 = tail call zeroext i1 @__kasan_check_read(ptr noundef %as_count, i32 noundef 4) #9
  %1 = ptrtoint ptr %as_count to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %as_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !72

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 227, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @panfrost_mmu_reset(ptr noundef %pfdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %as_lock = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %as_lock) #9
  %as_alloc_mask = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 15
  %0 = ptrtoint ptr %as_alloc_mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %as_alloc_mask, align 4
  %as_faulty_mask = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 16
  %1 = ptrtoint ptr %as_faulty_mask to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %as_faulty_mask, align 8
  %as_lru_list = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 17
  %2 = ptrtoint ptr %as_lru_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %as_lru_list, align 4
  %cmp.not34 = icmp eq ptr %3, %as_lru_list
  br i1 %cmp.not34, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %list_del_init.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in35 = phi ptr [ %.pn, %list_del_init.exit.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %4 = ptrtoint ptr %.pn.in35 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn.in35, align 4
  %as = getelementptr i8, ptr %.pn.in35, i32 -8
  %5 = ptrtoint ptr %as to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %as, align 4
  %as_count = getelementptr i8, ptr %.pn.in35, i32 -4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %as_count, i32 noundef 4) #9
  %6 = ptrtoint ptr %as_count to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 0, ptr %as_count, align 4
  %call.i.i33 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in35) #9
  br i1 %call.i.i33, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in35, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %.pn.in35 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %.pn.in35, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %13 = ptrtoint ptr %.pn.in35 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %.pn.in35, ptr %.pn.in35, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in35, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %.pn.in35, ptr %prev.i3.i, align 4
  %cmp.not = icmp eq ptr %.pn, %as_lru_list
  br i1 %cmp.not, label %list_del_init.exit.for.end_crit_edge, label %list_del_init.exit.for.body_crit_edge

list_del_init.exit.for.body_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

list_del_init.exit.for.end_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %list_del_init.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %as_lock) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !84
  tail call void @arm_heavy_mb() #9
  %iomem = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 3
  %15 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %iomem, align 4
  %add.ptr14 = getelementptr i8, ptr %16, i32 8196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 -1) #9, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !85
  tail call void @arm_heavy_mb() #9
  %17 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %iomem, align 4
  %add.ptr19 = getelementptr i8, ptr %18, i32 8200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 -1) #9, !srcloc !74
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @panfrost_mmu_map(ptr nocapture noundef %mapping) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %obj = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %mapping, i32 0, i32 2
  %0 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %obj, align 4
  %dev = getelementptr inbounds %struct.drm_gem_object, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private.i, align 4
  %active = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %mapping, i32 0, i32 5
  %6 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.end23, label %do.end, !prof !86

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 313, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end23:                                         ; preds = %entry
  %noexec = getelementptr inbounds %struct.panfrost_gem_object, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %noexec to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load24 = load i8, ptr %noexec, align 4
  %call29 = tail call ptr @drm_gem_shmem_get_pages_sgt(ptr noundef %1) #9
  %cmp.i = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end47, label %if.end64, !prof !72

do.end47:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 320, i32 noundef 9, ptr noundef null) #9
  %8 = ptrtoint ptr %call29 to i32
  br label %cleanup

if.end64:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load24)
  %bf.cast26.not = icmp sgt i8 %bf.load24, -1
  %spec.select = select i1 %bf.cast26.not, i32 3, i32 11
  %mmu = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %mapping, i32 0, i32 4
  %9 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmu, align 8
  %start = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %mapping, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %start, align 8
  %shl = shl i64 %12, 12
  tail call fastcc void @mmu_map_sg(ptr noundef %5, ptr noundef %10, i64 noundef %shl, i32 noundef %spec.select, ptr noundef %call29)
  %13 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load67 = load i8, ptr %active, align 4
  %bf.set = or i8 %bf.load67, -128
  store i8 %bf.set, ptr %active, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %do.end47, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %8, %do.end47 ], [ 0, %if.end64 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_shmem_get_pages_sgt(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mmu_map_sg(ptr noundef %pfdev, ptr nocapture noundef readonly %mmu, i64 noundef %iova, i32 noundef %prot, ptr nocapture noundef readonly %sgt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pgtbl_ops = getelementptr inbounds %struct.panfrost_mmu, ptr %mmu, i32 0, i32 3
  %0 = ptrtoint ptr %pgtbl_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pgtbl_ops, align 8
  %nents = getelementptr inbounds %struct.sg_table, ptr %sgt, i32 0, i32 1
  %2 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp7.not = icmp eq i32 %3, 0
  br i1 %cmp7.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %4 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sgt, align 4
  %as = getelementptr inbounds %struct.panfrost_mmu, ptr %mmu, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %while.end.for.body_crit_edge, %for.body.lr.ph
  %iova.addr.010 = phi i64 [ %iova, %for.body.lr.ph ], [ %iova.addr.1.lcssa, %while.end.for.body_crit_edge ]
  %count.09 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %while.end.for.body_crit_edge ]
  %sgl.08 = phi ptr [ %5, %for.body.lr.ph ], [ %call10, %while.end.for.body_crit_edge ]
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sgl.08, i32 0, i32 3
  %6 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_address, align 4
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sgl.08, i32 0, i32 4
  %8 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_length, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmu_map_sg.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmu_map_sg, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !77

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pfdev, align 8
  %12 = ptrtoint ptr %as to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %as, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mmu_map_sg.__UNIQUE_ID_ddebug311, ptr noundef %11, ptr noundef nonnull @.str.16, i32 noundef %13, i64 noundef %iova.addr.010, i32 noundef %7, i32 noundef %9) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool4.not3 = icmp eq i32 %9, 0
  br i1 %tobool4.not3, label %do.end.while.end_crit_edge, label %do.end.while.body_crit_edge

do.end.while.body_crit_edge:                      ; preds = %do.end
  br label %while.body

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %do.end.while.body_crit_edge
  %iova.addr.16 = phi i64 [ %add, %while.body.while.body_crit_edge ], [ %iova.addr.010, %do.end.while.body_crit_edge ]
  %len.05 = phi i32 [ %sub, %while.body.while.body_crit_edge ], [ %9, %do.end.while.body_crit_edge ]
  %paddr.04 = phi i32 [ %add9, %while.body.while.body_crit_edge ], [ %7, %do.end.while.body_crit_edge ]
  %conv = zext i32 %paddr.04 to i64
  %or = or i64 %iova.addr.16, %conv
  %and.i = and i64 %or, 2097151
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp ne i64 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %len.05)
  %cmp.i = icmp ult i32 %len.05, 2097152
  %or.cond.i = or i1 %cmp.i, %tobool.not.i
  %retval.0.i1 = select i1 %or.cond.i, i32 4096, i32 2097152
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %conv6 = trunc i64 %iova.addr.16 to i32
  %call7 = tail call i32 %15(ptr noundef %1, i32 noundef %conv6, i32 noundef %paddr.04, i32 noundef %retval.0.i1, i32 noundef %prot, i32 noundef 3264) #9
  %conv8 = zext i32 %retval.0.i1 to i64
  %add = add i64 %iova.addr.16, %conv8
  %add9 = add i32 %retval.0.i1, %paddr.04
  %sub = sub i32 %len.05, %retval.0.i1
  %tobool4.not = icmp eq i32 %sub, 0
  br i1 %tobool4.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %do.end.while.end_crit_edge
  %iova.addr.1.lcssa = phi i64 [ %iova.addr.010, %do.end.while.end_crit_edge ], [ %add, %while.body.while.end_crit_edge ]
  %inc = add nuw i32 %count.09, 1
  %call10 = tail call ptr @sg_next(ptr noundef %sgl.08) #9
  %16 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nents, align 4
  %cmp = icmp ult i32 %inc, %17
  br i1 %cmp, label %while.end.for.body_crit_edge, label %while.end.for.end_crit_edge

while.end.for.end_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

while.end.for.body_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %while.end.for.end_crit_edge, %entry.for.end_crit_edge
  %iova.addr.0.lcssa = phi i64 [ %iova, %entry.for.end_crit_edge ], [ %iova.addr.1.lcssa, %while.end.for.end_crit_edge ]
  %sub11 = sub i64 %iova.addr.0.lcssa, %iova
  tail call fastcc void @panfrost_mmu_flush_range(ptr noundef %pfdev, ptr noundef %mmu, i64 noundef %iova, i64 noundef %sub11)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @panfrost_mmu_unmap(ptr nocapture noundef %mapping) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %obj = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %mapping, i32 0, i32 2
  %0 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %obj, align 4
  %dev = getelementptr inbounds %struct.drm_gem_object, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private.i, align 4
  %mmu = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %mapping, i32 0, i32 4
  %6 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmu, align 8
  %pgtbl_ops = getelementptr inbounds %struct.panfrost_mmu, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %pgtbl_ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pgtbl_ops, align 8
  %start = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %mapping, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %start, align 8
  %shl = shl i64 %11, 12
  %size = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %mapping, i32 0, i32 3, i32 2
  %12 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %size, align 8
  %.tr = trunc i64 %13 to i32
  %conv = shl i32 %.tr, 12
  %active = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %mapping, i32 0, i32 5
  %14 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %do.end, label %do.body27, !prof !72

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 340, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

do.body27:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @panfrost_mmu_unmap.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@panfrost_mmu_unmap, %if.then37)) #9
          to label %do.end42 [label %if.then37], !srcloc !77

if.then37:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %5, align 8
  %17 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmu, align 8
  %as = getelementptr inbounds %struct.panfrost_mmu, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %as to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %as, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @panfrost_mmu_unmap.__UNIQUE_ID_ddebug312, ptr noundef %16, ptr noundef nonnull @.str.5, i32 noundef %20, i64 noundef %shl, i32 noundef %conv) #9
  br label %do.end42

do.end42:                                         ; preds = %if.then37, %do.body27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %cmp127.not = icmp eq i32 %conv, 0
  br i1 %cmp127.not, label %do.end42.while.end_crit_edge, label %while.body.lr.ph

do.end42.while.end_crit_edge:                     ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end42
  %iova_to_phys = getelementptr inbounds %struct.io_pgtable_ops, ptr %9, i32 0, i32 4
  %unmap = getelementptr inbounds %struct.io_pgtable_ops, ptr %9, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %if.end83.while.body_crit_edge, %while.body.lr.ph
  %iova.0129 = phi i64 [ %shl, %while.body.lr.ph ], [ %add, %if.end83.while.body_crit_edge ]
  %unmapped_len.0128 = phi i32 [ 0, %while.body.lr.ph ], [ %add85, %if.end83.while.body_crit_edge ]
  %sub = sub i32 %conv, %unmapped_len.0128
  %and.i = and i64 %iova.0129, 2093056
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp ne i64 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %sub)
  %cmp.i = icmp ult i32 %sub, 2097152
  %or.cond.i = or i1 %cmp.i, %tobool.not.i
  %retval.0.i125 = select i1 %or.cond.i, i32 4096, i32 2097152
  %21 = ptrtoint ptr %iova_to_phys to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %iova_to_phys, align 4
  %conv45 = trunc i64 %iova.0129 to i32
  %call46 = tail call i32 %22(ptr noundef %9, i32 noundef %conv45) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %while.body.if.end83_crit_edge, label %if.then48

while.body.if.end83_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83

if.then48:                                        ; preds = %while.body
  %23 = ptrtoint ptr %unmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %unmap, align 4
  %call50 = tail call i32 %24(ptr noundef %9, i32 noundef %conv45, i32 noundef %retval.0.i125, ptr noundef null) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call50, i32 %retval.0.i125)
  %cmp52.not = icmp eq i32 %call50, %retval.0.i125
  br i1 %cmp52.not, label %if.then48.if.end83_crit_edge, label %do.end69, !prof !86

if.then48.if.end83_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83

do.end69:                                         ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 352, i32 noundef 9, ptr noundef null) #9
  br label %if.end83

if.end83:                                         ; preds = %do.end69, %if.then48.if.end83_crit_edge, %while.body.if.end83_crit_edge
  %conv84 = zext i32 %retval.0.i125 to i64
  %add = add i64 %iova.0129, %conv84
  %add85 = add i32 %retval.0.i125, %unmapped_len.0128
  %cmp = icmp ugt i32 %conv, %add85
  br i1 %cmp, label %if.end83.while.body_crit_edge, label %if.end83.while.end_crit_edge

if.end83.while.end_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end83.while.body_crit_edge:                    ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %if.end83.while.end_crit_edge, %do.end42.while.end_crit_edge
  %25 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmu, align 8
  %27 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %start, align 8
  %shl89 = shl i64 %28, 12
  %conv90 = zext i32 %conv to i64
  tail call fastcc void @panfrost_mmu_flush_range(ptr noundef %5, ptr noundef %26, i64 noundef %shl89, i64 noundef %conv90)
  %29 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load92 = load i8, ptr %active, align 4
  %bf.clear = and i8 %bf.load92, 127
  store i8 %bf.clear, ptr %active, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @panfrost_mmu_flush_range(ptr noundef %pfdev, ptr nocapture noundef readonly %mmu, i64 noundef %iova, i64 noundef %size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %as = getelementptr inbounds %struct.panfrost_mmu, ptr %mmu, i32 0, i32 6
  %0 = ptrtoint ptr %as to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %as, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pfdev, align 8
  %usage_count.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !87
  %5 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pfdev, align 8
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 12, i32 18
  %7 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp eq i32 %8, 0
  br i1 %cmp.i, label %if.end.if.then2_crit_edge, label %pm_runtime_active.exit

if.end.if.then2_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2

pm_runtime_active.exit:                           ; preds = %if.end
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 12, i32 15
  %9 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i)
  %tobool.i = icmp ugt i16 %bf.load.i, 8191
  br i1 %tobool.i, label %pm_runtime_active.exit.if.then2_crit_edge, label %pm_runtime_active.exit.if.end4_crit_edge

pm_runtime_active.exit.if.end4_crit_edge:         ; preds = %pm_runtime_active.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

pm_runtime_active.exit.if.then2_crit_edge:        ; preds = %pm_runtime_active.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2

if.then2:                                         ; preds = %pm_runtime_active.exit.if.then2_crit_edge, %if.end.if.then2_crit_edge
  %as_lock.i = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %as_lock.i) #9
  %10 = ptrtoint ptr %as to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %as, align 4
  tail call fastcc void @mmu_hw_do_operation_locked(ptr noundef %pfdev, i32 noundef %11, i64 noundef %iova, i64 noundef %size, i32 noundef 4) #9
  tail call void @_raw_spin_unlock(ptr noundef %as_lock.i) #9
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %pm_runtime_active.exit.if.end4_crit_edge
  %12 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pfdev, align 8
  %call.i = tail call i32 @__pm_runtime_suspend(ptr noundef %13, i32 noundef 12) #9
  br label %return

return:                                           ; preds = %if.end4, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @panfrost_mmu_ctx_put(ptr noundef %mmu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %refcount = getelementptr inbounds %struct.panfrost_mmu, ptr %mmu, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !88
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !89
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !86

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #9
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !90
  %1 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mmu, align 8
  %as_lock.i = getelementptr inbounds %struct.panfrost_device, ptr %2, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %as_lock.i) #9
  %as.i = getelementptr %struct.panfrost_mmu, ptr %mmu, i32 0, i32 6
  %3 = ptrtoint ptr %as.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %as.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp.i = icmp sgt i32 %4, -1
  br i1 %cmp.i, label %if.then.i1, label %if.then.i.panfrost_mmu_release_ctx.exit_crit_edge

if.then.i.panfrost_mmu_release_ctx.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %panfrost_mmu_release_ctx.exit

if.then.i1:                                       ; preds = %if.then.i
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 8
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #9
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 1, ptr elementtype(i32) %usage_count.i.i) #9, !srcloc !87
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %2, align 8
  %runtime_status.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 12, i32 18
  %10 = ptrtoint ptr %runtime_status.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %runtime_status.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i.i = icmp eq i32 %11, 0
  br i1 %cmp.i.i, label %if.then.i1.if.then3.i_crit_edge, label %pm_runtime_active.exit.i

if.then.i1.if.then3.i_crit_edge:                  ; preds = %if.then.i1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3.i

pm_runtime_active.exit.i:                         ; preds = %if.then.i1
  %disable_depth.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 12, i32 15
  %12 = ptrtoint ptr %disable_depth.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load.i.i = load i16, ptr %disable_depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i.i)
  %tobool.i.i = icmp ugt i16 %bf.load.i.i, 8191
  br i1 %tobool.i.i, label %pm_runtime_active.exit.i.if.then3.i_crit_edge, label %pm_runtime_active.exit.i.if.end.i_crit_edge

pm_runtime_active.exit.i.if.end.i_crit_edge:      ; preds = %pm_runtime_active.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

pm_runtime_active.exit.i.if.then3.i_crit_edge:    ; preds = %pm_runtime_active.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3.i

if.then3.i:                                       ; preds = %pm_runtime_active.exit.i.if.then3.i_crit_edge, %if.then.i1.if.then3.i_crit_edge
  %13 = ptrtoint ptr %as.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %as.i, align 4
  tail call fastcc void @panfrost_mmu_disable(ptr noundef %2, i32 noundef %14) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then3.i, %pm_runtime_active.exit.i.if.end.i_crit_edge
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %2, align 8
  %call.i.i = tail call i32 @__pm_runtime_suspend(ptr noundef %16, i32 noundef 13) #9
  %17 = ptrtoint ptr %as.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %as.i, align 4
  %as_alloc_mask.i = getelementptr inbounds %struct.panfrost_device, ptr %2, i32 0, i32 15
  tail call void @_clear_bit(i32 noundef %18, ptr noundef %as_alloc_mask.i) #9
  %19 = ptrtoint ptr %as.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %as.i, align 4
  %as_in_use_mask.i = getelementptr inbounds %struct.panfrost_device, ptr %2, i32 0, i32 14
  tail call void @_clear_bit(i32 noundef %20, ptr noundef %as_in_use_mask.i) #9
  %list.i = getelementptr %struct.panfrost_mmu, ptr %mmu, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr %struct.panfrost_mmu, ptr %mmu, i32 0, i32 8, i32 1
  %21 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i.i, align 4
  %23 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_del.exit.i_crit_edge
  %27 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i, align 4
  %prev.i.i = getelementptr %struct.panfrost_mmu, ptr %mmu, i32 0, i32 8, i32 1
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  br label %panfrost_mmu_release_ctx.exit

panfrost_mmu_release_ctx.exit:                    ; preds = %list_del.exit.i, %if.then.i.panfrost_mmu_release_ctx.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %as_lock.i) #9
  %pgtbl_ops.i = getelementptr %struct.panfrost_mmu, ptr %mmu, i32 0, i32 3
  %29 = ptrtoint ptr %pgtbl_ops.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pgtbl_ops.i, align 8
  tail call void @free_io_pgtable_ops(ptr noundef %30) #9
  %mm.i = getelementptr %struct.panfrost_mmu, ptr %mmu, i32 0, i32 4
  tail call void @drm_mm_takedown(ptr noundef %mm.i) #9
  tail call void @kfree(ptr noundef %mmu) #9
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %panfrost_mmu_release_ctx.exit, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @panfrost_mmu_ctx_get(ptr noundef returned %mmu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %refcount = getelementptr inbounds %struct.panfrost_mmu, ptr %mmu, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !91
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !72

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !86

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i.i) #9
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  ret ptr %mmu
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @panfrost_mmu_ctx_create(ptr noundef %pfdev) local_unnamed_addr #0 align 64 {
entry:
  %.compoundliteral.sroa.8 = alloca [44 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 304) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pfdev, ptr %call7.i.i, align 8
  %mm_lock = getelementptr inbounds %struct.panfrost_mmu, ptr %call7.i.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %mm_lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @panfrost_mmu_ctx_create.__key, i16 noundef signext 3) #9
  %mm = getelementptr inbounds %struct.panfrost_mmu, ptr %call7.i.i, i32 0, i32 4
  tail call void @drm_mm_init(ptr noundef %mm, i64 noundef 8192, i64 noundef 1040384) #9
  %2 = ptrtoint ptr %mm to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @panfrost_drm_mm_color_adjust, ptr %mm, align 8
  %list = getelementptr inbounds %struct.panfrost_mmu, ptr %call7.i.i, i32 0, i32 8
  %3 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.panfrost_mmu, ptr %call7.i.i, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %list, ptr %prev.i, align 8
  %as = getelementptr inbounds %struct.panfrost_mmu, ptr %call7.i.i, i32 0, i32 6
  %5 = ptrtoint ptr %as to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %as, align 4
  %pgtbl_cfg = getelementptr inbounds %struct.panfrost_mmu, ptr %call7.i.i, i32 0, i32 2
  %mmu_features = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 11, i32 12
  %6 = ptrtoint ptr %mmu_features to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mmu_features, align 8
  %and = and i32 %7, 255
  %and38 = lshr i32 %7, 8
  %shr39 = and i32 %and38, 255
  %coherent = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 10
  %8 = ptrtoint ptr %coherent to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %coherent, align 8, !range !92
  %10 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pfdev, align 8
  %.compoundliteral.sroa.8.4..sroa_idx = getelementptr inbounds i8, ptr %.compoundliteral.sroa.8, i32 4
  %12 = call ptr @memset(ptr %.compoundliteral.sroa.8.4..sroa_idx, i32 0, i32 40)
  %13 = ptrtoint ptr %pgtbl_cfg to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %pgtbl_cfg, align 8
  %.compoundliteral.sroa.2.0.pgtbl_cfg.sroa_idx = getelementptr inbounds %struct.panfrost_mmu, ptr %call7.i.i, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %.compoundliteral.sroa.2.0.pgtbl_cfg.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2101248, ptr %.compoundliteral.sroa.2.0.pgtbl_cfg.sroa_idx, align 4
  %.compoundliteral.sroa.3.0.pgtbl_cfg.sroa_idx = getelementptr inbounds %struct.panfrost_mmu, ptr %call7.i.i, i32 0, i32 2, i32 2
  %15 = ptrtoint ptr %.compoundliteral.sroa.3.0.pgtbl_cfg.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and, ptr %.compoundliteral.sroa.3.0.pgtbl_cfg.sroa_idx, align 8
  %.compoundliteral.sroa.4.0.pgtbl_cfg.sroa_idx = getelementptr inbounds %struct.panfrost_mmu, ptr %call7.i.i, i32 0, i32 2, i32 3
  %16 = ptrtoint ptr %.compoundliteral.sroa.4.0.pgtbl_cfg.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %shr39, ptr %.compoundliteral.sroa.4.0.pgtbl_cfg.sroa_idx, align 4
  %.compoundliteral.sroa.5.0.pgtbl_cfg.sroa_idx = getelementptr inbounds %struct.panfrost_mmu, ptr %call7.i.i, i32 0, i32 2, i32 4
  %17 = ptrtoint ptr %.compoundliteral.sroa.5.0.pgtbl_cfg.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %9, ptr %.compoundliteral.sroa.5.0.pgtbl_cfg.sroa_idx, align 8
  %.compoundliteral.sroa.648.0.pgtbl_cfg.sroa_idx = getelementptr inbounds %struct.panfrost_mmu, ptr %call7.i.i, i32 0, i32 2, i32 5
  %18 = ptrtoint ptr %.compoundliteral.sroa.648.0.pgtbl_cfg.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @mmu_tlb_ops, ptr %.compoundliteral.sroa.648.0.pgtbl_cfg.sroa_idx, align 4
  %.compoundliteral.sroa.7.0.pgtbl_cfg.sroa_idx = getelementptr inbounds %struct.panfrost_mmu, ptr %call7.i.i, i32 0, i32 2, i32 6
  %19 = ptrtoint ptr %.compoundliteral.sroa.7.0.pgtbl_cfg.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %11, ptr %.compoundliteral.sroa.7.0.pgtbl_cfg.sroa_idx, align 8
  %.compoundliteral.sroa.8.0.pgtbl_cfg.sroa_idx = getelementptr inbounds i8, ptr %pgtbl_cfg, i32 28
  %20 = call ptr @memcpy(ptr %.compoundliteral.sroa.8.0.pgtbl_cfg.sroa_idx, ptr %.compoundliteral.sroa.8, i32 44)
  %call42 = tail call ptr @alloc_io_pgtable_ops(i32 noundef 5, ptr noundef %pgtbl_cfg, ptr noundef nonnull %call7.i.i) #9
  %pgtbl_ops = getelementptr inbounds %struct.panfrost_mmu, ptr %call7.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %pgtbl_ops to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call42, ptr %pgtbl_ops, align 8
  %tobool44.not = icmp eq ptr %call42, null
  br i1 %tobool44.not, label %if.then45, label %if.end47

if.then45:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

if.end47:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %refcount = getelementptr inbounds %struct.panfrost_mmu, ptr %call7.i.i, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  %22 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 1, ptr %refcount, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.then45, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end47 ], [ inttoptr (i32 -22 to ptr), %if.then45 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_init(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @panfrost_drm_mm_color_adjust(ptr nocapture noundef readnone %node, i32 noundef %color, ptr nocapture noundef %start, ptr nocapture noundef %end) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %color, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end16_crit_edge

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %start, align 8
  %and1 = and i64 %1, 1048575
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1)
  %cmp = icmp eq i64 %and1, 0
  br i1 %cmp, label %if.then2, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %inc = add nuw i64 %1, 1
  %2 = ptrtoint ptr %start to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %inc, ptr %start, align 8
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %3 = ptrtoint ptr %end to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %end, align 8
  %and3 = and i64 %4, 1048575
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and3)
  %cmp4 = icmp eq i64 %and3, 0
  br i1 %cmp4, label %if.then5, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dec = add i64 %4, -1
  %5 = ptrtoint ptr %end to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %dec, ptr %end, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %6 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %start, align 8
  %add = add i64 %7, 1048575
  %and7 = and i64 %add, -1048576
  %sub = sub i64 %and7, %7
  call void @__sanitizer_cov_trace_const_cmp8(i64 4097, i64 %sub)
  %cmp8 = icmp ult i64 %sub, 4097
  br i1 %cmp8, label %if.then9, label %if.end6.if.end11_crit_edge

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %add10 = or i64 %and7, 1
  %8 = ptrtoint ptr %start to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %add10, ptr %start, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end6.if.end11_crit_edge
  %9 = ptrtoint ptr %end to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %end, align 8
  %11 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %start, align 8
  %add12 = add i64 %12, 1048575
  %and13 = and i64 %add12, -1048576
  %sub14 = add i64 %and13, -1
  %13 = tail call i64 @llvm.umin.i64(i64 %10, i64 %sub14)
  %14 = ptrtoint ptr %end to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %end, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.end11, %entry.if.end16_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_io_pgtable_ops(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @panfrost_mmu_init(ptr noundef %pfdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pfdev, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -16
  %call = tail call i32 @platform_get_irq_byname(ptr noundef %add.ptr, ptr noundef nonnull @.str.7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pfdev, align 8
  %call2 = tail call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %call, ptr noundef nonnull @panfrost_mmu_irq_handler, ptr noundef nonnull @panfrost_mmu_irq_handler_thread, i32 noundef 128, ptr noundef nonnull @.str.8, ptr noundef %pfdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pfdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.9) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %do.end ], [ -19, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @panfrost_mmu_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %iomem = getelementptr inbounds %struct.panfrost_device, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iomem, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8204
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !95
  tail call void @arm_heavy_mb() #9
  %3 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %iomem, align 4
  %add.ptr3 = getelementptr i8, ptr %4, i32 8200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 0) #9, !srcloc !74
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %do.body ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @panfrost_mmu_irq_handler_thread(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %iomem = getelementptr inbounds %struct.panfrost_device, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iomem, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8192
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not128 = icmp eq i32 %2, 0
  br i1 %tobool.not128, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %hw_features.i.i = getelementptr inbounds %struct.panfrost_device, ptr %data, i32 0, i32 11, i32 23
  %as_lock = getelementptr inbounds %struct.panfrost_device, ptr %data, i32 0, i32 13
  %as_faulty_mask = getelementptr inbounds %struct.panfrost_device, ptr %data, i32 0, i32 16
  br label %while.body

while.body:                                       ; preds = %if.end74.while.body_crit_edge, %while.body.lr.ph
  %status.0129 = phi i32 [ %3, %while.body.lr.ph ], [ %status.1, %if.end74.while.body_crit_edge ]
  %shr = lshr i32 %status.0129, 16
  %or = or i32 %shr, %status.0129
  %4 = tail call i32 @llvm.cttz.i32(i32 %or, i1 true), !range !76
  %shl = shl nuw i32 1, %4
  %or3 = shl i32 65537, %4
  %5 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iomem, align 4
  %shl7 = shl nuw nsw i32 %4, 6
  %add9 = add nuw nsw i32 %shl7, 9244
  %add.ptr10 = getelementptr i8, ptr %6, i32 %add9
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #9, !srcloc !93
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !97
  %9 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iomem, align 4
  %add19 = add nuw nsw i32 %shl7, 9248
  %add.ptr20 = getelementptr i8, ptr %10, i32 %add19
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #9, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !98
  %12 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iomem, align 4
  %add29 = add nuw nsw i32 %shl7, 9252
  %add.ptr30 = getelementptr i8, ptr %13, i32 %add29
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30) #9, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !99
  %15 = zext i32 %14 to i64
  %16 = zext i32 %11 to i64
  %17 = shl nuw i64 %16, 32
  %18 = or i64 %17, %15
  %19 = tail call i64 @llvm.bswap.i64(i64 %18)
  %and = and i32 %8, 255
  %shr37 = lshr i32 %8, 8
  %and38 = and i32 %shr37, 3
  %shr39 = lshr i32 %8, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %20 = tail call i32 @llvm.bswap.i32(i32 %or3)
  %21 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %iomem, align 4
  %add.ptr41 = getelementptr i8, ptr %22, i32 8196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 %20) #9, !srcloc !74
  %and42 = and i32 %or3, %status.0129
  call void @__sanitizer_cov_trace_cmp4(i32 %and42, i32 %shl)
  %cmp = icmp eq i32 %and42, %shl
  %and45 = and i32 %8, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %and45)
  %cmp46 = icmp eq i32 %and45, 192
  %or.cond = select i1 %cmp, i1 %cmp46, i1 false
  br i1 %or.cond, label %if.end, label %while.body.do.end53_crit_edge

while.body.do.end53_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end53

if.end:                                           ; preds = %while.body
  %call48 = tail call fastcc i32 @panfrost_mmu_map_fault_addr(ptr noundef %data, i32 noundef %4, i64 noundef %19)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end.if.end60_crit_edge, label %if.end.do.end53_crit_edge

if.end.do.end53_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end53

if.end.if.end60_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

do.end53:                                         ; preds = %if.end.do.end53_crit_edge, %while.body.do.end53_crit_edge
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data, align 8
  %and54 = and i32 %8, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  %cond = select i1 %tobool55.not, ptr @.str.21, ptr @.str.20
  %call56 = tail call ptr @panfrost_exception_name(i32 noundef %and) #9
  %25 = zext i32 %and38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and38, label %entry.unreachabledefault.i [
    i32 0, label %sw.bb.i
    i32 2, label %do.end53.access_type_name.exit_crit_edge
    i32 3, label %sw.bb2.i
    i32 1, label %sw.bb3.i
  ]

do.end53.access_type_name.exit_crit_edge:         ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %access_type_name.exit

sw.bb.i:                                          ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %hw_features.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %hw_features.i.i, align 4
  %28 = and i32 %27, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.i.not.i = icmp eq i32 %28, 0
  %.str.25..str.26.i = select i1 %tobool.i.not.i, ptr @.str.26, ptr @.str.25
  br label %access_type_name.exit

sw.bb2.i:                                         ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %access_type_name.exit

sw.bb3.i:                                         ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %access_type_name.exit

entry.unreachabledefault.i:                       ; preds = %do.end53
  unreachable

access_type_name.exit:                            ; preds = %sw.bb3.i, %sw.bb2.i, %sw.bb.i, %do.end53.access_type_name.exit_crit_edge
  %retval.0.i = phi ptr [ @.str.29, %sw.bb3.i ], [ @.str.28, %sw.bb2.i ], [ %.str.25..str.26.i, %sw.bb.i ], [ @.str.27, %do.end53.access_type_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.17, i32 noundef %4, i64 noundef %19, ptr noundef nonnull @.str.19, i32 noundef %8, ptr noundef nonnull %cond, i32 noundef %and, ptr noundef %call56, i32 noundef %and38, ptr noundef nonnull %retval.0.i, i32 noundef %shr39) #13
  tail call void @_raw_spin_lock(ptr noundef %as_lock) #9
  %29 = ptrtoint ptr %as_faulty_mask to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %as_faulty_mask, align 8
  %or58 = or i32 %30, %or3
  store i32 %or58, ptr %as_faulty_mask, align 8
  tail call fastcc void @panfrost_mmu_disable(ptr noundef %data, i32 noundef %4)
  tail call void @_raw_spin_unlock(ptr noundef %as_lock) #9
  br label %if.end60

if.end60:                                         ; preds = %access_type_name.exit, %if.end.if.end60_crit_edge
  %neg = xor i32 %or3, -1
  %and61 = and i32 %status.0129, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.then63, label %if.end60.if.end74_crit_edge

if.end60.if.end74_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

if.then63:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %iomem, align 4
  %add.ptr67 = getelementptr i8, ptr %32, i32 8192
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr67) #9, !srcloc !93
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !101
  %35 = ptrtoint ptr %as_faulty_mask to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %as_faulty_mask, align 8
  %neg72 = xor i32 %36, -1
  %and73 = and i32 %34, %neg72
  br label %if.end74

if.end74:                                         ; preds = %if.then63, %if.end60.if.end74_crit_edge
  %status.1 = phi i32 [ %and61, %if.end60.if.end74_crit_edge ], [ %and73, %if.then63 ]
  %tobool.not = icmp eq i32 %status.1, 0
  br i1 %tobool.not, label %if.end74.while.end_crit_edge, label %if.end74.while.body_crit_edge

if.end74.while.body_crit_edge:                    ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end74.while.end_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end74.while.end_crit_edge, %entry.while.end_crit_edge
  %as_lock75 = getelementptr inbounds %struct.panfrost_device, ptr %data, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %as_lock75) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  tail call void @arm_heavy_mb() #9
  %as_faulty_mask79 = getelementptr inbounds %struct.panfrost_device, ptr %data, i32 0, i32 16
  %37 = ptrtoint ptr %as_faulty_mask79 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %as_faulty_mask79, align 8
  %neg80 = xor i32 %38, -1
  %39 = tail call i32 @llvm.bswap.i32(i32 %neg80)
  %40 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %iomem, align 4
  %add.ptr82 = getelementptr i8, ptr %41, i32 8200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82, i32 %39) #9, !srcloc !74
  tail call void @_raw_spin_unlock(ptr noundef %as_lock75) #9
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @panfrost_mmu_fini(ptr nocapture noundef readonly %pfdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  tail call void @arm_heavy_mb() #9
  %iomem = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 3
  %0 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iomem, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #9, !srcloc !74
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mmu_hw_do_operation_locked(ptr noundef %pfdev, i32 noundef %as_nr, i64 noundef %iova, i64 noundef %size, i32 noundef %op) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %as_nr)
  %cmp = icmp slt i32 %as_nr, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.then2

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %size)
  %tobool.not.i = icmp eq i64 %size, 0
  br i1 %tobool.not.i, label %if.then2.lock_region.exit_crit_edge, label %if.end.i

if.then2.lock_region.exit_crit_edge:              ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %lock_region.exit

if.end.i:                                         ; preds = %if.then2
  %add.i = add i64 %iova, -1
  %sub.i = add i64 %add.i, %size
  %xor.i = xor i64 %sub.i, %iova
  %shr.i.i = lshr i64 %xor.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i)
  %tobool.not.i.i = icmp eq i32 %conv.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %0 = tail call i32 @llvm.ctlz.i32(i32 %conv.i.i, i1 true) #9, !range !76
  %add.i.i = sub nuw nsw i32 64, %0
  br label %fls64.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv1.i.i = trunc i64 %xor.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.i)
  %tobool.not.i5.i.i = icmp eq i32 %conv1.i.i, 0
  %1 = tail call i32 @llvm.ctlz.i32(i32 %conv1.i.i, i1 true) #9, !range !76
  %sub.i6.i.i = sub nuw nsw i32 32, %1
  %cond.i7.i.i = select i1 %tobool.not.i5.i.i, i32 0, i32 %sub.i6.i.i
  br label %fls64.exit.i

fls64.exit.i:                                     ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %cond.i7.i.i, %if.end.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %retval.0.i.i)
  %cmp.i = icmp ugt i32 %retval.0.i.i, 15
  %2 = trunc i32 %retval.0.i.i to i8
  %phi.cast.i = add nsw i8 %2, -1
  %3 = zext i8 %phi.cast.i to i64
  %sh_prom.i = select i1 %cmp.i, i64 %3, i64 14
  %shl.neg.i = shl nsw i64 -1, %sh_prom.i
  %and6.i = and i64 %shl.neg.i, %iova
  %or.i = or i64 %and6.i, %sh_prom.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !104
  tail call void @arm_heavy_mb() #9
  %conv9.i = trunc i64 %or.i to i32
  %4 = tail call i32 @llvm.bswap.i32(i32 %conv9.i) #9
  %iomem.i = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 3
  %5 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iomem.i, align 4
  %shl10.i = shl i32 %as_nr, 6
  %add12.i = add i32 %shl10.i, 9232
  %add.ptr.i = getelementptr i8, ptr %6, i32 %add12.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #9, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !105
  tail call void @arm_heavy_mb() #9
  %shr.i = lshr i64 %and6.i, 32
  %conv17.i = trunc i64 %shr.i to i32
  %7 = tail call i32 @llvm.bswap.i32(i32 %conv17.i) #9
  %8 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iomem.i, align 4
  %add21.i = add i32 %shl10.i, 9236
  %add.ptr22.i = getelementptr i8, ptr %9, i32 %add21.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 %7) #9, !srcloc !74
  %call.i.i = tail call fastcc i32 @wait_ready(ptr noundef %pfdev, i32 noundef %as_nr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i38.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i38.i, label %do.body.i.i, label %fls64.exit.i.lock_region.exit_crit_edge

fls64.exit.i.lock_region.exit_crit_edge:          ; preds = %fls64.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lock_region.exit

do.body.i.i:                                      ; preds = %fls64.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  tail call void @arm_heavy_mb() #9
  %10 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iomem.i, align 4
  %add1.i.i = add i32 %shl10.i, 9240
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %add1.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 33554432) #9, !srcloc !74
  br label %lock_region.exit

lock_region.exit:                                 ; preds = %do.body.i.i, %fls64.exit.i.lock_region.exit_crit_edge, %if.then2.lock_region.exit_crit_edge
  %call.i = tail call fastcc i32 @wait_ready(ptr noundef %pfdev, i32 noundef %as_nr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i1 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i1, label %do.body.i, label %lock_region.exit.write_cmd.exit_crit_edge

lock_region.exit.write_cmd.exit_crit_edge:        ; preds = %lock_region.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %write_cmd.exit

do.body.i:                                        ; preds = %lock_region.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  tail call void @arm_heavy_mb() #9
  %12 = tail call i32 @llvm.bswap.i32(i32 %op) #9
  %iomem.i2 = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 3
  %13 = ptrtoint ptr %iomem.i2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %iomem.i2, align 4
  %shl.i = shl i32 %as_nr, 6
  %add1.i = add i32 %shl.i, 9240
  %add.ptr.i3 = getelementptr i8, ptr %14, i32 %add1.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3, i32 %12) #9, !srcloc !74
  br label %write_cmd.exit

write_cmd.exit:                                   ; preds = %do.body.i, %lock_region.exit.write_cmd.exit_crit_edge
  %call4 = tail call fastcc i32 @wait_ready(ptr noundef %pfdev, i32 noundef %as_nr)
  br label %return

return:                                           ; preds = %write_cmd.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wait_ready(ptr noundef %pfdev, i32 noundef %as_nr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #9
  %add.i = add i64 %call, 100000000
  %iomem = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 3
  %shl = shl i32 %as_nr, 6
  %add2 = add i32 %shl, 9256
  %0 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iomem, align 4
  %add.ptr44 = getelementptr i8, ptr %1, i32 %add2
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr44) #9, !srcloc !93
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not46 = icmp eq i32 %3, 0
  br i1 %tobool.not46, label %entry.if.end29_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call5 = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call5, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call5, %add.i
  br i1 %cmp3.i, label %for.end, label %cond.false

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 2147480) #9
  %5 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iomem, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 %add2
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !93
  %8 = and i32 %7, 16777216
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %cond.false.if.end29_crit_edge, label %cond.false.land.lhs.true_crit_edge

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

cond.false.if.end29_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

for.end:                                          ; preds = %land.lhs.true
  %9 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iomem, align 4
  %add.ptr13 = getelementptr i8, ptr %10, i32 %add2
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #9, !srcloc !93
  %12 = and i32 %11, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool26.not = icmp eq i32 %12, 0
  br i1 %tobool26.not, label %for.end.if.end29_crit_edge, label %if.then28

for.end.if.end29_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then28:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %reset.i = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 23
  %pending.i = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 23, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending.i, i32 noundef 4) #9
  %13 = ptrtoint ptr %pending.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 1, ptr %pending.i, align 4
  %14 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reset.i, align 8
  %work.i = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 23, i32 1
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %15, ptr noundef %work.i) #9
  %16 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pfdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.13) #13
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %for.end.if.end29_crit_edge, %cond.false.if.end29_crit_edge, %entry.if.end29_crit_edge
  %cond = phi i32 [ -110, %if.then28 ], [ 0, %for.end.if.end29_crit_edge ], [ 0, %entry.if.end29_crit_edge ], [ 0, %cond.false.if.end29_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @panfrost_mmu_disable(ptr noundef %pfdev, i32 noundef %as_nr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @mmu_hw_do_operation_locked(ptr noundef %pfdev, i32 noundef %as_nr, i64 noundef 0, i64 noundef -1, i32 noundef 5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !106
  tail call void @arm_heavy_mb() #9
  %iomem = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 3
  %0 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iomem, align 4
  %shl = shl i32 %as_nr, 6
  %add = add i32 %shl, 9216
  %add.ptr = getelementptr i8, ptr %1, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #9, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  %2 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iomem, align 4
  %add7 = add i32 %shl, 9220
  %add.ptr8 = getelementptr i8, ptr %3, i32 %add7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 0) #9, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  tail call void @arm_heavy_mb() #9
  %4 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iomem, align 4
  %add14 = add i32 %shl, 9224
  %add.ptr15 = getelementptr i8, ptr %5, i32 %add14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 0) #9, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  %6 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iomem, align 4
  %add21 = add i32 %shl, 9228
  %add.ptr22 = getelementptr i8, ptr %7, i32 %add21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 0) #9, !srcloc !74
  %call.i = tail call fastcc i32 @wait_ready(ptr noundef %pfdev, i32 noundef %as_nr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body.i, label %entry.write_cmd.exit_crit_edge

entry.write_cmd.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %write_cmd.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  tail call void @arm_heavy_mb() #9
  %8 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iomem, align 4
  %add1.i = add i32 %shl, 9240
  %add.ptr.i = getelementptr i8, ptr %9, i32 %add1.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #9, !srcloc !74
  br label %write_cmd.exit

write_cmd.exit:                                   ; preds = %do.body.i, %entry.write_cmd.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_io_pgtable_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_takedown(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mmu_tlb_inv_context_s1(ptr nocapture noundef %cookie) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mmu_tlb_flush_walk(i32 noundef %iova, i32 noundef %size, i32 noundef %granule, ptr nocapture noundef %cookie) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @panfrost_mmu_map_fault_addr(ptr noundef %pfdev, i32 noundef %as, i64 noundef %addr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %shr.i = lshr i64 %addr, 12
  %as_lock.i = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %as_lock.i) #9
  %as_lru_list.i = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 17
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %as_lru_list.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %as_lru_list.i
  br i1 %cmp.not.i, label %addr_to_mapping.exit.thread, label %for.body.i

addr_to_mapping.exit.thread:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %as_lock.i) #9
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %as2.i = getelementptr i8, ptr %.pn.i, i32 -8
  %1 = ptrtoint ptr %as2.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %as2.i, align 4
  %cmp3.i = icmp eq i32 %2, %as
  br i1 %cmp3.i, label %found_mmu.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

found_mmu.i:                                      ; preds = %for.body.i
  %mm_lock.i = getelementptr i8, ptr %.pn.i, i32 -52
  tail call void @_raw_spin_lock(ptr noundef %mm_lock.i) #9
  %node_list.i = getelementptr i8, ptr %.pn.i, i32 -160
  %3 = ptrtoint ptr %node_list.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn5154.i = load ptr, ptr %node_list.i, align 4
  %cmp18.not55.i = icmp eq ptr %.pn5154.i, %node_list.i
  br i1 %cmp18.not55.i, label %found_mmu.i.addr_to_mapping.exit_crit_edge, label %found_mmu.i.for.body20.i_crit_edge

found_mmu.i.for.body20.i_crit_edge:               ; preds = %found_mmu.i
  br label %for.body20.i

found_mmu.i.addr_to_mapping.exit_crit_edge:       ; preds = %found_mmu.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %addr_to_mapping.exit

for.body20.i:                                     ; preds = %for.inc26.i.for.body20.i_crit_edge, %found_mmu.i.for.body20.i_crit_edge
  %.pn5156.i = phi ptr [ %.pn51.i, %for.inc26.i.for.body20.i_crit_edge ], [ %.pn5154.i, %found_mmu.i.for.body20.i_crit_edge ]
  %start.i = getelementptr i8, ptr %.pn5156.i, i32 -20
  %4 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %start.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i, i64 %5)
  %cmp21.not.i = icmp ult i64 %shr.i, %5
  br i1 %cmp21.not.i, label %for.body20.i.for.inc26.i_crit_edge, label %land.lhs.true.i

for.body20.i.for.inc26.i_crit_edge:               ; preds = %for.body20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc26.i

land.lhs.true.i:                                  ; preds = %for.body20.i
  %size.i = getelementptr i8, ptr %.pn5156.i, i32 -12
  %6 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %size.i, align 8
  %add.i = add i64 %7, %5
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i, i64 %add.i)
  %cmp23.i = icmp ult i64 %shr.i, %add.i
  br i1 %cmp23.i, label %if.then24.i, label %land.lhs.true.i.for.inc26.i_crit_edge

land.lhs.true.i.for.inc26.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc26.i

if.then24.i:                                      ; preds = %land.lhs.true.i
  %add.ptr.i.i = getelementptr i8, ptr %.pn5156.i, i32 -44
  %refcount.i = getelementptr i8, ptr %.pn5156.i, i32 -36
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !91
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then24.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !72

if.then24.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then24.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %9 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.addr_to_mapping.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !86

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.addr_to_mapping.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %addr_to_mapping.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then24.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then24.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i) #9
  br label %addr_to_mapping.exit

for.inc26.i:                                      ; preds = %land.lhs.true.i.for.inc26.i_crit_edge, %for.body20.i.for.inc26.i_crit_edge
  %10 = ptrtoint ptr %.pn5156.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn51.i = load ptr, ptr %.pn5156.i, align 4
  %cmp18.not.i = icmp eq ptr %.pn51.i, %node_list.i
  br i1 %cmp18.not.i, label %for.inc26.i.addr_to_mapping.exit_crit_edge, label %for.inc26.i.for.body20.i_crit_edge

for.inc26.i.for.body20.i_crit_edge:               ; preds = %for.inc26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body20.i

for.inc26.i.addr_to_mapping.exit_crit_edge:       ; preds = %for.inc26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %addr_to_mapping.exit

addr_to_mapping.exit:                             ; preds = %for.inc26.i.addr_to_mapping.exit_crit_edge, %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.addr_to_mapping.exit_crit_edge, %found_mmu.i.addr_to_mapping.exit_crit_edge
  %mapping.0.i = phi ptr [ %add.ptr.i.i, %if.else.i.i.i.i.i.addr_to_mapping.exit_crit_edge ], [ %add.ptr.i.i, %if.end15.sink.split.i.i.i.i.i ], [ null, %found_mmu.i.addr_to_mapping.exit_crit_edge ], [ null, %for.inc26.i.addr_to_mapping.exit_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %mm_lock.i) #9
  tail call void @_raw_spin_unlock(ptr noundef %as_lock.i) #9
  %tobool.not = icmp eq ptr %mapping.0.i, null
  br i1 %tobool.not, label %addr_to_mapping.exit.cleanup_crit_edge, label %if.end

addr_to_mapping.exit.cleanup_crit_edge:           ; preds = %addr_to_mapping.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %addr_to_mapping.exit
  %obj = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %mapping.0.i, i32 0, i32 2
  %11 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %obj, align 4
  %is_heap = getelementptr inbounds %struct.panfrost_gem_object, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %is_heap to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %is_heap, align 4
  %14 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %bf.cast.not = icmp eq i8 %14, 0
  br i1 %bf.cast.not, label %do.end, label %if.end22

do.end:                                           ; preds = %if.end
  %15 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pfdev, align 8
  %call7 = tail call ptr @dev_driver_string(ptr noundef %16) #9
  %17 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pfdev, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %18, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i215 = phi ptr [ %22, %if.end.i ], [ %20, %do.end.dev_name.exit_crit_edge ]
  %start = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %mapping.0.i, i32 0, i32 3, i32 1
  %23 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %start, align 8
  %shl = shl i64 %24, 12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 438, i32 noundef 9, ptr noundef nonnull @.str.22, ptr noundef %call7, ptr noundef %retval.0.i215, i64 noundef %shl) #9
  br label %err_bo

if.end22:                                         ; preds = %if.end
  %mmu = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %mapping.0.i, i32 0, i32 4
  %25 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmu, align 8
  %as24 = getelementptr inbounds %struct.panfrost_mmu, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %as24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %as24, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %as)
  %cmp.not = icmp eq i32 %28, %as
  br i1 %cmp.not, label %if.end22.if.end46_crit_edge, label %do.end40, !prof !86

if.end22.if.end46_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

do.end40:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 442, i32 noundef 9, ptr noundef null) #9
  br label %if.end46

if.end46:                                         ; preds = %do.end40, %if.end22.if.end46_crit_edge
  %and = and i64 %addr, -2097152
  %shr = lshr exact i64 %and, 12
  %start55 = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %mapping.0.i, i32 0, i32 3, i32 1
  %29 = ptrtoint ptr %start55 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %start55, align 8
  %sub = sub i64 %shr, %30
  %conv57 = trunc i64 %sub to i32
  %pages_lock = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %12, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %pages_lock, i32 noundef 0) #9
  %pages59 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %12, i32 0, i32 2
  %31 = ptrtoint ptr %pages59 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pages59, align 4
  %tobool60.not = icmp eq ptr %32, null
  br i1 %tobool60.not, label %if.then61, label %if.else

if.then61:                                        ; preds = %if.end46
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %12, i32 0, i32 5
  %33 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %size, align 8
  %div213 = lshr i32 %34, 21
  %35 = mul nuw nsw i32 %div213, 12
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %35, i32 noundef 3520, i32 noundef -1) #14
  %sgts = getelementptr inbounds %struct.panfrost_gem_object, ptr %12, i32 0, i32 1
  %36 = ptrtoint ptr %sgts to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i.i, ptr %sgts, align 8
  %tobool66.not = icmp eq ptr %call.i.i, null
  br i1 %tobool66.not, label %if.then67, label %kvmalloc_array.exit221

if.then67:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %pages_lock) #9
  br label %err_bo

kvmalloc_array.exit221:                           ; preds = %if.then61
  %37 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %size, align 8
  %39 = lshr i32 %38, 10
  %40 = and i32 %39, 4194300
  %call.i.i218 = tail call noalias ptr @kvmalloc_node(i32 noundef %40, i32 noundef 3520, i32 noundef -1) #14
  %tobool76.not = icmp eq ptr %call.i.i218, null
  br i1 %tobool76.not, label %if.then77, label %if.end82

if.then77:                                        ; preds = %kvmalloc_array.exit221
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %sgts to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sgts, align 8
  tail call void @kvfree(ptr noundef %42) #9
  %43 = ptrtoint ptr %sgts to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %sgts, align 8
  tail call void @mutex_unlock(ptr noundef %pages_lock) #9
  br label %err_bo

if.end82:                                         ; preds = %kvmalloc_array.exit221
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %pages59 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i.i218, ptr %pages59, align 4
  %pages_use_count = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %12, i32 0, i32 3
  %45 = ptrtoint ptr %pages_use_count to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %pages_use_count, align 8
  br label %if.end93

if.else:                                          ; preds = %if.end46
  %arrayidx = getelementptr ptr, ptr %32, i32 %conv57
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx, align 4
  %tobool88.not = icmp eq ptr %47, null
  br i1 %tobool88.not, label %if.else.if.end93_crit_edge, label %if.then89

if.else.if.end93_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end93

if.then89:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %pages_lock) #9
  br label %out

if.end93:                                         ; preds = %if.else.if.end93_crit_edge, %if.end82
  %pages.0 = phi ptr [ %32, %if.else.if.end93_crit_edge ], [ %call.i.i218, %if.end82 ]
  %filp = getelementptr inbounds %struct.drm_gem_object, ptr %12, i32 0, i32 3
  %48 = ptrtoint ptr %filp to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %filp, align 4
  %f_mapping = getelementptr inbounds %struct.file, ptr %49, i32 0, i32 18
  %50 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %f_mapping, align 4
  %flags.i = getelementptr inbounds %struct.address_space, ptr %51, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags.i) #9
  %add = add i32 %conv57, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %conv57)
  %cmp96234 = icmp ult i32 %conv57, -512
  br i1 %cmp96234, label %for.body.lr.ph, label %if.end93.for.end_crit_edge

if.end93.for.end_crit_edge:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end93
  %gfp_mask.i.i = getelementptr inbounds %struct.address_space, ptr %51, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0235 = phi i32 [ %conv57, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %52 = ptrtoint ptr %gfp_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %gfp_mask.i.i, align 4
  %call1.i = tail call ptr @shmem_read_mapping_page_gfp(ptr noundef %51, i32 noundef %i.0235, i32 noundef %53) #9
  %arrayidx99 = getelementptr ptr, ptr %pages.0, i32 %i.0235
  %54 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call1.i, ptr %arrayidx99, align 4
  %cmp.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then102, label %for.inc

if.then102:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx99.le = getelementptr ptr, ptr %pages.0, i32 %i.0235
  tail call void @mutex_unlock(ptr noundef %pages_lock) #9
  %55 = ptrtoint ptr %arrayidx99.le to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx99.le, align 4
  %57 = ptrtoint ptr %56 to i32
  br label %err_pages

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0235, 1
  %cmp96 = icmp ult i32 %inc, %add
  br i1 %cmp96, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end93.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %pages_lock) #9
  %sgts110 = getelementptr inbounds %struct.panfrost_gem_object, ptr %12, i32 0, i32 1
  %58 = ptrtoint ptr %sgts110 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %sgts110, align 8
  %div111214 = lshr i32 %conv57, 9
  %arrayidx112 = getelementptr %struct.sg_table, ptr %59, i32 %div111214
  %add.ptr = getelementptr ptr, ptr %pages.0, i32 %conv57
  %call.i = tail call i32 @sg_alloc_table_from_pages_segment(ptr noundef %arrayidx112, ptr noundef %add.ptr, i32 noundef 512, i32 noundef 0, i32 noundef 2097152, i32 noundef -1, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool114.not = icmp eq i32 %call.i, 0
  br i1 %tobool114.not, label %if.end116, label %for.end.err_pages_crit_edge

for.end.err_pages_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_pages

if.end116:                                        ; preds = %for.end
  %60 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pfdev, align 8
  %call118 = tail call i32 @dma_map_sgtable(ptr noundef %61, ptr noundef %arrayidx112, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %if.end121, label %err_map

if.end121:                                        ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mmu, align 8
  tail call fastcc void @mmu_map_sg(ptr noundef %pfdev, ptr noundef %63, i64 noundef %and, i32 noundef 11, ptr noundef %arrayidx112)
  %active = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %mapping.0.i, i32 0, i32 5
  %64 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %64)
  %bf.load124 = load i8, ptr %active, align 4
  %bf.set = or i8 %bf.load124, -128
  store i8 %bf.set, ptr %active, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @panfrost_mmu_map_fault_addr.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@panfrost_mmu_map_fault_addr, %if.then136)) #9
          to label %out [label %if.then136], !srcloc !77

if.then136:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #11
  %65 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pfdev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @panfrost_mmu_map_fault_addr.__UNIQUE_ID_ddebug313, ptr noundef %66, ptr noundef nonnull @.str.24, i32 noundef %as, i64 noundef %and) #9
  br label %out

out:                                              ; preds = %if.then136, %if.end121, %if.then89
  tail call void @panfrost_gem_mapping_put(ptr noundef nonnull %mapping.0.i) #9
  br label %cleanup

err_map:                                          ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sg_free_table(ptr noundef %arrayidx112) #9
  br label %err_pages

err_pages:                                        ; preds = %err_map, %for.end.err_pages_crit_edge, %if.then102
  %ret.0 = phi i32 [ %57, %if.then102 ], [ %call.i, %for.end.err_pages_crit_edge ], [ %call118, %err_map ]
  tail call void @drm_gem_shmem_put_pages(ptr noundef %12) #9
  br label %err_bo

err_bo:                                           ; preds = %err_pages, %if.then77, %if.then67, %dev_name.exit
  %ret.1 = phi i32 [ %ret.0, %err_pages ], [ -12, %if.then77 ], [ -12, %if.then67 ], [ -22, %dev_name.exit ]
  %tobool.not.i222 = icmp eq ptr %12, null
  br i1 %tobool.not.i222, label %err_bo.cleanup_crit_edge, label %if.then.i

err_bo.cleanup_crit_edge:                         ; preds = %err_bo
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %err_bo
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %12, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !88
  tail call void @llvm.prefetch.p0(ptr nonnull %12, i32 1, i32 3, i32 1) #9
  %67 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %12, ptr nonnull %12, i32 1, ptr nonnull elementtype(i32) %12) #9, !srcloc !89
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %67, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !86

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef nonnull %12, i32 noundef 3) #9
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !90
  tail call void @drm_gem_object_free(ptr noundef nonnull %12) #9, !callees !110
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %err_bo.cleanup_crit_edge, %out, %addr_to_mapping.exit.cleanup_crit_edge, %addr_to_mapping.exit.thread
  %retval.0 = phi i32 [ 0, %out ], [ -2, %addr_to_mapping.exit.cleanup_crit_edge ], [ -2, %addr_to_mapping.exit.thread ], [ %ret.1, %err_bo.cleanup_crit_edge ], [ %ret.1, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ %ret.1, %if.then10.i.i.i.i.i.i ], [ %ret.1, %if.then.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @panfrost_exception_name(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sgtable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_gem_mapping_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_shmem_put_pages(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @shmem_read_mapping_page_gfp(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table_from_pages_segment(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !9, !10, !11, !13, !14, !16, !18, !20, !21, !22, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !36, !38, !39, !40, !41, !42, !43, !44, !46, !48, !49, !50, !52, !54, !56, !58}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/panfrost/panfrost_mmu.c", i32 173, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/panfrost/panfrost_mmu.c", i32 215, i32 2}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @panfrost_mmu_as_get.__UNIQUE_ID_ddebug310, !3, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/panfrost/panfrost_mmu.c", i32 343, i32 2}
!9 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @panfrost_mmu_unmap.__UNIQUE_ID_ddebug312, !8, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!11 = !{ptr @panfrost_mmu_ctx_create.__key, !12, !"__key", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/panfrost/panfrost_mmu.c", i32 596, i32 2}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/panfrost/panfrost_mmu.c", i32 736, i32 64}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/panfrost/panfrost_mmu.c", i32 743, i32 19}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/panfrost/panfrost_mmu.c", i32 747, i32 3}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @panfrost_mmu_init._entry, !19, !"_entry", i1 false, i1 false}
!24 = !{ptr @panfrost_mmu_init._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/panfrost/panfrost_mmu.c", i32 42, i32 3}
!27 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @wait_ready._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @wait_ready._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/panfrost/panfrost_mmu.c", i32 287, i32 3}
!32 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @mmu_map_sg.__UNIQUE_ID_ddebug311, !31, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!34 = !{ptr @mmu_tlb_ops, !35, !"mmu_tlb_ops", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/panfrost/panfrost_mmu.c", i32 378, i32 37}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/panfrost/panfrost_mmu.c", i32 691, i32 4}
!38 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @panfrost_mmu_irq_handler_thread._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @panfrost_mmu_irq_handler_thread._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.21, !37, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/panfrost/panfrost_mmu.c", i32 437, i32 3}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/panfrost/panfrost_mmu.c", i32 509, i32 2}
!48 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @panfrost_mmu_map_fault_addr.__UNIQUE_ID_ddebug313, !47, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/panfrost/panfrost_mmu.c", i32 632, i32 11}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/panfrost/panfrost_mmu.c", i32 634, i32 11}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/panfrost/panfrost_mmu.c", i32 636, i32 10}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/panfrost/panfrost_mmu.c", i32 638, i32 10}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/panfrost/panfrost_mmu.c", i32 640, i32 10}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{i64 2148344586}
!70 = !{i64 2148259895, i64 2148259927, i64 2148259956, i64 2148259990, i64 2148260021, i64 2148260044}
!71 = !{i64 2148344815}
!72 = !{!"branch_weights", i32 1, i32 2000}
!73 = !{i64 2155911987}
!74 = !{i64 6388510}
!75 = !{i64 2155912482}
!76 = !{i32 0, i32 33}
!77 = !{i64 2148928802, i64 2148928807, i64 2148928820, i64 2148928864, i64 2148928898, i64 2148928919}
!78 = !{i64 2155906021}
!79 = !{i64 2155906809}
!80 = !{i64 2155907594}
!81 = !{i64 2155908376}
!82 = !{i64 2155862501}
!83 = !{i64 2148261640, i64 2148261666, i64 2148261695, i64 2148261729, i64 2148261760, i64 2148261783}
!84 = !{i64 2155929786}
!85 = !{i64 2155930235}
!86 = !{!"branch_weights", i32 2000, i32 1}
!87 = !{i64 2148259175, i64 2148259201, i64 2148259230, i64 2148259264, i64 2148259295, i64 2148259318}
!88 = !{i64 2148348706}
!89 = !{i64 2148263170, i64 2148263202, i64 2148263231, i64 2148263265, i64 2148263296, i64 2148263319}
!90 = !{i64 2149725325}
!91 = !{i64 2148260705, i64 2148260737, i64 2148260766, i64 2148260800, i64 2148260831, i64 2148260854}
!92 = !{i8 0, i8 2}
!93 = !{i64 6388928}
!94 = !{i64 2155985317}
!95 = !{i64 2155985587}
!96 = !{i64 2155986311}
!97 = !{i64 2155987241}
!98 = !{i64 2155987973}
!99 = !{i64 2155988705}
!100 = !{i64 2155988981}
!101 = !{i64 2155993536}
!102 = !{i64 2155993848}
!103 = !{i64 2155997354}
!104 = !{i64 2155904448}
!105 = !{i64 2155905224}
!106 = !{i64 2155909070}
!107 = !{i64 2155909655}
!108 = !{i64 2155910240}
!109 = !{i64 2155910825}
!110 = distinct !{ptr @drm_gem_object_free, null}
